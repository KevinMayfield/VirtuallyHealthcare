

### Create Referral Request 

This refers to on e-RS [A011: Create Referral (Deprecated)](https://developer.nhs.uk/apis/e-Referrals/explore_endpoint_a011.html)
Example of the payload sent to eRS
- [$ers.createReferral multishortlist](eRS/ers-GenerateReferral-multishortlist-FHIR-STU3.json)

In the CDR this is defined via [Questionnaire eRS Referral Request](Questionnaire-eRS-Referral-Request.html) and requires a FHIR QuestionnaireResponse to be created in the [CDR](ActorDefinition-ClinicalDataRepository.html).
Example [QuestionnaireResponse eRS Referral Request](QuestionnaireResponse-ers-Referral-Request.html)

| eRS Name       | Cadinality | FHIR ServiceRequest |
|----------------|------------|---------------------|
| id             | 1..1       | identifier[UUID]    |
| meta	          | 1..1       | n/a                 |
| resourceType   | 1..1       | n/a                 | 
| contained      | 1..1       |                     | 
| extension      | 1..1       |                     | 
| status         | 1..1       |                     |          
| specialty      | 1..1       |                     |       
| subject        | 1..1       | subject             |       
| supportingInfo | 1..1       |                     | 
| intent         | 1..1       |                     | 
