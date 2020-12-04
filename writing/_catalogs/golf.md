---
layout: catalog
title: Golf
---

> "Comparing the small amount of land utilised for golf with the large amount devoted to agriculture, we get infinitely more value out of the former than the latter. We all eat too much. During the Great War the majority were all the fitter for being rationed and getting a smaller amount of food, but none of us get enough fresh air, pleasurable excitement, and exercise."
— Dr. Alister MacKenzie

<style>
.tabular-content-item {
  min-height: 50px;
}  
</style>

{% assign sorted = site.data.golf | sort: 'date' | reverse %}
{% include timeline.html content=sorted %}
