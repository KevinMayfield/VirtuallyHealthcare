ValueSet: VHObservationType
Id: VHObservationType
Title: "VH Observation Type"
Description: """
VH Observation Type - copy of `https://fhir.hl7.org.uk/ValueSet/UKCore-ObservationType` with UK SNOMED CT Edition added
"""
* ^experimental  = false
* include codes from system http://snomed.info/sct|http://snomed.info/sct/999000031000000106 where concept descendent-of #363787002 "Observable entity"
* include codes from system http://loinc.org
