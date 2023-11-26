# Day 4
Data ← &i "lib/files.ua" "Lines"
Data 4
⊐≡(∵parse regex "\\d+")

.                        # Part 1
FromTo ← +⊃⊢(⇡+1/-)      # range of [Begin..End]
Pairs ← ⊐≡FromTo ↯2_2    # create pair of ranges [⟦R1⟧⟦R2⟧]
Fully ← ↥⊐⊃(/↧/∊)(/↧/∊⇌) # check if either part fully contains the other
/+ ≡(Fully Pairs)

:               # Part 2
Overlap ← /↥⊐/∊ # check if any overlap exists
/+ ≡(Overlap Pairs)
