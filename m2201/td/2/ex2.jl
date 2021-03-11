### A Pluto.jl notebook ###
# v0.12.7

using Markdown
using InteractiveUtils

# ╔═╡ 60f87dc8-8278-11eb-1fa8-95189c87c073
using Plots

# ╔═╡ c3f7ea9e-826e-11eb-0570-496be8372515
md"""
# Exercice 2

"""

# ╔═╡ d1931ae8-826e-11eb-0ffa-677a0705d5d5
begin
	n = 1.0
	P₁ = 1.0e5
	T₀ = 300.0
	S = 10e-4
	m = 10.0
	g = 9.81
	R = 8.314
end

# ╔═╡ 0014a0ee-826f-11eb-384d-8be7eae87a01
md"""
2. L'expression littérale de ``x \equiv P_2 / P_1`` vaut
```math
x = 1 + \frac{m g}{P_1 S}.
```

"""

# ╔═╡ fc2ddb26-826e-11eb-1b1a-4bd0701d2c36
x = 1 + m * g / P₁ / S

# ╔═╡ aba0ff6e-8271-11eb-23eb-65b448bfebed
md"""
3. Bilan énergétique.
```math
\Delta U = 0,
```
```math
W = n R T_0 \left ( x - 1 \right )
```
et enfin
```math
Q = n R T_0 \left ( 1 - x \right ).
```

"""

# ╔═╡ d99236cc-8271-11eb-348b-974113dce580
begin
	ΔU = 0.0
	W = n * R * T₀ * (x - 1)
	Q = -W
	W, Q
end

# ╔═╡ 1761e92a-8277-11eb-24df-214c5dc17ea9
md"""
4. On a donc
```math
\Delta S = -n R \log \left ( x \right ),
```
et
```math
S ^ r = n R \left ( 1 - x \right )
```
d'où on déduit
```math
S ^ c = n R \left [ x - 1 - \log \left ( x \right ) \right ].
```

"""

# ╔═╡ 5c85c3aa-8277-11eb-1da8-e13c11a7e921
begin
	ΔS = -n * R * log(x)
	Sʳ = n * R * (1 - x)
	Sᶜ = n * R * (x - 1 - log(x))
end

# ╔═╡ 66726408-8278-11eb-032b-d1747f6d9b92
begin
	fig = plot(xlim = (0.01, 4.0), ylim = (-2, 2))
	plot!(fig, x -> x - 1, lw = 2, label = "x -> x - 1")
	plot!(fig, log, lw = 2, label = "ln")
end

# ╔═╡ Cell order:
# ╟─c3f7ea9e-826e-11eb-0570-496be8372515
# ╠═d1931ae8-826e-11eb-0ffa-677a0705d5d5
# ╟─0014a0ee-826f-11eb-384d-8be7eae87a01
# ╠═fc2ddb26-826e-11eb-1b1a-4bd0701d2c36
# ╟─aba0ff6e-8271-11eb-23eb-65b448bfebed
# ╠═d99236cc-8271-11eb-348b-974113dce580
# ╟─1761e92a-8277-11eb-24df-214c5dc17ea9
# ╠═5c85c3aa-8277-11eb-1da8-e13c11a7e921
# ╠═60f87dc8-8278-11eb-1fa8-95189c87c073
# ╠═66726408-8278-11eb-032b-d1747f6d9b92
