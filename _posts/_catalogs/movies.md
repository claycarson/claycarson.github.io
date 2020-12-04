---
layout: catalog
title: Movies
rss: /rss/movies.xml
filters:
  - id: all
    label: All movies
    selector: .tabular-content-item
  - id: favorites
    label: Favorites
    selector: .tabular-content-item[data-rating='5']
---

To the best of my knowledge, this is a list of every movie I have ever seen. My rating scale is based on how much I enjoyed watching the movie, not on it's merrit as a "Film".

{% assign sorted = site.data.movies | sort: 'date' | reverse %}
{% include timeline.html content=sorted %}