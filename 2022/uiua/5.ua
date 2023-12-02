# Day 5
Data ← &i "lib/files.ua" "Lines"
Data "5t"                         # read file
⊜□≠1♭⊐≡(⊗"1").                    # separate top and bottom part
¤⊐≡(▽≠@ .) ⍉⊐≡(≡(⊡1) ⬚@ ↯¯1_4) ⊢. # slots
⊐≡(∵parse regex "\\d+") ⊡1 :      # moves
≡(∘)
