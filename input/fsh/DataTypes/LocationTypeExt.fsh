Extension: ExtLocationType
Id: ExtLocationType
Title: "ExtLocationType"
Description: "EMIS PractitionerRole"

* ^url = "http://fhir.virtuallyhealthcare.co.uk/Role"
* ^context[0].type = #element
* ^context[=].expression = "Practitioner"
* extension contains
    url 0..1 MS and
    role 0..*

* extension[url] ^short = "url"
* extension[url].value[x] only Reference
* extension[role] ^short = "role"
* extension[role].value[x] only integer
