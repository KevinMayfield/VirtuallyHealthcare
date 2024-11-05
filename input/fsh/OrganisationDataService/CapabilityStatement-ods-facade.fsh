Instance: ODSFacade
InstanceOf: CapabilityStatement
Title: "Facade - Organisation Data Service - FHIR API"
Usage: #definition
* description = """

This is a [Service Facade](ActorDefinition-ServiceFacade.html) to [Organisation Data Service - FHIR API](https://digital.nhs.uk/developer/api-catalogue/organisation-data-service-fhir)

This facade is related to [IHE Mobile Care Services Discovery (mCSD)](https://profiles.ihe.net/ITI/mCSD/index.html)
"""

* name = "FacadeOrganisationDataService"
* title = "Facade - Organisation Data Service - FHIR API"
* status = #draft
* experimental = false
* date = "2024-10-08"
* kind = #requirements
* fhirVersion = #4.0.1
* format[+] = #application/fhir+xml
* format[+] = #application/fhir+json
* rest.mode = #server

* insert ResourceWithExpectation(#Organization,Organization , #SHALL)
* insert WithSupportedProfile(https://fhir.hl7.org.uk/StructureDefinition/UKCore-Organization)
* rest.resource[=]
  * documentation = """

  ```
  GET /Organization?{parameters}
  ```

  Conformance to this implementation guide **SHOULD** be tested via [FHIR Validation](https://hl7.org/fhir/R4/validation.html).

  **Search Examples**

  Search for Organization's for a patient with a ODS Code of RR8

  ```
  GET /Organization?identifier=https://fhir.nhs.uk/Id/ods-organization-code|RR8
  ```

 """
* insert Interaction(#read)
* insert Interaction(#search-type)

* insert SearchParam(identifier, #token)
* insert WithSearchParamDocumentation([[A organisations ODS Code e.g. `identifier=https://fhir.nhs.uk/Id/ods-organization-code|RR8`]])
* insert SearchParam(name, #string)
* insert WithSearchParamDocumentation([[A portion of the organization's name or alias]])
* insert SearchParam(active, #token)
* insert WithSearchParamDocumentation([[Is the Organization record active]])
* insert SearchParam(address-postalcode, #string)
* insert WithSearchParamDocumentation([[A postal code specified in an address]])
* insert SearchParam(address-city, #string)
* insert WithSearchParamDocumentation([[A city specified in an address]])
* insert SearchParam(ods-org-primaryRole, #token)
* insert WithSearchParamDocumentation([[organisation ods primary role]])
* insert SearchParam(type, #token)
* insert WithSearchParamDocumentation([[A code for the type of organization]])





