---
layout: base.njk
title: Journal
---

# {{ title }}

<hr/>

{% for page in collections.journal %}
- [{{ page.data.title }}]({{ page.url }})

{% endfor %}
