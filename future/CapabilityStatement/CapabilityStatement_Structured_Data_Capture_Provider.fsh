Instance: StructuredDataCaptureProvider
InstanceOf: CapabilityStatement
Usage: #definition
Title: "Structured Data Capture Provider"
* status = #active
* date = 2023-02-01
* kind = #requirements
* fhirVersion = #4.0.1
* format = #json
* description = "Providers supports read only access to sources of structured data capture (e.g. openEHR). Is currently focused on Finding Questionnaires (Form Definitions) and Finding Completed Questionnaires. Form Pre-Population is suppported by capabilities in other provider API's. \n - [FHIR Structured Data Capture](https://build.fhir.org/ig/HL7/sdc/)"
* rest.mode = #server

//Questionnaire
* insert ResourceWithExpectation(#Questionnaire, https://fhir.virtually.healthcare/StructureDefinition/Questionnaire, #SHALL)
* insert WithSupportedProfile(https://fhir.hl7.org.uk/StructureDefinition/UKCore-Questionnaire)
* insert InteractionWithExpectation(#search-type, #SHALL)
* insert SearchParamWithExpectation(code, #token, #SHOULD)
* insert SearchParamWithExpectation(url, #uri, #SHOULD)
* insert SearchParamWithExpectation(title, #string, #SHOULD)

//QuestionnaireResponse
* insert ResourceWithExpectation(#QuestionnaireResponse, https://fhir.virtually.healthcare/StructureDefinition/QuestionnaireResponse, #SHALL)
* insert WithSupportedProfile(https://fhir.hl7.org.uk/StructureDefinition/UKCore-QuestionnaireResponse)
* insert InteractionWithExpectation(#search-type, #SHALL)
* insert SearchParamWithExpectation(patient, #reference, #SHOULD)
* insert SearchParamWithExpectation(questionnaire, #reference, #SHOULD)
