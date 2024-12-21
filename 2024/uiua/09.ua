# AoC 2024/09 Disk Defragmenter
# Experimental!
&fras "2024/input/09.txt"
In       ←
Disk     ← ▽: ⍜▽⋅¯1 ⊃◿÷2 °⊏ -@0 # ¯1 is empty
Compress ← ↙: ⍜⊏◌ ⊃(⊚<₀|∘|⊃⇌⧻▽⊸≥₀)
Checksum ← /+×°⊏ +⊸=¯1
Part₁    ← Checksum Compress Disk

Replace ← (
  ⤚⊸⌕                        # search block
  ◡(=1⦷⊃(▽⊙¯1⧻|↙⊢)⊚)         # first empty block to the left
  ⨬(⋅⋅⊙◌|⍜⬚0▽◌⊙(⍜⬚0▽⋅¯1))⊸/↥ # swap when place is available
)
Defrag ← ∧Replace ⇌+1⇡⊸/↥
Part₂  ← Checksum Defrag Disk

⊂⊃Part₁Part₂ In
