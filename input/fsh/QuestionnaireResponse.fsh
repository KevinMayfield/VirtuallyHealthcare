Profile: QuestionnaireResponse
Parent: http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse
Id: QuestionnaireResponse
Description: "Based on [HL7 Structured Data Capture](https://build.fhir.org/ig/HL7/sdc/)"

* identifier 1..1 MS
* identifier only CommonResourceIdentifiers

* subject 1..1 MS
* subject only Reference(Patient)
* subject.identifier only NHSNumbers

* authored 1..1 MS
* author 1..1 MS

* encounter ^short = "Required for GP system writeaback, optional for CDR"
