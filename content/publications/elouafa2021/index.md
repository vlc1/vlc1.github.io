---
title: "Monolithic solvers for incompressible two-phase flows at large density and viscosity ratios"
authors:
  - El Ouafa, M.
  - Vincent, S.
  - Le Chenadec, V.
date: 2021-01-01
publication_types: ["Journal article"]
publication: "*Fluids*"
publication_short: ""
abstract: "In this paper, we investigate the accuracy and robustness of three classes of methods for solving two-phase incompressible flows on a staggered grid. Here, the unsteady two-phase flow equations are simulated by finite volumes and penalty methods using implicit and monolithic approaches (such as the augmented Lagrangian and the fully coupled methods), where all velocity components and pressure variables are solved simultaneously (as opposed to segregated methods). The interface tracking is performed with a Volume-of-Fluid (VOF) method, using the Piecewise Linear Interface Construction (PLIC) technique. The home code Fugu is used for implementing the various methods. Our target application is the simulation of two-phase flows at high density and viscosity ratios, which are known to be challenging to simulate. The resulting strategies of monolithic approaches will be proven to be considerably better suited for these two-phase cases, they also allow to use larger time step than segregated methods."
links:
  - name: Article
    url: https://www.mdpi.com/2311-5521/6/1/23
hugoblox:
  ids:
    doi: "10.3390/fluids6010023"
featured: false
---