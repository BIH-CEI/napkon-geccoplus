// Author: Gregor Lichtner, Larissa Röhrig
// Berlin Institute of Health | Charité
Profile: UrineUrobilinogen
Parent: Observation
Id: geccoplus-urine-urobilinogen
Title: "Urine Urobilinogen"
Description: "Urine urobilinogen"
* insert napkon-metadata(2021-12-01, #draft, 0.1.0)
* insert mii-patient-reference
* status MS
* category 1..* MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains laboratory 1..1
* category[laboratory] = $cs-observation-category#laboratory "Laboratory"
* code 1..1 MS
  * coding ^slicing.discriminator[0].type = #pattern
  * coding ^slicing.discriminator[0].path = "$this"
  * coding ^slicing.rules = #open
  * coding contains loinc 1..*
  * coding[loinc] from UrobilinogenDiagnostics (required)
  * coding[loinc].system 1..
  * coding[loinc].code 1..
* interpretation 1..* MS
* interpretation from UrobilinogenInterpretation (extensible)
* effective[x] 1..1 MS

Instance: UrobilinogenPathologic
InstanceOf: geccoplus-urine-urobilinogen
Usage: #example
Title: "Urobilinogen Pathologic"
Description: "Example of a pathologic urine urobilinogen observation"
* status = #registered
* code = $loinc#3107-0 "Urobilinogen [Mass/volume] in Urine"
* subject = Reference(ExamplePatient)
* valueQuantity = 2.3 'mg/dl'
* effectiveDateTime = "2021-12-06"
* interpretation = $cs-observation-interpretation#NEG "Negative"

Instance: UrobilinogenNormal
InstanceOf: geccoplus-urine-urobilinogen
Usage: #example
Title: "Urobilinogen Normal"
Description: "Example of a normal urine urobilinogen observation"
* status = #registered
* code = $loinc#34927-4 "Urobilinogen [Moles/volume] in Urine"
* subject = Reference(ExamplePatient)
* valueQuantity = 14.3 'umol/l'
* effectiveDateTime = "2021-12-06"
* interpretation = $cs-observation-interpretation#POS "Positive"
