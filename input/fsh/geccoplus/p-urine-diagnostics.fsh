// Author: Larissa Röhrig, Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: UrineDiagnostics
Parent: Observation
Id: geccoplus-urine-diagnostics
Title: "Urine Diagnostics"
Description: "Urine diagnostics"
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
  * coding[loinc] from urine-diagnostics (required)
  * coding[loinc].system 1..
  * coding[loinc].code 1..
* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept from PositiveNegative (required)
* effective[x] 1..1 MS

Instance: UrineDiagnosticsNoKetonesExample
InstanceOf: geccoplus-urine-diagnostics
Usage: #example
Title: "Urine Diagnostics No Ketones Example"
Description: "Confirmed absence of ketones in urine"
* status = #registered
* code = $loinc#33903-6	"Ketones [Presence] in Urine"
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2021-12-06"
* valueCodeableConcept = $sct#10828004 "Positive (qualifier value)"

Instance: UrineDiagnosticsNitriteExample
InstanceOf: geccoplus-urine-diagnostics
Usage: #example
Title: "Urine Diagnostics Example"
Description: "Confirmed presence of nitrite in urine"
* status = #registered
* code = $loinc#32710-6 "Nitrite [Presence] in Urine"
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2021-12-06"
* valueCodeableConcept = $sct#260385009 "Negative (qualifier value)"
