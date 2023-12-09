# Day 8 - Haunted Wasteland
Data ← &i "files.ua" "Raw"
Data 8

regex "\\w+"
⊃(♭∵°□⊢|↯¯1_3_3∵°□↘1)
D ← # directions
⊃(≡⊢|≡(⊡1)|≡(⊢⇌))
S ← # start
L ← # left
R ← # right
ZZZ ← ¬≍"ZZZ"
Follow! ← ;;⍢(⊙⊙(+1) ⊏ ⊙⊃((L|R)=@R⊢|↻1) ⊗:S)(^1)

# Part 1
Follow!ZZZ "AAA" D 0
# 16897

# Part 2
EndZ ← ≠@Z⊢⇌
GCD ← ;⍢(⊃(-×⌊÷,,)∘)(≠0)
LCM ← ÷⊃GCD×

▽≡(=@A⊢⇌).S # all starting nodes
≡(Follow!EndZ :⊙: D 0)
/LCM
# 16563603485021
