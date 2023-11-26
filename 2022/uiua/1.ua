# Day 1
Raw ← &i "lib/files.ua" "Raw"
Raw 1                   # read data
⊜□¬⌕"\n\n".             # group by empty lines
⊐≡(∵parse regex "\\d+") # convert numbers

.    # Part 1
⊐≡/+ # sum each group
/↥   # take the maximum

:    # Part 2
⊐≡/+ # sum each group
⊏⍖.  # sort descending
/+↙3 # sum of top 3
