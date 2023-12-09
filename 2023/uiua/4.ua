# Day 4 - Scratchcards
Data ← &i "files.ua" "Lines"
Data 4

. # Part 1
Game ← (
  ¬∊:":|".°□ # split by special char
  ⊜(□♭≡⋕ regex "\\d+")
  ↘1 # discard the game ID
)
Matches ← /+♭⊞⌕ ∩°□⊃⊢(⊢⇌)
Score ← ⌊ⁿ:2-1
/+≡(Score Matches Game)
# 33950

: # Part 2
Copies ← (
  0 :▽:1⧻.
  ⍢(
    ▽⊙1 ⊡,,          # cards won
    ×⊙(⊡,:)⊙⊙,       # copies
    :⊂▽:0+1,         # shift right by game id
    ⊙(⊙+:↙⊙(⬚0↙).⧻,) # resize and add
    +1               # iterate
  )(>⊙⧻)             # all cards processed
  ;;                 # clean stack
)
/+ Copies ≡(Matches Game)
# 14814534
