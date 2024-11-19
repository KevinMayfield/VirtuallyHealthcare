Extension: ExtCodeableReference
Id: ExtCodeableReference
Title: "ExtCodeableReference"
Description: "Replace with R5 backport or UKCore extension if they exist"
* ^context[0].type = #element
* ^context[=].expression = "Reference"
* ^context[+].type = #element
* ^context[=].expression = "CarePlan.addresses"
* ^context[1].type = #element
* ^context[=].expression = "Reference"
* ^context[+].type = #element
* ^context[=].expression = "CareTeam.reasonReference"
* ^context[2].type = #element
* ^context[=].expression = "Reference"
* ^context[+].type = #element
* ^context[=].expression = "Task.reasonReference"
* ^context[3].type = #element
* ^context[=].expression = "Reference"
* ^context[+].type = #element
* ^context[=].expression = "Task.focus"
* value[x] only CodeableConcept
