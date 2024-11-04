Instance: IM1PatientEMISFacade
InstanceOf: CapabilityStatement
Title: "Facade - IM1 Patient EMIS"
Usage: #definition
* description = """
### Overview

This is a [Service Facade](ActorDefinition-ServiceFacade.html) to [IM1 Patient](https://digital.nhs.uk/services/gp-it-futures-systems/im1-pairing-integration/interface-mechanisms-guidance#patient)

"""

* name = "IM1PatientEMISFacade"
* title = "Facade - IM1 Patient EMIS"
* status = #draft
* experimental = false
* date = "2024-10-08"
* kind = #requirements
* fhirVersion = #4.0.1
* format[+] = #application/fhir+xml
* format[+] = #application/fhir+json
* rest.mode = #server

* insert ResourceWithExpectation(#Patient,Patient , #SHALL)
* insert WithSupportedProfile(https://fhir.hl7.org.uk/StructureDefinition/UKCore-Patient)
* rest.resource[=]
  * documentation = """

TODO

 """

* insert Interaction(#read)






