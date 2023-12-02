# Day 1
Files ← &i "files.ua"
  Data ← Files "Raw"
  ByLine! ← Files "ByLine!"
Data 1

. # Part 1

# $ 1abc2
# $ pqr3stu8vwx
# $ a1b2c3d4e5f
# $ treb7uchet

Digits ← +@0⇡10
DigitIndex ← ⊚ ≡⌕ Digits ¤
FirstLast ← /+ ×10_1 ⊢⍉ ⊏0_¯1 ⊏⍏≡⇌.
/+ ByLine!(FirstLast DigitIndex)
# 54331

: # Part 2

# $ two1nine
# $ eightwothree
# $ abcone2threexyz
# $ xtwone3four
# $ 4nineeightseven2
# $ zoneight234
# $ 7pqrstsixteen

Words ← {"" "one" "two" "three" "four" "five" "six" "seven" "eight" "nine"}
WordIndex ← ⊚ ≡⊐⌕ Words ¤ ⬚@ ↙+4⧻.
/+ ByLine!(FirstLast ⊂⊃WordIndex DigitIndex)
# 54518
