Profile: MedicationRequest
Parent: https://fhir.hl7.org.uk/StructureDefinition/UKCore-MedicationRequest
Id: MedicationRequest
Description: "Extension of UKCore-MedicationRequest and includes elements from [HL7 International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa/)"

* extension contains ExtensionCourses named extensionCourses 0..1

* identifier 1..* MS
* identifier only CommonResourceIdentifiers

* subject.reference 1..1 MS
* subject.identifier only NHSNumbers

* medication[x] from VHMedicationCode (extensible)
* medication[x] only CodeableConcept
* medication[x] MS
* medication[x] insert Obligation(#SHALL:populate-if-known, https://fhir.virtually.healthcare/ActorDefinition/ClinicalDataRepository)
* medication[x] insert Obligation(#SHALL:populate-if-known, https://fhir.virtually.healthcare/ActorDefinition/ClinicalDataService)

* performer only Reference(Practitioner)
* performer.reference 1..1
* performer.identifier only ProfessionalLicense or StaffEnterpriseNumber

