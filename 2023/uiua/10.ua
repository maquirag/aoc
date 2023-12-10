# Day 10 - Pipe Maze
Data ← &i "files.ua" "Raw"
Pipes ← ⊜∘≠@\n. Data 10

# rotate the map and block the reverse for next move
⬇️ ← @u ↻1_0
⬆️ ← @d ↻¯1_0
➡️ ← @l ↻0_1
⬅️ ← @r ↻0_¯1
Move ← (
  ⊃((""|@l)∊:"J-7"|(""|@u)∊:"J|L"|(""|@r)∊:"L-F"|(""|@d)∊:"7|F")
  ▽⊃≠∘ ⊂⊂⊂
  (⬇️|⬆️|➡️|⬅️)⊢⊗:"durl"
  ⊙⊙(+1)
  ⊡1_1,
) # Input: currentpipe lastmove
Pipes 1
↻-1_1♭⊚⌕@S. # S is now in 1_1
⬆️          # initial direction
# ⬇️        # TEST DATA
⊡1_1,
⍢(Move)(≠@S)
÷2;;;
# 7030

# Part 2 missing
