# Day 5
Data ← &i "lib/files.ua" "Lines"
Data 5                                 # read file
⊜□≠1♭⊐≡(⊗"1").                         # separate parts
⊐≡(▽≠@ .) ⍉⊐≡(≡(⊡1) ⬚@ ↯¯1_4) ⊢.       # slots
⊐≡(⍜(↘1)(-1) ♭∵parse regex "\\d+") ⊡1: # moves

SplitStep ← ∧(⊂:↯¯1_3▽⊃⊢⍜⊢(>0))⊙[] # [[x y z]...]
Move ← (|2
  # [x y z] {□pegs}
  ⊃(⊡2|⊡0|⊡1)         # extract values
  ⊙⊃(↙⊙(⊔⊏))(⍜⊙(⊔⊏)↘) # pull top x from y
  ⍜⊙(⊔⊏)⊂ :           # add the value to z
)
,, # Part 1
≡⊢; ⍢(:Move⊙:⊃(⊢)(↘1))(>0⧻.) SplitStep
# TGWSMRBPN

⊙:: # Part 2
≡⊢; ⍢(:Move⊙:⊃(⊢)(↘1))(>0⧻.)
# TZLTLWRNF
