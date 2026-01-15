---
title: "A levelset-based cut-cell method for interfacial flows: part 1—{Navier}–{Stokes} equations and {Rayleigh}–{Bénard} instability with melting boundary"
authors:
  - Quirós Rodríguez, A.
  - Fullana, T.
  - Le Chenadec, V.
  - Sayadi, T.
date: 2025-01-01
publication_types: ["Journal article"]
publication: "*Acta Mechanica*"
publication_short: ""
abstract: "The treatment of complex geometries in computational fluid dynamics applications is a challenging endeavor, particularly when they couple the dynamics of two flow fields, as in multi-phase applications. Immersed boundary and cut-cell techniques can significantly simplify the solution workflow by alleviating the meshing process required by body-fitted meshes. However, these methods introduce new challenges, as the formulation of accurate and well-posed discrete operators becomes nontrivial. In this work, a conservative Cartesian cut-cell method is proposed for the solution of scalar transport equations with mixed boundary conditions, as well as the incompressible Navier–Stokes equations on staggered Cartesian grids. Given that they require constant updates for unsteady boundaries/interfaces and subsequent matrix assembly for the solution of linear systems, emphasis is placed on the simplicity of the operators by introducing a set of geometric moments easily computed from a levelset method and retaining a nearest-neighbor stencil. For stability and robustness, the discrete operators are designed to mimic the structure of the continuous ones. These properties are first exemplified on a Poisson equation with mixed boundary conditions: In the pure Dirichlet (Neumann, respectively) case, the discrete problem is shown to be symmetric positive definite (semi-definite, respectively), just like the continuous problem. An advection equation for a vector-valued field is also studied to highlight the skew-symmetry of the proposed discretization of the convective term. This property is required to achieve discrete kinetic equation conservation in the inviscid and incompressible Navier–Stokes equations. The accuracy and robustness of the method are then demonstrated with flows past a circular cylinder, as well as the numerical simulation of Rayleigh–Bénard instability in the presence of a melting boundary."
links:
  - name: Article
    url: https://doi.org/10.1007/s00707-024-04133-4
hugoblox:
  ids:
    doi: "10.1007/s00707-024-04133-4"
featured: false
---