---
title: "MoColl: Agent-Based Specific and General Model Collaboration for Image Captioning"
collection: publications
permalink: /publication/MoColl
excerpt: '[Arxiv version](https://arxiv.org/abs/2501.01834)'
date: 2025-01-03
venue: 'arXiv'
paperurl: 'https://arxiv.org/abs/2501.01834'
citation: 'Yang, P., & Dong, B. (2025). MoColl: Agent-Based Specific and General Model Collaboration for Image Captioning. arXiv preprint arXiv:2501.01834.'
---

Image captioning is a critical task at the intersection of computer vision and natural language processing, with wide-ranging applications across various domains. For complex tasks such as diagnostic report generation, deep learning models require not only domain-specific image-caption datasets but also the incorporation of relevant general knowledge to provide contextual accuracy. Existing approaches exhibit inherent limitations: specialized models excel in capturing domain-specific details but lack generalization, while vision-language models (VLMs) built on large language models (LLMs) leverage general knowledge but struggle with domain-specific adaptation. To address these limitations, this paper proposes a novel agent-enhanced model collaboration framework, which we call MoColl, designed to effectively integrate domain-specific and general knowledge. Specifically, our approach is to decompose complex image captioning tasks into a series of interconnected question-answer subtasks. A trainable visual question answering (VQA) model is employed as a specialized tool to focus on domain-specific visual analysis, answering task-specific questions based on image content. Concurrently, an LLM-based agent with general knowledge formulates these questions and synthesizes the resulting question-answer pairs into coherent captions. Beyond its role in leveraging the VQA model, the agent further guides its training to enhance its domain-specific capabilities. Experimental results on radiology report generation validate the effectiveness of the proposed framework, demonstrating significant improvements in the quality of generated reports.
