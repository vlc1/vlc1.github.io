### A Pluto.jl notebook ###
# v0.12.20

using Markdown
using InteractiveUtils

# ╔═╡ f50f6efc-6c77-11eb-2840-596eb1729330
using Plots

# ╔═╡ 77ecf412-6c77-11eb-3342-ff8278337980
md"""
Le code source de ce notebook Pluto est disponible [ici](notebook2.jl).

Visualisons les développements limités des fonctions ``\cos`` et ``sin`` au voisinage de ``a = 0`` :
```math
\begin{aligned}
\cos \left ( x \right ) & = \sum_{n = 0} ^ \infty \left ( -1 \right ) ^ n \frac{x ^ {2n}}{\left ( 2n \right )!}, \\
\sin \left ( x \right ) & = \sum_{n = 0} ^ \infty \left ( -1 \right ) ^ n \frac{x ^ {2n + 1}}{\left ( 2n + 1 \right )!}.
\end{aligned}
```
"""

# ╔═╡ c5c4848e-6c77-11eb-3f75-93320ed1fc9b
function dcos(x, n = 1)
	y = zero(x)
	for j = 0:n
		y += (-1) ^ j * x ^ 2j / factorial(2j)
	end
	y
end

# ╔═╡ ea78ba34-6c77-11eb-24ed-b981a42950e1
function dsin(x, n = 1)
	y = zero(x)
	for j = 0:n
		y += (-1) ^ j * x ^ (2j + 1) / factorial(2j + 1)
	end
	y
end

# ╔═╡ f8338596-6c77-11eb-03ea-c71527da3e22
begin
	local fig = plot(ylim = (-2, 2))
	plot!(fig, cos, lw = 2, label = "cos")
	plot!(fig, x -> dcos(x, 0), lw = 2, label = "DL(0, 1)")
	plot!(fig, dcos, lw = 2, label = "DL(0, 3)")
	plot!(fig, x -> dcos(x, 2), lw = 2, label = "DL(0, 5)")
	plot!(fig, x -> dcos(x, 5), lw = 2, label = "DL(0, 11)")
end

# ╔═╡ 881144c8-6c78-11eb-2e84-d5a82e68def2
begin
	local fig = plot(ylim = (-2, 2))
	plot!(fig, sin, lw = 2, label = "sin")
	plot!(fig, x -> dsin(x, 0), lw = 2, label = "DL(0, 0)")
	plot!(fig, dsin, lw = 2, label = "DL(0, 2)")
	plot!(fig, x -> dsin(x, 2), lw = 2, label = "DL(0, 6)")
	plot!(fig, x -> dsin(x, 5), lw = 2, label = "DL(0, 12)")
end

# ╔═╡ Cell order:
# ╟─77ecf412-6c77-11eb-3342-ff8278337980
# ╠═c5c4848e-6c77-11eb-3f75-93320ed1fc9b
# ╠═ea78ba34-6c77-11eb-24ed-b981a42950e1
# ╠═f50f6efc-6c77-11eb-2840-596eb1729330
# ╠═f8338596-6c77-11eb-03ea-c71527da3e22
# ╠═881144c8-6c78-11eb-2e84-d5a82e68def2
