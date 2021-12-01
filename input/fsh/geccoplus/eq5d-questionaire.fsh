// Author: Thomas Haese
// Charité - Universitätsmedizin Berlin

Instance: Eq5dQuestionaire
InstanceOf: Questionnaire
Usage: #definition
Title: "Eq5d"
Description: "Official questionaire EQ5D in the context of GECCO+"

* insert napkon-metadata-instance(2021-11-22, #draft, 0.1.0)

* url = $eq5d-questionaire-url
* name = "Eq5dQuestionaire"
* status = #draft

//Section One "Agility and mobility"
* item[+].linkId = "mobility"
* item[=].code = $ngp#s1 "Agility and mobility"
* item[=].type = #choice
* item[=].answerValueSet = Canonical(eq5d-s1-geccoplus)

//Section Two "Self-sufficiency"
* item[+].linkId = "self-sufficiency"
* item[=].code = $ngp#s2 "Taking care of yourself"
* item[=].type = #choice
* item[=].answerValueSet = Canonical(eq5d-s2-geccoplus)

//Section Three "Daily activities"
* item[+].linkId = "daily-activities"
* item[=].code = $ngp#s3 "Daily activities"
* item[=].type = #choice
* item[=].answerValueSet = Canonical(Eq5dS3Geccoplus)

//Section Four "Pain and discomfort"
* item[+].linkId = "pain-discomfort"
* item[=].code = $ngp#s4 "Pain and discomfort"
* item[=].type = #choice
* item[=].answerValueSet = Canonical(eq5d-s4-geccoplus)

//Section Five "Anxiety and depression"
* item[+].linkId = "anxiety-depression"
* item[=].code = $ngp#s5 "Anxiety and depression"
* item[=].type = #choice
* item[=].answerValueSet = Canonical(eq5d-s5-geccoplus)


Profile: Eq5d
Parent: QuestionnaireResponse
Id: eq5d-profile
Title: "EQ5D"
Description: "Response to the created EQ5D Questionnaire"
* insert napkon-metadata(2021-11-25, #draft, 0.1.0)
* insert mii-patient-reference
* questionnaire 1..1
* questionnaire = $eq5d-questionaire-url
* status = #completed

Instance: EQ5D-section-one
InstanceOf: eq5d-profile
Usage: #example
Title: "EQ5D section one"
Description: "Example as part of an answer to the EQ5D questionnaire."

* item[+].linkId = "mobility"
* item[=].answer.valueCoding = $ngp#14 "I have severe problems in walking about."
* subject = Reference(ExamplePatient)

Instance: EQ5D-section-two
InstanceOf: eq5d-profile
Usage: #example
Title: "EQ5D section two"
Description: "Example as part of an answer to the EQ5D questionnaire."

* item[+].linkId = "self-sufficiency"
* item[=].answer.valueCoding = $ngp#22 "I have slight problems washing or dressing myself."
* subject = Reference(ExamplePatient)

Instance: EQ5D-section-three
InstanceOf: eq5d-profile
Usage: #example
Title: "EQ5D section three"
Description: "Example as part of an answer to the EQ5D questionnaire."

* item[+].linkId = "daily-activities"
* item[=].answer.valueCoding = $ngp#33 "I have moderate problems doing my usual activities."
* subject = Reference(ExamplePatient)

Instance: EQ5D-section-four
InstanceOf: eq5d-profile
Usage: #example
Title: "EQ5D section four"
Description: "Example as part of an answer to the EQ5D questionnaire."

* item[+].linkId = "pain-discomfort"
* item[=].answer.valueCoding = $ngp#41 "I have no pain or discomfort."
* subject = Reference(ExamplePatient)

Instance: EQ5D-section-five
InstanceOf: eq5d-profile
Usage: #example
Title: "EQ5D section five"
Description: "Example as part of an answer to the EQ5D questionnaire."

* item[+].linkId = "anxiety-depression"
* item[=].answer.valueCoding = $ngp#55 "I am extremely anxious or depressed."
* subject = Reference(ExamplePatient)