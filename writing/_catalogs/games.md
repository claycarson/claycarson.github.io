---
layout: catalog
title: Games
rss: /rss/games.xml
---

In the spring of 2019 I built my first PC. Naturally, I felt the need to log the games I complete or play extensively. I do hope to go back one day and catalog my previous gaming life.

{% assign sorted = site.data.games | sort: 'date' | reverse %}
{% include timeline.html content=sorted %}