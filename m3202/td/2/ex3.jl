### A Pluto.jl notebook ###
# v0.12.20

using Markdown
using InteractiveUtils

# ╔═╡ 3dcd5046-889a-11eb-22a8-954db4cb9ffe
md"""
# Exercice 3 -- Installation de pompage

1. Calcul de la puissance utile.

"""

# ╔═╡ 4cab86ba-889a-11eb-1571-3b0fc17929b7
begin
	Qᵥ = 3 / 3600
	Dₐ = 15e-2
	Dᵣ = 5e-2
end

# ╔═╡ 7bc31744-889a-11eb-3c41-1b0ab2412aab
Vₐ, Vᵣ = 4Qᵥ / π / Dₐ ^ 2,  4Qᵥ / π / Dᵣ ^ 2

# ╔═╡ 9e686a1a-889a-11eb-2d79-3f08140610ba
ΔH = 6.5

# ╔═╡ 68132044-889b-11eb-2b38-9fb07cf24e4b
begin
	ρ = 1e3
	μ = 1e-3
end

# ╔═╡ 61bcdc62-889b-11eb-3123-1f7069df3be6
Reₐ, Reᵣ = ρ * Vₐ * Dₐ / μ, ρ * Vᵣ * Dᵣ / μ

# ╔═╡ 2d3fa1b2-889c-11eb-05f0-27ad7eeeb3df
λₐ, λᵣ = 0.316 / Reₐ ^ (1 / 4), 0.316 / Reᵣ ^ (1 / 4)

# ╔═╡ 85b460c6-889c-11eb-2ad3-898e571eaf86
Kₐ, Kᵣ = 3 * 0.2 + 1.1, 17 * 0.1

# ╔═╡ 948eac1c-889c-11eb-0c1e-13948f24eefa
Lₐ, Lᵣ = 4, 24

# ╔═╡ a186c0be-889c-11eb-1ec9-c3e351cb7d28
g, h = 9.81, 3.

# ╔═╡ b9c1e938-889c-11eb-2203-df52e6360e34
hₐ = Vₐ ^ 2 / 2g * (Lₐ * λₐ / Dₐ + Kₐ)

# ╔═╡ da001864-889c-11eb-2321-6112c265eb19
hᵣ = Vᵣ ^ 2 / 2g * (Lᵣ * λᵣ / Dᵣ + Kᵣ) + h

# ╔═╡ 267a7856-889d-11eb-3e9e-0578f135f099
Pₚ = ρ * g * (hₐ + hᵣ) * Qᵥ

# ╔═╡ 7d180fe6-889d-11eb-1037-e108c1e29cf5
Pᵣ = Pₚ / 0.94

# ╔═╡ Cell order:
# ╟─3dcd5046-889a-11eb-22a8-954db4cb9ffe
# ╠═4cab86ba-889a-11eb-1571-3b0fc17929b7
# ╠═7bc31744-889a-11eb-3c41-1b0ab2412aab
# ╠═9e686a1a-889a-11eb-2d79-3f08140610ba
# ╠═68132044-889b-11eb-2b38-9fb07cf24e4b
# ╠═61bcdc62-889b-11eb-3123-1f7069df3be6
# ╠═2d3fa1b2-889c-11eb-05f0-27ad7eeeb3df
# ╠═85b460c6-889c-11eb-2ad3-898e571eaf86
# ╠═948eac1c-889c-11eb-0c1e-13948f24eefa
# ╠═a186c0be-889c-11eb-1ec9-c3e351cb7d28
# ╠═b9c1e938-889c-11eb-2203-df52e6360e34
# ╠═da001864-889c-11eb-2321-6112c265eb19
# ╠═267a7856-889d-11eb-3e9e-0578f135f099
# ╠═7d180fe6-889d-11eb-1037-e108c1e29cf5
