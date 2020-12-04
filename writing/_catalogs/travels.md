---
layout: catalog
title: Travels
rss: /rss/travels.xml
todos:
  - share image
  - rss feed
  - dynamically generated map
  - add content for each place
  - add a picture for each place
---

I have been to some neat places but there is plenty more to see.

<style>
.tabular-content-item {
  min-height: 50px;
}  
</style>

{% assign sorted = site.data.travels | sort: 'date' | reverse %}
{% include timeline.html content=sorted %}
