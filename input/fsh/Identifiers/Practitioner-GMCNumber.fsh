Profile:        GeneralMedicalCouncilReferenceNumber
Parent:         http://hl7.org/fhir/StructureDefinition/Identifier
Id:             gmc-number
Title:          "General Medical Council Reference Number"
Description:     """
[GENERAL MEDICAL COUNCIL REFERENCE NUMBER](https://www.datadictionary.nhs.uk/attributes/general_medical_council_reference_number.html) which is a [CONSULTANT CODE](https://www.datadictionary.nhs.uk/data_elements/consultant_code.html)

Format CNNNNNNN

- HL7 v3/OID: 2.16.840.1.113883.2.1.3.2.4.16.63
- HL7 v2: GMC
- HL7 FHIR https://fhir.hl7.org.uk/Id/gmc-number
"""

* system 1..1
* system = "https://fhir.hl7.org.uk/Id/gmc-number"
* value 1..1
