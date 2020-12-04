---
layout: page
title: Test
---

{% for newsletter in site.newsletter %}
<h1><a href="{{ newsletter.url }}">{{ newsletter.title }}</a></h1>
{{ newsletter.content }}
{% endfor %}

{% for catalogs in site.catalogs limit:1 %}
<h1><a href="{{ catalogs.url }}">{{ catalogs.title }}</a></h1>
{{ catalogs.content }}
{% endfor %}

