Profile: Patient
Parent: http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-patient
Id: Patient
Description: "Union of UKCore, IPA and IHE PDQm"

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #openAtEnd

* identifier contains
    NHS 0..1

* identifier[NHS].system = "https://fhir.nhs.uk/Id/nhs-number" (exactly)

* name 1..*
