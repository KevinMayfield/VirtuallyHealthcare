ValueSet: VHConditionCode
Id: VHConditionCode
Title: "VH Condition Code"
Description: """
VH Condition Type - copy of `https://fhir.hl7.org.uk/ValueSet/UKCore-ConditionCode` altered to use `is-a`
"""
* ^experimental  = false
* include codes from system http://snomed.info/sct where concept is-a #404684003 "Clinical finding"
* include codes from system http://snomed.info/sct where concept descendent-of #413350009 "Finding with explicit context"
* include codes from system http://snomed.info/sct where concept is-a #272379006 "Event"

