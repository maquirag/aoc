# AoC 2021/05 Hydrothermal Venture
In       ← &fras "2021/input/5.txt"
Parse    ← ↯∞_2_2 ⊜⋕⊸∊+@0⇡10
HV       ← ▽⊸≡(/↥/=)            # only horizontal or vertical
IncRange ← ⨬(+⍜-₁⇡|+⇡+₁)⊸>₀⊃/-⊢ # inclusive range in: [a b]
ToCoords ← ≡⊟∩IncRange°⊟⍉       # in: [x₁_y₁ x₂_y₂]

Part₁ ← /+♭>1°⊚ ∧(⊂ToCoords) ⊙[] HV Parse # without diagonals
Part₂ ← /+♭>1°⊚ ∧(⊂ToCoords) ⊙[] Parse    # with diagonals
⊂⊃Part₁Part₂ In
┌─╴test
  T ← &fras "2021/input/5t.txt"
  ⍤⤙≍ 5 Part₁ T
  ⍤⤙≍ 12 Part₂ T
└─╴
