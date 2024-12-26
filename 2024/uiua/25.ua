# AoC 2024/25 Code Chronicle
# Experimental!
&fras "2024/input/25.txt"
In    ←                 # input
Par   ← =@#↯∞_7_5▽⊸≠@\n # parse
SKL   ← ∩⌟▽⊸¬⊸≡(=5/+⊢)  # sort out Keys Locks
Fit   ← ≡(/×♭)≤1 ♭₃⊞+   # combine keys and locks
Solve ← /+ Fit SKL Par
Solve In
