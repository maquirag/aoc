# AoC 2023/06 Camel Cards
In    ← &fras "2023/input/7.txt"
Cards ← "AKQJT98765432"
Types ← {[5][4 1][3 2][3 1 1][2 2 1][2 1 1 1][1 1 1 1 1]}
Type  ← ⊗:Types□⇌⍆⊕⧻⊸⊛
Parse ← ⊓∵°□(/◇⊂⋕) °⊂⍉ ↯∞_2 ⊜□¬⊸∊"\s\n" # [hands] [bids]
Solve‼ ← (
  ≡(⊂⊃(^0|⊗:^1)) # strength [type|cardranks...]
  /+×+1⇡⊸⧻⊏⍖     # sort the bets by hand strength
)
Part₁ ← Solve‼Type Cards Parse

JCards ← "AKQT98765432J" # cards with Joker
JType ← (
  ⊃(/+=@J|⇌⍆⊕⧻⊸⊛)        # get number of jokers and groups
  ⨬(◌|⍜⊢+⍜↻↘₁⤚⊸⊗)×⊸⊃>₀<₅ # add jokers to largest group
  ⊗:Types□               # lookup new type
)
Part₂ ← Solve‼JType JCards Parse
⊂⊃Part₁Part₂ In
┌─╴test
  T ← &fras "2023/input/7t.txt"
  ⍤⤙≍ 6440 Part₁ T
  ⍤⤙≍ 5905 Part₂ T
└─╴
