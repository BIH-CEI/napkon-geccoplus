// Author: Thomas Haese
// Charité - Universitätsmedizin Berlin

// Profile
Profile: Myalgie
Parent: $gecco-base-condition
Id: symptom-myalgie
Title: "Myalgie"
Description: "Profile for symptom myalgie in the context of GECCO+"

* insert napkon-metadata(2021-11-19, #draft, 0.1.0)

* code.coding[sct] = $sct#68962001 "Muscle pain (finding)"
//* code.coding[icd10-gm] = $icd10-gm#M79.19 "Myalgie : Nicht näher bezeichnete Lokalisation"

// Instances

// Instance if presence of myalgie is unknown
Instance: myalgie-unknown-sct
InstanceOf: symptom-myalgie
Usage: #example
Title: "Myalgie - unknown"
Description: "Example for myalgie with status 'unknown'"

* modifierExtension.url = "https://www.netzwerk-universitaetsmedizin.de/fhir/StructureDefinition/uncertainty-of-presence"
* modifierExtension.valueCodeableConcept = $sct#261665006 "Unknown (qualifier value)"
* modifierExtension.valueCodeableConcept.text = "Presence of condition is unknown."
* code = $sct#68962001 "Muscle pain (finding)"
* subject = Reference(ExamplePatient)
* recordedDate = "2021-11-22"

// Instance if presence of myalgie is definitly not confirmed
Instance: myalgie-unconfirmed-sct
InstanceOf: symptom-myalgie
Usage: #example
Title: "Myalgie - unconfirmed"
Description: "Example for myalgie with status 'not confirmed'"

* verificationStatus.coding[conditionVerificationStatus] = $cs-condition-ver-status#refuted "Refuted"
* verificationStatus.coding[snomed] = $sct#410594000 "Definitely NOT present (qualifier value)"
* code = $sct#68962001 "Muscle pain (finding)"
* subject = Reference(ExamplePatient)
* recordedDate = "2021-11-22"

// Instance if presence of myalgie is confirmed
Instance: myalgie-confirmed-sct
InstanceOf: symptom-myalgie
Usage: #example
Title: "Myalgie - confirmed"
Description: "Example for myalgie with status 'confirmed'"

* verificationStatus.coding[conditionVerificationStatus] = $cs-condition-ver-status#confirmed "Confirmed"
* verificationStatus.coding[snomed] = $sct#410605003 "Confirmed present (qualifier value)"
* code = $sct#68962001 "Muscle pain (finding)"
* subject = Reference(ExamplePatient)
* recordedDate = "2021-11-22"