Profile: Composition
Parent: https://fhir.hl7.org.uk/StructureDefinition/UKCore-Composition
Id: Composition
Description: "Merge of UKCore-Composition, PRSB Section Headers, NHS England [Transfer of Care - Outpatient Letter](https://developer.nhs.uk/apis/itk3tocoutpatientletter-2-9-0/explore_headings.html) and [HL7 International Patient Summary](https://build.fhir.org/ig/HL7/fhir-ips/index.html)"

* subject 1..1
* subject.reference 1..1
* subject only Reference(Patient)
* subject.identifier only NHSNumbers
* relatesTo.target[x] only Identifier or Reference(Composition)
* custodian.identifier only OrganisationCode

* section 1.. MS
* section.text 1.. MS
* section.section ..0
* section.title 1..1
* section.code 1..1
* section.code.coding 1..*
* section.code.coding.system 1..1
* section.code.coding.code 1..1
