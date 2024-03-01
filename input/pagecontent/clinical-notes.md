
Health has a series of formats for clinical notes which are often focused around concepts of a `clinical document` or a `Composition`.

Most suppliers and NHS trusts have not taken this route but it is quite popular in health informatics and has appeared on national API's and also within the London region. It is also present in EMIS consultations.

In FHIR this is called [FHIR Documents](https://hl7.org/fhir/R4/documents.html), this provides an overview of `clinical documents`. The full list of standards we may encounter are:

- [HL7 Clinical Document Architecture (CDA)](https://www.hl7.org.uk/standards/hl7-standards/cda-clinical-document-architecture/)
- [FHIR Documents](https://hl7.org/fhir/R4/documents.html)
- [openEHR Composition](https://specifications.openehr.org/releases/RM/latest/ehr.html#_composition_package)

At present, we are handling these clinical documents as html (web pages). 
For EMIS IM1 this is encoded in a FHIR Composition resource (which is part of a FHIR Document) but we are only making use of the html.
