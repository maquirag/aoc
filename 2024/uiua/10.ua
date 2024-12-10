# AoC 2024/10 Hoof It
# Experimental!
&fras "2024/input/10.txt"
⊜(-@0)⊸≠@\n
Grid   ←                       # map of heights
Heads  ← ⊚=0                   # starting points of the hiking path
Next   ← ⊂¯.⊞=.⇡2              # adjacent offsets
Hikes  ← ▽=⊙+₁⤚(∩⬚∞⊡)◡(+Next¤) # valid next steps from a spot
Goal   ← =₉⊡                   # top spot is reached
Climb  ← ⊙◌ astarHikes0Goal    # Dijkstra pathfinding
Score  ← ⧻◴≡◇⊣ Climb           # unique end points
Rating ← ⧻ Climb               # number of routes
Part₁  ← /+ ≡Score ⊃Heads¤
Part₂  ← /+ ≡Rating ⊃Heads¤
⊃Part₁Part₂ Grid
