### A Pluto.jl notebook ###
# v0.12.6

using Markdown
using InteractiveUtils

# ╔═╡ c50e22ca-3eb9-11eb-3e39-edc74c39e031
using DifferentialEquations

# ╔═╡ 1a4ec76a-3eba-11eb-35c1-35603d314ed0
using Plots

# ╔═╡ 8bf75dd0-3eb9-11eb-1dcb-6bc914ac5222
md"""
Voici une adaptation du [tutoriel](https://diffeq.sciml.ai/stable/tutorials/ode_example/#Example-2:-Solving-Systems-of-Equations) du réacteur isotherme et isochore avec le mécanisme irréversible.

"""

# ╔═╡ a10359cc-3eb9-11eb-18c6-e35e0c882408
# définition du second membre du modèle
function dissociation!(ρ̅̇, ρ̅, p, t)
	R̅ = 8.314
	T = 5000.

	a₁, β₁, ℰ̅₁ = 2.90e17, -1., 0.
	a₂, β₂, ℰ̅₂ = 6.81e18, -1., 496.41

	k₁ = a₁ * T ^ β₁ * exp(-ℰ̅₁ / R̅ / T)
	k₂ = a₂ * T ^ β₂ * exp(-ℰ̅₂ / R̅ / T)

	ρ̅ₘ = 1. * ρ̅[1] + 0.35 * ρ̅[2]

	r₁ = ρ̅[1] * ρ̅[1] * ρ̅ₘ * k₁
	r₂ = ρ̅[2] * ρ̅ₘ * k₂

	ρ̅̇[1] = -2r₁ + 2r₂
	ρ̅̇[2] = r₁ - r₂
end

# ╔═╡ b44dc1de-3eb9-11eb-2b5f-35a97fd6c4f2
# condition initiale
ρ̅₀ = [1.e-3; 1.e-3]

# ╔═╡ bf590336-3eb9-11eb-19aa-9b21a2a6d05c
# intervalle temporel
tspan = (0.0, 1e-6)

# ╔═╡ da751844-3eb9-11eb-3858-07c49b13a9e2
# EDO (modèle, condition initiale et l'intervalle
prob = ODEProblem(dissociation!, ρ̅₀, tspan)

# ╔═╡ efef471c-3eb9-11eb-1519-19d50e538485
# résolution
begin
	sol = solve(prob, Euler(), dt=1e-10)
	nothing
end

# ╔═╡ 16a29b5c-3eba-11eb-232c-6f5de8eebe9a
plot(sol,vars=(1,2))

# ╔═╡ Cell order:
# ╟─8bf75dd0-3eb9-11eb-1dcb-6bc914ac5222
# ╠═a10359cc-3eb9-11eb-18c6-e35e0c882408
# ╠═b44dc1de-3eb9-11eb-2b5f-35a97fd6c4f2
# ╠═bf590336-3eb9-11eb-19aa-9b21a2a6d05c
# ╠═c50e22ca-3eb9-11eb-3e39-edc74c39e031
# ╠═da751844-3eb9-11eb-3858-07c49b13a9e2
# ╠═efef471c-3eb9-11eb-1519-19d50e538485
# ╠═1a4ec76a-3eba-11eb-35c1-35603d314ed0
# ╠═16a29b5c-3eba-11eb-232c-6f5de8eebe9a
