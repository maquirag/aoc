# AoC 2024/06 Guard Gallivant
# Experimental!
&fras "2024/input/06.txt"
⊃(△|⊚=@#|𝄈⊂¯1_0⊚=@^) ⊜∘⊸≠@\n
L     ←                    # lab size [limx limy]
B     ←                    # blocking coords [[x y]]
G     ←                    # Guard state [[x y] [dx dy]]
Turn  ← memo(⍜⊣(⊡⊃𝄈⊗↻₁A₂)) # Guard turn right
InLab ← memo(/↧↧⊃(≥0|<L)⊢) # Guard is within lab
Block ← ◡(𝄐𝄈∊/+)           # Guard had obstacle ahead
Move  ← memo(⊟⊃/+⊣)        # move Guard
# Track each position of the guard through obstacles.
# Macro arg is the loop condition.
Route! ← ⊙⊙◌⍢(⨬(Move|Turn)Block⟜⊂|^0)⟜(▽0¤)
Part₁  ← ⧻◴≡⊢ ◌Route!InLab G B
# Infinite loop obstruction must be in the guard path.
# Add each step to list of obstacles and simulate.
Part₂ ← (
  ◴≡⊢◌Route!InLab G B
  /+ wait≡pool(𝄈∊Route!(↧¬⊃𝄈∊InLab)) ¤G ≡⌞⊂ B
)
⍜now($part₁ Part₁)
⍜now($part₂ Part₂)
