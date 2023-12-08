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
LastZ ← ¬≍"Z"⊝⊢⇌⍉
Follow!LastZ ▽≡(=@A⊢⇌).S D 0
# bad performance :(
