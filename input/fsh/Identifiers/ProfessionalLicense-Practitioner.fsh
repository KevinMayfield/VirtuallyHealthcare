Profile:        ProfessionalLicense
Parent:         http://hl7.org/fhir/StructureDefinition/Identifier
Id:             ProfessionalLicense
Title:          "UK Professional License"
Description:     """
### Consultant Codes

NHS Data Dictionary [CONSULTANT CODE](https://www.datadictionary.nhs.uk/data_elements/consultant_code.html)

#### General Medical Councial Reference Number

NHS Data Dictionary: [GENERAL MEDICAL COUNCIL REFERENCE NUMBER](https://www.datadictionary.nhs.uk/attributes/general_medical_council_reference_number.html)

Format: ^[C]{1}[0-9]{7}$ (CNNNNNNN)

Naming System (HL7 FHIR, v2 and OID): [gmc-number](https://simplifier.net/ukfhircommunityassets/namingsystem-gmc-number)

### General Medical Practitioner

NHS Data Dictionary: [GENERAL MEDICAL PRACTITIONER PPD CODE](https://www.datadictionary.nhs.uk/attributes/general_medical_practitioner_ppd_code.html). Formerly called GP General National Code

Format: ^[G]{1}[01234589]{1}[0-9]{6}$ (G[1234589]NNNNNN)

Naming System (HL7 FHIR, v2 and OID): [gmp-number](https://simplifier.net/ukfhircommunityassets/namingsystem-gmp-number)
"""

* system 1..1
* system from ProfessionalLicense
* value 1..1
