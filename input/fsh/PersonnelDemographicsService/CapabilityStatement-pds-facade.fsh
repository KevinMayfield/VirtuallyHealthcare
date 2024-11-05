Instance: PDSFacade
InstanceOf: CapabilityStatement
Title: "Facade - Personal Demographics Service - FHIR API"
Usage: #definition
* description = """

This is a [Service Facade](ActorDefinition-ServiceFacade.html) to [Personal Demographics Service - FHIR API](https://digital.nhs.uk/developer/api-catalogue/personal-demographics-service-fhir)

This facade is related to [IHE Patient Demographics Query for Mobile (PDQm)](https://profiles.ihe.net/ITI/PDQm/)
"""

* name = "FacadePersonalDemographicsService"
* title = "Facade - Personal Demographics Service - FHIR API"
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
* insert SearchParam(name, #string)
* insert WithSearchParamDocumentation([[A patients name]])
* insert SearchParam(family, #string)
* insert WithSearchParamDocumentation([[A patients surname]])
* insert SearchParam(given, #string)
* insert WithSearchParamDocumentation([[A patients first name]])
* insert SearchParam(birthdate, #date)
* insert WithSearchParamDocumentation([[A patients date of birth]])
* insert SearchParam(gender, #token)
* insert WithSearchParamDocumentation([[A patients gender - administrative]])
* insert SearchParam(death-date, #token)
* insert WithSearchParamDocumentation([[A patients date of birth]])
* insert SearchParam(address-postalcode, #string)
* insert WithSearchParamDocumentation([[A patients postcode]])
* insert SearchParam(general-practitioner, #token)
* insert WithSearchParamDocumentation([[A patients general practice]])




