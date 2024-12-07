# AoC 2024/07 Bridge Repair
&fras "2024/input/07.txt"
Parse! ← ⊜(^0⊜⋕¬⊸∈": ")⊸≠@\n
Eval₁  ← /+= ≡∧⨬+× ⊃(⋯⇡ⁿ:2-₁⧻|¤↘₁|⊢) ⊃↘₁⊢
Comb₃  ← ⍥(♭₂⊞⊂⇡3):⇡3-₁
Eval₂  ← /+= ≡∧⨬(+|×|⋕$"__":) ⊃(Comb₃-₁⧻|¤↘₁|⊢) ⊃↘₁⊢
Part₁  ← /+▽± Parse!⊃Eval₁⊢
Part₂  ← /+▽± Parse!⊃Eval₂⊢
⊃Part₁Part₂
