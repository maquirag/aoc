# AoC 2024/14 Restroom Redoubt
&fras "2024/input/14.txt"
⊜⋕⊸∊⊂@-+@0⇡10                    # get numbers
⊃↙↘2⍉↯∞_4                        # rotate and organize
P      ←                         # position
V      ←                         # velocity
F      ← 11_7                    # field size (TEST)
F      ← 101_103                 # field size (REAL)
Sim    ← ◿F+P×V                  # simulate 
Map    ← ⬚0↙F°⊚⍉                 # convert to 2d map
Safety ← /×♭ ⧈(/+♭) ⊟⟜+₁⌊÷2F Map # safety factor
Part₁  ← Safety Sim 100
Part₂  ← ⊗/↧.≡(Safety Sim) ⇡/×F
$Position P
$Velocity V
$FieldSize F
⊂⊃Part₁Part₂
&ims ⍉Map Sim⊸⊣ # show image in console
# create the image
# &fwa "2024/uiua/14egg.gif" img "gif" ▽⟜≡▽3 ⍉Map Sim Part₂
