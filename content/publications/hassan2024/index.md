---
title: "Uncertainty quantification and sensitivity analysis of an unsteady axisymmetric reacting solid particle"
authors:
  - Hassan, A.
  - Schumacher, L.
  - Sabry, M.
  - Le Chenadec, V.
  - Sayadi, T.
date: 2024-01-01
publication_types: ["Journal article"]
publication: "*Combustion and Flame*"
publication_short: ""
abstract: "Simulations of unsteady solid fuel particle combustion involve a variety of complex phenomena, which can be numerically predicted using models with varying levels of fidelity. These models in turn rely on parameters obtained from experiments or small-scale simulations. It is therefore essential to quantify the uncertainties in the prediction of different quantities of interest with respect to these model parameters to ensure robustness. This is particularly important when combustion under different freestream compositions (for example, air or oxy atmospheres) are analyzed. The first step is to determine the most sensitive parameters of the model. However the large dimension of the parameter space makes traditional methods such as finite difference (brute force) unfeasible. This work addressed this bottleneck by employing a semi-discrete adjoint method to determine sensitivities. This study also examines the evolution of these sensitivities in time for a single unsteady axisymmetric particle undergoing devolatilization, where a methane mechanism is used to the gas phase chemical reactions. The dominant model parameters are identified for several quantities of interest, including particle temperature and burning rate, and under two freestream compositions (i.e. air and oxy atmospheres). Additionally, the impact of various devolatilization models on the extracted sensitivities is analyzed. In addition to sensitivities, an adjoint-based active sub-space method (AASM) Hassan et al. (2023) is also utilized to quantify the underlying uncertainties in the predictions. This provides a general assessment of model predictability with respect to the identified quantities of interest. Using AASM uncertainties are extracted for both air and oxy atmospheres and compared in the context of a single particle undergoing devolatilization. Comparisons reveal that particle parameters yield significantly greater uncertainties and sensitivities than gas phase reaction rates. Additionally, model parameter uncertainties are larger in the oxy atmosphere than in air, highlighting the impact of the freestream composition on the resulting predictions. Novelty and significance statement Quantifying the uncertainties and sensitivities associated with solid fuel combustion model parameters is unfeasible using traditional methods due to the large number of model parameters, which is known as the ‘curse of dimensionality’ However, by combining adjoint techniques with dimension reduction approaches in a single method, AASM, this issue can be overcome. AASM offers a general assessment of model predictability for various quantities of interest (QoIs), defining the most sensitive parameters in a global context rather than a local one, and shows the time evolution of uncertainties for these QoIs in different atmospheric conditions, revealing the role of the free-stream composition on the resulting predictions."
links:
  - name: Article
    url: https://www.sciencedirect.com/science/article/pii/S0010218024000750
hugoblox:
  ids:
    doi: "10.1016/j.combustflame.2024.113365"
featured: false
---