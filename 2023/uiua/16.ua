# Day 16 - The Floor Will Be Lava
Data ← &i "files.ua" "Raw"
In ← ⊜∘ ≠@\n. Data 16

# Part 1
M ← ⧻In          # max size (assuming square)
Mem ← ⊙⊝ ⊃(∘|⊂)  # put into memo
Move ← ⊟⊃(/+|⊢⇌) # change coord of single photon
Orient ← (
  ⊃(⊡:In⊢|⊢⇌|¤⊢) # get symbol and current dir
  ⊗:".-|/\\"     # mirror type switch
  (
    ¤                # dot
  | (⊠×1_¯1⇌|¤)=0⊢.  # dash (can split)
  | (⊠×1_¯1⇌|¤)=0⊢⇌. # pipe (can split)
  | ¤(-1|+1)<0/+.    # slash 
  | ¤⇌               # backslash
  )
  ≡⊟: # combine with coords
)
Valid ← ≡(/×× ⊃(≥0|<M) /+) # new coord is good
Unseen ← ¬∊                # not in memo
Visited ← ⊝≡⊢              # unique coords
Beam ← (
  :↯0_2_2[] # visited
  ⍢(
    ▽⊃(Unseen|⊙∘) # 1. Filter already visited
    Mem           # 2. Mark all light beams (memo)
    ⊐/⊂≡(□Orient) # 3. Determine new directions
    ▽⊃(Valid|∘)   # 4. Filter impossible coords
    ≡Move         # 5. Move to new coordinates
  )(>0⧻)
  ⧻Visited ;
) # Input: single beam [[x y][dx dy]]
Beam [[0_0 0_1]]
# 6514

# Part 2
≡(Beam¤) ≡⊟ ∵⊂0⇡M ¤1_0     # from top
≡(Beam¤) ≡⊟ ∵⊂⇡M 0 ¤0_1    # from left
≡(Beam¤) ≡⊟ ∵⊂-1M⇡M ¤¯1_0  # from bottom
≡(Beam¤) ≡⊟ ∵⊂⇡M -1M ¤0_¯1 # from right 
/↥⊂⊂⊂
# 8089
