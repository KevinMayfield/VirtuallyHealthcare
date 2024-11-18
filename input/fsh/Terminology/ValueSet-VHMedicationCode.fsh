ValueSet: VHMedicationCode
Id: VHMedicationCode
Title: "VH Medication Code"
Description: """
VH Medication Code - copy of `https://fhir.hl7.org.uk/ValueSet/UKCore-ObservationType` with UK SNOMED CT
"""
* ^experimental  = false
* include codes from system http://snomed.info/sct|http://snomed.info/sct/900000000000207008 where concept descendent-of #373873005 "Pharmaceutical / biologic product"
* include http://snomed.info/sct#419841000001106 "Clinical trial medication"
