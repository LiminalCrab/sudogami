---
layout: base.njk
title: journal
---

## {{ title }}
{% for page in collections.journal %}
- [{{ page.data.title }}]({{ page.url }}) // {{page.date | journalDateString}}
{%- endfor %}
