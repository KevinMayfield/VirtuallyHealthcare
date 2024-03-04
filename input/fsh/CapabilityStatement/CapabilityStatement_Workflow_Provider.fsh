Instance: WorkflowProvider
InstanceOf: CapabilityStatement
Usage: #definition
Title: "Workflow Provider"
* status = #active
* date = 2023-02-01
* kind = #requirements
* fhirVersion = #4.0.1
* format = #json
* description = "Is primarily focused on supporting clinical process. \nTechnically this is a replacment of messaging with [conversations](https://www.enterpriseintegrationpatterns.com/patterns/conversation/index.html) and the workflow API is based on \n - [FHIR Workflow](https://hl7.org/fhir/R4/workflow-module.html)"
* rest.mode = #server

//Task
* insert ResourceWithExpectation(#Task, https://fhir.virtually.healthcare/StructureDefinition/Task, #SHALL)
* insert WithSupportedProfile(https://fhir.hl7.org.uk/StructureDefinition/UKCore-Task)
* insert InteractionWithExpectation(#create, #SHALL)
* insert InteractionWithExpectation(#search-type, #SHALL)
* insert SearchParamWithExpectation(patient, #reference, #SHALL)
* insert SearchParamWithExpectation(code, #token, #SHOULD)
* insert SearchParamWithExpectation(status, #token, #SHOULD)
