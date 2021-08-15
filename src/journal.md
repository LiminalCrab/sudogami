---
layout: direct.njk
title: /journal
---

# {{ title }}
<hr/>

{% for page in collections.journal %}
- [{{ page.data.title }}]({{ page.url }}) 
:: {{page.date | journalDateString}} {% if page.data.lastmod %} -> {{page.data.lastmod | journalDateString }} {% endif %}
{% endfor %}
