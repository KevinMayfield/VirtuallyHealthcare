
### eRS eRS-ReferralRequest to FHIR ServiceRequest

[Example $ers.createReferral multishortlist](ERS/ers-GenerateReferral-multishortlist-FHIR-STU3.json)

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

