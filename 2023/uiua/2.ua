# AoC 2023/02 Cube Conundrum
In ← &fras "2023/input/2.txt"
# Games in rows, RGB in columns
RGB   ← ⊕□ ⊓(⨂"rgb"/◇⊂|⋕) °⊟⇌↘1⍉ regex"(\\d+) ([rgb])"
Parse ← ⊜RGB⊸≠@\n
Part₁ ← /+ +1⊚ /×≤12_13_14⍉ ≡₀◇/↥ Parse
Part₂ ← /+ ≡/× ≡₀◇/↥ Parse
⊂⊃Part₁Part₂ In
┌─╴test
  T ← &fras "2023/input/2t.txt"
  ⍤⤙≍ 8 Part₁ T
  ⍤⤙≍ 2286 Part₂ T
└─╴
