
The aim of this is to:

- Provide support for a wide variety of forms in use within the NHS and social sector.
  - This can also be used to support for new forms in applications via code, see [Advanced Form Rendering](https://build.fhir.org/ig/HL7/sdc/rendering.html) for more details.
- Support pre population of forms by reusing existing data which will save clinicians and patients considerable time.
- It will simplify storage of clinical data in both internal and external clinical data repositories.
- It improves our data standards.

<figure>
{%include component-structured-data-capture.svg%}
<p id="fX.X.X.X-X" class="figureTitle">Structured Data Capture</p>
</figure>
<br clear="all">

## Data Capture Application

This would often be implemented as form in an application. This should follow a FHIR Questionnaire which defines data types to be used and valuesets that can be used with picklists. 

Idea is to implement on AWS FHIR-Works/Health-Lake first and then incorporate in writebacks if wanted.

### Examples Form Definitions

- [Vital Signs](Questionnaire-VitalSigns.html)
- [Exercise Activity](Questionnaire-ExerciseActivity.html)

The clinical data repositories (EMIS IM1 and AWS FhirWorks/Healthlake) can be used to retrieve existing data and prepopulate the form. This saves clinicians and patients time when completing the form. Only coded questions can be used for pre-population.

### Example Existing Data Query

On AWS FhirWorks/Healthlake, patient weight can be retrieved by 

`GET /Observation?patient={id}&code=http://snomed.info/sct|27113001`

On EMIS this would be and the response would need to be searched for the body weight (the code query can be built into the API - it's quite simple)

`GET /Observation?patient={id}`

## Testing Service

Checks the FHIR QuestionnaireResponse meets the requirements defined in the FHIR Questionnaire. 
This is new experimental feature and can be found at [FHIR Validation](https://ifhfg6fk2b.execute-api.eu-west-2.amazonaws.com/swagger-ui/index.html)

This service can check all data going into CDR's meet our domain model requirements.

## Clinical Data Extraction Service

This converts the FHIR QuestionnaireResponse into Observations. 

### Example

Completed vital signs form [Vital Signs](QuestionnaireResponse-questionnaireresponse-vital-signs.html). The extraction results in entries such as:

- [Blood Pressure](Observation-8037d992-5936-44bf-9253-f76f904ba7b9.html)
- [Body Weight](Observation-af22811f-218e-4ff6-aa07-93f12c666dd7.html)
