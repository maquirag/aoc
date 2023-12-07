# Day 1
Data ← &i "lib/files.ua" "Raw"
Data 1              # read data
⊜□¬⌕"\n\n".         # group by empty lines
≡(□∵⋕ regex "\\d+") # convert numbers

.    # Part 1
⊐≡/+ # sum each group
/↥   # take the maximum
# 70116

:    # Part 2
⊐≡/+ # sum each group
⊏⍖.  # sort descending
/+↙3 # sum of top 3
# 206582
