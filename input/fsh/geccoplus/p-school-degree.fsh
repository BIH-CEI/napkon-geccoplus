// Author: Thomas Haese (THA)

Profile: HighestSchoolDegree
Parent: Condition
Id: highest-school-degree
Title: "Highest school degree"
Description: "Profile for highest school degree in the context of GECCO+"

* insert napkon-metadata(2021-10-11, #draft, 0.1.0)

* category.coding ^slicing.discriminator.type = #pattern
* category.coding ^slicing.discriminator.path = "$this"
* category.coding ^slicing.rules = #open
* category.coding contains loinc 1..1
* category.coding[loinc] = $loinc#63504-5 "What is the highest grade or level of school you have completed or the highest degree you have received [NHANES]"
* code 1..1 MS
* code from $highest-school-degree-loi (required)

* subject only Reference(Patient)

Instance: instance-highest-school-degree
InstanceOf: highest-school-degree
Usage: #example
Title: "highest-school-degree-instance"
Description: "Example of a achieved school degree"
* code = $loinc#LA15564-0 "High school graduate"
* subject = Reference(ExamplePatient)
