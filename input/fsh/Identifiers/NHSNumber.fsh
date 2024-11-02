Profile:        NHSNumber
Parent:         http://hl7.org/fhir/StructureDefinition/Identifier
Id:             nhs-number
Title:          "NHS, HCSN and CHI Numbers"
Description:     """

Note: FHIR Identifier is very similar to HL7 v2 CX and so should be kept compatible.

### England and Wales

Only traced NHS Number **SHOULD** be used, un-traced NHS Numbers **MUST** be clearly indicated.

NHS Data Dictionary: [NHS NUMBER](https://www.datadictionary.nhs.uk/data_elements/nhs_number.html)

Format: ^[0-9]{10}$ (400 000 000 to 499 999 999, and 600 000 000 to 799 999 with the tenth digit being a modulus 11 check digit)

Naming System (HL7 FHIR, v2 and OID): [nhs-number](https://simplifier.net/ukfhircommunityassets/namingsystem-nhs-number)

See also [NHS England HL7 v2 ADT](HSCIC-ITK-HL7-V2-Message-Specifications.pdf) 5.3.1 Patient Identifiers (CX).

### Scotland

NHS Data Dictionary: [COMMUNITY HEALTH INDEX NUMBER](https://www.datadictionary.nhs.uk/attributes/community_health_index_number.html)

Format: ^[0-3]{10}$ (010 100 0000 to 311 299 9999 with the tenth digit being a modulus 11 check digit)

**Northern Ireland**

NHS Data Dictionary: [HEALTH AND CARE NUMBER](https://www.datadictionary.nhs.uk/attributes/health_and_care_number.html)

Format: ^[3]{10}$ (320 000 001 to 399 999 999 with the tenth digit being a modulus 11 check digit)
"""


* system 1..1
* system from UKNationalIdentifiers
* value 1..1
* type = http://terminology.hl7.org/CodeSystem/v2-0203#NH

