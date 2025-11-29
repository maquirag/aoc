# AoC 2021/07 The Treachery of Whales
In    ← &fras "2021/input/7.txt"
Parse ← ⊜⋕¬⊸∊",\n"
Cost! ← /↧ ≡/+ ^ ⌵⊞- ⇡⊸/↥
Part₁ ← Cost!∘ Parse
Part₂ ← Cost!(˜⊏ \+⇡ +1/↥⊸♭) Parse
⊂⊃Part₁Part₂ In
┌─╴test
  T ← &fras "2021/input/7t.txt"
  ⍤⤙≍ 37 Part₁ T
  ⍤⤙≍ 168 Part₂ T
└─╴
