Instance: DocumentIndexProvider
InstanceOf: CapabilityStatement
Usage: #definition
Title: "Document Index Provider based on IHE MHD"
* status = #active
* date = 2023-02-01
* kind = #requirements
* fhirVersion = #4.0.1
* format = #json
* description = "Provider supports read-only access to a patient document and clinical index for the purposes of direct care and subject of care access. \nBackwards compatible with IHE XDS."
* rest.mode = #server

//Patient
* insert ResourceWithExpectation(#DocumentReference, https://fhir.virtually.healthcare/StructureDefinition/DocumentReference, #SHALL)
* insert WithSupportedProfile(https://fhir.hl7.org.uk/StructureDefinition/UKCore-DocumentReference)
* insert InteractionWithExpectation(#search-type, #SHALL)
* insert SearchParamWithExpectation(patient, #reference, #SHALL)
* insert SearchParamWithExpectation(patient:identifier, #token, #MAY)
* insert SearchParamWithExpectation(type, #token, #SHOULD)
* insert SearchParamWithExpectation(date, #date, #SHOULD)
