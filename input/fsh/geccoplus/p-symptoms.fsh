// Author: Thomas Haese
// Charité - Universitätsmedizin Berlin
Profile: Symptoms
Parent: $gecco-base-condition
Id: symptoms-geccoplus
Title: "Symptoms"
Description: "Symptoms in the context of GECCO+"
* insert napkon-metadata(2021-11-29, #draft, 0.1.0)
* category 1.. MS
  * coding MS
  * coding ^slicing.discriminator.type = #pattern
  * coding ^slicing.discriminator.path = "$this"
  * coding ^slicing.rules = #open
  * coding contains symptoms 1..1 MS
  * coding[symptoms] = $loinc#75325-1 "Symptom"
  * coding[symptoms].system 1.. MS
  * coding[symptoms].code 1.. MS
* severity MS
* severity from $condition-severity (preferred)
* code.coding[icd10-gm] from SymptomsICD (required)
* code.coding[sct] from SymptomsSCT (required)

//Instances
Instance: instance-symptoms-confirmed
InstanceOf: symptoms-geccoplus
Usage: #example
Title: "Instance of profile symptoms in the context of geccoplus"
Description: "Example of symptoms with snomed coding"
* code.coding[sct] = $sct#404640003 "Dizziness (finding)"
* severity = $sct#24484000 "Severe (severity modifier) (qualifier value)"
* subject = Reference(ExamplePatient)
* recordedDate = "2021-11-29"
* verificationStatus.coding[conditionVerificationStatus] = $cs-condition-ver-status#confirmed
* verificationStatus.coding[snomed] = $sct#410605003 "Confirmed present (qualifier value)"

Instance: instance-symptoms-refuted
InstanceOf: symptoms-geccoplus
Usage: #example
Title: "Instance of profile symptoms in the context of geccoplus"
Description: "Example of symptoms with snomed coding"
* code.coding[sct] = $sct#64531003 "Nasal discharge (finding)"
* subject = Reference(ExamplePatient)
* recordedDate = "2021-11-29"
* verificationStatus.coding[conditionVerificationStatus] = $cs-condition-ver-status#refuted
* verificationStatus.coding[snomed] = $sct#410594000 "Definitely NOT present (qualifier value)"

Instance: instance-symptoms-unknown
InstanceOf: symptoms-geccoplus
Usage: #example
Title: "Instance of profile symptoms in the context of geccoplus"
Description: "Example of symptoms with snomed coding"
* code = $sct#405737000 "Pharyngitis (disorder)"
* subject = Reference(ExamplePatient)
* recordedDate = "2021-11-29"
* insert uncertainty-of-presence
