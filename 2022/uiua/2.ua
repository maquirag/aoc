# Day 2 - Rock Paper Scissors
Data ← &i "util.ua" "Lines"
Data 2
In ← # input

# Part 1
Moves ← [⊃(⊗:"ABC"⊢)(⊗:"XYZ"⊢⇌)] # [@A|@B|@C @X|@Y|@Z]
Wins ← ≡↻1_0_¯1¤⇡3               # win matrix Lose|Draw|Win
Match ← |1 ⊡: Wins               # [EnemyMove MyMove]
Points ← ⊞+ 1_2_3 0_3_6          # (Rock|Paper|Scissors) (Lose|Draw|Win)
Score ← |2 ⊡: Points ⊟           # Move Result
/+ ≡(Score ⊃(⊢⇌)Match Moves) In
# 12855

# Part 2
MyMove ← |1 ⊗⊢⇌: ⊡⊢, Wins # [EnemyMove ExpectedResult]
/+ ≡(Score ⊃(⊢⇌)Match [⊃⊢MyMove] Moves) In
# 13726
