Profile: Patient
Parent: https://fhir.hl7.org.uk/StructureDefinition/UKCore-Patient
Id: Patient
Description: "Extension of UKCore-Patient"

* identifier contains
  emisDBID 0..1 and
  EMISAccessIdentityGuid 0..* and
  tppPatientId 0..1 and
  TPPPseudoId 0..1

* identifier[nhsNumber] only NHSNumber
* identifier[nhsNumber] ^short = "England and Wales National Health Identifier"
* identifier[emisDBID] only EMISDBID
* identifier[emisDBID] ^short = "EMIS IM1 Medical Record Number"
* identifier[EMISAccessIdentityGuid] only EMISDBID
* identifier[EMISAccessIdentityGuid] ^short = "EMIS PFS Medical Record Number - this may change if the patients access is revoked"
* identifier[tppPatientId] only TPPPatientID
* identifier[tppPatientId] ^short = "TPP IM1 Medical Record Number"
* identifier[TPPPseudoId] only TPPPseudoId
* identifier[TPPPseudoId] ^short = "TPP IM1 Medical Record Number"

* name 1..*
