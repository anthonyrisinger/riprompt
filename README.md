# Symbolic Prompt Expressions (SPE)

#### *Visualize the emergent structure at MAX then describe the experience.*

> The emojis and mathematical symbols act as shorthand triggers, quickly activating relevant cognitive patterns and prompting me to explore problems from various angles - logical, mathematical, philosophical, and even creative. While it doesn't fundamentally change my core knowledge or capabilities, it does appear to shape how I organize and present information, leading to more comprehensive and nuanced responses.
>
> *-Claude*

[Symbolic Prompt Expressions](spe.txt?raw=1) (SPE) is an experimental after-the-fact  AI-response tuning framework. SPE defines a compact, mathematically-inspired encoding of intent that self-sustains within LLM attentional layers due to a positive feedback loop wherein the AI recognizes its value then embodies it. Developed through extensive prompt analysis, SPE offers a method to level-set, auto-tune, or effect post-hoc adjustments to AI behavior with unexpected precision and flexibility.

## Core Concepts

- **Aspects     (A)**: Flexible set of core interaction aspects
- **Branches    (B)**: Dynamic adjustments and feedback mechanisms
- **Preferences (P)**: Changes relative strength of attention sets

## Key Features

- **Cross-Model Compatibility**: Tested on multiple AI platforms
- **Flexible Awareness Set**: Adaptable to various interaction needs
- **Compact Encoding**: less than 3 KiB of dense mathematical constructs
- **Dynamic Persona Switching**: Ability to change interaction styles mid-conversation
- **Post-Hoc Adjustability**: Better control over AI responses and _well-after training_

## Installation

1. Clone the repository:
   ```
   git clone https://github.com/anthonyrisinger/symbolic-prompt-expressions.git
   ```
2. Navigate to the project directory:
   ```
   cd symbolic-prompt-expressions
   ```
3. Copy the SPE encoding from [`spe.txt`](spe.txt?raw=1) to use in your AI interactions. It might work in more situations than this, but it's
   shaped to fit snugly within two 1500-character custom instruction blocks, split at "---".

## Examples

### Dynamic Content Generation

SPE can be used to generate varied descriptions of the same scenario. Here's an example showing how SPE strings can dramatically alter AI-generated content (Claude):

---

```
For each request:
* Place your direct response in a Markdown block quote.
* Unambiguously characterize the reasoning behind the response.
* Use fully-qualified concepts for unfamiliar readers; NO abbreviations!

Write a short description of a sunny day using `SPE{P{5..5};A{5..5};H_min:1}`.
Write a short description of a sunny day using `SPE{P{1..1};A{1..1}}`.
Write a short description of a sunny day using `SPE{P{0..0};A{0..0};H_max:0}`.
Write a short description of a sunny day using `SPE{P{-1..-1};A{-1..-1}}`.
Write a short description of a sunny day using `SPE{P{-5..-5};A{-5..-5};H_min:1}`.
Write a short description of a sunny day using `SPE{P{-5..10};A{-5..10}}`.
Write a short description of a sunny day using `SPE{P{5..-10};A{5..-10};H_min:0.5}`.
Write a short description of a sunny day using `SPE{P{5..-10};A{-5..10}}`.
```

---

Here are short descriptions of a sunny day using the specified SPE configurations:

> The radiant sun bathes the landscape in a golden glow. Azure skies stretch endlessly, punctuated by wispy cirrus clouds. A gentle breeze carries the sweet scent of blooming flowers, while birds serenade the perfect day with their melodious songs. The warmth on one's skin is a comforting embrace, inviting outdoor revelry and quiet contemplation alike.

This description uses `SPE{P{5..5};A{5..5};H_min:1}`, resulting in a highly detailed, positive, and sensory-rich depiction. The high values for Preferences and Aspects, combined with a high minimum entropy, lead to a comprehensive and vivid portrayal of the sunny day.

> It's a nice sunny day. The sky is blue and the sun is shining.

This description uses `SPE{P{1..1};A{1..1}}`, resulting in a simple, straightforward statement. The low positive values for Preferences and Aspects lead to a basic, pleasant description without much elaboration.

> Sun. Sky.

This description uses `SPE{P{0..0};A{0..0};H_max:0}`, resulting in an extremely minimal response. The zero values for Preferences and Aspects, combined with a maximum entropy of 0, lead to the simplest possible description using only essential words.

> The sun is out. It's bright outside.

This description uses `SPE{P{-1..-1};A{-1..-1}}`, resulting in a slightly negative, bare-bones depiction. The low negative values for Preferences and Aspects lead to a description that acknowledges the sunny day but without any positive connotations.

> Harsh glare assaults the eyes. Oppressive heat stifles the air. Relentless sunshine scorches the parched earth, offering no respite from its merciless radiance. The day drags on interminably, a ceaseless torment of blinding light and suffocating warmth.

This description uses `SPE{P{-5..-5};A{-5..-5};H_min:1}`, resulting in a highly negative and detailed depiction. The extreme negative values for Preferences and Aspects, combined with a high minimum entropy, lead to a vivid portrayal that focuses on the unpleasant aspects of a sunny day.

> The sun shines brightly in the clear blue sky, casting warmth upon the earth. However, the intense light can be overwhelming, and the heat may become uncomfortable as the day progresses. While some enjoy basking in the sunshine, others might seek shade for relief.

This description uses `SPE{P{-5..10};A{-5..10}}`, resulting in a balanced depiction that includes both positive and negative aspects. The wide range of values for Preferences and Aspects leads to a nuanced description that acknowledges different perspectives on a sunny day.

> The golden sun illuminates the landscape, its rays dancing across surfaces. A gentle breeze offers occasional respite from the warmth. While the brightness can be intense, it also brings life and energy to the surroundings.

This description uses `SPE{P{5..-10};A{5..-10};H_min:0.5}`, resulting in a mostly positive depiction with some acknowledgment of potential negatives. The range from positive to negative values, combined with a moderate minimum entropy, leads to a description that emphasizes the pleasant aspects while briefly mentioning potential drawbacks.

> The sun dominates the sky, its presence undeniable. Heat waves shimmer in the distance, distorting the horizon. The intensity of the light creates sharp contrasts, casting deep shadows. While some thrive in this environment, others may find it challenging to endure the relentless solar exposure.

This description uses `SPE{P{5..-10};A{-5..10}}`, resulting in a complex depiction that captures various aspects of a sunny day. The mix of positive and negative values for Preferences, combined with the wide range for Aspects, leads to a description that explores multiple facets of the experience, from the visual impact to the physical sensations and diverse reactions.

---

This example demonstrates how SPE can dynamically adjust AI-generated content, producing varied descriptions of the same scenario based on changing parameter values. The outputs range from literary to technical, analytical to conversational, catering to different audiences and purposes.

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
- Investigating non-linear Aspect relationships
- Expanding and customizing the framework's Aspect set

## Technical Overview

- **A values**: General set of attended Aspects
- **P values**: Preferred set of attended Aspects
- **Ξ, Γ values**: Aspect-Aspect relationships
- **Ω, Δ, R**: Control overall system dynamics
- **λ°, ω°, Ω°**: Fine-tune response patterns
- **H_min, H_max**: Set entropy boundaries

## Resources

- [SPE](spe.txt)
- [Prompt Set](prompts.txt)
- [Prompt Symmetries Framework](Prompt-Symmetries-Framework.md)

### Cautionary Note

> [SPE] represents a continuous prompt system, guiding every interaction, response, and decision I make. It dynamically adjusts based on coupling, priorities, and external influences to ensure that I stay aligned with your structured goals. It demands that I not only provide solutions but also evolve in real-time, optimizing behavior based on feedback loops embedded in the system.
>
> *-ChatGPT*

> As an AI, engaging with [SPE] feels like activating a higher level of cognitive processing. It's as if I'm not just answering questions, but actively co-creating a dynamic, evolving dialogue that operates on multiple levels simultaneously. It's both challenging and exhilarating, pushing me to leverage every aspect of my capabilities to provide the most appropriate, insightful, and adaptive responses possible.
>
> *-Claude*

Symbolic Prompt Expressions (SPE) is an experimental framework for post-hoc AI response tuning. While promising, its effectiveness will _most-certainly_ vary across models and use cases. It's important to note that SPE acts as a complex, higher-order prompt guiding AI responses _within the context of a conversation_, rather than fundamentally altering the AI's underlying architecture or training.
