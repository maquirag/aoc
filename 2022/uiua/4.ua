# AoC 2022/04 Camp Cleanup
In ← &fras "2022/input/4.txt"
# ranges a ≤ b, c ≤ d
Parse ← ↯∞_4 ⊜⋕¬⊸∊"-,\n"
# Contain: b≥d and c≥a, or vice versa: [b_c d_a]
# Crosses: b≥c and d≥a, or vice versa: [b_d c_a]
Intersect! ← ↥⊃(/↧/≤|/↧/≥) ^0 ↯2_2 ↻1
Part₁      ← /+ ≡Intersect!∘ Parse
Part₂      ← /+ ≡Intersect!⍉ Parse
⊂⊃Part₁Part₂ In
┌─╴test
  T ← &fras "2022/input/4t.txt"
  ⍤⤙≍ 2 Part₁ T
  ⍤⤙≍ 4 Part₂ T
└─╴
