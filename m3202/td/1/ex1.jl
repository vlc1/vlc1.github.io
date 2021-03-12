### A Pluto.jl notebook ###
# v0.12.7

using Markdown
using InteractiveUtils

# ╔═╡ b0c73fbe-8337-11eb-3e98-13a7932fe6f4
md"""
# Exercice 1 -- Manomètre différentiel

"""

# ╔═╡ c43bdaaa-8337-11eb-2d06-99b0cdaa2dea
begin
	S₁ = 600e-4
	S₂ = 100e-4
	Δh = 5.3e-2
	g = 9.81
	ρₑ = 1e3
	ρₘ = 13.6e3
end

# ╔═╡ fef45460-8337-11eb-21a5-67d530d757e5
md"""
``v_1`` est donnée par
```math
v_1 = \sqrt{\frac{2 \left ( \rho' - \rho \right ) g \Delta h + 2 \rho g \left ( R_2 - R_1 \right )}{\rho \left [ \left ( \frac{S_1}{S_2} \right ) ^ 2 - 1 \right ]}}.
```

"""

# ╔═╡ 68e11ae8-8338-11eb-08de-f3a1243805e5
R₁, R₂ = √(S₁ / π), √(S₂ / π)

# ╔═╡ 34fc594a-8338-11eb-389a-2b7e9819a729
v₁ = √(2g * ((ρₘ - ρₑ) * Δh + ρₑ * (R₂ - R₁))/(ρₑ * ((S₁ / S₂) ^ 2 - 1)))

# ╔═╡ a0eef306-8338-11eb-0e5d-bd2f5bc54421
v₂ = S₁ * v₁ / S₂

# ╔═╡ a985ec4a-8338-11eb-30b8-cdd5c20c1aed
q̇ᵥ = S₁ * v₁

# ╔═╡ b6fc5134-8338-11eb-3498-0735d91528d2
md"""
On trouve
```math
\dot{q}_v = 34.4 \, \mathrm{L} \, \mathrm{s} ^ {-1}.
```

"""

# ╔═╡ 06977476-8339-11eb-151a-ff08b4cf8432
md"""
# Parenthèse

Si on néglige le terme
```math
2 \rho g \left ( R_2 - R_1 \right )
```
dans l'expression de ``v_1``, on trouve :

"""

# ╔═╡ 268283a0-8339-11eb-02bd-153f57523ae4
√(2g * (ρₘ - ρₑ) * Δh / (ρₑ * ((S₁ / S₂) ^ 2 - 1)))

# ╔═╡ Cell order:
# ╟─b0c73fbe-8337-11eb-3e98-13a7932fe6f4
# ╠═c43bdaaa-8337-11eb-2d06-99b0cdaa2dea
# ╟─fef45460-8337-11eb-21a5-67d530d757e5
# ╠═68e11ae8-8338-11eb-08de-f3a1243805e5
# ╠═34fc594a-8338-11eb-389a-2b7e9819a729
# ╠═a0eef306-8338-11eb-0e5d-bd2f5bc54421
# ╠═a985ec4a-8338-11eb-30b8-cdd5c20c1aed
# ╟─b6fc5134-8338-11eb-3498-0735d91528d2
# ╟─06977476-8339-11eb-151a-ff08b4cf8432
# ╠═268283a0-8339-11eb-02bd-153f57523ae4
