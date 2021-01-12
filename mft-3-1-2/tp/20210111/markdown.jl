### A Pluto.jl notebook ###
# v0.12.7

using Markdown
using InteractiveUtils

# ╔═╡ 12ae2862-54be-11eb-1da7-e181257283c0
using Plots

# ╔═╡ 1d0650aa-54be-11eb-2dfb-1bf30caa977c
md"""
Retrouver le fichier source [ici](markdown.jl).

"""

# ╔═╡ 43d9773a-54b3-11eb-35eb-7bd2e0e9c120
const R = 8.314

# ╔═╡ 4eb33da8-54b3-11eb-1c57-ff89d4a0a89d
hello(name = "World") = "Hello, $(name)!"

# ╔═╡ 61b64256-54b3-11eb-2920-d5f866b09c8a
hello()

# ╔═╡ 6395e4b4-54b3-11eb-3c66-b741ace55873
hello("Nabila")

# ╔═╡ f3baeb06-54b7-11eb-30aa-ed804166d04c
1 + π

# ╔═╡ f6fcba3c-54b7-11eb-3c5c-8f4c31439578
# Markdown
md"""
# Une section

## Une subsection

On peut aussi ajouter des équations (``\LaTeX``):
```math
\exp(x) = \sum _ {n = 0} ^ \infty \frac{x ^ n}{n!}.
```

On peut définir le jacobien de la fonction
```math
f \colon \left \vert \begin{aligned}
\mathbb{R}^2 & \to \mathbb{R} ^ 3, \\
\left ( x, y \right ) & \mapsto \left ( \begin{array}{c} x ^ 2 \\ x y \\ y ^ 3 \end{array} \right )
\end{aligned} \right .
```
comme
```math
J \left ( f \right ) \colon \left \vert \begin{aligned}
\mathbb{R}^2 & \to \mathbb{R} ^ 3 \times \mathbb{R} ^ 2, \\
\left ( x, y \right ) & \mapsto \left ( \begin{array}{cc}
2 x & 0 \\
y & x \\
0 & 3 y ^ 2
\end{array} \right )
\end{aligned} \right . .
```

## Une EDO

```math
0 = \frac{1}{r ^ \alpha} \frac{\mathrm{d}}{\mathrm{d} r} \left ( r ^ \alpha \lambda \frac{\mathrm{d} T}{\mathrm{d} r} \right ).
```

## Un exemple de graphique

On peut exécuter du code (le nombre d'Euler vaut $(exp(1))) ou afficher les graphes de fonctions usuelles (ou pas si usuelles...).

$(plot(exp))

"""

# ╔═╡ Cell order:
# ╟─1d0650aa-54be-11eb-2dfb-1bf30caa977c
# ╠═12ae2862-54be-11eb-1da7-e181257283c0
# ╠═43d9773a-54b3-11eb-35eb-7bd2e0e9c120
# ╠═4eb33da8-54b3-11eb-1c57-ff89d4a0a89d
# ╠═61b64256-54b3-11eb-2920-d5f866b09c8a
# ╠═6395e4b4-54b3-11eb-3c66-b741ace55873
# ╠═f3baeb06-54b7-11eb-30aa-ed804166d04c
# ╟─f6fcba3c-54b7-11eb-3c5c-8f4c31439578
