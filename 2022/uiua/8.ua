# AoC 2022/08 Treetop Tree House
In      ← &fras "2022/input/8.txt"
Parse   ← ⊜∵⋕⊸≠@\n
Visible ← >⊂₋₁↘₋₁⊸\↥    # Every tree to the north is smaller
Sides!  ← ≡⍜⍥(⍉⇌)^0 ⇡4¤ # Do with 4 rotations, then rotate back
Part₁   ← /+♭ /↥ Sides!Visible Parse
# n is bigger than each number west of it.
# Count how many are consecutively smaller to the west.
# Count the next tree too, but only up to the edge.
Viewing ← ↧∵◇⊃(⧻|+1/+\↧⇌) >⊸≡(≡(□↙) ⇡⊃⧻¤)
Part₂   ← /↥ ♭ /× Sides!Viewing Parse
⊂⊃Part₁Part₂ In
┌─╴test
  T ← &fras "2022/input/8t.txt"
  ⍤⤙≍ 21 Part₁ T
  ⍤⤙≍ 8 Part₂ T
└─╴
