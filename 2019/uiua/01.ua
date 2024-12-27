# AoC 2019/01 The Tyranny of the Rocket Equation
In       ← &fras "2019/input/01.txt"
Parse    ← ⊜⋕⊸≠@\n
Fuel     ← -2⌊÷3
Part₁    ← /+ Fuel Parse
MassFuel ← /+ ⍢(⊂ +×⊸⊃<₀¯ Fuel⊸⊢|±/+⊢) ¤Fuel
Part₂    ← /+ MassFuel Parse
⊂⊃Part₁Part₂ In
┌─╴test
  ⍤⤙≍ [2 2 654 33583] Fuel [12 14 1969 100756]
  ⍤⤙≍ [2 966 50346] MassFuel [14 1969 100756]
└─╴
