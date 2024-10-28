Profile: DocumentReference
Parent: http://hl7.org/fhir/StructureDefinition/DocumentReference
Id: DocumentReference
Description: "Extension to future UKCore DocumentReference and includes elements from [HL7 International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa/)"

* identifier 1..* MS

* subject 1..1
* subject only Reference(Patient)
* subject.identifier only NHSNumber or CHINumber

* author only Reference(Organization or Practitioner)
* author.identifier only GeneralMedicalPractitionerCode or GeneralMedicalCouncilReferenceNumber
