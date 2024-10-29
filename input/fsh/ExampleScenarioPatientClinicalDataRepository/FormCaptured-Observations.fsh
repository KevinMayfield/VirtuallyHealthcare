Instance: af22811f-218e-4ff6-aa07-93f12c666dd7
InstanceOf: Observation
Title: "Observation CDR - Weight"
Description: """
Form based Data Capture - Weight

For Device based data capture populate device instead of derivedFrom
"""
Usage: #example

* identifier[UUID]
  * system = "https://tools.ietf.org/html/rfc4122"
  * value = "af22811f-218e-4ff6-aa07-93f12c666dd7"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://snomed.info/sct#27113001 "Body weight"
* subject.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* effectiveDateTime = "2024-03-04T06:27:40.701Z"
* valueQuantity.value = 81
* valueQuantity.code = #kg
* valueQuantity.system = "http://unitsofmeasure.org"
* performer.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* derivedFrom.reference = "QuestionnaireResponse/questionnaireresponse-vital-signs"


Instance: 9a2052b8-f00a-41ec-bc4e-3bd4cfae62c2
InstanceOf: Observation
Title: "Observation CDR - Baseline SpO2"
Description: """
Form based Data Capture - Baseline SpO2

For Device based data capture populate device instead of derivedFrom
"""
Usage: #example

* identifier[UUID]
  * system = "https://tools.ietf.org/html/rfc4122"
  * value = "9a2052b8-f00a-41ec-bc4e-3bd4cfae62c2"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://snomed.info/sct#927981000000106 "Baseline SpO2 (oxygen saturation at periphery)"
* subject.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* effectiveDateTime = "2024-03-04T06:27:40.701Z"
* valueQuantity.value = 98
* valueQuantity.code = #%
* valueQuantity.system = "http://unitsofmeasure.org"
* performer.reference = "Patient/073eef49-81ee-4c2e-893b-bc2e4efd2630"
* derivedFrom.reference = "QuestionnaireResponse/questionnaireresponse-vital-signs"
