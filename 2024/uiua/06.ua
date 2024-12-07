# AoC 2024/06 Guard Gallivant
&fras "2024/input/06.txt"
⊜∘⊸≠@\n
Guard ← ⊢⊚⌕@^ # current position of Guard
# obstacle comes next ? coord field
# 0=free, 1=obstacle, 2=out of range
BlockAhead ← ⨬(2◌◌|=@#⊡-1_0)±⊸⊢,,
MoveGuard  ← ⍜(⊡|@^◌)-1_0⟜⍜(⊡|@X◌)
Step       ← ⨬(MoveGuard|⇌⍉◌|◌)BlockAhead⊸Guard
Part₁      ← /+♭∈"^X"⍥Step∞
Part₁

# get guard position
# calc new position 1 row up
#   if obstacle, rotate field left
#   if out of range, stop
#   else mark current pos wth X, mark new pos with ^
# continue until cannot move further

# ⊃Part₁Part₂
