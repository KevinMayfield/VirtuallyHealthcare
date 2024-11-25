ValueSet: VHObservationCode
Id: VHObservationCode
Title: "VH Observation Code"
Description: """
VH Observation Code - based on [HL7 FHIR Observation Guidance](https://hl7.org/fhir/R4/observation.html#guidance).
"""
* ^experimental  = false
* include codes from system http://snomed.info/sct where concept is-a #363787002 "Observable entity"
* include codes from system http://snomed.info/sct where concept is-a #272379006 "Event"
* include codes from system http://snomed.info/sct where concept is-a #243796009 "Situation with explicit context"
* include codes from system http://snomed.info/sct where concept descendent-of #386053000 "Evaluation procedure"
// is a child of 243796009 * include codes from system http://snomed.info/sct where concept descendent-of #413350009 "Finding with explicit context"
