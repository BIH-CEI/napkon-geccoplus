{% assign reference_found = false %}
{%- for p in site.data.ig.definition.resource -%}
  {% assign type = p.reference.reference | split: '/' | first %}
  {%- if p.exampleBoolean or p.exampleCanonical or type != 'StructureDefinition' -%}
    {% continue %}
  {%- endif -%}
  {%- if p.name == include.name -%}
    {% assign reference_found = true %}
    {% assign link = p.reference.reference | replace: '/','-' | append: '.html' %}
    {% include resource-explicit.md name=p.name link=link description=p.description %}
  {%- endif -%}
{%- endfor %}
{% comment %} keep this line here for proper rendering {% endcomment %}

{% if reference_found == false %}

**ERROR**: Could not find reference for "{{include.name}}"
{:.stu-note}

{% endif %}
