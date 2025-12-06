# AoC 2025/06 Trash Compactor
In ← &fras "2025/input/06.txt"
Part₁ ← (
  ⊜(⊜□⊸≠@\s)⊸≠@\n # box without whitespace
  ⍜⇌°⊂            # take out operands
  ⊓(=@+/◇⊂|⍉⋕)    # add means 1, multiply means 0
  /+ ≡⨬/×/+       # perform calculations
)
Part₂ ← (
  ⊜∘⊸≠@\n      # split lines only
  ⍜⇌°⊂         # take out operands
  ⊃(=@+▽⊸≠@\s  # add means 1, multiply means 0
  | ⊓(⬚1↻1=@\s # mark column separation
    | ⍉⇌-@0    # convert to digits
    )
    ⊜(□≡(°⊥₁₀▽⊸≥0)) # convert valid digits to number
  )
  /+ ≡◇⨬/×/+ # perform calculations
)
⊂⊃Part₁Part₂ In
┌─╴test
  T ← &fras "2025/input/06t.txt"
  ⍤⤙≍ 4277556 Part₁ T
  ⍤⤙≍ 3263827 Part₂ T
└─╴
