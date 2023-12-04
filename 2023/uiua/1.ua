Files ← &i "files.ua"
  Raw ← Files "Raw"
  Row! ← Files "Row!"
Raw 1

. # Part 1
D ← /+ ×⇡10 ⊞= +@0⇡10
T ← /+ ×10_1 ⊏0_¯1 ▽>0.
/+ Row!(T D)

: # Part 2
W ← {"" "one" "two" "three" "four" "five" "six" "seven" "eight" "nine"}
N ← /+ ×⇡10 ⊐≡⌕W¤
/+ Row!(T +⊃D N)
