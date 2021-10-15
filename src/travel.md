---
layout: direct.njk
title: Travel
---

# {{ title }}
<hr/>
Note: None of these are complete. I'm currently testing photo and video features.

{% for page in collections.travel %}
- [{{ page.data.title }}]({{ page.url }}) - {{page.data.metainfo}}
{% endfor %}
