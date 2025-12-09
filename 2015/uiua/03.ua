# AoC 2015/03 Perfectly Spherical Houses in a Vacuum
In    ← &fras "2015/input/03.txt"
Parse ← ˜get map"^>v<"A₂
Part₁ ← ⧻◴\+⊂0_0 Parse
Part₂ ← ⧻◴⊂∩(\+⊂0_0) ⍜⍉°⊟ ↯∞_2_2 Parse
⊂⊃Part₁Part₂ In
┌─╴test
  ⍤⤙≍ 2 Part₁ ">"
  ⍤⤙≍ 4 Part₁ "^>v<"
  ⍤⤙≍ 2 Part₁ "^v^v^v^v^v"
  ⍤⤙≍ 3 Part₂ "^v"
  ⍤⤙≍ 3 Part₂ "^>v<"
  ⍤⤙≍ 11 Part₂ "^v^v^v^v^v"
└─╴
