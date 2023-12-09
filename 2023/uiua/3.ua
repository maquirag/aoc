# Day 3 - Gear Ratios
d ← +@0⇡10 # all digit characters

Raw ← &i "files.ua" "Raw"
Raw 3
⊃(⊜∘≠@\n.|⊂∞⊜⋕∊:d.)
I ←                           # full input matrix
n ←                           # all numbers
m ← × ⍜♭(\+ ≡/> ◫2 ⊂0). ∊:d I # marked numbers
PartOne ← (
  ∩(↯¯1_3_3 ◫3_3) I m # windows of 3x3
  ▽≡(¬∊: ⊂@.d ⊡1_1)   # filter where symbol is middle
  ▽>0.⊝♭              # dedupe and remove 0
  /+ ⊏:n              # map actual numbers, and add
)
PartOne
# 520019

PartTwo ← (
  ∩(↯¯1_3_3 ◫3_3) I m # windows of 3x3
  ≡(=@*⊡1_1)          # find gears
  ⊙(≡(□▽≠0.⊝♭))       # unique numbers in window
  ⊙⊃(≡(=2⧻)|∘)        # windows with 2 distinct numbers
  ▽×                  # filter both gear + 2 num
  /+ ⊐≡(/×⊏:n)        # map numbers and multiply
)
PartTwo
# 75519888
