### A Pluto.jl notebook ###
# v0.12.20

using Markdown
using InteractiveUtils

# ╔═╡ 71c8f910-80bc-11eb-1126-ed7149690155
using Plots

# ╔═╡ f69b6256-80ba-11eb-1af1-4d29bcce6052
md"""
Notebook Pluto [ici](ex2mod.jl).

# Exercice 2 modifié

Le problème de Cauchy à résoudre par la méthode du point milieu est le suivant :
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
et la spécialisation de la formule de récurrence à deux termes du schéma du point milieu à cette EDO :
```math
\forall n, \quad y_{n + 1} = \frac{\left ( 1 - \tau / 2 \right ) y_n + 2\tau t_{n + 1 / 2}}{1 + \tau / 2}.
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

# ╔═╡ 3ff612c8-87f2-11eb-1b86-ab5a7922d522
midpoint(y, t, τ) = ((1 - τ / 2) * y + 2τ * (t + τ / 2)) / (1 + τ / 2)

# ╔═╡ 67a6e0a4-87f2-11eb-2847-2bce5e7581f5
function ex2mod(N = 3, T = 0.3)
	τ = T / N

	T = [0.]
	Y = [1.]

	for n in 1:N
		push!(Y, midpoint(last(Y), last(T), τ))
		push!(T, last(T) + τ)
	end

	T, Y
end

# ╔═╡ 7dfb3e96-80bc-11eb-28c4-6feeba092a8f
begin
	local fig = plot()
	plot!(fig, y, xlim = (0, 0.31), lw = 2, label = "Exacte")
	scatter!(fig, ex2(1)..., label = "τ = 0.3 (impl.)")
	scatter!(fig, ex2mod(1)..., label = "τ = 0.3 (midpoint)")
end

# ╔═╡ a9055b06-87f3-11eb-0602-bd2c1dbdfd5a
begin
	local fig = plot()
	plot!(fig, y, xlim = (0, 0.31), lw = 2, label = "Exacte")
	scatter!(fig, ex2()..., label = "τ = 0.1 (impl.)")
	scatter!(fig, ex2mod()..., label = "τ = 0.1 (midpoint)")
end

# ╔═╡ cb4a3e8e-87f3-11eb-1ac3-fdc7e0131e18
begin
	local fig = plot()
	plot!(fig, y, xlim = (0, 0.31), lw = 2, label = "Exacte")
	scatter!(fig, ex2(1)..., label = "τ = 0.3 (impl.)")
	scatter!(fig, ex2(2)..., label = "τ = 0.15 (impl.)")
end

# ╔═╡ 62897800-87f4-11eb-0f32-df4d94df3122
error(T, Y) = last(Y) - y(last(T))

# ╔═╡ 750b2f5a-87f4-11eb-3998-29ddb421cf1f
error(ex2(1)...) / error(ex2(2)...)

# ╔═╡ a8d0135a-87f4-11eb-2501-2b8ae0b25200
error(ex2(2)...) / error(ex2(4)...)

# ╔═╡ b4b4b02c-87f4-11eb-23e7-07cc7cf2747d
for i in 1:10
	ϵ = error(ex2(2 ^ i)...) / error(ex2(2 ^ (i + 1))...)
	@show 2 ^ i, 2 ^ (i + 1) ϵ
end

# ╔═╡ 1b846216-87f5-11eb-0458-7374008855fe
begin
	local fig = plot()
	plot!(fig, y, xlim = (0, 0.31), lw = 2, label = "Exacte")
	scatter!(fig, ex2mod(1)..., label = "τ = 0.3 (midpoint)")
	scatter!(fig, ex2mod(2)..., label = "τ = 0.15 (midpoint)")
end

# ╔═╡ 3795c0f8-87f5-11eb-1f09-43afbe6739eb
for i in 1:10
	ϵ = error(ex2mod(2 ^ i)...) / error(ex2mod(2 ^ (i + 1))...)
	@show 2 ^ i, 2 ^ (i + 1) ϵ
end

# ╔═╡ Cell order:
# ╟─f69b6256-80ba-11eb-1af1-4d29bcce6052
# ╠═1fb9f4ae-80bb-11eb-1198-cba990e1ca31
# ╟─5469f276-80bb-11eb-0603-abe7a9c0c09b
# ╠═a49cade2-80bb-11eb-2926-65682447f919
# ╠═acf56fce-80bb-11eb-33d4-4f9d590ce403
# ╠═d278cc64-80bb-11eb-2101-29706c956e16
# ╠═3ff612c8-87f2-11eb-1b86-ab5a7922d522
# ╠═67a6e0a4-87f2-11eb-2847-2bce5e7581f5
# ╠═71c8f910-80bc-11eb-1126-ed7149690155
# ╠═7dfb3e96-80bc-11eb-28c4-6feeba092a8f
# ╠═a9055b06-87f3-11eb-0602-bd2c1dbdfd5a
# ╠═cb4a3e8e-87f3-11eb-1ac3-fdc7e0131e18
# ╠═62897800-87f4-11eb-0f32-df4d94df3122
# ╠═750b2f5a-87f4-11eb-3998-29ddb421cf1f
# ╠═a8d0135a-87f4-11eb-2501-2b8ae0b25200
# ╠═b4b4b02c-87f4-11eb-23e7-07cc7cf2747d
# ╠═1b846216-87f5-11eb-0458-7374008855fe
# ╠═3795c0f8-87f5-11eb-1f09-43afbe6739eb
