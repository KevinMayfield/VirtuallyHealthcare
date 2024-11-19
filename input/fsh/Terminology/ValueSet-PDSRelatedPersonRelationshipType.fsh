ValueSet: PDSRelatedPersonRelationshipType
Id: PDSRelatedPersonRelationshipType
Title: "PDS RelatedPerson Relationship Type"
Description: """
Extracted from [PDS FHIR API - Get a patient's related people](https://digital.nhs.uk/developer/api-catalogue/personal-demographics-service-fhir#get-/Patient/-id-/RelatedPerson)
"""

* ^experimental  = false

* https://fhir.hl7.org.uk/CodeSystem/UKCore-AdditionalPersonRelationshipRole#Agent "Agent of patient"
* https://fhir.hl7.org.uk/CodeSystem/UKCore-AdditionalPersonRelationshipRole#Guardian "Guardian of patient"
* https://fhir.hl7.org.uk/CodeSystem/UKCore-AdditionalPersonRelationshipRole#Personal "Personal relationship with the patient"

* http://terminology.hl7.org/CodeSystem/v2-0131#N "Next-of-Kin"

* $RoleCode#SPS
* $RoleCode#DOMPART
* $RoleCode#PRN
* $RoleCode#PRNFOST
* $RoleCode#STPPRN
* $RoleCode#CHILD
* $RoleCode#MTH
* $RoleCode#FTH
* $RoleCode#SIS
* $RoleCode#BRO
* $RoleCode#FAMMEMB
* $RoleCode#ONESELF
* $RoleCode#NOK

* http://terminology.hl7.org/CodeSystem/v2-0131#U

* https://fhir.hl7.org.uk/CodeSystem/UKCore-AdditionalPersonRelationshipRole#PolygamousPartner
* https://fhir.hl7.org.uk/CodeSystem/UKCore-AdditionalPersonRelationshipRole#Dependant
* https://fhir.hl7.org.uk/CodeSystem/UKCore-AdditionalPersonRelationshipRole#NonDependant
* https://fhir.hl7.org.uk/CodeSystem/UKCore-AdditionalPersonRelationshipRole#ProxyContact
* https://fhir.hl7.org.uk/CodeSystem/UKCore-AdditionalPersonRelationshipRole#ProxyCommunication
* https://fhir.hl7.org.uk/CodeSystem/UKCore-AdditionalPersonRelationshipRole#ProxyContactCommunication
* https://fhir.hl7.org.uk/CodeSystem/UKCore-AdditionalPersonRelationshipRole#Carer
* https://fhir.hl7.org.uk/CodeSystem/UKCore-AdditionalPersonRelationshipRole#NotSpecified
