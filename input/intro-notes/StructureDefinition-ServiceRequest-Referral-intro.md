
### eRS-ReferralRequest to FHIR ServiceRequest

Operation Definition [eRS-CreateReferral-Operation](https://fhir.nhs.uk/STU3/OperationDefinition/eRS-CreateReferral-Operation-1)

Example [$ers.createReferral multishortlist](eRS/ers-GenerateReferral-multishortlist-FHIR-STU3.json)

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

