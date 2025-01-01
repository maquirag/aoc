# AoC 2022/09 Rope Bridge
# TODO Part 2
In    ← &fras "2022/input/9t2.txt"
Parse ← ⊜□⊸≠@\n
Moves ← /◇⊂ ≡⍚(▽⊃(⋕↘2|⨬(1|i|¯1|¯i)⊗:"RDLU"⊢)) # ℂ dirs
# in: dir [rope], out: newhead [rope]
Move ← +⊸⊙⊢
# If the new head is too far from the next knot,
# then prepend to the rope, otherwise replace the first value
Adjust ← ⨬(⊂|⊂⊙↘₁)◡(<2⌵-⊙⊡₁)
Part₁  ← ⧻◴ ↘1 ∧(Adjust Move) ⊙(▽2 ℂ 0 0) Moves Parse
Part₂  ← ∘
# ⊂⊃Part₁Part₂ In
┌─╴test
  T ← &fras "2022/input/9t.txt"
  ⍤⤙≍ 13 Part₁ T
  #   ⍤⤙≍ 36 Part₂ T
└─╴
