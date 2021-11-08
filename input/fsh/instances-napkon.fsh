Instance: ExamplePatient
InstanceOf: ProfilePatientPatientIn
Usage: #example
Title: "ExamplePatient"
Description: "Example patient to be used as reference in other instances"
* identifier[pid].system = "https://netzwerk-universitätsmedizin/fhir/napkon-example-system"
* identifier[pid].value = "napkon-example-patient"
* name.family = "musterperson"
* name.given = "maxi"
* gender = #unknown
* birthDate = "1990-08-08"
* address[Strassenanschrift].line = "Charitéplatz 1"
* address[Strassenanschrift].city = "Berlin"
* address[Strassenanschrift].postalCode = "10117"
* address[Strassenanschrift].country = "DE"
