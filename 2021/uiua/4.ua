# AoC 2021/04 Giant Squid
In     ← &fras "2021/input/4.txt"
Parse  ← ⊙(↯∞_5_5) ∩(⊜⋕¬⊸∊"\n, ") °$"_\n\n_"
Winner ← /↥=5⊂⊃/+≡/+
Bingo! ← (
  # in: [numbers] [[[boards]]]
  \+ ◡⊞=           # hits in time sequence △[number board row col]
  ⤚⊡⊸(^0 ≡₂Winner) # select winner △[number board]
  ⊙(:∩⊡⊙:°⊟)       # out: [[winner hits]] [[winner board]] number
)
Part₁ ← ×/+♭×¬ Bingo!(⊢⊚) Parse           # first winner
Part₂ ← ×/+♭×¬ Bingo!(⊂:⊚⤚=⊸/↥˜⨂1⍉) Parse # last winner
⊂⊃Part₁Part₂ In
┌─╴test
  T ← &fras "2021/input/4t.txt"
  ⍤⤙≍ 4512 Part₁ T
  ⍤⤙≍ 1924 Part₂ T
└─╴
