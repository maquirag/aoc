# AoC 2024/17 Chronospatial Computer
# TODO
# Experimental!
&fras "2024/input/17t.txt"
↯∞_2 ⊃↘↙3 ⊜⋕⊸∊ +@0⇡10
Inst ← # instructions
# Operands: 0-3 = op; 4 = A; 5 = B; 6 = C
Op ← ⨬⊡∘⊃<◿4
# Operators:
DV!   ← ⍜^0◌:⌊÷𝄈ⁿ2⊸⊃Op⋅⊢
BX!   ← ⍜⊡₁◌⤙(⍜(⋯|⌵/-)⊟⊃(^0|⋅⊡₁))
Xor   ← ⍜(⋯|⌵/-)⊟
Adv   ← DV!⊢           # 0 adv = A / 2^op -> trunc -> A
Bxl   ← BX!∘           # 1 bxl = XOR B n -> B
Bst   ← ⍜⊡₁◌:◿8⊸Op     # 2 bst = op mod 8 -> B
Jnz   ← ⨬(◌|⤚⋅⊙◌-₁)±⊢, # 3 jnz = if A==0 then noop else jump n
Bxc   ← BX!⋅⊣          # 4 bxc = XOR B C -> B
Out   ← &pf$"_,"◿8⊸Op  # 5 out = op mod 8 -> out
Bdv   ← DV!⊡₁          # 6 bdv = A / 2^op -> trunc -> B
Cdv   ← DV!⊣           # 7 cdv = A / 2^op -> trunc -> C
Proc  ← ⨬(Adv|Bxl|Bst|Jnz|Bxc|Out|Bdv|Cdv)
Part₁ ← ◌◌&p""⍢(⊙+₁ Proc °⊟𝄈⊡Inst,|<⧻Inst,) ⊙0
Part₁
