// Author: Thomas Haese
// Charité - Universitätsmedizin Berlin

Profile: Pharyngitis
Parent: $gecco-base-condition
Id: symptom-pharyngitis
Title: "Pharyngitis"
Description: "Profile for symptom pharyngitis in the context of GECCO+"

* insert napkon-metadata(2021-11-19, #draft, 0.1.0)

* code.coding[sct] = $sct#405737000 "Pharyngitis (disorder)"
//* code.coding[icd10-gm] = $icd10-gm#J02.9 "Akute Pharyngitis, nicht näher bezeichnet"

// Instances

// Instance if presence of pharyngitis is unknown
Instance: pharyngitis-unknown-sct
InstanceOf: symptom-pharyngitis
Usage: #example
Title: "Pharyngitis - unknown"
Description: "Example for pharyngitis with status 'unknown'"

* modifierExtension.url = "https://www.netzwerk-universitaetsmedizin.de/fhir/StructureDefinition/uncertainty-of-presence"
* modifierExtension.valueCodeableConcept = $sct#261665006 "Unknown (qualifier value)"
* modifierExtension.valueCodeableConcept.text = "Presence of condition is unknown."
* code = $sct#405737000 "Pharyngitis (disorder)"
* subject = Reference(ExamplePatient)
* recordedDate = "2021-11-22"

// Instance if presence of pharyngitis is definitly not confirmed
Instance: pharyngitis-unconfirmed-sct
InstanceOf: symptom-pharyngitis
Usage: #example
Title: "Pharyngitis - unconfirmed"
Description: "Example for pharyngitis with status 'not confirmed'"

* verificationStatus.coding[conditionVerificationStatus] = $cs-condition-ver-status#refuted "Refuted"
* verificationStatus.coding[snomed] = $sct#410594000 "Definitely NOT present (qualifier value)"
* code = $sct#405737000 "Pharyngitis (disorder)"
* subject = Reference(ExamplePatient)
* recordedDate = "2021-11-22"

// Instance if presence of pharyngitis is confirmed
Instance: pharyngitis-confirmed-sct
InstanceOf: symptom-pharyngitis
Usage: #example
Title: "Pharyngitis - confirmed"
Description: "Example for pharyngitis with status 'confirmed'"

* verificationStatus.coding[conditionVerificationStatus] = $cs-condition-ver-status#confirmed "Confirmed"
* verificationStatus.coding[snomed] = $sct#410605003 "Confirmed present (qualifier value)"
* code = $sct#405737000 "Pharyngitis (disorder)"
* subject = Reference(ExamplePatient)
* recordedDate = "2021-11-22"
