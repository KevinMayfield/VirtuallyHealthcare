Profile: FHIRDocument
Parent: https://fhir.hl7.org.uk/StructureDefinition/UKCore-Bundle
Id: FHIRDocument
Description: "Is based on  [HL7 International Patient Summary - Bundle (document)](https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-Bundle-uv-ips.html)"

* identifier 1..1 MS
* type = #document (exactly)
* timestamp 1..1

* timestamp 1.. MS
* entry MS
* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.discriminator[+].type = #profile
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.rules = #open
* entry ^short = "Entry resource in the patient summary bundle"
* entry ^definition = "An entry resource included in the patient summary document bundle resource."
* entry ^comment = "Must contain the Composition as the first entry (only a single Composition resource instance may be included) and a Patient resource."
* entry.fullUrl 1.. MS
* entry.search ..0
* entry.request ..0
* entry.response ..0
* entry contains
    composition 1..1 and
    patient 1..1 and other 0..*

* entry[composition].resource 1..
* entry[composition].resource only Composition
* entry[patient].resource 1..
* entry[patient].resource only Patient
* entry[other].resource 1..
* entry[other].resource only Observation or MedicationRequest or Immunization or Condition or Encounter or Practitioner or ServiceRequest or DocumentReference or Task or AllergyIntolerance
