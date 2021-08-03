---
layout: base.njk
---

## Journal
{% for page in collections.journal %}
- [{{ page.data.title }}]({{ page.url }})
{%- endfor %}
