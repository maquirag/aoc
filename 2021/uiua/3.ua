# AoC 2021/03 Binary Diagnostic
In      ← &fras "2021/input/3.txt"
Parse   ← ⊜∵⋕⊸≠@\n
Part₁   ← ×∩(°⋯⇌) ⊸¬ ⁅÷⊃⧻/+ Parse
Filter! ← ⊢∧(▽=⊡^0⍏°▽⊸⍆ ⊸≡⊡) ⇡⧻⊸⊢
Part₂   ← ×∩(°⋯⇌) ⊃Filter!⊢Filter!⊣ Parse
⊂⊃Part₁Part₂ In
┌─╴test
  T ← &fras "2021/input/3t.txt"
  ⍤⤙≍ 198 Part₁ T
  ⍤⤙≍ 230 Part₂ T
└─╴
