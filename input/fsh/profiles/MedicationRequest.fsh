Profile: MedicationRequest
Parent: https://fhir.hl7.org.uk/StructureDefinition/UKCore-MedicationRequest
Id: Observation
Description: "Extension of UKCore-MedicationRequest"

* identifier 1..* MS

* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #closed
* identifier contains
    EMISEMedicationDBID 0..1 and EMISMedicationGUID 0..1

* identifier[EMISMedicationDBID] only EMISEventDBID
* identifier[EMISMedicationDBID] ^short = "EMIS Medication DBID Identifier"

* identifier[EMISMedicationGUID] only EMISMedicationGUID
* identifier[EMISMedicationGUID] ^short = "EMIS Medication GUID Identifier"

* subject.reference 1..1 MS
* subject.identifier only NHSNumber

