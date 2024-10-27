Profile: DocumentReference
Parent: http://hl7.org/fhir/StructureDefinition/DocumentReference
Id: DocumentReference
Description: "Extentsion to future UKCore DocumentReference"

* identifier 1..* MS

* subject 1..1
* subject only Reference(Patient)
* subject.identifier only NHSNumber or CHINumber

* author only Reference(Organization or Practitioner)
* author.identifier only GeneralMedicalPractitionerCode or GeneralMedicalCouncilReferenceNumber
