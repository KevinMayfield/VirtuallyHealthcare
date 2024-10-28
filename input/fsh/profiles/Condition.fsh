Profile: Condition
Parent: https://fhir.hl7.org.uk/StructureDefinition/UKCore-Condition
Id: Condition
Description: "Extension to UKCore Condition and includes elements from [HL7 International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa/)"

* identifier 1..* MS

* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #closed
* identifier contains
    EMISEventDBID 0..1 and EMISEventGUID 0..1

* identifier[EMISEventDBID] only EMISEventDBID
* identifier[EMISEventDBID] ^short = "EMIS Event DBID Identifier"

* identifier[EMISEventGUID] only EMISEventGUID
* identifier[EMISEventGUID] ^short = "EMIS Event GUID Identifier"

* subject 1..1
* subject only Reference(Patient)
* subject.identifier only NHSNumber or CHINumber
