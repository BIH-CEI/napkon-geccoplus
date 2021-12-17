
{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance


| Parameter Case Report Form | Response Options |
| -------------------------- | ---------------- |
| Ketones (urine diagnostics) | Positive / Negative |
| Glucose (urine diagnostics) | Positive / Negative |
| Nitrite (urine diagnostics) | Positive / Negative |
| Proteins (urine diagnostics) | Positive / Negative |
{:.grid}

| Response Option | Code |
| ------ | ---- |
| Positive | `Positive (qualifier value)` |
| Negative | `Negative (qualifier value)` |
{:.grid}


{% capture resource_inheritance %}
This profile of a FHIR {{resource.type}} is derived from the [{{resource.base | split: '/' | last}}]({{resource.base}})
{% if resource.base contains 'https://www.medizininformatik-initiative.de/fhir' %}
 profile of the [Medical Informatics Initiative (MII)][MII].
{% elsif resource.base contains 'https://www.netzwerk-universitaetsmedizin.de/fhir' %}
 profile of the [German Corona Consensus Dataset (GECCO)][GECCO].
{% else %}
 FHIR resource.
{% endif %}
{% endcapture %}

{{ resource_inheritance | strip_newlines }}

{% if resource.base == 'https://www.netzwerk-universitaetsmedizin.de/fhir/StructureDefinition/gecco-base-condition' %}
{% include condition-gecco-answer-options.md %}
{% endif %}

{% include link-list.md %}
