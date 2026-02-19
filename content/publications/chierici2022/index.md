---
title: "An optimized Vofi library to initialize the volume fraction field"
authors:
  - Chierici, A.
  - Chirco, L.
  - Le Chenadec, V.
  - Scardovelli, R.
  - Yecko, Ph.
  - Zaleski, S.
date: 2022-01-01
publication_types: ["Journal article"]
publication: "*Computer Physics Communications*"
publication_short: ""
abstract: "The Vofi (Volume Of Fluid Initializer) library has been developed to initialize the volume fraction field determined by implicitly-defined interfaces. The major conceptual changes in the numerical algorithms of the library are discussed and a few new features, including the computation of the reference phase centroid and of the interface length/area, are presented and applied to grid cells that are cuboids. Several numerical tests are considered to demonstrate both the accuracy of the new features, as the grid resolution and the number of integration points are varied, and the considerably improved efficiency of the library with respect to its previous version. A few of these tests are also included in the software distribution written in C, examples of C++ and Fortran interfaces are also provided. Program summary Program title: Vofi – Volume Of Fluid Initializer CPC Library link to program files: Code Ocean capsule: Licensing provisions: GPLv3 Programming language: C Journal reference of previous version: Comput. Phys. Commun. 200 (2016) 291-299 Does the new version supersede the previous version?: Yes. Reasons for the new version: Optimization of the library and new features has been added. Summary of revisions: Most of the routines have been rewritten, several numerical algorithms have been revised, as detailed in the paper, added features include the computation of the reference phase centroid and of the interface length in 2D and area in 3D; furthermore heights and triangulation data can now be printed for graphics. Nature of problem: The Vofi library computes the volume fraction of a cuboid cut by an interface described by a user-defined implicit function, and optionally the centroid of the cut volume and the area (length in 2D) of the portion of the interface inside the cell. Solution method: The Vofi library reorders the three Cartesian directions, x,y,z, in ascending order, x3,x2,x1, computes the integration limits along the third and second directions, respectively x3 and x2, and determines the local height function, along x1, that is the integrand of a double Gauss-Legendre integration with a variable number of nodes. Optionally, the same heights are used to compute the centroid of the cut volume and to triangulate the interface."
links:
  - name: Article
    url: https://www.sciencedirect.com/science/article/pii/S0010465522002259
hugoblox:
  ids:
    doi: "10.1016/j.cpc.2022.108506"
featured: false
---