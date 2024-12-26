# AoC 2024/13 Claw Contraption
&fras "2024/input/13.txt"
In    ← # input
Parse ← ↯∞_3_2⊜⋕⊸∊+@0⇡10
# Linear algebra
# a₁x + b₁y = c₁
# a₂x + b₂y = c₂
# Determinant: D = a₁b₂ - a₂b₁
# if D≠0 then unique solution, else consistency:
# C = a₁c₂==a₂c₁ and b₁c₂== b₂c₁
# if C then infinite solutions else no solution
# (all the data have unique solutions, not needed)
Det ← /-/×⍜⊢⇌ # determinant
# Solve: Cramer's rule
# Det Ax = c₁b₂ - c₂b₁
# Det Ay = a₁c₂ - a₂c₁
# x = Det Ax / Det A
# y = Det Ay / Det A
Cramer  ← ⊟∩÷,∩₃Det⊃(⇌↘₁|↘₋₁|⍜↻₁↘₁)
Ints    ← ▽⊸≡≍⊸⁅ # integer solutions
Score   ← /+♭×¤3_1
Upscale ← ≡⍜⊣(+10000000000000)
Solve!  ← Score Ints ≡Cramer ^0 Parse
Part₁   ← Solve!∘
Part₂   ← Solve!Upscale
⊂⊃Part₁Part₂ In
