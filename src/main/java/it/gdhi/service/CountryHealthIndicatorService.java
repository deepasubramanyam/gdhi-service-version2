package it.gdhi.service;

import it.gdhi.dto.CategoryHealthScoreDto;
import it.gdhi.dto.CountriesHealthScoreDto;
import it.gdhi.dto.CountryHealthScoreDto;
import it.gdhi.dto.GlobalHealthScoreDto;
import it.gdhi.internationalization.service.HealthIndicatorTranslator;
import it.gdhi.model.*;
import it.gdhi.repository.ICountryHealthIndicatorRepository;
import it.gdhi.repository.ICountryPhaseRepository;
import it.gdhi.repository.ICountrySummaryRepository;
import it.gdhi.utils.LanguageCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.Map.Entry;
import java.util.function.Predicate;

import static it.gdhi.controller.strategy.FilterStrategy.getCategoryPhaseFilter;
import static it.gdhi.controller.strategy.FilterStrategy.getCountryPhaseFilter;
import static it.gdhi.utils.FormStatus.PUBLISHED;
import static it.gdhi.utils.LanguageCode.USER_LANGUAGE;
import static java.util.Comparator.comparing;
import static java.util.Comparator.nullsLast;
import static java.util.Objects.isNull;
import static java.util.stream.Collectors.groupingBy;
import static java.util.stream.Collectors.toList;

@Service
public class CountryHealthIndicatorService {

    @Autowired
    private ICountryHealthIndicatorRepository iCountryHealthIndicatorRepository;

    @Autowired
    private ICountrySummaryRepository iCountrySummaryRepository;

    @Autowired
    private ICountryPhaseRepository iCountryPhaseRepository;

    @Autowired
    private ExcelUtilService excelUtilService;

    @Autowired
    private HealthIndicatorTranslator healthIndicatorTranslator;

    public CountryHealthScoreDto fetchCountryHealthScore(String countryId, LanguageCode languageCode) {
        CountryHealthIndicators countryHealthIndicators = new CountryHealthIndicators(iCountryHealthIndicatorRepository
                                                            .findByCountryIdAndStatus(countryId, PUBLISHED.name()));
        CountryHealthScoreDto countryHealthScoreDto = constructCountryHealthScore(countryId, countryHealthIndicators,
                                                                getCategoryPhaseFilter(null, null));
        return healthIndicatorTranslator.translateCountryHealthScores(languageCode, countryHealthScoreDto);
    }

    public CountriesHealthScoreDto fetchCountriesHealthScores(Integer categoryId, Integer phase, LanguageCode code) {
        List<CountryHealthIndicator> countryHealthIndicators = iCountryHealthIndicatorRepository
                .findByCategoryAndStatus(categoryId, PUBLISHED.name());

        Map<String, List<CountryHealthIndicator>> groupByCountry = countryHealthIndicators.stream()
                .collect(groupingBy(CountryHealthIndicator::getCountryId));
        List<CountryHealthScoreDto> globalHealthScores = groupByCountry
                .entrySet()
                .stream()
                .map(entry -> constructCountryHealthScore(entry.getKey(),
                        new CountryHealthIndicators(entry.getValue()),
                        getCategoryPhaseFilter(categoryId, phase)))
                .filter(getCountryPhaseFilter(categoryId, phase))
                .filter(CountryHealthScoreDto::hasCategories)
                .sorted(comparing(CountryHealthScoreDto::getCountryName, nullsLast(Comparator.naturalOrder())))
                .collect(toList());

        CountriesHealthScoreDto countriesHealthScoreDto = new CountriesHealthScoreDto(globalHealthScores);
        return getTranslatedCountriesHealthScore(countriesHealthScoreDto, code);
    }

    private CountriesHealthScoreDto getTranslatedCountriesHealthScore(CountriesHealthScoreDto countriesHealthScoreDto,
                                                                      LanguageCode code) {
        List<CountryHealthScoreDto> countryHealthScores = countriesHealthScoreDto.getCountryHealthScores().stream()
                                        .map(dto -> healthIndicatorTranslator.translateCountryHealthScores(code, dto))
                                        .collect(toList());
        return new CountriesHealthScoreDto(countryHealthScores);
    }

    public GlobalHealthScoreDto getGlobalHealthIndicator(Integer categoryId, Integer phase, LanguageCode languageCode){
        CountriesHealthScoreDto countries = this.fetchCountriesHealthScores(categoryId, phase, null);
        List<CategoryHealthScoreDto> categories = getCategoriesInCountries(countries);
        Map<Integer, List<CategoryHealthScoreDto>> groupByCategory = categories.stream()
                .collect(groupingBy(CategoryHealthScoreDto::getId));
        List<CategoryHealthScoreDto> categoryHealthScores = groupByCategory.entrySet().stream()
                .map(this::getCategoryHealthScoreDto).collect(toList());
        Score averageCategoryScore = new Score(getAverageCategoryScore(categoryHealthScores));
        Integer globalPhase = averageCategoryScore.convertToPhase();
        GlobalHealthScoreDto globalHealthScoreDto = new GlobalHealthScoreDto(globalPhase, categoryHealthScores);
        return translateCategoryNames(globalHealthScoreDto,languageCode);
    }

    private GlobalHealthScoreDto translateCategoryNames(GlobalHealthScoreDto globalHealthScoreDto, LanguageCode code) {
        globalHealthScoreDto
            .getCategories()
            .forEach( (category) -> {
                String translatedCategory = healthIndicatorTranslator.getTranslatedCategory(category.getName(), code);
                category.translateCategoryName(translatedCategory);
            });
        return globalHealthScoreDto;
    }

    public void createGlobalHealthIndicatorInExcel(HttpServletRequest request,
                                                   HttpServletResponse response) throws IOException {
        LanguageCode languageCode = LanguageCode.getValueFor(request.getParameter(USER_LANGUAGE));
        List<CountryHealthScoreDto> countryHealthScores = fetchCountriesHealthScoresForPDF(languageCode)
                                                            .getCountryHealthScores();

        excelUtilService.convertListToExcel(countryHealthScores, languageCode);
        excelUtilService.downloadFile(request, response);
    }

    public void createHealthIndicatorInExcelFor(String countryId,
                                                HttpServletRequest request,
                                                HttpServletResponse response) throws IOException {
        LanguageCode languageCode = LanguageCode.getValueFor(request.getParameter(USER_LANGUAGE));
        List countryHealthScoreDtoAsList = new ArrayList<CountryHealthScoreDto>();

        countryHealthScoreDtoAsList.add(fetchCountryHealthScore(countryId, languageCode));
        excelUtilService.convertListToExcel(countryHealthScoreDtoAsList, languageCode);
        excelUtilService.downloadFile(request, response);
    }

    private CountriesHealthScoreDto fetchCountriesHealthScoresForPDF(LanguageCode languageCode) {
        return this.fetchCountriesHealthScores(null, null, languageCode);
    }

    private CategoryHealthScoreDto getCategoryHealthScoreDto(Entry<Integer, List<CategoryHealthScoreDto>> entry) {
        List<CategoryHealthScoreDto> categoriesHealthScore = entry.getValue();
        Double globalScore = getAverageCategoryScore(categoriesHealthScore);
        CategoryHealthScoreDto categoryHealthScoreDto = categoriesHealthScore.stream().findFirst()
                .orElse(new CategoryHealthScoreDto());
        return new CategoryHealthScoreDto(entry.getKey(), categoryHealthScoreDto.getName(), globalScore,
                (new Score(globalScore)).convertToPhase(), null);
    }

    private List<CategoryHealthScoreDto> getCategoriesInCountries(CountriesHealthScoreDto countries) {
        return countries.getCountryHealthScores()
                .stream()
                .map(CountryHealthScoreDto::getCategories)
                .flatMap(Collection::stream)
                .collect(toList());
    }

    private Double getAverageCategoryScore(List<CategoryHealthScoreDto> categoriesHealthScore) {
        OptionalDouble optionalGlobalScore = categoriesHealthScore.stream()
                .filter(c -> !isNull(c.getOverallScore()))
                .mapToDouble(CategoryHealthScoreDto::getOverallScore)
                .average();
        return optionalGlobalScore.isPresent() ? optionalGlobalScore.getAsDouble() : null;
    }

    private CountryHealthScoreDto constructCountryHealthScore(String countryId,
                                                              CountryHealthIndicators countryHealthIndicators,
                                                              Predicate<? super CategoryHealthScoreDto> phaseFilter) {
        List<CategoryHealthScoreDto> categoryDtos = getCategoriesWithIndicators(countryHealthIndicators, phaseFilter);
        CountryPhase countryPhase = iCountryPhaseRepository.findById(countryId).orElse(null);
        CountrySummary countrySummary = iCountrySummaryRepository.
                findByCountryAndStatus(countryId, PUBLISHED.name());
        String collectedDateStr = countrySummary != null && countrySummary.getCollectedDate() != null ?
                new SimpleDateFormat("MMMM yyyy").format(countrySummary.getCollectedDate()) : "";
        return new CountryHealthScoreDto(countryId, countryHealthIndicators.getCountryName(),
                countryHealthIndicators.getCountryAlpha2Code(),
                categoryDtos, countryPhase != null ? countryPhase.getCountryOverallPhase() : null, collectedDateStr);
    }


    private List<CategoryHealthScoreDto> getCategoriesWithIndicators(CountryHealthIndicators countryHealthIndicators,
                                                                     Predicate<? super CategoryHealthScoreDto>
                                                                             phaseFilter) {
        Map<Integer, Double> nonNullCategoryScore = countryHealthIndicators
                .groupByCategoryIdWithoutNullAndNegativeScores();
        return countryHealthIndicators.groupByCategory()
                .entrySet()
                .stream()
                .map(entry -> {
                    Category category = entry.getKey();
                    List<CountryHealthIndicator> indicators = entry.getValue();
                    return new CategoryHealthScoreDto(category,
                                                        nonNullCategoryScore.get(category.getId()),
                                                        indicators);
                })
                .filter(phaseFilter)
                .sorted(comparing(CategoryHealthScoreDto::getId))
                .collect(toList());
    }

}