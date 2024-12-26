# AoC 2023/04 Scratchcards
In ← &fras "2023/input/4.txt"
P ← (
  ⊜(↘1⊜□¬⊸∊":|")⊸≠@\n # split lines in 3 parts
  ∩∵◇(⊜⋕⊸≠@\s)°⊟⍉     # out: [[winners]] [[tips]]
)                     # parse
Match ← ≡(/+♭⊞=)
Part₁ ← /+ⁿ⊙2-1 ▽⊸>₀ Match P
Part₂ ← (
  Match P   # scores in each game
  ⟜(▽⊙1⧻)⊙0 # fold setup: [points] [cards] total
  ◌∧(
    ⊙⊃(⊢|↘1|+⊢)  # increment total
    ⬚0+↙↧◡∩⧻×▽⊙1 # deal more cards (respect end of deck)
  )
)
⊂⊃Part₁Part₂ In
┌─╴test
  T ← &fras "2023/input/4t.txt"
  ⍤⤙≍ 13 Part₁ T
  ⍤⤙≍ 30 Part₂ T
└─╴
