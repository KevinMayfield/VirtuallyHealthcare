### Overview

<figure>
{%include component-clinical-data-repository.svg%}
<p id="fX.X.X.X-X" class="figureTitle">Clinical Data Repository Interfaces Overview</p>
</figure>
<br clear="all">

### Clinical Data Sharing API

The CDR Data Sharing API follows the following standards:

- [UK SNOMED CT](https://digital.nhs.uk/services/terminology-and-classifications/snomed-ct) and [LOINC](https://loinc.org/) for our clinical terminology.
- [NHS Data Dictionary](https://www.datadictionary.nhs.uk/) for identifiers and values, such as NHS Number, GMC, GMP, ODS, etc.
- [HL7 UK Core](https://simplifier.net/HL7FHIRUKCoreR4/)
- [HL7 International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa/) Server
- [IHE Query for Existing Data for Mobile (QEDm)](https://build.fhir.org/ig/IHE/QEDm/branches/master/index.html) Server
- [HL7 UK - UK Core Access](https://build.fhir.org/ig/HL7-UK/UK-Core-Access/index.html)

### Incoming Events

The following standards can be supported: 

- HL7 v2 Admission, Discharge and Transfers (ADT), [IHE Patient Identifier Cross-referencing (PIX)](https://profiles.ihe.net/ITI/TF/Volume1/ch-5.html) and/or [IHE Patient Administration Management (PAM)](https://profiles.ihe.net/ITI/TF/Volume1/ch-14.html) following **NHS England HL7 v2 (2.4) ADT Messaging Specification**
- HL7 v2 Unsolicited Observations (ORU), following **Digital Health and Care Wales HL7 v2 (2.5.1) ORU**, UK SNOMED CT coding of OBX is preferred.
- IHE and HL7, HL7 FHIR based event notifications

### Outgoing Events

The following is supported:

- Consultation write backs to EMIS and TPP via IM1

The following standards can be supported:

- HL7 v2 Admission, Discharge and Transfers (ADT), [IHE Patient Identifier Cross-referencing (PIX)](https://profiles.ihe.net/ITI/TF/Volume1/ch-5.html) and/or [IHE Patient Administration Management (PAM)](https://profiles.ihe.net/ITI/TF/Volume1/ch-14.html) following **NHS England HL7 v2 (2.4) ADT Messaging Specification**
- HL7 v2 Unsolicited Observations (ORU), following **Digital Health and Care Wales HL7 v2 (2.5.1) ORU**, UK SNOMED CT coding of OBX is preferred.
- IHE DSUB/DSUBm or HL7 v2 MDM
- IHE and HL7, HL7 FHIR based event notifications
