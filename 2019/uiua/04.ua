# AoC 2019/04 Secure Container
# Experimental!
In        ← &fras "2019/input/04.txt"
Parse     ← ⊜⋕⊸≠@-
IncDigits ← ⧅₆≤⇡10            # six digits incrementing
HasRep!   ← ▽⊸(/↥ ^0 ⬚∞⧈₂/=⍉) # filter repeating
Num       ← ≡°⊥₁₀ ⍜⍉⇌         # convert to number
InRange   ← ▽×⤚⊃(≤⊙⊢|≥⊙⊣)     # filter range
Solve!    ← Num HasRep!^0 IncDigits
Part₁     ← ⧻ InRange Solve!∘ Parse
Part₂     ← ⧻ InRange Solve!(⌕↯∞_1 0_1_0) Parse
⊂⊃Part₁Part₂ In
┌─╴test
  ⍤⤙≍ 1 ∊Solve!∘ 111111
  ⍤⤙≍ 0 ∊Solve!∘ 223450
  ⍤⤙≍ 0 ∊Solve!∘ 123789
  ⍤⤙≍ 1 ∊Solve!(⌕↯∞_1 0_1_0) 112233
  ⍤⤙≍ 0 ∊Solve!(⌕↯∞_1 0_1_0) 123444
  ⍤⤙≍ 1 ∊Solve!(⌕↯∞_1 0_1_0) 111122
└─╴
