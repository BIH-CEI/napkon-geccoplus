To represent the presence, absence or uncertainty of findings, use `Condition.verificationStatus` with codes from [ConditionVerificationStatus ValueSet](https://www.hl7.org/fhir/valueset-condition-ver-status.html) and/or [SNOMED CT][SNOMEDCT] codes from [ConditionVerificationStatusSNOMED ValueSet](https://simplifier.net/forschungsnetzcovid-19/verification-status) or [uncertaintyOfPresence][uncertaintyOfPresence] on `Condition.extension`.

| Response Optionoption | verificationStatus | uncertaintyOfPresence extension |
| ------------- | ------------------ | :------------------------------: |
| **Present** |[ConditionVerificationStatus][ConditionVerificationStatus]: `#confirmed` <br/> [SNOMED CT][SNOMEDCT]: `Confirmed present (qualifier value)` | - |
| **Absent** | [ConditionVerificationStatus][ConditionVerificationStatus]: `#refuted` <br/> [SNOMED CT][SNOMEDCT]: `Definitely NOT present (qualifier value)` | - |
| **Unknown** | - | set |
{:.grid}

Note the additional constraint on `Condition` that checks if either `verificationStatus` or the [uncertaintyOfPresence extension][uncertaintyOfPresence] is present:<br/>
  **unk-1**: If verificationStatus is present, uncertaintyOfPresence-Extension SHALL NOT be present. verificationStatus.exists() != Condition.modifierExtension.where(url = 'https://www.netzwerk-universitaetsmedizin.de/fhir/StructureDefinition/uncertainty-of-presence').exists()
{:.stu-note}
