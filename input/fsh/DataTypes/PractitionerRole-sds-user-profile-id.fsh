Profile:        SDSUserProfileId
Parent:         http://hl7.org/fhir/StructureDefinition/Identifier
Id:             sds-user-profile-id
Title:          "SDS User Profile Id"
Description:     """
In NHS Englands Spine Directory Service this is the uniqueIdentifier in the nhsOrgPerson and nhsOrgPersonRole object (confirm this is true).
This
MISSING formal definition of this type

HL7 v3/OID: 1.2.826.0.1285.0.2.0.67
"""


* system 1..1
* system = "https://fhir.nhs.uk/Id/sds-role-profile-id" (exactly)
* value 1..1
