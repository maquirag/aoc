# AoC 2025/04 Printing Department
In    ← &fras "2025/input/04.txt"
Parse ← ⊜∘⊸≠@\n
Part₁ ← ∘
Part₂ ← ∘
Removable ← ⬚@.⧈(
  ⊃(=@@⊡1_1   # center is a roll
  | ≤4/+♭=@@  # max 4 of 9 rolls
  )
  ×            # both conditions apply
)[3_3 1_1 1_1] # surrounding windows
Remove ← ∧⍜⊡⋅@.⊚⊸Removable
Part₁  ← /+♭ Removable
Part₂  ← /+♭±- ⊸⍥Remove∞
⊂⊃Part₁Part₂ Parse In
┌─╴test
  T ← &fras "2025/input/04t.txt"
  ⍤⤙≍ 13 Part₁ Parse T
  ⍤⤙≍ 43 Part₂ Parse T
└─╴
