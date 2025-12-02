# AoC 2025/01 Secret Entrance
In    ← &fras "2025/input/01.txt"
Parse ← ⊂50 ⍥¯=@L ⊜⊃(⊢|⋕↘1)⊸≠@\n
Part₁ ← /+ =0 ◿100 \+
Part₂ ← /+ =0 ◿100 \+ ˜▽ °×
⊂⊃Part₁Part₂ Parse In
┌─╴test
  T ← &fras "2025/input/01t.txt"
  ⍤⤙≍ 3 Part₁ Parse T
  ⍤⤙≍ 6 Part₂ Parse T
└─╴
