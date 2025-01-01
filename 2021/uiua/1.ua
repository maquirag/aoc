# AoC 2021/01 Sonar Sweep
In    ← &fras "2021/input/1.txt"
Parse ← ⊜⋕⊸≠@\n
Part₁ ← /+ ⧈₂/> Parse
Part₂ ← /+ ⧈₂/> ⧈₃/+ Parse
⊂⊃Part₁Part₂ In
┌─╴test
  T ← &fras "2021/input/1t.txt"
  ⍤⤙≍ 7 Part₁ T
  ⍤⤙≍ 5 Part₂ T
└─╴
