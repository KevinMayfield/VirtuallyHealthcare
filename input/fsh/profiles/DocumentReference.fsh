Profile: DocumentReference
Parent: http://hl7.org/fhir/StructureDefinition/DocumentReference
Id: DocumentReference
Description: "Extension to future UKCore DocumentReference and includes elements from [HL7 International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa/)"

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

* author only Reference(Organization or Practitioner)
* author.identifier only ProfessionalLicense or StaffEnterpriseNumber
