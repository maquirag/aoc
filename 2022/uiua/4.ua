# Day 4
Util ← &i "util.ua"
  Raw ← Util "Raw"
  Row! ← Util "Row!"
Row!(⊜⋕¬∊:"-,".) Raw 4
In ← # input

# Part 1
SE ← ↯¯1_2 ↻1            # start end compare
C ← ↥⊃(/↧≡/≤|/↧≡/≥) ⍉ SE # full coverage
/+ ≡C In
# 509

# Part 2
I ← ↧⊃(/↥≡/≤|/↥≡/≥) ⍜⊢⇌ SE # intersection
/+ ≡I In
# 870
