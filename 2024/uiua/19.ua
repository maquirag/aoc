# AoC 2024/19 Linen Layout
# Experimental!
&fras "2024/input/19.txt"
⊏⍖⊸≡◇⧻ ∩(⊜□⊸>@@) °$"_\n\n_"
P ← # patterns
F ← # flags
# $flags F $patterns P
Towel  ← ▽¬⊸≡⌞◇≍"." ≡⍚⍣⌝⊂"." P
Weave! ← |1 memo(⨬(⨬(0|^0 ∵Weave!^0)±⧻. Towel|1)◇≍"".)
Part₁  ← /+ wait≡pool(Weave!⬚0/↥)
Part₂  ← /+ wait≡pool(Weave!/+)
⊂⊃Part₁Part₂ F
