# Day 8: Seven Segment Search
&fras "../input/8.txt"
⊜(⊃(↙10|↘10) ♭regex "\\w+")≠@\n.
Signal ←
Output ←

# Part 1
Digits ← {"abcefg" "cf" "acdeg" "acdfg" "bcdf" "abdfg" "abdefg" "acf" "abcdefg" "abcdfg"}
/+ ∊:2_3_4_7 ∵⧻ ♭Output

# Part 2
# not too array-ish... :)
# UNSOLVED

⊠(∊⊙°□)"abcdefg" Digits
# identifiable based on number of parts:
#   1 = cf (2 parts)
#   7 = acf (3 parts)
#   4 = bcdf (4 parts)
#   8 = abcdefg (all 7 parts)
# c is missing only from digit 2
# a exists in 7 but doesn't in 1 
# d missing from 0 (len6) - 2 commons with 1
# e missing from 9 (len6) - no commons with 1
# logic may continue... 
