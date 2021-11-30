#!/usr/bin/env python3
"""
Create an intro file for each profile from input/data/ig.yml
"""
import yaml
import os
from pathlib import Path

base_path = Path(os.path.dirname(os.path.realpath(__file__))) / 'input'
output_path = base_path / 'pagecontent'
ig_fname = base_path / 'data' / 'ig.yml'

template_md = """
{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance

| Parameter Case Report Form | FHIR Resource Attribute |
| -------------------------- | ----------------------- |
| ... | `...` |
{:.grid}

| Parameter Case Report Form | Response Options |
| -------------------------- | ---------------- |
| ... | ... |
{:.grid}

| Response Option | Code |
| ------ | ---- |
| ... | `...` |
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
"""

if not ig_fname.exists():
    print('No ig.yml file found')
    exit()

if not output_path.exists():
    output_path.mkdir(parents=True)

with open(ig_fname, 'r') as f:
    ig = yaml.safe_load(f)


for resource in ig["definition"]["resource"]:
    ref = resource["reference"]["reference"]

    if not ref.startswith('StructureDefinition/'):
      continue

    fname = output_path / (ref.replace('/', '-') + '-intro.md')

    if not fname.exists():
        print(resource["name"])
        with open(fname, 'w') as f:
            f.write(template_md)

print("Done")
