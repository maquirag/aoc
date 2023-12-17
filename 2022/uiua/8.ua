Util ← &i "util.ua"
  Raw ← Util "Raw"
  Row! ← Util "Row!"
Row!∵⋕ Raw 8
In ←

# Part 1
V ← >⬚¯1⊂¯1↘¯1\↥. # visible
R! ← ⍜(⍥(⍉⇌)∘|^1) # rotate then undo
/+ ♭ /↥ ≡R!V ⇡4 ¤In
# 1832

# Part 2
D ← (
  ≡(≡(□↙) ⊃(⇡⧻|¤)) . # take left n-1 values in each line
  # > mark all numbers left to n which are smaller
  # ⇌ reverse so it starts with number closest to n
  # \× create list of consecutive smaller numbers
  # /+ add them all
  # +1 the next tree is also counted, regardless of size
  # ↧⊃...⧻ cannot see more trees than what is left of n
  ∵(↧⊃(+1/+\×°□⇌>|⧻))
  ≡(⍜⊢(0;)) # leftmost visibility is always zero
)           # Viewing Distance
/↥ ♭ /× ≡R!D ⇡4 ¤In
