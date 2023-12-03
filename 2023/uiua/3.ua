# Day 2
Files ← &i "files.ua"
  Data ← Files "Lines"
Data 3

. # Part 1

n ← +@0⇡10 # all digit characters

# detect the numbers, all are max 3 digits
# ⊐≡⊜parse ∊:n .
# /× ⊐≡/× <1000
# all chars in data: #$%&*+-./0123456789=@
# ⊏⍏. ⊝♭

Framed ← (
  ⊂⊂,: ▽:@.⧻⊢.     # top bottom
  ⍜⍉(⊂⊂,: ▽:@.⧻⊢.) # sides
)
# middle line begins with nondigit + digit
Windowed ← ↯⊃(⊂¯1)◫
Nums ← ▽≡(≍0_1 ∊:n ↙2⊡1).
# drop some columns if number is short
Resized ← ≡↘ ¯(2|(1|0)∊:n⊡1_3)∊:n⊡1_2 ..
HasSymbols ← ▽≡(/↥¬⊐∊:⊂@.n♭).
ParseMiddle ← parse↘¯1↘1⊡1
First ← (
  Framed
  Windowed 3_5
  Nums
  ⊐≡Resized
  HasSymbols
  ⊐≡ParseMiddle
)
/+ First
# 520019

: # Part 2
Gears ← ▽≡(=@*⊡1_3).
HasTwoGears ← (
  ▽≡(
    ∊:n ≡(↘¯2↘2)     # digits in the middle
    ≡((/↥|2)≍1_0_1.) # count distinct groups
    =2/+             # must be exactly two
  ).
)
Ratio ← (
  ∊:n.                # mark digits
  ≡(⍜(↘4⇌)\↧ ⍜(↘4)\↧) # unmark the unconnected 
  ⊐≡⊜parse            # extract numbers
  /×⊐≡/×              # multiply all
)

Second ← (
  Framed Framed Framed # because gear might be on the edge
  Windowed 3_7
  Gears
  HasTwoGears
  ≡Ratio
)
/+ Second
# 75519888
