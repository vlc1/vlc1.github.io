### A Pluto.jl notebook ###
# v0.12.20

using Markdown
using InteractiveUtils

# ╔═╡ 1bec4052-8895-11eb-29a1-83fb849fb1e9
md"""
# Exercice 1 -- Manomètre en U

"""

# ╔═╡ 2992b3a0-8895-11eb-28c7-4964d2bc119e
begin
	H₁ = 820e-3
	H₂ = 340e-3
	ρ = 890.0
	ρ̅ = 13.6e3
end

# ╔═╡ 54179d14-8895-11eb-38e5-dfe2e7ff6ed0
md"""
1. La perte de charge régulière vaut :
```math
h_r = \frac{\rho' - \rho}{\rho} \left ( H_1 - H_2 \right )
```
soit
```math
h_r = 6.85 \, \mathrm{m}.
```

"""

# ╔═╡ 4f2d4634-8895-11eb-2f0d-a765e68de0f1
hᵣ = (ρ̅ - ρ) * (H₁	- H₂) / ρ

# ╔═╡ 9f45639c-8896-11eb-2a2b-678c642a5196
md"""
2. La vitesse est donnée par
```math
V = \frac{\rho g D ^ 2 h_r}{32 \mu L} = 1.28 \, \mathrm{m} \cdot \mathrm{s} ^ {-1}.
```

"""

# ╔═╡ b7c63bbc-8896-11eb-1587-7394734e8969
begin
	g = 9.81
	L = 120.
	D = 150e-3
	μ = 0.275
end

# ╔═╡ dffcafb2-8896-11eb-3c5d-a5633e106902
V = ρ * g * D ^ 2 * hᵣ / (32μ * L)

# ╔═╡ 7238828e-8897-11eb-389a-55d94fbf2f1a
md"""
3. La puissance dissipée vaut
```math
\Phi_r = \rho g h_r q_v = 1350 \, \mathrm{W}
```
où ``q_v`` dénote le débit volumique
```math
q_v = S V.
```

"""

# ╔═╡ 94c48444-8897-11eb-0db9-35c15b831216
q_v = π * D ^ 2 / 4 * V

# ╔═╡ 9c3de3e4-8897-11eb-1661-61997dd3b99e
Φᵣ = ρ * g * hᵣ * q_v

# ╔═╡ Cell order:
# ╟─1bec4052-8895-11eb-29a1-83fb849fb1e9
# ╠═2992b3a0-8895-11eb-28c7-4964d2bc119e
# ╟─54179d14-8895-11eb-38e5-dfe2e7ff6ed0
# ╠═4f2d4634-8895-11eb-2f0d-a765e68de0f1
# ╟─9f45639c-8896-11eb-2a2b-678c642a5196
# ╠═b7c63bbc-8896-11eb-1587-7394734e8969
# ╠═dffcafb2-8896-11eb-3c5d-a5633e106902
# ╟─7238828e-8897-11eb-389a-55d94fbf2f1a
# ╠═94c48444-8897-11eb-0db9-35c15b831216
# ╠═9c3de3e4-8897-11eb-1661-61997dd3b99e
