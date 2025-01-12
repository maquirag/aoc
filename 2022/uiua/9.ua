# AoC 2022/09 Rope Bridge
In    ← &fras "2022/input/9.txt"
Parse ← ⊜□⊸≠@\n
Moves ← /◇⊂ ≡⍚(▽⊃(⋕↘2|⨬(1|i|¯1|¯i)⊗:"RDLU"⊢)) # ℂ dirs
Rope  ← ▽: ℂ0 0
# [ℂ ℂ] When too far, move the second one closer.
Follow ← ⨬(⍜⊣+⟜(⍜°ℂ∩±/-⇌)|∘) ⊸(<2⌵/-)
Snake‼ ← ⧻◌ ∧(⟜(◴⊂⊣) ^0 ⍜⊢+:) :Rope ^1 :[] Moves Parse
Part₁  ← Snake‼Follow 2
Part₂  ← Snake‼(∧⍜(↙2↘|Follow)⇡-1⊸⧻) 10 # pairwise peristaltic
⊂⊃Part₁Part₂ In
┌─╴test
  T₁ ← &fras "2022/input/9t.txt"
  T₂ ← &fras "2022/input/9t2.txt"
  ⍤⤙≍ 13 Part₁ T₁
  ⍤⤙≍ 1 Part₂ T₁
  ⍤⤙≍ 36 Part₂ T₂
└─╴
