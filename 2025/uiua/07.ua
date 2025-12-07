# AoC 2025/07 Laboratories
In    ← &fras "2025/input/07.txt"
Parse ← °˜⊂ ▽/↥⊸⍉ ≠@. ⊜∘⊸≠@\n # remove empty lines
Collect! ← ^^⊃(
  ×¬      # extinguish
| ⊙+⟜/+×  # count hits
  ∩⌟↻1 ¯1 # divert beams
)
Part₁ ← ◌ ∧Collect!↥ ⊙⊙0 # splitters encountered
Part₂ ← ◌ ∧Collect!+ ⊙⊙1 # bifurcations + 1
⊂⊃Part₁Part₂ Parse In
┌─╴test
  T ← &fras "2025/input/07t.txt"
  ⍤⤙≍ 21 Part₁ Parse T
  ⍤⤙≍ 40 Part₂ Parse T
└─╴
