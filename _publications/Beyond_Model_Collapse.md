---
title: "Beyond Model Collapse: Scaling Up with Synthesized Data Requires Reinforcement"
collection: publications
permalink: /publication/Beyond_Model_Collapse
excerpt: 'Under review as a conference paper in NIPS2024.'
date: 2024-6-11
venue: 'Arxiv'
paperurl: 'https://arxiv.org/abs/2406.07515'
citation: 'Feng, Y., Dohmatob, E., Yang, P., Charton, F., & Kempe, J. (2024). Beyond Model Collapse: Scaling Up with Synthesized Data Requires Reinforcement. arXiv preprint arXiv:2406.07515.'
---

Synthesized data from generative models is increasingly considered as an alternative to human-annotated data for fine-tuning Large Language Models. This raises concerns about model collapse: a drop in performance of models fine-tuned on generated data. Considering that it is easier for both humans and machines to tell between good and bad examples than to generate high-quality samples, we investigate the use of feedback on synthesized data to prevent model collapse. We derive theoretical conditions under which a Gaussian mixture classification model can achieve asymptotically optimal performance when trained on feedback-augmented synthesized data, and provide supporting simulations for finite regimes. We illustrate our theoretical predictions on two practical problems: computing matrix eigenvalues with transformers and news summarization with large language models, which both undergo model collapse when trained on model-generated data. We show that training from feedback-augmented synthesized data, either by pruning incorrect predictions or by selecting the best of several guesses, can prevent model collapse, validating popular approaches like RLHF.
