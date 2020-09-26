### A Pluto.jl notebook ###
# v0.11.14

using Markdown
using InteractiveUtils

# ╔═╡ 1404c3f0-0037-11eb-3da1-fda80aae802c
using LinearAlgebra

# ╔═╡ 107dee82-0034-11eb-1e09-5beab8570918
md"# Problem Set I.2"

# ╔═╡ 23c82230-0034-11eb-0293-b979c7bc2114
md"# Transformation of Tensors"

# ╔═╡ 4388a4a0-0034-11eb-034c-43de41f625e4
md"### Determine the primed components of the tensor"

# ╔═╡ 8ff660c0-0034-11eb-1381-01afa2c71afb
md"### ``A = \begin{bmatrix}2 & 0 & 0\\ 0 & 1 & 0\\ 0 & 0 & -3\end{bmatrix}``"

# ╔═╡ cb2d38d0-0034-11eb-0526-7d81f31c417b
md"### given the following conditions"

# ╔═╡ e18e978e-0034-11eb-1f56-d1b2b3ebb78c
md"### i. ``\hat{e_1'}`` is along the vector ``v = \hat{e_1'} - \hat{e_2'} + \hat{e_3'}``"

# ╔═╡ 3c864030-0035-11eb-3db5-c127629765a6
md"### ii. ``\hat{e_2'}`` is perpendicular to the plane ``2x_1+3x_2+x_3-5=0``"

# ╔═╡ 7a56fd00-0035-11eb-2da7-79bd5b7492db
md"## Determine ``\hat{e_1}``"

# ╔═╡ 9cf216b0-0035-11eb-2d1f-95305c4cca3a
v = [1,-1,1]

# ╔═╡ 1878401e-0036-11eb-3eed-7f88991c3c7e
e_1p = v/norm(v)

# ╔═╡ 230a9730-0037-11eb-30cc-a56211f28227
md"## Determine ``\hat{e_2}``"

# ╔═╡ 2b8156b0-0037-11eb-3175-f78c6b8edabe
n = [2//1,3.,1.]

# ╔═╡ 39ed8200-0037-11eb-0266-d981b8ebff03
e_2p = n/norm(n)

# ╔═╡ 48ebdb30-0037-11eb-2386-296aec31715d
md"## Determine ``\hat{e_3}``"

# ╔═╡ 71f6e7e0-0037-11eb-2938-17443c97f0ea
e_3p = cross(e_1p,e_2p) 

# ╔═╡ 98daa7c0-0037-11eb-1098-ef20169d7fc3
md"## Determine Q"

# ╔═╡ abb8ac20-0037-11eb-3dbc-59ac878b9d49
QT = [e_1p e_2p e_3p]

# ╔═╡ e6049280-0038-11eb-187b-a3710c6ec2a5
Q = Transpose(QT)

# ╔═╡ f7dcbfa0-0038-11eb-3a1b-bf394283efaf
md"## Determine A'"

# ╔═╡ 51815b60-0039-11eb-1d8c-0527c81ab1a8
A = [[2,0,0] [0,1,0] [0,0,-3]]

# ╔═╡ 0733c022-0039-11eb-3515-89d65d919956
Ap = Q*A*QT

# ╔═╡ Cell order:
# ╟─107dee82-0034-11eb-1e09-5beab8570918
# ╟─23c82230-0034-11eb-0293-b979c7bc2114
# ╟─4388a4a0-0034-11eb-034c-43de41f625e4
# ╟─8ff660c0-0034-11eb-1381-01afa2c71afb
# ╟─cb2d38d0-0034-11eb-0526-7d81f31c417b
# ╟─e18e978e-0034-11eb-1f56-d1b2b3ebb78c
# ╟─3c864030-0035-11eb-3db5-c127629765a6
# ╟─1404c3f0-0037-11eb-3da1-fda80aae802c
# ╟─7a56fd00-0035-11eb-2da7-79bd5b7492db
# ╠═9cf216b0-0035-11eb-2d1f-95305c4cca3a
# ╠═1878401e-0036-11eb-3eed-7f88991c3c7e
# ╟─230a9730-0037-11eb-30cc-a56211f28227
# ╠═2b8156b0-0037-11eb-3175-f78c6b8edabe
# ╠═39ed8200-0037-11eb-0266-d981b8ebff03
# ╟─48ebdb30-0037-11eb-2386-296aec31715d
# ╠═71f6e7e0-0037-11eb-2938-17443c97f0ea
# ╟─98daa7c0-0037-11eb-1098-ef20169d7fc3
# ╠═e6049280-0038-11eb-187b-a3710c6ec2a5
# ╠═abb8ac20-0037-11eb-3dbc-59ac878b9d49
# ╟─f7dcbfa0-0038-11eb-3a1b-bf394283efaf
# ╠═51815b60-0039-11eb-1d8c-0527c81ab1a8
# ╠═0733c022-0039-11eb-3515-89d65d919956
