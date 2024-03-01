### Finding Patients

For example, if a developer wants to search for a patient or what is commonly known as a `Patient Demographics Query` they call

`GET /Patient` on one of our adaptors.

The adaptors will generally support the following searches:

- NHS Number and other patient `identifier`s such as TPP psuedo id, EMIS id, Medical Record Number (MRN)
- date of birth `birthdate`
- surname `family`
- forename `given`

They don't need to interface directly with TPP, EMIS or NHS England's PDS. We do that for them, they only need to understand the one API.

<figure>{% include findpatient.svg %}</figure>
<br clear="all"/>

Details of the standard we follow to do this, can be found in [IHE Patient Demographics Query for mobile (PDQm)](https://profiles.ihe.net/ITI/PDQm/) and also [HL7 UK - UK Core Access](https://build.fhir.org/ig/HL7-UK/UK-Core-Access/patient_index.html)
