---
layout: archive
title: "Publications"
permalink: /publications/
author_profile: true
---

{% if site.author.googlescholar %}
  You can also find my articles on <u><a href="https://scholar.google.com/citations?user=EfZbm40AAAAJ&hl=zh-CN">my Google Scholar profile</a>.</u>
{% endif %}

{% include base_path %}

{% assign publication_groups = "embodied|Embodied AI and Robot Learning,llm_synthetic|Large Language Models and Synthetic Data,rl_inverse|Reinforcement Learning and Inverse Problems,others|Others" | split: "," %}

{% for group in publication_groups %}
  {% assign group_parts = group | split: "|" %}
  {% assign group_key = group_parts[0] %}
  {% assign group_title = group_parts[1] %}

  <h2>{{ group_title }}</h2>

  {% assign group_posts = site.publications | where: "pub_category", group_key | sort: "date" | reverse %}
  {% if group_posts.size > 0 %}
    {% for post in group_posts %}
      {% include archive-single.html %}
    {% endfor %}
  {% else %}
    <p>No publications in this category yet.</p>
  {% endif %}
{% endfor %}
