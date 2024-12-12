# AoC 2024/12 Garden Groups
&fras "2024/input/12.txt"
Read  ← -@@ ⊜∘⊸≠@\n
RDP   ← ⧈/≠ 2 ⊂∞             # row differs from previous
NEN   ← /+ ≡⍜(⍥(⇌⍉)|RDP) ⇡4¤ # not equal neighbours
Part₁ ← /+× ⊜⊃⧻/+ ⟜NEN Read
Part₁
