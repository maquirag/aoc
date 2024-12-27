# AoC 2019/03 Crossed Wires
# Experimental!
In      ← &fras "2019/input/03.txt"
Parse   ← ∩(⊜⍜°⊂⊓(𝄈⊗"RDLU"|⋕)⊸≠@,)°$"_\n_" # ∩[[dir dist]*]
Wire    ← ⇌∧(⊂⇌+⌟×⌞⊃(𝄈⊡A₂⊢|+1⇡⊣|⊸⋅⊢)) ⊙[0_0]
Crosses ← ▽⊸≡(¬≍0_0)⍜°▽-₁⍆⊂∩◴ # combine coords for crossing
Part₁   ← /↧≡/+⌵ Crosses ∩Wire Parse
Part₂   ← /↧+∩⌞≡⊗ ⊃Crosses∩¤ ∩Wire Parse
⊂⊃Part₁Part₂ In
┌─╴test
  T₁ ← $ R8,U5,L5,D3
       $ U7,R6,D4,L4
  T₂ ← $ R75,D30,R83,U83,L12,D49,R71,U7,L72
       $ U62,R66,U55,R34,D71,R55,D58,R83
  T₃ ← $ R98,U47,R26,D63,R33,U87,L62,D20,R33,U53,R51
       $ U98,R91,D20,R16,D67,R40,U7,R15,U6,R7
  ⍤⤙≍6 Part₁ T₁
  ⍤⤙≍159 Part₁ T₂
  ⍤⤙≍135 Part₁ T₃
  ⍤⤙≍30 Part₂ T₁
  ⍤⤙≍610 Part₂ T₂
  ⍤⤙≍410 Part₂ T₃
└─╴
