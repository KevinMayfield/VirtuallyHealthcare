Profile: DiagnosticReport
Parent: https://fhir.hl7.org.uk/StructureDefinition/UKCore-DiagnosticReport
Id: DiagnosticReport
Description: "Extension of UKCore-DiagnosticReport"

* identifier 1..* MS


* code insert Obligation(#SHALL:populate-if-known, https://fhir.virtually.healthcare/ActorDefinition/ClinicalDataRepository)
* code insert Obligation(#SHALL:populate-if-known, https://fhir.virtually.healthcare/ActorDefinition/ClinicalDataService)

* subject.reference 1..1 MS
* subject.identifier only NHSNumber

* effective[x] 1..1 MS
* effective[x] only dateTime
* effective[x] insert Obligation(#SHALL:populate-if-known, https://fhir.virtually.healthcare/ActorDefinition/ClinicalDataRepository)
* effective[x] insert Obligation(#SHALL:populate-if-known, https://fhir.virtually.healthcare/ActorDefinition/ClinicalDataService)

* performer 0..* MS
* performer only Reference(Practitioner)
* performer.reference 1..1
