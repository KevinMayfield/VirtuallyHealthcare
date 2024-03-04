Instance: QueryAPIProvider
InstanceOf: CapabilityStatement
Usage: #definition
Title: "Query API Provider based on IHE QEDm and IPA"
* status = #active
* date = 2023-02-01
* kind = #requirements
* fhirVersion = #4.0.1
* format = #json
* description = "Provider supports read-only access structured clinical record held within EHR's."
* rest.mode = #server

//AllergyIntolerance
* insert ResourceWithExpectation(#AllergyIntolerance, https://fhir.virtually.healthcare/StructureDefinition/AllergyIntolerance, #SHOULD)
* insert WithSupportedProfile(https://fhir.hl7.org.uk/StructureDefinition/UKCore-AllergyIntolerance)
* insert InteractionWithExpectation(#search-type, #SHALL)
* insert SearchParamWithExpectation(patient, #reference, #SHALL)

//Condition
* insert ResourceWithExpectation(#AllergyIntolerance, https://fhir.virtually.healthcare/StructureDefinition/Condition, #SHOULD)
* insert WithSupportedProfile(https://fhir.hl7.org.uk/StructureDefinition/UKCore-Condition)
* insert InteractionWithExpectation(#search-type, #SHALL)
* insert SearchParamWithExpectation(patient, #reference, #SHALL)
* insert SearchParamWithExpectation(onset-date, #date, #SHOULD)

//DocumentReference
* insert ResourceWithExpectation(#DocumentReference, https://fhir.virtually.healthcare/StructureDefinition/DocumentReference, #SHOULD)
* insert WithSupportedProfile(https://fhir.hl7.org.uk/StructureDefinition/UKCore-DocumentReference)
* insert InteractionWithExpectation(#search-type, #SHALL)
* insert SearchParamWithExpectation(patient, #reference, #SHALL)
* insert SearchParamWithExpectation(date, #date, #SHOULD)
* insert SearchParamWithExpectation(type, #token, #SHOULD)

//Immunization
* insert ResourceWithExpectation(#Immunization, https://fhir.virtually.healthcare/StructureDefinition/Immunization, #SHOULD)
* insert WithSupportedProfile(https://fhir.hl7.org.uk/StructureDefinition/UKCore-Immunization)
* insert InteractionWithExpectation(#search-type, #SHALL)
* insert SearchParamWithExpectation(patient, #reference, #SHALL)
* insert SearchParamWithExpectation(date, #date, #SHOULD)

//MedicationRequest
* insert ResourceWithExpectation(#MedicationRequest, https://fhir.virtually.healthcare/StructureDefinition/MedicationRequest, #SHOULD)
* insert WithSupportedProfile(https://fhir.hl7.org.uk/StructureDefinition/UKCore-MedicationRequest)
* insert InteractionWithExpectation(#search-type, #SHALL)
* insert SearchParamWithExpectation(patient, #reference, #SHALL)
* insert SearchParamWithExpectation(authoredon, #date, #SHOULD)

//Observation
* insert ResourceWithExpectation(#Observation, https://fhir.virtually.healthcare/StructureDefinition/Observation, #SHOULD)
* insert WithSupportedProfile(https://fhir.hl7.org.uk/StructureDefinition/UKCore-Observation)
* insert InteractionWithExpectation(#search-type, #SHALL)
* insert SearchParamWithExpectation(patient, #reference, #SHALL)
* insert SearchParamWithExpectation(date, #date, #SHOULD)
* insert SearchParamWithExpectation(category, #token, #MAY)
* insert SearchParamWithExpectation(code, #token, #MAY)
