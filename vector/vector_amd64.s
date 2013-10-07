TEXT ·Find+0(SB),$0
  MOVQ    $0, SI        // zero the iterator
  MOVQ    vec+0(FP), BX // BX = &vec[0]
  MOVL    vec+8(FP), CX // len(vec)
  MOVQ    num+24(FP), DX
  MOVLQZX CX, CX        // CX as int64

start:
  CMPQ    SI, CX
  JG      notfound
  CMPQ    (BX), DX
  JNE     notequal
  JE      found

found:
  MOVQ    $1, return+32(FP)
  RET

notequal:
  INCQ    SI
  ADDQ    $8, BX
  JMP     start

notfound:
  MOVQ    $0, return+32(FP)
  RET
