# AoC 2023/01 Trebuchet?!
In      ← &fras "2023/input/1.txt"
Parse!  ← ⊜^0⊸≠@\n
Digits  ← ∵⍣⋕0
Combine ← ⋕$"__"⊃⊢⊣▽⊸>₀
Part₁   ← /+Parse!(Combine Digits)
Numbers ← {"" "one" "two" "three" "four" "five" "six" "seven" "eight" "nine"}
Words   ← /+ ×⇡10 ≡◇⌕Numbers¤
Part₂   ← /+Parse!(Combine +⊃Words Digits)
⊂⊃Part₁Part₂ In
┌─╴test
  T₁ ← &fras "2023/input/1t.txt"
  T₂ ← &fras "2023/input/1t2.txt"
  ⍤⤙≍ 142 Part₁ T₁
  ⍤⤙≍ 281 Part₂ T₂
└─╴
