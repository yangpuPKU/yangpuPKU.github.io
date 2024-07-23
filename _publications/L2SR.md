---
title: "L2SR: Learning to Sample and Reconstruct for Accelerated MRI via Reinforcement Learning"
collection: publications
permalink: /publication/L2SR
excerpt: '[Arxiv version](https://arxiv.org/abs/2212.02190)'
date: 2024-4-18
venue: 'Inverse Problem'
paperurl: 'https://iopscience.iop.org/article/10.1088/1361-6420/ad3b34'
citation: 'Yang, Pu, and Bin Dong. "L2SR: Learning to Sample and Reconstruct for accelerated MRI via reinforcement learning." Inverse Problems (2024).'
---

Magnetic resonance imaging (MRI) is a widely used medical imaging technique, but its long acquisition time can be a limiting factor in clinical settings. To address this issue, researchers have been exploring ways to reduce the acquisition time while maintaining the reconstruction quality. Previous works have focused on finding either sparse samplers with a fixed reconstructor or finding reconstructors with a fixed sampler. However, these approaches do not fully utilize the potential of joint learning of samplers and reconstructors. In this paper, we propose an alternating training framework for jointly learning a good pair of samplers and reconstructors via deep reinforcement learning. In particular, we consider the process of MRI sampling as a sampling trajectory controlled by a sampler, and introduce a novel sparse-reward partially observed Markov decision process (POMDP) to formulate the MRI sampling trajectory. Compared to the dense-reward POMDP used in existing works, the proposed sparse-reward POMDP is more computationally efficient and has a provable advantage. Moreover, the proposed framework, called learning to sample and reconstruct (L2SR), overcomes the training mismatch problem that arises in previous methods that use dense-reward POMDP. By alternately updating samplers and reconstructors, L2SR learns a pair of samplers and reconstructors that achieve state-of-the-art reconstruction performances on the fastMRI dataset. Codes are available at [url](https://github.com/yangpuPKU/L2SR-Learning-to-Sample-and-Reconstruct). 
