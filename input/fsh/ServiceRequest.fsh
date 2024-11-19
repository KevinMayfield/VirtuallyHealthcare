Profile: ServiceRequest
Parent: https://fhir.hl7.org.uk/StructureDefinition/UKCore-ServiceRequest
Id: ServiceRequest
Description: """
Extension of [UKCore-ServiceRequest](https://simplifier.net/hl7fhirukcorer4/ukcore-servicerequest)
"""

* identifier 1..* MS
* identifier only CommonResourceIdentifiers

* code 0..1
* subject.reference 0..1 MS
* subject.identifier only NHSNumbers
