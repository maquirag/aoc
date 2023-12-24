# Day 24: Never Tell Me The Odds
Raw ← &i "files.ua" "Raw"
In ← ↯¯1_6 ∵⋕ regex "-?\\d+" Raw 24
Lo ← 200000000000000 # bottom boundary
Hi ← 400000000000000 # top boundary
# [x y z dx dy dz] each line is a 3d vector

# Linear algebra solution (Cramer's method)
# t, s = scaling factors of each vector where they intersect
# xa + t*dxa = xb + s*dxb
# ya + t*dya = yb + s*dyb
# Standard form of linear equations, solve for [t s]:
# dxa*t - dxb*s = xb - xa
# dya*t - dyb*s = yb - ya
# When s or t is less than 0, no intersect (wrong direction)

# Part 1
Det ← /-/×⍜⊢⇌                           # determinant of M 2x2
Cramer ← ⊟∩÷,⊃(Det≡(⊂:↘1)|Det|Det≡(⊂⊢)) # solve linear eq's
CrossXY ← Cramer ⊃(⍉⊟⊙¯⋅⊙⋅∘|/-⊟⊙⋅∘) ∩(⊃(↙2|⊏3_4))
Forward ← ×∩/×⊃(>0|≠∞⌵) # forward intersection, arg: [t s]
Inside ← ×∩/×⊃(≥Lo|≤Hi) # falls within bounds, arg: [xc yc]
EvalPair ← ×⊃(Inside+×⊢|Forward) ⊃(CrossXY|⊏3_4|⊏0_1)

/+♭ ×⊠>.⇡⧻In ⊠EvalPair .In

# Part 2
# INCOMPLETE
# determine the position and velocity for throwing the rock
# that will intersect each vector at a future position...
