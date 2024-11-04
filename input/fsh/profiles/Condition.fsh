Profile: Condition
Parent: https://fhir.hl7.org.uk/StructureDefinition/UKCore-Condition
Id: Condition
Description: "Extension to UKCore Condition and includes elements from [HL7 International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa/)"

* identifier 1..* MS

* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #closed
* identifier contains
    CommonResourceIdentifiers 0..*

* identifier[CommonResourceIdentifiers] only CommonResourceIdentifiers
* identifier[CommonResourceIdentifiers] ^short = "Common Resource Identifiers"

* subject 1..1
* subject only Reference(Patient)
* subject.identifier only NHSNumbers
