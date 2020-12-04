---
layout: catalog
title: TV
filters:
  - id: all
    label: All TV
    selector: .tabular-content-item
  - id: favorites
    label: Favorites
    selector: .tabular-content-item[data-rating='5']
  - id: current
    label: Current
    selector: .tabular-content-item[data-status='Current']		
---

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ut dapibus leo. Maecenas in lacus fermentum dolor viverra cursus. Curabitur cursus magna eget nisi viverra porta. Donec semper dolor sit amet quam blandit vel pellentesque velit lobortis. Aliquam in ante eget nibh imperdiet eleifend. Vestibulum ornare lobortis diam viverra pellentesque. Aenean cursus dignissim mi in tincidunt. Quisque eu lectus sed risus congue tincidunt in eu mi. Etiam ac ligula felis. Integer et dui quam. Sed condimentum libero quis mauris malesuada laoreet. Donec dictum luctus mi, ut laoreet nisl consequat in. Sed non condimentum velit. Nullam interdum, velit eget commodo dictum, nisl neque varius lacus, a pharetra lorem dolor tempus dolor. Curabitur vitae velit elit. Phasellus in lacus velit, eget faucibus neque. Donec dolor purus, imperdiet quis iaculis aliquam, aliquam non magna. Donec pharetra metus a quam tincidunt cursus. Suspendisse potenti.

<style>
.tabular-content-item {
  min-height: 50px;
}  
</style>
{% assign sorted = site.data.tv | sort: 'date' | reverse %}
{% include timeline.html content=sorted %}