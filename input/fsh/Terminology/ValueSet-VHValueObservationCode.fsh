ValueSet: VHObservationValueCode
Id: VHObservationValueCode
Title: "VH Observation Value Code"
Description: """
VH Observation Value Code - based on [HL7 FHIR Observation Guidance](https://hl7.org/fhir/R4/observation.html#guidance).
"""
* ^experimental  = false
//* include codes from system http://snomed.info/sct where concept is-a #272379006 "Event"
//* include codes from system http://snomed.info/sct where concept is-a #243796009 "Situation with explicit context"
//* include codes from system http://snomed.info/sct where concept descendent-of #386053000 "Evaluation procedure"
* include codes from system http://snomed.info/sct where concept is-a #362981000 "Qualifier value"
