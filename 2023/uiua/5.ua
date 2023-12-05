# Day 5 - Fertilizer
# INCOMPLETE
Data ← &i "files.ua" "Raw"
Data "5t"

# split text to blocks
⊜□¬⌕"\n\n".
# seeds from first line
♭∵⊐parse regex "\\d+" ⊔⊢.
Seeds ←
# maps are rotated and sorted by source start
≡(□ ⊏⍏. ≡(↻1) ↯¯1_3 ∵⊐parse regex "\\d+" ⊔) ↘1
Recipes ←

# Part 1
Lookup ← (
  ,,⊙⊔                   # input: n [mapping]
  ⊚ ≡(×⊓≤>⊃(⊙⊢|⊙(/+↙2))) # find in range
  (⋅∘|+⊙(/-⊏0_¯1⊏):⊢)⧻.  # return target or self
)
Fertilize ← (
  ⍥(
    ⊙⊃(⊢|↘1) # take next transformation
    ∵Lookup  # transform each seed
  )7         # repeat fix times
  /↧♭ ⊙;     # minimum
)
Fertilize Seeds Recipes
# 324724204

# Part 2
# This does not work, ranges would be too big
MultiSeeds ← (
  ↯¯1_2 Seeds   # build pairs
  ⊐≡(+⊃(⇡⊢⇌|⊢)) # build ranges
  ⊐/⊂           # merge
)

Fertilize MultiSeeds Recipes
