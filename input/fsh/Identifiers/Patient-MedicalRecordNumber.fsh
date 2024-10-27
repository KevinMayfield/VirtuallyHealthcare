Profile:        MedicalRecordNumber
Parent:         http://hl7.org/fhir/StructureDefinition/Identifier
Id:             medical-record-number
Title:          "Medical Record Number"
Description:     """
Only use in References if the NHS Number is not known or unverified.

"""

* type = http://terminology.hl7.org/CodeSystem/v2-0203#MR
* system 1..1
* system ^short = "Should indicate the assigning provider of the MRN. This is provider defined."
* value 1..1
