Invariant: codeable-concept-text-present-if-code-other
Description: "If codeableConcept.coding is set to SNOMED CT 'Other (qualifier value)', a string in codeableConcept.text must be supplied to identify the value of 'other'"
Expression: "(coding.system = 'http://snomed.info/sct' and coding.code = '74964007') implies text.exists()"
Severity: #error

Invariant: immunization-status-reason-if-not-done
Description: "If status is set to #not-done, a statusReason must be supplied"
Expression: "(status = 'not-done') implies statusReason.exists()"
Severity: #error

Invariant: must-exist-if-vaccination-performed
Description: "This item must be specified if the vaccination was performed"
Expression: "(status = 'completed') implies $this.exists()"
Severity: #error

Invariant: value-or-data-absent-reason
Description: "If there is no a value a data absent reason must be present or vice versa"
Severity: #error
Expression: "value.exists() or dataAbsentReason.exists()"
