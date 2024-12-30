# AoC 2022/06 Tuning Trouble
In     ← &fras "2022/input/6.txt"
Parse  ← ⊜□⊸≠@\n
Signal ← +⟜(⊢⊚⧈(/×◰))
Part₁  ← ≡◇Signal 4 Parse
Part₂  ← ≡◇Signal 14 Parse
⊟⊃Part₁Part₂ In
┌─╴test
  T ← &fras "2022/input/6t.txt"
  ⍤⤙≍ [7 5 6 10 11] Part₁ T
  ⍤⤙≍ [19 23 23 29 26] Part₂ T
└─╴
