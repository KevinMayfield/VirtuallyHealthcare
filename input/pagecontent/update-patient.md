
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






