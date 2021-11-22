// Author: Thomas Haese
// Charité - Universitätsmedizin Berlin

Profile: Rhinorrhoea
Parent: $gecco-base-condition
Id: symptom-rhinorrhoea
Title: "Rhinorrhoea"
Description: "Profile for symptom rhinorrhoea in the context of GECCO+"

* insert napkon-metadata(2021-11-19, #draft, 0.1.0)

* code.coding[sct] = $sct#64531003 "Nasal discharge (finding)"
//* code.coding[icd10-gm] = $icd10-gm#J34.8 "Sonstige näher bezeichnete Krankheiten der Nase und der Nasennebenhöhlen"

// Instances

// Instance if presence of rhinorrhoea is unknown
Instance: rhinorrhoea-unknown-sct
InstanceOf: symptom-rhinorrhoea
Usage: #example
Title: "Rhinorrhoea - unknown"
Description: "Example for rhinorrhoea with status 'unknown'"

* modifierExtension.url = "https://www.netzwerk-universitaetsmedizin.de/fhir/StructureDefinition/uncertainty-of-presence"
* modifierExtension.valueCodeableConcept = $sct#261665006 "Unknown (qualifier value)"
* modifierExtension.valueCodeableConcept.text = "Presence of condition is unknown."
* code = $sct#64531003 "Nasal discharge (finding)"
* subject = Reference(ExamplePatient)
* recordedDate = "2021-11-22"

// Instance if presence of rhinorrhoea is definitly not confirmed
Instance: rhinorrhoea-unconfirmed-sct
InstanceOf: symptom-rhinorrhoea
Usage: #example
Title: "Rhinorrhoea - unconfirmed"
Description: "Example for rhinorrhoea with status 'not confirmed'"

* verificationStatus.coding[conditionVerificationStatus] = $cs-condition-ver-status#refuted "Refuted"
* verificationStatus.coding[snomed] = $sct#410594000 "Definitely NOT present (qualifier value)"
* code = $sct#64531003 "Nasal discharge (finding)"
* subject = Reference(ExamplePatient)
* recordedDate = "2021-11-22"

// Instance if presence of rhinorrhoea is confirmed
Instance: rhinorrhoea-confirmed-sct
InstanceOf: symptom-rhinorrhoea
Usage: #example
Title: "Rhinorrhoea - confirmed"
Description: "Example for rhinorrhoea with status 'confirmed'"

* verificationStatus.coding[conditionVerificationStatus] = $cs-condition-ver-status#confirmed "Confirmed"
* verificationStatus.coding[snomed] = $sct#410605003 "Confirmed present (qualifier value)"
* code = $sct#64531003 "Nasal discharge (finding)"
* subject = Reference(ExamplePatient)
* recordedDate = "2021-11-22"