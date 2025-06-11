~ "intervaltree.ua" ~ IT

RandVec       ← ≡⋅⚂⇡
RandLen       ← ×⊃⚂(-:1)
RandIntervals ← ⍉⊟:⊸+⊸RandLen RandVec

# Sizes     ← [1 20 30 50 100 1000 5000 10000 50000 100000]

Sizes     ← [1 20 30 50 100 1000 5000 10000 50000 100000 500000]
PerSize   ← 20
Queries   ← RandVec 100
Intervals ← ♭ ⊞(□RandIntervals ⊙◌) Sizes⇡PerSize
&fwa "intervals.csv" csv Intervals
# Add some ID to keep track of the intervals
Trees ← IT!(≡(°⊸ID :◇Init) ⟜(⇡⧻)Intervals)

~Sample {N S C Q Size ID}

μs ← ⁅×1e6

Benchmark ← (
  IT!(⊃⊃(
      ⍜nowQNaive
    | ⍜nowQSimple
    | (⨬(⍜nowQClever|NaN NaN)>1000⧻All.)
    ))
  ∩₃(⊙◌μs)
)

Experiment ← ♭₂ ⊞(Sample ⊃⊃⊃Benchmark⋅∘(⧻IT~All)(IT~ID))

# Clumsy way to format the output.
~Output {QNaive QSimple QClever Size}
FmtExp ← Sample!(Output ⊃⊃⊃(≡N)(≡S)(≡C)(≡Size))

Avg    ← ÷ ⊃(⧻)(/+)
Report ← FmtExp ⊜Avg ⊸≡Sample~Size
Save   ← &fwa "results.csv" csv
⊃Report Save Experiment Trees Queries
