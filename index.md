---
layout: default
title: Home
---
<p class="intro">Hi, I am <a href="/about">Clay</a>.</p>

<p>This is my home on the Internet. The most exciting things here are my <a href="/newsletter">newsletter</a> and my <a href="/catalogs">catalogs</a>. Below you can subscribe or read the most recent issue of my newsletter.</p>
{% include subscription-widget.html %}

{% assign newsletter = site.newsletter | sort: 'date' | reverse %}
{% for newsletter in newsletter limit:1  %}
  <h1>{{ newsletter.title }}</h1>
  <p>{{ newsletter.content }}</p>
{% endfor %}