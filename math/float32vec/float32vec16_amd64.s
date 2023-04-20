TEXT ·f32v16_addAVX512F(SB), $0-24
	MOVQ a+0(FP), AX
	MOVQ b+8(FP), BX
	MOVQ result+16(FP), CX
	VMOVAPS 0(AX), Z0
	VMOVAPS 0(BX), Z1
	VADDPS Z1, Z0, Z2
	VMOVAPS Z2, 0(CX)
	RET

TEXT ·f32v16_addAVX(SB), $0-24
	MOVQ a+0(FP), AX
	MOVQ b+8(FP), BX
	MOVQ result+16(FP), CX
	VMOVAPS 0(AX), Y0
	VMOVAPS 16(AX), Y1
	VMOVAPS 0(BX), Y2
	VMOVAPS 16(BX), Y3
	VADDPS Y1, Y0, Y4
	VADDPS Y3, Y2, Y5
	VMOVAPS Y4, 0(CX)
	VMOVAPS Y5, 16(CX)
	RET

TEXT ·f32v16_addSSE2(SB), $0-24
	MOVQ a+0(FP), AX
	MOVQ b+8(FP), BX
	MOVQ result+16(FP), CX
	MOVAPS 0(AX), X0
	MOVAPS 16(AX), X1
	MOVAPS 32(AX), X2
	MOVAPS 48(AX), X3
	MOVAPS 0(BX), X4
	MOVAPS 16(BX), X5
	MOVAPS 32(BX), X6
	MOVAPS 48(BX), X7
	ADDPS X4, X0
	ADDPS X5, X1
	ADDPS X6, X2
	ADDPS X7, X3
	MOVAPS X0, 0(CX)
	MOVAPS X1, 16(CX)
	MOVAPS X2, 32(CX)
	MOVAPS X3, 48(CX)
	RET

TEXT ·f32v16_subAVX512F(SB), $0-24
	MOVQ a+0(FP), AX
	MOVQ b+8(FP), BX
	MOVQ result+16(FP), CX
	VMOVAPS 0(AX), Z0
	VMOVAPS 0(BX), Z1
	VSUBPS Z1, Z0, Z2
	VMOVAPS Z2, 0(CX)
	RET

TEXT ·f32v16_subAVX(SB), $0-24
	MOVQ a+0(FP), AX
	MOVQ b+8(FP), BX
	MOVQ result+16(FP), CX
	VMOVAPS 0(AX), Y0
	VMOVAPS 16(AX), Y1
	VMOVAPS 0(BX), Y2
	VMOVAPS 16(BX), Y3
	VSUBPS Y1, Y0, Y4
	VSUBPS Y3, Y2, Y5
	VMOVAPS Y4, 0(CX)
	VMOVAPS Y5, 16(CX)
	RET

TEXT ·f32v16_subSSE2(SB), $0-24
	MOVQ a+0(FP), AX
	MOVQ b+8(FP), BX
	MOVQ result+16(FP), CX
	MOVAPS 0(AX), X0
	MOVAPS 16(AX), X1
	MOVAPS 32(AX), X2
	MOVAPS 48(AX), X3
	MOVAPS 0(BX), X4
	MOVAPS 16(BX), X5
	MOVAPS 32(BX), X6
	MOVAPS 48(BX), X7
	SUBPS X4, X0
	SUBPS X5, X1
	SUBPS X6, X2
	SUBPS X7, X3
	MOVAPS X0, 0(CX)
	MOVAPS X1, 16(CX)
	MOVAPS X2, 32(CX)
	MOVAPS X3, 48(CX)
	RET

TEXT ·f32v16_mulAVX512F(SB), $0-24
	MOVQ a+0(FP), AX
	MOVQ b+8(FP), BX
	MOVQ result+16(FP), CX
	VMOVAPS 0(AX), Z0
	VMOVAPS 0(BX), Z1
	VMULPS Z1, Z0, Z2
	VMOVAPS Z2, 0(CX)
	RET

TEXT ·f32v16_mulAVX(SB), $0-24
	MOVQ a+0(FP), AX
	MOVQ b+8(FP), BX
	MOVQ result+16(FP), CX
	VMOVAPS 0(AX), Y0
	VMOVAPS 16(AX), Y1
	VMOVAPS 0(BX), Y2
	VMOVAPS 16(BX), Y3
	VMULPS Y1, Y0, Y4
	VMULPS Y3, Y2, Y5
	VMOVAPS Y4, 0(CX)
	VMOVAPS Y5, 16(CX)
	RET

TEXT ·f32v16_mulSSE2(SB), $0-24
	MOVQ a+0(FP), AX
	MOVQ b+8(FP), BX
	MOVQ result+16(FP), CX
	MOVAPS 0(AX), X0
	MOVAPS 16(AX), X1
	MOVAPS 32(AX), X2
	MOVAPS 48(AX), X3
	MOVAPS 0(BX), X4
	MOVAPS 16(BX), X5
	MOVAPS 32(BX), X6
	MOVAPS 48(BX), X7
	MULPS X4, X0
	MULPS X5, X1
	MULPS X6, X2
	MULPS X7, X3
	MOVAPS X0, 0(CX)
	MOVAPS X1, 16(CX)
	MOVAPS X2, 32(CX)
	MOVAPS X3, 48(CX)
	RET

TEXT ·f32v16_fmaAVX512F(SB), $0-32
	MOVQ a+0(FP), AX
	MOVQ b+8(FP), BX
	MOVQ c+16(FP), CX
	MOVQ result+24(FP), DX
	VMOVAPS 0(AX), Z0
	VMOVAPS 0(BX), Z1
	VMOVAPS 0(CX), Z2
	VFMADD132PS Z0, Z1, Z2
	VMOVAPS Z2, 0(DX)
	RET

TEXT ·f32v16_fmaAVX(SB), $0-32
	MOVQ a+0(FP), AX
	MOVQ b+8(FP), BX
	MOVQ c+16(FP), CX
	MOVQ result+24(FP), DX
	VMOVAPS 0(AX), Y0
	VMOVAPS 16(AX), Y1
	VMOVAPS 0(BX), Y2
	VMOVAPS 16(BX), Y3
	VMOVAPS 0(CX), Y4
	VMOVAPS 16(CX), Y5
	VFMADD132PS Y0, Y2, Y4
	VFMADD132PS Y1, Y3, Y5
	VMOVAPS Y4, 0(DX)
	VMOVAPS Y5, 16(DX)
	RET

TEXT ·f32v16_divAVX512F(SB), $0-24
	MOVQ a+0(FP), AX
	MOVQ b+8(FP), BX
	MOVQ result+16(FP), CX
	VMOVAPS 0(AX), Z0
	VMOVAPS 0(BX), Z1
	VDIVPS Z1, Z0, Z2
	VMOVAPS Z2, 0(CX)
	RET

TEXT ·f32v16_divAVX(SB), $0-24
	MOVQ a+0(FP), AX
	MOVQ b+8(FP), BX
	MOVQ result+16(FP), CX
	VMOVAPS 0(AX), Y0
	VMOVAPS 16(AX), Y1
	VMOVAPS 0(BX), Y2
	VMOVAPS 16(BX), Y3
	VDIVPS Y1, Y0, Y4
	VDIVPS Y3, Y2, Y5
	VMOVAPS Y4, 0(CX)
	VMOVAPS Y5, 16(CX)
	RET

TEXT ·f32v16_divSSE2(SB), $0-24
	MOVQ a+0(FP), AX
	MOVQ b+8(FP), BX
	MOVQ result+16(FP), CX
	MOVAPS 0(AX), X0
	MOVAPS 16(AX), X1
	MOVAPS 32(AX), X2
	MOVAPS 48(AX), X3
	MOVAPS 0(BX), X4
	MOVAPS 16(BX), X5
	MOVAPS 32(BX), X6
	MOVAPS 48(BX), X7
	DIVPS X4, X0
	DIVPS X5, X1
	DIVPS X6, X2
	DIVPS X7, X3
	MOVAPS X0, 0(CX)
	MOVAPS X1, 16(CX)
	MOVAPS X2, 32(CX)
	MOVAPS X3, 48(CX)
	RET

TEXT ·f32v16_minAVX512F(SB), $0-24
	MOVQ a+0(FP), AX
	MOVQ b+8(FP), BX
	MOVQ result+16(FP), CX
	VMOVAPS 0(AX), Z0
	VMOVAPS 0(BX), Z1
	VMINPS Z1, Z0, Z2
	VMOVAPS Z2, 0(CX)
	RET

TEXT ·f32v16_minAVX(SB), $0-24
	MOVQ a+0(FP), AX
	MOVQ b+8(FP), BX
	MOVQ result+16(FP), CX
	VMOVAPS 0(AX), Y0
	VMOVAPS 16(AX), Y1
	VMOVAPS 0(BX), Y2
	VMOVAPS 16(BX), Y3
	VMINPS Y1, Y0, Y4
	VMINPS Y3, Y2, Y5
	VMOVAPS Y4, 0(CX)
	VMOVAPS Y5, 16(CX)
	RET

TEXT ·f32v16_minSSE2(SB), $0-24
	MOVQ a+0(FP), AX
	MOVQ b+8(FP), BX
	MOVQ result+16(FP), CX
	MOVAPS 0(AX), X0
	MOVAPS 16(AX), X1
	MOVAPS 32(AX), X2
	MOVAPS 48(AX), X3
	MOVAPS 0(BX), X4
	MOVAPS 16(BX), X5
	MOVAPS 32(BX), X6
	MOVAPS 48(BX), X7
	MINPS X4, X0
	MINPS X5, X1
	MINPS X6, X2
	MINPS X7, X3
	MOVAPS X0, 0(CX)
	MOVAPS X1, 16(CX)
	MOVAPS X2, 32(CX)
	MOVAPS X3, 48(CX)
	RET

TEXT ·f32v16_maxAVX512F(SB), $0-24
	MOVQ a+0(FP), AX
	MOVQ b+8(FP), BX
	MOVQ result+16(FP), CX
	VMOVAPS 0(AX), Z0
	VMOVAPS 0(BX), Z1
	VMAXPS Z1, Z0, Z2
	VMOVAPS Z2, 0(CX)
	RET

TEXT ·f32v16_maxAVX(SB), $0-24
	MOVQ a+0(FP), AX
	MOVQ b+8(FP), BX
	MOVQ result+16(FP), CX
	VMOVAPS 0(AX), Y0
	VMOVAPS 16(AX), Y1
	VMOVAPS 0(BX), Y2
	VMOVAPS 16(BX), Y3
	VMAXPS Y1, Y0, Y4
	VMAXPS Y3, Y2, Y5
	VMOVAPS Y4, 0(CX)
	VMOVAPS Y5, 16(CX)
	RET

TEXT ·f32v16_maxSSE2(SB), $0-24
	MOVQ a+0(FP), AX
	MOVQ b+8(FP), BX
	MOVQ result+16(FP), CX
	MOVAPS 0(AX), X0
	MOVAPS 16(AX), X1
	MOVAPS 32(AX), X2
	MOVAPS 48(AX), X3
	MOVAPS 0(BX), X4
	MOVAPS 16(BX), X5
	MOVAPS 32(BX), X6
	MOVAPS 48(BX), X7
	MAXPS X4, X0
	MAXPS X5, X1
	MAXPS X6, X2
	MAXPS X7, X3
	MOVAPS X0, 0(CX)
	MOVAPS X1, 16(CX)
	MOVAPS X2, 32(CX)
	MOVAPS X3, 48(CX)
	RET

// finish later

TEXT ·f32v16_clampAVX(SB), $0-32
	MOVQ v+0(FP), AX
	MOVQ mn+8(FP), BX
	MOVQ mx+16(FP), CX
	MOVQ result+24(FP), DX
	VMOVAPS 0(AX), Y0
	VMOVAPS 0(BX), Y1
	VMOVAPS 0(CX), Y2
	VMAXPS Y0, Y1, Y3
	VMINPS Y2, Y3, Y4
	VMOVAPS Y4, 0(DX)
	RET

TEXT ·f32v16_clampSSE2(SB), $0-32
	MOVQ v+0(FP), AX
	MOVQ mn+8(FP), BX
	MOVQ mx+16(FP), CX
	MOVQ result+24(FP), DX
	MOVAPS 0(AX), X0
	MOVAPS 16(AX), X1
	MOVAPS 0(BX), X2
	MOVAPS 16(BX), X3
	MOVAPS 0(CX), X4
	MOVAPS 16(CX), X5
	MAXPS X2, X0
	MAXPS X3, X1
	MINPS X4, X0
	MINPS X5, X1
	MOVAPS X0, 0(DX)
	MOVAPS X1, 16(DX)
	RET

TEXT ·f32v16_ceilAVX(SB), $0-16
	MOVQ v+0(FP), AX
	MOVQ result+8(FP), BX
	VMOVAPS 0(AX), Y0
	VROUNDPS $10, Y0, Y1
	VMOVAPS Y1, 0(BX)
	RET

TEXT ·f32v16_ceilSSE41(SB), $0-24
	MOVQ v+0(FP), AX
	MOVQ result+8(FP), BX
	MOVAPS 0(AX), X0
	MOVAPS 16(AX), X1
	ROUNDPS $10, X0, X2
	ROUNDPS $10, X1, X3
	MOVAPS X2, 0(BX)
	MOVAPS X3, 16(BX)
	RET

TEXT ·f32v16_roundAVX(SB), $0-16
	MOVQ v+0(FP), AX
	MOVQ result+8(FP), BX
	VMOVAPS 0(AX), Y0
	VROUNDPS $00, Y0, Y1
	VMOVAPS Y1, 0(BX)
	RET

TEXT ·f32v16_roundSSE41(SB), $0-24
	MOVQ v+0(FP), AX
	MOVQ result+8(FP), BX
	MOVAPS 0(AX), X0
	MOVAPS 16(AX), X1
	ROUNDPS $00, X0, X2
	ROUNDPS $00, X1, X3
	MOVAPS X2, 0(BX)
	MOVAPS X3, 16(BX)
	RET

TEXT ·f32v16_floorAVX(SB), $0-16
	MOVQ v+0(FP), AX
	MOVQ result+8(FP), BX
	VMOVAPS 0(AX), Y0
	VROUNDPS $01, Y0, Y1
	VMOVAPS Y1, 0(BX)
	RET

TEXT ·f32v16_floorSSE41(SB), $0-24
	MOVQ v+0(FP), AX
	MOVQ result+8(FP), BX
	MOVAPS 0(AX), X0
	MOVAPS 16(AX), X1
	ROUNDPS $01, X0, X2
	ROUNDPS $01, X1, X3
	MOVAPS X2, 0(BX)
	MOVAPS X3, 16(BX)
	RET
