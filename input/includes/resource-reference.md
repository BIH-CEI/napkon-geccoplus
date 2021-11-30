{% assign reference_found = false %}
{%- for p in site.data.ig.definition.resource -%}
  {% assign type = p.reference.reference | split: '/' | first %}
  {%- if p.exampleBoolean or p.exampleCanonical or type != 'StructureDefinition' -%}
    {% continue %}
  {%- endif -%}
  {%- if p.name == include.name -%}
    {% assign reference_found = true %}
<tr>
  <td>
    <a href="{{p.reference.reference | replace: '/','-'}}.html">{{p.name}}</a>
  </td>
  <td>
    <p>{{p.description}}</p>
  </td>
</tr>
  {%- endif -%}
{%- endfor %}
{% comment %} keep this line here for proper rendering {% endcomment %}

{% if reference_found == false %}

**ERROR**: Could not find reference for "{{include.name}}"
{:.stu-note}

{% endif %}
