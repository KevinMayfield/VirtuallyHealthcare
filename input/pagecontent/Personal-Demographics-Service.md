
### Overview

This is a [Service Facade](ActorDefinition-ServiceFacade.html) to [Personal Demographics Service - FHIR API](https://digital.nhs.uk/developer/api-catalogue/personal-demographics-service-fhir)

<figure>
{%include component-pds.svg%}
<p id="fX.X.X.X-X" class="figureTitle">Facade Overview</p>
</figure>
<br clear="all">

| Item        | Link                                                                                  | 
|-------------|---------------------------------------------------------------------------------------|
| Facade API  | [Facade - Personal Demographics Service - FHIR API](CapabilityStatement-PDSFacade.html) |  
| Examples    | [Patient NHSEngland - Matthew Sheppard (9876543210)](Patient-9876543210.html)         | 

### PDS Mappings

| PDS FHIR Patient                                                  | Domain Model FHIR Patient                                                                                                                                 |
|-------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------|
| extension[UKCore-NominatedPharmacy]                               | Removed, to be converted to a QuestionnaireResponse[PatientPreferences]                                                                                   |
| extension[UKCore-NHSCommunication].extension[interpreterRequired] | Removed, to be converted to a QuestionnaireResponse[PatientPreferences].                                                                                  
| extension[UKCore-NHSCommunication].extension[language] | Converted to Patient.communication and urn:ietf:bcp:47 codesystem <br/> Sign language codes are converted as follows: q4 -> `bfi`, q3 -> `asf` and q2 to `ase`. |
