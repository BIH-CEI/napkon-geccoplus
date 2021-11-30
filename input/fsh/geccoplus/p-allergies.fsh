// Author: Thomas Haese
// Charité - Universitätsmedizin Berlin

Profile: Allergies
Parent: $gecco-base-condition
Id: allergies-geccoplus
Title: "Allergies"
Description: "Profile for allergies in the context of GECCO+"

* insert napkon-metadata(2021-11-29, #draft, 0.1.0)
* category 1.. MS
  * coding MS
  * coding ^slicing.discriminator.type = #pattern
  * coding ^slicing.discriminator.path = "$this"
  * coding ^slicing.rules = #open
  * coding contains allergicDisposition 1..1 MS
  * coding[allergicDisposition] = $sct#609328004 "Allergic disposition (finding)"
  * coding[allergicDisposition].system 1.. MS
  * coding[allergicDisposition].code 1.. MS
* code.coding[icd10-gm] from AllergiesICD (required)
* code.coding[sct] from AllergiesSCT (required)
* code.text = "String"

//Instances
Instance: instance-allergies-confirmed
InstanceOf: allergies-geccoplus
Usage: #example
Title: "Instance of profile allergies with expression -confirmed- in the context of geccoplus."
Description: "Example of allergies with snomed coding"
* code.coding[sct] = $sct#404640003 "Dizziness (finding)"
* subject = Reference(ExamplePatient)
* recordedDate = "2021-11-29"
* verificationStatus.coding[conditionVerificationStatus] = $cs-condition-ver-status#confirmed
* verificationStatus.coding[snomed] = $sct#232349006 "Confirmed present (qualifier value)"

Instance: instance-allergies-refuted
InstanceOf: allergies-geccoplus
Usage: #example
Title: "Instance of profile allergies with expression -refuted- in the context of geccoplus."
Description: "Example of allergies with snomed coding"
* code.coding[sct] = $sct#64531003 "Nasal discharge (finding)"
* subject = Reference(ExamplePatient)
* recordedDate = "2021-11-29"
* verificationStatus.coding[conditionVerificationStatus] = $cs-condition-ver-status#refuted
* verificationStatus.coding[snomed] = $sct#300910009 "Definitely NOT present (qualifier value)"

Instance: instance-allergies-unknown
InstanceOf: allergies-geccoplus
Usage: #example
Title: "Instance of profile allergies with expression -unknown- in the context of geccoplus."
Description: "Example of allergies with snomed coding"
//* code = $sct#74964007 "Other (qualifier value)"
* valueCodeableConcept.text = "Arzneimittelallergie"
* subject = Reference(ExamplePatient)
* recordedDate = "2021-11-29"
* insert uncertainty-of-presence