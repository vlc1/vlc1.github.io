### A Pluto.jl notebook ###
# v0.12.7

using Markdown
using InteractiveUtils

# ╔═╡ 33252892-833d-11eb-39d1-f9aae3f1ece0
md"""
# Exercice 2

"""

# ╔═╡ 3a7b2612-833d-11eb-0327-77bf90b7c6dd
begin
	Δh = 4.0
	P₀ = 1e5
	ρ = 1e3
	g = 9.81
	D = 0.1
	S = π * (D / 2) ^ 2
end

# ╔═╡ 4e8d5be8-833d-11eb-1e3b-475196f62655
md"""
2. La vitesse est donnée par
```math
v = \sqrt{\frac{2 \left ( P_0 - \rho g \Delta h \right )}{\rho}}.
```

"""

# ╔═╡ 76f05ffe-833d-11eb-118b-a96e2ddc6297
v = √(2(P₀ - ρ * g * Δh) / ρ)

# ╔═╡ 8518c8fa-833d-11eb-0116-a5867d912fbc
q̇ᵥ = S * v

# ╔═╡ a13bfe88-833d-11eb-1c51-074cd8f24102
md"""
Le débit maximal vaut donc :
```math
\dot{q}_v = 86.6 \, \mathrm{L} \, \mathrm{s} ^ {-1}.
```

"""

# ╔═╡ 399a227e-833e-11eb-1026-6fa90951bd89
md"""
3. La cote du point de sortie vaut alors
```math
H = \frac{v ^ 2}{2 g} = 6.19 \, \mathrm{m}.
```

"""

# ╔═╡ 4acc209c-833e-11eb-0b71-a79c6afb6924
H = v ^ 2 / 2 / g

# ╔═╡ Cell order:
# ╟─33252892-833d-11eb-39d1-f9aae3f1ece0
# ╠═3a7b2612-833d-11eb-0327-77bf90b7c6dd
# ╟─4e8d5be8-833d-11eb-1e3b-475196f62655
# ╠═76f05ffe-833d-11eb-118b-a96e2ddc6297
# ╠═8518c8fa-833d-11eb-0116-a5867d912fbc
# ╟─a13bfe88-833d-11eb-1c51-074cd8f24102
# ╟─399a227e-833e-11eb-1026-6fa90951bd89
# ╠═4acc209c-833e-11eb-0b71-a79c6afb6924
