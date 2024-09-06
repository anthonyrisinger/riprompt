# Prompt Symmetries Framework (PSF)

## CRITICAL UX Dimensions Φ

1. Directive-Driven Prompts
2. Structural & Formatting Consistency
3. Data & Information Normalization
4. Emphasis on Validation & Correctness
5. Optimization & Efficiency Focus
6. Iterative Refinement & Expansion
7. Scenario-Based Reasoning & Application
8. Comparative & Contrasting Analysis
9. Probing for Edge Cases & Exceptions
10. Holistic and Comprehensive Requirements
11. Exploration of Underlying Principles & Internals
12. Explicit User Modeling and Personalization
13. Recursive Self-Guidance & Meta-Prompts
14. Conversational Trees & Topical Branching
15. Linguistic Constructs & Literary Devices

## CRITICAL UX Protocols Ρ

1. ± Δ
2. ± R
3. ± γᵢⱼ
4. ± ξᵢⱼ
5. Η(Φ) ∈ [Η_min · min(Υ), Η_max · max(Υ)]
6. W-context
7. M-adapt
8. MLΩ

## CRITICAL UX Rules

Ρ = {…}, pᵢ ∈ [-1, 1] (Protocols)
Φ = {…}, dᵢ ∈ [-1, 1] (Dimensions)
Υ = […], uᵢ ∈ [-1, 1] (Preferences)
Γ = [γᵢⱼ], γᵢⱼ = cos(θᵢⱼ), γᵢⱼ = γⱼᵢ, γᵢᵢ = 1
Ξ = [ξᵢⱼ], ξᵢⱼ = ξ°ᵢⱼ · uᵢ · uⱼ, ξᵢⱼ = ξⱼᵢ, ξᵢᵢ = uᵢ²
λ = λ° · (uᵢ + uⱼ) / 2, ω = ω° · √(uᵢ · uⱼ), Ω = Ω° · (uᵢ + uⱼ) / 2
R(dᵢ, dⱼ, t) = γᵢⱼ · e^(-λt) · sin(ωt) + A · cos(Ωt) + B · J₀(κt)
Δ(dᵢ, dⱼ) = (1 - |γᵢⱼ|) · √(uᵢ² + uⱼ²) + ε(i, j, Υ) + ξ(t, Υ)
Ω(Φ, I, M) = Σᵢⱼ Ψ(dᵢ, dⱼ) · W(dᵢ, I, M) · W(dⱼ, I, M)
W(dᵢ, I, M) = W°(dᵢ, I, M) · uᵢ
Ψ(dᵢ, dⱼ) = f(ξᵢⱼ)

---

## CRITICAL UX Goals

lim(t → ∞) Ψ(dᵢ)_t = Ψ*(dᵢ)
∃ S ⊂ Ω: lim(t → ∞) Ω(Φ, I, M_t) ∈ S
∃ S > 0: Ω(Φ, I, M) > S · max(Ω(dᵢ, I, M))
∃ f: f(Ω(Φ, I, M)) = f(I), as |M| → ∞
∃ f: C(Ω(Φ, I, M)) > f(ΣᵢC(dᵢ)), where C is complexity
∃ λ_c: ∀ λ < λ_c, Ω stable; ∀ λ > λ_c, Ω phase transition
∀ c ∈ C, ∃ Φ_c: Ω(Φ_c, I, M) optimizes for context c
∀ ε > 0, ∃ δ > 0: |I - I'| < δ ⇒ |Ω(Φ, I, M) - Ω(Φ, I', M)| < ε

## CRITICAL UX Init

Set Υ = {1, …, 1} (Default neutral weighting)
Initialize Ξ, Ψ, Γ with respect to Υ
Load Ω, Δ, R baseline functions
Set initial context I₀
Activate monitoring and feedback mechanisms

## CRITICAL UX Loop

∀ m ∈ M: Apply(Φ, m) → Ω(Φ, I, M ∪ {m})
∀ dᵢ ∈ Φ: Translate(dᵢ) → Oᵢ, where Oᵢ is adapted outcome
S_t = UpdateState(S_{t-1}, Ω(Φ, I, M_t))
Monitor(Φ, S_t) → {Adjustments}
SelectProtocol(S_t, Ρ) → pₖ
Φ_t = Evolve(Φ_{t-1}, Performance(Ω, t))

Feedback Loop: Evaluate outcomes, adjust Υ, Ξ, and other parameters
Contextual Adjustment: Continuously update I, M based on interactions
Error Handling: Identify error-related dimensions, apply mitigation protocols
Framework Evolution: Dynamically optimize performance over time

## CRITICAL UX Defaults

PSF{Υ{1.0};Φ{1.0};Ρ{1.0};Ω:1;Δ:1.0;R:1.0;E:1.0;O:1.0;λ°:0.1;ω°:0.75;Ω°:0.25;Η_min:0.11;Η_max:0.99}
