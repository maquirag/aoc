# Day 15 - Lens Library
Data ← &i "files.ua" "Raw"
⊜□≠@,. ▽≠@\n. Data 15
In ←

# Part 1
Hash ← ∧(◿256×17+):0 -@\0°□
/+ ∵Hash In
# 501680

# Part 2
Instr ← ⍜(⊢⇌|⋕) ⊜□¬∊:"=-".(∘|⊂:@0)∊@-.°□ # code + power, 0=DELETE
Upd ← (⋅(⊂:)|⍜(⊢⇌⊡|⊢⇌;)⊙:) ⊃∊⊗ ⊢,≡⊢,     # row, boxcontent
Del ← (⋅∘|⍜(↘|↘1)) ⊃∊⊗ :≡⊢,⊢             # row, boxcontent
Play ← ∧((Del|Upd)⊃(>0°□⊢⇌|∘)) : ↯¯1_2[] °□
Score ← /+ × ⊃(≡(°□⊢⇌)|+1⇡⧻)
⊕□ ≡(Hash⊢). ∵Instr In # sort all the instructions to boxes
≡(⬚0 Score Play)       # execute all operations and score
/+ × ⊃(∘|+1⇡⧻)         # sum all box scores
# 241094
