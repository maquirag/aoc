# AoC 2023/03 Gear Ratios
In    ← &fras "2023/input/3.txt"
D     ← +@0⇡10           # digits
P     ← ⊃(⊜∘⊸≠@\n|⊜⋕⊸∊D) # out: [[map]] [numbers]
MaskN ← ⍜♭(×\+⧈₂/>⊂0.∊D) # mask all numbers
AdjN! ← (
  ^0 ⟜MaskN P # mark symbols and numbers
  ∩(♭₃⧈∘3_3)  # create groups of 3
  ▽≡(⊡1_1)    # filter where symbol is in middle
)             # choose groups next to given symbol
Part₁ ← /+ ⊏-1◴▽⊸>0♭ AdjN!(¬∊⊂@.D)
Part₂ ← (
  AdjN!(=@*)
  ▽⊸(=3≡(⧻◴))≡♭      # gears only
  /+≡/× ⊏ -1≡(◴▽⊸>₀) # lookup number pairs
)
⊂⊃Part₁Part₂ In
┌─╴test
  T ← &fras "2023/input/3t.txt"
  ⍤⤙≍ 4361 Part₁ T
  ⍤⤙≍ 467835 Part₂ T
└─╴
