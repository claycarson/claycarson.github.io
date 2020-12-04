---
layout: catalog
title: Baseball Stadiums
---

I don't have a life long goal of going to every baseball team's stadium but the more the merrier. I have used the stadium name from the time I first visited.

<style>
.tabular-content-item {
  min-height: 50px;
}  
</style>

{% assign sorted = site.data.baseball | sort: 'date' | reverse %}
{% include timeline.html content=sorted %}
