# AoC 2024/22 Monkey Market
# TODO
# Experimental!
⊜⋕⊸≠@\n &fras "2024/input/22t.txt"
In     ←                 # input
InT    ← [1 10 100 2024] # test input
InTT   ← [1 2 3 2024]    # test input
M      ← ⍜(∩⋯|⌵⬚0-)      # mix
P      ← ◿16777216       # prune 
Evolve ← P M⊸×2048 P M ⌊⊸÷32 P M ⊸×64
Part₁  ← /+ ⍥Evolve2000
# Part₁ In

Collect ← ⊙⟜(∩𝄈⊂⊙:⍉⊃⧈₂/-⊣ ◿10)
⟜(↘1¤) ⊂123 InTT
⍥(Evolve⟜𝄈⊂)5     # first 5 numbers
⊙⟜(∩¤⍉⊃⧈₂/-⊣ ◿10) # collect prices and diffs
# it's almost good. But in the map, all the parallel
# buyers information must be stored.
# When a price already exists in the map, it should not be updated.
# ⍜⊡◌ [1_2 2_2] ↯3_3⇡9 [105 106]
⍥(Collect Evolve⟜(↘1𝄈⊂))10
