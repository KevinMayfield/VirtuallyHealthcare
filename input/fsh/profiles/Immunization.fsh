Profile: Immunization
Parent: https://fhir.hl7.org.uk/StructureDefinition/UKCore-Immunization
Id: Immunization
Description: "Extentsion to UKCore Immunization"

* identifier 1..* MS

* patient 1..1
* patient only Reference(Patient)
* patient.identifier only NHSNumber or CHINumber
