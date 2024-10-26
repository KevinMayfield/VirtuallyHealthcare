
### Common NHS Approaches

The traditional way of updating patient demographics is via HL7 v2 ADT Events [update person information](https://hl7-definition.caristix.com/v2/HL7v2.4/TriggerEvents/ADT_A31). This can be a large message but the core element can be reduced down to a single FHIR [Patient](StructureDefinition-Patient.html) resource and using (FHIR) RESTful this gives 

`PUT /Patient`

This is also the approach taken on [IHE Patient Identifier Cross-referencing for mobile (PIXm)](https://profiles.ihe.net/ITI/PIXm/index.html) which roughly describes how to do a HL7 v2 ADT_A31 (and also IHE PIX) in HL7 FHIR.

At present, we have one use case which may trigger a `update person information` related event.

 - Patient or Practitioner has updated patient demographics on our application
 - Updating connected system identifiers (also known as Medical Record Number (MRN)) on our patient registry (this is a technical requirement)

We have potentially two other use cases which are 

 - GP patient registration - a patient wishes to register with the practice
 - NHS Number allocation - a patient has moved from Scotland, Northern Ireland, etc and is can be provided care in the English NHS
 - We recieve patient demographic updates from PDS, acutue PAS system or a regional MPI.

#### Update Person Information Event provider

If the patient demographics are changed within our application we are updating other systems. 

<figure>{% include patient-demographics-update.svg %}</figure>
<br clear="all"/>

#### Update Person Information Event consumer

It is likely in the future we may recieve updates from other systems

<figure>{% include patient-demographics-update-external-feed.svg %}</figure>
<br clear="all"/>

#### Update Person Information Workflow

The process of asking for a record to be updated is below.

<figure>{% include patient-demographics-update-workflow.svg %}</figure>
<br clear="all"/>

### NHS England APIs and Event Messages

NHS England version of `update person information' event is a series of HL7 FHIR Messages transered via MESH. These are described here [Personal Demographics Service MESH](https://digital.nhs.uk/developer/api-catalogue/personal-demographic-service-mesh). This is feed we could consume to update our records (note: EMIS and TPP records are linked to PDS, so we can use [Find Patient](find-patient.html) API's instead). If we supported this feed we would have to convert all of these feeds to a single FHIR Patient resource (our model is compatible with HL7 v2 Events or FHIR Patient, we don't support many of the concepts large messages from PDS - we just support the patient record has been updated).

For updating PDS, NHS England has another version of `update person information' called [Update patient details](https://digital.nhs.uk/developer/api-catalogue/personal-demographics-service-fhir#patch-/Patient/-id-) which is part of [Personal Demographics Service - FHIR API](https://digital.nhs.uk/developer/api-catalogue/personal-demographics-service-fhir) (which is a [Find Patient](find-patient.html) API). This API can only be called by an active patient or practitioner, it can not be used by a workflow process. 
These users must be logged in via [NHS Login](https://digital.nhs.uk/services/nhs-login) or [NHS England CIS2](https://digital.nhs.uk/services/care-identity-service/applications-and-services/cis2-authentication)

#### GP Registration 

It may be possible for us to register a patient at a new practice but we may be blocked from using the API call because we are not a 'Primary Care System' 

https://developer.community.nhs.uk/t/general-general-practice-update-register-with-a-new-practice/774

<figure>{% include patient-demographics-update-register-patient.svg %}</figure>
<br clear="all"/>

### EMIS and TPP

It is possible for patient to update their demographics via our EMIS PFS api. It's not known if we can use this in workflow or via practitioner interactions - this may be an information governance question.   
This would allow us to indirectly update PDS (EMIS and TPP are connected directly to the spine).

<figure>{% include patient-demographics-update-emis-pfs.svg %}</figure>
<br clear="all"/>





