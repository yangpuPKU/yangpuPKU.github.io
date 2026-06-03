# Academic Homepage Refresh Design

## Goal

Refresh Pu Yang's academic homepage while keeping the current site structure:

- Home
- Publications
- Talks
- CV

The site should still feel like an academic homepage, but less like an unmaintained template or a chronological log. The emphasis is on a balanced academic-first profile for an applied AI researcher working across mathematics, large language models, reinforcement learning, and embodied intelligence.

## Identity And Positioning

Use the following long-term identity on the home page:

> I am a Researcher at the Embodied Intelligence Research Center, AgiBot. I received my Ph.D. in Computational Mathematics from Peking University, advised by Prof. Bin Dong.

The page should not emphasize internship or incoming-role language. Since the Ph.D. defense has been completed, the site should present Pu as having received the Ph.D. in 2026.

The homepage should mention:

- AgiBot: https://www.agibot.com/
- Embodied Intelligence Research Center: https://finch.agibot.com/
- Prof. Bin Dong: http://faculty.bicmr.pku.edu.cn/~dongbin/

## Home Page

Keep the current academicpages layout with the author sidebar.

Replace the current single-paragraph about text with a concise page made of three sections:

1. Short bio
2. Research interests
3. Selected publications

Suggested research-interest language should be broad but not scattered:

- Embodied intelligence and robot learning
- Large language models and synthetic data
- Reinforcement learning
- Inverse problems and mathematical modeling

Selected publications on the home page should include exactly these four papers:

1. Learning while Deploying
2. Spend Wisely: Maximizing Post-Training Gains in Iterative Synthetic Data Bootstrapping
3. Beyond Model Collapse: Scaling Up with Synthesized Data Requires Reinforcement
4. L2SR: Learning to Sample and Reconstruct for Accelerated MRI via Reinforcement Learning

Each selected publication should be compact: title, venue or status, link, and optionally a very short descriptive phrase. The home page should not duplicate the full publication archive.

## Publications Page

Keep the Publications top-level page, but change the presentation from a simple reverse-chronological list into thematic sections:

1. Embodied AI and Robot Learning
2. Large Language Models and Synthetic Data
3. Reinforcement Learning and Inverse Problems
4. Others

The second section should use the full phrase "Large Language Models" rather than "LLMs", and should not include "post-training" in the section title. Paper titles should remain unchanged, even when a title includes "Post-Training".

The Others section should include:

- Identifying average causal effect in regression discontinuity design with auxiliary data
- REAL-Prover: Retrieval Augmented Lean Prover for Mathematical Reasoning

The REAL-Prover metadata is:

- arXiv: https://arxiv.org/abs/2505.20613
- Title: REAL-Prover: Retrieval Augmented Lean Prover for Mathematical Reasoning
- Authors: Ziju Shen, Naohao Huang, Fanyi Yang, Yutong Wang, Guoxiong Gao, Tianyi Xu, Jiedong Jiang, Wanyi He, Pu Yang, Mengzhou Sun, Haocheng Ju, Peihao Wu, Bryan Dai, Bin Dong
- Date: 2025-05-27
- Status: arXiv

Existing publication detail pages should be preserved where possible. If template changes are needed, keep them minimal and local.

## Talks Page

Keep the Talks page in the navigation.

The talks page should be lightly improved so it reads more like selected presentations than a raw log. Recommended approach:

- Keep recent talks visible.
- Group older internal group seminars under a clear heading such as "Group Seminars".
- Preserve slide links where available.
- Avoid heavy template work unless needed for clean grouping.

## CV Page

Update the text CV to match the new identity:

- Ph.D. in Computational Mathematics, Peking University, 2021-2026
- Researcher, Embodied Intelligence Research Center, AgiBot
- Correct obvious date errors, including the current high-school date range.

If a new PDF CV is available later, replace `files/CV.pdf`. For this refresh, the text CV can be updated independently of the PDF.

## Out Of Scope

- Redesigning the whole site.
- Replacing the academicpages theme.
- Changing the top-level navigation.
- Adding a blog, portfolio, or teaching page to the navigation.
- Major visual redesign of CSS or page templates.

## Verification

After implementation:

- Run a local Jekyll build if dependencies are available.
- Check `git diff` for accidental inclusion of brainstorm mockup files.
- Confirm home, publications, talks, and CV pages render with the expected content.
- Commit and push to `origin master` only after the user approves the content changes.
