# AoC 2025/09 Movie Theater
In    ← &fras "2025/input/09.txt"
Parse ← ↯∞_2⊜⋕¬⊸∊",\n"
Part₁ ← /↥ /×+1⌵/-⍉ ⧅₂>
Part₁ Parse In
┌─╴test
  T ← &fras "2025/input/09t.txt"
  ⍤⤙≍ 50 Part₁ Parse T
  #  ⍤⤙≍ 24 Part₂ Parse T
└─╴
