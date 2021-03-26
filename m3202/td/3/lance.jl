### A Pluto.jl notebook ###
# v0.12.20

using Markdown
using InteractiveUtils

# ╔═╡ 27a3f26c-8e19-11eb-0b03-f15f4e04ccf4
md"""
# Lance à incendie

"""

# ╔═╡ 36f10bc4-8e19-11eb-260f-270f19586fd5
begin
	D₁ = 8e-2
	D₂ = 3e-2
	Qᵥ = 40e-3
	P₂ = 1e5
	ρ = 1000
end

# ╔═╡ f5f33178-8e19-11eb-06e5-75b04aeb4491
md"""
1. Calcul des vitesses.

"""

# ╔═╡ 4a3585c0-8e19-11eb-126d-ff8bc9191aa7
vitesse(Qᵥ, D) = 4Qᵥ / π / D ^ 2

# ╔═╡ 5b57e7f8-8e19-11eb-08b6-bfad3ee5fd7f
v₁ = vitesse(Qᵥ, D₁)

# ╔═╡ 62c21e64-8e19-11eb-353d-5feb2a4dab99
v₂ = vitesse(Qᵥ, D₂)

# ╔═╡ ff57355c-8e19-11eb-36a3-03feadc05f1f
md"""
2. Calcul de ``P_1``.

"""

# ╔═╡ 07de38ec-8e1a-11eb-0f06-739ec368ae78
P₁ = P₂ + ρ * (v₂ ^ 2 - v₁ ^ 2) / 2

# ╔═╡ b7387c18-8e1c-11eb-3fc3-df3c470f4632
md"""
3. Résultante des forces.

"""

# ╔═╡ c06cd934-8e1c-11eb-0717-0d5389f5f2e7
Qₘ = ρ * Qᵥ

# ╔═╡ ca5554b2-8e1c-11eb-2649-bfa3e8318755
S₁, S₂ = π * D₁ ^ 2 / 4, π * D₂ ^ 2 / 4

# ╔═╡ dcdc59dc-8e1c-11eb-26fa-65f7f5b78138
F = (Qₘ * v₁ + P₁ * S₁) - (Qₘ * v₂ + P₂ * S₂)

# ╔═╡ Cell order:
# ╟─27a3f26c-8e19-11eb-0b03-f15f4e04ccf4
# ╠═36f10bc4-8e19-11eb-260f-270f19586fd5
# ╟─f5f33178-8e19-11eb-06e5-75b04aeb4491
# ╠═4a3585c0-8e19-11eb-126d-ff8bc9191aa7
# ╠═5b57e7f8-8e19-11eb-08b6-bfad3ee5fd7f
# ╠═62c21e64-8e19-11eb-353d-5feb2a4dab99
# ╟─ff57355c-8e19-11eb-36a3-03feadc05f1f
# ╠═07de38ec-8e1a-11eb-0f06-739ec368ae78
# ╟─b7387c18-8e1c-11eb-3fc3-df3c470f4632
# ╠═c06cd934-8e1c-11eb-0717-0d5389f5f2e7
# ╠═ca5554b2-8e1c-11eb-2649-bfa3e8318755
# ╠═dcdc59dc-8e1c-11eb-26fa-65f7f5b78138
