// Author: Thomas Haese
// Charité - Universitätsmedizin Berlin

Profile: ChestPain
Parent: $gecco-base-condition
Id: symptom-chest-pain
Title: "Chest pain"
Description: "Profile for symptom chest pain in the context of GECCO+"

* insert napkon-metadata(2021-11-19, #draft, 0.1.0)

* code.coding[sct] = $sct#29857009 "Chest pain (finding)"
//* code.coding[icd10-gm] = $icd10-gm#R07.4 "Brustschmerzen, nicht näher bezeichnet"

// Instances

// Instance if presence of chest pain is unknown
Instance: chest-pain-unknown-sct
InstanceOf: symptom-chest-pain
Usage: #example
Title: "Chest pain - unknown"
Description: "Example for chest pain with status 'unknown'"

* modifierExtension.url = "https://www.netzwerk-universitaetsmedizin.de/fhir/StructureDefinition/uncertainty-of-presence"
* modifierExtension.valueCodeableConcept = $sct#261665006 "Unknown (qualifier value)"
* modifierExtension.valueCodeableConcept.text = "Presence of condition is unknown."
* code = $sct#29857009 "Chest pain (finding)"
* subject = Reference(ExamplePatient)
* recordedDate = "2021-11-22"

// Instance if presence of chest pain is definitly not confirmed
Instance: chest-pain-unconfirmed-sct
InstanceOf: symptom-chest-pain
Usage: #example
Title: "Chest pain - unconfirmed"
Description: "Example for chest pain with status 'not confirmed'"

* verificationStatus.coding[conditionVerificationStatus] = $cs-condition-ver-status#refuted "Refuted"
* verificationStatus.coding[snomed] = $sct#410594000 "Definitely NOT present (qualifier value)"
* code = $sct#29857009 "Chest pain (finding)"
* subject = Reference(ExamplePatient)
* recordedDate = "2021-11-22"

// Instance if presence of chest pain is confirmed
Instance: chest-pain-confirmed-sct
InstanceOf: symptom-chest-pain
Usage: #example
Title: "Chest pain - confirmed"
Description: "Example for chest pain with status 'confirmed'"

* verificationStatus.coding[conditionVerificationStatus] = $cs-condition-ver-status#confirmed "Confirmed"
* verificationStatus.coding[snomed] = $sct#410605003 "Confirmed present (qualifier value)"
* code = $sct#29857009 "Chest pain (finding)"
* subject = Reference(ExamplePatient)
* recordedDate = "2021-11-22"