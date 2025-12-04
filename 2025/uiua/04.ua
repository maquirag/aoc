# AoC 2025/04 Printing Department
In     ← &fras "2025/input/04.txt"
Parse  ← =@@⊜∘⊸≠@\n
Loose  ← ⬚0⧈(×⊃(⊡1_1|≤4/+♭))[3_3 1_1 1_1]
Remove ← ∧⍜⊡⋅0⊚⊸Loose
Part₁  ← ⧻⊚ Loose
Part₂  ← ⧻⊚ -⊸⍥Remove∞
⊂⊃Part₁Part₂ Parse In
┌─╴test
  T ← &fras "2025/input/04t.txt"
  ⍤⤙≍ 13 Part₁ Parse T
  ⍤⤙≍ 43 Part₂ Parse T
└─╴
