Instance:  FormRepository
InstanceOf: ActorDefinition
Title:   "Form Repository"
Usage:  #definition

* name = "Form Repository"
* type = http://hl7.org/fhir/examplescenario-actor-type#system
* status = http://hl7.org/fhir/publication-status#draft
* description = """
The Form Repository is responsible for both the persistent storage of forms (and many archetypes).

Links to detailed elaboration on this actor can be found in:

- [HL7 Structured Data Capture](https://build.fhir.org/ig/HL7/sdc/workflow.html)
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
