# Day 13 - Point of Incidence
Data ← &i "files.ua" "Raw"
Data 13
⊜(□⊜(=@#)≠@\n.)¬⌕"\n\n".
Pools ←

# Part 1
F ← ⬚0⊢+1 # first index found
Axis! ← (
  ⊙¤ +1⇡-1⧻. °□               # draw lines
  ≡(^2⇌ (↘|⊙↘:)>0. -∩⧻,, ⊃↘↙) # resize and compare area
  ⬚0⊢+1⊚                      # return evaluated index
)
/+ ≡(+⊃(Axis!≍⍉|×100 Axis!≍)) Pools # calculate result
# 27502

# Part 2
S ← =1/+♭≠ # only 1 smudge exists
/+ ≡(+⊃(Axis!S⍉|×100 Axis!S)) Pools
