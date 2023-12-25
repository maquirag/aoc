# Day 5: Hydrothermal Venture
In ← ↯¯1_4 ∵⋕ regex "\\d+" &fras "../input/5.txt"
H ← /=⊏1_3                           # is horizontal
V ← /=⊏0_2                           # is vertical
D ← /×/>⊏⍏.↯2_2                      # is forward diagonal 
HC ← ∵⊂+⊃(⇡+1⌵-|↧)⊃(⊢|⊡2|⊡3)         # horizontal coords
VC ← ∵⊂:+⊃(⇡+1⌵-|↧)⊃(⊡1|⊡3|⊢)        # vertical coords
DC ← ≡⊂∩(+⊃(⇡+1⌵-|↧))⊃(⊢|⊡2|⊡1|⊡3)   # diagonal coords
RDC ← ≡⊂⇌∩(+⊃(⇡+1⌵-|↧))⊃(⊢|⊡2|⊡1|⊡3) # reverse diagonal coords
ToCoords ← (((RDC|DC)D.|VC)V.|HC)H.  # the big switch
Collect ← ∧(⊂ToCoords) ⊙(↯0_2[])     # fold all to coordinates
Overlap ← /+>1°⊚⊛                    # # of overlapping coords
# Part 1
Overlap Collect ▽↥≡⊃(H|V|∘) In
# Part 2
Overlap Collect In
