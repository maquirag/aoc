# AoC 2024/16 Reindeer Maze
# Experimental!
&fras "2024/input/16.txt"
⊜∘⊸≠@\n
∩⊢∩₃⊚⊃(=@S|=@E|∊".E")
S ←                     # start
E ←                     # finish
M ←                     # maze
D ← [0_1 1_0 0_¯1 ¯1_0] # directions
Step ← (
  ⟜(𝄈▽D×⊃(≡(∊M)+⌟D⊢|¬≡⌟≍D¯⊣)) # possible directions 
  ≡⌞(⨬(⊃1000⍜⊣◌|⊃1⍜⊢+)◡(≍⊣))  # costs and moves
)
Path₁ ← ◌⊢path(Step|≍E⊢) ⊟S 0_1
Path₂ ← ⧻◴≡⊢/◇⊂⊙◌path(Step|≍E⊢) ⊟S 0_1
⊂⊃Path₁Path₂
