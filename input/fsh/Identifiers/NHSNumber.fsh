Profile:        NHSNumber
Parent:         http://hl7.org/fhir/StructureDefinition/Identifier
Id:             nhs-number
Title:          "NHS Number"
Description:     """
Only traced NHS Number **SHOULD** be used, un-traced NHS Numbers **MUST** be clearly indicated.

NHS Data Dictionary: [NHS NUMBER](https://www.datadictionary.nhs.uk/data_elements/nhs_number.html)
Format: ^[0-9]{10}$ (400 000 000 to 499 999 999, and 600 000 000 to 799 999)
FHIR Naming System: [nhs-number](https://simplifier.net/ukfhircommunityassets/namingsystem-nhs-number)

See also [NHS England HL7 v2 ADT](HSCIC-ITK-HL7-V2-Message-Specifications.pdf) 5.3.1 Patient Identifiers (CX).
Note: FHIR Identifier is very similar to HL7 v2 CX and so should be kept compatible.
"""


* system 1..1
* system = "https://fhir.nhs.uk/Id/nhs-number"
* value 1..1
* type = http://terminology.hl7.org/CodeSystem/v2-0203#NH

