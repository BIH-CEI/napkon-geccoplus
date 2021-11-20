// Author: Thomas Haese
// Charité - Universitätsmedizin Berlin

Profile: Dizziness 
Parent: $gecco-base-condition
Id: symptom-dizziness 
Title: "Dizziness"
Description: "Profile for symptom dizziness in the context of GECCO+"

* insert napkon-metadata(2021-11-19, #draft, 0.1.0)

* category.coding ^slicing.discriminator[0].type = #pattern
* category.coding ^slicing.discriminator[0].path = "$this"
* category.coding ^slicing.rules = #open
* category.coding contains sct 1..1
* category.coding[sct] = $sct#404640003 "Dizziness (finding)"

* code.coding[sct] from $yes-no-unknown (required)
