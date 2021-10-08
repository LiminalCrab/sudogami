---
layout: direct.njk
title: Recipes
---

# {{ title }}
<hr/>

I'm not skilled enough to make my own recipes. I mostly don't care. I am skilled enough, however, to rip recipies from websites that are insanely verbose and riddled with ads. I know it's surprsing, I don't care about the history of shredded chicken, it's origins, or its DNA sequence. I do care, about what I'm trying to cook for dinner.

{% for page in collections.recipes %}
- [{{ page.data.title }}]({{ page.url }}) 
{% endfor %}
