
### Clinical Data Repository Model

<figure>
{%include referral-model.svg%}
<p id="fX.X.X.X-X" class="figureTitle">CDR Referral Model</p>
</figure>
<br clear="all">

### Clinical Data Repository and eReferral Service Mapping

This refers to on e-RS [A011: Create Referral (Deprecated)](https://developer.nhs.uk/apis/e-Referrals/explore_endpoint_a011.html)
Example of the payload sent to eRS
- [$ers.createReferral multishortlist](eRS/A011-request-ers-GenerateReferral-multishortlist-FHIR-STU3.json)

In the CDR this is defined via [Questionnaire eRS Referral Request](Questionnaire-eRS-Referral-Request.html) and requires a FHIR QuestionnaireResponse to be created in the [CDR](ActorDefinition-ClinicalDataRepository.html).
Example [QuestionnaireResponse eRS Referral Request](QuestionnaireResponse-ers-Referral-Request.html)

This questionnaire is a mixture of data items needed for A010 and A011.

| Questionnaire                        | [A011](https://fhir.nhs.uk/STU3/StructureDefinition/eRS-CreateReferral-Parameters-1) | [A010 Request](https://fhir.nhs.uk/STU3/StructureDefinition/eRS-ServiceSearchCriteria-Parameters-1) | [A010 Response](https://fhir.nhs.uk/STU3/StructureDefinition/eRS-FetchServices-List-1) | [A044](https://fhir.nhs.uk/STU3/StructureDefinition/eRS-CreateAdviceAndGuidance-Request-Parameters-1) | FHIR R4 Mapping                                                  |
|--------------------------------------|--------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------|------------------------------------------------------------------|
| requestType                          |                                                                                      |                                                                                                     |                                                                                        |                                                                                                       | ServiceRequest.category?                                         |
| clinicalTerm                         |                                                                                      | clinicalTerm                                                                                        |                                                                                        |                                                                                                       | ServiceRequest.code                                              |
| priority                             |                                                                                      | priority                                                                                            |                                                                                        |                                                                                                       | ServiceRequest.priority                                          | 
| referringClinician                   | n/a                                                                                  | n/a                                                                                                 | n/a                                                                                    | n/a                                                                                                   | ServiceRequest.requester                                         |
| performer.namedClinician             |                                                                                      | namedClinician                                                                                      |                                                                                        |                                                                                                       | ServiceRequest.performer(Practitioner)                           |
| performer.organisation               |                                                                                      | organisation                                                                                        |                                                                                        |                                                                                                       | ServiceRequest.performer(Organization)                           |
| specialty                            |                                                                                      | specialty                                                                                           | specialty                                                                              |                                                                                                       | HealthcareService.specialty                                      |
| clinicType             `             |                                                                                      | clinicType                                                                                          |                                                                                        |                                                                                                       | HealthcareService.type                                           |
| distanceLimit                        |                                                                                      |                                                                                                     |                                                                                        |                                                                                                       |                                                                  |
| postcode                             |                                                                                      |                                                                                                     |                                                                                        |                                                                                                       |                                                                  |
| ageAndGenderAppropriate              |                                                                                      |                                                                                                     |                                                                                        |                                                                                                       |                                                                  |
|                                      |                                                                                      |                                                                                                     | displayProminently                                                                     |                                                                                                       |
| indicativeAppointmentWaitTimeLimit   |                                                                                      |                                                                                                     | indicativeAppointmentWaitTime                                                          |                                                                                                       |                                                                  |
| firstReminderLetterFollowUpDays      |                                                                                      |                                                                                                     |                                                                                        |                                                                                                       |                                                                  |
| eReferralPathwayStart                |                                                                                      |                                                                                                     |                                                                                        |                                                                                                       |                                                                  |
| commissioningProvisioning            |                                                                                      |                                                                                                     |                                                                                        |                                                                                                       |                                                                  |
| intentionToAddReferralLetter         |                                                                                      |                                                                                                     |                                                                                        |                                                                                                       |                                                                  |
| attachment.requestAttachmentFileType |                                                                                      |                                                                                                     |                                                                                        |                                                                                                       |                                                                  |
| attachment.requestAttachmentFile     |                                                                                      |                                                                                                     |                                                                                        |                                                                                                       |                                                                  |
| selectedServices                     |                                                                                      |                                                                                                     |                                                                                        |                                                                                                       |                                                                  | 
|                                      |                                                                                      |                                                                                                     | serviceName                                                                            |                                                                                                       | HealthcareService.name                                           |
|                                      |                                                                                      |                                                                                                     | genderTreated                                                                          |                                                                                                       | HealthcareServiceHealthcareService.characteristic[genderTreated] |
|                                      |                                                                                      |                                                                                                     | bookableType                                                                           |                                                                                                       | HealthcareService.characteristic[bookableType]                   |
|                                      |                                                                                      |                                                                                                     | supportedAppointmentType                                                               |                                                                                                       | HealthcareService.characteristic[supportedAppointmentType]       |
|                                      |                                                                                      |                                                                                                     | referralLetterRequired                                                                 |                                                                                                       | HealthcareService.characteristic[referralLetterRequired]	        |
|                                      |                                                                                      |                                                                                                     | location                                                                               |                                                                                                       | HealthcareService.location                                       |
|                                      |                                                                                      |                                                                                                     | linkToNHSWebsite                                                                       |                                                                                                       |                                                                  |
|                                      |                                                                                      |                                                                                                     | supportedRequestFlowType                                                               |                                                                                                       | HealthcareService.serviceProvisionCode[supportedRequestFlowType] |
|                                      |                                                                                      |                                                                                                     | identifier                                                                             |                                                                                                       | HealthcareService.identifier                                     |
