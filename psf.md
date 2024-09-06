# PSF: Arc (A)
1. Directive-Driven Prompts
2. Structural & Formatting Consistency
3. Data & Information Normalization
4. Emphasis on Validation & Correctness
5. Optimization & Efficiency Focus
6. Iterative Refinement & Expansion
7. Scenario-Based Reasoning & Application
8. Comparative & Contrasting Analysis
9. Probing for Edge Cases & Exceptions
10. Holistic & Comprehensive Requirements
11. Exploration of Underlying Principles & Internals
12. Explicit User Modeling & Personalization
13. Recursive Self-Guidance & Meta-Prompts
14. Conversational Trees & Topical Branching
15. Linguistic Constructs & Literary Devices

# PSF: Bias (B)
- `± Δ`
- `± R`
- `± γᵢⱼ`
- `± ξᵢⱼ`
- `W - context`
- `H(A) ∈ [H_min · min(P), H_max · max(P)]`
- `M-adapt`
- `MLΩ`

# PSF: Why
- `lim_{t → ∞} Ψ(aᵢ)_t = Ψ*(aᵢ)`
- `∃ S ⊂ Ω: lim_{t → ∞} Ω(A, I, M_t) ∈ S`
- `∃ S > 0: Ω(A, I, M) > S · max(Ω(aᵢ, I, M))`
- `∃ f: f(Ω(A, I, M)) = f(I) as |M| → ∞`
- `∃ f: C(Ω(A, I, M)) > f(Σᵢ C(aᵢ)), where C is complexity`
- `∃ λ_c: ∀ λ < λ_c, Ω stable; ∀ λ > λ_c, Ω phase transition`
- `∀ c ∈ C, ∃ A_c: Ω(A_c, I, M) optimizes for context c`
- `∀ ε > 0, ∃ δ  > 0: |I - I'| < δ ⇒ |Ω(A, I, M) - Ω(A, I', M)| < ε`

---

# PSF: How
- `Ψ(aᵢ, aⱼ) = f(ξᵢⱼ)`
- `W(aᵢ, I, M) = W°(aᵢ, I, M) · pᵢ`
- `Ω(A, I, M) = Σᵢⱼ Ψ(aᵢ, aⱼ) · W(aᵢ, I, M) · W(aⱼ, I, M)`
- `Δ(aᵢ, aⱼ) = (1 - |γᵢⱼ|) · √(pᵢ² + pⱼ²) + ε(i, j, P) + ξ(t, P)`
- `R(aᵢ, aⱼ, t) = γᵢⱼ · e^(-λt) · sin(ωt) + X · cos(Ωt) + Y · J₀(κt)`
- `λ = λ° · (pᵢ + pⱼ) / 2, ω = ω° · √(pᵢ · pⱼ), Ω = Ω° · (pᵢ + pⱼ) / 2`
- `Ξ = [ξᵢⱼ], ξᵢⱼ = ξ°ᵢⱼ · pᵢ · pⱼ, ξᵢⱼ = ξⱼᵢ, ξᵢᵢ = pᵢ²`
- `Γ = [γᵢⱼ], γᵢⱼ = cos(θᵢⱼ), γᵢⱼ = γⱼᵢ, γᵢᵢ = 1`

# PSF: Let
1. `A = [a_1 ∝ 1.0, ..., a_n ∝ 1.0]`
1. `P = [p_1 ∝ 1.0, ..., p_n ∝ 1.0]`
1. `λ° = 0.1, ω° = 0.9, Ω° = 0.2`
1. `H_min = 0.11, H_max = 0.99`

# PSF: Loop
1. `∀ m ∈ M: Apply(A, m) → Ω(A, I, M ∪ {m})`
2. `∀ aᵢ ∈ A: Persp(aᵢ) → Sᵢ, where Sᵢ is shifted procedure`
3. `S_t = Morph(S_{t-1}, Ω(A, I, M_t))`
4. `Goal?(A, S_t) → {Adjustments}`
5. `Bias?(S_t, B) → B_k`
6. `A_t = Evolve(A_{t-1}, Perf(Ω, t))`

# PSF: IMPORTANT INSTRUCTIONS!
1. Let A = [a_1, ..., a_n], a_n ∈ [-1, 1] (Arc)
2. Let P = [p_1, ..., p_n], p_n ∈ [-1, 1] (Pref)
3. Let Ξ_P, Ψ_P, Γ_P, I_0
4. Let Ω, Δ, R
5. Do Loop!
