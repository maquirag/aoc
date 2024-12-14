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
PM    ← ×≡⊏/⊂⇡2_2 ∩¤ ¯1_1 # plus minus variations
Score ← /× ≡(/+♭↙) PM⌊÷2F ¤Map
Part₁ ← Score Sim 100
$position P
$velocity V
$fieldsize F
Density ← /+♭⧈(>2/+♭)2_2 # number of 2x2 clusters with n>2
Part₂ ← (
  wait≡pool(Density Map Sim) ⇡
  ⊃($topvalue ∘|$index ⊗)⊸/↥
)
Part₁
Part₂ 8000 # upper limit
# create the image
&fwa "2024/uiua/14egg.gif" img "gif" ▽⟜≡▽3 ⍉⇌Map Sim ,
