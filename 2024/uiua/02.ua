# AoC 2024/02 Red-Nosed Reports
&fras "2024/input/02.txt"
Valid ← (
  ≡/-◫₂ # adjacent differences
  ××⊃(
    =1⧻◴± # direction is same
  | ±⌵/×  # no stagnation
  | /×<4⌵ # not too big jump
  )
)
Perm   ← /↥≡(Valid⍜↻↘₁)⇡⊃⧻¤
Parse! ← ⊜(^0⊜⋕⊸≠@ )⊸≠@\n
Part₁  ← /+Parse!Valid
Part₂  ← /+Parse!(⨬Perm⋅1Valid.)
⊃Part₁Part₂
