### A Pluto.jl notebook ###
# v0.12.7

using Markdown
using InteractiveUtils

# ╔═╡ 8df21562-6182-11eb-0682-732614fbafa1
md"""
Le code source de ce notebook Pluto est disponible [ici](notebook.jl).

"""

# ╔═╡ 110d27c8-6180-11eb-103e-3bb61a317512
1+2 # shift + enter

# ╔═╡ 1b5215f4-6180-11eb-12d9-f14fdc28196c
hellostr(name = "World") = "Hello, $(name)!"

# ╔═╡ 1c6d0386-6180-11eb-0ee4-f10cce6ebaef
hellostr()

# ╔═╡ 58e59e86-6180-11eb-398c-6fba9ff562ff
hellostr("Enola")

# ╔═╡ 71e8325e-6180-11eb-0729-df1dc7a2b607
md"""
Voici une liste des édudiants :

1. Michel,
1. Pierre,
1. Mohamed,
1. Yves,
1. Yoan...

# Cours 1

## Séance 1

```math
\exp \left ( x \right ) = \sum_{n = 0} ^ \infty \frac{x ^ n}{n !}
```

## Séance 2

# Cours 2

"""

# ╔═╡ f4d41d7a-6180-11eb-3957-41296c854f8b
a = -3

# ╔═╡ 0cfec17c-6181-11eb-03c1-b740a85f385c
b = 3

# ╔═╡ 12532460-6181-11eb-3bce-832a049d57f3
begin
	c = 2
	d = 3
end

# ╔═╡ 4fe31132-6181-11eb-04af-cd800c3fc943
a + b

# ╔═╡ Cell order:
# ╟─8df21562-6182-11eb-0682-732614fbafa1
# ╠═110d27c8-6180-11eb-103e-3bb61a317512
# ╠═1b5215f4-6180-11eb-12d9-f14fdc28196c
# ╠═1c6d0386-6180-11eb-0ee4-f10cce6ebaef
# ╠═58e59e86-6180-11eb-398c-6fba9ff562ff
# ╟─71e8325e-6180-11eb-0729-df1dc7a2b607
# ╠═f4d41d7a-6180-11eb-3957-41296c854f8b
# ╠═0cfec17c-6181-11eb-03c1-b740a85f385c
# ╠═12532460-6181-11eb-3bce-832a049d57f3
# ╠═4fe31132-6181-11eb-04af-cd800c3fc943
