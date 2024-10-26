Profile:        NHSNumber
Parent:         http://hl7.org/fhir/StructureDefinition/Identifier
Id:             nhs-number
Title:          "NHS Number"
Description:     """
Only traced NHS Number **SHOULD** be used, un-traced NHS Numbers **MUST** be clearly indicated.

NHS Data Dictionary [NHS NUMBER](https://www.datadictionary.nhs.uk/data_elements/nhs_number.html)


Format: NNNNNNNNNN (400 000 000 to 499 999 999, and 600 000 000 to 799 999)

- OID/HL7 v3: 2.16.840.1.113883.2.1.4.1
- HL7 v2: NHS
- HL7 FHIR: https://fhir.nhs.uk/Id/nhs-number
"""


* system 1..1
* system = "https://fhir.nhs.uk/Id/nhs-number"
* value 1..1
