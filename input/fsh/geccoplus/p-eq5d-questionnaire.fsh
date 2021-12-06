// Author: Thomas Haese
// Charité - Universitätsmedizin Berlin
Instance: Eq5dQuestionaire
InstanceOf: Questionnaire
Usage: #definition
Title: "EQ-5D Questionnaire"
Description: "EQ-5D is a standardised measure of health-related quality of life developed by the EuroQol Group to provide a simple, generic questionnaire for use in clinical and economic appraisal and population health surveys."
* insert napkon-metadata-instance(2021-11-22, #draft, 0.1.0)
* url = $eq5d-questionaire-url
* name = "EQ5DQuestionaire"
* status = #active
* item[+].linkId = "mobility"
* item[=].code = $ngp#s1 "Agility and mobility"
* item[=].type = #choice
* item[=].answerValueSet = Canonical(geccoplus-eq5d-s1-responses)
* item[+].linkId = "self-sufficiency"
* item[=].code = $ngp#s2 "Self-sufficiency"
* item[=].type = #choice
* item[=].answerValueSet = Canonical(geccoplus-eq5d-s2-responses)
* item[+].linkId = "daily-activities"
* item[=].code = $ngp#s3 "Daily activities"
* item[=].type = #choice
* item[=].answerValueSet = Canonical(geccoplus-eq5d-s3-responses)
* item[+].linkId = "pain-discomfort"
* item[=].code = $ngp#s4 "Pain and discomfort"
* item[=].type = #choice
* item[=].answerValueSet = Canonical(geccoplus-eq5d-s4-responses)
* item[+].linkId = "anxiety-depression"
* item[=].code = $ngp#s5 "Anxiety and depression"
* item[=].type = #choice
* item[=].answerValueSet = Canonical(geccoplus-eq5d-s5-responses)

Profile: EQ5DResponse
Parent: QuestionnaireResponse
Id: geccoplus-eq5d-response
Title: "EQ5D Questionnaire Response"
Description: "Response to the EQ-5D Questionnaire"
* insert napkon-metadata(2021-11-25, #draft, 0.1.0)
* insert mii-patient-reference
* questionnaire 1..1
* questionnaire = $eq5d-questionaire-url
* status = #completed

Instance: EQ5DResponse
InstanceOf: geccoplus-eq5d-response
Usage: #example
Title: "Example responses to EQ-5D questionnaire"
Description: "Example as part of answers to the EQ-5D questionnaire."
* subject = Reference(ExamplePatient)
* item[+].linkId = "mobility"
* item[=].answer.valueCoding = $ngp#14 "I have severe problems in walking about."
* item[+].linkId = "self-sufficiency"
* item[=].answer.valueCoding = $ngp#22 "I have slight problems washing or dressing myself."
* item[+].linkId = "daily-activities"
* item[=].answer.valueCoding = $ngp#33 "I have moderate problems doing my usual activities."
* item[+].linkId = "pain-discomfort"
* item[=].answer.valueCoding = $ngp#41 "I have no pain or discomfort."
* item[+].linkId = "anxiety-depression"
* item[=].answer.valueCoding = $ngp#55 "I am extremely anxious or depressed."
