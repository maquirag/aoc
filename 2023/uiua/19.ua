# Day 19 - Aplenty
Raw ← &i "files.ua" "Raw"
ParseWorkflows ← (
  ♭regex "\\w+|>|<"
  ⍜(↘1↘¯1)(
    ↯¯1_4
    ≡(
      ⊃(⊗:"><"⊢°□⊡1|[⋕°□⊡2]|¯⊗:"xmas"⊢°□⊢|⊡1|⊢⇌)
      □⊂⊂: □↻: (⬚0↙4|⬚∞↙4)
    )
  )
)
∩°□°⊟ ⊜□ ¬⌕"\n\n". Raw 19
⊜(□ParseWorkflows) ≠@\n. # untangle workflows
WF ←
∵(⋕°□) ↯¯1_4 regex "\\d+" # parse parts
Parts ←

# Part 1
Pick ← ⊡:WF⊗:∵⊢WF # choose workflow by boxed name
Run ← (
  ⊙(¤,)⊃(↘1↘¯1|⊢⇌)°□                     # rearrange values
  ⊂≡((□""|∘)/×(>|<)≍□"<" ⊙°□⊙⊙:°[⊙⊙∘]°□) # check each rule
  ⊡⊢⊚≠□"".                               # pick first valid
)                                        # input: workflow part
Inspect ← (
  □"in"                          # starting workflow
  ⊙;⍢(Run Pick)(¬∊:[□"A" □"R"].) # repeat until A or R
)                                # Input: part
≡Inspect .Parts
/+ ♭ ▽=□"A"
