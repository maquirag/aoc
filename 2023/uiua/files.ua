Raw ← |1 &fras $"../input/_.txt"
ByLine! ← ⊜^1 ≠@\n.
Lines ← |1 ⊐⊜∘≠@\n. Raw
Nums ← ⊐∵parse regex "\\d+"
