# AoC 2022/01 Calorie Counting
In     ← &fras "2022/input/1.txt"
Parse  ← ⊜(□⊜⋕⊸≠@\n)¬⊸⌕"\n\n"
Solve! ← /+ ^0 ⍆ ≡◇/+ Parse
Part₁  ← Solve!⊣
Part₂  ← Solve!(↙¯3)
⊂⊃Part₁Part₂ In
┌─╴test
  T ← &fras "2022/input/1t.txt"
  ⍤⤙≍ 24000 Part₁ T
  ⍤⤙≍ 45000 Part₂ T
└─╴
