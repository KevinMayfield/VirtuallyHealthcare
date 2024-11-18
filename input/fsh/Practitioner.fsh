Profile:        Practitioner
Parent:         https://fhir.hl7.org.uk/StructureDefinition/UKCore-Practitioner
Id:             Practitioner
Title:          "Practitioner"
Description:    "Extension of UKCore Practitioner and includes elements from [IHE Mobile Care Services Discovery (mCSD)](https://profiles.ihe.net/ITI/mCSD/volume-1.html)"


* extension contains Role named role 0..1

* identifier 1..* MS
* identifier.type from IdentifierTypeVH
* identifier.system 1..1
* identifier.value 1..1

* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains
  ProfessionalLicense 0..* and StaffEnterpriseNumber 0..1

* identifier[ProfessionalLicense] only ProfessionalLicense
* identifier[StaffEnterpriseNumber] ^short = "Avoid using Staff Enterprise Numbers in FHIR Reference, LicenseNumbers are more useful to resource consumers."
* identifier[StaffEnterpriseNumber] only StaffEnterpriseNumber

