// Author: Thomas Haese
// Charité - Universitätsmedizin Berlin
Instance: PROMsQuestionnaire
InstanceOf: Questionnaire
Usage: #definition
Title: "PROMs Questionnaire"
Description: "PROMs questionnaire in the context of GECCO+"
* insert napkon-metadata-instance(2021-11-29, #active, 1.0.0)
* url = $proms-questionaire-url
* name = "PROMsQuestionnaire"
* status = #active
* item[+].linkId = "question1"
* item[=].code = $ngp#s6 "Lift something that weighs 4.5kg - 9.0kg (e.g. a large bag of food)."
* item[=].type = #choice
* item[=].answerValueSet = Canonical(geccoplus-proms-responses)
* item[+].linkId = "question2"
* item[=].code = $ngp#s7 "Carrying something that weighs 4.5kg - 9.0 kg (e.g. a large bag of food) from one room to another room."
* item[=].type = #choice
* item[=].answerValueSet = Canonical(geccoplus-proms-responses)
* item[+].linkId = "question3"
* item[=].code = $ngp#s8 "Walk approximately 1 km (faster than your normal pace) without stopping."
* item[=].type = #choice
* item[=].answerValueSet = Canonical(geccoplus-proms-responses)
* item[+].linkId = "question4"
* item[=].code = $ngp#s9 "Walk 50 steps on level ground at a normal pace without stopping."
* item[=].type = #choice
* item[=].answerValueSet = Canonical(geccoplus-proms-responses)
* item[+].linkId = "question5"
* item[=].code = $ngp#s10 "Walk up 20 steps or two flights of stairs without stopping."
* item[=].type = #choice
* item[=].answerValueSet = Canonical(geccoplus-proms-responses)
* item[+].linkId = "question6"
* item[=].code = $ngp#s11 "Sweep or mop the floor."
* item[=].type = #choice
* item[=].answerValueSet = Canonical(geccoplus-proms-responses)
* item[+].linkId = "question7"
* item[=].code = $ngp#s12 "Dressing without help."
* item[=].type = #choice
* item[=].answerValueSet = Canonical(geccoplus-proms-responses)
* item[+].linkId = "question8"
* item[=].code = $ngp#s13 "Preparing meals."
* item[=].type = #choice
* item[=].answerValueSet = Canonical(geccoplus-proms-responses)
* item[+].linkId = "question9"
* item[=].code = $ngp#s14 "Washing dishes."
* item[=].type = #choice
* item[=].answerValueSet = Canonical(geccoplus-proms-responses)
* item[+].linkId = "question10"
* item[=].code = $ngp#s15 "Making a bed."
* item[=].type = #choice
* item[=].answerValueSet = Canonical(geccoplus-proms-responses)

Profile: PROMsResponse
Parent: QuestionnaireResponse
Id: geccoplus-proms-response
Title: "PROMS Response"
Description: "Response to the PROMs questionnaire"
* insert napkon-metadata(2021-11-30, #active, 1.0.0)
* insert mii-patient-reference
* questionnaire 1..1
* questionnaire = $proms-questionaire-url
* status = #completed

Instance: PROMSExample
InstanceOf: geccoplus-proms-response
Usage: #example
Title: "PROMs Questionnaire example responses"
Description: "Example as part of an answer to the PROMs questionnaire."
* subject = Reference(ExamplePatient)
* item[+].linkId = "question1"
* item[=].answer.valueCoding = $ngp#64 "Severe difficulties."
* item[+].linkId = "question4"
* item[=].answer.valueCoding = $ngp#65 "I haven't done this in the past 7 days."
* item[+].linkId = "question7"
* item[=].answer.valueCoding = $ngp#61 "No difficulties."
