# Academic Homepage Refresh Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Refresh the existing academic homepage content while preserving the current Home, Publications, Talks, and CV structure.

**Architecture:** Keep the current Jekyll academicpages collections and templates. Add missing publication Markdown entries, add simple grouping metadata to publication front matter, update the Home/Publications/Talks/CV pages, and make only small template/CSS changes needed for readable grouped lists.

**Tech Stack:** Jekyll, Liquid, Markdown, YAML front matter, existing academicpages theme.

---

## File Structure

- Modify `_config.yml` to update the sidebar bio and employer-facing identity.
- Modify `_pages/about.md` to replace the one-paragraph home page with bio, interests, and selected publications.
- Modify `_pages/publications.md` to render publications by thematic `pub_category` values.
- Modify existing `_publications/*.md` files to add `pub_category` metadata and clean selected citations/venues where needed.
- Create `_publications/Learning_while_Deploying.md`.
- Create `_publications/tau0_WM.md`.
- Create `_publications/REAL-Prover.md`.
- Modify `_pages/talks.html` to split recent selected talks from archived group seminars.
- Modify `_pages/cv.md` to update education, position, and obvious date errors.
- Modify `_sass/_page.scss` only if the grouped publication lists need small spacing styles.

## Task 1: Add Missing Publication Entries

**Files:**
- Create: `_publications/Learning_while_Deploying.md`
- Create: `_publications/tau0_WM.md`
- Create: `_publications/REAL-Prover.md`

- [ ] **Step 1: Create Learning while Deploying entry**

Add `_publications/Learning_while_Deploying.md`:

```markdown
---
title: "Learning while Deploying: Fleet-Scale Reinforcement Learning for Generalist Robot Policies"
collection: publications
permalink: /publication/Learning_while_Deploying
excerpt: '[Arxiv version](https://arxiv.org/abs/2605.00416)'
date: 2026-05-01
venue: 'arXiv'
paperurl: 'https://arxiv.org/abs/2605.00416'
pub_category: embodied
citation: 'Wang, Y., Li, X., Xie, P., Yang, P., Nie, B., Cai, Y., Zhang, Q., Qu, C., Wu, J., Song, J., Ren, X., Huang, J., Pan, M., Feng, S., Chen, Z., & Luo, J. (2026). Learning while Deploying: Fleet-Scale Reinforcement Learning for Generalist Robot Policies. arXiv preprint arXiv:2605.00416.'
---

Generalist robot policies increasingly benefit from large-scale pretraining, but offline data alone is insufficient for robust real-world deployment. We present Learning While Deploying (LWD), a fleet-scale offline-to-online reinforcement learning framework for continual improvement of generalist Vision-Language-Action policies from shared robot-fleet experience, autonomous rollouts, and human interventions.
```

- [ ] **Step 2: Create tau0-WM entry**

Add `_publications/tau0_WM.md`:

```markdown
---
title: "$\\tau_0$-WM: A Unified Video-Action World Model for Robotic Manipulation"
collection: publications
permalink: /publication/tau0_WM
excerpt: '[Arxiv version](https://arxiv.org/abs/2606.01027)'
date: 2026-05-31
venue: 'arXiv'
paperurl: 'https://arxiv.org/abs/2606.01027'
pub_category: embodied
citation: 'Zhou, P., Chen, S., Chen, D., Wang, J., Jin, R., Zhu, B., Pan, Y., Gu, S., Wang, K., Nan, S., Qiu, X., Qiu, C., Yang, P., Cai, Y., Gao, J., Li, Y., Fu, Y., Yue, X., Chen, Z., & Luo, J. (2026). $\\tau_0$-WM: A Unified Video-Action World Model for Robotic Manipulation. arXiv preprint arXiv:2606.01027.'
---

Robotic manipulation requires models that generate executable actions while anticipating and evaluating their future consequences. This work presents a unified video-action world model for robotic manipulation, combining policy learning, video prediction, and action evaluation within a future-predictive framework trained on large-scale real-robot and human-interaction data.
```

- [ ] **Step 3: Create REAL-Prover entry**

Add `_publications/REAL-Prover.md`:

```markdown
---
title: "REAL-Prover: Retrieval Augmented Lean Prover for Mathematical Reasoning"
collection: publications
permalink: /publication/REAL-Prover
excerpt: '[Arxiv version](https://arxiv.org/abs/2505.20613)'
date: 2025-05-27
venue: 'arXiv'
paperurl: 'https://arxiv.org/abs/2505.20613'
pub_category: others
citation: 'Shen, Z., Huang, N., Yang, F., Wang, Y., Gao, G., Xu, T., Jiang, J., He, W., Yang, P., Sun, M., Ju, H., Wu, P., Dai, B., & Dong, B. (2025). REAL-Prover: Retrieval Augmented Lean Prover for Mathematical Reasoning. arXiv preprint arXiv:2505.20613.'
---

Formal theorem provers have made rapid progress on competition-level mathematics, but generalization to advanced mathematics remains difficult. REAL-Prover is a retrieval-augmented Lean 4 theorem prover that combines a fine-tuned large language model, a retrieval system, and new data-generation tools to improve college-level mathematical reasoning.
```

- [ ] **Step 4: Verify files are discoverable**

Run:

```bash
rg -n "pub_category: embodied|pub_category: others|Learning while Deploying|REAL-Prover|tau_0" _publications
```

Expected: matches in the three new files.

## Task 2: Categorize Existing Publications

**Files:**
- Modify: `_publications/A_Tale_of_Tails.md`
- Modify: `_publications/Beyond_Model_Collapse.md`
- Modify: `_publications/Identifying_average_causal_effect.md`
- Modify: `_publications/Iterative.md`
- Modify: `_publications/L2SR.md`
- Modify: `_publications/MoColl.md`

- [ ] **Step 1: Add category metadata**

Add these fields inside each file's YAML front matter:

```yaml
pub_category: llm_synthetic
```

for:

- `_publications/A_Tale_of_Tails.md`
- `_publications/Beyond_Model_Collapse.md`
- `_publications/Iterative.md`
- `_publications/MoColl.md`

Add:

```yaml
pub_category: rl_inverse
```

for:

- `_publications/L2SR.md`

Add:

```yaml
pub_category: others
```

for:

- `_publications/Identifying_average_causal_effect.md`

- [ ] **Step 2: Verify every publication has a category**

Run:

```bash
for f in _publications/*.md; do rg -q "^pub_category:" "$f" || printf "%s\n" "$f"; done
```

Expected: no output.

## Task 3: Refresh Home Page And Sidebar Identity

**Files:**
- Modify: `_config.yml`
- Modify: `_pages/about.md`

- [ ] **Step 1: Update sidebar author bio**

In `_config.yml`, change:

```yaml
bio              : "Also: 杨埔<p>PhD student at School of Mathematical Sciences, PKU."
```

to:

```yaml
bio              : "Also: 杨埔<p>Researcher at AgiBot Embodied Intelligence Research Center."
```

- [ ] **Step 2: Replace home page content**

Replace the body of `_pages/about.md` after front matter with:

```markdown
I am a Researcher at the [Embodied Intelligence Research Center](https://finch.agibot.com/), [AgiBot](https://www.agibot.com/). I received my Ph.D. in Computational Mathematics from Peking University in 2026, advised by [Prof. Bin Dong](http://faculty.bicmr.pku.edu.cn/~dongbin/).

My research sits at the intersection of mathematics and applied artificial intelligence. I am broadly interested in embodied intelligence and robot learning, large language models and synthetic data, reinforcement learning, and inverse problems.

Research Interests
======

* Embodied intelligence and robot learning
* Large language models and synthetic data
* Reinforcement learning
* Inverse problems and mathematical modeling

Selected Publications
======

* **Learning while Deploying: Fleet-Scale Reinforcement Learning for Generalist Robot Policies**  
  arXiv, 2026. [Paper](https://arxiv.org/abs/2605.00416)
* **Spend Wisely: Maximizing Post-Training Gains in Iterative Synthetic Data Bootstrapping**  
  NeurIPS 2025 Spotlight. [Paper](https://arxiv.org/abs/2501.18962)
* **Beyond Model Collapse: Scaling Up with Synthesized Data Requires Reinforcement**  
  ICLR 2025. [Paper](https://openreview.net/forum?id=MQXrTMonT1)
* **L2SR: Learning to Sample and Reconstruct for Accelerated MRI via Reinforcement Learning**  
  Inverse Problems, 2024. [Paper](https://iopscience.iop.org/article/10.1088/1361-6420/ad3b34)
```

- [ ] **Step 3: Verify home page content**

Run:

```bash
rg -n "Researcher at the \\[Embodied Intelligence Research Center\\]|Selected Publications|Learning while Deploying|L2SR" _pages/about.md _config.yml
```

Expected: matches in `_pages/about.md` and `_config.yml`.

## Task 4: Group Publications Page

**Files:**
- Modify: `_pages/publications.md`

- [ ] **Step 1: Replace reverse chronological loop with grouped sections**

Replace the loop in `_pages/publications.md` with:

```liquid
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
```

Keep the existing front matter and Google Scholar paragraph above this block.

- [ ] **Step 2: Verify the group labels exist**

Run:

```bash
rg -n "Embodied AI and Robot Learning|Large Language Models and Synthetic Data|Reinforcement Learning and Inverse Problems|Others" _pages/publications.md
```

Expected: all four headings appear.

## Task 5: Lightly Refresh Talks Page

**Files:**
- Modify: `_pages/talks.html`

- [ ] **Step 1: Replace raw talks loop with recent/archived grouping**

Replace the final loop in `_pages/talks.html` with:

```liquid
<h2>Selected Recent Talks</h2>

{% assign recent_talks = site.talks | sort: "date" | reverse %}
{% for post in recent_talks %}
  {% assign talk_year = post.date | date: "%Y" %}
  {% if talk_year >= "2024" %}
    {% include archive-single-talk.html %}
  {% endif %}
{% endfor %}

<h2>Group Seminars</h2>

{% for post in recent_talks %}
  {% assign talk_year = post.date | date: "%Y" %}
  {% if talk_year < "2024" %}
    {% include archive-single-talk.html %}
  {% endif %}
{% endfor %}
```

Preserve front matter and optional talkmap block.

- [ ] **Step 2: Verify the talks grouping labels exist**

Run:

```bash
rg -n "Selected Recent Talks|Group Seminars" _pages/talks.html
```

Expected: both labels appear.

## Task 6: Update Text CV

**Files:**
- Modify: `_pages/cv.md`

- [ ] **Step 1: Update education and work experience**

Replace the Education and Work experience sections with:

```markdown
Education
======
* **Chongqing Nankai Middle School**<br>
  2014 - 2017<br>
* **School of Mathematical Sciences, Peking University**<br>
  B.S. in Mathematics, 2017 - 2021<br>
* **School of Mathematical Sciences, Peking University**<br>
  Ph.D. in Computational Mathematics, 2021 - 2026<br>
  Advisor: [Prof. Bin Dong](http://faculty.bicmr.pku.edu.cn/~dongbin/)<br>

Work experience
======
* **Researcher, Embodied Intelligence Research Center, AgiBot**<br>
  2026 - Present<br>
  I work on embodied intelligence, robot learning, and foundation models for robotic manipulation.
* **AI Algorithm Internship, HiSilicon**<br>
  Spring to Summer 2025<br>
  I was involved in forward-looking research on next-generation LLM architectures. The core objective of my research was to enhance the accuracy and inference speed of long-context language models. My work centered on exploring innovative approaches, including diffusion language models and sparse attention mechanisms, to address key challenges in scaling model performance.
* **AI Algorithm Internship, ByteDance**<br>
  Spring 2021<br>
  I was primarily responsible for designing algorithms for audio fingerprinting, including fingerprint feature extraction, speech-library search, and parallel acceleration.
```

Keep the existing Skills and Awards sections unless later edits are requested.

- [ ] **Step 2: Verify CV content**

Run:

```bash
rg -n "Researcher, Embodied Intelligence Research Center, AgiBot|Ph.D. in Computational Mathematics, 2021 - 2026|2014 - 2017" _pages/cv.md
```

Expected: all three updated lines appear.

## Task 7: Build And Review

**Files:**
- Verify all modified files.

- [ ] **Step 1: Run static content checks**

Run:

```bash
rg -n "PhD student|2021-2017|pub_category:|Learning while Deploying|REAL-Prover|Selected Recent Talks" _config.yml _pages _publications
```

Expected: no stale `PhD student` or `2021-2017`; expected matches for categories, new papers, and talk grouping.

- [ ] **Step 2: Run Jekyll build**

Run:

```bash
bundle exec jekyll build
```

Expected: build succeeds. If it fails because dependencies are missing, run:

```bash
bundle install
bundle exec jekyll build
```

If network access is required for dependency installation, request escalation before retrying.

- [ ] **Step 3: Review git diff**

Run:

```bash
git diff --stat
git diff -- _config.yml _pages/about.md _pages/publications.md _pages/talks.html _pages/cv.md _publications
```

Expected: only planned content/site files changed.

- [ ] **Step 4: Commit implementation**

Run:

```bash
git add _config.yml _pages/about.md _pages/publications.md _pages/talks.html _pages/cv.md _publications docs/superpowers/plans/2026-06-03-academic-homepage-refresh.md
git commit -m "Refresh academic homepage content"
```

Expected: a commit containing the content refresh.

- [ ] **Step 5: Push after review**

Only after user approval of the diff, run:

```bash
git push origin master
```

Expected: push succeeds and GitHub Pages begins deploying the updated site.
