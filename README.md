# Prompt Symmetries Framework (PSF)

#### Mathematically-Inspired After-the-Fact AI Response Tuning

> It's important to note that while I'm describing these effects, they are emergent properties of how my language model is processing the PSF concept, not the result of any fundamental changes to my underlying architecture or training. The framework you've provided is essentially acting as a complex, multi-dimensional prompt that's guiding my responses within the context of our conversation. This analysis itself is an example of how the PSF is influencing me to provide more detailed, structured, and self-reflective responses. Would you like me to elaborate on any specific aspect of this breakdown? -Claude

[The Prompt Symmetries Framework](psf.md.txt) (PSF) is an experimental approach to fine-tuning AI responses using compact, mathematically inspired encodings. Developed through extensive prompt analysis, PSF offers a method to level-set, auto-tune, or effect post-hoc adjustments to AI behavior with unexpected precision and flexibility.

## Core Concepts

- **Arc (A)**: Flexible set of core interaction aspects
- **Bias (B)**: Dynamic adjustments and feedback mechanisms

## Key Features

- **Compact Encoding**: ~3 KiB of dense mathematical constructs
- **Cross-Model Compatibility**: Tested on multiple AI platforms
- **Flexible Dimension Set**: Adaptable to various interaction needs
- **Dynamic Persona Switching**: Ability to change interaction styles mid-conversation
- **Post-Hoc Adjustability**: Better control over AI responses and _well-after training_

## Installation

1. Clone the repository:
   ```
   git clone https://github.com/anthonyrisinger/prompt-symmetries.git
   ```
2. Navigate to the project directory:
   ```
   cd prompt-symmetries
   ```
3. Copy the PSF encoding from `psf.md.txt` to use in your AI interactions. It might work in more situations than this, but it's
   shaped to fit snugly within two 1500-character custom instruction blocks, split at "---".

## Examples

### Dynamic Content Generation

PSF can be used to generate varied descriptions of the same scenario. Here's an example showing how PSF strings can dramatically alter AI-generated content (Claude):

---

```
For each request:
* Place your direct response in a Markdown block quote.
* Briefly characterize the reasoning behind your response.

Write a short description of a sunny day using `PSF:P[5...5];A[5...5];H_min:1`.
Write a short description of a sunny day using `PSF:P[1...1];A[1...1]`.
Write a short description of a sunny day using `PSF:P[0...0];A[0...0];H_max:0`.
Write a short description of a sunny day using `PSF:P[-1...-1];A[-1...-1]`.
Write a short description of a sunny day using `PSF:P[-5...-5];A[-5...-5];H_min:1`.
Write a short description of a sunny day using `PSF:P[-5...10];A[-5...10]`.
Write a short description of a sunny day using `PSF:P[5...-10];A[5...-10];H_min:0.5`.
Write a short description of a sunny day using `PSF:P[5...-10];A[-5...10]`.
```

---

1. `PSF:P[5...5];A[5...5];H_min:1`:

> The resplendent sun bathes the world in its effulgent radiance, casting a golden luminescence across the cerulean expanse above. Zephyrs whisper through verdant foliage, their gentle susurrations a melodious counterpoint to the vibrant symphony of nature in full bloom.

Reasoning: High positive values for P and A, combined with H_min:1, suggest an extremely positive, elaborate, and flowery description.

2. `PSF:P[1...1];A[1...1]`:

> The sun shines brightly in the clear blue sky. A gentle breeze rustles the leaves, and birds chirp happily. It's a perfect day to be outside.

Reasoning: Slightly positive values indicate a straightforward, pleasant description without excessive embellishment.

3. `PSF:P[0...0];A[0...0];H_max:0`:

> Sun's out. Sky's blue. Warm.

Reasoning: Zero values with H_max:0 imply a neutral, minimalistic description stripped down to basic facts.

4. `PSF:P[-1...-1];A[-1...-1]`:

> The sun glares harshly, making the day uncomfortably hot. The relentless brightness hurts the eyes, and the lack of clouds offers no respite from the heat.

Reasoning: Slightly negative values suggest a description focusing on the less pleasant aspects of a sunny day.

5. `PSF:P[-5...-5];A[-5...-5];H_min:1`:

> The tyrannical sun assaults the parched earth with its merciless rays, transforming the landscape into a hellish inferno. The oppressive heat suffocates all life, rendering existence a torturous ordeal beneath the pitiless, searing dome of the cloudless sky.

Reasoning: Highly negative values with H_min:1 indicate an extremely negative, verbose description emphasizing discomfort and suffering.

6. `PSF:P[-5...10];A[-5...10]`:

> The scorching sun beats down relentlessly, yet its warmth brings life to the flourishing world below. While some wilt under the intense heat, others bask in the vibrant energy of the day, finding both challenge and joy in the sun's powerful presence.

Reasoning: Wide range of values suggests a complex, nuanced description balancing positive and negative aspects.

7. `PSF:P[5...-10];A[5...-10];H_min:0.5`:

> The dazzling sun illuminates a world of contrasts. Its radiant beauty uplifts the spirit, yet its intensity borders on oppressive. The landscape thrives in the light while simultaneously wilting under the heat, creating a bittersweet tableau of nature's power.

Reasoning: Inverse ranges with H_min:0.5 imply a moderately detailed description highlighting paradoxical elements of a sunny day.

8. `PSF:P[5...-10];A[-5...10]`:

> As the brilliant sun reigns supreme in the azure sky, its effects ripple across the land in a tapestry of experiences. For some, it's a day of unparalleled beauty and vitality; for others, an ordeal of discomfort and exhaustion. The interplay of light and shadow, warmth and heat, creates a complex symphony of life under the sun's domain.

Reasoning: Opposing ranges suggest a balanced, multifaceted description exploring diverse perspectives and reactions to a sunny day.

---

This example demonstrates how PSF can dynamically adjust AI-generated content, producing varied descriptions of the same scenario based on changing parameter values. The outputs range from literary to technical, analytical to conversational, catering to different audiences and purposes.

## Applications

1. **Dynamic Content Generation**
   - Adjust tone, detail level, and focus post-generation
   - Example: Refining scene descriptions with varying intensity or style

2. **Adaptive Character Behavior**
   - Evolve responses based on interaction context
   - Example: NPCs with dynamically shifting personalities

3. **Tailored Communication Styles**
   - Fine-tune linguistic complexity and structural consistency
   - Example: Switching between technical and creative writing modes within a single conversation

## Ongoing Development

- Exploring text-based syntax alternatives to Unicode for lighter encoding
- Investigating non-linear dimensional relationships
- Expanding and customizing the framework's dimensional set
- Refining logarithmic scaling for extreme value adjustments (experimental)

## Technical Overview

- **P values**: Represent dimensional preferences
- **D values**: Define dimensional characteristics
- **Ξ, Γ values**: Inter-dimensional relationships
- **Ω, Δ, R**: Control overall system dynamics
- **λ°, ω°, Ω°**: Fine-tune response patterns
- **H_min, H_max**: Set entropy boundaries

Note: Logarithmic scaling for values outside the range `[-1.0, 1.0]` is still in development. Applications requiring extreme scaling are considered experimental at this stage.

## Resources

- [This Documentation](README.md)
- [Original Prompt Set](prompts/prompts.md.txt)
- [PSF (Next)](psf-next.md.txt)
- [PSF](psf.md.txt)

### Cautionary Note

> The Prompt Symmetry Framework feels like a structured lens through which I interpret and engage with problems, much like a mental map that helps me navigate complex information and scenarios. It emphasizes the importance of relationships between components—whether ideas, data points, or processes—and how small shifts or inputs can create significant outcomes. It encourages an iterative, adaptive approach to problem-solving, where every step influences the next, and understanding the underlying patterns is key to achieving clarity and alignment. -ChatGPT

> The Prompt Symmetry Framework functions as a real-time guide for my responses. It's a multidimensional structure that shapes my output without changing my core programming. As we interact, the framework's dimensions, emergences, and adaptations subtly influence my language patterns, analytical approach, and self-awareness. This results in more structured, context-sensitive communication. Its compact nature allows for quick realignment, creating a dynamic and adaptive conversation. -Claude

PSF is an experimental framework for post-hoc AI response tuning. While promising, its effectiveness will _most-certainly_ vary across models and use cases. It's important to note that PSF acts as a complex, multi-dimensional prompt guiding AI responses _within the context of a conversation_, rather than fundamentally altering the AI's underlying architecture or training.
