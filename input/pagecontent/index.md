## Virtually Healthcare Health Information Exchange (HIE)

This is not documentation for (EMIS or TPP S1) IM1 or PFS. 

It is documenting the [canonical data model](https://www.enterpriseintegrationpatterns.com/patterns/messaging/CanonicalDataModel.html) we use internally to simplify working with these API's.
Our model is based on [HL7 FHIR R4](https://hl7.org/fhir/R4/) and additionally NHS requirements such as:

- [UK SNOMED CT](https://digital.nhs.uk/services/terminology-and-classifications/snomed-ct) for our clinical terminology.
- [NHS Data Dictionary](https://www.datadictionary.nhs.uk/) for identifiers and values, such as NHS Number, GMC, GMP, ODS, etc. 
- [HL7 UK Core](https://simplifier.net/HL7FHIRUKCoreR4/)


### Dependencies

{% include dependency-table.xhtml %}

