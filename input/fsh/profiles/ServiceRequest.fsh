Profile: ServiceRequest
Parent: https://fhir.hl7.org.uk/StructureDefinition/UKCore-ServiceRequest
Id: ServiceRequest
Description: """
Extension of [UKCore-ServiceRequest](https://simplifier.net/hl7fhirukcorer4/ukcore-servicerequest)
"""

* code 1..1
* subject.reference 1..1 MS
* subject.identifier only NHSNumber
