Raw ← |1 &fras $"../input/_.txt"
Row! ← ⊜^1 ≠@\n.
Lines ← Row!∘ Raw
Nums ← ⊐∵parse regex "\\d+"
