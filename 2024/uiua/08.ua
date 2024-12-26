# AoC 2024/08 Resonant Collinearity
# Experimental!
&fras "2024/input/08.txt"
⊜∘⊸≠@\n               # parse
⊃(▽∩♭|⊚|⧻)⊸≠@.        # extract node coords
map⊓⊕◴⊕□,⟜⊛           # map freq -> boxed coords
A       ←             # antenna coords
M       ←             # max size
Anti    ← ⊟⊓-+⟜:⊃/-°⊟ # antinodes of a pair
InRange ← /×⊂⊃(≥0|<M)
Group! ← (
  ⧅<2        # build coord pairs
  /◇⊂≡^0     # determine antinodes
  ▽⊸≡InRange # filter valid
)
Part₁ ← ⧻◴/◇⊂≡⍚Group!Anti
Anti₂ ← (
  ⊙(¯,)⊃°⊟/-               # arrange stack
  ⊂∩(⊙◌⍢(⊂+⊢,,|InRange⊢)¤) # extend line
)
Part₂ ← ⧻◴/◇⊂≡⍚Group!(□Anti₂)
⊂⊃Part₁Part₂ A
