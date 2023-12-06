# Day 6 Boat Race
Data ← &i "files.ua" "Raw"
Data 6

⍉↯2_¯1 ⊐∵parse regex "\\d+"

. # Part 1
Ways ← (
  ⊃(⊢|⊢⇌) # unpack args to stack
  ⇡.      # list of possible times
  ⊃-∘     # pair of acceleration and travel
  ×       # possible distances
  <       # beating the record?
  /+      # count possible ways
)         # input: [time distance]
/×≡Ways
# 220320

: # Part 2
Kern ← ⊐(∵parse ≡/⊂ ∵$"_") ⍉
Ways Kern
# 34454850
