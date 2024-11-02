Profile: Observation
Parent: https://fhir.hl7.org.uk/StructureDefinition/UKCore-Observation
Id: Observation
Description: "Extension of [UKCore-Observation](https://simplifier.net/hl7fhirukcorer4/ukcore-observation) and includes elements from [HL7 International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa/)"

* identifier 1..* MS

* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #closed
* identifier contains
    EMISEventDBID 0..1 and EMISEventGUID 0..1 and UUID 0..1

* identifier[EMISEventDBID] only EMISEventDBID
* identifier[EMISEventDBID] ^short = "EMIS Event DBID Identifier"

* identifier[EMISEventGUID] only EMISEventGUID
* identifier[EMISEventGUID] ^short = "EMIS Event GUID Identifier"

* identifier[UUID] only UUID
* identifier[UUID] ^short = "Universally Unique Identifier"

* code insert Obligation(#SHALL:populate-if-known, https://fhir.virtually.healthcare/ActorDefinition/ClinicalDataRepository)
* code insert Obligation(#SHALL:populate-if-known, https://fhir.virtually.healthcare/ActorDefinition/ClinicalDataService)

* subject.reference 1..1 MS
* subject.identifier only NHSNumber

* effective[x] 1..1 MS
* effective[x] only dateTime
* effective[x] insert Obligation(#SHALL:populate-if-known, https://fhir.virtually.healthcare/ActorDefinition/ClinicalDataRepository)
* effective[x] insert Obligation(#SHALL:populate-if-known, https://fhir.virtually.healthcare/ActorDefinition/ClinicalDataService)

* performer 1..* MS
* performer only Reference(Practitioner or Patient)
* performer.reference 1..1
* performer.identifier only ProfessionalLicense or NHSNumber or EMISPractitionerRoleGUID

* value[x] insert Obligation(#SHALL:populate-if-known, https://fhir.virtually.healthcare/ActorDefinition/ClinicalDataRepository)
* value[x] insert Obligation(#SHALL:populate-if-known, https://fhir.virtually.healthcare/ActorDefinition/ClinicalDataService)
