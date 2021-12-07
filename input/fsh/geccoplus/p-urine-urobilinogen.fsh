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
* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept from NormalPathologic (extensible)

Instance: UrobilinogenPathologic
InstanceOf: geccoplus-urine-urobilinogen
Usage: #example
Title: "Urobilinogen Pathologic"
Description: "Example of a pathologic urine urobilinogen observation"
* status = #registered
* code = $loinc#5818-0 "Urobilinogen [Presence] in Urine by Test strip"
* subject = Reference(ExamplePatient)
* valueCodeableConcept = $sct#29458008 "Pathologic (qualifier value)"
* effectiveDateTime = "2021-12-06"
* interpretation = $sct#29458008 "Pathologic (qualifier value)"

Instance: UrobilinogenNormal
InstanceOf: geccoplus-urine-urobilinogen
Usage: #example
Title: "Urobilinogen Normal"
Description: "Example of a normal urine urobilinogen observation"
* status = #registered
* code = $loinc#13658-0 "Urobilinogen [Presence] in Urine"
* subject = Reference(ExamplePatient)
* valueCodeableConcept = $sct#17621005 "Normal (qualifier value)"
* effectiveDateTime = "2021-12-06"
* interpretation = $sct#17621005 "Normal (qualifier value)"
