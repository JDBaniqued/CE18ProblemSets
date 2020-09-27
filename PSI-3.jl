### A Pluto.jl notebook ###
# v0.11.14

using Markdown
using InteractiveUtils

# ╔═╡ 5855433e-00dc-11eb-1978-a3b88cafe6b2
using LinearAlgebra

# ╔═╡ 02d3d110-00ec-11eb-0785-5f1da77d4d6b
begin
	using Plots
	u = 1.5:1.5
	v = 0:0
	plot(u,v,seriestype= :scatter)
end

# ╔═╡ 39b1ed70-00d8-11eb-26ea-71b6e2176703
md"# Problem Set I.3"

# ╔═╡ 917daa82-00d8-11eb-25ce-4d774616e2a5
md"## Stress Tensor"

# ╔═╡ 9f91cac0-00d8-11eb-2cd6-d9ad4fae05f2
md"##### The state of stress at a point is given by"

# ╔═╡ c69d84fe-00d8-11eb-3002-f732986c4452
md"##### ``\sigma = \begin{bmatrix}1 & a & b\\ d & 1 & c\\ e & f & 1\end{bmatrix}``"

# ╔═╡ fe82e820-00d8-11eb-12f1-dd64021699ec
md"##### Determine the principal stresses and their corresponding directions if the stress vector on the plane defined by the unit normal vector"

# ╔═╡ 1864e220-00d9-11eb-3a29-55d5b72830bd
md"##### ``\hat{n} = \frac{1}{\sqrt{3}} \hat{e_1}+ \frac{1}{\sqrt{3}} \hat{e_2}+\frac{1}{\sqrt{3}} \hat{e_3}``"

# ╔═╡ 4586fdb0-00d9-11eb-0946-eddbc39944ac
md"##### is equal to zero"

# ╔═╡ 5a581f80-00d9-11eb-06ec-db9bccff044b
md"### Solution:"

# ╔═╡ 6e1d9db0-00d9-11eb-0dc8-e3e8a083131d
md"Using the Cauchy Stress Principle"

# ╔═╡ c58bf87e-00d9-11eb-3ef3-cd2acab7355e
md" ``T_i^n = \sigma_{ij} n_j``"

# ╔═╡ a962ff40-00da-11eb-00e3-f13b6afea915
md"``\begin{Bmatrix} 0\\0\\0 \end{Bmatrix} = \begin{bmatrix}1 & a & b\\ d & 1 & c\\ e & f & 1\end{bmatrix} \begin{Bmatrix} \frac{1}{\sqrt{3}}\\\frac{1}{\sqrt{3}}\\\frac{1}{\sqrt{3}} \end{Bmatrix}``"

# ╔═╡ 00f5f910-00db-11eb-33b3-91c40d987af2
md" But the stress tensor is symmetric, so ``d = a, e=b, f=c``"

# ╔═╡ 15ef3c50-00db-11eb-32b2-b71cf18d5f16
md"``\begin{Bmatrix} 0\\0\\0 \end{Bmatrix} = \begin{bmatrix}1 & a & b\\ a & 1 & c\\ b & c & 1\end{bmatrix} \begin{Bmatrix} \frac{1}{\sqrt{3}}\\\frac{1}{\sqrt{3}}\\\frac{1}{\sqrt{3}} \end{Bmatrix}``"

# ╔═╡ 2f3878c0-00db-11eb-30ac-991f27a565c6
md"``\begin{matrix}0=\frac{1}{\sqrt{3}}+ \frac{1}{\sqrt{3}}a + \frac{1}{\sqrt{3}}b\\ 0=\frac{1}{\sqrt{3}}a+ \frac{1}{\sqrt{3}} + \frac{1}{\sqrt{3}}c\\ 0=\frac{1}{\sqrt{3}}b+ \frac{1}{\sqrt{3}}c + \frac{1}{\sqrt{3}}\end{matrix}``"

# ╔═╡ c42f3cc0-00db-11eb-10a6-fd143ea4a71e
md"Rearranging,"

# ╔═╡ eee33e7e-00db-11eb-3835-bb20a01f32a2
md"``\begin{matrix}
-\frac{1}{\sqrt{3}}=\frac{1}{\sqrt{3}}a + \frac{1}{\sqrt{3}}b\\ 
-\frac{1}{\sqrt{3}}=\frac{1}{\sqrt{3}}a + \frac{1}{\sqrt{3}}c\\ 
-\frac{1}{\sqrt{3}}=\frac{1}{\sqrt{3}}b + \frac{1}{\sqrt{3}}c 
\end{matrix}``"

# ╔═╡ 62608570-00dc-11eb-1826-5b72b5878d67
B = [-1/sqrt(3),-1/sqrt(3),-1/sqrt(3)]

# ╔═╡ 8eb6c580-00dc-11eb-080d-b18dac05f33f
A = [1/sqrt(3) 1/sqrt(3) 0; 1/sqrt(3) 0 1/sqrt(3); 0 1/sqrt(3) 1/sqrt(3)]

# ╔═╡ d3b39960-00dc-11eb-001b-edeefd61dcb6
x = inv(A)*B

# ╔═╡ f1bca7d0-00dc-11eb-213c-934310af01f8
md"``\begin{matrix}a=-0.5\\b=-0.5\\c=-0.5\end{matrix}``"

# ╔═╡ 2c65e5de-00dd-11eb-1ed7-0bdc9889988f
md"Therefore,"

# ╔═╡ 31feb2c0-00dd-11eb-0222-2fb87c45f29f
md" ``\sigma = \begin{bmatrix}1 & -0.5 & -0.5\\ -0.5 & 1 & -0.5\\ -0.5 & -0.5 & 1\end{bmatrix}``"

# ╔═╡ 65a7f2d0-00dd-11eb-21fc-679ad9400ce2
md"Determining the principal stresses,"

# ╔═╡ 724b1df0-00dd-11eb-2f31-3f0263147bf6
md" ``\sigma = \begin{vmatrix}1-\lambda & -0.5 & -0.5\\ -0.5 & 1-\lambda & -0.5\\ -0.5 & -0.5 & 1-\lambda\end{vmatrix}``"

# ╔═╡ 46a4efd0-00e4-11eb-0e79-0769aec72343
md"``-\lambda^3 + 3\lambda^2 -2.25\lambda = 0``"

# ╔═╡ cdf8a910-00dd-11eb-3830-b16d140f2a4f
σ = [1 -0.5 -0.5; -0.5 1 -0.5; -0.5 -0.5 1]

# ╔═╡ 2490c820-00de-11eb-0b8b-d7a784949a7c
λ=eigvals(σ)

# ╔═╡ 97832570-00e4-11eb-3ca6-7795245f207f
md"``\lambda = 0``"

# ╔═╡ bd61f870-00e4-11eb-2c2d-f19f48ef7a16
md" ``\begin{bmatrix}1 & -0.5 & -0.5\\ -0.5 & 1 & -0.5\\ -0.5 & -0.5 & 1\end{bmatrix} \begin{Bmatrix}n_1^1\\n_2^1\\n_3^1\end{Bmatrix}=\begin{Bmatrix}0\\0\\0\end{Bmatrix}``"

# ╔═╡ c581eff2-00e5-11eb-3260-5df674ce8627
md"First equation"

# ╔═╡ 0949467e-00e5-11eb-03b1-8b518a677e19
md"``n_1^1 - 0.5n_2^1 - 0.5n_3^1=0``"

# ╔═╡ ce7afed0-00e5-11eb-31e9-758777bbd5a1
md"Solving for ``n_1^1``,"

# ╔═╡ 2e627f90-00e5-11eb-3c59-352c138e0586
md"``n_1^1 = 0.5(n_2^1 + n_3^1)``"

# ╔═╡ e0ee5a80-00e5-11eb-3574-9d5c18cb7542
md"Substituting to the second equation,"

# ╔═╡ 3f653440-00e5-11eb-0cc4-3f7200c29e59
md"``-0.5 (0.5)(n_2^1+n_3^1) +n_2^1 - 0.5n_3^1=0``"

# ╔═╡ 7977b090-00e5-11eb-2c80-692594e4b7cc
md"``0.75n_2^1-0.75n_3^1=0``"

# ╔═╡ 9444a6d0-00e5-11eb-3d08-07a290c9fe7c
md"``n_2^1 = n_3^1``"

# ╔═╡ f1a4eafe-00e5-11eb-2d5f-6576769afd65
md"Substituting to the first equation,"

# ╔═╡ b2764be0-00e5-11eb-2207-55c2498194cd
md"``n_1^1 = n_2^1 = n_3^1``"

# ╔═╡ c2f3f210-00e5-11eb-093f-c99ccd481ea5
md"But ``n^1`` should be a unit vector."

# ╔═╡ 19ad54c0-00e6-11eb-19e8-2dc6a3497505
md"``n_1^1 n_1^1 + n_2^1 n_2^1 + n_3^1 n_3^1 = 1``"

# ╔═╡ 3b407450-00e6-11eb-3583-017e02201c27
md"``n_1^1 = n_2^1 = n_3^1 = \pm \frac{1}{\sqrt{3}}``"

# ╔═╡ 13cfc140-00e7-11eb-300a-c5ba55bb0d87
md"``n^1 = \begin{Bmatrix}\pm \frac{1}{\sqrt{3}}\\\pm \frac{1}{\sqrt{3}}\\\pm \frac{1}{\sqrt{3}}\end{Bmatrix}``"

# ╔═╡ 95442000-00e6-11eb-053f-a338b0cca346
md"``\lambda = 1.5``"

# ╔═╡ b30b6a80-00e6-11eb-0722-a18f57ab3fda
md" ``\begin{bmatrix}-0.5 & -0.5 & -0.5\\ -0.5 & -0.5 & -0.5\\ -0.5 & -0.5 & -0.5\end{bmatrix} \begin{Bmatrix}n_1^2\\n_2^2\\n_3^2\end{Bmatrix}=\begin{Bmatrix}0\\0\\0\end{Bmatrix}``"

# ╔═╡ 0d3eb1b2-00e7-11eb-0862-0f26471f0ec0
md"``n^2 = \begin{Bmatrix}-n_2^2-n_3^2\\ n_2^2\\n_3^2\end{Bmatrix}``"

# ╔═╡ 0e30bd60-00e8-11eb-36bc-49f19fbf5d00
md"##### What does this tell us?"

# ╔═╡ 195d9c2e-00e8-11eb-233d-4120a909be52
md"###### ``n^2`` and ``n^3`` are perpendicular arbitrary unit vectors parallel to plane normal to ``n^1``"

# ╔═╡ a6db8150-00eb-11eb-0ddf-81397d4c2987
md"##### Mohr's Circle"

# ╔═╡ 6842dd70-00e7-11eb-0997-916833686d7b
md"Assume ``n_3^2=0``"

# ╔═╡ 79e41c10-00e7-11eb-00c8-532d8457ebe0
md"``n^2 = \begin{Bmatrix}-n_2^2\\ n_2^2\\0\end{Bmatrix}``"

# ╔═╡ b6278220-00e7-11eb-2df5-2554c20f24f5
md"But ``n^1`` should be a unit vector."

# ╔═╡ c03869a0-00e7-11eb-3cd1-f1cd50a88209
md"``n^2 = \begin{Bmatrix}\pm\frac{1}{\sqrt{2}}\\ \mp\frac{1}{\sqrt{2}}\\0\end{Bmatrix}``"

# ╔═╡ 61f67e60-00ef-11eb-18a7-e155ccf026e1
md"##### ``n^3`` should be perpendicular to ``n^1`` and ``n^2``"

# ╔═╡ 834eb7d0-00ef-11eb-2a6a-1569daa997dc
md"###### ``n^3 = n^1 \times n^2``"

# ╔═╡ 9b4ed270-00ef-11eb-357a-dd72446b6e7e
md"``n^3 = \begin{Bmatrix}-\frac{1}{\sqrt{2}}\\ -\frac{1}{\sqrt{2}}\\\sqrt{\frac{2}{3}}\end{Bmatrix}``"

# ╔═╡ 678548e0-00de-11eb-3fcf-8d691c6582b3
n = eigvecs(σ)

# ╔═╡ Cell order:
# ╟─39b1ed70-00d8-11eb-26ea-71b6e2176703
# ╟─917daa82-00d8-11eb-25ce-4d774616e2a5
# ╟─9f91cac0-00d8-11eb-2cd6-d9ad4fae05f2
# ╟─c69d84fe-00d8-11eb-3002-f732986c4452
# ╟─fe82e820-00d8-11eb-12f1-dd64021699ec
# ╟─1864e220-00d9-11eb-3a29-55d5b72830bd
# ╟─4586fdb0-00d9-11eb-0946-eddbc39944ac
# ╟─5a581f80-00d9-11eb-06ec-db9bccff044b
# ╟─6e1d9db0-00d9-11eb-0dc8-e3e8a083131d
# ╟─c58bf87e-00d9-11eb-3ef3-cd2acab7355e
# ╟─a962ff40-00da-11eb-00e3-f13b6afea915
# ╟─00f5f910-00db-11eb-33b3-91c40d987af2
# ╟─15ef3c50-00db-11eb-32b2-b71cf18d5f16
# ╟─2f3878c0-00db-11eb-30ac-991f27a565c6
# ╟─c42f3cc0-00db-11eb-10a6-fd143ea4a71e
# ╟─eee33e7e-00db-11eb-3835-bb20a01f32a2
# ╠═5855433e-00dc-11eb-1978-a3b88cafe6b2
# ╠═62608570-00dc-11eb-1826-5b72b5878d67
# ╠═8eb6c580-00dc-11eb-080d-b18dac05f33f
# ╠═d3b39960-00dc-11eb-001b-edeefd61dcb6
# ╟─f1bca7d0-00dc-11eb-213c-934310af01f8
# ╟─2c65e5de-00dd-11eb-1ed7-0bdc9889988f
# ╟─31feb2c0-00dd-11eb-0222-2fb87c45f29f
# ╟─65a7f2d0-00dd-11eb-21fc-679ad9400ce2
# ╟─724b1df0-00dd-11eb-2f31-3f0263147bf6
# ╟─46a4efd0-00e4-11eb-0e79-0769aec72343
# ╠═cdf8a910-00dd-11eb-3830-b16d140f2a4f
# ╠═2490c820-00de-11eb-0b8b-d7a784949a7c
# ╟─97832570-00e4-11eb-3ca6-7795245f207f
# ╟─bd61f870-00e4-11eb-2c2d-f19f48ef7a16
# ╟─c581eff2-00e5-11eb-3260-5df674ce8627
# ╟─0949467e-00e5-11eb-03b1-8b518a677e19
# ╟─ce7afed0-00e5-11eb-31e9-758777bbd5a1
# ╟─2e627f90-00e5-11eb-3c59-352c138e0586
# ╟─e0ee5a80-00e5-11eb-3574-9d5c18cb7542
# ╟─3f653440-00e5-11eb-0cc4-3f7200c29e59
# ╟─7977b090-00e5-11eb-2c80-692594e4b7cc
# ╟─9444a6d0-00e5-11eb-3d08-07a290c9fe7c
# ╟─f1a4eafe-00e5-11eb-2d5f-6576769afd65
# ╟─b2764be0-00e5-11eb-2207-55c2498194cd
# ╟─c2f3f210-00e5-11eb-093f-c99ccd481ea5
# ╟─19ad54c0-00e6-11eb-19e8-2dc6a3497505
# ╟─3b407450-00e6-11eb-3583-017e02201c27
# ╟─13cfc140-00e7-11eb-300a-c5ba55bb0d87
# ╟─95442000-00e6-11eb-053f-a338b0cca346
# ╟─b30b6a80-00e6-11eb-0722-a18f57ab3fda
# ╟─0d3eb1b2-00e7-11eb-0862-0f26471f0ec0
# ╟─0e30bd60-00e8-11eb-36bc-49f19fbf5d00
# ╠═195d9c2e-00e8-11eb-233d-4120a909be52
# ╟─a6db8150-00eb-11eb-0ddf-81397d4c2987
# ╠═02d3d110-00ec-11eb-0785-5f1da77d4d6b
# ╟─6842dd70-00e7-11eb-0997-916833686d7b
# ╟─79e41c10-00e7-11eb-00c8-532d8457ebe0
# ╟─b6278220-00e7-11eb-2df5-2554c20f24f5
# ╠═c03869a0-00e7-11eb-3cd1-f1cd50a88209
# ╟─61f67e60-00ef-11eb-18a7-e155ccf026e1
# ╟─834eb7d0-00ef-11eb-2a6a-1569daa997dc
# ╠═9b4ed270-00ef-11eb-357a-dd72446b6e7e
# ╠═678548e0-00de-11eb-3fcf-8d691c6582b3
