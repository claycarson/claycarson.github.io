---
layout: catalog
title: Asides
---

This is a list of status updates and commentary that is used to populate <a href="twitter.com/claycarson">Twitter</a> and other social networks. It is important to me to preserve these comments on my site as social networks come and go.

<style>
.tabular-content-item {
  min-height: 50px;
}  
</style>

{% assign sorted = site.data.asides | sort: 'date' | reverse %}
{% include timeline.html content=sorted %}
