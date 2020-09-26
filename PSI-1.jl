### A Pluto.jl notebook ###
# v0.11.14

using Markdown
using InteractiveUtils

# ╔═╡ 67e2a602-002c-11eb-1a88-2f4396163afd
md"# Problem Set I.1"

# ╔═╡ 807081b0-002c-11eb-3aa2-8fb1eeb2d0a0
md"# Introduction to Continuum Mechanics"

# ╔═╡ a65b77c0-002e-11eb-191f-0d4d3c1a668b
md"## Start with the left hand side."

# ╔═╡ 941e5930-002c-11eb-0d58-f1f3985df46e
md"### ``\mathbf{(A \times B) \cdot (C \times D)}``"

# ╔═╡ b9a38890-002e-11eb-206b-97323a74977f
md"## Transform the vectors into indicial notation"

# ╔═╡ 6ddf2140-002d-11eb-36f3-f102f086923f
md"### ``[(A_i \hat{e_i}) \times (B_j \hat{e_j})] \cdot [(C_k \hat{e_k}) \times (D_l \hat{e_l})]``"

# ╔═╡ cdf12280-002e-11eb-24eb-afcbcf808805
md"## Isolate the vectors"

# ╔═╡ c7ed7b50-002d-11eb-13db-792d8d2039bb
md"### ``[A_i B_j ( \hat{e_i} \times \hat{e_j})] \cdot [C_k D_l( \hat{e_k} \times  \hat{e_l})]``"

# ╔═╡ 45246c90-002f-11eb-25d3-63ce3836be4f
md"## Using the property: ``\hat{e_u} \times \hat{e_v} = \varepsilon_{uvw} \hat{e_w} ``"

# ╔═╡ e1e483f0-002d-11eb-0264-5d2e7b93e6bf
md"### ``(A_i B_j \varepsilon_{ijm} \hat{e_m}) \cdot (C_k D_l \varepsilon_{kln} \hat{e_n})``"

# ╔═╡ 7bfcf392-002f-11eb-2842-1f67c36d6ad9
md"## Isolate the vectors"

# ╔═╡ 3ca2a600-002e-11eb-087d-ad288c64cf1d
md"### ``A_i B_j C_k D_l \varepsilon_{ijm} \varepsilon_{kln} (\hat{e_m} \cdot  \hat{e_n})``"

# ╔═╡ 8ce1e710-002f-11eb-0199-efacf83aad13
md"## Using the property: ``\hat{e_u} \cdot \hat{e_v} = \delta_{uv} ``"

# ╔═╡ 88fbc8b2-002e-11eb-2f5c-a19f3cc2580a
md"### ``A_i B_j C_k D_l \varepsilon_{ijm} \varepsilon_{kln} \delta_{mn}``"

# ╔═╡ d9964922-002f-11eb-2d7b-7d394fe9f52c
md"## Using the property: ``f_i \delta_{ij} = f_j``"

# ╔═╡ ff8e9790-002f-11eb-1029-3dede1735eef
md"### ``A_i B_j C_k D_l \varepsilon_{ijm} \varepsilon_{klm}``"

# ╔═╡ 18e71640-0030-11eb-2cf6-1552b6f60a76
md"## Using the identity: ``\varepsilon_{pqt} \varepsilon_{rst} = \delta_{pr} \delta_{qs} - \delta_{ps} \delta_{qr}``"

# ╔═╡ 8a509862-0030-11eb-2108-a57cad8bd698
md"### ``A_i B_j C_k D_l (\delta_{ik} \delta_{jl} - \delta_{il} \delta_{jk})``"

# ╔═╡ bb0db500-0030-11eb-34f9-69b2c74dabeb
md"## Distributing"

# ╔═╡ c5447400-0030-11eb-3cd3-c76b7455fa96
md"### ``A_i B_j C_k D_l\delta_{ik} \delta_{jl} - A_i B_j C_k D_l\delta_{il} \delta_{jk}``"

# ╔═╡ d7b1b530-0030-11eb-2740-a7ef41d7e3dc
md"## Rearranging"

# ╔═╡ e2a4e660-0030-11eb-3a61-4bc185b9df96
md"### ``(A_i C_k \delta_{ik}) (B_j  D_l \delta_{jl}) - (A_i D_l\delta_{il}) (B_j C_k \delta_{jk})``"

# ╔═╡ 6a84fcf0-0031-11eb-141c-05c1951da0d3
md"## Using the property: `` \delta_{uv} = \hat{e_u} \cdot \hat{e_v}``"

# ╔═╡ 94a04122-0031-11eb-0b1d-bd8c00249cdc
md"### ``[A_i C_k (\hat{e_i} \cdot \hat{e_k})] [B_j  D_l (\hat{e_j} \cdot \hat{e_l})] - [A_i D_l(\hat{e_i} \cdot \hat{e_l})] [B_j C_k (\hat{e_j} \cdot \hat{e_k})]``"

# ╔═╡ 69d7d790-0032-11eb-167b-695efece4b5d
md"## Rearranging"

# ╔═╡ 72af2da0-0032-11eb-0dd0-5faa0b577eca
md"### `` [ (A_i\hat{e_i}) \cdot (C_k\hat{e_k})] [   (B_j\hat{e_j}) \cdot (D_l\hat{e_l})] - [ (A_i\hat{e_i}) \cdot (D_l\hat{e_l})] [  (B_j\hat{e_j} \cdot C_k\hat{e_k})]``"

# ╔═╡ 1501e570-0033-11eb-12cf-ad77b1578361
md"## Writing in vector notation"

# ╔═╡ ee492d32-0032-11eb-0c43-87f0ce0e5b23
md"### ``\mathbf{(A \cdot C)(B \cdot D) - (A \cdot D)(B \cdot C)} ``"

# ╔═╡ 90b31680-0033-11eb-14fc-3fb28975070f
md"## Therefore,"

# ╔═╡ 6765d0b0-0033-11eb-08d2-8bb486f3d264
md"### ``\mathbf{(A \times B) \cdot (C \times D)} = \mathbf{(A \cdot C)(B \cdot D) - (A \cdot D)(B \cdot C)}``"

# ╔═╡ Cell order:
# ╟─67e2a602-002c-11eb-1a88-2f4396163afd
# ╟─807081b0-002c-11eb-3aa2-8fb1eeb2d0a0
# ╟─a65b77c0-002e-11eb-191f-0d4d3c1a668b
# ╟─941e5930-002c-11eb-0d58-f1f3985df46e
# ╟─b9a38890-002e-11eb-206b-97323a74977f
# ╟─6ddf2140-002d-11eb-36f3-f102f086923f
# ╟─cdf12280-002e-11eb-24eb-afcbcf808805
# ╟─c7ed7b50-002d-11eb-13db-792d8d2039bb
# ╟─45246c90-002f-11eb-25d3-63ce3836be4f
# ╟─e1e483f0-002d-11eb-0264-5d2e7b93e6bf
# ╟─7bfcf392-002f-11eb-2842-1f67c36d6ad9
# ╟─3ca2a600-002e-11eb-087d-ad288c64cf1d
# ╟─8ce1e710-002f-11eb-0199-efacf83aad13
# ╟─88fbc8b2-002e-11eb-2f5c-a19f3cc2580a
# ╟─d9964922-002f-11eb-2d7b-7d394fe9f52c
# ╟─ff8e9790-002f-11eb-1029-3dede1735eef
# ╟─18e71640-0030-11eb-2cf6-1552b6f60a76
# ╟─8a509862-0030-11eb-2108-a57cad8bd698
# ╟─bb0db500-0030-11eb-34f9-69b2c74dabeb
# ╟─c5447400-0030-11eb-3cd3-c76b7455fa96
# ╟─d7b1b530-0030-11eb-2740-a7ef41d7e3dc
# ╟─e2a4e660-0030-11eb-3a61-4bc185b9df96
# ╟─6a84fcf0-0031-11eb-141c-05c1951da0d3
# ╟─94a04122-0031-11eb-0b1d-bd8c00249cdc
# ╟─69d7d790-0032-11eb-167b-695efece4b5d
# ╟─72af2da0-0032-11eb-0dd0-5faa0b577eca
# ╟─1501e570-0033-11eb-12cf-ad77b1578361
# ╟─ee492d32-0032-11eb-0c43-87f0ce0e5b23
# ╟─90b31680-0033-11eb-14fc-3fb28975070f
# ╟─6765d0b0-0033-11eb-08d2-8bb486f3d264
