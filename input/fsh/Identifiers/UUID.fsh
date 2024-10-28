Profile:        UUID
Parent:         http://hl7.org/fhir/StructureDefinition/Identifier
Id:             universal-identifier
Title:          "Universal Unique IDentifier"
Description:     """
See [A Universally Unique IDentifier (UUID) URN Namespace](https://datatracker.ietf.org/doc/html/rfc4122)
"""

* system 1..1
* system = "https://tools.ietf.org/html/rfc4122"
* value 1..1
