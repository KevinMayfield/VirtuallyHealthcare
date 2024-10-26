Profile: Patient
Parent: https://fhir.hl7.org.uk/StructureDefinition/UKCore-Patient
Id: Patient
Description: "TODO "

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #openAtEnd

* identifier contains
    NHS 0..1

* identifier[NHS].system = "https://fhir.nhs.uk/Id/nhs-number" (exactly)

* name 1..*
