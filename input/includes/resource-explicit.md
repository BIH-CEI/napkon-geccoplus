{% comment %}
This file can be included to generate explicit links that look alike those of resource-reference.md.
To use, put the following line in your .md file:
{% include resource-explicit.md name='My Example Resource' link='http://example.com/fhir/my-resource.html' description='This link demonstrates the use of resource-explicit.md' %}
{% endcomment %}
<tr>
  <td>
    <a href="{{include.link}}">{{include.name}}</a>
  </td>
  <td>
    <p>{{include.description}}</p>
  </td>
</tr>
