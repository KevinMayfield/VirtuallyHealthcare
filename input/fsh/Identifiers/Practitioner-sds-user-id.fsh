Profile:        SDSUserId
Parent:         http://hl7.org/fhir/StructureDefinition/Identifier
Id:             sds-user-id
Title:          "SDS User Id"
Description:     """
In NHS Englands Spine Directory Service this is the uid in the nhsPerson object.
This is also [SmartCard UUID](https://digital.nhs.uk/services/care-identity-service/smartcard-and-authentication-users)

MISSING formal definition of this type

HL7 v3/OID: 1.2.826.0.1285.0.2.0.65
"""


* system 1..1
* system = "https://fhir.nhs.uk/Id/sds-user-id"
* value 1..1
