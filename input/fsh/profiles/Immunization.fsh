Profile: Immunization
Parent: https://fhir.hl7.org.uk/StructureDefinition/UKCore-Immunization
Id: Immunization
Description: "Extension to UKCore Immunization  and includes elements from [HL7 International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa/)"

* identifier 1..* MS

* patient 1..1
* patient only Reference(Patient)
* patient.identifier only NHSNumber
