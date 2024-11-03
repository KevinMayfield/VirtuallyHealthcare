

### Create Referral Request 

This refers to on e-RS [A011: Create Referral (Deprecated)](https://developer.nhs.uk/apis/e-Referrals/explore_endpoint_a011.html)
Example of the payload sent to eRS
- [$ers.createReferral multishortlist](eRS/ers-GenerateReferral-multishortlist-FHIR-STU3.json)

In the CDR this is defined via [Questionnaire eRS Referral Request](Questionnaire-eRS-Referral-Request.html) and requires a FHIR QuestionnaireResponse to be created in the [CDR](ActorDefinition-ClinicalDataRepository.html).
Example [QuestionnaireResponse eRS Referral Request](QuestionnaireResponse-ers-Referral-Request.html)

This questionnaire is a mixture of data items needed for A010 and A011.


