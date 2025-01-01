# AoC 2021/02 Dive!
In ← &fras "2021/input/2.txt"
# [commands] [values]
Parse ← ∩/◇⊂ °⊟⍉ ⊜({⊓⊢⋕}°$"_ _")⊸≠@\n
D     ← map"dfub"A₂       # directions
Part₁ ← /×/+ ×get⊙D Parse # [pos depth]
Command ← (
  ⨬(⍜⊣+:           # down: aim+
  | ⍜⊣+:¯          # up: aim-
  | ⍜⊡₁+⊃(⍜⊢+|×⊣): # forward: pos+x, dep+ n×aim 
  )⊗:"duf"
)
Part₂ ← /×↙2 ∧Command Parse ⊙0_0_0 # [pos depth aim]
⊂⊃Part₁Part₂ In
┌─╴test
  T ← &fras "2021/input/2t.txt"
  ⍤⤙≍ 150 Part₁ T
  ⍤⤙≍ 900 Part₂ T
└─╴
