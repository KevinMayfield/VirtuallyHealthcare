ValueSet: VHMedicationCode
Id: VHMedicationCode
Title: "VH Medication Code"
Description: """
VH Medication Code - based on `https://fhir.hl7.org.uk/ValueSet/UKCore-MedicationCode` using UK SNOMED CT Drug Extension (dm+d)
"""
* ^experimental  = false
* include codes from system http://snomed.info/sct where concept descendent-of #373873005 "Pharmaceutical / biologic product"
//* include codes from system http://snomed.info/sct|http://snomed.info/sct/83821000000107 where concept descendent-of #373873005 "Pharmaceutical / biologic product"
// needs UK source to work * include http://snomed.info/sct#419841000001106 "Clinical trial medication"
