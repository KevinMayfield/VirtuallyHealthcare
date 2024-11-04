Profile: Patient
Parent: https://fhir.hl7.org.uk/StructureDefinition/UKCore-Patient
Id: Patient
Description: "Extension of UKCore-Patient and includes elements from [HL7 International Access](https://build.fhir.org/ig/HL7/fhir-ipa/)"

* identifier 1..* MS

* identifier contains
  MedicalRecordNumber 0..*

* identifier[nhsNumber] only NHSNumbers
* identifier[nhsNumber] ^short = "UK National Health Identifiers"
* identifier[MedicalRecordNumber] only MedicalRecordNumber
* identifier[MedicalRecordNumber] ^short = "Medical Record Number"

* name 1..*
