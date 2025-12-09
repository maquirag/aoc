# AoC 2015/02 I Was Told There Would Be No Math
In    ← &fras "2015/input/02.txt"
Parse ← ⋕°⬚@xcsv
Part₁ ← /+ +×2 ⊃/+/↧ ×⊸↻1 ⍉ Parse
Part₂ ← /+ +×2 -⊃(/↥|/+|/×) ⍉ Parse
⊂⊃Part₁Part₂ In
┌─╴test
  ⍤⤙≍ 58 Part₁ "2x3x4"
  ⍤⤙≍ 43 Part₁ "1x1x10"
  ⍤⤙≍ 34 Part₂ "2x3x4"
  ⍤⤙≍ 14 Part₂ "1x1x10"
└─╴
