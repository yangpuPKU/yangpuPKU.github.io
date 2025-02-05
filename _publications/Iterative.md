---
title: "Spend Wisely: Maximizing Post-Training Gains in Iterative Synthetic Data Bootstrapping"
collection: publications
permalink: /publication/Iterative
excerpt: '[Arxiv version](https://arxiv.org/abs/2501.18962)'
date: 2025-01-31
venue: 'arXiv'
paperurl: 'https://arxiv.org/abs/2501.18962'
citation: 'Yang, P., Feng, Y., Chen, Z., Wu, Y., & Li, Z. (2025). Spend Wisely: Maximizing Post-Training Gains in Iterative Synthetic Data Bootstrapping. arXiv preprint arXiv:2501.18962.'
---

Modern foundation models often undergo iterative ``bootstrapping'' in their post-training phase: a model generates synthetic data, an external verifier filters out low-quality samples, and the high-quality subset is used for further fine-tuning. Over multiple iterations, the model's performance improves--raising a crucial question: how should the total budget on generation and training be allocated across iterations to maximize final performance? In this work, we develop a theoretical framework to analyze budget allocation strategies. Specifically, we show that constant policies fail to converge with high probability, while increasing policies--particularly exponential growth policies--exhibit significant theoretical advantages. Experiments on image denoising with diffusion probabilistic models and math reasoning with large language models show that both exponential and polynomial growth policies consistently outperform constant policies, with exponential policies often providing more stable performance.
