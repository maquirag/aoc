# Day 2
Files ← &i "files.ua"
  Data ← Files "Lines"
Data "2"

. # Part 1
MinCubes ← (
  ⊐≡(
    regex "(\\d+) (r|g|b)"
    ⊐≡(⍜⊢⋕ ↘1)
    ≡(×⌕:"rgb" ⊃(°□⊢⇌)(°□⊢))
    ≡/↥⍉
  )
)
/+ +1 ⊚ ≡(/×≤12_13_14) MinCubes
# 2348

: # Part 2
/+ ≡/× MinCubes
# 76008
