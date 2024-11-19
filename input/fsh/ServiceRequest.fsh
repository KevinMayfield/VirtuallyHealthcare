Profile: ServiceRequest
Parent: https://fhir.hl7.org.uk/StructureDefinition/UKCore-ServiceRequest
Id: ServiceRequest
Description: """
Extension of [UKCore-ServiceRequest](https://simplifier.net/hl7fhirukcorer4/ukcore-servicerequest)
"""

* identifier 1..* MS

* identifier ^slicing.discriminator.type = #profile
* identifier ^slicing.discriminator.path = "resolve()"
* identifier ^slicing.rules = #closed
* identifier contains
    CommonResourceIdentifiers 0..*

* identifier[CommonResourceIdentifiers] only CommonResourceIdentifiers
* identifier[CommonResourceIdentifiers] ^short = "Common Resource Identifiers"

* code 0..1
* subject.reference 0..1 MS
* subject.identifier only NHSNumbers
