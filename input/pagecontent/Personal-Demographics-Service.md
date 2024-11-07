
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

### PDS Patient Conversions

| PDS FHIR Patient                                                  | Domain Model FHIR Patient                                                                                                                                       |
|-------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------|
| extension[UKCore-NominatedPharmacy]                               | Removed and converted to a QuestionnaireResponse[PatientPreferences]                                                                                            |
| extension[UKCore-NHSCommunication].extension[interpreterRequired] | Removed and converted to a QuestionnaireResponse[PatientPreferences]                                                                                            
| extension[UKCore-NHSCommunication].extension[language] | Converted to Patient.communication and urn:ietf:bcp:47 codesystem <br/> Sign language codes are converted as follows: q4 -> `bfi`, q3 -> `asf` and q2 to `ase`. |
| extension[UKCore-MedicalApplianceSupplier] | Removed and converted to a QuestionnaireResponse[PatientPreferences]                                                                                            |
| extension[UKCore-AddressKey] | Converted from valueCoding to valueCodeableConcept                                                                                                              |

### PDS RelatedPerson Conversions

| PDS FHIR RelatedPerson                                                                  | Domain Model FHIR RelatedPerson |
|-----------------------------------------------------------------------------------------|---------------------------------|
| patient.identifier                                                                      | identifier                      |
| queryParameter `nhsNumber`                                                              | patient.identifier              |
| relationship.coding.system = `http://hl7.org/fhir/ValueSet/relatedperson-relationshiptype` | Changed to `http://terminology.hl7.org/CodeSystem/v3-RoleClass`                  | 
| relationship.coding.system = `https://fhir.nhs.uk/R4/CodeSystem/UKCore-AdditionalRelatedPersonRole` | Changed to `https://fhir.hl7.org.uk/CodeSystem/UKCore-AdditionalPersonRelationshipRole`               |
| N code (next of kin)                                                                    | changed to NOK | 
