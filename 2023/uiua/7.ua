# Day 7 - Camel Cards
Data ← &i "files.ua" "Lines"
Data 7

≡(⍜(⊡1)⋕⊜□≠@ .°□)
Hands ←

Ordering ← "AKQJT98765432"
Str ← ⍜(°□|⊗⊙∘):
Types ← {[5][4 1][3 2][3 1 1][2 2 1][2 1 1 1][1 1 1 1 1]}
Type ← ⊗:Types ⍜(°□|⊏⍖. ⊕⧻⊛.)

Hands                           # Part 1
≡(⊂⊂⊃(Type⊢|Str Ordering ⊢|⊢⇌)) # type + strength + bid
⊏⍖.                             # sort
⊐≡(⊢⇌)                          # take the bets
/+× +1⇡⧻.                       # multiply by rank
# 251927063

Jokering ← "AKQT98765432J"
JokerType ← ⊗:Types ⍜(°□|(⍜⊢+|⊂)=0⧻. ⊏⍖. ⊕⧻⊛. ⊃(▽¬|/+)=@J.)

Hands # Part 2
≡(⊂⊂⊃(JokerType⊢|Str Jokering ⊢|⊢⇌))
⊏⍖.
⊐≡(⊢⇌)
/+× +1⇡⧻.
# 255632664
