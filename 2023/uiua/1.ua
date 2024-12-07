# AoC 2023/01 Trebuchet?!
&fras "2023/input/1.txt"
Parse!  ← ⊜^0⊸≠@\n
Digits  ← ∵⍣⋕0
Combine ← ⋕$"__"⊃⊢⊣▽⊸>₀
Part₁   ← /+Parse!(Combine Digits)
Numbers ← {"" "one" "two" "three" "four" "five" "six" "seven" "eight" "nine"}
Words   ← /+ ×⇡10 ≡◇⌕Numbers¤
Part₂   ← /+Parse!(Combine +⊃Words Digits)
⊃Part₁Part₂
