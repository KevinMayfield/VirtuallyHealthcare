Instance:  FormService
InstanceOf: ActorDefinition
Title:   "Form Service"
Usage:  #definition

* name = "Form Service"
* type = http://hl7.org/fhir/examplescenario-actor-type#system
* status = http://hl7.org/fhir/publication-status#draft
* description = """
Provides pre-population and data extraction services

Links to detailed elaboration on this actor can be found in:

- [HL7 Structured Data Capture](https://build.fhir.org/ig/HL7/sdc/workflow.html). This actor is referred to in this guide as a `Form Manager`.
- [IHE Retrieve Form for Data Capture (RFD)](https://profiles.ihe.net/ITI/TF/Volume1/ch-17.html#17.2)
"""

* documentation = """

The actor names used in this guide have resulted in different actor names being used in order to promote a common language.

| Actor | IHE and HL7 Actors |
|-------|-----------------|
| Clinical Data Capture | Form Filler |
| Form Manager | Form Manager and Form Response Manager |
| Form Repository | Form Archiver and Form Receiver |

"""
