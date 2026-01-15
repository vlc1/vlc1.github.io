---
# Leave the homepage title empty to use the site title
title: ''
summary: ''
date: 2022-10-24
type: landing

design:
  # Default section spacing
  spacing: '6rem'

sections:
  - block: resume-biography-3
    content:
      # Choose a user profile to display (a folder name within `content/authors/`)
      username: me
      text: ''
      # Show a call-to-action button under your biography? (optional)
      button:
        text: Download CV
        url: uploads/resume.pdf
      headings:
        about: ''
        education: ''
        interests: ''
    design:
      # Use the new Gradient Mesh which automatically adapts to the selected theme colors
      background:
        gradient_mesh:
          enable: true

      # Name heading sizing to accommodate long or short names
      name:
        size: md # Options: xs, sm, md, lg (default), xl

      # Avatar customization
      avatar:
        size: medium # Options: small (150px), medium (200px, default), large (320px), xl (400px), xxl (500px)
        shape: circle # Options: circle (default), square, rounded
  - block: markdown
    content:
      title: '� My Research'
      subtitle: ''
      text: |-
        I develop advanced computational fluid dynamics algorithms for large-scale numerical modeling of multi-scale, multi-physics, and multi-phase flows. My work combines sharp-interface methods with high-performance computing to accurately simulate heat, mass, and momentum transfers in complex flow configurations relevant to process engineering and energy conversion systems.
        
        My research interests include:
        - Computational Fluid Dynamics (CFD)
        - Multiphase Flow Modeling
        - Scientific Computing
        - Numerical Methods and High-Performance Computing
        
        I welcome collaborations on research projects. Please feel free to reach out! 😊
    design:
      columns: '1'
---
