# AoC 2021/06 Lanternfish
In    ← &fras "2021/input/6.txt"
Parse ← ⬚0↙9 °⊚ ⊜⋕⊸>@0
Sim   ← /+ ⍥(⍜⊡₆+ ⊃↻₁⊢)
Part₁ ← Sim 80 Parse
Part₂ ← Sim 256 Parse
⊂⊃Part₁Part₂ In
┌─╴test
  T ← &fras "2021/input/6t.txt"
  ⍤⤙≍ 26 Sim 18 Parse T
  ⍤⤙≍ 5934 Sim 80 Parse T
  ⍤⤙≍ 26984457539 Sim 256 Parse T
└─╴
