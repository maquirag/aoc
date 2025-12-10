# AoC 2025/10 Factory
In ← &fras "2025/input/10.txt"
Parse ← (
  ⊜(□▽¬⊸∊"[](){}")⊸≠@\n
  ≡◇(⊜□⊸≠@\s
     ⊃(
    | □⬚0≡◇(°⊚⊜⋕⊸≠@,)↘1↘¯1 # buttons
    | =@#⊢                 # indicators
    | ⍚⊜⋕⊸≠@,⊣             # joltage
    )
  )
  ⍉⊟₃
)
Solve! ← -1⧻ ⊢path(^¤⊙⋅∘|≍) ⊸×0
Part₁  ← /+ ≡(Solve!(⌵-) ∩°□°⊟) ⍜⍉(⊏1_0)
Part₂  ← /+ ≡(Solve!+ ∩°□°⊟) ⍜⍉(⊏2_0)
# Part 2 works on the test data, but not on the real input.
┌─╴test
  T ← &fras "2025/input/10t.txt"
  ⍤⤙≍ 7 Part₁ Parse T
  ⍤⤙≍ 33 Part₂ Parse T
└─╴
