Profile: AllergyIntolerance
Parent: https://fhir.hl7.org.uk/StructureDefinition/UKCore-AllergyIntolerance
Id: AllergyIntolerance
Description: "Extentsion to UKCore AllergyIntolerance"

* identifier 1..* MS

* patient 1..1
* patient only Reference(Patient)
* patient.identifier only NHSNumber or CHINumber
