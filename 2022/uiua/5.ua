# FIXME
# AoC 2022/05 Supply Stacks
# Experimental!
In ← &fras "2022/input/5.txt"
Parse ← (
  °$"_\n\n_"
  ⊓(≡(□▽⊸≠@\s) ▽=1◿4⇡⊸⧻⍉↘¯1 ⊜∘⊸≠@\n # boxed letters
  | ⊜(⊟₃∩₃⋕°$"move _ from _ to _")⊸≠@\n)
  ⍜(↘1⍉|-1) : # normalize stack indices
)             # format input
Move! ← (
  ◠(⊟ ⍚⊙⊂ ⊙^ ⍚⊃↘↙ ⊙°⊟ ⊙⊏ °⊂) # select and update boxes
  ⍜⊏◌ ↘1                     # put them back
)
Part₁ ← ≡◇⊢ ∧Move!⇌ Parse
Part₂ ← ≡◇⊢ ∧Move!∘ Parse
⊟⊃Part₁Part₂ In
┌─╴test
  T ← &fras "2022/input/5t.txt"
  ⍤⤙≍ "CMZ" Part₁ T
  ⍤⤙≍ "MCD" Part₂ T
└─╴
