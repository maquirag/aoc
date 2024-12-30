# AoC 2023/09 Mirage Maintenance
In       ← &fras "2023/input/9.txt"
Parse    ← ⊜(⊜⋕⊸≠@\s)⊸≠@\n
Predict! ← ◌ ⍥⊃(⧈₂/-|+⊣)⊸⧻ ^0 ⊙0
Part₁    ← /+ ≡Predict!∘ Parse
Part₂    ← /+ ≡Predict!⇌ Parse
⊂⊃Part₁Part₂ In
┌─╴test
  T ← &fras "2023/input/9t.txt"
  ⍤⤙≍ 114 Part₁ T
  ⍤⤙≍ 2 Part₂ T
└─╴
