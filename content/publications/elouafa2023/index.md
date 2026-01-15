---
title: "Fully-coupled parallel solver for the simulation of two-phase incompressible flows"
authors:
  - El Ouafa, S.
  - Vincent, S.
  - Le Chenadec, V.
  - Trouette, B.
date: 2023-01-01
publication_types: ["Journal article"]
publication: "*Computers & Fluids*"
publication_short: ""
abstract: "In the framework of the in-house code Fugu, a fully-coupled solver is developed for massively parallel simulations of three-dimensional incompressible multiphase flows. The linearized momentum and continuity equations arising from the implicit solution of the fluid velocities and pressure are solved simultaneously. The method uses a BiCGStab(2) (Dongarra et al., 1998) iterative solver with an original preconditioner for the velocity block and an approximation of the inverse of the Schur complement. This is achieved by using PFMG or SMG from HYPRE and an efficient sparse matrix–vector multiplication using the CSR storage format. The construction and the tracking of the interface separating the different involved phases is based on a conservative VOF method. Test cases, such as a spherical bubble rising in quiescent liquid and the free fall of a dense sphere, are performed to validate the models, especially in the presence of strong density and viscosity ratios between fluids. Other cases, such as the phase inversion, demonstrate the ability of the new fully-coupled solver to solve two-phase problems with more than 1 billion degrees of freedom with excellent scalability."
links:
  - name: Article
    url: https://www.sciencedirect.com/science/article/pii/S0045793023002207
hugoblox:
  ids:
    doi: "10.1016/j.compfluid.2023.105995"
featured: false
---