# AoC 2025/03 Lobby
In    ← &fras "2025/input/03.txt"
Parse ← ⊜≡⋕⊸≠@\n
# MaximumJoltage ? BatteryCount Bank
Joltage ← (
  ⊙⊙[]         # container to collect the digits
  ⍢(           # loop for fixed number of digits
    -1         # decrement counter
    ⟜⊸(↘¯)     # remove last x, keep full seq
    ⊙(⊢⍖)      # index of highest value
    ⊙⊃(↘+1|⊂⊡) # push digit found, keep rest
  )±           # until no more digits needed
  ◌◌           # discard counter and remaining digits
  °⊥₁₀         # convert to number
)
Part₁ ← /+ ≡Joltage 2
Part₂ ← /+ ≡Joltage 12
⊂⊃Part₁Part₂ Parse In
┌─╴test
  T ← &fras "2025/input/03t.txt"
  ⍤⤙≍ 357 Part₁ Parse T
  ⍤⤙≍ 3121910778619 Part₂ Parse T
└─╴
