
All units are [UCUM](http://unitsofmeasure.org) unless stated. 

### Vital Signs 

[Vital Signs Form/Data Capture Definition](Questionnaire-VitalSignsDefinitions.html). Hint: Use [NLM Form Builder](https://formbuilder.nlm.nih.gov/) to view these definitions.
This relates to the *Vital Signs* section of the [HL7 International Patient Summary](https://build.fhir.org/ig/HL7/fhir-ips/Structure-of-the-International-Patient-Summary.html#vital-signs)

| Term                                                          | SNOMED CT        | SNOMED CT Display           | LOINC   | FHIR Value Type | Unit Code | Unit Display           | Example                                                                             |
|---------------------------------------------------------------|------------------|-----------------------------|---------|-----------------|-----------|------------------------|-------------------------------------------------------------------------------------|
| [Body height](https://hl7.org/fhir/R4/bodyheight.html)        | 50373000         | Body height measure         | 8302-2  | Quantity        | cm        | centimeter             | [Body height example](Observation-ba92afc0-a1c5-41df-93d8-c3df49888bcd.html)        |
| [Body temperature](https://hl7.org/fhir/R4/bodytemp.html)     | 276885007        | Core body temperature       | 8310-5  | Quantity        | Cel       | degree Celsius         | [Body temperature example](Observation-5ba52e14-9a98-48cb-8029-770e3e76f428.html)   |
| [Body weight](https://hl7.org/fhir/R4/bodyweight.html)        | 27113001         | Body weight                 | 29463-7 | Quantity        | kg        | kilogram               | [Body weight example](Observation-af22811f-218e-4ff6-aa07-93f12c666dd7.html)        |
| [Head circumference](https://hl7.org/fhir/R4/headcircum.html) | 363811000        | Head circumference measure  | 9843-4  | Quantity        | cm        | centimeter             | [Head circumference example](Observation-78fef4ce-cb0a-4e7d-b768-2565550b62a2.html) |
| [Heart rate](https://hl7.org/fhir/R4/heartrate.html)          | 364075005        | Heart rate                  | 8867-4  | Quantity        | /min      | heart beats per minute | [Heart rate example](Observation-3421ccda-63f3-4e6e-b39c-ca9e3850d3a2.html)         |
| [Oxygen Saturation](https://hl7.org/fhir/R4/oxygensat.html)   | 442476006        | Arterial oxygen saturation  | 2708-6  | Quantity        | %         | %                      | [Oxygen Saturation example](Observation-9a2052b8-f00a-41ec-bc4e-3bd4cfae62c2.html)  |
| [Respiratory rate](https://hl7.org/fhir/R4/resprate.html)     | 86290005         | Respiratory rate            | 9279-1  | Quantity        | /min      | /min                   | [Respiratory rate example](Observation-65083da2-c77f-419e-a205-68a7d3863e90.html)   |
| [Body Mass Index](https://hl7.org/fhir/R4/resprate.html)      | 60621009         | Body mass index             | 39156-5 | Quantity        | kg/m2     | kg/m2                  | [Body Mass Index example](Observation-f268716f-9dc6-4361-a124-0aad3604d8a2.html)    |   
| [Blood pressure](https://hl7.org/fhir/R4/bp.html)             | 75367002         | Blood pressure              | 85354-9 | component       |           |                        | [Blood pressure example](Observation-8037d992-5936-44bf-9253-f76f904ba7b9.html)     |
| - Blood pressure component <br/> Systolic blood pressure      | 72313002         | Systolic arterial pressure  | 8480-6  | Quantity        | mm[Hg]    | mm[Hg]                 |                                                                                     |
| - Blood pressure component <br/> Diastolic blood pressure     | 1091811000000102 | Diastolic arterial pressure | 8462-4  | Quantity        | mm[Hg]    | mm[Hg]                 |                                                                                     |

### Physical Activity

[Physcial Activity Form/Data Capture Definition](Questionnaire-PhysicalActivityDefinitions.html). Hint: Use [NLM Form Builder](https://formbuilder.nlm.nih.gov/) to view these definitions.
This is related to the [HL7 Physical Activity Implementation Gude](https://build.fhir.org/ig/HL7/physical-activity/)

| Section | Term | SNOMED CT | SNOMED CT Display | LOINC | FHIR Value Type | Unit Code | Unit Display | Example |
|---------|------|-----------|-------------------|-------|-----------------|-----------|--------------|---------|

### Social History

This relates to the *Social History* section of the [HL7 International Patient Summary](https://build.fhir.org/ig/HL7/fhir-ips/Structure-of-the-International-Patient-Summary.html#social-history)

| Term           | SNOMED CT | SNOMED CT Display                   | FHIR Value Type | Unit Code | Unit Display | ValueSet                                                |
|----------------|-----------|-------------------------------------|-----------------|-----------|--------------|---------------------------------------------------------|
| Smoking Status | 365981007 | Tobacco smoking behaviour - finding | CodeableConcept |           |              | [Smoking Status](ValueSet-valueset-smoking-status.html) | 
