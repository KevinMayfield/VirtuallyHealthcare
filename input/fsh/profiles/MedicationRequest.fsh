Profile: MedicationRequest
Parent: https://fhir.hl7.org.uk/StructureDefinition/UKCore-MedicationRequest
Id: MedicationRequest
Description: "Extension of UKCore-MedicationRequest and includes elements from [HL7 International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa/)"

* identifier 1..* MS

* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #closed
* identifier contains
    EMISMedicationDBID 0..1 and EMISMedicationGUID 0..1

* identifier[EMISMedicationDBID] only EMISMedicationDBID
* identifier[EMISMedicationDBID] ^short = "EMIS Medication DBID Identifier"

* identifier[EMISMedicationGUID] only EMISMedicationGUID
* identifier[EMISMedicationGUID] ^short = "EMIS Medication GUID Identifier"

* subject.reference 1..1 MS
* subject.identifier only NHSNumber or CHINumber

* medication[x] only CodeableConcept
* medication[x] MS
* medication[x] insert Obligation(#SHALL:populate-if-known, https://fhir.virtually.healthcare/ActorDefinition/ClinicalDataRepository)
* medication[x] insert Obligation(#SHALL:populate-if-known, https://fhir.virtually.healthcare/ActorDefinition/ClinicalDataService)

* performer only Reference(Practitioner)
* performer.reference 1..1
* performer.identifier only GeneralMedicalCouncilReferenceNumber or GeneralMedicalPractitionerCode

