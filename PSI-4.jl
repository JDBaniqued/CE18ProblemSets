### A Pluto.jl notebook ###
# v0.11.14

using Markdown
using InteractiveUtils

# ╔═╡ 2a38c970-019d-11eb-05bd-5f5bf97f0298
using Images

# ╔═╡ 3e37f872-01a1-11eb-12fc-77369baac72c
using LinearAlgebra

# ╔═╡ 820ad9fe-019b-11eb-0d40-053ea00151da
md"# Problem Set I.4"

# ╔═╡ b536fad0-019b-11eb-099b-330057cb059d
md"## Strain Tensor"

# ╔═╡ 4fcfefa0-019e-11eb-233e-9934ab0571b6
fig = load(download("https://i.imgur.com/9e0oSUk.png"))

# ╔═╡ 76516b40-019e-11eb-2611-f567f351d82c
md"##### The quadrilateral is deformed as shown. The mapping function can be approximated by the matrix equation"

# ╔═╡ 9b792340-019e-11eb-0a76-0146ac46b35a
md"##### ``\begin{Bmatrix}x_1\\x_2\end{Bmatrix} = \begin{bmatrix}\alpha_{11} & \alpha_{12} & \alpha_{13} & \alpha_{14} \\ \alpha_{21} & \alpha_{22} & \alpha_{23} & \alpha_{24}\end{bmatrix} \begin{Bmatrix}1\\X_1\\X_2\\X_1X_2\end{Bmatrix}``"

# ╔═╡ 1500bd90-019f-11eb-0a03-ff82f9eea875
md"##### where the elements of the matrix ``\mathbf{\alpha}`` are constants" 

# ╔═╡ 5f9e74a0-019f-11eb-210f-8992076b8d59
md"#### Mapping function"

# ╔═╡ 6b849150-019f-11eb-1e53-119f9bdc87bc
md"##### ``x_1`` component"

# ╔═╡ 93d21a60-019f-11eb-1025-e358825fa4fc
md"``\begin{align*}
\mbox{pt A:   } & 2 = \alpha_{11}(1) &+& \alpha_{12}(-1) &+& \alpha_{13}(1) &+& \alpha_{14}(-1)\\ 
\mbox{pt B:   } & 4 = \alpha_{11}(1) &+& \alpha_{12}(1) &+& \alpha_{13}(1) &+& \alpha_{14}(1)\\ 
\mbox{pt C:   } & 2 = \alpha_{11}(1) &+& \alpha_{12}(-1) &+& \alpha_{13}(-1) &+& \alpha_{14}(1)\\ 
\mbox{pt D:   } & 3 = \alpha_{11}(1) &+& \alpha_{12}(1) &+& \alpha_{13}(-1) &+& \alpha_{14}(-1)
\end{align*}``"

# ╔═╡ 43214b72-01a1-11eb-2f66-dd09dd571911
x1 = [2,4,2,3]

# ╔═╡ 616985c0-01a1-11eb-074e-fd1d707e4e1b
X = [1 -1 1 -1; 1 1 1 1; 1 -1 -1 1; 1 1 -1 -1]

# ╔═╡ 98010c20-01a1-11eb-116b-ad28302d2d0c
α1 = inv(X)*x1

# ╔═╡ bd30da70-01a1-11eb-1557-1df5fa0d7359
md"##### ``x_2`` component"

# ╔═╡ c18bd020-01a1-11eb-178f-33d76faae44e
md"``\begin{align*}
\mbox{pt A:   } & 3 = \alpha_{21}(1) &+& \alpha_{22}(-1) &+& \alpha_{23}(1) &+& \alpha_{24}(-1)\\ 
\mbox{pt B:   } & 3 = \alpha_{21}(1) &+& \alpha_{22}(1) &+& \alpha_{23}(1) &+& \alpha_{24}(1)\\ 
\mbox{pt C:   } & 1 = \alpha_{21}(1) &+& \alpha_{22}(-1) &+& \alpha_{23}(-1) &+& \alpha_{24}(1)\\ 
\mbox{pt D:   } & 1 = \alpha_{21}(1) &+& \alpha_{22}(1) &+& \alpha_{23}(-1) &+& \alpha_{24}(-1)
\end{align*}``"

# ╔═╡ 2259eade-01a2-11eb-1968-a5312fa86691
x2 = [3,3,1,1]

# ╔═╡ 4b204d70-01a2-11eb-1a5d-5566c3632502
α2 = inv(X)*x2

# ╔═╡ 68057550-01a2-11eb-2e66-0bfb86cf4438
md"##### Therefore,"

# ╔═╡ 711121d0-01a2-11eb-2923-7b0abb16f8be
md"###### ``\begin{align*} x_1 &= 2.75 + 0.75X_1 +0.25X_2 +0.25X_1X_2\\ x_2 &= 2+X_2\end{align*}`` "

# ╔═╡ d0b08090-01a2-11eb-136f-c9af77925101
md"#### Displacement function"

# ╔═╡ d690ddc0-01a2-11eb-0458-8d98caa5b948
md"##### ``\mathbf{u_i = x_i - X_i}``"

# ╔═╡ 04ac4d70-01a3-11eb-1cd3-b372874188d8
md" ``u_1 = 2.75 + 0.75X_1 +0.25X_2 +0.25X_1X_2 - X_1``"

# ╔═╡ baf24a30-01a3-11eb-3b3e-93b51b5a9a61
md"##### ``u_1 = 2.75 - 0.25X_1 +0.25X_2 +0.25X_1X_2``"

# ╔═╡ d5622c50-01a3-11eb-3b7d-0d0d5d677c3c
md" ``u_2 = 2 + X_2 - X_2``"

# ╔═╡ eb5a41f0-01a3-11eb-3105-099bcd2ff313
md"##### ``u_2 = 2``"

# ╔═╡ 07f4cc40-01a4-11eb-2751-716ca8d29b2d
md"#### Displacement gradient"

# ╔═╡ 1fb0b1f0-01a4-11eb-3f53-55c4d9f3c719
md"##### ``\nabla u =  \frac{\partial u_i}{\partial X_j}``"

# ╔═╡ 468e0930-01a4-11eb-07b4-5172f08d7e5c
md"##### ``\nabla u = \begin{bmatrix}-0.25+0.25X_2&0.25+0.25X_1\\0&0\end{bmatrix}``"

# ╔═╡ 77bf4460-01a4-11eb-2ec8-0b906dd7f375
md"#### Strain Tensor"

# ╔═╡ 83cfa560-01a4-11eb-336e-1352b5c1f1f8
md"##### ``\varepsilon_{ij} = \frac{1}{2} \left( \frac{\partial u_i}{\partial X_j} + \frac{\partial u_j}{\partial X_i}\right)``"

# ╔═╡ d0208ab0-01a4-11eb-2f5d-311567b69945
md"#### ``\varepsilon_{ij} = \begin{bmatrix}-0.25+0.25X_2&0.125+0.125X_1\\0.125+0.125X_1&0\end{bmatrix}``"

# ╔═╡ Cell order:
# ╟─820ad9fe-019b-11eb-0d40-053ea00151da
# ╟─b536fad0-019b-11eb-099b-330057cb059d
# ╟─2a38c970-019d-11eb-05bd-5f5bf97f0298
# ╟─4fcfefa0-019e-11eb-233e-9934ab0571b6
# ╟─76516b40-019e-11eb-2611-f567f351d82c
# ╟─9b792340-019e-11eb-0a76-0146ac46b35a
# ╟─1500bd90-019f-11eb-0a03-ff82f9eea875
# ╟─5f9e74a0-019f-11eb-210f-8992076b8d59
# ╟─6b849150-019f-11eb-1e53-119f9bdc87bc
# ╟─93d21a60-019f-11eb-1025-e358825fa4fc
# ╟─3e37f872-01a1-11eb-12fc-77369baac72c
# ╠═43214b72-01a1-11eb-2f66-dd09dd571911
# ╠═616985c0-01a1-11eb-074e-fd1d707e4e1b
# ╠═98010c20-01a1-11eb-116b-ad28302d2d0c
# ╟─bd30da70-01a1-11eb-1557-1df5fa0d7359
# ╟─c18bd020-01a1-11eb-178f-33d76faae44e
# ╠═2259eade-01a2-11eb-1968-a5312fa86691
# ╠═4b204d70-01a2-11eb-1a5d-5566c3632502
# ╟─68057550-01a2-11eb-2e66-0bfb86cf4438
# ╟─711121d0-01a2-11eb-2923-7b0abb16f8be
# ╟─d0b08090-01a2-11eb-136f-c9af77925101
# ╟─d690ddc0-01a2-11eb-0458-8d98caa5b948
# ╟─04ac4d70-01a3-11eb-1cd3-b372874188d8
# ╟─baf24a30-01a3-11eb-3b3e-93b51b5a9a61
# ╟─d5622c50-01a3-11eb-3b7d-0d0d5d677c3c
# ╟─eb5a41f0-01a3-11eb-3105-099bcd2ff313
# ╟─07f4cc40-01a4-11eb-2751-716ca8d29b2d
# ╟─1fb0b1f0-01a4-11eb-3f53-55c4d9f3c719
# ╟─468e0930-01a4-11eb-07b4-5172f08d7e5c
# ╟─77bf4460-01a4-11eb-2ec8-0b906dd7f375
# ╟─83cfa560-01a4-11eb-336e-1352b5c1f1f8
# ╟─d0208ab0-01a4-11eb-2f5d-311567b69945
