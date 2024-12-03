# AoC 2024/03 Mull It Over
&fras "2024/input/03.txt"
Pairs ← ⋕↘1⍉regex$ mul\((\d+),(\d+)\)
Part₁ ← /+/×Pairs
Part₂ ← (
  ▽⊸≠@\n
  ⊂⊂"do()"⊙"don't()"
  ♭regex$ do\(\).*?don't\(\)
  /+≡Part₁
)
⊃Part₁Part₂
