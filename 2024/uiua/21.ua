# AoC 2024/21 Keypad Conundrum
# TODO
# Experimental!
&fras "2024/input/21t.txt"
≡◇∘ °/$"_\n_"
In ←
K  ← ["789" "456" "123" ".0A"] # keypad
D  ← [".^A" "<v>"]             # directions
$keypad K $directions D
Move! ← memo(
  ⨬(𝄈⊂0_0⊢⊚⌕⊙^0°⊟ # start state: [x y dx dy]
    path(
      ≡⌟(⊂⤚+)A₂↙2       # new states
      ▽⊸≡(≠@.⬚@.𝄈⊡^0↙2) # filter valid
    | ≍𝄈⊡^0↙2           # match end state
    )
    ≡(𝄈⊂@A≡(𝄈⊡">v<^"𝄈⊗A₂↘2)↘1) # convert to dirs
  | ¤¤⋅@A
  )⊸/= # when start=end, just press A 
)
Layer! ← (
  ⧈₂(□Move!^0)⊂@A  # starting poz and build pairs
  ∧(♭₂⊞◇𝄈⊂°□)⊙{""} # combine optimal
)
Optimum ← (
  Layer!K                # keypad robot
  ≡(⊃(⧻⊢|□)Layer!D)      # first directions
  /◇⊂ ▽=⊸/↧              # filter shortest
  /↧wait≡pool(⧻⊢Layer!D) # second dir best length
)
Part₁ ← /+◡× ≡⊃(⋕↙3|Optimum)
# $time ⍜(now|$result Part₁ In) # it works, but slow
# Part 2 requires 25 layers of D
