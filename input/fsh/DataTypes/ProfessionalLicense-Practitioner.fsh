Profile:        ProfessionalLicense
Parent:         http://hl7.org/fhir/StructureDefinition/Identifier
Id:             ProfessionalLicense
Title:          "UK Professional License"
Description:     """
NHS Data Dictionary [CONSULTANT CODE](https://www.datadictionary.nhs.uk/data_elements/consultant_code.html) and [GENERAL MEDICAL PRACTITIONER PPD CODE](https://www.datadictionary.nhs.uk/attributes/general_medical_practitioner_ppd_code.html).
"""

* system 1..1
* system from ProfessionalLicense
* value 1..1
* type = $v2-0203#LN (exactly)
* type ^short = "For doctors type.code = MD?"
