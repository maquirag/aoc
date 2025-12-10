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
BestSingle ← (
  ∩°□°⊟↙2                # buttons and indicators
  ⋯⇡˜ⁿ2⊸⧻                # button combos
  ⟜≡⌟(∧(⌵-)⊃(⊏⊚|⋅(×0⊢))) # press buttons
  ⊓≡/+≡⌟≍                # press counts and matches
  /↧˜▽                   # least presses
)
Part₁ ← /+ ≡BestSingle
# Part₂ ← ◌ # TODO
Part₁ Parse In
┌─╴test
  T ← &fras "2025/input/10t.txt"
  ⍤⤙≍ 7 Part₁ Parse T
  #  ⍤⤙≍ 33 Part₂ Parse T
└─╴
