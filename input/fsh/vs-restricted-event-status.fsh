// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Alias: $eventStatus = http://hl7.org/fhir/event-status

ValueSet: RestrictedEventStatus
Id: restricted-event-status
Title: "RestrictedEventStatus"
Description: "EventStatus value set restricted to codes not-done, active, completed and unknown"
* $eventStatus#not-done
* $eventStatus#completed
* $eventStatus#unknown
* $eventStatus#in-progress
