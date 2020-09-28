### A Pluto.jl notebook ###
# v0.11.14

using Markdown
using InteractiveUtils

# ╔═╡ a2a23370-01a6-11eb-0c31-fff7ad27edf5
using Images

# ╔═╡ da812360-01a5-11eb-34dc-190afe8feaab
md"# Problem Set I.5"

# ╔═╡ 0ac8c1e0-01a6-11eb-07e2-a752cb6cfcdd
md"## Constitutive Equation"

# ╔═╡ abab20d0-01a6-11eb-1539-7326bcedce45
fig = load(download("https://i.imgur.com/kXMUsax.png"))

# ╔═╡ 4a2f12d0-01a6-11eb-2dcd-01f9edfbca0a
md"##### A steel cube with 10 mm sides with a Young's modulus of 200 GPa and a Poisson's ratio of 0.3 is subjected to a compression test. Two 50 kN are applied along ``x_3``.
##### Determine the displacements along ``x_1``, ``x_2``, and ``x_3``."

# ╔═╡ 18849380-01a7-11eb-27ae-bd354838b38f
md"#### Stress Tensor"

# ╔═╡ baf70850-01a7-11eb-3b1c-bf53c1c51f97
Area = 10 * 10

# ╔═╡ db2bf770-01a7-11eb-1e21-fd17be849f30
σ = [0;0;-50/Area;0;0;0]

# ╔═╡ 1975dbe0-01a8-11eb-3b03-e919a1c5ce0d
md"#### Elasticity Tensor"

# ╔═╡ 34881880-01a8-11eb-334b-050860f614d8
E = 200

# ╔═╡ 4d7c3010-01a8-11eb-2621-15a1ebd5619c
ν = 0.3

# ╔═╡ 54b95e20-01a8-11eb-00c7-217bebc1ec9a
C = E/(1+ν)/(1-2ν) * [1-ν ν ν 0 0 0; ν 1-ν ν 0 0 0; ν ν 1-ν 0 0 0; 0 0 0 1-2ν 0 0; 0 0 0 0 1-2ν 0; 0 0 0 0 0 1-2ν]

# ╔═╡ a63692e0-01a8-11eb-0cf2-5d8106c17d0b
md"#### Strain Tensor"

# ╔═╡ b2a2cf80-01a8-11eb-1756-756b805f9617
ε = inv(C)*σ

# ╔═╡ c54418fe-01a8-11eb-1a78-63c8750cad51
md"#### Displacements"

# ╔═╡ e8829ea0-01a8-11eb-158f-69f4d947da41
md"#### ``\varepsilon_{ij} = \frac{\partial u_i}{\partial X_j}``"

# ╔═╡ 4929d070-01a9-11eb-247a-732298908b6a
md"#### `` \partial u_i = \varepsilon_{ij} \partial X_j``"

# ╔═╡ 92a99460-01a9-11eb-0275-09fd36a31514
md"##### Let the origin be at the center of the cube"

# ╔═╡ a2cfcbc0-01a9-11eb-0f34-7ba2f24931d1
md"#### `` u_i = \int_{-5}^5\varepsilon_{ij} \partial X_j``"

# ╔═╡ 676ce530-01aa-11eb-2542-9b007c5fae65
md"##### Determining ``u_1``"

# ╔═╡ d14bf90e-01a9-11eb-3929-0168dc657cd1
md"#### `` u_1 = \int_{-5}^50.00075 \partial X_1``"

# ╔═╡ 451934c2-01aa-11eb-103e-7d4d0c5ea530
md"#### `` u_1 = 0.0075`` mm"

# ╔═╡ 636f51c0-01aa-11eb-16e5-c7a48742f28d
md"##### Determining ``u_2``"

# ╔═╡ 99bf95f0-01aa-11eb-1332-b1f293ef81c7
md"#### `` u_2 = \int_{-5}^50.00075 \partial X_2``"

# ╔═╡ cf8e7520-01aa-11eb-2aec-9f50c1cdcabf
md"#### `` u_2 = 0.0075`` mm"

# ╔═╡ d48f95e0-01aa-11eb-39cb-0d16dae20560
md"##### Determining ``u_3``"

# ╔═╡ df2d2d02-01aa-11eb-3bb8-c7fe8970414d
md"#### `` u_3 = \int_{-5}^5 -0.0025 \partial X_3``"

# ╔═╡ ec21fa92-01aa-11eb-2c5c-af392fe97354
md"#### `` u_3 = -0.025`` mm"

# ╔═╡ Cell order:
# ╟─da812360-01a5-11eb-34dc-190afe8feaab
# ╟─0ac8c1e0-01a6-11eb-07e2-a752cb6cfcdd
# ╟─a2a23370-01a6-11eb-0c31-fff7ad27edf5
# ╟─abab20d0-01a6-11eb-1539-7326bcedce45
# ╟─4a2f12d0-01a6-11eb-2dcd-01f9edfbca0a
# ╠═18849380-01a7-11eb-27ae-bd354838b38f
# ╠═baf70850-01a7-11eb-3b1c-bf53c1c51f97
# ╠═db2bf770-01a7-11eb-1e21-fd17be849f30
# ╟─1975dbe0-01a8-11eb-3b03-e919a1c5ce0d
# ╠═34881880-01a8-11eb-334b-050860f614d8
# ╠═4d7c3010-01a8-11eb-2621-15a1ebd5619c
# ╠═54b95e20-01a8-11eb-00c7-217bebc1ec9a
# ╟─a63692e0-01a8-11eb-0cf2-5d8106c17d0b
# ╠═b2a2cf80-01a8-11eb-1756-756b805f9617
# ╟─c54418fe-01a8-11eb-1a78-63c8750cad51
# ╟─e8829ea0-01a8-11eb-158f-69f4d947da41
# ╟─4929d070-01a9-11eb-247a-732298908b6a
# ╟─92a99460-01a9-11eb-0275-09fd36a31514
# ╟─a2cfcbc0-01a9-11eb-0f34-7ba2f24931d1
# ╟─676ce530-01aa-11eb-2542-9b007c5fae65
# ╟─d14bf90e-01a9-11eb-3929-0168dc657cd1
# ╟─451934c2-01aa-11eb-103e-7d4d0c5ea530
# ╟─636f51c0-01aa-11eb-16e5-c7a48742f28d
# ╟─99bf95f0-01aa-11eb-1332-b1f293ef81c7
# ╟─cf8e7520-01aa-11eb-2aec-9f50c1cdcabf
# ╟─d48f95e0-01aa-11eb-39cb-0d16dae20560
# ╟─df2d2d02-01aa-11eb-3bb8-c7fe8970414d
# ╟─ec21fa92-01aa-11eb-2c5c-af392fe97354
