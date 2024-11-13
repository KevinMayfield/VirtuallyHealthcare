Profile: QuestionnaireResponse
Parent: http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse
Id: QuestionnaireResponse
Description: "Based on [HL7 Structured Data Capture](https://build.fhir.org/ig/HL7/sdc/)"

* identifier 0..1 MS

* identifier only CommonResourceIdentifiers
* identifier ^short = "Common Resource Identifiers"

* subject 1..1
* subject only Reference(Patient)
* subject.identifier only NHSNumbers

