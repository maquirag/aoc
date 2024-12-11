# AoC 2024/11 Plutonian Pebbles
&fras "2024/input/11.txt"
Parse ← ⊜⋕⊸≠@ 
Split ← ⊟⌊⊃÷◿ⁿ:10÷2
Else  ← ⨬(Split|×⋅2024)◿2.⌈ₙ₁₀+₁.
If    ← memo(⨬(Else|⋅1)⊸=₀)
Freq  ← map⊃⋅◴°⊚⊸⊛
SimMap ← (
  °map
  ⍥(⊃(⋅⊂|⊂▽⊙⋅⋅∘)⊸⧻If∩(⊃⊢↘₁↻₋₁))⊸⧻
  map⊃(▽=1◰|⊕/+⊙⋅∘)⊸⊛
)
Part₁ ← /+⍥SimMap25 Freq Parse
Part₂ ← /+⍥SimMap75 Freq Parse
⊂⊃Part₁Part₂
