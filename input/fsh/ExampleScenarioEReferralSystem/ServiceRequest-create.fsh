Instance: f3533ea0-9588-4f25-ace7-969d80823b20
InstanceOf: ServiceRequest-Referral
Title: "ServiceRequest - Create"
Description: """
Example conversion of [$ers.createReferral multishortlist](eRS/ers-GenerateReferral-multishortlist-FHIR-STU3.json) to FHIR R4 ServiceRequest in a Clinical Data Repository
"""
Usage: #example

* identifier[CommonResourceIdentifiers]
  * system = "https://tools.ietf.org/html/rfc4122"
  * value = "f3533ea0-9588-4f25-ace7-969d80823b20"
* status = #active
* intent = #order
* subject.identifier.system = "http://fhir.nhs.net/Id/nhs-number"
* subject.identifier.value = "9912003888"

