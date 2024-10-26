
### Data Capture Requirements

This documentation is basic and just shows the types of data being captured.

 - [Care and Support Plan](Questionnaire-4953b4a9-cd3f-4a07-b12a-62b88cf3fb81.html)
 - [Goals](Questionnaire-31424b39-5aec-4456-864b-86ad3348d075.html)

A more complete example can be found in [vital signs](Questionnaire-0d9fccea-9c98-4e61-b3e0-bc9b3a9db675.html), this has some data items which are included in the care and support plan. How this could look is shown in [Structured Data Capture](structured-data-capture.md)

### Entity Relationship Model

Virtually, EMIS, TPP, Android Health Connect and Apple HealthKit are all interrelated as shown in the diagram below:

<figure>{% include pcsp.svg %}</figure>
<br clear="all"/>

In EMIS, TPP and possibly Apple HealthKit these are all clinically coded entities. EMIS and TPP use a coding system called [SNOMED CT](https://digital.nhs.uk/developer/guides-and-documentation/building-healthcare-software/clinical-coding-classifications-and-terminology#snomed-ct)
(Apple Healthkit uses another coding system called [LOINC](https://loinc.org/fhir/) - more on this later).

This coding is important as it allows us to work with these external systems. For example EMIS and TPP both represent weight as SNOMED CT `27113001`. 

#### Apple/Android to CDR

In the diagram above it is assumed data extracted from Apple/Android is stored in the virtually CDR (AWS FHIRWorks) Observation's.
These entries MUST be SNOMED encoded. 
Apple HealthKit may support the FHIR format, if so this means mininmal data trasformation (probably just the patient id). 

### FHIR Structured Data Capture

This probably sets us apart from other vendors as we can now: 

- pre-populate the PCSP from existing data. So if we ask the patient for their weight we can use the latest values from EMIS, TPP and our own CDR.
- extract data from the PCSP to EMIS, TPP and/or our own CDR.

This concept can result in considerable savings in both practitioner and patient time. 
It also allows reuse of data between different care plans and other questionnaires.

These concepts are discussed in more detail in:

- [Automatic population](https://build.fhir.org/ig/HL7/sdc/populate.html) helps to reduce the pain of having to fill in the same information 'yet again' by allowing a form to automatically fill in answers already known to the EHR or other data source. The user can then just verify that the information is still correct (and revise if necessary) rather than needing to fill out the information all over again (and possibly accidentally omitting or incorrectly entering some of it
- [Data Extraction](https://build.fhir.org/ig/HL7/sdc/extraction.html) allows data captured in a QuestionnaireResponse to be extracted and used to create or update other FHIR resources - allowing the data to be more easily searched, compared and used by other FHIR systems

<figure>{% include sdc-activity.svg %}</figure>
<br clear="all"/>
