// Author: Thomas Haese
// Charité - Universitätsmedizin Berlin

Instance: PromsQuestionnaire
InstanceOf: Questionnaire
Usage: #definition
Title: "Proms"
Description: "PROMS in the context of GECCO+"

* insert napkon-metadata-instance(2021-11-29, #draft, 0.1.0)

* url = $proms-questionaire-url
* name = "Proms"
* status = #draft

* item[+]
    * linkId = "question1"
    * code = $ngp#s6 "Lift something that weighs 4,5kg - 9,0kg (e.g. a large bag of food)."
    * type = #choice
    * answerValueSet = Canonical(proms-geccoplus)
* item[+].
    * linkId = "question2"
    * code = $ngp#s7 "Carrying something that weighs 4.5kg - 9.0 kg (e.g. a large bag of food) from one room to another room."
    * type = #choice
    * answerValueSet = Canonical(proms-geccoplus)
* item[+]
    * linkId = "question3"
    * code = $ngp#s8 "Walk approximately 1 km (faster than your normal pace) without stopping."
    * type = #choice
    * answerValueSet = Canonical(proms-geccoplus)
* item[+]
    * linkId = "question4"
    * code = $ngp#s9 "Walk 50 steps on level ground at a normal pace without stopping."
    * type = #choice
    * answerValueSet = Canonical(proms-geccoplus)
* item[+]
    * linkId = "question5"
    * code = $ngp#s10 "Walk up 20 steps or two flights of stairs without stopping."
    * type = #choice
    * answerValueSet = Canonical(proms-geccoplus)
* item[+]
    * linkId = "question6"
    * code = $ngp#s11 "Sweep or mop the floor."
    * type = #choice
    * answerValueSet = Canonical(proms-geccoplus)
* item[+]
    * linkId = "question7"
    * code = $ngp#s12 "Dressing without help."
    * type = #choice
    * answerValueSet = Canonical(proms-geccoplus)
* item[+]
    * linkId = "question8"
    * code = $ngp#s13 "Preparing meals."
    * type = #choice
    * answerValueSet = Canonical(proms-geccoplus)
* item[+]
    * linkId = "question9"
    * code = $ngp#s14 "Washing dishes."
    * type = #choice
    * answerValueSet = Canonical(proms-geccoplus)
* item[+]
    * linkId = "question10"
    * code = $ngp#s15 "Making a bed."
    * type = #choice
    * answerValueSet = Canonical(proms-geccoplus)

//Instanzen
Profile: Proms
Parent: QuestionnaireResponse
Id: proms-profile
Title: "PROMS"
Description: "Response to the created PROMS"
* insert napkon-metadata(2021-11-30, #draft, 0.1.0)
* insert mii-patient-reference
* questionnaire 1..1
* questionnaire = $proms-questionaire-url
* status = #completed

Instance: PROMS-quesiton-one
InstanceOf: proms-profile
Usage: #example
Title: "PROMS question one"
Description: "Example as part of an answer to the PROMS questions one."

* item[+]
    * linkId = "Lift something that weighs 4.5kg - 9,0kg (e.g. a large bag of food)."
    * answer.valueCoding = $ngp#64 "Severe difficulties."
* subject = Reference(ExamplePatient)

Instance: PROMS-quesiton-seven
InstanceOf: proms-profile
Usage: #example
Title: "PROMS question seven"
Description: "Example as part of an answer to the PROMS questions seven."

* item[+]
    * linkId = "Dressing without help."
    * answer.valueCoding = $ngp#61 "No difficulties."
* subject = Reference(ExamplePatient)

Instance: PROMS-quesiton-four
InstanceOf: proms-profile
Usage: #example
Title: "PROMS question four"
Description: "Example as part of an answer to the PROMS questions four."

* item[+]
    * linkId = "Walk 50 steps on level ground at a normal pace without stopping."
    * answer.valueCoding = $ngp#65 "I haven't done this in the past 7 days."
* subject = Reference(ExamplePatient)