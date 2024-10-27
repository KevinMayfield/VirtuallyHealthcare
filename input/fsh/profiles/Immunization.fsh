Profile: Immunization
Parent: https://fhir.hl7.org.uk/StructureDefinition/UKCore-Immunization
Id: Immunization
Description: "Extentsion to UKCore Immunization"

* identifier 1..* MS

* subject 1..1
* subject only Reference(Patient)
* subject.identifier only NHSNumber or CHINumber
