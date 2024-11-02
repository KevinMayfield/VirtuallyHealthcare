Profile:        NHSNumber
Parent:         http://hl7.org/fhir/StructureDefinition/Identifier
Id:             nhs-number
Title:          "NHS, HCSN and CHI Numbers"
Description:     """
NHS Data Dictionary: [NHS NUMBER](https://www.datadictionary.nhs.uk/data_elements/nhs_number.html), [COMMUNITY HEALTH INDEX NUMBER](https://www.datadictionary.nhs.uk/attributes/community_health_index_number.html) and [HEALTH AND CARE NUMBER](https://www.datadictionary.nhs.uk/attributes/health_and_care_number.html)
"""


* system 1..1
* system from UKNationalIdentifiers
* value 1..1
* type = http://terminology.hl7.org/CodeSystem/v2-0203#NH
* assigner ^short = "Assigning organisation, populate if known (i.e. X24/X26 for NHS England)"
* assigner.identifier only OrganisationCode
