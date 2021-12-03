Alias: $lab = http://terminology.hl7.org/CodeSystem/observation-category
// Author: Larissa Röhrig
// Berlin Institute of Health | Charité
Profile:  LaboratoryLoinc
Parent: Observation 
Id: laboratory-loinc
Title: "Laboratory Loinc"
Description: "All laboratory findings"
* insert napkon-metadata(2021-12-01, #draft, 0.1.0)
* category
  * coding ^slicing.discriminator[0].type = #pattern
  * coding ^slicing.discriminator[0].path = "$this"
  * coding ^slicing.rules = #open
  * coding contains loinc 1..*
  * coding[lab] = $lab#laboratory // aus dem observation profil von fhir laboratory code
* code.coding[loinc] from laboratory-loinc (required)
* code.interpretation[sct] from urine-interrpretation-codes (required)




Instance: laboratory-loinc-example
InstanceOf: laboratory-loinc
Usage: #example
Title: "laboratory instance"
Description: "Laboratory loinc finding"
* code = $loinc#33903-6	"Ketones [Presence] in Urine"
* subject = Reference(ExamplePatient)
* recordedDate = "2021"
* interpretation = $cs#NEG "Negative (qualifier value)"

