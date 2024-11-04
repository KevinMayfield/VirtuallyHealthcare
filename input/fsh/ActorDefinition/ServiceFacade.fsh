Instance:  ServiceFacade
InstanceOf: ActorDefinition
Title:   "Service Facade"
Usage:  #definition

* name = "ClinicalDataService"
* type = http://hl7.org/fhir/examplescenario-actor-type#system
* status = http://hl7.org/fhir/publication-status#draft
* description = """
This is a [facade](https://en.wikipedia.org/wiki/Facade_pattern) service.

This acts as an [Anti-Corruption-Layer](https://docs.aws.amazon.com/prescriptive-guidance/latest/cloud-design-patterns/acl.html) which transforms data models in external services to an enterprise [canonical data model](https://www.enterpriseintegrationpatterns.com/patterns/messaging/CanonicalDataModel.html)/[domain model](https://martinfowler.com/eaaCatalog/domainModel.html).

"""
* documentation = """
This enterprise domain model is based on:

- [UK SNOMED CT](https://digital.nhs.uk/services/terminology-and-classifications/snomed-ct) for our clinical terminology.
- [NHS Data Dictionary](https://www.datadictionary.nhs.uk/) for identifiers and values, such as NHS Number, GMC, GMP, ODS, etc.
- [HL7 UK Core](https://simplifier.net/HL7FHIRUKCoreR4/)

This enterprise domain model is represented as HL7 FHIR R4 and (where possible) will be compatible with HL7 v2 ADT and ORU, IHE XDS and DICOM.
In other words we don't view HL7, IHE and DICOM as being different, they are just different representations (i.e. pipe+hat, XML or JSON) of the same enterprise model.
"""
