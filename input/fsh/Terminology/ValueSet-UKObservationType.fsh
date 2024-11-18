ValueSet: UKObservationType
Id: UKObservationType
Title: "UK Observation Type"
Description: """
UK Observation Type - copy of `https://fhir.hl7.org.uk/ValueSet/UKCore-ObservationType` with UK SNOMED CT Edition added
"""
* ^experimental  = false
* include codes from system http://snomed.info/sct|http://snomed.info/sct/999000011000000103 where concept descendent-of #363787002 "Observable entity"
