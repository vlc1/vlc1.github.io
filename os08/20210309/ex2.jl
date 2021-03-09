### A Pluto.jl notebook ###
# v0.12.20

using Markdown
using InteractiveUtils

# ╔═╡ 71c8f910-80bc-11eb-1126-ed7149690155
using Plots

# ╔═╡ f69b6256-80ba-11eb-1af1-4d29bcce6052
md"""
Notebook Pluto [ici](ex2.jl).

# Exercice 2

Le problème de Cauchy à résoudre par la méthode implicite d'Euler est le suivant :
```math
\forall t > 0, \quad y' \left ( t \right ) = 2t - y \left( t \right )
```
avec la condition initiale
```math
y \left ( 0 \right ) = 1.
```

Le modèle est donc défini comme suit : en math,
```math
f \colon \left ( t, y \right ) \mapsto 2t - y
```
et en `julia` :

"""

# ╔═╡ 1fb9f4ae-80bb-11eb-1198-cba990e1ca31
f(t, y) = 2t - y

# ╔═╡ 5469f276-80bb-11eb-0603-abe7a9c0c09b
md"""
On rappelle la solution exacte
```math
y \colon t \mapsto 2 \left ( t - 1 \right ) + 3 \exp \left ( -t \right )
```
et la spécialisation de la formule de récurrence à deux termes du schéma implicite d'Euler à cette EDO :
```math
\forall n, \quad y_{n + 1} = \frac{y_n + 2\tau t_{n + 1}}{1 + \tau}.
```

On peut les implémenter en `julia` :

"""

# ╔═╡ a49cade2-80bb-11eb-2926-65682447f919
y(t) = 2(t - 1) + 3exp(-t)

# ╔═╡ acf56fce-80bb-11eb-33d4-4f9d590ce403
implicit(y, t, τ) = (y + 2τ * t) / (1 + τ)

# ╔═╡ d278cc64-80bb-11eb-2101-29706c956e16
function ex2(N = 3, T = 0.3)
	τ = T / N

	T = [0.]
	Y = [1.]

	for n in 1:N
		push!(T, last(T) + τ)
		push!(Y, implicit(last(Y), last(T), τ))
	end

	T, Y
end

# ╔═╡ 02dfbb42-80bc-11eb-173c-9b4c1fb3a059
ex2(10)

# ╔═╡ 7dfb3e96-80bc-11eb-28c4-6feeba092a8f
begin
	fig = plot()
	plot!(fig, y, xlim = (0, 0.31), lw = 2, label = "Exacte")
	scatter!(fig, ex2(1)..., label = "τ = 0.3")
	scatter!(fig, ex2()..., label = "τ = 0.1")
	scatter!(fig, ex2(6)..., label = "τ = 0.05")
	scatter!(fig, ex2(15)..., label = "τ = 0.02")
end

# ╔═╡ Cell order:
# ╟─f69b6256-80ba-11eb-1af1-4d29bcce6052
# ╠═1fb9f4ae-80bb-11eb-1198-cba990e1ca31
# ╟─5469f276-80bb-11eb-0603-abe7a9c0c09b
# ╠═a49cade2-80bb-11eb-2926-65682447f919
# ╠═acf56fce-80bb-11eb-33d4-4f9d590ce403
# ╠═d278cc64-80bb-11eb-2101-29706c956e16
# ╠═02dfbb42-80bc-11eb-173c-9b4c1fb3a059
# ╠═71c8f910-80bc-11eb-1126-ed7149690155
# ╠═7dfb3e96-80bc-11eb-28c4-6feeba092a8f
