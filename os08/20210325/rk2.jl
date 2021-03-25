### A Pluto.jl notebook ###
# v0.12.20

using Markdown
using InteractiveUtils

# ╔═╡ bd6d77d4-8d81-11eb-0670-e715a8310866
using Plots

# ╔═╡ cc8c04a2-8d80-11eb-131c-e75c570eaf60
md"""
# Schéma RK2

Le schéma RK2 s'écrit sous la forme suivante :
```math
\left \{ \begin{aligned}
y_* & = y_n + \frac{\tau}{2} f \left (t_n, y_n \right ), \\
y_{n + 1} & = y_n + \tau f \left ( t_{n + 1/2}, y_* \right )
\end{aligned}\right .
```

La raison géométrique obtenue en utilisant le modèle linéaire est donnée par :
```math
\sigma ^ {\mathrm{rk2}} \colon z \mapsto 1 + z + \frac{z ^ 2}{2}.
```

Définie en fonction des valeurs réelle et imaginaire, le carré du module de cette fonction
```math
\mu = \left \vert \sigma ^ \mathrm{rk2} \right \vert ^ 2
```
s'écrit :
```math
\mu \colon \left ( x, y \right ) \mapsto \left (1 + x + \frac{x ^ 2 - y ^ 2}{2} \right ) ^ 2 + \left [ y \left ( 1 + x \right ) \right ] ^ 2. 
```

"""

# ╔═╡ f910c99a-8d80-11eb-1287-47f50e432181
μ(x, y) = (1 + x + (x ^ 2 - y ^ 2) / 2) ^ 2 + (y * (1 + x)) ^ 2

# ╔═╡ c0a215f4-8d81-11eb-10d7-cdaeeaf521a9
begin
	local fig = contour(aspect_ratio = :equal)
	contour!(fig, -3:0.01:.5, -3:0.01:3, μ, levels = [1], lw = 2, color = :red, label = "RK2")
	contour!(fig, -3:0.01:.5, -3:0.01:3, (x, y) -> (1 + x) ^ 2 + y ^ 2, color = :blue, levels = [1], lw = 2, label = "EE")
end

# ╔═╡ Cell order:
# ╟─cc8c04a2-8d80-11eb-131c-e75c570eaf60
# ╠═f910c99a-8d80-11eb-1287-47f50e432181
# ╠═bd6d77d4-8d81-11eb-0670-e715a8310866
# ╠═c0a215f4-8d81-11eb-10d7-cdaeeaf521a9
