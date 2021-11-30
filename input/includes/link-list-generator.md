{%- for p in site.data.ig.definition.resource -%}
  {%- if p.exampleBoolean or p.exampleCanonical -%}
    {% continue %}
  {%- endif -%}
[{{p.name}}]: {{p.reference.reference | replace: '/','-'}}.html
{%- endfor %}
{% comment %} keep this line here for proper rendering {% endcomment %}
