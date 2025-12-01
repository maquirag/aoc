# AoC 2025/01 Secret Entrance
In    ← &fras "2025/input/01.txt"
Parse ← ×-1⨂"L_R" ⊜⊃(⊢|⋕↘1)⊸≠@\n
Part₁ ← /+=0 \(◿100+)⊂50 Parse
Part₂ ← /+ ∧⊃(◿₁₀₀+|/+=0◿₁₀₀++⊃>₀⇡)⊙50 Parse
⊂⊃Part₁Part₂ In
┌─╴test
  T ← &fras "2025/input/01t.txt"
  ⍤⤙≍ 3 Part₁ T
  ⍤⤙≍ 6 Part₂ T
└─╴
