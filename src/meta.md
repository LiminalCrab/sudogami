---
layout: base.njk
title: meta
---
{% for page in collections.journal %}
- [{{ page.data.title }}]({{ page.url }})
{%- endfor %}

{% for page in collections.wiki %}
- [{{ page.data.title }}]({{ page.url }})
{%- endfor %}