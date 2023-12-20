# Day 9: Rope Bridge
Raw ← &i "util.ua" "Raw"
⊜⊃(⊢|⋕↘2) ≠@\n. Raw "9t2"
∧(⊂: ▽: [(1|i|¯1|¯i)⊗:"RULD"]) ⊙⊙[]
Moves ←

# Part 1
Head ← ⍜⊢+:
Move ← ⊂⊙(↘<2⌵-), ⊃(⊡1|+⊢|∘) : # dir [chain]
# tail moves to the previous head position
# when it gets too far
⧻⊝↘1 ∧Move Moves ▽2[ℂ 0 0]
# 6087

# Part 2 -- incorrect
# first ten segments should be moved separately
# ⧻⊝↘9 ∧Move Moves ▽2[ℂ 0 0]
# TODO
