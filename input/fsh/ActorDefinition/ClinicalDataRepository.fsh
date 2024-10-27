Instance:  ClinicalDataRepository
InstanceOf: ActorDefinition
Title:   "Clinical Data Repository"
Usage:  #definition

* name = "ClinicalDataRepository"
* type = #system
* status = http://hl7.org/fhir/publication-status#draft
* description = """
The Clinical Data Repository is responsible for the persistent storage of clinical data items (observations, conditions, immunisations, etc). E.g. PHR, EHR and EPR

Links to detailed elaboration on this actor can be found in:

- [IHE Query for Existing Data for Mobile (QEDm)](https://build.fhir.org/ig/IHE/QEDm/branches/master/volume-1.html#1181-qedm-actors-transactions-and-content-modules). IHE refers to this actor as `Clinical Data Source`.
- [HL7 Internation Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa/index.html), IPA refers to this actor as `clinical records system`.


"""
* documentation = """

System examples include:
- [Electronic Patient Record(EPR) or Electronic Health Record(EHR)](https://en.wikipedia.org/wiki/Electronic_health_record)
- [Personal Health Record(PHR)](https://en.wikipedia.org/wiki/Personal_health_record)

"""
