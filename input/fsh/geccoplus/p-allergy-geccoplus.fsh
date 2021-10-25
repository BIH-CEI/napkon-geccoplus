// Author: Thomas Haese (THA)

Profile: AllergiesGeccoplus
Parent: Condition
Id: allergies
Title: "Allergies"
Description: "Profile for allergies in the context of GECCO+"

* insert napkon-metadata(2021-10-11, #draft, 0.1.0)

* category.coding ^slicing.discriminator[0].type = #pattern
* category.coding ^slicing.discriminator[0].path = "$this"
* category.coding ^slicing.rules = #open
* category.coding contains sct 1..1
* category.coding[sct] = $sct#609328004 "Allergic disposition (finding)"
* code.coding ^slicing.discriminator[0].type = #pattern
* code.coding ^slicing.discriminator[0].path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains sct 1..1
* code.coding[sct] from $allergy-sct (required)
* subject only Reference(Patient)

Instance: instance-allergies
InstanceOf: allergies
Usage: #example
Title: "allergies-instance"
Description: "Example of a allergy"
* code = $sct#300910009 "Allergy to pollen (finding)"
* subject = Reference(ExamplePatient)
