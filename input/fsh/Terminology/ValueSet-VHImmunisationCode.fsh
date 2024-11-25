ValueSet: VHImmunisationCode
Id: VHImmunisationCode
Title: "VH Immunisation Code"
Description: """
VH Immunisation Code - based on `https://fhir.hl7.org.uk/ValueSet/UKCore-VaccineCode` using UK SNOMED CT Drug Extension (dm+d)
"""
* ^experimental  = false
* include codes from system http://snomed.info/sct where concept descendent-of #373873005 "Pharmaceutical / biologic product"
* include codes from system http://snomed.info/sct where concept descendent-of #127785005 "Active or passive immunisation"
* include codes from system http://snomed.info/sct where concept descendent-of #591000119102 "Vaccine declined by patient"
