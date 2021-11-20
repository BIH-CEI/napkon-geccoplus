// Author: Thomas Haese
// Charité - Universitätsmedizin Berlin

Profile: Rhinorrhoea
Parent: $gecco-base-condition
Id: symptom-rhinorrhoea
Title: "Rhinorrhoea"
Description: "Profile for symptom rhinorrhoea in the context of GECCO+"

* insert napkon-metadata(2021-11-19, #draft, 0.1.0)

* category.coding ^slicing.discriminator[0].type = #pattern
* category.coding ^slicing.discriminator[0].path = "$this"
* category.coding ^slicing.rules = #open
* category.coding contains sct 1..1
* category.coding[sct] = $sct#64531003 "Nasal discharge (finding)"

* code.coding[sct] from $yes-no-unknown (required)
