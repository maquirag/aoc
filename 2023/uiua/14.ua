# Day 14 - Parabolic Reflector Dish
Files ← &i "files.ua"
  Raw ← Files "Raw"
  Row! ← Files "Row!"
In ← Row!∘ Raw 14

# Part 1
Tilt ← ≡(⍜⊜□ ≡⍜°□(⊏⍖.) ≠@#.) # to left
Ohs ← =@O
Score ← /+ ♭ × ⊃(+1⇡⧻|⇌)
Score Ohs ⍜(⇌⍉)Tilt In
# 110821

# Part 2
Cycle ← (
  ⍜(⇌⍉)Tilt
  Tilt
  ⍜°(⇌⍉)Tilt
  ⍜(⇌⍉⇌⍉)Tilt
)
⊃(∘|□Ohs) In []                    # memo and initial Ohs
⍢(⊃(∘|□Ohs) Cycle ⊙(⊂:))(:⊙(¬∊,,)) # add Ohs until repeated
⊃-∘ ⊃(⊢⊚⌕|⋅⧻|⋅∘) ;                 # offset and span
Score °□ ⊡ +◿⊙(-,1000000000)
# 83516
