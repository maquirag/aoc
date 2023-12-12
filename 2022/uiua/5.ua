# Day 5 - Supply Stacks
Data ← &i "util.ua" "Lines"
Data 5
⊜□≠1♭≡(⊗"1"°□). # separate main parts
≡(□▽≠@ .) ▽=1◿4⇡⧻. ⍉≡°□ °□⊢.
Stacks ←
≡(⍜(↘1|-1) ♭∵⋕ regex "\\d+") °□⊡1
Moves ←

# Part 1
SplitStep ← ∧(⊂:↯¯1_3▽⊃⊢⍜⊢(>0))⊙[] # [[x y z]...]
Move ← (|2
  # [x y z] {□stacks}
  ⊃(⊡2|⊡0|⊡1)           # extract values
  ⊙⊃(↙⊙(°□⊏))(⍜⊙(°□⊏)↘) # pull top x from y
  ⍜⊙(°□⊏)⊂ :            # add the value to z
)
≡⊢; ⍢(:Move⊙:⊃(⊢)(↘1))(>0⧻.) SplitStep Moves Stacks
# TGWSMRBPN

# Part 2
≡⊢; ⍢(:Move⊙:⊃(⊢)(↘1))(>0⧻.) Moves Stacks
# TZLTLWRNF
