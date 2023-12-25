# Day 9: Smoke Basin
In ← ⊜∵⋕ ≠@\n. &fras "../input/9.txt"

# Part 1
Less ← ≡/<◫2 ⬚∞⊂∞             # less than value above
Low ← /↧ ≡⍜(⍥(⇌⍉)∘|Less) ⇡4 ¤ # combine 4 sides
/++1▽∩♭ Low. In

# Part 2
Adj ← =1/+⌵-  # two coordinates are adjacents
⊚ ≠9 In       # basin coordinates
⊃(↘1|[⊢]) ⊙[] # begin with first coord, list of sizes
⍢(
  /↥ ⊠Adj ⊙., # find all adjacents to last group
  (⊃(↘1|[⊢])⊙(⊂⧻);|⊃(▽¬|⊂▽))/↥.
)(>0⧻)  # until the numbers are all assigned
⊂⧻;     # store the length only
/×↙3⊏⍖. # sort and score
