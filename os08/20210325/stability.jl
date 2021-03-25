### A Pluto.jl notebook ###
# v0.12.20

using Markdown
using InteractiveUtils

# ╔═╡ 02f36ff8-8d72-11eb-024b-0de078bf7d15
using Plots

# ╔═╡ e4fc8f14-8d6e-11eb-15eb-9b669955a870
md"""
# Stabilité

On travaille sur le cas du modèle linéaire :
```math
f \colon \left ( t, y \right ) \mapsto \lambda y
```
où ``\lambda \in \mathbb{C}``.

"""

# ╔═╡ fe3800bc-8d6e-11eb-02c1-497cc9723077
f(t, y, λ = -1) = λ * y

# ╔═╡ 4b44145c-8d6f-11eb-0407-495653ae9459
md"""
La solution exacte du problème de Cauchy
```math
\left \{ \begin{aligned}
\dot{y} & = \lambda y, \\
y \left ( 0 \right ) & = y_0
\end{aligned} \right .
```
est
```math
y \colon t \mapsto \exp \left ( \lambda t \right ) y_0.
```

"""

# ╔═╡ 490fff86-8d6f-11eb-2245-2b7e8415e002
y(t, λ = -1, y₀ = 1) = exp(λ * t) * y₀

# ╔═╡ e09d1fd2-8d6f-11eb-3ff5-691aa98709eb
md"""
## Aparté sur le concept d'argument de fonctions en Julia

### Arguments positionels

Ils sont identifiés par leur position dans la liste des arguments.

Ex. :
```julia
g(x, y) = x + y
```
où

* `x` est le **premier argument**,
* `y` est le **second**.

"""

# ╔═╡ f9576f6e-8d6f-11eb-0618-a1efa6e6debd
md"""
### Arguments optionels

Ils sont déclarés de la manière suivante :
```julia
g(x, y, z = 1) = z * (x + y)
```

Ce nouvel argument `z` n'a pas besoin d'être spécifié : par défaut, il prend la valeur 1.

"""

# ╔═╡ 53859786-8d70-11eb-181a-3bfeee66989b
g(x, y, z = 1) = z * (x + y)

# ╔═╡ 652b7442-8d70-11eb-2559-51bd235afacc
g(1, 2), g(1, 2, 3)

# ╔═╡ 8707fb0a-8d70-11eb-1518-03e2292def9a
md"""
Que se passe t'il lorsqu'on a plus d'un argument optionel ?

Ex. :
```julia
g(x, y, z = 1, t = 0) = z * (x + y) + t
```

On ne peut pas ne modifier que `t`, et utiliser la valeur par défaut de `z`. Heureusement, il existe un autre type d'arguement : les arguments à mot clé.

### Arguments à mot clé

Ceux-ci sont passés comme les arguments optionnels, à la différence qu'ils sont séparés de ces derniers et de les arguments positionels par un point-virgule :
```
h(x, y, z = 1; t = 0) = z * (x + y) + t
```
"""

# ╔═╡ 1cdebd1a-8d71-11eb-0128-cf7c2dcad85b
h(x, y, z = 1; t = 0) = z * (x + y) + t

# ╔═╡ 205da53c-8d71-11eb-32c5-e30dba09e445
h(1, 2)

# ╔═╡ 3dd64696-8d71-11eb-18c6-ab1f492678c5
h(1, 2, 3)

# ╔═╡ 4bcee3f2-8d71-11eb-3403-936ea9062eba
h(1, 2, t = 10)

# ╔═╡ 7ddc73fa-8d71-11eb-11ab-1b0276cddd08
begin
	t = 10
	h(1, 2; t), h(1, 2, t)
end

# ╔═╡ 073d3bb6-8d72-11eb-0d23-275cc23ac5a4
begin
	xlim, ylim = (0, 3), (-0.1, 1.1)
	x = range(xlim..., step = 0.01)
	fig = plot(; xlim, ylim)
	plot!(fig, x, y.(x), lw = 2, label = "exact")
end

# ╔═╡ d1f09042-8d72-11eb-3d7e-09cea773c454
explicit(y, τ, λ = -1) = (1 + λ * τ) * y

# ╔═╡ 0530ee0c-8d73-11eb-2413-1def9d61a3a6
implicit(y, τ, λ = -1) = y / (1 - λ * τ)

# ╔═╡ 19f17aa0-8d73-11eb-3e34-a3f67f9a179d
midpoint(y, τ, λ = -1) = (1 + λ * τ / 2) / (1 - λ * τ / 2) * y

# ╔═╡ 3e1743f8-8d73-11eb-12d0-f710a7131542
function numerical(scheme, τ, T = 10.0, λ = -1.0, y₀ = 1.0)
	t, y = zero(T), y₀
	ts, ys = [t], [y]

	while t < T
		t += τ
		y = scheme(y, τ, λ)

		push!(ts, t)
		push!(ys, y)
	end

	ts, ys
end

# ╔═╡ cb2c24fa-8d73-11eb-0cb6-25192a8fdb1d
begin
	τ = 2.1
	local xlim, ylim = (0, 10), (-2.0, 2.0)
	local x = range(xlim..., step = 0.01)
	local fig = plot(; xlim, ylim)
	plot!(fig, x, y.(x), lw = 2, label = "exact")
	scatter!(fig, numerical(explicit, τ)..., lw = 2, label = "explicit")
	scatter!(fig, numerical(implicit, τ)..., lw = 2, label = "implicit")
	scatter!(fig, numerical(midpoint, τ)..., lw = 2, label = "midpoint")
end

# ╔═╡ Cell order:
# ╟─e4fc8f14-8d6e-11eb-15eb-9b669955a870
# ╠═fe3800bc-8d6e-11eb-02c1-497cc9723077
# ╟─4b44145c-8d6f-11eb-0407-495653ae9459
# ╠═490fff86-8d6f-11eb-2245-2b7e8415e002
# ╟─e09d1fd2-8d6f-11eb-3ff5-691aa98709eb
# ╟─f9576f6e-8d6f-11eb-0618-a1efa6e6debd
# ╠═53859786-8d70-11eb-181a-3bfeee66989b
# ╠═652b7442-8d70-11eb-2559-51bd235afacc
# ╟─8707fb0a-8d70-11eb-1518-03e2292def9a
# ╠═1cdebd1a-8d71-11eb-0128-cf7c2dcad85b
# ╠═205da53c-8d71-11eb-32c5-e30dba09e445
# ╠═3dd64696-8d71-11eb-18c6-ab1f492678c5
# ╠═4bcee3f2-8d71-11eb-3403-936ea9062eba
# ╠═7ddc73fa-8d71-11eb-11ab-1b0276cddd08
# ╠═02f36ff8-8d72-11eb-024b-0de078bf7d15
# ╠═073d3bb6-8d72-11eb-0d23-275cc23ac5a4
# ╠═d1f09042-8d72-11eb-3d7e-09cea773c454
# ╠═0530ee0c-8d73-11eb-2413-1def9d61a3a6
# ╠═19f17aa0-8d73-11eb-3e34-a3f67f9a179d
# ╠═3e1743f8-8d73-11eb-12d0-f710a7131542
# ╠═cb2c24fa-8d73-11eb-0cb6-25192a8fdb1d
