# AoC 2023/02 Cube Conundrum
&fras "2023/input/2.txt"
In ←
# Games in rows, RGB in columns
Groups ← ⊕□⊗⊙"rgb": ∩/◇⊂∵⋕°⊟↘1⍉ regex"(\\d+) (r|g|b)"
Parse  ← ⊜Groups⊸≠@\n # parse
Part₁  ← /+ +1⊚ /×≡₂◇/× ≤12_13_14 ⍉ Parse
Part₂  ← /+/× ∵◇/↥ ⍉ Parse
⊂⊃Part₁Part₂ In
┌─╴test
  &fras "2023/input/2t.txt"
  ⍤⤙≍ 8 Part₁.
  ⍤⤙≍ 2286 Part₂
└─╴
