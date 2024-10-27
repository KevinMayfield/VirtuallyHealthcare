Profile: Condition
Parent: https://fhir.hl7.org.uk/StructureDefinition/UKCore-Condition
Id: Condition
Description: "Extentsion to UKCore Condition"

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
