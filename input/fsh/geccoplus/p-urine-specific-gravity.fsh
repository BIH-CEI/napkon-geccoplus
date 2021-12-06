// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: UrineSpecificGravity
Parent: Observation
Id: geccoplus-urine-specific-gravity
Title: "Urine Specific Gravity"
Description: "Specific gravity of urine"
* insert napkon-metadata(2021-12-06, #draft, 0.1.0)
* insert mii-patient-reference
* obeys value-or-data-absent-reason
* status MS
* category 1..* MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains laboratory 1..1
* category[laboratory] = $cs-observation-category#laboratory "Laboratory"
* code 1..1 MS
  * coding ^slicing.discriminator[0].type = #pattern
  * coding ^slicing.discriminator[0].path = "$this"
  * coding ^slicing.rules = #open
  * coding contains loinc 1..*
  * coding[loinc] from UrineSpecificGravity (required)
  * coding[loinc].system 1..
  * coding[loinc].code 1..
* value[x] only Quantity or Range
* effective[x] 1..1 MS

Instance: UrineSpecificGravityExample
InstanceOf: geccoplus-urine-specific-gravity
Usage: #example
Title: "Urine Specific Gravity Example"
Description: "Example of a specific gravity of urine"
* status = #registered
* code = $loinc#2965-2 "Specific gravity of Urine"
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2021-12-06"
* valueQuantity.value = 1.010
