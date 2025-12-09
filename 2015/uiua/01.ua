# AoC 2015/01 Not Quite Lisp
In    ← &fras "2015/input/01.txt"
Parse ← ˜⊏1_¯1-@(
Part₁ ← /+ Parse
Part₂ ← +1⊢⊚<0\+ Parse
Parse In
⊂⊃Part₁Part₂ In
┌─╴test
  ⍤⤙≍ 0 Part₁ "(())"
  ⍤⤙≍ 0 Part₁ "()()"
  ⍤⤙≍ 3 Part₁ "((("
  ⍤⤙≍ 3 Part₁ "(()(()("
  ⍤⤙≍ 3 Part₁ "))((((("
  ⍤⤙≍ ¯1 Part₁ "())"
  ⍤⤙≍ ¯1 Part₁ "))("
  ⍤⤙≍ ¯3 Part₁ ")))"
  ⍤⤙≍ ¯3 Part₁ ")())())"
  ⍤⤙≍ 1 Part₂ ")"
  ⍤⤙≍ 5 Part₂ "()())"
└─╴
