# Day 23: A Long Walk
Data ← &i "files.ua"
  Raw ← Data "Raw"
  Row! ← Data "Row!"
In ← Row!∘ Raw "23t"

# Part 1
N ← ⧻In
End ← -2_2△In # finish coordinates
Nil ← ↯0_2[]  # empty offset
U ← (Nil|[¯1_0]) × ⊃(≠@#⊡0_1|∊:".^"⊡1_1)
R ← (Nil|[0_1]) × ⊃(≠@#⊡1_2|∊:".>"⊡1_1)
D ← (Nil|[1_0]) × ⊃(≠@#⊡2_1|∊:".v"⊡1_1)
L ← (Nil|[0_¯1]) × ⊃(≠@#⊡1_0|∊:".<"⊡1_1)
Routes ← (
  ◫3_3 In             # window of surroundings
  ≡≡(□⊂⊂⊂⊃(U|R|D|L))  # valid directions
  ∵+ ≡≡□+1⇡⊂.-2N      # add indices, excluding frame
  ⍜⍉≡(⊂□Nil) ≡(⊂□Nil) # pad from left and up
  ⍜(⊡0_1|□[1_1];)     # mark starting point
)
AppendNext ← ≡(□ ≡(□⊂)⊃(°□⊡:Routes⊢|¤) °□)
Flatten ← ⊐∧⊂⊙{}
RemoveVisited ← ▽∵(=⊃(⧻|⧻⊝|∘))
CompletedPath ← ⊙⊂∩▽¬,,∵(≍End⊢).

{}       # finished routes
[□[0_1]] # possible routes, start with entrance
⍢(&p∵⧻. CompletedPath RemoveVisited Flatten AppendNext)(>0⧻)
/↥.∵⧻;

# Good enough for Test Input, but too slow for real one
