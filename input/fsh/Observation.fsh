Profile: Observation
Parent: https://fhir.hl7.org.uk/StructureDefinition/UKCore-Observation
Id: Observation
Description: "Extension of [UKCore-Observation](https://simplifier.net/hl7fhirukcorer4/ukcore-observation) and includes elements from [HL7 International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa/)"

* identifier 1..* MS

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #closed
* identifier contains
    CommonResourceIdentifiers 0..*

* identifier[CommonResourceIdentifiers] only CommonResourceIdentifiers
* identifier[CommonResourceIdentifiers] ^short = "Common Resource Identifiers"

* code from VHObservationType (extensible)
//* code insert Obligation(#SHALL:populate-if-known, https://fhir.virtually.healthcare/ActorDefinition/ClinicalDataRepository)
//* code insert Obligation(#SHALL:populate-if-known, https://fhir.virtually.healthcare/ActorDefinition/ClinicalDataService)
* component.code from VHObservationType (extensible)

* subject.reference 1..1 MS
* subject.identifier only NHSNumbers

* effective[x] 1..1 MS
* effective[x] only dateTime
//* effective[x] insert Obligation(#SHALL:populate-if-known, https://fhir.virtually.healthcare/ActorDefinition/ClinicalDataRepository)
//* effective[x] insert Obligation(#SHALL:populate-if-known, https://fhir.virtually.healthcare/ActorDefinition/ClinicalDataService)

* performer 1..* MS
* performer only Reference(Practitioner or Patient)
* performer.reference 0..1
* performer.identifier only ProfessionalLicense or NHSNumbers or StaffEnterpriseNumber

//* value[x] insert Obligation(#SHALL:populate-if-known, https://fhir.virtually.healthcare/ActorDefinition/ClinicalDataRepository)
//* value[x] insert Obligation(#SHALL:populate-if-known, https://fhir.virtually.healthcare/ActorDefinition/ClinicalDataService)
