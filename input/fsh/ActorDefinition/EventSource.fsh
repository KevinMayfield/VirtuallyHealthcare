Instance:  EventSource
InstanceOf: ActorDefinition
Title:   "Event Source"
Usage:  #definition

* name = "EventSource"
* type = http://hl7.org/fhir/examplescenario-actor-type#system
* status = http://hl7.org/fhir/publication-status#draft
* description = """
The Event Source Actor produces events based event triggers which occur during clinical activity (e.g. patient discharged).
"""
* documentation = """
Links to more detailed elaboration on the actors can be found in:

- [IHE Document Subscription for Mobile (DSUBm)](https://profiles.ihe.net/ITI/DSUBm/volume-1.html#1541-dsubm-actors-transactions-and-content-modules)
- [IHE Patient Administration Management (PAM)](https://profiles.ihe.net/ITI/TF/Volume1/ch-14.html#14.3)

In order to simplify this guide, the actors have been generalised. The maps to IHE event actors is shown below:

| Actor | IHE Actors |
|-------|-----------------|
| Event Consumer | Resource Notification Recipient and Patient Encounter Consumer |
| Event Message Broker | n/a  |
| Event Notification Broker | Resource Notification Broker |
| Event Source | Resource Notification Publisher and Patient Encounter Supplier |

"""
