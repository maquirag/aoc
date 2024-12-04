# AoC 2024/04 Ceres Search
&fras "2024/input/04.txt"
⊜∘⊸≠@\n
D‼        ← ⍉^0⬚@.≡(⊂▽)^1⇡⟜(▽⊙@.)⊸⧻
Diags     ← ⊂⊂⊂⊃(D‼⇌∘|D‼∘⇌|D‼∘∘|D‼⇌⇌)
Straights ← ⊂⊂⊂⊃(⍉⇌|⍉|⍜⍉⇌|∘)
Part₁     ← /+♭ ≡⌕¤"XMAS" ⊂⊃Diags Straights
FlatX     ← ≡(⊏0_2_4_6_8♭) ↯∞_3_3◫3_3
GoodX     ← "MSAMS"_"MMASS"_"SSAMM"_"SMASM"
Part₂     ← /+♭ ⊞≍ GoodX FlatX
⊃Part₁Part₂
