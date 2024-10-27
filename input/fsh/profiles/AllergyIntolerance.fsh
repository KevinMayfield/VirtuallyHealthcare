Profile: AllergyIntolerance
Parent: https://fhir.hl7.org.uk/StructureDefinition/UKCore-AllergyIntolerance
Id: AllergyIntolerance
Description: "Extentsion to UKCore AllergyIntolerance"

* identifier 1..* MS

* subject 1..1
* subject only Reference(Patient)
* subject.identifier only NHSNumber or CHINumber
