---
layout: catalog
title: Whiskey
---

I enjoy trying new whiskey.

<style>
.tabular-content-item {
  min-height: 50px;
}  
</style>

{% assign sorted = site.data.whiskey | sort: 'date' | reverse %}
{% include timeline.html content=sorted %}
