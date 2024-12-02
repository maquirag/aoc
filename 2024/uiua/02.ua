# AoC 2024/02 Red-Nosed Reports
&fras "2024/input/02.txt"
Valid ← (
  ≡/- ◫2 # adjacent differences
  ××⊃(
    =1⧻◴± # direction is same
  | ±⌵/×  # no stagnation
  | /×<4⌵ # not too big jump
  )
)
PermValid ← /↥≡(Valid⍜(↻|↘1))⊙¤⇡⊸⧻
Part₁     ← /+⊜(Valid⊜⋕⊸≠@ )⊸≠@\n
Part₂     ← /+⊜(⨬PermValid⋅1Valid.⊜⋕⊸≠@ )⊸≠@\n
⊃Part₁Part₂
