# AoC 2019/02 1202 Program Alarm
In ← &fras "2019/input/02.txt"
P  ← ⊜⋕⊸≠@, # parse
# stack: cursor [program]
Op!     ← ⊙⍜⊡◌⟜⊸(⊡+3)⊙⤙(/^0⊏)⟜⊸(⊏+1_2) # operation
Intcode ← ◌⍢(+4⨬(Op!+|Op!×)-1◡⊡|≠99⊡) 0
Hack    ← ⍜(⊏1_2|◌): # hack noun and verb
Part₁   ← ⊢ Intcode Hack 12_2 P
Part₂ ← (
  ♭₂⊞⊟.⇡100 ⊙(map[][]) ¤P  # brute force prep
  ∧(⊂map⊙¤⊢ Intcode ⤚Hack) # collect solutions to map
  /+×100_1⬚∞get19690720    # lookup and calculate result
)
⊂⊃Part₁Part₂ In
┌─╴test
  ⍤⤙≍ P "3500,9,10,70,2,3,11,0,99,30,40,50" Intcode P "1,9,10,3,2,3,11,0,99,30,40,50"
  ⍤⤙≍ P "2,0,0,0,99" Intcode P "1,0,0,0,99"
  ⍤⤙≍ P "2,3,0,6,99" Intcode P "2,3,0,3,99"
  ⍤⤙≍ P "2,4,4,5,99,9801" Intcode P "2,4,4,5,99,0"
  ⍤⤙≍ P "30,1,1,4,2,5,6,0,99" Intcode P "1,1,1,4,99,5,6,0,99"
└─╴
