# AoC 2024/10 Hoof It
# Experimental!
&fras "2024/input/10t.txt"
In     ←                    # input
Grid   ← ⊜(-@0)⊸≠@\n        # map of heights
Heads  ← ⊚=0                # starting points
Hikes  ← ▽=-1 ⤚∩⌟⬚∞⊡ ⊸≡⌟+A₂ # valid next steps
Solve! ← /+ ≡⌟(^0 pathHikes(=₉⊡)) ⊸Heads Grid
Part₁  ← Solve!(⧻◴≡⊣)
Part₂  ← Solve!⧻
⊂⊃Part₁Part₂ In
