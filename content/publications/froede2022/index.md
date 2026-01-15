---
title: "A three-dimensional cell-based volume-of-fluid method for conservative simulations of primary atomization"
authors:
  - Fröde, F.
  - Grenga, T.
  - Le Chenadec, V.
  - Bode, M.
  - Pitsch, H.
date: 2022-01-01
publication_types: ["Journal article"]
publication: "*Journal of Computational Physics*"
publication_short: ""
abstract: "This paper presents an improvement of the three-dimensional unsplit cell-based advection scheme of Le Chenadec and Pitsch [J. Comput. Phys. 233 (2013) 10-33] [27], which was shown to be prone to conservation errors. The improved method ensures discrete conservation by introducing a correction of the projected cells, which is similar to the three-dimensional cell-based method of Comminal and Spangenberg [J. Comput. Phys. 442 (2021) 110479] [28], developed in parallel to this work. While the cell projection is performed as in the method of Le Chenadec and Pitsch, additional vertices are introduced to correct the projected cells. The positions of those are obtained from conservative flux volumes, which was inspired from the work of Owkes and Desjardins [J. Comput. Phys. 270 (2014) 587-612] [25]. The improved method is tested in two- and three-dimensional benchmark cases and compared to literature methods. Moreover, the improved method is applied in the simulation of a realistic coaxial liquid-gas primary atomization case, which suffered from large conservation errors when the method of Le Chenadec and Pitsch was applied."
links:
  - name: Article
    url: https://www.sciencedirect.com/science/article/pii/S0021999122004363
hugoblox:
  ids:
    doi: "10.1016/j.jcp.2022.111374"
featured: false
---