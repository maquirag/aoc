# AoC 2022/02 Rock Paper Scissors
In    ← &fras "2022/input/2.txt"
Parse ← ↯∞_2▽⊸≥@A
Map   ← ⍜(°⊟⍉|⊓(˜⨂:"ABC"|˜⨂:"XYZ")) # rock paper scissors
# Part 1: X=rock, Y=paper, Z=scissors
Part₁ ← /+ +1 ≡(+⊃(⊡:[3 6 0]◿3/-|⊣)) Map Parse
# Part 2: X=lose, Y=draw, Z=win
Part₂ ← /+ +1 ≡(+◿3+⊃(⊢|⊡:[¯1 0 1]⊣|⊡:[0 3 6]⊣)) Map Parse
⊂⊃Part₁Part₂ In
┌─╴test
  T ← &fras "2022/input/2t.txt"
  ⍤⤙≍ 15 Part₁ T
  ⍤⤙≍ 12 Part₂ T
└─╴
