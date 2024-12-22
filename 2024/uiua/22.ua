# AoC 2024/22 Monkey Market
# Experimental!
⊜⋕⊸≠@\n &fras "2024/input/22.txt"
In     ←                 # input
InT    ← [1 10 100 2024] # test input
M      ← ⍜(∩⋯|⌵⬚0-)      # mix
P      ← ◿16777216       # prune 
Evolve ← P M⊸×2048 P M ⌊⊸÷32 P M ⊸×64
Part₁  ← /+ ⍥Evolve2000
Part₁ In
