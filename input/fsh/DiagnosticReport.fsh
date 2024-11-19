Profile: DiagnosticReport
Parent: https://fhir.hl7.org.uk/StructureDefinition/UKCore-DiagnosticReport
Id: DiagnosticReport
Description: "Merge of Royal College of Radiologists (HL7 v2 ORU), Digital Health and Care Wales HL7 v2 ORU and UKCore-DiagnosticReport"

* identifier 1..* MS

* identifier ^slicing.discriminator.type = #profile
* identifier ^slicing.discriminator.path = "resolve()"
* identifier ^slicing.rules = #closed
* identifier contains
    CommonResourceIdentifiers 0..*

* identifier[CommonResourceIdentifiers] only CommonResourceIdentifiers
* identifier[CommonResourceIdentifiers] ^short = "Common Resource Identifiers"


//* code insert Obligation(#SHALL:populate-if-known, https://fhir.virtually.healthcare/ActorDefinition/ClinicalDataRepository)
//* code insert Obligation(#SHALL:populate-if-known, https://fhir.virtually.healthcare/ActorDefinition/ClinicalDataService)

* subject.reference 1..1 MS
* subject.identifier only NHSNumbers

* effective[x] 1..1 MS
* effective[x] only dateTime
//* effective[x] insert Obligation(#SHALL:populate-if-known, https://fhir.virtually.healthcare/ActorDefinition/ClinicalDataRepository)
//* effective[x] insert Obligation(#SHALL:populate-if-known, https://fhir.virtually.healthcare/ActorDefinition/ClinicalDataService)

* performer 0..* MS
* performer only Reference(Practitioner)
* performer.reference 1..1
