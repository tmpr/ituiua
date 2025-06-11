~ "intervaltree.ua" ~ IT
~ "experiment" ~ RandIntervals

┌─╴test
  TestIntervals ← RandIntervals 1000
  ⍤ "<0" >0/↧♭ TestIntervals
  ⍤ ">1" <1/↥♭ TestIntervals
  ⍤ "Start > End" ≍⟜≡⍆ TestIntervals

  # Match three arrays
  TernMatch ← ×⊃(⋅≍)(⊙◌≍)

  AllImplem ← IT!(∩₃⍆ ⊃⊃QNaive QSimple QClever)
  Agree     ← (TernMatch AllImplem IT~Init)
  ⍤ "Unequal solutions" /×≡(Agree RandIntervals : ⚂) +1⇡500
└─╴