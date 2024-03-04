## Virtually Healthcare Health Information Exchange (HIE)

Is a series of adaptors to other systems such as GP Systems and NHS England Services.
The adaptors provide a layer of consistency and simplification. This means an `application developers` doesn't have to deal with health and technical complexities.

### Use Case Focused Solutions 

We aim to support the following use cases:

- [Find Patient](find-patient.html) Find a patient record on a connected system.
- [Update Patient Demographics](update-patient.html) Update patient demographic records on a connected system.
- [Find Patient clinical notes and documents](find-documents.html) on connected systems and view them.
  - [Clinical Notes and Compositions](clinical-notes-and-compositions.html) Handling of health specific notes/documents formats.
- [Query (structured) clinical record](clinical-record.html) from connected systems. This is our preferred option for handling clinical records (not clinical notes or composition formats).

To do this we use a mix of Enterprise, Technical and Data Standards.

### Enterprise/Business Standards

The following standards describe how HL7 FHIR is used for common use cases. 

- [IHE Query for Existing Data mobile (QEDm)](https://build.fhir.org/ig/IHE/QEDm/branches/master/index.html)
  - or [International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa/index.html)
- [IHE Mobile access to Health Documents (MHD)](https://profiles.ihe.net/ITI/MHD/index.html)
  - This is the replacement of legacy XDS XML+SOAP API's on [IHE XDS](https://profiles.ihe.net/ITI/TF/Volume1/ch-10.html) systems
- [IHE Mobile Care Services Discovery (mCSD)](https://profiles.ihe.net/ITI/mCSD/volume-1.html)
- [IHE Patient Demographics Query for mobile (PDQm)](https://profiles.ihe.net/ITI/PDQm/)
- [FHIR Structured Data Capture (SDC)](https://build.fhir.org/ig/HL7/sdc/)
  - A modern version of [IHE Mobile Retrieve Form for Data Capture](https://wiki.ihe.net/index.php/Mobile_Retrieve_Form_for_Data_Capture)

### Technincal Standards

All the Enterprise/Business standards use the same HL7 FHIR schema and are built on [FHIR RESTful API](https://hl7.org/fhir/R4/http.html)'s (FHIR version is R4).
 
Most of our adaptors interface with other standards. Other standards we support (or can support) include:  

- GP Systems IM1
- GP Systems PFS
- IHE XDS
- HL7 v2 ADT and ORU
- openEHR 
- NHS England (PDS, MESH and NRLF)

### Data Standards 

Our HIE and CDR is compliant with NHS Data Dictionary and Model and UK SNOMED CT requirements. 
Our data is also [HL7 UK Core FHIR]() conformant.
At present most of our adaptors only perform minimal code conversions to provide a pragmatic level of commonality between the different systems.

### Dependencies

{% include dependency-table.xhtml %}

