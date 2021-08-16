---
layout: base.njk
title: Meta
---
{% for page in collections.journal %}
- [{{ page.data.title }}]({{ page.url }})
{%- endfor %}

{% for page in collections.wiki %}
- [{{ page.data.title }}]({{ page.url }})
{%- endfor %}