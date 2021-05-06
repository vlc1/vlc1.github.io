### A Pluto.jl notebook ###
# v0.14.4

using Markdown
using InteractiveUtils

# ╔═╡ 42354a0a-ae70-11eb-0fe2-87f451f323a4
begin
	m = 1.0
	T₀ = 0 + 273.15
	Tₙ = 100 + 273.15
	cₚ = 1000 * 4.18
end

# ╔═╡ 7546ab5e-af5c-4e3a-a607-58e530ce3b22
Sᶜ = m * cₚ * (log(Tₙ / T₀) - (Tₙ - T₀) / Tₙ)

# ╔═╡ Cell order:
# ╠═42354a0a-ae70-11eb-0fe2-87f451f323a4
# ╠═7546ab5e-af5c-4e3a-a607-58e530ce3b22
