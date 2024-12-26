# AoC 2023/02 Cube Conundrum
In ← &fras "2023/input/2.txt"
# Games in rows, RGB in columns
Groups ← ⊕□⊗⊙"rgb": ∩/◇⊂∵⋕°⊟↘1⍉ regex"(\\d+) (r|g|b)"
Parse  ← ⊜Groups⊸≠@\n # parse
Part₁  ← /+ +1⊚ /×≡₂◇/× ≤12_13_14 ⍉ Parse
Part₂  ← /+/× ∵◇/↥ ⍉ Parse
⊂⊃Part₁Part₂ In
┌─╴test
  T ← &fras "2023/input/2t.txt"
  ⍤⤙≍ 8 Part₁ T
  ⍤⤙≍ 2286 Part₂ T
└─╴
