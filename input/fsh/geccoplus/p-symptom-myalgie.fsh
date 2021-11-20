// Author: Thomas Haese
// Charité - Universitätsmedizin Berlin

Profile: Myalgie
Parent: $gecco-base-condition
Id: symptom-myalgie
Title: "Myalgie"
Description: "Profile for symptom myalgie in the context of GECCO+"

* insert napkon-metadata(2021-11-19, #draft, 0.1.0)

* category.coding ^slicing.discriminator[0].type = #pattern
* category.coding ^slicing.discriminator[0].path = "$this"
* category.coding ^slicing.rules = #open
* category.coding contains sct 1..1
* category.coding[sct] = $sct#68962001 "Muscle pain (finding)"

* code.coding[sct] from $yes-no-unknown (required)
