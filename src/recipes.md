---
layout: base.njk
title: Recipes
---

# {{ title }}
<hr/>

Here are some recipies I cook often. I became tired of having to load an entire
blog post just to access a small list of instructions, so this was my way of avoiding that.

{% for page in collections.recipes %}
- [{{ page.data.title }}]({{ page.url }}) 
{% endfor %}
