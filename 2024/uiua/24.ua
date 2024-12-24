# AoC 2024/24 Crossed Wires
# Experimental!
# AND ↧  OR ↥  XOR ≠
&fras "2024/input/24.txt"
°$"_\n\n_"
map⊜⊃(↙3|⋕⊡5)⊸≠@\n # initial values
W ←                # wires
↯∞_4⊜□¬⊸∊"\n ->"   # parse gate formula
⍜⍉(°⊂⊏3_1_0_2)     # organize for hashmap
⊃(map|⍆▽=@z⊸≡◇⊢)   # extract end nodes
G ←                # gates
Z ←                # end nodes (zed)
# $zed Z $gates G $wires W
Go ← |1 memo(
  ⨬(𝄈get G
    ⊃(𝄈⊗{"AND" "OR" "XOR"}⊢|≡Go ↘1)
    ⨬(/↧|/↥|/≠)
  | 𝄈get W
  )⊸𝄈has W
) # evaluate a single node recursively
Part₁ ← °⋯≡Go Z
Part₁
