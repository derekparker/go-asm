TEXT ·SumVec+0(SB), $0
  MOVQ vec1+0(FP), BX // Move the first vector into BX
  MOVQ vec2+24(FP), CX // Move the first vector into BX
  MOVUPS (BX), X0
  MOVUPS (CX), X1
  ADDPS X0, X1
  MOVUPS X1, result+48(FP)
  RET
