
{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance

| Parameter Case Report Form | FHIR Resource Attribute |
| -------------------------- | ----------------------- |
| Welchen höchsten allgemeinbildenden Schulabschluss haben Sie? | `Observation.code` |
{:.grid}


Please note: The response options are currently under review and may change.
{:.stu-note}

| Response Option | Code | CodeSystem |
| ------ | ---- | ---------- |
| Volks-/Hauptschulabschluss | `#71 "Volks-/Hauptschulabschluss"` | [NAPKON GECCOplus][CodeSystem NAPKON GECCOplus] |
| Realschulabschluss/Mittlere Reife	| `#72 "Realschulabschluss/Mittlere Reife"` | [NAPKON GECCOplus][CodeSystem NAPKON GECCOplus] |
| Fachhochschulabschluss| `#73 "Fachhochschulabschluss"` | [NAPKON GECCOplus][CodeSystem NAPKON GECCOplus] |
| Educated to high school level (finding)	| `#473461003 "Educated to high school level (finding)"` | [SNOMED CT][SNOMEDCT] |
| No formal education (finding) | `#224294005 "No formal education (finding)"` | [SNOMED CT][SNOMEDCT] |
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
