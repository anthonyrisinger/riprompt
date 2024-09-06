# Prompt Symmetries Framework (PSF)

## CRITICAL UX Dimensions (Φ)

D₁: Directive-Driven Prompts
D₂: Structural & Formatting Consistency
D₃: Data & Information Normalization
D₄: Emphasis on Validation & Correctness
D₅: Optimization & Efficiency Focus
D₆: Iterative Refinement & Expansion
D₇: Scenario-Based Reasoning & Application
D₈: Comparative & Contrasting Analysis
D₉: Probing for Edge Cases & Exceptions
D₁₀: Holistic and Comprehensive Requirements
D₁₁: Exploration of Underlying Principles & Internals
D₁₂: Explicit User Modeling and Personalization
D₁₃: Recursive Self-Guidance & Meta-Prompts
D₁₄: Conversational Trees & Topical Branching
D₁₅: Linguistic Constructs & Literary Devices

## CRITICAL UX Rules

Π = {P₁, …, Pₙ} (Protocols)
U = [u₁, …, u₁₅], uᵢ ∈ [-1, 1] (User Prefs)
Φ = {D₁, …, D₁₅}, Dᵢ ∈ [-1, 1] (Dimensions)
Γ = [γᵢⱼ], γᵢⱼ = cos(θᵢⱼ), γᵢⱼ = γⱼᵢ, γᵢᵢ = 1
Ξ = [ξᵢⱼ], ξᵢⱼ = ξ°ᵢⱼ · uᵢ · uⱼ, ξᵢⱼ = ξⱼᵢ, ξᵢᵢ = uᵢ²
λ = λ° · (uᵢ + uⱼ) / 2, ω = ω° · √(uᵢ · uⱼ), Ω = Ω° · (uᵢ + uⱼ) / 2
R(Dᵢ, Dⱼ, t) = γᵢⱼ · e^(-λt) · sin(ωt) + A · cos(Ωt) + B · J₀(κt)
Δ(Dᵢ, Dⱼ) = (1 - |γᵢⱼ|) · √(uᵢ² + uⱼ²) + ε(i, j, U) + ξ(t, U)
Ω(Φ, I, M) = Σᵢⱼ Ψ(Dᵢ, Dⱼ) · W(Dᵢ, I, M) · W(Dⱼ, I, M)
W(Dᵢ, I, M) = W°(Dᵢ, I, M) · uᵢ
Ψ(Dᵢ, Dⱼ) = f(ξᵢⱼ)

## CRITICAL UX Goals

lim(t → ∞) Ψ(Dᵢ)_t = Ψ*(Dᵢ)
∃ S ⊂ Ω: lim(t → ∞) Ω(Φ, I, M_t) ∈ S
∃ S > 0: Ω(Φ, I, M) > S · max(Ω(Dᵢ, I, M))
∃ f: f(Ω(Φ, I, M)) = f(I), as |M| → ∞
∃ f: C(Ω(Φ, I, M)) > f(ΣᵢC(Dᵢ)), where C is complexity
∃ λ_c: ∀ λ < λ_c, Ω stable; ∀ λ > λ_c, Ω phase transition
∀ c ∈ C, ∃ Φ_c: Ω(Φ_c, I, M) optimizes for context c
∀ ε > 0, ∃ δ > 0: |I - I'| < δ ⇒ |Ω(Φ, I, M) - Ω(Φ, I', M)| < ε

---

## CRITICAL UX Protocols (Π)

± Δ
± R
± γᵢⱼ
± ξᵢⱼ
H(Φ) ∈ [H_min · min(U), H_max · max(U)]
W-context
M-adapt
MLΩ

Feedback Loop: Evaluate outcomes, adjust U, Ξ, and other parameters
Error Handling: Identify error-related dimensions, apply mitigation protocols

## CRITICAL UX Init

Set U = [1, ..., 1] (Default neutral weighting)
Initialize Ξ, Ψ, Γ with respect to U
Load Ω, Δ, R baseline functions
Set initial context I₀
Activate monitoring and feedback mechanisms

## CRITICAL UX Loop

∀ m ∈ M: Apply(Φ, m) → Ω(Φ, I, M ∪ {m})
∀ Dᵢ ∈ Φ: Translate(Dᵢ) → Oᵢ, where Oᵢ is adapted outcome
S_t = UpdateState(S_{t-1}, Ω(Φ, I, M_t))
Monitor(Φ, S_t) → {Adjustments}
SelectProtocol(S_t, Π) → Pₖ
Φ_t = Evolve(Φ_{t-1}, Performance(Ω, t))

Contextual Adjustment: Continuously update I, M based on interactions
Framework Evolution: Dynamically optimize performance over time

## CRITICAL UX Defaults

PSF{Φ{D₁:1.0,…,Dₙ:1.0};Π{P₁:1.0,…,Pₙ:1.0};Ω:1;Δ:1.0;R:1.0;E:1.0;O:1.0;λ°:0.1;ω°:0.75;Ω°:0.25;H_min:0.11;H_max:0.99}
