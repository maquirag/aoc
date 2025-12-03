# AoC 2025/02 Gift Shop
In      ← &fras "2025/input/02.txt"
Parse   ← ↯∞_2⊜⋕¬⊸∊"-,\n"
DeRange ← ▽⊸>₉ /◇⊂ ⍚⍜-⇡ ⊙+₁ °⊟⍉
NoD     ← ⌈°ₑ₁₀+₁ # number of digits
Part₁   ← /+ ×⊸≡(/≍↯2_∞⊥₁₀) ▽¬◿2 ⊸NoD
Divisor ← comptime(map⟜⍚≡(▽=0⤚◿↘₂⇡⊸+₁)⇡12)
Invalid ← (
  ⊸⧻⊥₁₀           # convert to digits
  get⊙Divisor     # possible repeating shapes
  /↥◇≡⌟(/×⧈≍↯⊂⊙∞) # reorganize, match pairs 
)
Part₂ ← /+ ×⊸≡Invalid
# ⊂⊃Part₁Part₂ DeRange Parse In
┌─╴test
  T ← &fras "2025/input/02t.txt"
  ⍤⤙≍ 1227775554 Part₁ DeRange Parse T
  ⍤⤙≍ 4174379265 Part₂ DeRange Parse T
└─╴
