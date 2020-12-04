---
layout: catalog
title: Music
rss: /rss/music.xml
filters:
  - id: all
    label: All music
    selector: .tabular-content-item
  - id: favorites
    label: Favorites
    selector: .tabular-content-item[data-rating='5']
---

I consider all of these albums among my favorites but many of them are listed here because they have special personal meaning.

{% assign sorted = site.data.music | sort: 'date' | reverse | where_exp:"item", "item.type == 'Music' and item.rating" %}
{% include timeline.html content=sorted %}