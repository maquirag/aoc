# AoC 2024/14 Restroom Redoubt
&fras "2024/input/14.txt"
⊜⋕⊸∈⊂@-+@0⇡10   # get numbers
⊃↙↘2⍉↯∞_4       # rotate puzzle and organize data
P     ←         # position
V     ←         # velocity
F     ← 11_7    # field size for test
F     ← 101_103 # field size for real data
Sim   ← ◿F+P×V
Map   ← ⬚0↙F°⊚⍉
PM    ← ×≡⊏/⊂⇡2_2 ∩¤ ¯1_1      # plus minus
Score ← /× ≡(/+♭↙) PM⌊÷2F ¤Map # safety factor
Part₁ ← Score Sim 100
Part₂ ← ⊗/↧.≡(Score Sim) ⇡/×F
$position P
$velocity V
$fieldsize F
⊂⊃Part₁Part₂
# create the image
# &fwa "2024/uiua/14egg.gif" img "gif" ▽⟜≡▽3 ⍉⇌Map Sim Part₂
