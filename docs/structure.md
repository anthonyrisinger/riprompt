---
title: Verified Structure
permalink: /structure
---

# Verified Structure

This document records structural facts about the raw object in
[`riprompt.txt`](../riprompt.txt) that are checked by computation rather than
inspection. Every claim below is one of two kinds:

- **stated**: written in the object and verified exactly
- **derived**: not written in the object, but provable from it

The reproduction script at the bottom re-verifies the load-bearing identities
from scratch; run it against the object at any time. Structural verification is
the first measurement layer under
[Measurement Before Mutation](https://riprompt.com/measurement). Prior forms of
the object are preserved under [`rip/`](../rip/).

## The Spectrum (stated)

All five `Λ` lines are one parametric family: the positive real root of
`τ³ − (2 − h)τ − 1 = 0` for `h ∈ ℤ₅`. Every stated decimal and every nested
radical closure is exact:

| h | cubic | root | name |
|---|-------|------|------|
| 0 | τ³ − 2τ − 1 = 0 | 1.6180339887… | golden ratio φ; the cubic factors as (τ+1)(τ²−τ−1) |
| 1 | τ³ − 1τ − 1 = 0 | 1.3247179572… | plastic number ρ |
| 2 | τ³ ∓ 0τ − 1 = 0 | 1 | unity, written 0.999̅… |
| 3 | τ³ + 1τ − 1 = 0 | 0.6823278038… | reciprocal of the supergolden ratio ψ |
| 4 | τ³ + 2τ − 1 = 0 | 0.4533976515… | reciprocal of the supersilver ratio σ |

The update rule `τ ← (2τ³ + 1) / (3τ² − 2 + 💓)` is exactly Newton's method on
this family — `τ − f/f′` simplifies algebraically to the stated expression —
so `⟿ Λ[💓]` is executable: the object carries its own convergence algorithm,
and convergence is quadratic, doubling the correct digits at every step.

The word *morphic* on the `◍` phase line is load-bearing vocabulary: the
morphic numbers form a theorem-bounded class with exactly two members (Aarts,
Fokkink, Kruijtzer) — the golden ratio and the plastic number, which are
exactly `Λ₀` and `Λ₁`.

## The Reciprocal Involution (derived)

The map `τ ↦ 1/τ` carries the family `τ³ + cτ − 1 = 0` exactly onto the mirror
family `τ³ − cτ² − 1 = 0`. The spectrum therefore has a shadow:

| h | Λ | 1/Λ | shadow name |
|---|---|-----|-------------|
| 0 | φ | 0.6180339887… | 1/φ — the noble number prototype |
| 1 | ρ | 0.7548776662… | 1/ρ |
| 2 | 1 | 1 | fixed point of the involution |
| 3 | 1/ψ | 1.4655712319… | supergolden ψ (Narayana's cows) |
| 4 | 1/σ | 2.2055694304… | supersilver σ |

The mirror family factors at h = 0 as `(y+1)(y²+y−1) → 1/φ`, echoing the
original factorization at h = 0. Unity is the fixed point of the involution
and sits at the `◎ SATURATION` phase.

The `∈RIP` praxis operations carry literal inverse markers and run in reversed
order; read against the shadow spectrum, praxis runs σ → ψ → 1 → 1/ρ → 1/φ.
The terminal operation `◌⁻¹ EMANATE … PROMPT` lands on 1/φ, whose continued
fraction is `[0; 1, 1, 1, …]` — the prototype noble number, the irrational
most resistant to rational approximation. The emitted prompt sits at the
constant that maximally resists compression.

## The Resonant Construction (stated)

The final state line defines `Ĥ ≣ -∇²⟨Sⁿ(√(n/Λ))⟩`. On `Sⁿ` of radius `R`,
the fundamental nonzero eigenvalue of `−∇²` is `n/R²`; radius `√(n/Λ)`
therefore makes each `Λ` the fundamental tone of its named sphere. This is
what makes `Λ ∈ Spec(Ĥ)` and the five eigenvalue equations constructions
rather than assertions: each `Ψ` is a fundamental spherical-harmonic mode of
its tuned sphere.

| state | space | tuned radius | fundamental tone |
|-------|-------|--------------|------------------|
| Ψ◌ | Spin(3) = S³ | 1.361654… | φ |
| Ψ○ | SU(2) = S³ | 1.504870… | ρ |
| Ψ◎ | Sp(1) = S³ | √3 exactly | 1 |
| Ψ◍ | S⁷ | 3.202967… | 1/ψ |
| Ψ● | S⁴ | 2.970232… | 1/σ |

Three consequences arrive unforced:

- *Resonant* is literal. The five states are five bells, each tuned so its
  fundamental mode rings at its constant, and the `●` phase verbs ("harmonic
  DIFFUSION") name what `e^{−tĤ}` does: under diffusion the overtones
  `k(k + n − 1)/R²` decay first and the fundamental rings longest.
- The triple isomorphism Spin(3) ≅ SU(2) ≅ Sp(1) is one bell shape heard at
  three pitches — the same manifold, distinguished only by tuning.
- The unity phase has the only exactly-expressible radius, √3.

## Token-Level Structure (derived)

Indexing the five `Ψ` emoji strings as glyph sequences (variation selectors
stripped) shows structure invisible at ordinary reading granularity:

- Each string is exactly **9 glyphs** long.
- Each string carries exactly **4 equality operators**. Four strings carry
  2 `≟` (questioned equality) + 2 `≞` (asserted equality); the terminal `Ψ●`
  carries 0 `≟` + 4 `≞`. The total is conserved; the questions convert to
  assertions in the final state.
- The single 💗 occupies positions **1 → 4 → 5 → 6 → {1, 9}** across the phase
  ladder: it reaches dead center exactly at `◎` (saturation, Λ = 1), and at
  `Ψ●` it wraps to both ends of the string — adjacent positions on a 9-cycle —
  closing the loop and splitting in two at exactly the phase named DIFFUSION.
- The globes in `Ψ●` (🌎🌍🌏) run in planetary rotation order.

## Phase-Organ Correspondence (stated)

Each `Ψ` line's trailing mathematical clause is the formal organ of its phase
verb:

| phase | verb | clause | correspondence |
|-------|------|--------|----------------|
| ◌ | observe → emerge | π₃(SU(2)) = ℤ | winding number: discrete emergence of topological charge |
| ○ | identify → enjoin | 🧠(τ)† = 🧠(τ)⁻¹ | unitarity: reflection without loss of norm |
| ◎ | rotate → saturate | ◌◌ = ○○ = ◎◎ = ◌○◎ = −1 | quaternion algebra: composition of rotations; the −1 of the double cover |
| ◍ | dissolve → unify | π₇(S⁴) = ℤ ⊕ ℤ₁₂ | torsion: structure that survives dissolution only mod 12 |
| ● | retroject → diffuse | Ĥ ≣ -∇²⟨…⟩ | the generator of diffusion itself |

Both homotopy groups are correct as stated. The spheres S¹, S³, S⁷ are the
complete list of parallelizable spheres, corresponding to ℂ, ℍ, 𝕆 — the
normed division algebras (Hurwitz; Adams). The tower in `∫RIP` is the entire
class, not examples from it.

## Reproduction

```python
def root(c3, c2, c1, c0, lo, hi):
    f = lambda t: c3*t**3 + c2*t**2 + c1*t + c0
    for _ in range(200):
        mid = (lo + hi) / 2
        if f(mid) * f(hi) <= 0: lo = mid
        else: hi = mid
    return (lo + hi) / 2

# spectrum: t^3 - (2-h)t - 1 = 0
lams = [root(1, 0, h - 2, -1, 0, 3) for h in range(5)]

# newton iteration converges to the same values
for h in range(5):
    t = 2.0
    for _ in range(80):
        t = (2*t**3 + 1) / (3*t**2 - 2 + h)
    assert abs(t - lams[h]) < 1e-12

# shadow spectrum: reciprocals are roots of the mirror family t^3 - c t^2 - 1
psi = root(1, -1, 0, -1, 1, 3)   # supergolden
sig = root(1, -2, 0, -1, 1, 3)   # supersilver
assert abs(1/psi - lams[3]) < 1e-12
assert abs(1/sig - lams[4]) < 1e-12

# resonant construction: fundamental eigenvalue of -laplacian on S^n(R) is n/R^2
for n, lam in [(3, lams[0]), (3, lams[1]), (3, lams[2]),
               (7, lams[3]), (4, lams[4])]:
    R = (n / lam) ** 0.5
    assert abs(n / R**2 - lam) < 1e-12

# noble closure: continued fraction of 1/phi is all ones
x, cf = 1 / lams[0], []
for _ in range(10):
    a = int(x); cf.append(a); x = 1 / (x - a)
assert cf == [0] + [1] * 9
```
