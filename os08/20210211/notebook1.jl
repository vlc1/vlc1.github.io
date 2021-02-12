### A Pluto.jl notebook ###
# v0.12.20

using Markdown
using InteractiveUtils

# ╔═╡ 07b20d22-66f0-11eb-37be-9375823a0491
using Plots

# ╔═╡ d26ab3d0-66ef-11eb-1fb4-a301fdba5369
md"""
Le code source de ce notebook Pluto est disponible [ici](notebook1.jl).

# Oscillateur harmonique

L'EDO s'écrit
```math
\ddot{\theta} \left ( t \right ) + \omega ^ 2 \sin \left ( \theta \left ( t \right ) \right ) = 0.
```

L'approximation des petits angles consiste à remplacer
```math
\sin \theta \simeq \theta
```
pour ``\theta \ll 1``.

Essayons d'illustrer cela graphiquement.

"""

# ╔═╡ 44210542-66f0-11eb-1cc1-731b539da8cc
begin
	local fig = plot(xlim = (-π, π), ylim = (-2, 2))
	plot!(fig, sin, lw = 2, label = "sin")
	plot!(fig, identity, lw = 2, label = "id")
end

# ╔═╡ 7e14e4aa-66f3-11eb-2a2b-270cdf12065f
md"""
# Une fonction non analytique

"""

# ╔═╡ 8693c79a-66f3-11eb-2bba-91bf6f197907
f(x) = exp(-1 / x ^ 2)

# ╔═╡ 92cf4764-66f3-11eb-351d-49c57a73a680
begin
	δ, L = 3e-2, 4.
	x = -L:δ:L
end

# ╔═╡ 902b7028-66f3-11eb-39af-c50729dc6893
begin
	local fig = plot()
	plot!(fig, x, f.(x), lw = 2, label = "f(x) = exp(-1 / x²)")
end

# ╔═╡ df374b2a-66f7-11eb-253d-fb7e4dcb16a2
md"""
# Note premier développement limité

Soit
```math
g \colon x \mapsto \frac{1}{1 - x}.
```

Cette fonction admet un développement limité à l'ordre ``n`` au voisinage de ``a = 0`` qui s'écrit :
```math
DL \left ( a, n \right ) \colon x \mapsto \sum_{i = 0} ^ n x ^ i.
```


"""

# ╔═╡ 135ef920-66f8-11eb-1d4a-a1d28d55eacd
g(x) = 1 / (1 - x)

# ╔═╡ 9e705022-66f8-11eb-3450-67c311e6a5de
function dg(x, n = 1)
	y = zero(x)
	for i in 0:n
		y += x ^ i
	end
	y
end

# ╔═╡ 5e90b780-66f8-11eb-1355-3724dc39574b
begin
	α, β = -1/2, 1/2, 0.01
	y = α:δ:β
end

# ╔═╡ 1875c3b2-66f8-11eb-3379-0db4625b418a
begin
	local fig = plot(xlim = (α, β), ylim = (g(α), g(β)))
	plot!(fig, y, g.(y), lw = 2, label = "g(x) = 1 / (1 - x)")
	plot!(fig, y, dg.(y, 0), lw = 2, label = "DL(0, 0)")
	plot!(fig, y, dg.(y, 1), lw = 2, label = "DL(0, 1)")
	plot!(fig, y, dg.(y, 2), lw = 2, label = "DL(0, 2)")
	plot!(fig, y, dg.(y, 10), lw = 2, label = "DL(0, 10)")
end

# ╔═╡ 44e43f16-66fb-11eb-0703-3f9e8b39d326
md"""
# La fonction logarithme

On souhaite visualiser la fonction
```math
h \colon x \mapsto \ln \left ( 1 + x \right )
```
qui admet le développement limité suivant à l'ordre ``n`` au voisinage de ``0`` :
```math
DL \left ( 0, n \right ) \colon x \mapsto -\sum_{i = 1} ^ n \frac{\left ( -x \right ) ^ i}{i}.
```

"""

# ╔═╡ be4915aa-66fb-11eb-2191-210df97fddde
h(x) = log(1 + x)

# ╔═╡ de54ca8a-66fb-11eb-0c45-1169aa5fb172
function dh(x, n = 1)
	y = zero(x)
	for i in 1:n
		y -= (-x) ^ i / i
	end
	y
end

# ╔═╡ f4072dca-66fb-11eb-36d2-452ac2fac42a
begin
	local fig = plot(xlim = (-1, 1), ylim = (-3/2, 3/2))
	plot!(fig, h, label = "h(x) = ln(1 + x)", lw = 2)
	plot!(fig, x -> dh(x, 0), label = "DL(0, 0)", lw = 2)
	plot!(fig, x -> dh(x, 1), label = "DL(0, 1)", lw = 2)
	plot!(fig, x -> dh(x, 2), label = "DL(0, 2)", lw = 2)
end

# ╔═╡ 017d0ce6-6c6c-11eb-1145-19fddc0dbfa2
md"""
# Exercice 1

Représenter le graphe de ``\arctan`` et celui de ses développements limités au voisinage du point ``a = 0`` aux ordres ``1``, ``3`` et ``5``.

"""

# ╔═╡ c9dac816-6c6c-11eb-33fc-15e21b9cd1e2
function datan(x, n = 1)
	y = zero(x)
	for i in 1:n
		y += (-1) ^ (i + 1) *  x ^ (2i - 1) / (2i - 1)
	end
	y
end

# ╔═╡ 38f0e792-6c6c-11eb-1f91-47ff039dfd73
begin
	local α, β, h = -3, 3, 0.01
	local X = α:h:β
	local fig = plot(xlim = (α, β), ylim = (-2, 2))
	plot!(fig, atan, label = "arctan", lw = 2)
	plot!(fig, X, datan.(X), label = "DL(0, 1)", lw = 2)
	plot!(fig, X, datan.(X, 2), label = "DL(0, 3)", lw = 2)
	plot!(fig, X, datan.(X, 3), label = "DL(0, 5)", lw = 2)
	plot!(fig, X, datan.(X, 10), label = "DL(0, 19)", lw = 2)
end

# ╔═╡ 13edc788-6c6e-11eb-32ba-23f2b2f16cff
md"""
# La fonction `exp`

Le développement limité de la fonction ``\exp`` à l'ordre ``n`` s'écrit au voisinage de ``a = 0`` :
```math
DL \left ( 0, n \right ) \colon x \mapsto \sum_{i = 0}^n \frac{x ^ i}{i!}
```
(*cf.* formule de Taylor-Young).

"""

# ╔═╡ 4eadd71c-6c6e-11eb-0219-ad3920c8066a
function dexp(x, n = 1)
	y = zero(x)
	for i = 0:n
		y += x ^ i / factorial(i)
	end
	y
end

# ╔═╡ 8b4dc63e-6c6e-11eb-2f7e-bd51f3810422
begin
	local α, β, h = -1, 1, 0.01
	local X = α:h:β
	local fig = plot(xlim = (α, β), ylim = (-1/2, 3))
	plot!(fig, X, exp.(X), label = "exp", lw = 2)
	plot!(fig, X, dexp.(X), label = "DL(0, 1)", lw = 2)
	plot!(fig, X, dexp.(X, 2), label = "DL(0, 2)", lw = 2)
	plot!(fig, X, dexp.(X, 3), label = "DL(0, 3)", lw = 2)
end

# ╔═╡ Cell order:
# ╟─d26ab3d0-66ef-11eb-1fb4-a301fdba5369
# ╠═07b20d22-66f0-11eb-37be-9375823a0491
# ╠═44210542-66f0-11eb-1cc1-731b539da8cc
# ╟─7e14e4aa-66f3-11eb-2a2b-270cdf12065f
# ╠═8693c79a-66f3-11eb-2bba-91bf6f197907
# ╠═92cf4764-66f3-11eb-351d-49c57a73a680
# ╠═902b7028-66f3-11eb-39af-c50729dc6893
# ╟─df374b2a-66f7-11eb-253d-fb7e4dcb16a2
# ╠═135ef920-66f8-11eb-1d4a-a1d28d55eacd
# ╠═9e705022-66f8-11eb-3450-67c311e6a5de
# ╠═5e90b780-66f8-11eb-1355-3724dc39574b
# ╠═1875c3b2-66f8-11eb-3379-0db4625b418a
# ╟─44e43f16-66fb-11eb-0703-3f9e8b39d326
# ╠═be4915aa-66fb-11eb-2191-210df97fddde
# ╠═de54ca8a-66fb-11eb-0c45-1169aa5fb172
# ╠═f4072dca-66fb-11eb-36d2-452ac2fac42a
# ╟─017d0ce6-6c6c-11eb-1145-19fddc0dbfa2
# ╠═c9dac816-6c6c-11eb-33fc-15e21b9cd1e2
# ╠═38f0e792-6c6c-11eb-1f91-47ff039dfd73
# ╟─13edc788-6c6e-11eb-32ba-23f2b2f16cff
# ╠═4eadd71c-6c6e-11eb-0219-ad3920c8066a
# ╠═8b4dc63e-6c6e-11eb-2f7e-bd51f3810422
