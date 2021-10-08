---
layout: direct.njk
title: Recipes
---

# {{ title }}
<hr/>

I'M JUST TRYING TO COOK DINNER I DON'T WANT THE HISTORY OF CHICKEN

{% for page in collections.recipes %}
- [{{ page.data.title }}]({{ page.url }}) 
{% endfor %}
