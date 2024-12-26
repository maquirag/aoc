# AoC 2023/06 If You Give A Seed A Fertilizer
# TODO
# Hint: the ranges within each rule are all contiguous
# Experimental!
In ← &fras "2023/input/5t.txt"
Parse ← (
  °$"_\n\n_"   # sections
  ⊓(⊜⋕⊸∊+@0⇡10 # seeds
    # rules: [targetlow sourcelow rangesize]
  | ⊜(□↯∞_3⊜⋕⊸∊+@0⇡10) ¬⊸⦷"\n\n"
    # convert to: [sourcelow sourcehigh offset]
    ≡⍜⍉⍚(⊟₃⊃(⊡1|/+↘1|/-⇌↙2))
    ≡⍚(
      ⍆ # sort, add low and high range
      ◇⊂⊸(⊂⊂¯∞⊙0⊢◇⊢)
      ◇⊂⟜(⊂⊙∞_0⊡1◇⊣)
    )
  )
) # out: [seeds] [[rules]₇]
# map source to target ? seed [rule]
FindInBin ← +⟜(⊣◇⊡⊣⊚⊢◇⍉⊸≤)
Part₁     ← /↧ ≡⌟𝄈∧(𝄈FindInBin) Parse
Part₁ In

# Part 2: seeds change to [[seedlow seedrange]]
# In the full data this is 2327072676 values.
Part₂ ← (
  ↯∞_2 Parse
  /◇⊂ ≡(□+⊙⇡°⊟) # this is not feasible for full data
  /↧ ≡⌟𝄈∧(𝄈FindInBin)
)
Part₂ In
┌─╴test
  T ← &fras "2023/input/5t.txt"
  ⍤⤙≍ 35 Part₁ T
  ⍤⤙≍ 46 Part₂ T
└─╴
