# AoC 2024/20 Race Condition
# TODO
# Experimental!
&fras "2024/input/20t.txt"
In   ←
P    ← ∩⊢∩⊚⊃(=@S|=@E|≠@#) ⊜∘⊸≠@\n           # start end map
Walk ← ⊢path(▽⤚⊡+⌟A₂⊙⋅∘)≍                   # optimum path
B‼   ← ≡⌟(-₂⌵-∩⌟get⊃(∘|+^1 0_2)) ⊚⌕^0 1_0_1 # bridges
First ← (
  :𝄈map°⊏ ⊸Walk P    # path coord to step
  ⍆⊂⊃B‼∘∘ B‼(↯3_1|⇌) # horiz and vert diff
  /+≥100             # count over threshold
)
# First In  # works but not generalized...

MD ← /+⌵- # Manhattan Distance
Cheat! ← (
  ⧅₂> ⇡⧻.        # unique index pairs
  ≡⌟(⊃(MD|∘)°⊟⊏) # manhattan dist and indices
  :∩⌞▽⊸^0        # filter on MD
  ≡(𝄈-/-)
  ▽⊸>0
  ⊃(⧻|⊟°▽⇌⍆) # evaluate
)
Part₁ ← Cheat!(=2) Walk P
Part₂ ← Cheat!(≤20) Walk P
# ⍜(now|Part₁ In) # fail, too slow and wrong...
# ⍜(now|Part₂ In) # fail, too slow and wrong...

# filter on MD
Draw ← (
  ▽⟜≡▽5 ⬚0↥°⊚ ⊙(×0.5) ⊸Walk P In
  &fwa "2024/uiua/20path.gif" img "gif"
) # draw the map to gif
