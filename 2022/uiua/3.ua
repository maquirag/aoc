# Day 3 - Rucksack Reorganization
Data ← &i "util.ua" "Lines"
Data 3
In ← # input

# Part 1
Misplaced ← ⊡⊢♭⊚ ⊞= ⊃↙↘ ÷2⧻..°□ # Find common in two halves
Score ← -(@&|@`)>@Z.            # calculate value of uppercase | lowercase
/+≡(Score Misplaced) In
# 7863

# Part 2
Intersect ← |2 ⊏⊢⍉⊚ ⊞= ,∩⊝ # common elements of two
/+♭ ⊐≡(Score /Intersect) ↯¯1_3 In
# 2488
