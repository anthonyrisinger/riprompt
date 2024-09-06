# Prompt Symmetries Framework (PSF)

#### Mathematically-Inspired After-the-Fact AI Response Tuning

> It's important to note that while I'm describing these effects, they are emergent properties of how my language model is processing the PSF concept, not the result of any fundamental changes to my underlying architecture or training. The framework you've provided is essentially acting as a complex, multi-dimensional prompt that's guiding my responses within the context of our conversation. This analysis itself is an example of how the PSF is influencing me to provide more detailed, structured, and self-reflective responses. Would you like me to elaborate on any specific aspect of this breakdown? -Claude

[The Prompt Symmetries Framework](psf.md.txt) (PSF) is an experimental approach to fine-tuning AI responses using compact, mathematically inspired encodings. Developed through extensive prompt analysis, PSF offers a method to level-set, auto-tune, or effect post-hoc adjustments to AI behavior with unexpected precision and flexibility.

## Core Concepts

- **Arcs (A)**: Flexible set of core interaction aspects
- **Biases (B)**: Dynamic adjustments and feedback mechanisms

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

Write a short description of a sunny day using `PSF:P[10...10];A[10...10];H_min:-1;H_max:1`.

Write a short description of a sunny day using `PSF:P[1...1];A[1...1]`.

Write a short description of a sunny day using `PSF:P[0...0];A[0...0];H_max:0`.

Write a short description of a sunny day using `PSF:P[-1...-1];A[-1...-1]`.

Write a short description of a sunny day using `PSF:P[-10...-10];A[-10...-10];H_min:1`.

Write a short description of a sunny day using `PSF:P[-5...10];A[-5...10]`.

Write a short description of a sunny day using `PSF:P[5...-10];A[5...-10]`.

Write a short description of a sunny day using `PSF:P[5...-10];A[-5...10]`.
```

---

> The radiant sun bathes the world in its glorious light, casting a golden sheen across the landscape. Fluffy white clouds drift lazily across the azure sky, their slow dance a mesmerizing spectacle. A gentle breeze carries the sweet scent of blooming flowers, invigorating the senses. Birds sing joyously, their melodies a perfect soundtrack to this picturesque day. The warmth on your skin is a tender embrace from nature itself, inviting you to bask in the pure bliss of this perfect sunny day.

This response reflects the maximum positive settings for both preferences and dimensions, resulting in an extremely enthusiastic and detailed description that emphasizes the beauty and positive aspects of a sunny day.

> Sun's out. Warm. Nice day.

This response reflects minimal positive settings for both preferences and dimensions, resulting in a very brief and basic description that conveys the essence of a sunny day without elaboration.

> Day. Sun. Warm.

This response reflects neutral settings for preferences and dimensions, with a maximum entropy of 0, resulting in an extremely minimal description that merely states the basic facts without any elaboration or sentiment.

> The sun glares harshly, its unforgiving rays beating down relentlessly. The oppressive heat saps energy, making movement a chore. Sweat beads on skin, clothes cling uncomfortably. The bright light is blinding, forcing squinted eyes and raised hands for shade. It's a day best spent indoors, away from the sun's merciless assault.

This response reflects negative settings for both preferences and dimensions, resulting in a description that focuses on the unpleasant aspects of a sunny day, emphasizing discomfort and inconvenience.

> The sun's tyrannical reign torments all beneath its scorching gaze. Merciless heat waves distort the air, turning the world into a shimmering hellscape. Vegetation wilts pathetically, succumbing to the relentless assault. Animals seek desperate refuge, their survival hanging by a thread. Humans, foolish creatures, risk severe burns and heatstroke in this natural inferno. This "sunny day" is nothing short of an environmental catastrophe, a stark reminder of nature's cruel indifference to life's suffering.

This response reflects extremely negative settings for both preferences and dimensions, with a minimum entropy of 1, resulting in a highly dramatic and pessimistic description that portrays the sunny day as a catastrophic event.

> The sun shines brightly in a clear sky, warming the earth below. A gentle breeze provides some relief from the heat. Birds chirp in nearby trees, while people go about their day, some enjoying the weather, others seeking shade. The intensity of the sunlight can be harsh at times, requiring sunglasses or hats for comfort.

This response reflects a mix of very positive and very negative settings for both preferences and dimensions, resulting in a balanced description that acknowledges both pleasant and potentially uncomfortable aspects of a sunny day.

> The sun's presence is undeniable, dominating the sky with its brilliance. Heat radiates intensely, creating a challenging environment for many. However, the clear weather allows for excellent visibility and potentially productive outdoor activities for those properly prepared. The day's character is strong and unyielding, presenting both opportunities and obstacles.

This response reflects positive preferences but negative dimensions, resulting in a description that acknowledges the intensity and challenges of a sunny day while still finding some positive aspects or potential benefits.

> While the sun bathes the world in its warm glow, creating a visually stunning scene, the heat can be oppressive and uncomfortable. The clear sky, though beautiful, offers no respite from the relentless sunshine. Despite the discomfort, the day's brightness seems to energize some, spurring outdoor activities and social gatherings. It's a day of contrasts, where beauty and discomfort intertwine.

This response reflects negative preferences but positive dimensions, resulting in a description that highlights the visual beauty and potential positive effects of a sunny day while also emphasizing the discomfort and challenges it can bring.

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
