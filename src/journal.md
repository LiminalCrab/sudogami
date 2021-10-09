---
layout: direct.njk
title: Journal
---

# {{ title }}

{% for page in collections.journal %}
- [{{ page.data.title }}]({{ page.url }}) 
{% endfor %}
