---
title: "Adjoint-based optimization of two-dimensional Stefan problems"
authors:
  - Fullana, T.
  - Le Chenadec, V.
  - Sayadi, T.
date: 2023-01-01
publication_types: ["Journal article"]
publication: "*Journal of Computational Physics*"
publication_short: ""
abstract: "A range of optimization cases of two-dimensional Stefan problems, solved using a tracking-type cost-functional, is presented. A level-set method is used to capture the interface between the liquid and solid phases and an immersed boundary (cut cell) method coupled with an implicit time-advancement scheme is employed to solve the heat equation. A conservative implicit-explicit scheme is then used for solving the level-set transport equation. The resulting numerical framework is validated with respect to existing analytical solutions of the forward Stefan problem. An adjoint-based algorithm is then employed to efficiently compute the gradient used in the optimization algorithm (L-BFGS). The algorithm follows a continuous adjoint framework, where adjoint equations are formally derived using shape calculus and transport theorems. A wide range of control objectives are presented, and the results show that using parameterized boundary actuation leads to effective control strategies in order to suppress interfacial instabilities or to maintain a desired crystal shape."
links:
  - name: Article
    url: https://www.sciencedirect.com/science/article/pii/S002199912200938X
hugoblox:
  ids:
    doi: "10.1016/j.jcp.2022.111875"
featured: false
---