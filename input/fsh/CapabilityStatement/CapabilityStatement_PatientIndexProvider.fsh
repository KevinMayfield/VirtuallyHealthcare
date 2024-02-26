Instance: PatientIndexProvider
InstanceOf: CapabilityStatement
Usage: #definition
Title: "Patient Index Provider based on IHE PDQm"
* status = #active
* date = 2023-02-01
* kind = #requirements
* fhirVersion = #4.0.1
* format = #json
* description = "Provider supports read-only access to a patient index for the purposes of direct care and subject of care access."
* rest.mode = #server

//Patient
* insert ResourceWithExpectation(#Patient, https://fhir.virtually.healthcare/StructureDefinition/Patient, #SHALL)
* insert WithSupportedProfile(https://fhir.hl7.org.uk/StructureDefinition/UKCore-Patient)
* insert InteractionWithExpectation(#search-type, #SHALL)
* insert SearchParamWithExpectation(_id, #token, #SHOULD)
* insert SearchParamWithExpectation(birthdate, #date, #SHOULD)
* insert SearchParamWithExpectation(family, #string, #SHOULD)
* insert SearchParamWithExpectation(gender, #token, #SHALL)
* insert SearchParamWithExpectation(given, #string, #SHOULD)
* insert SearchParamWithExpectation(identifier, #token, #SHALL)
* insert SearchParamWithExpectation(name, #string, #SHOULD)

