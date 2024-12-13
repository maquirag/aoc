# AoC 2024/12 Garden Groups
&fras "2024/input/12.txt"
Read  ← -@@ ⊜∘⊸≠@\n
DP    ← ⧈₂/≠ ⊂∞          # differs from previous
Rot!  ← /+ ≡⍜⍥(⇌⍉)^0 ⇡4¤ # apply at every rotation
Part₁ ← /+× ⊜⊃⧻/+ ⟜Rot!DP Read
ETLN  ← =⊸⬚∞↻¯1_¯1 # equals top left neighbor
Part₂ ← /+× ⊜⊃⧻/+ ⟜Rot!(↧↥⊃(ETLN|≡DP|DP)) Read
⊂⊃Part₁Part₂
