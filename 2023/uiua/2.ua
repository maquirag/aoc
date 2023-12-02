# Day 2
Files ← &i "files.ua"
  Data ← Files "Raw"
  ByLine! ← Files "ByLine!"
Data 2

. # Part 1
# $ Game 1: 3 blue, 4 red; 1 red, 2 green, 6 blue; 2 green
# $ Game 2: 1 blue, 2 green; 3 green, 4 blue, 1 red; 1 green, 1 blue
# $ Game 3: 8 green, 6 blue, 20 red; 5 blue, 4 red, 13 green; 5 green, 1 red
# $ Game 4: 1 green, 3 red, 6 blue; 3 green, 6 red; 3 green, 15 blue, 14 red
# $ Game 5: 6 red, 1 blue, 3 green; 2 blue, 1 red, 2 green

Game ← parse↙⊗@:.↘5
Draws ← ↘1⊜□¬∊:":;".
RGB ← ×⊃(parse⊔⊢)(⌕:{"red" "green" "blue"}⊡1)
Cubes ← /+ ≡RGB ↯¯1_2⊜□¬∊:", ".⊔
Possible ← /↧♭ ≡(≤12_13_14 Cubes) Draws
Score ← × ⊃Game Possible
/+ ByLine!Score
# 2348

: # Part 2

Power ← /×/↥ ≡Cubes Draws
/+ ByLine!Power
# 76008
