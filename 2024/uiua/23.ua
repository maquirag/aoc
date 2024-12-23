# AoC 2024/23 LAN Party
# Experimental!
&fras "2024/input/23.txt"
↯∞_2_2⊜∘¬⊸∊"-\n"
In ←           # input
C  ← ↯∞_4⍆⊂⊸≡⇌ # build reverse connections
Link ← (
  ⟜(▽≡⌞≍⊓◇↙₋₂⊸≡↙₂)
  ≡⍜°□⊂ ⟜(▽¬⊸∊◇(↯∞_2)) ⊙≡↘₂
)
Seek    ← path(Link|×◇⊃(𝄈∊⬚@.↙4↻¯2|=6⧻))
Collect ← □≡(°□⊣)
Unique  ← ◴≡(⍜(↯∞_2|⍆))/◇⊂
Part₁ ← (
  ◴≡(□↙₂)⊸▽=@t⊸≡⊢ C # nodes beginning with t
  ⧻ Unique ≡⌟(Collect Seek)
)
Part₁ In
