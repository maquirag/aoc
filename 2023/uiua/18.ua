# Day 18 - Lavaduct Lagoon
Data ← &i "files.ua"
  Raw ← Data "Raw"
  Row! ← Data "Row!"
°[⊙⊙∘] ⍉ Row!(♭regex "\\w+") Raw 18
∵(⊢°□)
Codes ←
∵⋕
Sides ←
∵°□
Colors ←

# Part 1
MapDir ← (0_1|1_0|0_¯1|¯1_0) ⊗:
Points ← \+ × MapDir "RDLU" Codes Sides
Perimeter ← /+ Sides
# https://en.wikipedia.org/wiki/Shoelace_formula
Shoelace ← ÷2⌵/+ -∩/× ⊃(⍜(⊢|↻1)|⍜(⊢⇌|↻1)) ⍉
+ +1÷2/+Sides Shoelace Points # Area
# 72821

# Part 2
HexToNum ← /+× ⁿ:16⇌⇡ ⊃⧻∘ -(@0|@W)>@9.
≡(⊃(HexToNum ↘¯1|⊢⇌)) Colors
NewSides ←
NewCodes ←
NewPoints ← \+ × MapDir "0123" NewCodes NewSides
+ +1÷2/+NewSides Shoelace NewPoints # Area
# 127844509405501
