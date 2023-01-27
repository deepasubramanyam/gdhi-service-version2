INSERT INTO country_health_data.country_resource_links
(country_id, link)
values
('JOR', 'info@ehs-int.com'),
('PER', 'https://www.ncbi.nlm.nih.gov/pubmed/26338377'),
('PER', 'https://www.ncbi.nlm.nih.gov/pubmed/26338396'),
('PER', 'https://www.ncbi.nlm.nih.gov/pubmed/25211573'),
('MLI', 'http://www.sante.gov.ml/docs/PDDSS_2014-2023.pdf'),
('MLI', 'https://docs.google.com/document/d/1w5n-2PqcXPHlknanQtkuvdm6_tK8NwSn5UuDYHUCSqE/edit'),
('MLI', 'http://antim.sante.gov.ml/index.php/politique-e-sante/27-politique-e-sante"'),
('UGA', 'http://www.mtrac.ug/; '),
('UGA', 'http://healthenabled.org/wordpress/wp-content/uploads/2017/09/m-iCCM-Workshop-Report-2016.pdf; '),
('UGA', 'http://healthmarketinnovations.org/program/ugandas-human-resources-health-information-system-hrhis'),
('IND', 'Mr. Lav Agarwal,' ),
('IND', 'Mr. Jitendra Arora'),
('IND', 'Mr. Ankit Tripathi' ),
('THA', 'https://www.ncbi.nlm.nih.gov/pubmed/20841712'),
('THA', 'https://ehealth.moph.go.th/'),
('THA', 'http://this.or.th/files/interopbook.pdf "'),
('MOZ', 'Not Clear'),
('PHL', 'ehealth.doh.gov.ph'),
('PHL', 'aehin,hingx.org'),
('PHL', 'i.gov.ph'),
('GHA', 'www.ghaahealthservice.org'),
('GHA', 'www.moh.gov.gh'),
('NZL', 'http://www.health.govt.nz/our-work/ehealth/digital-health-2020');




 INSERT INTO country_health_data.country_summary
 (country_id,
  summary,
  contact_name,
  contact_designation,
  contact_organization,
  contact_email,
  data_feeder_name,
  data_feeder_role,
  data_feeder_email,
  data_collector_name,
  data_collector_role,
  data_collector_email,
  collected_date)
 values
 ('JOR',
 'Launched in October 2009, under the patronage of His Majesty King Abdullah II, "Hakeem" is the first national E-Health initiative in Jordan. The program aims to facilitate efficient and improved patients’ healthcare by providing real time and up-to-date electronic medical information throughout the public health system.Through "Hakeem", EHS will invest specialized resources in implementing a proven digital platform (GTM) used by banks worldwide and in a health management information system (VistA). The platform has open-source software used in all the US veterans’ hospitals and clinics, and support s the storage, retrieval, and continuous updating of the electronic health records (EHR) of patients cared for by all of the participating healthcare facilities.Furthermore, it works on utilizing the local broadband networking infrastructure to enable Jordanian physicians, pharmacists, medical technologists and other health personnel to electronically access the medical records of patients within the participatingHakeem" allows clinicians to view their patients’ records using just their national ID number. This includes comprehensive medical and surgical history, and physical examinations, procedural and surgical reports, current medications and allergies, as well as in-patient and out-patient clinic visit notes. health facilities in Jordan; by utilizing the patient’s unique national number.In addition, it provides online access to lab results and digital radiological exams as well as ECG and images of rashes, endoscopic biopsies, eye exams and videos of echocardiograms and angiograms',
 'Dr.Majed Asad',
 'Director of NCD directorate',
  null,
 'majedasad@yahoo.com',
 'Dr.Majed Asad',
 'Director of NCD directorate',
 'majedasad@yahoo.com',
 null,
 null,
 null,
 '2015-11-09'),
 ('PER',
 'Peru is facing the historic challenge of taking a quantitative and qualitative leap in improving the health status of Peruvians through a series of reform policy measures aimed at building an integrated health system that strengthens the National System of health.
 Our desire is to reach a health integrally connected, where all the information that is generated in the health system is captured in the place where it is produced and then flows and is shared at different levels, with different roles, and that allows to streamline the processes and procedures; that reduces waiting times and simplifies procedures in an efficient and timely manner. All this, in short, will improve the quality of life of the people and will allow a substantial modernization in public health within the framework of the health reform in Peru.',
 'Walter H. Curioso',
 null,
 null,
 'waltercurioso@gmail.com',
 'Walter H. Curioso',
 'Adviser. Ministry of Health. Peru',
 'waltercurioso@gmail.com',
 null,
 null,
 null,
 '2017-11-10'
  ),
  ('MLI',
  '"2008: Creation of National eHealth Agency (ANTIM)
 2012: National Country eHealth Survey and Assessment
 2013: eHealth Policy and Strategic Plan for 2014–2020 drafted
 2014: Adoption of National eHealth Agency Roadmap 2014-2018
 2014: Adoption of the National Health Policy 2014–2023
 • Implementation Status: Implementation of national HIS repository
 database on DHIS2, implementation of real time mobile phone information
 system for Integrated Disease Surveillance and Response (IDSR), and
 various eHealth applications.
 Mali initially recognized the need
 for a comprehensive digital health strategy through its experience with
 implementing individual initiatives in digital health. These initiatives included
 consultations with the Toulouse-based European Institute of Telemedicine in
 neurosurgery and remote training in epidemiology for Malian doctors using
 telemedicine in 1996. The eHealth and telemedicine agency of Mali, Agence
 Nationale de Télésanté et d’Informatique Médicale (ANTIM), was created in
 2008.
 ANTIM is a publicly owned institution with a scientific ICT
 focus and is a sub-agency reporting to the MoH. It is responsible for promoting
 and developing digital health initiatives and medical informatics, which
 includes research, training and technical support of digital health solutions.
 ANTIM is also responsible for harmonizing and standardizing processes,
 procedures and software. Its staff of thirty-one includes IT professionals,
 engineers, physicians and support staff.
 ANTIM implements telemedicine solutions, reinforces information systems for
 hospitals, provides continuing education via ICTs and promotes use of ICTs
 for healthcare professionals. In addition, ANTIM designs ICT solutions for the MoH in areas such as intranet and online data services for the MoH Datacenter.
 The secured data management information system developed for the MoH
 by ANTIM will centralize all the national health system data. ANTIM also
 coordinates and promotes mHealth solutions by convening stakeholders once
 a month to an mHealth working group."',
 null,
 null,
 null,
 'oussouly@gmail.com',
 'ousmane ly',
 'CEO ANTIM',
 'oussouly@gmail.com',
  '',
  null,
  null,
  '2017-11-13'),
  ('UGA',
  'There are over 90 digital health initiatives in Uganda. Many of these innovations have been limited in scale and hence implemented as stand alone and vertical projects. This prompted the Ministry of Health to issue a moratorium on digital health innovations in 2012 in Uganda and demanded that all digital health initiatives followed issues of interoperability, sustainability, scale, and conformity to MoH data requirements. This therefore enabled Ministry of Health to define and implement an eHealth strategy and framework for digital health in Uganda. ', null, null, null, 'lilian@healthenabled.org', 'Lilian Nabunnya', 'Digital Health Program Manager ', 'lilian@healthenabled.org', '', null, null, '2017-11-14'),
  ('IND', '"India is progressing towards the implementation of digital health. For this, Govt. of India is introducing Integrated Health Information Platform where National Level  Health Information exchange will be setup for interoperability of EHR. Further, to harness the use of mobile phones in India, Govt. of India is planning to roll out National Level Health Helpline where remote advisory will be provided to general public on health related issues."', null, null, null, 'JITENDRA.ARORA@GOV.IN', 'ANKIT TRIPATHI', 'ADDITIONAL DIRECTOR', 'ankit_tripathi11@hotmail.com', '', null, null, '2017-11-12'),
  ('THA', '"Thailand Digital Health situation
 1. Silo type health information systems. No integration and interoperability  and mostly aim for administration and management.
 2. Health personnel spend 40% of work-hours managed reports and documents for administration an reimbursement
 3. Lack of  leadership and national governance body to lead the national HIS development
 4. Inadequate HIS foundations development : health data standards; health information security, privacy; informatics workforces
 5. It is very difficult for patient to get access and use their own health records"', null, null, 'Boonchai Kijsanayotin, boon', ' boonchai@hsri.or.th', 'Boonchai Kijsanayotin', 'Manager of Health Information Standards Development Center, Ministry of Public Health, Thailand', 'kijs0001@gmail.com', '', null, null, '2017-11-22'),
  ('MOZ', 'National electronic aggregate M&E system in place, mortality system in place, point of care under implementation ', null, null, null, 'Antonio.sitoi@gmail.com', 'Alessandro Campione', 'Jembi programs director', 'alessandro.campione@gmail.com', '', null, null, '2017-11-23'),
  ('PHL', 'The country has established a multisectoral  National eHealth Governance Steering Committee and Technical Working Group. The governance body has formally adopted COBIT5 as their IT Governance framework. Following the framework, an eHealth strategy was developed, a health enterpries architecture expert group was formed and other public-private committes were created and activated. ', null, null, 'Undersecretary Herminigildo', 'usecvalle.ofim.doh@gmail.com', 'Alvin Marcelo', 'member, national eHealth Technical Working Group', 'admarcelo@up.edu.ph', '', null, null, '2017-11-23'),
  ('GHA', 'We have a system of aggregated data collection by use of the DHIS ad also electronic medical records systems at our public hospital facilities. We are currently deploying eTracker at the primary care level (community health compounds to collect real time transactional data', null, null, null, 'kawoonor@gmail.com', 'Dr. Koku Awoonoor', 'Director PPME, GHS', 'kawoonor@gmail.com', '', null, null, '2017-11-23'),
  ('NZL', 'New Zealand has some pockets of good digital health but is still making progress at a national level. ', null, null, null, 'r.whittaker@auckland.ac.nz', 'Robyn Whittaker', 'Assoc Prof, CD Innovation', 'r.whittaker@auckland.ac.nz', '', null, null, '2017-11-17');

 insert into country_health_data.health_indicators (country_id, category_id, indicator_id, indicator_score,
 supporting_text)
 values
 ('JOR',
 1,
 1,
 3,
 'no. http://ehs-int.com/'),
 ('JOR',
 1,
 2,
 4,
 'national Health   strategy  MOH. MOH jordan health strategy 2013-2017'),
 ('JOR',
 2,
 3,
 4,
 'no'),
 ('JOR',
 2,
 4,
 1,
 'no'),
 ('JOR',
 3,
 5,
 2,
 'no'),
 ('JOR',
 3,
 6,
 1,
 'no'),
 ('JOR',
 3,
 7,
 1,
 'no'),
 ('JOR',
 3,
 8,
 1,
 'no'),
 ('JOR',
 4,
 9,
 4,
 'no'),
 ('JOR',
 4,
 10,
 4,
 'no'),
 ('JOR',
 4,
 11,
 4,
 'no'),
 ('JOR',
 4,
 12,
 2,
 'no'),
 ('JOR',
 5,
 13,
 0,
 'no'),
 ('JOR',
 5,
 14,
 0,
 'no'),
 ('JOR',
 6,
 15,
 2,
 ''),
 ('JOR',
 6,
 16,
 4,
 'no'),
 ('JOR',
 7,
 17,
 2,
 'no'),
 ('JOR',
 7,
 18,
 1,
 'no'),
 ('JOR',
 7,
 19,
 3,
 'no'),
 ('PER',
 1,
 1,
 3,
 'Telehealth Unit at the Ministry of Health being implemented. ftp://ftp2.minsa.gob.pe/normaslegales/2017/rof_2017.pdf. Reglamento de Organización y Funciones. MINSA'),
 ('PER',
 1,
 2,
 4,
 'Plan Nacional de Gobierno Electronico 2013-2017. http://www2.pcm.gob.pe/clip/PLAN%20NACIONAL%20DE%20GOBIERNO%20ELECTRONICO.pdf. Presidence of Council of Ministers'),
 ('PER',
 2,
 3,
 2,
 'Framework approved. http://busquedas.elperuano.pe/normaslegales/aprueban-documento-tecnico-establecimiento-del-marco-concep-resolucion-ministerial-n-297-2012minsa-777116-1/ . Mandate published. Resolución Ministerial 297-2012/MINSA'),
 ('PER',
 2,
 4,
 2,
 'Informatics Plan. Ministry of Health. http://busquedas.elperuano.pe/normaslegales/aprueban-el-plan-operativo-informatico-2015-del-ministerio-d-resolucion-ministerial-n-121-2015minsa-1208045-1/ . Mandate published. PLAN OPERATIVO INSTITUCIONAL - POI'),
 ('PER',
 3,
 5,
 4,
 'Aprueban uso obligatorio de la Norma Técnica Peruana “NTP ISO/IEC 27001:2014 – Tecnología de la Información. Técnicas de Seguridad. Sistemas de Gestión de Seguridad de la Información. Requisitos.2ª. Edición”, en todas las entidades integrantes del SNI. http://www.minsa.gob.pe/portalweb/02estadistica/estadistica_51.asp. Mandate published'),
 ('PER',
 3,
 6,
 4,
 'Directiva Administrativa que establece los estándares y criterios técnicos para el desarrollo de los sistemas de información en salud. http://www.minsa.gob.pe/portalweb/02estadistica/estadistica_51.asp . Mandate published'),
 ('PER',
 3,
 7,
 4,
 'Law of Telehealth. http://www.minsa.gob.pe/portalweb/02estadistica/estadistica_51.asp . Law of telehealth'),
 ('PER',
 3,
 8,
 0,
 'Not available'),
 ('PER',
 4,
 9,
 2,
 'Curriculum of School of Medicine as an example (San Martin University). http://www.medicina.usmp.edu.pe/images/academico/2016_1/P20-CARRERA_DE_%20MEDICINA_HUMANA_2016.pdf . San Martin University'),
 ('PER',
 4,
 10,
 2,
 'Curriculum Informatics for Global Health as an example. http://www.upch.edu.pe/faspa/index.php/maestrias/maestria-en-informatica-biomedica-en-salud-global . Universidad Peruana Cayetano Heredia'),
 ('PER',
 4,
 11,
 3,
 'Curriculum Informatics for Global Health as an example. http://www.upch.edu.pe/faspa/index.php/maestrias/maestria-en-informatica-biomedica-en-salud-global. Universidad Peruana Cayetano Heredia'),
 ('PER',
 4,
 12,
 1,
 'Given the advance of digital health and telehealth, more personnel with specific competencies are needed. http://www.minsa.gob.pe/index.asp?op=51&nota=25603 . Ministry of Health '),
 ('PER',
 5,
 13,
 1,
 'SUSALUD exchanges data with health care institutions. www.susalud.gob.pe. SUSALUD - Ministry of Health'),
 ('PER',
 5,
 14,
 1,
 'Decrete Supreme - Data Standards for Health. http://www.digemid.minsa.gob.pe/UpLoad/UpLoaded/PDF/EAccMed/DS-024-2005.pdf. Ministry of Health'),
 ('PER',
 6,
 15,
 2,
 ''),
 ('PER',
 6,
 16,
 2,
 'Plan Operativo Informatico. http://bvs.minsa.gob.pe/blog/vhl/legislacion/normatividad-ogti-minsa/ . Ministry of Health '),
 ('PER',
 7,
 17,
 1,
 'National priority areas are supported by digital health, and implemention initiated. https://www.ncbi.nlm.nih.gov/pubmed/25211573 .PMID: 25211573 '),
 ('PER',
 7,
 18,
 4,
 'SUSALUD maintains the national registry of health care institutions. Ministry of Health maintains the national registry of providers. www.minsa.gob.pe and www.susalud.gob.pe . Ministry of Health '),
 ('PER',
 7,
 19,
 3,
 'Master Patient Index is in the health data standards Mandate. http://www.digemid.minsa.gob.pe/UpLoad/UpLoaded/PDF/EAccMed/DS-024-2005.pdf . Ministry of Health '),
 ('MLI', 1, 1,  4, 'National e-Health agency is created: ANTIM, http://antim.sante.gov.ml/docs/LOI_DE_RATIFICATION_ANTIM.PDF. http://antim.sante.gov.ml/docs/ORDONNANCE_ANTIM__0001.pdf. http://antim.sante.gov.ml/docs/ORDONNANCE_ANTIM__0001.pdf '),
 ('UGA', 1, 1,  4, 'Ministry of Health eHealth Policy and strategic framework. Ministry of Health eHealth Policy and strategic framework'),
 ('IND', 1, 1,  4, 'The ministry has setup centre for health informatics for implementation of various schemes and projects under digital health. Further, Ministry planning to setup National eHealth/Digital Health Authority to regulate digital health in the country. https://www.nhp.gov.in/national_eHealth_authority_neha_mtl. https://www.nhp.gov.in/UploadFiles/microsite/636045211217898236_1.pdf'),
 ('THA', 1, 1,  2, 'The digital health governance body consists only people in  Ministry of Public Health. Although there is collaboration between Ministry of Digital Economy, Ministry of Science and Technology and other agencies working related with e-government program, there is no formal governance mechanism that includes other stakeholders in the governance body.  https://ehealth.moph.go.th/ '),
 ('MOZ', 1, 1,  1, 'Hight staff turnover . http://ebooks.iospress.nl/publication/13460. Not clear'),
 ('PHL', 1, 1,  5, 'established by a joint department memorandum July 2013. ehealth.doh.gov.ph. ehealth.doh.gov.ph'),
 ('GHA', 1, 1,  4, 'To ensure that there is proper governance to eHealth and also that this is I line with government agenda ad roadmap. The country has a well defined and structured eHealth strategy and that fits also clearly and aligned to by MDAs. www.ghanahealthservice.org; www.moh.gov.gh. www.ghanahealthservice.org; www.moh.gov.gh'),
 ('NZL', 1, 1,  3, 'There was previously a separate agency which has now been incorporated back into the Ministry of Health as a department. MoH '),
 ('MLI', 1, 2,  4,'"In PDSS 2014-2023 document page 65: RS-6.8. Cyber ​​Health is scaled up to improve the quality of
 diagnosis and management of diseases, training, the system
 health information and research.
 The first activities on the applications of cyber health in Mali date
 of 1996. It was institutionalized in 2008 with the creation of the Agency
 National Telehealth and Medical Informatics (ANTIM) which is in charge
 to promote it. Since its implementation of applications
 interesting have been made in the various fields: consultations,
 neurosurgery, radiology, rural training. These applications have
 demonstrated the need for scaling up telehealth.
 The priority interventions for this scaling up are:
 􀁸 Strengthening the institutional framework and capacity building
 the ANTIM for the coordination and accompaniment of the
 scaling up telehealth;
 􀁸 Strengthening the technical capacities of health facilities in
 all levels of ICT appropriate for telehealth;
 􀁸 Developing and implementing strategies for implementing the
 telehealth to the different components of the health system and to the fight against the disease.". http://www.sante.gov.ml/docs/PDDSS_2014-2023.pdf. http://www.sante.gov.ml/docs/PDDSS_2014-2023.pdf
 '),

 ('UGA', 1, 2,  0,'Ministry of Health is not included in the national health budget but rather funded and supported by partners in an adhoc manner. Not available as government budget don''t show budgets for digital health '),
 ('IND', 1, 2,  4,'National Health Policy  2017 of India has covered the digital health strategies and plans as a nation policy and steps being taken accordingly. https://www.nhp.gov.in/e-health-india_mty. https://www.nhp.gov.in//NHPfiles/national_health_policy_2017.pdf'),
 ('THA', 1, 2,  2,'Thai government has policy and strategy to move to country to digital economy and society called Thailand 4.0. https://ehealth.moph.go.th/ . https://ehealth.moph.go.th/  '),
 ('MOZ', 1, 2,  4,'In strategic and annual plans. Not clear'),
 ('PHL', 1, 2,  5,'Philippine eHealth Strategic Framework and Plan (updated for 2017-2022). ehealth.doh.gov.ph . ehealth.doh.gov.ph'),
 ('GHA', 1, 2,  4,'To ensure that this falls within national plans and priorities. Government has also indicated that ICT is a priority and country developmental agenda would be driven by ICT as a major pillar. The eHealth agenda falls in line. This is to ensure proper planning and budgeting to execute the agenda. www.ghanahealthservice.org; www.moh.gov.gh. www.ghanahealthservice.org; www.moh.gov.gh'),
 ('NZL', 1, 2,  3,'Digital health has recently been included in national plans. MoH'),

 ('MLI', 2, 3,  1, 'Digital health strategic plan drafted. http://antim.sante.gov.ml/index.php/politique-e-sante/27-politique-e-sante. http://antim.sante.gov.ml/index.php/politique-e-sante/27-politique-e-sante'),
 ('UGA', 2, 3,  2, 'National eHealth strategy and framework was presented to Parliament for final review and approval. It is however not yet costed.. National eHealth Policy and Strategy draft document with a final version yet to be approved Parliament and uploaded on to the Ministry''s website.'),
 ('IND', 2, 3,  0, 'The MoHFW is working to formulate National Strategy for Digital Health. However, the work is not completed.  https://www.nhp.gov.in/national_eHealth_authority_neha_mtl'),
 ('THA', 2, 3,  2, 'MOPH eHealth strategy but no cost plan. https://ehealth.moph.go.th/ '),
 ('MOZ', 2, 3,  0, '2 national 5 year strategy available till 2013, the new one newer done again due change in government staff. Not clear '),
 ('PHL', 2, 3,  4, 'Stimulated by the Medium Term IT Harmonization Initiative. ehealth.doh.gov.phehealth.doh.gov.ph'),
 ('GHA', 2, 3,  4, 'To ensure that we align and mobilize required resources to execute the agenda. www.moh.gov.ghwww.moh.gov.gh'),
 ('NZL', 2, 3,  1, 'Digital strategy in draft and being consulted on .MoH '),

 ('MLI', 2, 4,  2, 'ANTIM have a annuel budget. http://www.finances.gouv.ml/sites/default/files/Budget_Programmes_2017_Tome_1_Previsions.pdf. ministry of finance '),
 ('UGA', 2, 4,  0, 'MoH doesnt have a budget for digital health initiatives implemented in the country since Partners fund and support these initiative independently.   Not available '),
 ('IND', 2, 4,  1, 'A budget head in the name of "Management of Information systems" is availble in budget document. However, Every programme/ scheme has the IT budget heads. https://mohfw.gov.in/sites/default/files/sbe47_0.pdf. https://mohfw.gov.in/sites/default/files/sbe47_0.pdf'),
 ('THA', 2, 4,  1, 'https://ehealth.moph.go.th/ .  https://ehealth.moph.go.th/ '),
 ('MOZ', 2, 4,  1, 'Depend on donor  funds.  Not clear '),
 ('PHL', 2, 4,  2, 'National budget.  congress.gov.ph'),
 ('GHA', 2, 4,  4, 'To ensure at least resources are budgeted for ad available to use. Under the Ministry of communications are various departments, authorities (National Communications Authority NCA. National Information Technology Authority NITA, etc).mandated to execute the agenda, ICT being described as the backbone of the country''s development.. www.moh.gov.gh; www.nita.gov.gh; www.nca.org.gh www.ghanahealthservice.org; www.moh.gov.gh; www.nita.gov.gh; www.nca.org.gh'),
 ('NZL', 2, 4,  4, 'We dont have the data but feel it is probably 1-3%.  n/a '),

 ('MLI', 3, 5,  0, 'NA. NA. NA'),
 ('UGA', 3, 5,  4, 'There are quiet a number of legal frameworks  for data protection (security) in Uganda that are being implemented. However these need to be consistently enforced as there are some implementers who give little attention to data security, sensitivity and transfer.. https://www.nita.go.ug/sites/default/files/publications/Data%20Protection%20and%20Privacy%20Bill%202015%20-published_0.pdf. https://www.nita.go.ug/sites/default/files/publications/Uganda%20CMM.pdf; https://www.nita.go.ug/sites/default/files/publications/National%20Information%20Security%20Policy%20v1.0_0.pdf '),
 ('IND', 3, 5,  2, 'The MoHFW is drafting the Health Data Privacy and Security Act which is under review.. . http://hdpsa.in/wp/'),
 ('THA', 3, 5,  2, 'Ministry of Digital Economy and  Parliament are working on the Personal Information Protection Laws. Health Information security, privacy and confidentiality law and regulation will be include under this umbrella information security laws.. https://www.youtube.com/watch?v=IOsXruDsJ0Y . http://thaiembdc.org/thailand-4-0-2/, https://www.youtube.com/watch?v=IOsXruDsJ0Y'),
 ('MOZ', 3, 5,  2, 'Wating 4 years for parliament approval. . Idem'),
 ('PHL', 3, 5,  4, 'Data Privacy Act of 2012.  congress.gov.ph'),
 ('GHA', 3, 5,  4, 'To ensure security and data protection and to avoid abuse and misuse. www.nita.gov.gh; www.nca.org.gh. www.nita.gov.gh; www.nca.org.gh'),
 ('NZL', 3, 5,  4, 'There are laws and health information privacy code. n/a '),

 ('MLI', 3, 6,  3, 'Generic law for personal data protection and privacy. https://apdp.ml/wp-content/uploads/pdf/Loi-sur-la-protection-des-donnees-personnelles-du-21-mai-2013.pdfhttps://apdp.ml/'),
 ('UGA', 3, 6,  5, 'The Access to Information Act grants the public the right to access official information held by public authorities, subject to exemptions which balance that right against the public interest in exempting from disclosure governmental, commercial or personal information of a sensitive nature. http://moj.gov.jm/sites/default/files/laws/The%20Access%20%20to%20Information%20Act.pdfhttp://moj.gov.jm/sites/default/files/laws/The%20Access%20%20to%20Information%20Act.pdf'),
 ('IND', 3, 6,  2, 'The MoHFW is drafting the Health Data Privacy and Security Act which is under review. http://hdpsa.in/wp/'),
 ('THA', 3, 6,  2, 'same as indicator 5. same as indicator 5'),
 ('MOZ', 3, 6,  1, 'Proposed. Idem'),
 ('PHL', 3, 6,  5, 'Data Privacy Act of 2012. congress.gov.ph'),
 ('GHA', 3, 6,  4, 'A law has been passed to protect individual privacy, governing ownership, access and sharing of individually identifiable digital health data. This is to ensure that individual rights and liberties are protected. www.nita.gov.gh; www.nca.org.ghwww.nita.gov.gh; www.nca.org.gh'),
 ('NZL', 3, 6,  4, 'There are some gaps in visibility of how these are applied in some areas eg. private, NGOs MoH.'),

 ('MLI', 3, 7,  0, 'NA. NA. NA'),
 ('UGA', 3, 7,  0, 'There are only clinical guidelines but the country lacks protocols on patient care use of connected medical devices. Non existent'),
 ('IND', 3, 7,  3, 'The Ministry of Health and Family Welfare has notified Medical Devices Rules, 2017 on 31.01.2017. The new Rules have been framed in conformity with Global Harmonisation Task Force (GHTF) framework and conform to best international practices.  Only 15 categories of medical devices are, at present, regulated as drugs and to that extent, the current regulatory practices in India were not fully geared to meet the requirements of medical devices sector in the country.  The new Rules seek to remove regulatory bottlenecks to make in India, facilitate ease of doing business while ensuring availability of better medical devices for patient care and safety. Further, Ministry of Health and Ministry of IT, GoI has also constituted a working group for finalisation of standards for wearables health devices.. http://pib.nic.in/newsite/mbErel.aspx?relid=157955'),
 ('THA', 3, 7,  1, 'same as indicator 5. same as indicator 5, https://www.ncbi.nlm.nih.gov/pubmed/20841712 '),
 ('MOZ', 3, 7,  null, 'Not available . Idem'),
 ('PHL', 3, 7,  0, 'a draft is in the agenda of the National eHealth Governance Steering Committee. ehealth.doh.gov.ph'),
 ('GHA', 3, 7,  4, 'To avoid abuse and ensure that we follow globally acceptable standards. Aside the MoH/GHS has also developed protocols, guidelines and Standard Operating Procedures (SOPs). NA www.moh.gov.gh; www.ghanahealthservice.org; www.nita.gov.gh'),
 ('NZL', 3, 7,  1, 'There are some relevant processes around different aspects of this, but not at a national level. N/a'),

 ('MLI', 3, 8,  0, 'NA. NA. NA'),
 ('UGA', 3, 8,  null, 'These protocols are missing .  Not available '),
 ('IND', 3, 8,  null, 'The country as of now is setting up the National Level Health information exchange. The international interoperability and data exchange will be covered in the next phase. .  https://www.nhp.gov.in/integrated_health_information_program_mtl'),
 ('THA', 3, 8,  null, 'same as indicator 5.  same as indicator 5'),
 ('MOZ', 3, 8,  null, 'Not available .  Idem'),
 ('PHL', 3, 8,  0, 'presonal knowledge.  personal knowledge'),
 ('GHA', 3, 8,  4, 'As indicated earlier and now, there are  protocols, policies, frameworks, SoPs ad guidelines that are in place in place to support secure both internal and external including cross-border data exchange and storage of all health-related data coming into a country, going out of a country, and/or being used in a country related to an individual from another country. This is ensure that there is no abuse and if approved , the data or information is accurate. www.moh.gov.gh; www.ghanahealthservice.org; www.nita.gov.gh  www.moh.gov.gh; www.ghanahealthservice.org; www.nita.gov.gh'),
 ('NZL', 3, 8,  3, 'Some policies around data exchange and storage but ''cross border'' is not a major focus for New Zealand.  MoH'),

 ('MLI', 4, 9,  0, 'NA. NA. NA'),
 ('UGA', 4, 9,  2, 'Digital health implementing partners conduct adhoc trainings for community health workers, Nurses, doctors and allied health professionals but this is not part of the national training curriculum. Non existent '),
 ('IND', 4, 9,  null , 'The digital health is relatively new term in India. However, courses/subject in the the area of health informatics/ medical Informatics being offered in various universities and MBBS 1 year term in AIIMS, New Delhi.  . https://www.nhp.gov.in/health-informatics_pg#Institutes Offering Courses'),
 ('THA', 4, 9,  4, 'https://www.ncbi.nlm.nih.gov/pubmed/20841712. https://www.ncbi.nlm.nih.gov/pubmed/20841712'),
 ('MOZ', 4, 9,  3, 'Diploma course in place. Idem'),
 ('PHL', 4, 9,  3, 'scanning of University of the Philippines Manila. personal knowledge'),
 ('GHA', 4, 9,  2, 'To take advantage of ICT and digital health to enhance learning and practice. www.moh.gov.gh; www.ghanahealthservice.org; www.nmcgh.org.  www.moh.gov.gh; www.ghanahealthservice.org; www.nmcgh.org'),
 ('NZL', 4, 9,  0, 'Needs further investigation of the different courses but possibly not a widespread focus at this point . personal communication'),

 ('MLI', 4, 10,  0, 'NA. NA. NA'),
 ('UGA', 4, 10,  0, 'Digital health implementing partners conduct adhoc trainings for community health workers, Nurses, doctors and allied health professionals but this is not part of the national training curriculum. . Not available '),
 ('IND', 4, 10,  null , 'No information available . . NA'),
 ('THA', 4, 10,  3, 'same as indicator 9. same as indicator 9. same as indicator 9'),
 ('MOZ', 4, 10,  null , 'No indicator. . Idem'),
 ('PHL', 4, 10,  1, 'Only nursing has formal nursing informatics courses. . https://www.ncbi.nlm.nih.gov/pubmed/18998935'),
 ('GHA', 4, 10,  2, 'To ensure that teaching is optimized by use of technology. www.moh.gov.gh; www.ghanahealthservice.org; www.nmcgh.org. www.moh.gov.gh; www.ghanahealthservice.org; www.nmcgh.org'),
 ('NZL', 4, 10,  2, 'Ad hoc, varies organisation by organisation. . personal communication '),

 ('MLI', 4, 11,  1, 'NA. NA. NA'),
 ('UGA', 4, 11,  null , 'There is training in health informatics / health information systems but not tailored as part of the National digital health curriculum - the country doesn''t even have a national digital health curriculum yet..  Not available '),
 ('IND', 4, 11,  4, 'In the country many institutes are offering courses in the areas of digital health / health informatics / health information systems / biomedical informatics. However, the skilled training programme is missing in the industry. .  https://www.nhp.gov.in/health-informatics_pg#Institutes Offering Courses'),
 ('THA', 4, 11,  3, 'same as indicator 9. same as indicator 9 same as indicator 9'),
 ('MOZ', 4, 11,  3, 'Self explanatory .  Idem'),
 ('PHL', 4, 11,  3, 'CHITS training.  CHITS training provided by UP National Telehealth Center'),
 ('GHA', 4, 11,  3, 'To ensure that country build the needed capacity and enhance service delivery. www.moh.gov.gh; www.ghanahealthservice.org; www.nmcgh.org www.moh.gov.gh; www.ghanahealthservice.org; www.nmcgh.org'),
 ('NZL', 4, 11,  3, 'This is an evolving area across the health sector.  personal communication '),

 ('MLI', 4, 12,  0, 'NA. NA. NA'),
 ('UGA', 4, 12,  1, 'In Uganda, there are currently no public sector professional tittles and career paths in digital health.  Not available '),
 ('IND', 4, 12,  0, 'No policy is available in this regard in the country. NA'),
 ('THA', 4, 12,  0, 'same as indicator 9. same as indicator 9. same as indicator 9. https://drive.google.com/open?id=1riHDp-Pbc1r8S9GB-K5peqMl_ntTizCi'),
 ('MOZ', 4, 12,  null , 'Not available.  Udem'),
 ('PHL', 4, 12,  1, 'no formal discussion on this matter. personal knowledge'),
 ('GHA', 4, 12,  3, 'To ensure the availability of qualified staff at all levels of the health care system . www.moh.gov.gh; www.ghanahealthservice.org;  www.moh.gov.gh; www.ghanahealthservice.org; '),
 ('NZL', 4, 12,  1, 'This is an evolving area with work force in some areas of the country but not all. personal communication'),

 ('MLI', 5, 13,  0, 'NA. NA. NA'),
 ('UGA', 5, 13,  1, 'The eHealth architecture is defined within the National eHealth Policy and strategy framework. Worth noting is that the eHealth Policy and strategy framework isnt yet officially approved by Parliament but was tabled for review and discussion. . . eHealth Policy and strategy framewokr'),
 ('IND', 5, 13,  1, 'The work related to interoperability is under process. . . https://www.nhp.gov.in/integrated_health_information_program_mtl'),
 ('THA', 5, 13,  3, 'https://drive.google.com/open?id=1vOLLexOLcwQswrEG2f651EQFPU5ypKpV . . http://this.or.th/files/interopbook.pdf , '),
 ('MOZ', 5, 13,  1, 'Government understand the principle . . Idem'),
 ('PHL', 5, 13,  1, 'Philippine Health Information Exchange administrtive order. . ehealth.doh.gov.ph'),
 ('GHA', 5, 13,  4, 'To ensure country follows international standards and best practice. www.nita.gov.gh; www.moc.gov.gh. www.nita.gov.gh; www.moc.gov.gh'),
 ('NZL', 5, 13,  1, 'Some work is progressing in this area. . Personal communication '),

 ('MLI', 5, 14,  0, 'NA. NA. NA'),
 ('UGA', 5, 14,  2, 'These data standards are incorporated in some of the legal frameworks on access to health information, data security and privacy. The are regulated through the National Information and Technology  Authority.. . https://www.nita.go.ug/sites/default/files/publications/Data%20Protection%20and%20Privacy%20Bill%202015%20-published_0.pdf'),
 ('IND', 5, 14,  3, 'The country has introduced a uniform system for maintenance of Electronic Medical Records / Electronic Health Records (EMR / EHR ). The "Electronic Health Record Standards for India - 2016'' have been finalised and approved by the Ministry of Health and Family Welfare, Government of India.. . https://mohfw.nic.in/sites/default/files/17739294021483341357_1.pdf'),
 ('THA', 5, 14,  4, 'same as Indicator 13. same as Indicator 13. same as Indicator 13'),
 ('MOZ', 5, 14,  2, 'Self explanatory . Idem'),
 ('PHL', 5, 14,  2, 'Standards and expert Group has published a standard catalog. . ehealth.doh.gov.ph'),
 ('GHA', 5, 14,  3, 'To follow global best practice and international standards. Also to conform with international obligations and regulations. www.nita.gov.gh; www.moc.gov.gh; www.ca.org.gh. www.nita.gov.gh; www.moc.gov.gh; www.nca.org.g'),
 ('NZL', 5, 14,  3, 'Health Information Standards Organisation is active in this area. personal communication '),

 ('MLI', 6, 15,  1, ''),
 ('UGA', 6, 15,  1, ''),
 ('IND', 6, 15,  2, ''),
 ('THA', 6, 15,  2, ''),
 ('MOZ', 6, 15,  null , ''),
 ('PHL', 6, 15,  1, ''),
 ('GHA', 6, 15,  2, ''),
 ('NZL', 6, 15,  5, ''),


 ('MLI', 6, 16,  0, 'NA. NA. NA'),
 ('UGA', 6, 16,  0, 'Plan is not yet available .  Not available'),
 ('IND', 6, 16,  0, 'Not available .  NA'),
 ('THA', 6, 16,  4, 'https://ehealth.moph.go.th/. . https://ehealth.moph.go.th/'),
 ('MOZ', 6, 16,  null , 'Self explanatory . . Idem'),
 ('PHL', 6, 16,  0, 'infrastructure is generally left to the Dept of ICT. . personal knowledge'),
 ('GHA', 6, 16,  3, 'To ensure that the digital health infrastructure is well implemented according to plan. www.nita.gov.gh; www.moc.gov.gh; www.moh.gov.gh. www.nita.gov.gh; www.moc.gov.gh; www.moh.gov.gh'),
 ('NZL', 6, 16,  4, 'We have a federated model where regional/district organisations are responsible for this. . DHBs'),

 ('MLI', 7, 17,  1, 'It is in PDSS 2014-2023. http://www.sante.gov.ml/docs/PDDSS_2014-2023.pdf.http://www.sante.gov.ml/docs/PDDSS_2014-2023.pdf'),
 ('UGA', 7, 17,  2, 'Currently, there are a few nationally scaled digital health systems that support a few national priority areas. Only DHIS2 and mTrac are the nationally scaled digital health systems that support a few priority areas in the country'),
 ('IND', 7, 17,  1, 'The National Health Policy - 2017 advocates extensive deployment of digital tools for improving the efficiency and outcome of the healthcare system. The policy aims at an integrated health information system which serves the needs of all stake-holders and improves efficiency, transparency, and citizen experience. Delivery of better health outcomes in terms of access, quality, affordability, lowering of disease burden and efficient monitoring of health entitlements to citizens, is the goal. . .https://www.nhp.gov.in//NHPfiles/national_health_policy_2017.pdf'),
 ('THA', 7, 17,  3, 'http://thaiembdc.org/thailand-4-0-2/. http://thaiembdc.org/thailand-4-0-2/'),
 ('MOZ', 7, 17,  null , 'Missing . Idem'),
 ('PHL', 7, 17,  1, 'eclaims and PCB are active. philhealth.gov.ph'),
 ('GHA', 7, 17,  3, 'Goal is to ensure that we cover the entire country, both public and private. www.nita.gov.gh; www.moc.gov.gh; www.moh.gov.gh; www.ghanahealthservice.org.www.nita.gov.gh; www.moc.gov.gh; www.moh.gov.gh; www.ghanahealthservice.org'),
 ('NZL', 7, 17,  null , 'Further work would be required to determine this, but I would estimate a 4. personal communication '),

 ('MLI', 7, 18,  3, 'We have a web based health information system based on DHI2. http://www.sante.gov.ml/index.php/nep-mali/itemlist/category/106-carte-sanitaire. http://www.sante.gov.ml/index.php/nep-mali/itemlist/category/106-carte-sanitaire'),
 ('UGA', 7, 18,  1, 'There are discussion around mapping out all digital health initiatives in the country and make the list available and accessible by the public. However, it is not yet clear whether the data would be geotagged to enable  GIS mapping.. . Technical Working Group meeting minutes'),
 ('IND', 7, 18,  3, 'The MoHFW has generated the  National Identification Number for all Health Facilities of India (NIN-2-HFI). In order to identify the geographical location of the health facility, attributes like state, district, taluka, village codes based on MDDS (Meta Data & data Standards) will be attached to NIN initially.. . https://nin.nhp.gov.in/about_nin2hfi.php'),
 ('THA', 7, 18,  4, 'https://drive.google.com/open?id=1riHDp-Pbc1r8S9GB-K5peqMl_ntTizCi. . https://drive.google.com/open?id=1riHDp-Pbc1r8S9GB-K5peqMl_ntTizCi'),
 ('MOZ', 7, 18,  3, 'Self explanatory . Idem'),
 ('PHL', 7, 18,  2, 'national health facility registry.  nhfr.doh.gov.ph'),
 ('GHA', 7, 18,  4, 'To ensure quality . www.nita.gov.gh; www.moc.gov.gh; www.moh.gov.gh; www.ghanahealthservice.org. www.nita.gov.gh; www.moc.gov.gh; www.moh.gov.gh; www.ghanahealthservice.org'),
 ('NZL', 7, 18,  3, 'We have registers but they may be incomplete.  personal communication '),


 ('MLI', 7, 19,  0, 'NA. NA. Does the country have a separate department / agency / national working group for digital health? it is not the right question! this question need revision.'),
 ('UGA', 7, 19,  0, 'The country has an eHealth Technical Working Group where digital health falls. However a master patient index registry is non existent. . Non existent'),
 ('IND', 7, 19,  1, 'The IHIP project covers the identity management system by implementing enterprise master patient index in India. https://www.nhp.gov.in/integrated_health_information_program_mtl'),
 ('THA', 7, 19,  4, 'https://drive.google.com/open?id=1riHDp-Pbc1r8S9GB-K5peqMl_ntTizCi. https://drive.google.com/open?id=1riHDp-Pbc1r8S9GB-K5peqMl_ntTizCi'),
 ('MOZ', 7, 19,  1, 'Self explanatory . Idem'),
 ('PHL', 7, 19,  1, 'Phil Health Information exchange. ehealth.doh.gov.ph'),
 ('GHA', 7, 19,  5, 'To ensure confidentiality and data protection. www.nita.gov.gh; www.moc.gov.gh; www.moh.gov.gh; www.ghanahealthservice.org'),
 ('NZL', 7, 19,  4, 'We have a national health unique identifier that is used but possibly could be improved. personal communication ')