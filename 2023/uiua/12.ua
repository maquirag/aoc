# Day 12 - Hot Springs
⊜(⊜□≠@ .)≠@\n. &fras "../input/12t.txt"
⍜(°⊟⍉)(
  ≡⍜°□(⊗:".#?")
  ⊙≡⍜°□(⊜⋕≠@,.)
)

# Part 1
Permutations ← ▽=⊙:≡/+.⋯⇡+1°⋯▽:1 # T N
Orderings ← (
  &p.
  ∩°□°⊟          # unpack to stack
  /+,            # total damaged
  /+=1,          # marked damaged
  -              # remaining damaged (N)
  /+=2,          # total missing (T)
  Permutations   # create permutations
  ⬚0≡(°⊚▽):¤⊚=2, # distribute values
  ⊙(×≠2.)        # original known damaged
  ⍜⍉⬚0+          # combine for all damaged
  ⊙¤             # fix target
  /+ ≡(≍⊜⧻.)     # count matches
)
/+≡Orderings
# 7236

# Part 2 NOT DONE...
