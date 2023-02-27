TEXT ·add(SB), $0-24
	MOVQ a+0(FP), AX
	MOVQ b+8(FP), BX
	MOVQ result+16(FP), CX
	MOVO 0(AX), X0
	MOVO 0(BX), X1
	PADDB X1, X0
	MOVO X0, 0(CX)
	RET

TEXT ·sub(SB), $0-24
	MOVQ a+0(FP), AX
	MOVQ b+8(FP), BX
	MOVQ result+16(FP), CX
	MOVO 0(AX), X0
	MOVO 0(BX), X1
	PSUBB X1, X0
	MOVO X0, 0(CX)
	RET

TEXT ·minSSE41(SB), $0-24
	MOVQ a+0(FP), AX
	MOVQ b+8(FP), BX
	MOVQ result+16(FP), CX
	MOVO 0(AX), X0
	MOVO 0(BX), X1
	PMINSB X1, X0
	MOVO X0, 0(CX)
	RET

TEXT ·maxSSE41(SB), $0-24
	MOVQ a+0(FP), AX
	MOVQ b+8(FP), BX
	MOVQ result+16(FP), CX
	MOVO 0(AX), X0
	MOVO 0(BX), X1
	PMAXSB X1, X0
	MOVO X0, 0(CX)
	RET

TEXT ·clampSSE41(SB), $0-32
	MOVQ v+0(FP), AX
	MOVQ mn+8(FP), BX
	MOVQ mx+16(FP), CX
	MOVQ result+24(FP), DX
	MOVO 0(AX), X0
	MOVO 0(BX), X1
	MOVO 0(CX), X2
	PMAXSB X1, X0
	PMINSB X2, X0
	MOVO X0, 0(DX)
	RET