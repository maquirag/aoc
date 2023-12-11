# Day 11 - Cosmic Expansion
Data ← &i "files.ua" "Raw"
Map ← ⊜∘≠@\n. Data 11

# Part 1
Expand ← ▽+1=1≡/×=@..
Coords ← ▽⊃(♭|☇1⇡△)=@#
Pairs ← ⊏▽⊃(♭⊞>.⇡|☇1⇡⊟.)⧻.
Distance ← /+ ≡(/+⌵/-)
Distance Pairs Coords ⍜⍉Expand Expand Map
# 9445168

# Part 2
RouteCosts ← (
  ≠@# Map
  ⊃(∵▽⊃(⧻⊢|≡/×)|⍉∵▽⊃(⧻|/×))
  +1 ×⊙(-1) ↥
)
Cost ← (
  ⍉ ↘⊙↙ ⊙(+1) °⊟ ⊏⍏. ⊢⍉,°□:
  ↘⊙↙ ⊙(+1) °⊟ ⊏⍏. ⊢⇌⍉:
  -2+⊃(/+⊢|/+≡⊢)
)
/+ ≡Cost Pairs Coords Map □RouteCosts 1000000
# 742305960572
