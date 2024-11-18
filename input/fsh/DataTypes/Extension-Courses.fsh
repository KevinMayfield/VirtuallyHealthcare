Extension: Extension-Courses
Id: ExtensionCourses
Title: "EMIS PFS Courses"
Description: "EMIS PFS Courses"

* ^context[0].type = #element
* ^context[=].expression = "MedicationRequest"
* extension contains
    nextIssue 0..1 MS and
    canBeRequested 0..*

* extension[nextIssue] ^short = "Next issue"
* extension[nextIssue].value[x] only Reference
* extension[canBeRequested] ^short = "Can be requested"
* extension[canBeRequested].value[x] only boolean
