# AoC 2024/23 LAN Party
# TODO
# Experimental!
&fras "2024/input/23t.txt"
↯∞_2_2⊜∘¬⊸∊"-\n"
In    ←           # input
Nodes ← ⍆◴↯∞_2    # unique nodes
Conn  ← ↯∞_4⍆⊂⊸≡⇌ # bidirectional connections
Link ← (
  ⟜(▽≡⌞≍⊓◇↙₋₂⊸≡↙₂)
  ≡⍜°□⊂ ⟜(▽¬⊸∊◇(↯∞_2)) ⊙≡↘₂
)
Seek    ← path(Link|×◇⊃(𝄈∊⬚@.↙4↻¯2|=6⧻))
Collect ← □≡(°□⊣)
Unique  ← ◴≡(⍜(↯∞_2|⍆))/◇⊂
Part₁ ← (
  ◴≡(□↙₂)⊸▽=@t⊸≡⊢ Conn # nodes beginning with t
  ⧻ Unique ≡⌟(Collect Seek)
)
Part₁ In # - slow
# maybe use a map that links a node to all its neighbours
