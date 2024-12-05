# AoC 2024/05 Print Queue
&fras "2024/input/05.txt"
°$"_\n\n_"
↯∞_2⊜⋕¬⊸∈"|\n"
Ord ←
⊜(□⊜⋕⊸≠@,)⊸≠@\n
Seq ←

Pairs     ← ▽⊃(♭⊞>.⇡⧻|♭₂⊞⊟.)
ValidPair ← ¬∈Ord⇌
ValidSeq  ← /×≡ValidPair◇Pairs
Middle    ← ⊡⌊÷2⧻.
Part₁     ← /+▽≡⊃ValidSeq◇Middle Seq

FixPair ← ⨬(⟜⍜(↙₂↘|⇌)|∘)ValidPair↙₂↘,,
FixStep ← ◌⍢(+₁FixPair|>,-₁⧻,) 0
FixSeq  ← ⍢(FixStep|¬ValidSeq)
Part₂   ← /+≡(⨬(Middle◇FixSeq|0)⊸ValidSeq) Seq

⊃Part₁Part₂
