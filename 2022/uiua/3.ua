# Day 3
Data ← &i "lib/files.ua" "Lines"
Data 3

.                               # Part 1
Misplaced ← ⊡⊢♭⊚ ⊞= ⊃↙↘ ÷2⧻..°□ # Find common in two halves
Score ← -(@&|@`)>@Z.            # calculate value of uppercase | lowercase

/+≡(Score Misplaced)

:                          # Part 2
Intersect ← |2 ⊏⊢⍉⊚ ⊞= ,∩⊝ # common elements of two

/+♭ ⊐≡(Score /Intersect) ↯¯1_3
