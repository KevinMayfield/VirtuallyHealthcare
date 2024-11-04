Profile:        MedicalRecordNumber
Parent:         http://hl7.org/fhir/StructureDefinition/Identifier
Id:             medical-record-number
Title:          "Medical Record Number"
Description:     """
Only use in FHIR Reference if the NHS Number is not known or unverified.

"""

* type = $v2-0203#MR (exactly)
* system from MedicalRecordSystem
* system 1..1
* system ^short = "Should indicate the assigning provider of the MRN. This is provider defined."
* value 1..1
* assigner ^short = "Populate if the identifier.value is reused by multiple providers (as is the case with EMIS identifiers)"
* assigner.identifier only OrganisationCode
