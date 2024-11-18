Profile: MedicationRequest
Parent: https://fhir.hl7.org.uk/StructureDefinition/UKCore-MedicationRequest
Id: MedicationRequest
Description: "Extension of UKCore-MedicationRequest and includes elements from [HL7 International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa/)"

* identifier 1..* MS

* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #closed
* identifier contains
    CommonResourceIdentifiers 0..*

* identifier[CommonResourceIdentifiers] only CommonResourceIdentifiers
* identifier[CommonResourceIdentifiers] ^short = "Common Resource Identifiers"

* subject.reference 1..1 MS
* subject.identifier only NHSNumbers

* medicationCodeableConcept from VHMedicationCode (extensible)
* medication[x] only CodeableConcept
* medication[x] MS
* medication[x] insert Obligation(#SHALL:populate-if-known, https://fhir.virtually.healthcare/ActorDefinition/ClinicalDataRepository)
* medication[x] insert Obligation(#SHALL:populate-if-known, https://fhir.virtually.healthcare/ActorDefinition/ClinicalDataService)

* performer only Reference(Practitioner)
* performer.reference 1..1
* performer.identifier only ProfessionalLicense or StaffEnterpriseNumber

