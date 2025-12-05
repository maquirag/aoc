# AoC 2025/05 Cafeteria
In    ← &fras "2025/input/05.txt"
Parse ← ⊙♭ ∩◇⋕ ∩°⬚@-csv °$"_\n\n_"
Part₁ ← ⧻⊚ /↥ ×⊞⊃(≥⊢|≤⊣)
Part₂ ← /++₁/-⍉↯∞_2 ⍜(↘₋₂↻₁|♭▽/>⊸⍉↯∞_2) ♭\↥⍆⊙◌
⊂⊃Part₁Part₂ Parse In
┌─╴test
  T ← &fras "2025/input/05t.txt"
  ⍤⤙≍ 3 Part₁ Parse T
  ⍤⤙≍ 14 Part₂ Parse T
└─╴
