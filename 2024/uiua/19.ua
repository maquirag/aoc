# AoC 2024/19 Linen Layout
&fras "2024/input/19.txt"
∩(⊜□⊸≥@a) °$"_\n\n_"
P     ← # patterns
D     ← # designs
Towel ← ▽⊸≡≠□"." ≡⍚⍣⌝⊂"." P
Weave ← |1 memo(⨬(/+ ∵Weave Towel|⋅1)◇≍"".)
Part₁ ← /+ ± wait≡poolWeave
Part₂ ← /+ wait≡poolWeave
⊂⊃Part₁Part₂ D
