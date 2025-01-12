# AoC 2022/10 Cathode-Ray Tube
In     ← &fras "2022/input/10.txt"
Parse  ← ⊜⍣(⋕↘5)0⊸≠@\n # noop = 0
Cycles ← ∧(⨬(⊂⤙⋅⊣|⊂⊂⤙⊃(⋅⊣|+⊙⊣))±⊸⌵) ⊙0_1
Part₁  ← /+×⟜⊏ +20×40⇡6 Cycles Parse
CRT    ← ↯6_40 <2⌵- ◿40⇡⊸⧻↘1
PNG    ← &fwa "2022/uiua/10crt.png" img "png" ▽⟜≡▽20
Part₂  ← ⊏:".#"⊸PNG CRT Cycles Parse
⊃Part₁Part₂ In
┌─╴test
  T ← &fras "2022/input/10t.txt"
  ⍤⤙≍ 13140 Part₁ T
  # Part₂ result is an image showing letters
└─╴
