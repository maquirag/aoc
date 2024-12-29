# AoC 2023/08 Haunted Wasteland
# Experimental!
In ← &fras "2023/input/8.txt"
Parse ← ∩□⊓(
  ⊗:"LR"
| map≡°⊂↯∞_3_3⊜∘¬⊸∊" ,=()\n"
)°$"_\n\n_" # parse out: [dirs] [nodemap]
# input: startnode [dirs] [nodemap]  output: num steps
Walk! ← ◌◌◌⍢(⊙⊙⊙+₁◇⊃(↻1|⊡⊢)⊙⊸◇get|^0⋅∘):⊙⊙⊙0
Part₁ ← Walk!(¬≍"ZZZ") "AAA" Parse
LCM   ← /(÷⊃∨×) # lowest common multiple
Part₂ ← LCM ≡Walk!(≠@Z⊣) ▽=@A⊸≡⊣◌:◡⋅◇°map Parse
⊂⊃Part₁Part₂ In
┌─╴test
  T₁ ← &fras "2023/input/8t.txt"
  T₂ ← &fras "2023/input/8t2.txt"
  T₃ ← &fras "2023/input/8t3.txt"
  ⍤⤙≍ 2 Part₁ T₁
  ⍤⤙≍ 6 Part₁ T₂
  ⍤⤙≍ 6 Part₂ T₃
└─╴
