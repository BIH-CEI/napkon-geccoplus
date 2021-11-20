// Author: Thomas Haese
// Charité - Universitätsmedizin Berlin

Profile: Pharyngitis
Parent: $gecco-base-condition
Id: symptom-pharyngitis
Title: "Pharyngitis"
Description: "Profile for symptom pharyngitis in the context of GECCO+"

* insert napkon-metadata(2021-11-19, #draft, 0.1.0)

* category.coding ^slicing.discriminator[0].type = #pattern
* category.coding ^slicing.discriminator[0].path = "$this"
* category.coding ^slicing.rules = #open
* category.coding contains sct 1..1
* category.coding[sct] = $sct#405737000 "Pharyngitis (disorder)"

* code.coding[sct] from $yes-no-unknown (required)
