#!/usr/bin/env python3
"""
Create an intro file for each profile from input/data/ig.yml
"""
import json
import yaml
import os
from pathlib import Path

base_path = Path(os.path.dirname(os.path.realpath(__file__)))
output_path = base_path / 'input' / 'intro-notes'
ig_fname = base_path / 'input' / 'data' / 'ig.yml'
linklist_fname = base_path / 'input' / 'includes' / 'link-list.md'
profiles_fname = base_path / 'input' / 'pagecontent' / 'profiles-generated.md'

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

linklist_general = {
    "GECCO": "https://simplifier.net/guide/germancoronaconsensusdataset-implementationguide/home",
    "NAPKON": "https://napkon.de/",
    "NUM": "https://www.netzwerk-universitaetsmedizin.de/",
    "BIH": "https://www.bihealth.org/",
    "MII": "https://www.medizininformatik-initiative.de/",
    "uncertaintyOfPresence": "https://www.netzwerk-universitaetsmedizin.de/fhir/StructureDefinition/uncertainty-of-presence",
    "ConditionVerificationStatus": "http://terminology.hl7.org/CodeSystem/condition-ver-status",
    "SNOMEDCT": "http://snomed.info/sct",
    "LOINC": "http://loinc.org/",
    "VSdataAbsentReason": "http://hl7.org/fhir/R4/valueset-data-absent-reason.html",
}

if not ig_fname.exists():
    print('No ig.yml file found, trying to create')

    fsh_generated_path = base_path /'fsh-generated' / 'resources'
    ig_files = list(fsh_generated_path.glob('ImplementationGuide-*.json'))

    if len(ig_files) == 0:
        print('No ImplementationGuide files found in fsh-generated/resources')
        exit(1)
    elif len(ig_files) > 1:
        print('More than one ImplementationGuide file found in fsh-generated/resources')
        exit(1)
    else:
        json_ig_fname = ig_files[0]

    if not ig_fname.parent.exists():
        ig_fname.parent.mkdir()

    print(f"Converting {json_ig_fname} to {ig_fname}")
    content = json.loads(open(json_ig_fname).read())
    yaml.dump(content, open(ig_fname, "w"))


if not output_path.exists():
    output_path.mkdir(parents=True)

with open(ig_fname, 'r') as f:
    ig = yaml.safe_load(f)

linklist = {}

for resource in ig["definition"]["resource"]:
    ref = resource["reference"]["reference"]

    if not ref.startswith('StructureDefinition/'):
      continue

    fname = output_path / (ref.replace('/', '-') + '-intro.md')

    if not fname.exists():
        print(resource["name"])
        with open(fname, 'w') as f:
            f.write(template_md)

    linklist[resource["name"]] = ref.replace('/', '-') + '.html'


if not linklist_fname.exists():
    if not linklist_fname.parent.exists():
        linklist_fname.parent.mkdir()

    print(linklist_fname.name)
    with open(linklist_fname, 'w') as f:
        for k, v in linklist.items():
            f.write(f'[{k}]: {v}\n')
        f.write("\n")
        for k, v in linklist_general.items():
            f.write(f'[{k}]: {v}\n')

if not profiles_fname.exists():
    print(profiles_fname.name)
    with open(profiles_fname, 'w') as f:
        f.write('### Profiles\n\n')
        for name in linklist:
            f.write(f"{{% include resource-reference.md name='{name}' %}}\n")


print("Done")
