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
Tutoriel de la [page suivante](https://diffeq.sciml.ai/stable/tutorials/ode_example/#Example-2:-Solving-Systems-of-Equations).

"""

# ╔═╡ a10359cc-3eb9-11eb-18c6-e35e0c882408
# définition du second membre du modèle
function lorenz!(du,u,p,t)
	du[1] = 10.0*(u[2]-u[1])
	du[2] = u[1]*(28.0-u[3]) - u[2]
	du[3] = u[1]*u[2] - (8/3)*u[3]
end

# ╔═╡ b44dc1de-3eb9-11eb-2b5f-35a97fd6c4f2
# condition initiale
u0 = [1.0;0.0;0.0]

# ╔═╡ bf590336-3eb9-11eb-19aa-9b21a2a6d05c
# intervalle temporel
tspan = (0.0,100.0)

# ╔═╡ da751844-3eb9-11eb-3858-07c49b13a9e2
# EDO (modèle, condition initiale et l'intervalle
prob = ODEProblem(lorenz!,u0,tspan)

# ╔═╡ efef471c-3eb9-11eb-1519-19d50e538485
# résolution
begin
	sol = solve(prob)
	nothing
end

# ╔═╡ 16a29b5c-3eba-11eb-232c-6f5de8eebe9a
plot(sol,vars=(1,2,3))

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
