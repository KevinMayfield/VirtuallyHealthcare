Profile:        Practitioner
Parent:         https://fhir.hl7.org.uk/StructureDefinition/UKCore-Practitioner
Id:             Practitioner
Title:          "Practitioner"
Description:    "Extension of UKCore Practitioner"

* identifier 1..* MS
* identifier.system 1..1
* identifier.value 1..1

* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains
  gmp-number 0..1 and
  gmc-number 0..1

* identifier[gmp-number] only GeneralMedicalPractitionerCode
* identifier[gmc-number] only GeneralMedicalCouncilReferenceNumber
