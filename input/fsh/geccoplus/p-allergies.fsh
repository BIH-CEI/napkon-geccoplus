// Author: Thomas Haese
// Charité - Universitätsmedizin Berlin
Profile: Allergies
Parent: $gecco-base-condition
Id: geccoplus-allergy
Title: "Allergies"
Description: "Profile for allergies in the context of GECCO+"
* insert napkon-metadata(2021-11-29, #active, 1.0.0)
* category 1.. MS
  * coding MS
  * coding ^slicing.discriminator.type = #pattern
  * coding ^slicing.discriminator.path = "$this"
  * coding ^slicing.rules = #open
  * coding contains immunology 1..1 MS
  * coding[immunology] = $sct#394805004 "Clinical immunology/allergy (qualifier value)"
  * coding[immunology].system 1.. MS
  * coding[immunology].code 1.. MS
* code.coding[icd10-gm] from AllergiesICD (required)
* code.coding[sct] from AllergiesSCT (required)
* code obeys codeable-concept-text-present-if-code-other

Instance: instance-allergies-confirmed
InstanceOf: geccoplus-allergy
Usage: #example
Title: "Instance of profile allergies with expression -confirmed- in the context of geccoplus."
Description: "Example of allergies with snomed coding"
* code.coding[sct] = $sct#300910009 "Allergy to pollen (finding)"
* subject = Reference(ExamplePatient)
* recordedDate = "2021-11-29"
* verificationStatus.coding[conditionVerificationStatus] = $cs-condition-ver-status#confirmed
* verificationStatus.coding[snomed] = $sct#410605003 "Confirmed present (qualifier value)"

Instance: instance-allergies-refuted
InstanceOf: geccoplus-allergy
Usage: #example
Title: "Instance of profile allergies with expression -refuted- in the context of geccoplus."
Description: "Example of allergies with snomed coding"
* code.coding[sct] = $sct#232349006 "Allergy to house dust (finding)"
* subject = Reference(ExamplePatient)
* recordedDate = "2021-11-29"
* verificationStatus.coding[conditionVerificationStatus] = $cs-condition-ver-status#refuted
* verificationStatus.coding[snomed] = $sct#410594000 "Definitely NOT present (qualifier value)"

Instance: instance-allergies-unknown
InstanceOf: geccoplus-allergy
Usage: #example
Title: "Instance of profile allergies with expression -unknown- in the context of geccoplus."
Description: "Example of allergies with snomed coding"
* code.coding = $sct#74964007 "Other (qualifier value)"
* code.text = "Arzneimittelallergie"
* subject = Reference(ExamplePatient)
* recordedDate = "2021-11-29"
* insert uncertainty-of-presence
