// Author: Thomas Haese
// Charité - Universitätsmedizin Berlin

Profile: PollenAllergy
Parent: $gecco-base-condition
Id: pollen-allergy
Title: "Allergy to pollen"
Description: "Profile for allergy to pollen in the context of GECCO+"

* insert napkon-metadata(2021-11-19, #draft, 0.1.0)

* code.coding[sct] = $sct#300910009 "Allergy to pollen (finding)"
//* code.coding[icd10-gm] = $icd10-gm#J30.1 "Allergische Rhinopathie durch Pollen"

// Instances

// Instance if presence of pollen allergy is unknown
Instance: pollen-allergy-unknown-sct
InstanceOf: pollen-allergy
Usage: #example
Title: "Pollen allergy - unknown"
Description: "Example for pollen allergy with status 'unknown'"

* modifierExtension.url = "https://www.netzwerk-universitaetsmedizin.de/fhir/StructureDefinition/uncertainty-of-presence"
* modifierExtension.valueCodeableConcept = $sct#261665006 "Unknown (qualifier value)"
* modifierExtension.valueCodeableConcept.text = "Presence of condition is unknown."
* code = $sct#300910009 "Allergy to pollen (finding)"
* subject = Reference(ExamplePatient)
* recordedDate = "2021-11-22"

// Instance if presence of pollen allergy is definitly not confirmed
Instance: pollen-allergy-unconfirmed-sct
InstanceOf: pollen-allergy
Usage: #example
Title: "Pollen allergy - unconfirmed"
Description: "Example for pollen allergy with status 'not confirmed'"

* verificationStatus.coding[conditionVerificationStatus] = $cs-condition-ver-status#refuted "Refuted"
* verificationStatus.coding[snomed] = $sct#410594000 "Definitely NOT present (qualifier value)"
* code = $sct#300910009 "Allergy to pollen (finding)"
* subject = Reference(ExamplePatient)
* recordedDate = "2021-11-22"

// Instance if presence of pollen allergy is confirmed
Instance: pollen-allergy-confirmed-sct
InstanceOf: pollen-allergy
Usage: #example
Title: "Pollen allergy - confirmed"
Description: "Example for pollen allergy with status 'confirmed'"

* verificationStatus.coding[conditionVerificationStatus] = $cs-condition-ver-status#confirmed "Confirmed"
* verificationStatus.coding[snomed] = $sct#410605003 "Confirmed present (qualifier value)"
* code = $sct#300910009 "Allergy to pollen (finding)"
* subject = Reference(ExamplePatient)
* recordedDate = "2021-11-22"