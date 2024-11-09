Profile: Immunization
Parent: https://fhir.hl7.org.uk/StructureDefinition/UKCore-Immunization
Id: Immunization
Description: "Extension to UKCore Immunization  and includes elements from [HL7 International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa/)"

* identifier 1..* MS

* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #closed
* identifier contains
    CommonResourceIdentifiers 0..*

* identifier[CommonResourceIdentifiers] only CommonResourceIdentifiers
* identifier[CommonResourceIdentifiers] ^short = "Common Resource Identifiers"

* patient 1..1
* patient only Reference(Patient)
* patient.identifier only NHSNumbers
