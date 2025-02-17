package it.gdhi.service;

import it.gdhi.dto.*;
import it.gdhi.model.*;
import it.gdhi.model.id.CountryHealthIndicatorId;
import it.gdhi.model.id.CountrySummaryId;
import it.gdhi.repository.*;
import it.gdhi.utils.FormStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.ObjectUtils;
import org.springframework.util.StringUtils;

import javax.persistence.EntityManager;
import javax.transaction.Transactional;
import java.util.*;

import static it.gdhi.utils.FormStatus.*;
import static java.util.Objects.isNull;
import static java.util.stream.Collectors.groupingBy;
import static java.util.stream.Collectors.toList;

@Service
public class CountryHealthDataService {

    @Autowired
    private ICountryHealthIndicatorRepository iCountryHealthIndicatorRepository;

    @Autowired
    private ICountryRepository iCountryRepository;

    @Autowired
    private MailerService mailerService;

    @Autowired
    private ICountryResourceLinkRepository iCountryResourceLinkRepository;

    @Autowired
    private ICountrySummaryRepository iCountrySummaryRepository;

    @Autowired
    private ICountryPhaseRepository iCountryPhaseRepository;

    @Autowired
    private BenchMarkService benchmarkService;

    @Autowired
    private EntityManager entityManager;

    @Autowired
    CategoryIndicatorService categoryIndicatorService;

    @Transactional
    public void save(GdhiQuestionnaire gdhiQuestionnaire, String nextStatus) {
        String currentStatus = iCountrySummaryRepository.getCountrySummaryStatus(gdhiQuestionnaire.getCountryId());
        if (!nextStatus.equals(currentStatus)) {
            removeEntriesWithStatus(gdhiQuestionnaire.getCountryId(), currentStatus);
        }
        saveCountryContactInfo(gdhiQuestionnaire.getCountryId(),
                nextStatus, gdhiQuestionnaire.getCountrySummary());
        saveHealthIndicators(gdhiQuestionnaire.getCountryId(),
                nextStatus, gdhiQuestionnaire.getHealthIndicators());
    }

    @Transactional
    public CountryUrlGenerationStatusDto saveNewCountrySummary(UUID countryUUID) {
        String countryId = iCountryRepository.findByUniqueId(countryUUID).getId();

        CountryUrlGenerationStatusDto statusDto;

        String currentStatus = getStatusOfCountrySummary(countryId);

        if (isNull(currentStatus) || currentStatus.equalsIgnoreCase(PUBLISHED.toString())) {
            CountrySummary countrySummary = new CountrySummary(new CountrySummaryId(countryId, NEW.toString()),
                    new CountrySummaryDto());
            iCountrySummaryRepository.save(countrySummary);
            statusDto = new CountryUrlGenerationStatusDto(countryId, true, isNull(currentStatus) ? null :
                    FormStatus.valueOf(currentStatus));
        } else {
            statusDto = new CountryUrlGenerationStatusDto(countryId, false, FormStatus.valueOf(currentStatus));
        }
        return statusDto;
    }

    @Transactional
    public void publish(GdhiQuestionnaire gdhiQuestionnaire) {
        save(gdhiQuestionnaire, PUBLISHED.name());
        calculateAndSaveCountryPhase(gdhiQuestionnaire.getCountryId(), PUBLISHED.name());
    }

    @Transactional
    public void submit(GdhiQuestionnaire gdhiQuestionnaire) {
        save(gdhiQuestionnaire, REVIEW_PENDING.name());
        sendMail(gdhiQuestionnaire.getDataFeederName(), gdhiQuestionnaire.getDataFeederRole(),
                gdhiQuestionnaire.getContactEmail(), gdhiQuestionnaire.getCountryId());
    }

    @Transactional
    public void saveCorrection(GdhiQuestionnaire gdhiQuestionnaire) {
        save(gdhiQuestionnaire, REVIEW_PENDING.name());
    }

    @Transactional
    public void deleteCountryData(UUID countryUUID) {
        String countryId = iCountryRepository.findByUniqueId(countryUUID).getId();
        iCountryHealthIndicatorRepository.removeHealthIndicatorsBy(countryId, REVIEW_PENDING.name());
        iCountryResourceLinkRepository.deleteResources(countryId, REVIEW_PENDING.name());
        iCountrySummaryRepository.removeCountrySummary(countryId, REVIEW_PENDING.name());
    }

    @Transactional
    public void calculatePhaseForAllCountries() {
        List<String> publishedCountries = iCountrySummaryRepository.findAllByStatus(PUBLISHED.name());
        publishedCountries.stream().forEach(country -> calculateAndSaveCountryPhase(country, PUBLISHED.name()));
    }

    public Map<String, List<CountrySummaryStatusDto>> getAllCountryStatusSummaries() {
        List<CountrySummary> countrySummaries = iCountrySummaryRepository.findAllByOrderByUpdatedAtDesc();

        List<CountrySummaryStatusDto> countrySummaryStatusDtos = countrySummaries
                .stream().map(CountrySummaryStatusDto::new).collect(toList());

        return countrySummaryStatusDtos.stream()
                .collect(groupingBy(CountrySummaryStatusDto::getStatus));
    }

    public Map<Integer, BenchmarkDto> getBenchmarkDetailsFor(String countryId, Integer benchmarkType) {
        return benchmarkService.getBenchmarkFor(countryId, benchmarkType);
    }

    public boolean validateRequiredFields(GdhiQuestionnaire gdhiQuestionnaire) {
        return verifyFields(gdhiQuestionnaire.getCountrySummary())
                && verifyDateRange(gdhiQuestionnaire.getCountrySummary().getCollectedDate())
                && verifyResources(gdhiQuestionnaire.getCountrySummary().getResources())
                && verifyIndicators(gdhiQuestionnaire.getHealthIndicators());
    }

    private List<CountryHealthIndicator> transformToHealthIndicator(String countryId,
                                                                    String status,
                                                                    List<HealthIndicatorDto> healthIndicatorDto) {
        return healthIndicatorDto.stream().map(dto -> {
            CountryHealthIndicatorId countryHealthIndicatorId = new CountryHealthIndicatorId(countryId,
                    dto.getCategoryId(), dto.getIndicatorId(), status);
            return new CountryHealthIndicator(countryHealthIndicatorId, dto.getScore(), dto.getSupportingText());
        }).collect(toList());
    }


    private void calculateAndSaveCountryPhase(String countryId, String status) {
        CountryHealthIndicators countryHealthIndicators = new CountryHealthIndicators(iCountryHealthIndicatorRepository
                .findByCountryIdAndStatus(countryId, status));
        Double overallScore = countryHealthIndicators.getOverallScore();
        Integer countryPhase = new Score(overallScore).convertToPhase();
        iCountryPhaseRepository.save(new CountryPhase(countryId, countryPhase));
    }

    private void removeEntriesWithStatus(String countryId, String currentStatus) {
        if (!currentStatus.equals(NEW.name())) {
            iCountryHealthIndicatorRepository.removeHealthIndicatorsBy(countryId, currentStatus);
        }
        iCountryResourceLinkRepository.deleteResources(countryId, currentStatus);
        iCountrySummaryRepository.removeCountrySummary(countryId, currentStatus);
    }

    private void sendMail(String feederName, String feederRole, String contactEmail, String countryId) {
        Country country = iCountryRepository.findById(countryId);
        mailerService.send(country, feederName, feederRole, contactEmail);

    }

    private void saveCountryContactInfo(String countryId, String status,
                                        CountrySummaryDto countrySummaryDetailDto) {
        CountrySummary countrySummary = new CountrySummary(new CountrySummaryId(countryId, status),
                countrySummaryDetailDto);
        iCountryResourceLinkRepository.deleteResources(countryId, status);
        iCountrySummaryRepository.save(countrySummary);
    }

    private void saveHealthIndicators(String countryId, String status,
                                      List<HealthIndicatorDto> healthIndicatorDto) {
        List<CountryHealthIndicator> countryHealthIndicators = transformToHealthIndicator(countryId, status,
                healthIndicatorDto);
        if (countryHealthIndicators != null) {
            countryHealthIndicators.forEach(health -> {
                CountryHealthIndicator countryHealthIndicator = iCountryHealthIndicatorRepository.save(health);
                entityManager.flush();
                entityManager.refresh(countryHealthIndicator);
            });
        }
    }

    private String getStatusOfCountrySummary(String countryId) {
        String currentStatus = null;
        List<String> countrySummaryStatuses = iCountrySummaryRepository.getAllStatus(countryId);
        if (!countrySummaryStatuses.isEmpty()) {
            currentStatus = countrySummaryStatuses.size() > 1 ?
                    countrySummaryStatuses.stream()
                            .filter(el -> !el.equalsIgnoreCase(PUBLISHED.toString())).findFirst().get() :
                    countrySummaryStatuses.get(0);
        }
        return currentStatus;
    }

    private boolean verifyIndicators(List<HealthIndicatorDto> healthIndicators) {
       int count = categoryIndicatorService.getHealthIndicatorCount();

        return (healthIndicators != null)
                && (count == healthIndicators.size())
                && healthIndicators.stream().noneMatch(healthIndicatorDto
                -> healthIndicatorDto == null
                    ||healthIndicatorDto.getScore() == null
                    || (ObjectUtils.isEmpty(healthIndicatorDto.getSupportingText())
                    || healthIndicatorDto.getScore() < -1)
                );
    }

    private boolean verifyResources(List<String> resources) {
        return (resources!=null && !resources.isEmpty());
    }

    private boolean verifyFields(CountrySummaryDto countrySummary) {
        return countrySummary.getCollectedDate() != null
                && StringUtils.hasText(countrySummary.getCountryId())
                && StringUtils.hasText(countrySummary.getContactEmail())
                && StringUtils.hasText(countrySummary.getContactDesignation())
                && StringUtils.hasText(countrySummary.getContactName())
                && StringUtils.hasText(countrySummary.getContactOrganization())
                && StringUtils.hasText(countrySummary.getCountryName())
                && StringUtils.hasText(countrySummary.getDataApproverEmail())
                && StringUtils.hasText(countrySummary.getDataApproverName())
                && StringUtils.hasText(countrySummary.getDataApproverRole())
                && StringUtils.hasText(countrySummary.getDataFeederEmail())
                && StringUtils.hasText(countrySummary.getDataFeederName())
                && StringUtils.hasText(countrySummary.getDataFeederRole())
                && StringUtils.hasText(countrySummary.getSummary());
    }

    private boolean verifyDateRange(Date collectedDate) {
        Calendar myCalendar = new GregorianCalendar(2010, 0, 1);
        Date backDate = myCalendar.getTime();
        Date today = new GregorianCalendar().getTime();
        return (collectedDate.equals(today)) || (collectedDate.before(today) && collectedDate.after(backDate));
    }

}