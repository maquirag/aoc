# AoC 2025/08 Playground
In    ← &fras "2025/input/08.txt"
Parse ← ↯∞_3 ⊜⋕¬⊸∊",\n"
SLD   ← ⍜°√/+/-
NC    ← ⊂⋅⋅⊙□ # create new circuit
AC ← (
  ⊃(⊢⊚⋅⊙∘    # determine the circuit
  | ⊡⊢⊚¬⊙⋅⋅∘ # pick missing element
  )
  ⍜(°□⊡|⊂) # connect
)          # add to circuit
MC ← (
  ⊸/≠⊚◌          # compare column indices
  ⨬(⋅⊙◌          # same indices, do nothing
  | °⊟           # one row at a time
    ⊙(⊙◇⊂⍜↻⊃↘₁⊢) # last row
    ⊙◇⊂⍜↻⊃↘₁⊢    # first row
    ⊂⊙(□◴)       # combine
  )
) # merge circuits
Combine ← (
  ⤚⊸⊞⍚⌕         # search needle in haystack
  ⊃(/+⍉↯2_∞/◇⊂♭ # row find
  | ≡◇/+/+      # column find
  )
  ⧻⊸⊚ # evaluate row count
  ⨬(NC|AC|MC)
)
Part₁ ← (
  ⊏⍏SLD⊸⍉⧅>2    # sort triplet pairs by distance
  ˜↙ ≡₂°⊥₁₀₀₀₀₀ # convert to single number
  ∧Combine ⊙{}
  /×↙¯3 ⍆♭≡◇△
)
Part₂ ← (
  ⊏⍏SLD⊸⍉⧅>2 ⟜⧻
  ⊙{} ≡₂°⊥₁₀₀₀₀₀
  ⍢(⊃(↻1|Combine⊢)|>⍣⊢0♭⋅≡◇△)
  /×≡⊢ ⊥₁₀₀₀₀₀ ⊣⊙⋅◌
)
⊂⊃Part₁Part₂ Parse In 1000
┌─╴test
  T ← &fras "2025/input/08t.txt"
  ⍤⤙≍ 40 Part₁ Parse T 10
  ⍤⤙≍ 25272 Part₂ Parse T
└─╴
