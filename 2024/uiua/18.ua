# AoC 2024/18 RAM Run
# Experimental!
N ← 1024 # number of bytes, test 12, real 1024
M ← 70   # end corner, test 6, real 70
&fras "2024/input/18.txt"
In ←                # input data
P  ← ↯∞_2⊜⋕¬⊸∊"\n," # parse
Move ← (
  +⌟A₂            # adjacent steps
  ▽×∩≡/×⊸⊃(≥0|≤M) # within bounds
  ▽¬⤚𝄈∊⊙⋅∘        # not blocked
)
Sim   ← ⊢pathMove≍ [0 0] [M M]
Part₁ ← -₁⧻Sim ↙N P
Part₂ ← ≡⌟(⧻Sim &p$"_,_"°⊟⊸⊣↙) +1°⊏ P
Part₁ In
Part₂ In # VERY SLOW

Draw ← (
  ⍉°⊚ Sim ↙N P In
  &fwa "2024/uiua/18path.gif" img "gif" ▽⟜≡▽5
)
