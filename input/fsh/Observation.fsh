Profile: Observation
Parent: http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-observation
Id: Observation
Description: "[HL7 International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa/) to include elements of [UKCore-Observation](https://simplifier.net/hl7fhirukcorer4/ukcore-observation)"

* identifier 1..* MS
* identifier only CommonResourceIdentifiers

* contained 0..0

// Override UK Core
* code from VHObservationType (preferred)

* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[=].path = "system"
* code.coding ^slicing.ordered = false
* code.coding ^slicing.rules = #closed
* code.coding contains
    SNOMED 0..* MS and
    LOINC 0..*

* code.coding[SNOMED] from VHObservationType (extensible)
* code.coding[SNOMED].system = $sct
* code.coding[LOINC] from http://hl7.org/fhir/ValueSet/observation-codes (extensible)
* code.coding[LOINC].system = $loinc

//* code insert Obligation(#SHALL:populate-if-known, https://fhir.virtually.healthcare/ActorDefinition/ClinicalDataRepository)
//* code insert Obligation(#SHALL:populate-if-known, https://fhir.virtually.healthcare/ActorDefinition/ClinicalDataService)
* component.code from VHObservationType (extensible)

* subject.reference 1..1 MS
* subject.identifier only NHSNumbers

* effective[x] 1..1 MS
* effective[x] only dateTime
//* effective[x] insert Obligation(#SHALL:populate-if-known, https://fhir.virtually.healthcare/ActorDefinition/ClinicalDataRepository)
//* effective[x] insert Obligation(#SHALL:populate-if-known, https://fhir.virtually.healthcare/ActorDefinition/ClinicalDataService)

* performer 1..* MS
* performer only Reference(Practitioner or Patient)
* performer.reference 0..1
* performer.identifier only ProfessionalLicense or NHSNumbers or StaffEnterpriseNumber

//* value[x] insert Obligation(#SHALL:populate-if-known, https://fhir.virtually.healthcare/ActorDefinition/ClinicalDataRepository)
//* value[x] insert Obligation(#SHALL:populate-if-known, https://fhir.virtually.healthcare/ActorDefinition/ClinicalDataService)
