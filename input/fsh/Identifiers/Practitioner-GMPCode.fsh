Profile:        GeneralMedicalPractitionerCode
Parent:         http://hl7.org/fhir/StructureDefinition/Identifier
Id:             gmp-code
Title:          "General Medical Practitioner PPD Code"
Description:     """
[GENERAL MEDICAL PRACTITIONER PPD CODE](https://www.datadictionary.nhs.uk/attributes/general_medical_practitioner_ppd_code.html). Formerly called GP General National Code (GNC).

Format G[1234589]NNNNNN

- HL7 v3/OID: 2.16.840.1.113883.2.1.3.2.4.16.62
- HL7 v2: GMP
- HL7 FHIR: https://fhir.hl7.org.uk/Id/gmp-number
"""

* system 1..1
* system = "https://fhir.hl7.org.uk/Id/gmp-number"
* value 1..1
