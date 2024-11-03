Instance: Patient-JackDawkins-9912003888
InstanceOf: Patient
Title: "Patient - Jack Dawkins NHS Number: 9912003888"
Description: """
Loosely based on [NHS Digital End of Life Care FHIR STU3 - Demographics Atomic Unit](https://nhsconnect.github.io/FHIR-END-OF-LIFE-API/api_eol_demographics.html)
"""
Usage: #example

* active = true
* identifier[0].use = #official
* identifier[0].type = http://terminology.hl7.org/CodeSystem/v2-0203#JHN
* identifier[0].system = $nhs-number
* identifier[0].value = "9912003888"
* identifier[0].assigner.identifier.value = "X24"
* identifier[1].type = http://terminology.hl7.org/CodeSystem/v2-0203#MR
* identifier[1].system = "https://hospitalpas.example.nhs.uk/Id/MRN"
* identifier[1].value = "A12356565"
* identifier[1].assigner.identifier.value = "RW1"
* identifier[2].type = http://terminology.hl7.org/CodeSystem/v2-0203#MR
* identifier[2].system = "https://gpsupplier.example.nhs.uk/Id/MRN"
* identifier[2].value = "633"
* identifier[2].assigner.identifier.value = "YHMS"

* name.use = #official
* name.family = "DAWKINS"
* name.given = "Jack"

* birthDate = "1937-10-02"

* address[+]
  * use = #home
  * type = #both
  * city = "Leodis"
  * postalCode = "LA19 5YN"


* gender = #male

* contact.name.use = #official
* contact.name.family = "DAWKINS"
* contact.name.given = "Bob"
* contact.telecom.value = "077021231231"
* contact.telecom.use = #mobile
