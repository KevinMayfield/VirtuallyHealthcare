Instance: IM1TransactionTPPFacade
InstanceOf: CapabilityStatement
Title: "Facade - IM1 Transaction TPP"
Usage: #definition
* description = """
### Overview

This is a [Service Facade](ActorDefinition-ServiceFacade.html) to [IM1 Transaction](https://digital.nhs.uk/services/gp-it-futures-systems/im1-pairing-integration/interface-mechanisms-guidance#transaction)

"""

* name = "IM1TransactionTPPFacade"
* title = "Facade - IM1 Transaction TPP"
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

  ```
  GET /Patient?{parameters}
  ```

  Conformance to this implementation guide **SHOULD** be tested via [FHIR Validation](https://hl7.org/fhir/R4/validation.html).

  **Search Examples**

  Search for Patient's for a patient with a NHS Number of 9876543210

  ```
  GET /Patient?identifier=https://fhir.nhs.uk/Id/nhs-number|9876543210
  ```

 """
* insert Interaction(#read)
* insert Interaction(#search-type)

* insert SearchParam(identifier, #token)
* insert WithSearchParamDocumentation([[A patients NHS Number e.g. `identifier=https://fhir.nhs.uk/Id/nhs-number|9876543210`]])





