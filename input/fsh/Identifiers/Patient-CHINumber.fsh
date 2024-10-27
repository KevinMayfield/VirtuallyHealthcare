Profile:        CHINumber
Parent:         http://hl7.org/fhir/StructureDefinition/Identifier
Id:             chi-number
Title:          "CHI Number"
Description:     """
Only traced NHS Number **SHOULD** be used, un-traced NHS Numbers **MUST** be clearly indicated.

NHS Data Dictionary [COMMUNITY HEALTH INDEX NUMBER](https://www.datadictionary.nhs.uk/attributes/community_health_index_number.html)


Format: NNNNNNNNNN (010 100 0000 to 311 299 9999)

- OID/HL7 v3: 2.16.840.1.113883.2.1.3.2.4.16.53

"""


* system 1..1
* system = "urn:oid:2.16.840.1.113883.2.1.3.2.4.16.53"
* value 1..1
* type = http://terminology.hl7.org/CodeSystem/v2-0203#NH

