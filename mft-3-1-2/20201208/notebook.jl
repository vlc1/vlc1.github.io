### A Pluto.jl notebook ###
# v0.12.7

using Markdown
using InteractiveUtils

# ╔═╡ 2ef323c8-3958-11eb-0635-59fe0dc770c2
md"""
Ce notebook est disponible [ici](vlc1.github.io/mft-3-1-2/20201208/notebook.jl).

"""

# ╔═╡ 7553057a-3941-11eb-0738-f7e350346d06
# on execute soit en cliquand sur "lecture",
# soit en pressant simultanément "shift" et "entrée"
function hello(name = "World")
	println("Hello, $(name)!")
end

# ╔═╡ 93eb6e16-3941-11eb-2d2a-a1a5a9f81477
hello()

# ╔═╡ a5557ff0-3941-11eb-1ed8-abaef597e971
hello("Vincent")

# ╔═╡ aabbdef8-3941-11eb-0ef0-bd76a7cb529a
t = rand(2, 3)

# ╔═╡ eeff2408-3941-11eb-08f8-75fbc9f510b5


# ╔═╡ f8ff6a4e-3941-11eb-0d8c-3b7d268bbd1f
c

# ╔═╡ b9642148-3941-11eb-3643-732a6933ddb9
begin
	a = 1
	b = π # \pi + TAB (unicode)
end

# ╔═╡ 0d02a4fc-3942-11eb-094b-39e61cdadaf7
a, b

# ╔═╡ b3ee8282-3941-11eb-359c-2528cd91fdea
md"""
Voici un bloc Markdown. Vous pouvez y taper du texte, mais aussi des équations, inclure des images...

Voici une équation en LaTeX :
```math
\sum_{i = 1} ^ N Y_i = 1.
```

"""

# ╔═╡ Cell order:
# ╟─2ef323c8-3958-11eb-0635-59fe0dc770c2
# ╠═7553057a-3941-11eb-0738-f7e350346d06
# ╠═93eb6e16-3941-11eb-2d2a-a1a5a9f81477
# ╠═a5557ff0-3941-11eb-1ed8-abaef597e971
# ╠═aabbdef8-3941-11eb-0ef0-bd76a7cb529a
# ╠═eeff2408-3941-11eb-08f8-75fbc9f510b5
# ╠═f8ff6a4e-3941-11eb-0d8c-3b7d268bbd1f
# ╠═b9642148-3941-11eb-3643-732a6933ddb9
# ╠═0d02a4fc-3942-11eb-094b-39e61cdadaf7
# ╟─b3ee8282-3941-11eb-359c-2528cd91fdea
