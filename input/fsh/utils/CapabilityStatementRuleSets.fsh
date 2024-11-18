RuleSet: Resource(type, profile)
* rest.resource[+]
  * type = {type}
  * profile = Canonical({profile})

RuleSet: ResourceWithExpectation(type, profile, expectation)
* rest.resource[+]
  * type = {type}
  * profile = Canonical({profile})
  * extension[+]
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = {expectation}

RuleSet: WithResourceDocumentation(documentation)
* rest.resource[=]
  * documentation = "{documentation}"

RuleSet: WithSupportedProfile(profile)
* rest.resource[=]
  * supportedProfile[+] = "{profile}"

RuleSet: Interaction(code)
* rest.resource[=]
  * interaction[+]
    * code = {code}

RuleSet: InteractionWithExpectation(code, expectation)
* rest.resource[=]
  * interaction[+]
    * code = {code}
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = {expectation}

RuleSet: WithInteractionDocumentation(documentation)
* rest.resource[=]
  * interaction[=]
    * documentation = "{documentation}"

RuleSet: SearchParam(name, type)
* rest.resource[=]
  * searchParam[+]
    * name = "{name}"
    * type = {type}

RuleSet: SearchParamWithExpectation(name, type, expectation)
* rest.resource[=]
  * searchParam[+]
    * name = "{name}"
    * type = {type}
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = {expectation}

RuleSet: WithSearchParamDocumentation(documentation)
* rest.resource[=]
  * searchParam[=]
    * documentation = "{documentation}"

RuleSet: SearchParamCombination
* rest.resource[=]
  * extension[+]
    * url = Canonical(http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination)

RuleSet: SearchParamCombinationWithExpectation(expectation)
* rest.resource[=]
  * extension[+]
    * url = Canonical(http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination)
//    * extension[+]
//     * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
//      * valueCode = {expectation}


RuleSet: RequiringSearchParam(name)
* rest.resource[=]
  * extension[=]
    * extension[+]
      * url = "required"
      * valueString  = "{name}"

RuleSet: AllowingSearchParam(name)
* rest.resource[=]
  * extension[=]
    * extension[+]
      * url = "optional"
      * valueString  = "{name}"

// Bundle RuleSets
RuleSet: DocumentBundle(uuid, documentdate)
* type = #document
* identifier.system = "urn:oid:2.16.724.4.8.10.200.10"
* identifier.value = {uuid}
* timestamp = {documentdate}

RuleSet: EntryDocument(uuid, resourceId)
* entry[+]
  * fullUrl = {uuid}
  * resource = {resourceId}

RuleSet: EntryTransaction(type, uuid, resourceId)
* entry[+]
  * fullUrl = {uuid}
  * resource = {resourceId}
  * request.method = #POST
  * request.url = {type}

// Bundle RuleSets
RuleSet: MessageBundle(uuid, documentdate)
* type = #message
* identifier.system = "https://tools.ietf.org/html/rfc4122"
* identifier.value = {uuid}
* timestamp = {documentdate}
