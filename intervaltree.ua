┌─╴IT
  ~ {
    L
    CL
    CR
    R
    M
    All
    ID ← (¯1)
  }
  Median ← ÷2 /+ ⊏⊟ ⊃⌊⌈ ÷2-1⧻. ⍆
  IsL    ← >⊣⍉
  IsR    ← <⊢⍉
  IsCros ← ×⊃(¬IsL)(¬IsR)
  SL     ← ⍆
  SR     ← ⍜≡⇌⍆
  Empty  ← =0⧻

  Init ← |1 (
    Empty.
    ⨬(⟜(Median♭)⍆
      IT⊃⊃⊃⊃(Init▽⤚IsL)(⊃SL SR▽⤚IsCros)(Init▽⤚IsR)(⋅∘)(⊙◌)
    | [])
  )

  QNaive ← ▽⤚IT~IsCros IT~All

  QSimple ← |2 (
    Empty.
    ⨬(⊂⊃(▽⤚IsCros CL)(⨬(QSimple L|QSimple R)◡(>M))
    | [])
  )

  FilterCL ← ⊙◌ ⍢↘₁ ⍣(◡(<⊢⊢)|0) ⇌ CL
  FilterCR ← ⊙◌ ⍢↘₁ ⍣(◡(>⊣⊢)|0) CR
  QClever ← |2 (
    =0⧻.
    ⨬(◡(>M)
      ⨬(⊂⊃(FilterCL)(QClever L)
      | ⊂⊃(FilterCR)(QClever R)
      )
    | []
    )
  )
└─╴
