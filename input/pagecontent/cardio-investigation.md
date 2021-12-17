### Guidance

The information about a performed electrocardiography is encoded using the [Cardiovascular investigation][Cardio Investigation] profile from the NAPKON cardiology module.

Specifically, the folowing [SNOMED CT][SNOMEDCT] code is used in the `Procedure.code` element:

| Response Option | `Procedure.code` |
| ------ | ---- |
| 12 lead electrocardiogram | `12 lead electrocardiogram (procedure)` |
{:.grid}

The status of the investigation is coded as follows:

| Response Option | `Procedure.status` |
| ------ | ---- |
| Yes (procedure performed) | `#completed` |
| No (procedure not performed) | `#not-done` |
| No information available | `#unknown` |
{:.grid}

{% include link-list.md %}
