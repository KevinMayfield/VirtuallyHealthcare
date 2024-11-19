Profile:        CommonResourceIdentifiers
Parent:         http://hl7.org/fhir/StructureDefinition/Identifier
Id:             CommonResourceIdentifiers
Title:          "Common Resource Identifiers"
Description:     """
Common Resource Identifiers

This is aimed at being HL7 v2 compatible, in particular HL7 v2 OBX and HL7 FHIR Observation, see [Segment OBX to Observation Map](https://build.fhir.org/ig/HL7/v2-to-fhir/ConceptMap-segment-obx-to-observation.html) for detailed mapping.

"""

* system 1..1
* system from CommonResourceIdentifiers (extensible)
* value 1..1

* assigner ^short = "Populate if the identifier.value is reused by multiple providers (as is the case with UUID and EMIS identifiers)"
* assigner.identifier only OrganisationCode
