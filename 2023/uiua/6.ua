# AoC 2023/06 Boat Race
In    ← &fras "2023/input/6.txt"
P     ← ⍉↯2_∞ ⊜⋕⊸∊+@0⇡10 # parse [[time dist]]
Race  ← /+ <×⟜-⊸⇡ °⊟     # v×t>dist ; time=v+t
Part₁ ← /× ≡Race P
Part₂ ← Race ≡(⋕/◇⊂)⍉°⋕ P
⊂⊃Part₁Part₂ In
┌─╴test
  T ← &fras "2023/input/6t.txt"
  ⍤⤙≍ 288 Part₁ T
  ⍤⤙≍ 71503 Part₂ T
└─╴
