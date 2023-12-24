# Day 4: Giant Squid
&fras "../input/4.txt"
⊙(↯¯1_5_5) ∩(♭∵⋕ regex "\\d+") ⊃↙↘ ⊗@\n.
Numbers ←
Bingo ←

# Part 1
Mark ← ∊Bingo ↙:Numbers # arg: N (numbers drawn)
Winner ← /↥=5⊂⊃(≡/+|/+) # arg: bool board 5x5

⊃≡Winner∘ ⊃(Mark|∘) 0             # initial checks
⍢(⊃≡Winner∘ ⊃(Mark|∘)+1;;)(=0/↥.) # first winner
⊙⊙(⊡:Numbers-1)                   # last number called
∩▽,Bingo                          # keep winning table and mask
×/+▽¬:∩♭                          # score from all unmarked

# Part 2
⊃≡Winner∘ ⊃(Mark|∘) 0               # initial checks
⍢(⊃≡Winner∘ ⊃(Mark|∘)+1;;)(>1/+=0.) # last loser
⊙⊙:⊙:⊃(∘|⊢⊚¬)                       # save index of last loser
⍢(⊃≡Winner∘ ⊃(Mark|∘)+1;;)(=0/↧.)   # continue until won
⊙⊙(⊡:Numbers-1)                     # last number called
∩⊡,Bingo:⊙:;                        # keep winning table and mask
×/+▽¬:∩♭                            # score the last loser
