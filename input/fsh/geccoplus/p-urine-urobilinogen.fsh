/*// Author: Larissa Röhrig
// Berlin Institute of Health | Charité
Profile:  UrineLaboratoryDiagnosticUrobilinogen
Parent: Observation
Id: urine-laboratory-diagnostic-urobilinogen
Title: "Urine Laboratory Diagnostic Urobilinogen	 "
Description: "All laboratory findings for urine"
* insert napkon-metadata(2021-11-29, #draft, 0.1.0)
* category
  * coding ^slicing.discriminator[0].type = #pattern
  * coding ^slicing.discriminator[0].path = "$this"
  * coding ^slicing.rules = #open
  * coding contains laboratory 1..*
  * coding[laboratory] = $cs-observation-category#laboratory // aus dem observation profil von fhir laboratory code
* code.coding[loinc] from urine-laboratory-diagnostic-loinc-urobilinogen (required)
* code.interpretation[sct] from uriobilinogen-interrpretation-codes (required)

Instance: urine-laboratory-diagnostic-urobilinogen-example
InstanceOf: urine-laboratory-diagnostic-urobilinogen
Usage: #example
Title: "urine laboratory diagnostic instance urobilinogen"
Description: "Urine Laboratory Diagnostic Urobilinogen"
* code = $loinc32727-0 "Urobilinogen [Units/volume] in Urine"
* subject = Reference(ExamplePatient)
* recordedDate = "2021"
* interpretation = $sct#17621005  "Normal (qualifier value"
*/
