# Introduction

The Virtually Healthcare Health Information Exchange (HIE) is based around UK and International Interoperability Standards.

The following standards describe how HL7 FHIR is used for common use cases. 

- [IHE Query for Existing Data mobile (QEDm)](https://build.fhir.org/ig/IHE/QEDm/branches/master/index.html)
- [IHE Mobile access to Health Documents (MHD)](https://profiles.ihe.net/ITI/MHD/index.html)
  - This is the replacement of legacy XDS XML+SOAP API's on [IHE XDS](https://profiles.ihe.net/ITI/TF/Volume1/ch-10.html) systems
- [IHE Mobile Care Services Discovery (mCSD)](https://profiles.ihe.net/ITI/mCSD/volume-1.html)
- [IHE Patient Demographics Query for mobile (PDQm)](https://profiles.ihe.net/ITI/PDQm/)
- [FHIR Structured Data Capture (SDC)](https://build.fhir.org/ig/HL7/sdc/)
  - A modern version of [IHE Mobile Retrieve Form for Data Capture](https://wiki.ihe.net/index.php/Mobile_Retrieve_Form_for_Data_Capture)

All of these technical frameworks use the same HL7 FHIR schema and FHIR RESTful API's. The FHIR version is R4.

- [FHIR RESTful](https://hl7.org/fhir/R4/http.html)
- [FHIR Development Libraries](https://confluence.hl7.org/display/FHIR/Open+Source+Implementations)

Our HIE and CDR is compliant with NHS Data Dictionary and Model and UK SNOMED CT requirements. Our data is also HL7 UK Core FHIR conformant.
At present our adaptors do not perform any code conversions, so if the underlying system is not NHS England conformant then the adaptor is not conformant to these data standards.

### Virtually Healthcare Core

<figure>{% include overview.svg %}</figure>
<br clear="all"/>

### Primary Care Adaptors

<figure>{% include primary.svg %}</figure>
<br clear="all"/>

### National Adaptors

<figure>{% include national.svg %}</figure>
<br clear="all"/>

### Regional Adaptors

<figure>{% include regional.svg %}</figure>
<br clear="all"/>
