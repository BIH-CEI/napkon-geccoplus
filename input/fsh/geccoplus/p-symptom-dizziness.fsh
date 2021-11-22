// Author: Thomas Haese
// Charité - Universitätsmedizin Berlin

Profile: Dizziness 
Parent: $gecco-base-condition
Id: symptom-dizziness 
Title: "Dizziness"
Description: "Profile for symptom dizziness in the context of GECCO+"

* insert napkon-metadata(2021-11-19, #draft, 0.1.0)

* code.coding[sct] = $sct#404640003 "Dizziness (finding)"
//* code.coding[icd10-gm] = $icd10-gm#R42 "Schwindel und Taumel"

// Instances

// Instance if presence of dizziness is unknown
Instance: dizziness-unknown-sct
InstanceOf: symptom-dizziness
Usage: #example
Title: "Dizziness - unknown"
Description: "Example for dizziness with status 'unknown'"

* modifierExtension.url = "https://www.netzwerk-universitaetsmedizin.de/fhir/StructureDefinition/uncertainty-of-presence"
* modifierExtension.valueCodeableConcept = $sct#261665006 "Unknown (qualifier value)"
* modifierExtension.valueCodeableConcept.text = "Presence of condition is unknown."
* code = $sct#404640003 "Dizziness (finding)"
* subject = Reference(ExamplePatient)
* recordedDate = "2021-11-22"

// Instance if presence of dizziness is definitly not confirmed
Instance: dizziness-unconfirmed-sct
InstanceOf: symptom-dizziness
Usage: #example
Title: "Dizziness - unconfirmed"
Description: "Example for dizziness with status 'not confirmed'"

* verificationStatus.coding[conditionVerificationStatus] = $cs-condition-ver-status#refuted "Refuted"
* verificationStatus.coding[snomed] = $sct#410594000 "Definitely NOT present (qualifier value)"
* code = $sct#404640003 "Dizziness (finding)"
* subject = Reference(ExamplePatient)
* recordedDate = "2021-11-22"

// Instance if presence of dizziness is confirmed
Instance: dizziness-confirmed-sct
InstanceOf: symptom-dizziness
Usage: #example
Title: "Dizziness - confirmed"
Description: "Example for dizziness with status 'confirmed'"

* verificationStatus.coding[conditionVerificationStatus] = $cs-condition-ver-status#confirmed "Confirmed"
* verificationStatus.coding[snomed] = $sct#410605003 "Confirmed present (qualifier value)"
* code = $sct#404640003 "Dizziness (finding)"
* subject = Reference(ExamplePatient)
* recordedDate = "2021-11-22"