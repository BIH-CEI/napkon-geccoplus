// Author: Thomas Haese
// Charité - Universitätsmedizin Berlin
Profile: HighestSchoolDegree
Parent: Observation
Id: geccoplus-highest-school-degree
Title: "Highest school degree"
Description: "Highest school degree in the context of GECCO+"
* insert napkon-metadata(2021-10-11, #active, 1.0.0)
* insert mii-patient-reference
* obeys value-or-data-absent-reason
* status MS
* category 1..* MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains socialHistory 1..1
* category[socialHistory] = $cs-observation-category#social-history "Social History"
* code 1..1 MS
  * coding 1..*
  * coding ^slicing.discriminator.type = #pattern
  * coding ^slicing.discriminator.path = "$this"
  * coding ^slicing.rules = #open
  * coding contains
    loinc 1..*
  * coding[loinc] = $loinc#82589-3 "Highest level of education"
  * coding[loinc].system 1..
  * coding[loinc].code 1..
* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from SchoolDegree (required)

Instance: HighestSchoolDegreeExample
InstanceOf: geccoplus-highest-school-degree
Usage: #example
Title: "Highest School Degree Example"
Description: "Example of a achieved school degree"
* status = #final
* valueCodeableConcept = $ngp#72 "Realschulabschluss/Mittlere Reife"
* subject = Reference(ExamplePatient)
