# Day 10: Syntax Scoring
# Experimental!

In ← ⊜□ ≠@\n. &fras "../input/10.txt"

# Part 1
IsPair ← ∊:["()" "[]" "{}" "<>"]
# recursively remove pairs from end
Simplify ← ↬((∘|(∘||1 ↫↘¯2)IsPair↙¯2.)>1⧻.)
# if last character is wrong, concat it up the stack
PushWrong ← (∘|⊃(∘|(;|⊂:)∊:"]})>".⊡¯1))>0⧻.
ScoreFirstError ← (0|⊡:3_57_1197_25137 ⊗:")]}>"⊢)>0⧻.;
Validate ← (
  ⊙.⊙"" # processed chars, error chars
  ⍢(
    ⊙(Simplify⊂:) ⊃↘↙1 # push next character up, and simplify if possible
    ⊙PushWrong         # add to error list when invalid
  )(>0⧻)               # until all characters processed
  ;                    # two lists remain, processed and errors
)

/+ ∵(ScoreFirstError Validate °□) In

# Part 2
ScoreIncomplete ← (0|∧(+⊗:" ([{<"⊙(×5))⊙0⇌) ≍"":

∵(ScoreIncomplete Validate °□) In
⊢↘⌊÷2⧻. ⊏⍏. ▽>0.
