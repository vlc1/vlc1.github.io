### A Pluto.jl notebook ###
# v0.14.4

using Markdown
using InteractiveUtils

# ╔═╡ 4fa0a44e-b15b-11eb-0d4d-bbba511ecd18
begin
	m = 1.0
	T₀ = 0 + 273.15
	T₁ = 50 + 273.15
	T₂ = 100 + 273.15
	cₚ = 1000 * 4.18
end

# ╔═╡ ed61b560-ac71-429d-9fde-5fbcbc800d46
S₁ᶜ = m * cₚ * (log(T₁ / T₀) - (T₁ - T₀) / T₁)

# ╔═╡ f4e51d60-d172-41ef-b495-389dfa3e3193
S₂ᶜ = m * cₚ * (log(T₂ / T₁) - (T₂ - T₁) / T₂)

# ╔═╡ b17ff5e0-0a11-42f7-b036-995c983ee891
S₁ᶜ + S₂ᶜ

# ╔═╡ 03e1c118-6755-4599-b5de-87e58d22218f
Sᶜ₀ = m * cₚ * (log(T₂ / T₀) - (T₂ - T₀) / T₂)

# ╔═╡ 340a7264-2499-47e3-976e-dd409b769513
md"""
On remarque
```math
S^c_0 > S_c ^ 1 + S_c^2.
```

Dans la limite où le nombre de thermostats tend vers l'infini, la transformation tend vers une transformation quasi-statique pour laquelle l'entropie créée est nulle :
```math
\lim _ {N \to \infty} \sum _ {i = 1} ^ N S^c_i = 0.
```

C'est ce qu'on va mettre en évidence à la question 3.

"""

# ╔═╡ Cell order:
# ╠═4fa0a44e-b15b-11eb-0d4d-bbba511ecd18
# ╠═ed61b560-ac71-429d-9fde-5fbcbc800d46
# ╠═f4e51d60-d172-41ef-b495-389dfa3e3193
# ╠═b17ff5e0-0a11-42f7-b036-995c983ee891
# ╠═03e1c118-6755-4599-b5de-87e58d22218f
# ╟─340a7264-2499-47e3-976e-dd409b769513
