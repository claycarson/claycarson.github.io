---
layout: catalog
title: Books
rss: /rss/books.xml
filters:
  - id: all
    label: Completed
    selector: .tabular-content-item[data-status='Complete']
  - id: current
    label: Current
    selector: .tabular-content-item[data-status='Current']		
  - id: favorites
    label: Favorites
    selector: .tabular-content-item[data-rating='5']
---
I have kept track of the books I have read for quite some time now. I keep highlights of my favorite passages from the books I read. Many of those highlights will end up <a href="/catalogs/quotes">here</a>.

{% assign sorted = site.data.books | sort: 'date' | reverse %}
{% include timeline.html content=sorted %}