Profile:        Organization
Parent:         https://fhir.hl7.org.uk/StructureDefinition/UKCore-Organization
Id:             Organization
Title:          "Organization"
Description:    "Extension of UKCore Organization and includes elements from [IHE Mobile Care Services Discovery (mCSD)](https://profiles.ihe.net/ITI/mCSD/volume-1.html)"

* identifier 1..* MS
* identifier.system 1..1
* identifier.value 1..1

* identifier[odsOrganisationCode] only OrganisationCode
* identifier[odsSiteCode] ^short = "DO NOT USE. Sites are to be handled as Locations."
