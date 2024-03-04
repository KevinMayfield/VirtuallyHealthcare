Instance: SchedulingProvider
InstanceOf: CapabilityStatement
Usage: #definition
Title: "Scheduling Provider"
* status = #active
* date = 2023-02-01
* kind = #requirements
* fhirVersion = #4.0.1
* format = #json
* description = "Scheduling API blueprint for appointment providers (PAS and EPR) based on \n - [NHS Booking - FHIR API](https://digital.nhs.uk/developer/api-catalogue/nhs-booking-fhir) \n - [GP Connect Appointment Management - FHIR API](https://digital.nhs.uk/developer/api-catalogue/gp-connect-appointment-management-fhir) \n - [IM1 supplier APIs](https://digital.nhs.uk/developer/api-catalogue/interface-mechanism-1-standards)"
* rest.mode = #server

//Appointment
* insert ResourceWithExpectation(#Appointment, https://fhir.virtually.healthcare/StructureDefinition/Appointment, #SHALL)
* insert WithSupportedProfile(https://fhir.hl7.org.uk/StructureDefinition/UKCore-Appointment)
* insert InteractionWithExpectation(#create, #SHALL)
* insert InteractionWithExpectation(#delete, #SHALL)

//AppointmentResponse
* insert ResourceWithExpectation(#AppointmentResponse, https://fhir.virtually.healthcare/StructureDefinition/AppointmentResponse, #SHALL)
* insert InteractionWithExpectation(#create, #SHALL)

//Schedule
* insert ResourceWithExpectation(#Schedule, https://fhir.virtually.healthcare/StructureDefinition/Schedule, #SHALL)
* insert WithSupportedProfile(https://fhir.hl7.org.uk/StructureDefinition/UKCore-Schedule)
* insert InteractionWithExpectation(#search-type, #SHALL)
* insert SearchParamWithExpectation(date, #date, #SHOULD)
* insert SearchParamWithExpectation(service-type, #token, #SHOULD)

//Slot
* insert ResourceWithExpectation(#Slot, https://fhir.virtually.healthcare/StructureDefinition/Slot, #SHALL)
* insert WithSupportedProfile(https://fhir.hl7.org.uk/StructureDefinition/UKCore-Slot)
* insert InteractionWithExpectation(#search-type, #SHALL)
* insert SearchParamWithExpectation(schedule, #reference, #SHOULD)
