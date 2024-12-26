# AoC 2024/15 Warehouse Woes
# TODO
&fras "2024/input/15t.txt"
⊜∘⊸≠@\n °$"_\n\n_"
W ← # warehouse
▽⊸≠@\n
M     ←        # moves
Robot ← ⊢⊚=@@  # coordinates of the robot
Act ← (
  +⊸⊃(
    />⊗".#" # (1) if empty comes before wall, can move
  | =@.⊡1   # (2) if empty is next ahead
  )
  ⨬(∘            # (0) stay in place
  | ⍜⊏↻₋₁⊸⊗"@O." # (1) push the next ball to the next empty
  | ⍜↙₂⇌         # (2) switch places
  )
)                                  # change the section according to conditions
Seek  ← ⍜(⊢↘|Act)⊸Robot            # find the corridor right of the robot
Move  ← ⍜⨬(∘|≡⇌|⍉⇌|⍉)Seek ⊗⊙"><^v" # orient the map by arrow
GPS   ← /+♭×100_1⍉⊚=@O
Part₁ ← GPS ∧Move M W
Part₁
