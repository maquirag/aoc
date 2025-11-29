# FIXME
# AoC 2021/08 Seven Segment Search
Digits ← {"abcefg" "cf" "acdeg" "acdfg" "bcdf" "abdfg" "abdefg" "acf" "abcdefg" "abcdfg"}
In     ← &fras "2021/input/8.txt"
Parse  ← ≡⊃↙↘10 ↯∞_14 ⊜□×⊸⊃(≥@a|≤@z)
Part₁ ← (
  ≡◇⧻ ♭◌Parse         # side of output digits
  ⊏1_4_7_8 ≡◇⧻ Digits # size of digits 1,4,7,8
  /+ ≡⌞∊              # count occurrences 
)
Part₂ ← ⋅0 # not implemented
⊂⊃Part₁Part₂ In
┌─╴test
  T ← &fras "2021/input/8t.txt"
  ⍤⤙≍ 26 Part₁ T
  ⍤⤙≍ 61229 Part₂ T
└─╴
