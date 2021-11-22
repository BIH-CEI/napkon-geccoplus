// Author: Thomas Haese
// Charité - Universitätsmedizin Berlin

Profile: HouseDustAllergy
Parent: $gecco-base-condition
Id: house-dust-allergy
Title: "House Dust Allergy"
Description: "Profile for house dust allergy in the context of GECCO+"

* insert napkon-metadata(2021-11-19, #draft, 0.1.0)

* code.coding[sct] = $sct##232349006 "Allergy to house dust (finding)"
//* code.coding[icd10-gm] = $icd10-gm#J30.3 "Sonstige allergische Rhinopathie"

// Instances

// Instance if presence of house dust allergy is unknown
Instance: house-dust-allergy-unknown-sct
InstanceOf: house-dust-allergy
Usage: #example
Title: "House dust allergy - unknown"
Description: "Example for house dust allergy with status 'unknown'"

* modifierExtension.url = "https://www.netzwerk-universitaetsmedizin.de/fhir/StructureDefinition/uncertainty-of-presence"
* modifierExtension.valueCodeableConcept = $sct#261665006 "Unknown (qualifier value)"
* modifierExtension.valueCodeableConcept.text = "Presence of condition is unknown."
* code = $sct##232349006 "Allergy to house dust (finding)"
* subject = Reference(ExamplePatient)
* recordedDate = "2021-11-22"

// Instance if presence of house dust allergy is definitly not confirmed
Instance: house-dust-allergy-unconfirmed-sct
InstanceOf: house-dust-allergy
Usage: #example
Title: "House dust allergy - unconfirmed"
Description: "Example for house dust allergy with status 'not confirmed'"

* verificationStatus.coding[conditionVerificationStatus] = $cs-condition-ver-status#refuted "Refuted"
* verificationStatus.coding[snomed] = $sct#410594000 "Definitely NOT present (qualifier value)"
* code = $sct##232349006 "Allergy to house dust (finding)"
* subject = Reference(ExamplePatient)
* recordedDate = "2021-11-22"

// Instance if presence of house dust allergy is confirmed
Instance: house-dust-allergy-confirmed-sct
InstanceOf: house-dust-allergy
Usage: #example
Title: "House dust allergy - confirmed"
Description: "Example for house dust allergy with status 'confirmed'"

* verificationStatus.coding[conditionVerificationStatus] = $cs-condition-ver-status#confirmed "Confirmed"
* verificationStatus.coding[snomed] = $sct#410605003 "Confirmed present (qualifier value)"
* code = $sct##232349006 "Allergy to house dust (finding)"
* subject = Reference(ExamplePatient)
* recordedDate = "2021-11-22"