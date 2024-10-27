Alias: $Obligation = http://hl7.org/fhir/StructureDefinition/obligation

RuleSet: Obligation(code, actor)
* ^extension[$Obligation][+].extension[code].valueCode = {code}
* ^extension[$Obligation][=].extension[actor].valueCanonical = "{actor}"

RuleSet: ObligationServer(expectation, actor)
* rest.resource[=]
  * extension[+]
    * url = Canonical(http://hl7.org/fhir/StructureDefinition/obligation)
    * extension[+]
      * url = "code"
      * valueCode = {expectation}
    * extension[+]
      * url = "actor"
      * valueCode = {actor}
