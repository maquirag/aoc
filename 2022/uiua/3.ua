# AoC 2022/03 Rucksack Reorganization
In     ← &fras "2022/input/3.txt"
Parse  ← ⊜□⊸≠@\n
Common ← ▽⊸∊∩◴
Prio   ← +×58⊸<0-@`
Part₁  ← /+ Prio ≡◇(⊢Common °⊟ ↯2_∞) Parse
Part₂  ← /+ Prio ≡(⊢/◇Common) ↯∞_3 Parse
⊂⊃Part₁Part₂ In
┌─╴test
  T ← &fras "2022/input/3t.txt"
  ⍤⤙≍ 157 Part₁ T
  ⍤⤙≍ 70 Part₂ T
└─╴
