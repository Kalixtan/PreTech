.include "includes.s"
        
.bank $007 slot 7
.org $0

	ex af, af'                                                  ; $0000 : $08
	ret nz                                                  ; $0001 : $c0

	ld e, $c0                                                  ; $0002 : $1e, $c0
	inc (hl)                                                  ; $0004 : $34
	ret nz                                                  ; $0005 : $c0

	ld c, d                                                  ; $0006 : $4a
	ret nz                                                  ; $0007 : $c0

	ld hl, $6ed4                                                  ; $0008 : $21, $d4, $6e
	call nc, $d4b1                                                  ; $000b : $d4, $b1, $d4
	djnz -$2b                                                  ; $000e : $10, $d5
	ld h, b                                                  ; $0010 : $60
	push de                                                  ; $0011 : $d5
	or c                                                  ; $0012 : $b1
	push de                                                  ; $0013 : $d5
	ld b, $d6                                                  ; $0014 : $06, $d6
	ld l, l                                                  ; $0016 : $6d

Call_07_0017:
	sub $d5                                                  ; $0017 : $d6, $d5
	sub $44                                                  ; $0019 : $d6, $44
	rst $10                                                  ; $001b : $d7
	sbc a, d                                                  ; $001c : $9a
	rst $10                                                  ; $001d : $d7
	in a, ($d7)                                                  ; $001e : $db, $d7
	ld c, h                                                  ; $0020 : $4c
	ret c                                                  ; $0021 : $d8

	sub l                                                  ; $0022 : $95
	ret c                                                  ; $0023 : $d8

	rst $30                                                  ; $0024 : $f7
	ret c                                                  ; $0025 : $d8

	ld h, l                                                  ; $0026 : $65
	exx                                                  ; $0027 : $d9

Call_07_0028:
	jp Jump_07_15d9                                                  ; $0028 : $c3, $d9, $15


	jp c, $da73                                                  ; $002b : $da, $73, $da
	or c                                                  ; $002e : $b1
	jp c, $daf4                                                  ; $002f : $da, $f4, $da
	ld e, (hl)                                                  ; $0032 : $5e
	in a, ($c4)                                                  ; $0033 : $db, $c4
	in a, ($2e)                                                  ; $0035 : $db, $2e

br_07_0037:
	call c, $dca3                                                  ; $0037 : $dc, $a3, $dc
	rst $38                                                  ; $003a : $ff
	call c, $dd7b                                                  ; $003b : $dc, $7b, $dd
	call p, $5add                                                  ; $003e : $f4, $dd, $5a
	sbc a, $b9                                                  ; $0041 : $de, $b9
	sbc a, $1b                                                  ; $0043 : $de, $1b
	rst $18                                                  ; $0045 : $df
	adc a, b                                                  ; $0046 : $88
	rst $18                                                  ; $0047 : $df
	ret pe                                                  ; $0048 : $e8

	rst $18                                                  ; $0049 : $df
	ld e, e                                                  ; $004a : $5b
	ret po                                                  ; $004b : $e0

	or c                                                  ; $004c : $b1
	ret po                                                  ; $004d : $e0

	inc de                                                  ; $004e : $13
	pop hl                                                  ; $004f : $e1
	adc a, l                                                  ; $0050 : $8d
	pop hl                                                  ; $0051 : $e1
	inc c                                                  ; $0052 : $0c
	jp po, $e273                                                  ; $0053 : $e2, $73, $e2
	rst $18                                                  ; $0056 : $df
	jp po, $e340                                                  ; $0057 : $e2, $40, $e3
	cp c                                                  ; $005a : $b9
	ex (sp), hl                                                  ; $005b : $e3
	ld c, $e4                                                  ; $005c : $0e, $e4
	ld a, h                                                  ; $005e : $7c
	call po, $c2b8                                                  ; $005f : $e4, $b8, $c2
	pop bc                                                  ; $0062 : $c1
	jp nz, $c2cc                                                  ; $0063 : $c2, $cc, $c2
	exx                                                  ; $0066 : $d9
	jp nz, $c2e6                                                  ; $0067 : $c2, $e6, $c2
	rst $28                                                  ; $006a : $ef
	jp nz, $c2fb                                                  ; $006b : $c2, $fb, $c2
	ex af, af'                                                  ; $006e : $08
	jp $c314                                                  ; $006f : $c3, $14, $c3


	jr nz, br_07_0037                                                  ; $0072 : $20, $c3

	dec l                                                  ; $0074 : $2d
	jp $c33a                                                  ; $0075 : $c3, $3a, $c3


	ld b, l                                                  ; $0078 : $45
	jp $c352                                                  ; $0079 : $c3, $52, $c3


	ld e, l                                                  ; $007c : $5d
	jp $c369                                                  ; $007d : $c3, $69, $c3


	halt                                                  ; $0080 : $76
	jp $c383                                                  ; $0081 : $c3, $83, $c3


	adc a, a                                                  ; $0084 : $8f
	jp $c39c                                                  ; $0085 : $c3, $9c, $c3


	xor b                                                  ; $0088 : $a8
	jp $c3b4                                                  ; $0089 : $c3, $b4, $c3


	pop bc                                                  ; $008c : $c1
	jp $c3cc                                                  ; $008d : $c3, $cc, $c3


	rst $10                                                  ; $0090 : $d7
	jp $c3e4                                                  ; $0091 : $c3, $e4, $c3


	ret p                                                  ; $0094 : $f0

	jp $c3fd                                                  ; $0095 : $c3, $fd, $c3


	ld b, $c4                                                  ; $0098 : $06, $c4
	inc de                                                  ; $009a : $13
	call nz, $c41f                                                  ; $009b : $c4, $1f, $c4
	inc l                                                  ; $009e : $2c
	call nz, $c438                                                  ; $009f : $c4, $38, $c4
	ld b, e                                                  ; $00a2 : $43
	call nz, $c450                                                  ; $00a3 : $c4, $50, $c4
	ld e, l                                                  ; $00a6 : $5d
	call nz, $c469                                                  ; $00a7 : $c4, $69, $c4
	halt                                                  ; $00aa : $76
	call nz, $c483                                                  ; $00ab : $c4, $83, $c4
	adc a, h                                                  ; $00ae : $8c
	call nz, $c499                                                  ; $00af : $c4, $99, $c4
	and (hl)                                                  ; $00b2 : $a6
	call nz, $c4b2                                                  ; $00b3 : $c4, $b2, $c4
	cp l                                                  ; $00b6 : $bd
	call nz, $c4c9                                                  ; $00b7 : $c4, $c9, $c4
	sub $c4                                                  ; $00ba : $d6, $c4
	ex (sp), hl                                                  ; $00bc : $e3
	call nz, $c4f0                                                  ; $00bd : $c4, $f0, $c4
	.db $fd                                                  ; $00c0 : $fd
	call nz, $c50a                                                  ; $00c1 : $c4, $0a, $c5
	ld d, $c5                                                  ; $00c4 : $16, $c5
	ld hl, $2ec5                                                  ; $00c6 : $21, $c5, $2e
	push bc                                                  ; $00c9 : $c5
	dec sp                                                  ; $00ca : $3b
	push bc                                                  ; $00cb : $c5
	ld b, a                                                  ; $00cc : $47
	push bc                                                  ; $00cd : $c5
	ld d, d                                                  ; $00ce : $52
	push bc                                                  ; $00cf : $c5
	ld e, (hl)                                                  ; $00d0 : $5e
	push bc                                                  ; $00d1 : $c5
	ld l, d                                                  ; $00d2 : $6a
	push bc                                                  ; $00d3 : $c5
	ld (hl), l                                                  ; $00d4 : $75
	push bc                                                  ; $00d5 : $c5
	add a, d                                                  ; $00d6 : $82
	push bc                                                  ; $00d7 : $c5
	adc a, a                                                  ; $00d8 : $8f
	push bc                                                  ; $00d9 : $c5
	sbc a, h                                                  ; $00da : $9c
	push bc                                                  ; $00db : $c5
	xor c                                                  ; $00dc : $a9
	push bc                                                  ; $00dd : $c5
	or l                                                  ; $00de : $b5
	push bc                                                  ; $00df : $c5
	jp nz, $cfc5                                                  ; $00e0 : $c2, $c5, $cf
	push bc                                                  ; $00e3 : $c5
	in a, ($c5)                                                  ; $00e4 : $db, $c5
	ret pe                                                  ; $00e6 : $e8

	push bc                                                  ; $00e7 : $c5
	call p, Call_07_01c5                                                  ; $00e8 : $f4, $c5, $01
	add a, $0d                                                  ; $00eb : $c6, $0d
	add a, $18                                                  ; $00ed : $c6, $18
	add a, $24                                                  ; $00ef : $c6, $24
	add a, $31                                                  ; $00f1 : $c6, $31
	add a, $3d                                                  ; $00f3 : $c6, $3d
	add a, $49                                                  ; $00f5 : $c6, $49
	add a, $54                                                  ; $00f7 : $c6, $54
	add a, $61                                                  ; $00f9 : $c6, $61
	add a, $6e                                                  ; $00fb : $c6, $6e
	add a, $7b                                                  ; $00fd : $c6, $7b
	add a, $88                                                  ; $00ff : $c6, $88
	add a, $94                                                  ; $0101 : $c6, $94
	add a, $9f                                                  ; $0103 : $c6, $9f
	add a, $aa                                                  ; $0105 : $c6, $aa
	add a, $b5                                                  ; $0107 : $c6, $b5
	add a, $c2                                                  ; $0109 : $c6, $c2
	add a, $ce                                                  ; $010b : $c6, $ce
	add a, $da                                                  ; $010d : $c6, $da
	add a, $e5                                                  ; $010f : $c6, $e5
	add a, $f0                                                  ; $0111 : $c6, $f0
	add a, $fb                                                  ; $0113 : $c6, $fb
	add a, $08                                                  ; $0115 : $c6, $08
	rst $00                                                  ; $0117 : $c7
	inc de                                                  ; $0118 : $13
	rst $00                                                  ; $0119 : $c7
	rra                                                  ; $011a : $1f
	rst $00                                                  ; $011b : $c7
	inc l                                                  ; $011c : $2c
	rst $00                                                  ; $011d : $c7
	add hl, sp                                                  ; $011e : $39
	rst $00                                                  ; $011f : $c7
	ld b, l                                                  ; $0120 : $45
	rst $00                                                  ; $0121 : $c7
	ld d, d                                                  ; $0122 : $52
	rst $00                                                  ; $0123 : $c7
	ld e, (hl)                                                  ; $0124 : $5e
	rst $00                                                  ; $0125 : $c7
	ld l, d                                                  ; $0126 : $6a
	rst $00                                                  ; $0127 : $c7
	ld (hl), a                                                  ; $0128 : $77

br_07_0129:
	rst $00                                                  ; $0129 : $c7
	add a, l                                                  ; $012a : $85
	rst $00                                                  ; $012b : $c7
	sub h                                                  ; $012c : $94
	rst $00                                                  ; $012d : $c7
	and h                                                  ; $012e : $a4
	rst $00                                                  ; $012f : $c7
	or (hl)                                                  ; $0130 : $b6
	rst $00                                                  ; $0131 : $c7
	rst $00                                                  ; $0132 : $c7
	rst $00                                                  ; $0133 : $c7
	sub $c7                                                  ; $0134 : $d6, $c7
	rst $20                                                  ; $0136 : $e7
	rst $00                                                  ; $0137 : $c7
	or $c7                                                  ; $0138 : $f6, $c7
	rlca                                                  ; $013a : $07
	ret z                                                  ; $013b : $c8

	ld d, $c8                                                  ; $013c : $16, $c8
	inc h                                                  ; $013e : $24
	ret z                                                  ; $013f : $c8

	ld (hl), $c8                                                  ; $0140 : $36, $c8
	ld b, l                                                  ; $0142 : $45
	ret z                                                  ; $0143 : $c8

	ld d, h                                                  ; $0144 : $54
	ret z                                                  ; $0145 : $c8

	ld h, l                                                  ; $0146 : $65
	ret z                                                  ; $0147 : $c8

	ld (hl), a                                                  ; $0148 : $77
	ret z                                                  ; $0149 : $c8

	add a, a                                                  ; $014a : $87
	ret z                                                  ; $014b : $c8

	sub (hl)                                                  ; $014c : $96
	ret z                                                  ; $014d : $c8

	and l                                                  ; $014e : $a5
	ret z                                                  ; $014f : $c8

	or a                                                  ; $0150 : $b7
	ret z                                                  ; $0151 : $c8

	rst $00                                                  ; $0152 : $c7
	ret z                                                  ; $0153 : $c8

	ret c                                                  ; $0154 : $d8

	ret z                                                  ; $0155 : $c8

	rst $20                                                  ; $0156 : $e7
	ret z                                                  ; $0157 : $c8

	ret m                                                  ; $0158 : $f8

	ret z                                                  ; $0159 : $c8

	ld b, $c9                                                  ; $015a : $06, $c9
	rla                                                  ; $015c : $17
	ret                                                  ; $015d : $c9


	jr z, br_07_0129                                                  ; $015e : $28, $c9

	ld a, ($4cc9)                                                  ; $0160 : $3a, $c9, $4c
	ret                                                  ; $0163 : $c9


	ld e, (hl)                                                  ; $0164 : $5e
	ret                                                  ; $0165 : $c9


	ld l, l                                                  ; $0166 : $6d
	ret                                                  ; $0167 : $c9


	ld a, e                                                  ; $0168 : $7b
	ret                                                  ; $0169 : $c9


	adc a, e                                                  ; $016a : $8b
	ret                                                  ; $016b : $c9


	sbc a, e                                                  ; $016c : $9b
	ret                                                  ; $016d : $c9


	xor l                                                  ; $016e : $ad
	ret                                                  ; $016f : $c9


	cp l                                                  ; $0170 : $bd
	ret                                                  ; $0171 : $c9


	call z, $dbc9                                                  ; $0172 : $cc, $c9, $db
	ret                                                  ; $0175 : $c9


	call pe, $fdc9                                                  ; $0176 : $ec, $c9, $fd
	ret                                                  ; $0179 : $c9


	inc c                                                  ; $017a : $0c
	jp z, $ca1c                                                  ; $017b : $ca, $1c, $ca
	inc l                                                  ; $017e : $2c
	jp z, $ca3c                                                  ; $017f : $ca, $3c, $ca
	ld c, h                                                  ; $0182 : $4c
	jp z, $ca5b                                                  ; $0183 : $ca, $5b, $ca
	ld l, l                                                  ; $0186 : $6d
	jp z, $ca7f                                                  ; $0187 : $ca, $7f, $ca
	adc a, l                                                  ; $018a : $8d
	jp z, $ca9c                                                  ; $018b : $ca, $9c, $ca
	xor l                                                  ; $018e : $ad
	jp z, $cabf                                                  ; $018f : $ca, $bf, $ca
	adc a, $ca                                                  ; $0192 : $ce, $ca
	sbc a, $ca                                                  ; $0194 : $de, $ca
	rst $28                                                  ; $0196 : $ef
	jp z, $cafd                                                  ; $0197 : $ca, $fd, $ca
	ld c, $cb                                                  ; $019a : $0e, $cb
	rra                                                  ; $019c : $1f
	sra a                                                  ; $019d : $cb, $2f
	bit 0, c                                                  ; $019f : $cb, $41
	bit 1, (hl)                                                  ; $01a1 : $cb, $4e
	bit 3, (hl)                                                  ; $01a3 : $cb, $5e
	bit 5, l                                                  ; $01a5 : $cb, $6d
	bit 7, (hl)                                                  ; $01a7 : $cb, $7e
	res 1, (hl)                                                  ; $01a9 : $cb, $8e
	res 3, a                                                  ; $01ab : $cb, $9f
	res 6, b                                                  ; $01ad : $cb, $b0
	set 0, c                                                  ; $01af : $cb, $c1
	set 2, d                                                  ; $01b1 : $cb, $d2
	set 4, e                                                  ; $01b3 : $cb, $e3
	set 6, e                                                  ; $01b5 : $cb, $f3
	rlc l                                                  ; $01b7 : $cb, $05
	call z, $cc16                                                  ; $01b9 : $cc, $16, $cc
	inc h                                                  ; $01bc : $24
	call z, $cc36                                                  ; $01bd : $cc, $36, $cc
	ld b, a                                                  ; $01c0 : $47
	call z, $cc58                                                  ; $01c1 : $cc, $58, $cc
	ld l, b                                                  ; $01c4 : $68

Call_07_01c5:
	call z, $cc78                                                  ; $01c5 : $cc, $78, $cc
	adc a, b                                                  ; $01c8 : $88
	call z, $cc96                                                  ; $01c9 : $cc, $96, $cc
	and a                                                  ; $01cc : $a7
	call z, $ccb9                                                  ; $01cd : $cc, $b9, $cc
	ret z                                                  ; $01d0 : $c8

	call z, $ccd6                                                  ; $01d1 : $cc, $d6, $cc
	ret pe                                                  ; $01d4 : $e8

	call z, $ccf8                                                  ; $01d5 : $cc, $f8, $cc
	add hl, bc                                                  ; $01d8 : $09
	call $cd1a                                                  ; $01d9 : $cd, $1a, $cd
	dec hl                                                  ; $01dc : $2b
	call $cd3c                                                  ; $01dd : $cd, $3c, $cd
	ld c, (hl)                                                  ; $01e0 : $4e
	call $cd5e                                                  ; $01e1 : $cd, $5e, $cd
	ld l, a                                                  ; $01e4 : $6f
	call $cd7f                                                  ; $01e5 : $cd, $7f, $cd
	adc a, (hl)                                                  ; $01e8 : $8e
	call $cd9e                                                  ; $01e9 : $cd, $9e, $cd
	xor a                                                  ; $01ec : $af
	call $cdbf                                                  ; $01ed : $cd, $bf, $cd
	ret nc                                                  ; $01f0 : $d0

	call $cde2                                                  ; $01f1 : $cd, $e2, $cd
	jp p, $02cd                                                  ; $01f4 : $f2, $cd, $02
	adc a, $14                                                  ; $01f7 : $ce, $14
	adc a, $23                                                  ; $01f9 : $ce, $23
	adc a, $34                                                  ; $01fb : $ce, $34
	adc a, $45                                                  ; $01fd : $ce, $45
	adc a, $54                                                  ; $01ff : $ce, $54
	adc a, $63                                                  ; $0201 : $ce, $63
	adc a, $73                                                  ; $0203 : $ce, $73
	adc a, $84                                                  ; $0205 : $ce, $84
	adc a, $96                                                  ; $0207 : $ce, $96
	adc a, $a5                                                  ; $0209 : $ce, $a5
	adc a, $b4                                                  ; $020b : $ce, $b4
	adc a, $c3                                                  ; $020d : $ce, $c3
	adc a, $d3                                                  ; $020f : $ce, $d3
	adc a, $e5                                                  ; $0211 : $ce, $e5
	adc a, $f6                                                  ; $0213 : $ce, $f6
	adc a, $05                                                  ; $0215 : $ce, $05
	rst $08                                                  ; $0217 : $cf
	inc d                                                  ; $0218 : $14
	rst $08                                                  ; $0219 : $cf
	dec h                                                  ; $021a : $25
	rst $08                                                  ; $021b : $cf
	ld (hl), $cf                                                  ; $021c : $36, $cf
	ld b, h                                                  ; $021e : $44
	rst $08                                                  ; $021f : $cf
	ld d, e                                                  ; $0220 : $53
	rst $08                                                  ; $0221 : $cf
	ld h, d                                                  ; $0222 : $62
	rst $08                                                  ; $0223 : $cf
	ld (hl), c                                                  ; $0224 : $71
	rst $08                                                  ; $0225 : $cf
	add a, d                                                  ; $0226 : $82
	rst $08                                                  ; $0227 : $cf
	sub e                                                  ; $0228 : $93
	rst $08                                                  ; $0229 : $cf
	and e                                                  ; $022a : $a3
	rst $08                                                  ; $022b : $cf
	or c                                                  ; $022c : $b1
	rst $08                                                  ; $022d : $cf
	pop bc                                                  ; $022e : $c1

br_07_022f:
	rst $08                                                  ; $022f : $cf
	jp nc, $e2cf                                                  ; $0230 : $d2, $cf, $e2
	rst $08                                                  ; $0233 : $cf
	rst $28                                                  ; $0234 : $ef
	rst $08                                                  ; $0235 : $cf
	nop                                                  ; $0236 : $00
	ret nc                                                  ; $0237 : $d0

	dec c                                                  ; $0238 : $0d
	ret nc                                                  ; $0239 : $d0

	rra                                                  ; $023a : $1f
	ret nc                                                  ; $023b : $d0

	jr nc, -$30                                                  ; $023c : $30, $d0

	ld b, c                                                  ; $023e : $41
	ret nc                                                  ; $023f : $d0

	ld d, c                                                  ; $0240 : $51
	ret nc                                                  ; $0241 : $d0

	ld h, b                                                  ; $0242 : $60
	ret nc                                                  ; $0243 : $d0

	ld (hl), d                                                  ; $0244 : $72
	ret nc                                                  ; $0245 : $d0

	add a, h                                                  ; $0246 : $84
	ret nc                                                  ; $0247 : $d0

	sub d                                                  ; $0248 : $92
	ret nc                                                  ; $0249 : $d0

	and e                                                  ; $024a : $a3
	ret nc                                                  ; $024b : $d0

	or e                                                  ; $024c : $b3
	ret nc                                                  ; $024d : $d0

	push bc                                                  ; $024e : $c5
	ret nc                                                  ; $024f : $d0

	sub $d0                                                  ; $0250 : $d6, $d0
	call po, $f2d0                                                  ; $0252 : $e4, $d0, $f2
	ret nc                                                  ; $0255 : $d0

	inc b                                                  ; $0256 : $04
	pop de                                                  ; $0257 : $d1
	dec d                                                  ; $0258 : $15
	pop de                                                  ; $0259 : $d1
	ld h, $d1                                                  ; $025a : $26, $d1
	jr c, br_07_022f                                                  ; $025c : $38, $d1

	ld c, b                                                  ; $025e : $48
	pop de                                                  ; $025f : $d1
	ld d, (hl)                                                  ; $0260 : $56
	pop de                                                  ; $0261 : $d1
	ld h, a                                                  ; $0262 : $67
	pop de                                                  ; $0263 : $d1
	ld a, b                                                  ; $0264 : $78
	pop de                                                  ; $0265 : $d1
	adc a, c                                                  ; $0266 : $89
	pop de                                                  ; $0267 : $d1
	sbc a, c                                                  ; $0268 : $99
	pop de                                                  ; $0269 : $d1
	xor e                                                  ; $026a : $ab
	pop de                                                  ; $026b : $d1
	cp e                                                  ; $026c : $bb
	pop de                                                  ; $026d : $d1
	set 2, c                                                  ; $026e : $cb, $d1
	in a, ($d1)                                                  ; $0270 : $db, $d1
	call pe, $fcd1                                                  ; $0272 : $ec, $d1, $fc
	pop de                                                  ; $0275 : $d1
	ld c, $d2                                                  ; $0276 : $0e, $d2
	rra                                                  ; $0278 : $1f
	jp nc, $d22f                                                  ; $0279 : $d2, $2f, $d2
	ccf                                                  ; $027c : $3f
	jp nc, $d251                                                  ; $027d : $d2, $51, $d2
	ld h, d                                                  ; $0280 : $62
	jp nc, $d271                                                  ; $0281 : $d2, $71, $d2
	ld a, a                                                  ; $0284 : $7f
	jp nc, $d28f                                                  ; $0285 : $d2, $8f, $d2
	sbc a, (hl)                                                  ; $0288 : $9e
	jp nc, $d2ae                                                  ; $0289 : $d2, $ae, $d2
	cp a                                                  ; $028c : $bf
	jp nc, $d2cf                                                  ; $028d : $d2, $cf, $d2
	sbc a, $d2                                                  ; $0290 : $de, $d2
	rst $28                                                  ; $0292 : $ef
	jp nc, $d2fe                                                  ; $0293 : $d2, $fe, $d2
	rrca                                                  ; $0296 : $0f
	out ($1d), a                                                  ; $0297 : $d3, $1d
	out ($2c), a                                                  ; $0299 : $d3, $2c
	out ($3c), a                                                  ; $029b : $d3, $3c
	out ($4b), a                                                  ; $029d : $d3, $4b
	out ($5b), a                                                  ; $029f : $d3, $5b
	out ($6d), a                                                  ; $02a1 : $d3, $6d
	out ($7d), a                                                  ; $02a3 : $d3, $7d
	out ($8f), a                                                  ; $02a5 : $d3, $8f
	out ($a0), a                                                  ; $02a7 : $d3, $a0
	out ($b0), a                                                  ; $02a9 : $d3, $b0
	out ($c1), a                                                  ; $02ab : $d3, $c1
	out ($d2), a                                                  ; $02ad : $d3, $d2
	out ($df), a                                                  ; $02af : $d3, $df
	out ($f0), a                                                  ; $02b1 : $d3, $f0
	out ($01), a                                                  ; $02b3 : $d3, $01
	call nc, $d412                                                  ; $02b5 : $d4, $12, $d4
	ld sp, $322f                                                  ; $02b8 : $31, $2f, $32
	dec hl                                                  ; $02bb : $2b
	ld sp, $322f                                                  ; $02bc : $31, $2f, $32
	ld sp, $3224                                                  ; $02bf : $31, $24, $32
	cpl                                                  ; $02c2 : $2f
	inc sp                                                  ; $02c3 : $33
	dec l                                                  ; $02c4 : $2d
	ld sp, $362f                                                  ; $02c5 : $31, $2f, $36
	ld sp, $322f                                                  ; $02c8 : $31, $2f, $32
	inc h                                                  ; $02cb : $24
	jr c, $2f                                                  ; $02cc : $38, $2f

	add hl, sp                                                  ; $02ce : $39
	dec l                                                  ; $02cf : $2d
	inc sp                                                  ; $02d0 : $33
	cpl                                                  ; $02d1 : $2f
	scf                                                  ; $02d2 : $37
	ld ($2f39), a                                                  ; $02d3 : $32, $39, $2f
	ld (hl), $33                                                  ; $02d6 : $36, $33
	inc h                                                  ; $02d8 : $24
	dec (hl)                                                  ; $02d9 : $35
	cpl                                                  ; $02da : $2f
	jr c, br_07_0308                                                  ; $02db : $38, $2b

	ld sp, $352f                                                  ; $02dd : $31, $2f, $35
	inc sp                                                  ; $02e0 : $33
	inc sp                                                  ; $02e1 : $33
	cpl                                                  ; $02e2 : $2f
	inc (hl)                                                  ; $02e3 : $34
	jr nc, br_07_030a                                                  ; $02e4 : $30, $24

	ld sp, $342f                                                  ; $02e6 : $31, $2f, $34
	dec hl                                                  ; $02e9 : $2b
	inc sp                                                  ; $02ea : $33
	cpl                                                  ; $02eb : $2f
	inc (hl)                                                  ; $02ec : $34
	ld sp, $3224                                                  ; $02ed : $31, $24, $32
	cpl                                                  ; $02f0 : $2f
	dec (hl)                                                  ; $02f1 : $35
	dec l                                                  ; $02f2 : $2d
	ld sp, $332f                                                  ; $02f3 : $31, $2f, $33
	ld sp, $312f                                                  ; $02f6 : $31, $2f, $31
	dec (hl)                                                  ; $02f9 : $35
	inc h                                                  ; $02fa : $24
	ld ($372f), a                                                  ; $02fb : $32, $2f, $37
	dec hl                                                  ; $02fe : $2b
	inc (hl)                                                  ; $02ff : $34
	cpl                                                  ; $0300 : $2f
	add hl, sp                                                  ; $0301 : $39
	inc (hl)                                                  ; $0302 : $34
	ld (hl), $2f                                                  ; $0303 : $36, $2f
	ld (hl), $33                                                  ; $0305 : $36, $33
	inc h                                                  ; $0307 : $24

br_07_0308:
	inc sp                                                  ; $0308 : $33
	cpl                                                  ; $0309 : $2f

br_07_030a:
	jr c, $2d                                                  ; $030a : $38, $2d

	ld ($372f), a                                                  ; $030c : $32, $2f, $37
	dec (hl)                                                  ; $030f : $35
	cpl                                                  ; $0310 : $2f
	dec (hl)                                                  ; $0311 : $35
	ld (hl), $24                                                  ; $0312 : $36, $24
	scf                                                  ; $0314 : $37
	cpl                                                  ; $0315 : $2f
	add hl, sp                                                  ; $0316 : $39
	dec l                                                  ; $0317 : $2d
	inc sp                                                  ; $0318 : $33
	cpl                                                  ; $0319 : $2f
	dec (hl)                                                  ; $031a : $35
	jr c, br_07_034c                                                  ; $031b : $38, $2f

	inc (hl)                                                  ; $031d : $34
	dec (hl)                                                  ; $031e : $35
	inc h                                                  ; $031f : $24
	inc sp                                                  ; $0320 : $33
	cpl                                                  ; $0321 : $2f
	inc (hl)                                                  ; $0322 : $34
	dec hl                                                  ; $0323 : $2b
	ld sp, $362f                                                  ; $0324 : $31, $2f, $36
	ld sp, $2f31                                                  ; $0327 : $31, $31, $2f
	ld sp, $2432                                                  ; $032a : $31, $32, $24
	dec (hl)                                                  ; $032d : $35
	cpl                                                  ; $032e : $2f
	add hl, sp                                                  ; $032f : $39
	dec hl                                                  ; $0330 : $2b
	inc sp                                                  ; $0331 : $33
	cpl                                                  ; $0332 : $2f
	jr c, br_07_036b                                                  ; $0333 : $38, $36

	scf                                                  ; $0335 : $37
	cpl                                                  ; $0336 : $2f
	scf                                                  ; $0337 : $37
	ld ($3124), a                                                  ; $0338 : $32, $24, $31
	cpl                                                  ; $033b : $2f
	ld ($312d), a                                                  ; $033c : $32, $2d, $31
	cpl                                                  ; $033f : $2f
	inc sp                                                  ; $0340 : $33
	ld sp, $362f                                                  ; $0341 : $31, $2f, $36
	inc h                                                  ; $0344 : $24
	ld sp, $352f                                                  ; $0345 : $31, $2f, $35
	dec hl                                                  ; $0348 : $2b
	inc (hl)                                                  ; $0349 : $34
	cpl                                                  ; $034a : $2f
	scf                                                  ; $034b : $37

br_07_034c:
	ld ($2f37), a                                                  ; $034c : $32, $37, $2f
	inc sp                                                  ; $034f : $33
	dec (hl)                                                  ; $0350 : $35
	inc h                                                  ; $0351 : $24
	inc (hl)                                                  ; $0352 : $34
	cpl                                                  ; $0353 : $2f
	dec (hl)                                                  ; $0354 : $35
	dec l                                                  ; $0355 : $2d
	ld ($352f), a                                                  ; $0356 : $32, $2f, $35
	ld ($352f), a                                                  ; $0359 : $32, $2f, $35
	inc h                                                  ; $035c : $24
	inc sp                                                  ; $035d : $33
	cpl                                                  ; $035e : $2f
	scf                                                  ; $035f : $37
	dec l                                                  ; $0360 : $2d
	ld sp, $332f                                                  ; $0361 : $31, $2f, $33
	ld ($322f), a                                                  ; $0364 : $32, $2f, $32
	ld sp, $3524                                                  ; $0367 : $31, $24, $35
	cpl                                                  ; $036a : $2f

br_07_036b:
	ld (hl), $2b                                                  ; $036b : $36, $2b
	ld sp, $382f                                                  ; $036d : $31, $2f, $38
	ld ($2f33), a                                                  ; $0370 : $32, $33, $2f
	ld ($2434), a                                                  ; $0373 : $32, $34, $24
	ld sp, $322f                                                  ; $0376 : $31, $2f, $32
	dec hl                                                  ; $0379 : $2b
	inc (hl)                                                  ; $037a : $34
	cpl                                                  ; $037b : $2f
	add hl, sp                                                  ; $037c : $39
	ld sp, $2f37                                                  ; $037d : $31, $37, $2f
	ld sp, $2438                                                  ; $0380 : $31, $38, $24
	ld ($332f), a                                                  ; $0383 : $32, $2f, $33
	dec l                                                  ; $0386 : $2d
	inc sp                                                  ; $0387 : $33
	cpl                                                  ; $0388 : $2f
	scf                                                  ; $0389 : $37
	dec (hl)                                                  ; $038a : $35
	cpl                                                  ; $038b : $2f
	ld ($2431), a                                                  ; $038c : $32, $31, $24
	ld sp, $342f                                                  ; $038f : $31, $2f, $34
	dec hl                                                  ; $0392 : $2b
	ld ($352f), a                                                  ; $0393 : $32, $2f, $35
	ld sp, $2f33                                                  ; $0396 : $31, $33, $2f
	ld ($2430), a                                                  ; $0399 : $32, $30, $24
	ld sp, $342f                                                  ; $039c : $31, $2f, $34
	dec l                                                  ; $039f : $2d
	ld ($392f), a                                                  ; $03a0 : $32, $2f, $39
	ld sp, $332f                                                  ; $03a3 : $31, $2f, $33
	ld (hl), $24                                                  ; $03a6 : $36, $24
	ld ($352f), a                                                  ; $03a8 : $32, $2f, $35
	dec l                                                  ; $03ab : $2d
	ld sp, $372f                                                  ; $03ac : $31, $2f, $37
	add hl, sp                                                  ; $03af : $39
	cpl                                                  ; $03b0 : $2f
	inc sp                                                  ; $03b1 : $33
	dec (hl)                                                  ; $03b2 : $35
	inc h                                                  ; $03b3 : $24
	inc sp                                                  ; $03b4 : $33
	cpl                                                  ; $03b5 : $2f
	jr c, $2b                                                  ; $03b6 : $38, $2b

	inc sp                                                  ; $03b8 : $33
	cpl                                                  ; $03b9 : $2f
	dec (hl)                                                  ; $03ba : $35
	inc sp                                                  ; $03bb : $33
	add hl, sp                                                  ; $03bc : $39
	cpl                                                  ; $03bd : $2f
	inc (hl)                                                  ; $03be : $34
	jr nc, br_07_03e5                                                  ; $03bf : $30, $24

	ld ($332f), a                                                  ; $03c1 : $32, $2f, $33
	dec hl                                                  ; $03c4 : $2b
	ld ($392f), a                                                  ; $03c5 : $32, $2f, $39
	jr c, $2f                                                  ; $03c8 : $38, $2f

	add hl, sp                                                  ; $03ca : $39
	inc h                                                  ; $03cb : $24
	scf                                                  ; $03cc : $37
	cpl                                                  ; $03cd : $2f
	jr c, br_07_03fd                                                  ; $03ce : $38, $2d

	inc sp                                                  ; $03d0 : $33
	cpl                                                  ; $03d1 : $2f
	inc (hl)                                                  ; $03d2 : $34
	ld sp, $382f                                                  ; $03d3 : $31, $2f, $38
	inc h                                                  ; $03d6 : $24
	dec (hl)                                                  ; $03d7 : $35
	cpl                                                  ; $03d8 : $2f
	jr c, $2b                                                  ; $03d9 : $38, $2b

	ld sp, $392f                                                  ; $03db : $31, $2f, $39
	dec (hl)                                                  ; $03de : $35
	inc sp                                                  ; $03df : $33
	cpl                                                  ; $03e0 : $2f
	scf                                                  ; $03e1 : $37
	ld ($3124), a                                                  ; $03e2 : $32, $24, $31

br_07_03e5:
	cpl                                                  ; $03e5 : $2f
	scf                                                  ; $03e6 : $37
	dec l                                                  ; $03e7 : $2d
	ld sp, $392f                                                  ; $03e8 : $31, $2f, $39
	ld ($362f), a                                                  ; $03eb : $32, $2f, $36
	inc sp                                                  ; $03ee : $33
	inc h                                                  ; $03ef : $24
	scf                                                  ; $03f0 : $37
	cpl                                                  ; $03f1 : $2f
	add hl, sp                                                  ; $03f2 : $39
	dec l                                                  ; $03f3 : $2d
	inc sp                                                  ; $03f4 : $33
	cpl                                                  ; $03f5 : $2f
	scf                                                  ; $03f6 : $37
	ld ($2f32), a                                                  ; $03f7 : $32, $32, $2f
	ld (hl), $33                                                  ; $03fa : $36, $33
	inc h                                                  ; $03fc : $24

br_07_03fd:
	dec (hl)                                                  ; $03fd : $35
	cpl                                                  ; $03fe : $2f
	ld (hl), $2b                                                  ; $03ff : $36, $2b
	ld sp, $362f                                                  ; $0401 : $31, $2f, $36
	ld sp, $3324                                                  ; $0404 : $31, $24, $33
	cpl                                                  ; $0407 : $2f
	scf                                                  ; $0408 : $37
	dec hl                                                  ; $0409 : $2b
	dec (hl)                                                  ; $040a : $35
	cpl                                                  ; $040b : $2f
	add hl, sp                                                  ; $040c : $39
	ld (hl), $32                                                  ; $040d : $36, $32
	cpl                                                  ; $040f : $2f
	ld (hl), $33                                                  ; $0410 : $36, $33
	inc h                                                  ; $0412 : $24
	dec (hl)                                                  ; $0413 : $35
	cpl                                                  ; $0414 : $2f
	ld (hl), $2d                                                  ; $0415 : $36, $2d
	inc sp                                                  ; $0417 : $33
	cpl                                                  ; $0418 : $2f
	inc (hl)                                                  ; $0419 : $34
	ld sp, $312f                                                  ; $041a : $31, $2f, $31
	ld ($3224), a                                                  ; $041d : $32, $24, $32
	cpl                                                  ; $0420 : $2f
	inc sp                                                  ; $0421 : $33
	dec hl                                                  ; $0422 : $2b
	ld sp, $342f                                                  ; $0423 : $31, $2f, $34
	ld sp, $2f31                                                  ; $0426 : $31, $31, $2f
	ld sp, $2432                                                  ; $0429 : $31, $32, $24
	dec (hl)                                                  ; $042c : $35
	cpl                                                  ; $042d : $2f
	scf                                                  ; $042e : $37
	dec l                                                  ; $042f : $2d
	ld ($332f), a                                                  ; $0430 : $32, $2f, $33
	ld sp, $322f                                                  ; $0433 : $31, $2f, $32
	ld sp, $3124                                                  ; $0436 : $31, $24, $31
	cpl                                                  ; $0439 : $2f
	inc sp                                                  ; $043a : $33
	dec l                                                  ; $043b : $2d
	ld sp, $362f                                                  ; $043c : $31, $2f, $36
	ld sp, $362f                                                  ; $043f : $31, $2f, $36
	inc h                                                  ; $0442 : $24
	ld ($392f), a                                                  ; $0443 : $32, $2f, $39
	dec hl                                                  ; $0446 : $2b
	ld ($352f), a                                                  ; $0447 : $32, $2f, $35
	ld ($2f38), a                                                  ; $044a : $32, $38, $2f
	inc (hl)                                                  ; $044d : $34
	dec (hl)                                                  ; $044e : $35
	inc h                                                  ; $044f : $24
	ld sp, $362f                                                  ; $0450 : $31, $2f, $36
	dec hl                                                  ; $0453 : $2b
	inc (hl)                                                  ; $0454 : $34
	cpl                                                  ; $0455 : $2f
	dec (hl)                                                  ; $0456 : $35
	ld ($2f39), a                                                  ; $0457 : $32, $39, $2f
	inc sp                                                  ; $045a : $33
	jr nc, br_07_0481                                                  ; $045b : $30, $24

	inc sp                                                  ; $045d : $33
	cpl                                                  ; $045e : $2f
	inc (hl)                                                  ; $045f : $34
	dec l                                                  ; $0460 : $2d
	inc sp                                                  ; $0461 : $33
	cpl                                                  ; $0462 : $2f
	scf                                                  ; $0463 : $37
	add hl, sp                                                  ; $0464 : $39
	cpl                                                  ; $0465 : $2f
	ld ($2438), a                                                  ; $0466 : $32, $38, $24
	dec (hl)                                                  ; $0469 : $35
	cpl                                                  ; $046a : $2f
	jr c, $2b                                                  ; $046b : $38, $2b

	ld ($392f), a                                                  ; $046d : $32, $2f, $39
	ld (hl), $31                                                  ; $0470 : $36, $31
	cpl                                                  ; $0472 : $2f
	scf                                                  ; $0473 : $37
	ld ($3524), a                                                  ; $0474 : $32, $24, $35
	cpl                                                  ; $0477 : $2f
	jr c, br_07_04a7                                                  ; $0478 : $38, $2d

	inc sp                                                  ; $047a : $33
	cpl                                                  ; $047b : $2f
	scf                                                  ; $047c : $37
	ld sp, $2f31                                                  ; $047d : $31, $31, $2f
	dec (hl)                                                  ; $0480 : $35

br_07_0481:
	ld (hl), $24                                                  ; $0481 : $36, $24
	dec (hl)                                                  ; $0483 : $35
	cpl                                                  ; $0484 : $2f
	add hl, sp                                                  ; $0485 : $39
	dec l                                                  ; $0486 : $2d
	dec (hl)                                                  ; $0487 : $35
	cpl                                                  ; $0488 : $2f
	add hl, sp                                                  ; $0489 : $39
	jr nc, $24                                                  ; $048a : $30, $24

	ld ($372f), a                                                  ; $048c : $32, $2f, $37
	dec hl                                                  ; $048f : $2b
	inc sp                                                  ; $0490 : $33
	cpl                                                  ; $0491 : $2f
	jr c, $33                                                  ; $0492 : $38, $33

	scf                                                  ; $0494 : $37
	cpl                                                  ; $0495 : $2f
	dec (hl)                                                  ; $0496 : $35
	ld (hl), $24                                                  ; $0497 : $36, $24
	ld sp, $332f                                                  ; $0499 : $31, $2f, $33
	dec hl                                                  ; $049c : $2b
	inc sp                                                  ; $049d : $33
	cpl                                                  ; $049e : $2f
	dec (hl)                                                  ; $049f : $35
	ld sp, $2f34                                                  ; $04a0 : $31, $34, $2f
	ld sp, $2435                                                  ; $04a3 : $31, $35, $24
	dec (hl)                                                  ; $04a6 : $35

br_07_04a7:
	cpl                                                  ; $04a7 : $2f
	ld (hl), $2d                                                  ; $04a8 : $36, $2d
	dec (hl)                                                  ; $04aa : $35
	cpl                                                  ; $04ab : $2f
	jr c, br_07_04e3                                                  ; $04ac : $38, $35

	cpl                                                  ; $04ae : $2f
	ld ($2434), a                                                  ; $04af : $32, $34, $24
	ld sp, $382f                                                  ; $04b2 : $31, $2f, $38
	dec hl                                                  ; $04b5 : $2b
	dec (hl)                                                  ; $04b6 : $35
	cpl                                                  ; $04b7 : $2f
	jr c, br_07_04ed                                                  ; $04b8 : $38, $33

	cpl                                                  ; $04ba : $2f
	inc (hl)                                                  ; $04bb : $34
	inc h                                                  ; $04bc : $24
	ld sp, $322f                                                  ; $04bd : $31, $2f, $32
	dec l                                                  ; $04c0 : $2d
	ld ($392f), a                                                  ; $04c1 : $32, $2f, $39
	dec (hl)                                                  ; $04c4 : $35
	cpl                                                  ; $04c5 : $2f
	ld sp, $2438                                                  ; $04c6 : $31, $38, $24
	inc (hl)                                                  ; $04c9 : $34
	cpl                                                  ; $04ca : $2f
	scf                                                  ; $04cb : $37
	dec l                                                  ; $04cc : $2d
	ld sp, $352f                                                  ; $04cd : $31, $2f, $35
	ld sp, $2f33                                                  ; $04d0 : $31, $33, $2f
	inc sp                                                  ; $04d3 : $33
	dec (hl)                                                  ; $04d4 : $35
	inc h                                                  ; $04d5 : $24
	dec (hl)                                                  ; $04d6 : $35
	cpl                                                  ; $04d7 : $2f
	add hl, sp                                                  ; $04d8 : $39
	dec hl                                                  ; $04d9 : $2b
	ld sp, $362f                                                  ; $04da : $31, $2f, $36
	ld sp, $2f33                                                  ; $04dd : $31, $33, $2f
	ld sp, $2438                                                  ; $04e0 : $31, $38, $24

br_07_04e3:
	inc sp                                                  ; $04e3 : $33
	cpl                                                  ; $04e4 : $2f
	scf                                                  ; $04e5 : $37
	dec hl                                                  ; $04e6 : $2b
	inc sp                                                  ; $04e7 : $33
	cpl                                                  ; $04e8 : $2f
	jr c, $34                                                  ; $04e9 : $38, $34

Call_07_04eb:
	dec (hl)                                                  ; $04eb : $35
	cpl                                                  ; $04ec : $2f

br_07_04ed:
	dec (hl)                                                  ; $04ed : $35
	ld (hl), $24                                                  ; $04ee : $36, $24
	inc (hl)                                                  ; $04f0 : $34
	cpl                                                  ; $04f1 : $2f
	dec (hl)                                                  ; $04f2 : $35
	dec l                                                  ; $04f3 : $2d
	dec (hl)                                                  ; $04f4 : $35
	cpl                                                  ; $04f5 : $2f
	add hl, sp                                                  ; $04f6 : $39
	ld sp, $2f31                                                  ; $04f7 : $31, $31, $2f
	inc (hl)                                                  ; $04fa : $34
	dec (hl)                                                  ; $04fb : $35
	inc h                                                  ; $04fc : $24
	ld ($352f), a                                                  ; $04fd : $32, $2f, $35
	dec hl                                                  ; $0500 : $2b
	ld sp, $362f                                                  ; $0501 : $31, $2f, $36
	ld sp, $2f37                                                  ; $0504 : $31, $37, $2f
	inc sp                                                  ; $0507 : $33
	jr nc, br_07_052e                                                  ; $0508 : $30, $24

	dec (hl)                                                  ; $050a : $35
	cpl                                                  ; $050b : $2f
	jr c, br_07_053b                                                  ; $050c : $38, $2d

	ld sp, $332f                                                  ; $050e : $31, $2f, $33
	scf                                                  ; $0511 : $37
	cpl                                                  ; $0512 : $2f
	ld ($2434), a                                                  ; $0513 : $32, $34, $24
	jr c, $2f                                                  ; $0516 : $38, $2f

	add hl, sp                                                  ; $0518 : $39

Call_07_0519:
	dec l                                                  ; $0519 : $2d
	ld ($332f), a                                                  ; $051a : $32, $2f, $33
	ld ($392f), a                                                  ; $051d : $32, $2f, $39
	inc h                                                  ; $0520 : $24
	dec (hl)                                                  ; $0521 : $35
	cpl                                                  ; $0522 : $2f
	add hl, sp                                                  ; $0523 : $39
	dec hl                                                  ; $0524 : $2b
	ld ($372f), a                                                  ; $0525 : $32, $2f, $37
	dec (hl)                                                  ; $0528 : $35
	inc sp                                                  ; $0529 : $33
	cpl                                                  ; $052a : $2f
	ld (hl), $33                                                  ; $052b : $36, $33
	inc h                                                  ; $052d : $24

br_07_052e:
	ld sp, $352f                                                  ; $052e : $31, $2f, $35
	dec hl                                                  ; $0531 : $2b
	ld ($372f), a                                                  ; $0532 : $32, $2f, $37
	ld sp, $2f37                                                  ; $0535 : $31, $37, $2f
	inc sp                                                  ; $0538 : $33
	dec (hl)                                                  ; $0539 : $35
	inc h                                                  ; $053a : $24

br_07_053b:
	ld ($332f), a                                                  ; $053b : $32, $2f, $33
	dec l                                                  ; $053e : $2d
	inc (hl)                                                  ; $053f : $34
	cpl                                                  ; $0540 : $2f
	scf                                                  ; $0541 : $37
	ld ($322f), a                                                  ; $0542 : $32, $2f, $32
	ld sp, $3124                                                  ; $0545 : $31, $24, $31
	cpl                                                  ; $0548 : $2f
	inc sp                                                  ; $0549 : $33
	dec hl                                                  ; $054a : $2b
	ld sp, $332f                                                  ; $054b : $31, $2f, $33
	ld ($332f), a                                                  ; $054e : $32, $2f, $33
	inc h                                                  ; $0551 : $24
	ld ($372f), a                                                  ; $0552 : $32, $2f, $37
	dec l                                                  ; $0555 : $2d
	ld sp, $342f                                                  ; $0556 : $31, $2f, $34
	ld sp, $322f                                                  ; $0559 : $31, $2f, $32
	jr c, br_07_0582                                                  ; $055c : $38, $24

	dec (hl)                                                  ; $055e : $35
	cpl                                                  ; $055f : $2f
	ld (hl), $2d                                                  ; $0560 : $36, $2d
	dec (hl)                                                  ; $0562 : $35
	cpl                                                  ; $0563 : $2f
	add hl, sp                                                  ; $0564 : $39
	dec (hl)                                                  ; $0565 : $35
	cpl                                                  ; $0566 : $2f
	ld sp, $2438                                                  ; $0567 : $31, $38, $24
	ld sp, $342f                                                  ; $056a : $31, $2f, $34
	dec hl                                                  ; $056d : $2b

Jump_07_056e:
	ld sp, $322f                                                  ; $056e : $31, $2f, $32
	inc sp                                                  ; $0571 : $33
	cpl                                                  ; $0572 : $2f
	inc (hl)                                                  ; $0573 : $34
	inc h                                                  ; $0574 : $24
	inc sp                                                  ; $0575 : $33
	cpl                                                  ; $0576 : $2f
	jr c, $2b                                                  ; $0577 : $38, $2b

	ld ($352f), a                                                  ; $0579 : $32, $2f, $35
	inc sp                                                  ; $057c : $33
	ld sp, $342f                                                  ; $057d : $31, $2f, $34
	jr nc, br_07_05a6                                                  ; $0580 : $30, $24

br_07_0582:
	ld (hl), $2f                                                  ; $0582 : $36, $2f
	scf                                                  ; $0584 : $37
	dec l                                                  ; $0585 : $2d
	ld ($352f), a                                                  ; $0586 : $32, $2f, $35
	ld sp, $2f36                                                  ; $0589 : $31, $36, $2f
	inc sp                                                  ; $058c : $33
	dec (hl)                                                  ; $058d : $35
	inc h                                                  ; $058e : $24
	ld sp, $392f                                                  ; $058f : $31, $2f, $39
	dec hl                                                  ; $0592 : $2b
	dec (hl)                                                  ; $0593 : $35
	cpl                                                  ; $0594 : $2f
	ld (hl), $31                                                  ; $0595 : $36, $31
	scf                                                  ; $0597 : $37
	cpl                                                  ; $0598 : $2f
	ld sp, $2438                                                  ; $0599 : $31, $38, $24
	scf                                                  ; $059c : $37
	cpl                                                  ; $059d : $2f
	jr c, br_07_05cd                                                  ; $059e : $38, $2d

	inc sp                                                  ; $05a0 : $33
	cpl                                                  ; $05a1 : $2f
	dec (hl)                                                  ; $05a2 : $35
	ld sp, $2f31                                                  ; $05a3 : $31, $31, $2f

br_07_05a6:
	inc (hl)                                                  ; $05a6 : $34
	jr nc, br_07_05cd                                                  ; $05a7 : $30, $24

	ld sp, $322f                                                  ; $05a9 : $31, $2f, $32
	dec l                                                  ; $05ac : $2d
	inc sp                                                  ; $05ad : $33
	cpl                                                  ; $05ae : $2f
	scf                                                  ; $05af : $37
	ld sp, $312f                                                  ; $05b0 : $31, $2f, $31
	inc (hl)                                                  ; $05b3 : $34
	inc h                                                  ; $05b4 : $24
	inc sp                                                  ; $05b5 : $33
	cpl                                                  ; $05b6 : $2f
	inc (hl)                                                  ; $05b7 : $34
	dec hl                                                  ; $05b8 : $2b
	ld sp, $362f                                                  ; $05b9 : $31, $2f, $36
	ld sp, $2f31                                                  ; $05bc : $31, $31, $2f
	ld sp, $2432                                                  ; $05bf : $31, $32, $24
	ld ($392f), a                                                  ; $05c2 : $32, $2f, $39
	dec hl                                                  ; $05c5 : $2b
	inc sp                                                  ; $05c6 : $33
	cpl                                                  ; $05c7 : $2f
	dec (hl)                                                  ; $05c8 : $35
	inc sp                                                  ; $05c9 : $33
	scf                                                  ; $05ca : $37
	cpl                                                  ; $05cb : $2f
	inc (hl)                                                  ; $05cc : $34

br_07_05cd:
	dec (hl)                                                  ; $05cd : $35
	inc h                                                  ; $05ce : $24
	inc sp                                                  ; $05cf : $33
	cpl                                                  ; $05d0 : $2f
	inc (hl)                                                  ; $05d1 : $34
	dec l                                                  ; $05d2 : $2d
	inc (hl)                                                  ; $05d3 : $34
	cpl                                                  ; $05d4 : $2f
	scf                                                  ; $05d5 : $37
	dec (hl)                                                  ; $05d6 : $35
	cpl                                                  ; $05d7 : $2f
	ld ($2438), a                                                  ; $05d8 : $32, $38, $24
	ld ($352f), a                                                  ; $05db : $32, $2f, $35
	dec hl                                                  ; $05de : $2b
	inc sp                                                  ; $05df : $33
	cpl                                                  ; $05e0 : $2f
	scf                                                  ; $05e1 : $37
	ld ($2f39), a                                                  ; $05e2 : $32, $39, $2f

Call_07_05e5:
	inc sp                                                  ; $05e5 : $33
	dec (hl)                                                  ; $05e6 : $35
	inc h                                                  ; $05e7 : $24
	ld sp, $332f                                                  ; $05e8 : $31, $2f, $33
	dec l                                                  ; $05eb : $2d
	ld sp, $342f                                                  ; $05ec : $31, $2f, $34
	ld sp, $312f                                                  ; $05ef : $31, $2f, $31
	ld ($3424), a                                                  ; $05f2 : $32, $24, $34
	cpl                                                  ; $05f5 : $2f
	add hl, sp                                                  ; $05f6 : $39
	dec l                                                  ; $05f7 : $2d
	ld ($372f), a                                                  ; $05f8 : $32, $2f, $37
	ld sp, $2f30                                                  ; $05fb : $31, $30, $2f
	ld (hl), $33                                                  ; $05fe : $36, $33
	inc h                                                  ; $0600 : $24
	ld sp, $322f                                                  ; $0601 : $31, $2f, $32
	dec hl                                                  ; $0604 : $2b
	ld ($352f), a                                                  ; $0605 : $32, $2f, $35
	add hl, sp                                                  ; $0608 : $39
	cpl                                                  ; $0609 : $2f
	ld sp, $2430                                                  ; $060a : $31, $30, $24
	ld sp, $332f                                                  ; $060d : $31, $2f, $33
	dec hl                                                  ; $0610 : $2b
	ld sp, $322f                                                  ; $0611 : $31, $2f, $32
	dec (hl)                                                  ; $0614 : $35
	cpl                                                  ; $0615 : $2f
	ld (hl), $24                                                  ; $0616 : $36, $24
	inc sp                                                  ; $0618 : $33
	cpl                                                  ; $0619 : $2f
	inc (hl)                                                  ; $061a : $34
	dec l                                                  ; $061b : $2d
	inc sp                                                  ; $061c : $33
	cpl                                                  ; $061d : $2f
	dec (hl)                                                  ; $061e : $35
	inc sp                                                  ; $061f : $33
	cpl                                                  ; $0620 : $2f
	ld ($2430), a                                                  ; $0621 : $32, $30, $24
	ld ($372f), a                                                  ; $0624 : $32, $2f, $37
	dec hl                                                  ; $0627 : $2b
	dec (hl)                                                  ; $0628 : $35
	cpl                                                  ; $0629 : $2f
	jr c, $35                                                  ; $062a : $38, $35

	ld sp, $352f                                                  ; $062c : $31, $2f, $35
	ld (hl), $24                                                  ; $062f : $36, $24
	scf                                                  ; $0631 : $37
	cpl                                                  ; $0632 : $2f
	jr c, br_07_0662                                                  ; $0633 : $38, $2d

	dec (hl)                                                  ; $0635 : $35
	cpl                                                  ; $0636 : $2f
	ld (hl), $31                                                  ; $0637 : $36, $31
	cpl                                                  ; $0639 : $2f
	ld ($2434), a                                                  ; $063a : $32, $34, $24
	ld ($352f), a                                                  ; $063d : $32, $2f, $35
	dec l                                                  ; $0640 : $2d
	inc sp                                                  ; $0641 : $33
	cpl                                                  ; $0642 : $2f
	jr c, br_07_0676                                                  ; $0643 : $38, $31

	cpl                                                  ; $0645 : $2f
	inc (hl)                                                  ; $0646 : $34
	jr nc, $24                                                  ; $0647 : $30, $24

	ld sp, $342f                                                  ; $0649 : $31, $2f, $34
	dec hl                                                  ; $064c : $2b
	ld sp, $342f                                                  ; $064d : $31, $2f, $34
	ld sp, $322f                                                  ; $0650 : $31, $2f, $32
	inc h                                                  ; $0653 : $24
	inc sp                                                  ; $0654 : $33
	cpl                                                  ; $0655 : $2f
	jr c, $2b                                                  ; $0656 : $38, $2b

	ld ($392f), a                                                  ; $0658 : $32, $2f, $39
	inc (hl)                                                  ; $065b : $34
	inc sp                                                  ; $065c : $33
	cpl                                                  ; $065d : $2f
	scf                                                  ; $065e : $37
	ld ($3724), a                                                  ; $065f : $32, $24, $37

br_07_0662:
	cpl                                                  ; $0662 : $2f
	jr c, $2d                                                  ; $0663 : $38, $2d

	dec (hl)                                                  ; $0665 : $35
	cpl                                                  ; $0666 : $2f
	add hl, sp                                                  ; $0667 : $39
	ld ($2f33), a                                                  ; $0668 : $32, $33, $2f
	scf                                                  ; $066b : $37
	ld ($3324), a                                                  ; $066c : $32, $24, $33
	cpl                                                  ; $066f : $2f
	scf                                                  ; $0670 : $37
	dec hl                                                  ; $0671 : $2b
	inc (hl)                                                  ; $0672 : $34
	cpl                                                  ; $0673 : $2f
	add hl, sp                                                  ; $0674 : $39
	dec (hl)                                                  ; $0675 : $35

br_07_0676:
	dec (hl)                                                  ; $0676 : $35
	cpl                                                  ; $0677 : $2f
	ld (hl), $33                                                  ; $0678 : $36, $33
	inc h                                                  ; $067a : $24
	inc (hl)                                                  ; $067b : $34
	cpl                                                  ; $067c : $2f
	add hl, sp                                                  ; $067d : $39
	dec l                                                  ; $067e : $2d
	ld ($372f), a                                                  ; $067f : $32, $2f, $37
	ld sp, $2f30                                                  ; $0682 : $31, $30, $2f
	ld (hl), $33                                                  ; $0685 : $36, $33
	inc h                                                  ; $0687 : $24
	ld sp, $322f                                                  ; $0688 : $31, $2f, $32
	dec l                                                  ; $068b : $2d
	ld sp, $352f                                                  ; $068c : $31, $2f, $35
	inc sp                                                  ; $068f : $33
	cpl                                                  ; $0690 : $2f
	ld sp, $2430                                                  ; $0691 : $31, $30, $24
	ld ($332f), a                                                  ; $0694 : $32, $2f, $33
	dec hl                                                  ; $0697 : $2b
	ld sp, $362f                                                  ; $0698 : $31, $2f, $36
	dec (hl)                                                  ; $069b : $35
	cpl                                                  ; $069c : $2f
	ld (hl), $24                                                  ; $069d : $36, $24
	ld sp, $322f                                                  ; $069f : $31, $2f, $32
	dec hl                                                  ; $06a2 : $2b
	inc sp                                                  ; $06a3 : $33
	cpl                                                  ; $06a4 : $2f
	jr c, br_07_06de                                                  ; $06a5 : $38, $37

	cpl                                                  ; $06a7 : $2f
	jr c, $24                                                  ; $06a8 : $38, $24

	scf                                                  ; $06aa : $37
	cpl                                                  ; $06ab : $2f
	add hl, sp                                                  ; $06ac : $39
	dec l                                                  ; $06ad : $2d
	ld ($332f), a                                                  ; $06ae : $32, $2f, $33
	ld sp, $392f                                                  ; $06b1 : $31, $2f, $39
	inc h                                                  ; $06b4 : $24
	inc sp                                                  ; $06b5 : $33
	cpl                                                  ; $06b6 : $2f
	dec (hl)                                                  ; $06b7 : $35
	dec hl                                                  ; $06b8 : $2b
	ld ($372f), a                                                  ; $06b9 : $32, $2f, $37
	inc sp                                                  ; $06bc : $33
	ld sp, $332f                                                  ; $06bd : $31, $2f, $33
	dec (hl)                                                  ; $06c0 : $35
	inc h                                                  ; $06c1 : $24
	ld sp, $332f                                                  ; $06c2 : $31, $2f, $33
	dec l                                                  ; $06c5 : $2d
	ld ($372f), a                                                  ; $06c6 : $32, $2f, $37
	ld sp, $322f                                                  ; $06c9 : $31, $2f, $32
	ld sp, $3524                                                  ; $06cc : $31, $24, $35
	cpl                                                  ; $06cf : $2f
	add hl, sp                                                  ; $06d0 : $39
	dec l                                                  ; $06d1 : $2d
	ld ($352f), a                                                  ; $06d2 : $32, $2f, $35
	scf                                                  ; $06d5 : $37
	cpl                                                  ; $06d6 : $2f
	inc (hl)                                                  ; $06d7 : $34
	dec (hl)                                                  ; $06d8 : $35
	inc h                                                  ; $06d9 : $24
	ld sp, $382f                                                  ; $06da : $31, $2f, $38
	dec hl                                                  ; $06dd : $2b

br_07_06de:
	inc sp                                                  ; $06de : $33
	cpl                                                  ; $06df : $2f
	inc (hl)                                                  ; $06e0 : $34
	scf                                                  ; $06e1 : $37
	cpl                                                  ; $06e2 : $2f
	jr c, br_07_0709                                                  ; $06e3 : $38, $24

	inc (hl)                                                  ; $06e5 : $34
	cpl                                                  ; $06e6 : $2f
	add hl, sp                                                  ; $06e7 : $39
	dec hl                                                  ; $06e8 : $2b
	ld sp, $392f                                                  ; $06e9 : $31, $2f, $39
	dec (hl)                                                  ; $06ec : $35
	cpl                                                  ; $06ed : $2f
	add hl, sp                                                  ; $06ee : $39
	inc h                                                  ; $06ef : $24
	ld ($332f), a                                                  ; $06f0 : $32, $2f, $33
	dec l                                                  ; $06f3 : $2d
	dec (hl)                                                  ; $06f4 : $35
	cpl                                                  ; $06f5 : $2f
	add hl, sp                                                  ; $06f6 : $39
	ld sp, $392f                                                  ; $06f7 : $31, $2f, $39
	inc h                                                  ; $06fa : $24
	ld sp, $362f                                                  ; $06fb : $31, $2f, $36
	dec hl                                                  ; $06fe : $2b
	inc (hl)                                                  ; $06ff : $34
	cpl                                                  ; $0700 : $2f
	scf                                                  ; $0701 : $37
	inc sp                                                  ; $0702 : $33
	ld sp, $342f                                                  ; $0703 : $31, $2f, $34
	ld ($3124), a                                                  ; $0706 : $32, $24, $31

br_07_0709:
	cpl                                                  ; $0709 : $2f
	ld ($312d), a                                                  ; $070a : $32, $2d, $31
	cpl                                                  ; $070d : $2f
	inc sp                                                  ; $070e : $33
	ld sp, $362f                                                  ; $070f : $31, $2f, $36
	inc h                                                  ; $0712 : $24
	inc (hl)                                                  ; $0713 : $34
	cpl                                                  ; $0714 : $2f
	dec (hl)                                                  ; $0715 : $35
	dec l                                                  ; $0716 : $2d
	ld ($332f), a                                                  ; $0717 : $32, $2f, $33
	ld ($312f), a                                                  ; $071a : $32, $2f, $31
	dec (hl)                                                  ; $071d : $35
	inc h                                                  ; $071e : $24
	inc sp                                                  ; $071f : $33
	cpl                                                  ; $0720 : $2f
	scf                                                  ; $0721 : $37
	dec hl                                                  ; $0722 : $2b
	inc sp                                                  ; $0723 : $33
	cpl                                                  ; $0724 : $2f
	jr c, $34                                                  ; $0725 : $38, $34

	dec (hl)                                                  ; $0727 : $35
	cpl                                                  ; $0728 : $2f
	dec (hl)                                                  ; $0729 : $35
	ld (hl), $24                                                  ; $072a : $36, $24
	ld ($372f), a                                                  ; $072c : $32, $2f, $37
	dec hl                                                  ; $072f : $2b
	ld ($352f), a                                                  ; $0730 : $32, $2f, $35
	ld ($2f34), a                                                  ; $0733 : $32, $34, $2f
	inc sp                                                  ; $0736 : $33
	dec (hl)                                                  ; $0737 : $35
	inc h                                                  ; $0738 : $24
	ld ($392f), a                                                  ; $0739 : $32, $2f, $39
	dec l                                                  ; $073c : $2d
	ld sp, $382f                                                  ; $073d : $31, $2f, $38
	scf                                                  ; $0740 : $37
	cpl                                                  ; $0741 : $2f
	scf                                                  ; $0742 : $37
	ld ($3124), a                                                  ; $0743 : $32, $24, $31
	cpl                                                  ; $0746 : $2f
	inc (hl)                                                  ; $0747 : $34
	dec hl                                                  ; $0748 : $2b
	dec (hl)                                                  ; $0749 : $35
	cpl                                                  ; $074a : $2f
	scf                                                  ; $074b : $37
	ld ($2f37), a                                                  ; $074c : $32, $37, $2f
	ld ($2438), a                                                  ; $074f : $32, $38, $24
	dec (hl)                                                  ; $0752 : $35
	cpl                                                  ; $0753 : $2f
	ld (hl), $2d                                                  ; $0754 : $36, $2d
	inc (hl)                                                  ; $0756 : $34
	cpl                                                  ; $0757 : $2f
	dec (hl)                                                  ; $0758 : $35
	ld sp, $332f                                                  ; $0759 : $31, $2f, $33
	jr nc, $24                                                  ; $075c : $30, $24

	inc sp                                                  ; $075e : $33
	cpl                                                  ; $075f : $2f
	jr c, $2d                                                  ; $0760 : $38, $2d

	ld sp, $332f                                                  ; $0762 : $31, $2f, $33
	ld sp, $322f                                                  ; $0765 : $31, $2f, $32
	inc (hl)                                                  ; $0768 : $34
	inc h                                                  ; $0769 : $24
	ld ($332f), a                                                  ; $076a : $32, $2f, $33
	dec hl                                                  ; $076d : $2b
	ld ($372f), a                                                  ; $076e : $32, $2f, $37
	ld ($2f30), a                                                  ; $0771 : $32, $30, $2f
	ld ($2431), a                                                  ; $0774 : $32, $31, $24
	scf                                                  ; $0777 : $37
	cpl                                                  ; $0778 : $2f
	ld ($2b34), a                                                  ; $0779 : $32, $34, $2b
	dec (hl)                                                  ; $077c : $35
	cpl                                                  ; $077d : $2f
	ld ($3d34), a                                                  ; $077e : $32, $34, $3d
	ld sp, $322f                                                  ; $0781 : $31, $2f, $32
	inc h                                                  ; $0784 : $24
	jr c, br_07_07b6                                                  ; $0785 : $38, $2f

	add hl, sp                                                  ; $0787 : $39
	dec l                                                  ; $0788 : $2d
	dec (hl)                                                  ; $0789 : $35
	cpl                                                  ; $078a : $2f
	ld sp, $3d32                                                  ; $078b : $31, $32, $3d
	ld sp, $2f37                                                  ; $078e : $31, $37, $2f
	inc sp                                                  ; $0791 : $33
	ld (hl), $24                                                  ; $0792 : $36, $24
	dec (hl)                                                  ; $0794 : $35
	cpl                                                  ; $0795 : $2f
	ld sp, $2b34                                                  ; $0796 : $31, $34, $2b
	scf                                                  ; $0799 : $37
	cpl                                                  ; $079a : $2f
	ld sp, $3d32                                                  ; $079b : $31, $32, $3d
	scf                                                  ; $079e : $37
	add hl, sp                                                  ; $079f : $39
	cpl                                                  ; $07a0 : $2f
	jr c, br_07_07d7                                                  ; $07a1 : $38, $34

	inc h                                                  ; $07a3 : $24
	ld sp, $2f39                                                  ; $07a4 : $31, $39, $2f
	dec (hl)                                                  ; $07a7 : $35
	inc (hl)                                                  ; $07a8 : $34
	dec hl                                                  ; $07a9 : $2b
	ld sp, $2f31                                                  ; $07aa : $31, $31, $2f
	ld ($3d37), a                                                  ; $07ad : $32, $37, $3d
	inc (hl)                                                  ; $07b0 : $34
	ld sp, $352f                                                  ; $07b1 : $31, $2f, $35
	inc (hl)                                                  ; $07b4 : $34
	inc h                                                  ; $07b5 : $24

br_07_07b6:
	ld sp, $2f33                                                  ; $07b6 : $31, $33, $2f
	ld ($2d34), a                                                  ; $07b9 : $32, $34, $2d
	ld sp, $2f35                                                  ; $07bc : $31, $35, $2f
	inc sp                                                  ; $07bf : $33
	ld ($373d), a                                                  ; $07c0 : $32, $3d, $37
	cpl                                                  ; $07c3 : $2f
	add hl, sp                                                  ; $07c4 : $39
	ld (hl), $24                                                  ; $07c5 : $36, $24
	scf                                                  ; $07c7 : $37
	cpl                                                  ; $07c8 : $2f
	add hl, sp                                                  ; $07c9 : $39
	dec l                                                  ; $07ca : $2d
	scf                                                  ; $07cb : $37
	cpl                                                  ; $07cc : $2f
	ld sp, $3d35                                                  ; $07cd : $31, $35, $3d
	ld sp, $2f34                                                  ; $07d0 : $31, $34, $2f
	inc (hl)                                                  ; $07d3 : $34
	dec (hl)                                                  ; $07d4 : $35
	inc h                                                  ; $07d5 : $24
	dec (hl)                                                  ; $07d6 : $35

br_07_07d7:
	cpl                                                  ; $07d7 : $2f
	ld sp, $2b32                                                  ; $07d8 : $31, $32, $2b
	ld sp, $2f35                                                  ; $07db : $31, $35, $2f
	inc sp                                                  ; $07de : $33
	ld ($383d), a                                                  ; $07df : $32, $3d, $38
	dec (hl)                                                  ; $07e2 : $35
	cpl                                                  ; $07e3 : $2f
	add hl, sp                                                  ; $07e4 : $39
	ld (hl), $24                                                  ; $07e5 : $36, $24
	dec (hl)                                                  ; $07e7 : $35
	cpl                                                  ; $07e8 : $2f
	ld sp, $2d31                                                  ; $07e9 : $31, $31, $2d
	scf                                                  ; $07ec : $37
	cpl                                                  ; $07ed : $2f
	ld ($3d32), a                                                  ; $07ee : $32, $32, $3d
	inc sp                                                  ; $07f1 : $33
	cpl                                                  ; $07f2 : $2f
	ld ($2432), a                                                  ; $07f3 : $32, $32, $24
	inc (hl)                                                  ; $07f6 : $34
	cpl                                                  ; $07f7 : $2f
	ld sp, $2b35                                                  ; $07f8 : $31, $35, $2b
	ld sp, $2f33                                                  ; $07fb : $31, $33, $2f
	ld ($3d30), a                                                  ; $07fe : $32, $30, $3d
	ld sp, $2f31                                                  ; $0801 : $31, $31, $2f
	ld sp, $2432                                                  ; $0804 : $31, $32, $24
	ld ($392f), a                                                  ; $0807 : $32, $2f, $39
	dec hl                                                  ; $080a : $2b
	dec (hl)                                                  ; $080b : $35
	cpl                                                  ; $080c : $2f
	ld sp, $3d32                                                  ; $080d : $31, $32, $3d
	ld ($2f33), a                                                  ; $0810 : $32, $33, $2f
	inc sp                                                  ; $0813 : $33
	ld (hl), $24                                                  ; $0814 : $36, $24
	scf                                                  ; $0816 : $37
	cpl                                                  ; $0817 : $2f
	jr c, br_07_0847                                                  ; $0818 : $38, $2d

	scf                                                  ; $081a : $37
	cpl                                                  ; $081b : $2f
	ld sp, $3d30                                                  ; $081c : $31, $30, $3d
	scf                                                  ; $081f : $37
	cpl                                                  ; $0820 : $2f
	inc (hl)                                                  ; $0821 : $34
	jr nc, br_07_0848                                                  ; $0822 : $30, $24

	ld sp, $2f34                                                  ; $0824 : $31, $34, $2f
	ld sp, $2d35                                                  ; $0827 : $31, $35, $2d
	ld ($2f36), a                                                  ; $082a : $32, $36, $2f
	inc (hl)                                                  ; $082d : $34
	dec (hl)                                                  ; $082e : $35
	dec a                                                  ; $082f : $3d
	ld sp, $2f36                                                  ; $0830 : $31, $36, $2f
	inc (hl)                                                  ; $0833 : $34
	dec (hl)                                                  ; $0834 : $35
	inc h                                                  ; $0835 : $24
	scf                                                  ; $0836 : $37
	cpl                                                  ; $0837 : $2f
	ld sp, $2b32                                                  ; $0838 : $31, $32, $2b
	inc sp                                                  ; $083b : $33
	cpl                                                  ; $083c : $2f
	jr c, br_07_087c                                                  ; $083d : $38, $3d

	ld ($2f33), a                                                  ; $083f : $32, $33, $2f
	ld ($2434), a                                                  ; $0842 : $32, $34, $24
	scf                                                  ; $0845 : $37
	cpl                                                  ; $0846 : $2f

br_07_0847:
	add hl, sp                                                  ; $0847 : $39

br_07_0848:
	dec l                                                  ; $0848 : $2d
	dec (hl)                                                  ; $0849 : $35
	cpl                                                  ; $084a : $2f
	ld sp, $3d32                                                  ; $084b : $31, $32, $3d
	ld sp, $2f33                                                  ; $084e : $31, $33, $2f
	inc sp                                                  ; $0851 : $33
	ld (hl), $24                                                  ; $0852 : $36, $24
	ld sp, $2f31                                                  ; $0854 : $31, $31, $2f
	ld sp, $2b38                                                  ; $0857 : $31, $38, $2b
	scf                                                  ; $085a : $37
	cpl                                                  ; $085b : $2f
	ld ($3d34), a                                                  ; $085c : $32, $34, $3d
	ld (hl), $35                                                  ; $085f : $36, $35
	cpl                                                  ; $0861 : $2f
	scf                                                  ; $0862 : $37
	ld ($3124), a                                                  ; $0863 : $32, $24, $31
	jr nc, $2f                                                  ; $0866 : $30, $2f

	ld ($2b33), a                                                  ; $0868 : $32, $33, $2b
	ld ($2f34), a                                                  ; $086b : $32, $34, $2f
	ld (hl), $39                                                  ; $086e : $36, $39
	dec a                                                  ; $0870 : $3d
	ld sp, $2f38                                                  ; $0871 : $31, $38, $2f
	ld ($2433), a                                                  ; $0874 : $32, $33, $24
	scf                                                  ; $0877 : $37
	cpl                                                  ; $0878 : $2f
	ld sp, $2d32                                                  ; $0879 : $31, $32, $2d

br_07_087c:
	dec (hl)                                                  ; $087c : $35
	cpl                                                  ; $087d : $2f
	ld sp, $3d36                                                  ; $087e : $31, $36, $3d
	ld sp, $2f33                                                  ; $0881 : $31, $33, $2f
	inc (hl)                                                  ; $0884 : $34
	jr c, br_07_08ab                                                  ; $0885 : $38, $24

	jr c, br_07_08b8                                                  ; $0887 : $38, $2f

	ld sp, $2d31                                                  ; $0889 : $31, $31, $2d
	ld sp, $2f33                                                  ; $088c : $31, $33, $2f
	inc sp                                                  ; $088f : $33
	inc sp                                                  ; $0890 : $33
	dec a                                                  ; $0891 : $3d
	ld sp, $332f                                                  ; $0892 : $31, $2f, $33
	inc h                                                  ; $0895 : $24
	ld sp, $382f                                                  ; $0896 : $31, $2f, $38
	dec hl                                                  ; $0899 : $2b
	scf                                                  ; $089a : $37
	cpl                                                  ; $089b : $2f
	ld sp, $3d32                                                  ; $089c : $31, $32, $3d
	ld sp, $2f37                                                  ; $089f : $31, $37, $2f
	ld ($2434), a                                                  ; $08a2 : $32, $34, $24
	ld sp, $2f33                                                  ; $08a5 : $31, $33, $2f
	ld sp, $2d36                                                  ; $08a8 : $31, $36, $2d

br_07_08ab:
	ld ($2f37), a                                                  ; $08ab : $32, $37, $2f
	inc (hl)                                                  ; $08ae : $34
	jr nc, $3d                                                  ; $08af : $30, $3d

	ld sp, $2f31                                                  ; $08b1 : $31, $31, $2f
	jr c, $30                                                  ; $08b4 : $38, $30

	inc h                                                  ; $08b6 : $24
	inc (hl)                                                  ; $08b7 : $34

br_07_08b8:
	cpl                                                  ; $08b8 : $2f
	ld ($2b35), a                                                  ; $08b9 : $32, $35, $2b
	scf                                                  ; $08bc : $37
	cpl                                                  ; $08bd : $2f
	ld ($3d35), a                                                  ; $08be : $32, $35, $3d
	ld sp, $2f31                                                  ; $08c1 : $31, $31, $2f
	ld ($2435), a                                                  ; $08c4 : $32, $35, $24
	ld sp, $2f35                                                  ; $08c7 : $31, $35, $2f
	ld ($2b38), a                                                  ; $08ca : $32, $38, $2b
	dec (hl)                                                  ; $08cd : $35
	cpl                                                  ; $08ce : $2f
	ld sp, $3d32                                                  ; $08cf : $31, $32, $3d
	ld ($2f30), a                                                  ; $08d2 : $32, $30, $2f
	ld ($2431), a                                                  ; $08d5 : $32, $31, $24
	dec (hl)                                                  ; $08d8 : $35
	cpl                                                  ; $08d9 : $2f
	jr c, br_07_0909                                                  ; $08da : $38, $2d

	inc sp                                                  ; $08dc : $33
	cpl                                                  ; $08dd : $2f
	ld sp, $3d30                                                  ; $08de : $31, $30, $3d
	ld sp, $2f33                                                  ; $08e1 : $31, $33, $2f
	inc (hl)                                                  ; $08e4 : $34
	jr nc, $24                                                  ; $08e5 : $30, $24

	ld sp, $2f33                                                  ; $08e7 : $31, $33, $2f
	ld ($2d38), a                                                  ; $08ea : $32, $38, $2d
	ld sp, $2f31                                                  ; $08ed : $31, $31, $2f
	inc sp                                                  ; $08f0 : $33
	dec (hl)                                                  ; $08f1 : $35
	dec a                                                  ; $08f2 : $3d
	inc sp                                                  ; $08f3 : $33
	cpl                                                  ; $08f4 : $2f
	ld ($2430), a                                                  ; $08f5 : $32, $30, $24
	jr c, $2f                                                  ; $08f8 : $38, $2f

	ld sp, $2b35                                                  ; $08fa : $31, $35, $2b
	inc sp                                                  ; $08fd : $33
	cpl                                                  ; $08fe : $2f
	ld sp, $3d30                                                  ; $08ff : $31, $30, $3d
	dec (hl)                                                  ; $0902 : $35
	cpl                                                  ; $0903 : $2f
	ld (hl), $24                                                  ; $0904 : $36, $24
	ld sp, $2f33                                                  ; $0906 : $31, $33, $2f

br_07_0909:
	ld sp, $2d36                                                  ; $0909 : $31, $36, $2d
	ld sp, $2f37                                                  ; $090c : $31, $37, $2f
	ld ($3d34), a                                                  ; $090f : $32, $34, $3d
	dec (hl)                                                  ; $0912 : $35
	cpl                                                  ; $0913 : $2f
	inc (hl)                                                  ; $0914 : $34
	jr c, $24                                                  ; $0915 : $38, $24

	inc (hl)                                                  ; $0917 : $34
	cpl                                                  ; $0918 : $2f
	ld ($2b37), a                                                  ; $0919 : $32, $37, $2b
	ld sp, $2f31                                                  ; $091c : $31, $31, $2f
	ld sp, $3d38                                                  ; $091f : $31, $38, $3d
	inc (hl)                                                  ; $0922 : $34
	ld sp, $352f                                                  ; $0923 : $31, $2f, $35
	inc (hl)                                                  ; $0926 : $34
	inc h                                                  ; $0927 : $24
	ld sp, $2f30                                                  ; $0928 : $31, $30, $2f
	ld ($2b32), a                                                  ; $092b : $32, $32, $2b
	ld sp, $2f35                                                  ; $092e : $31, $35, $2f
	ld (hl), $36                                                  ; $0931 : $36, $36
	dec a                                                  ; $0933 : $3d
	ld sp, $2f35                                                  ; $0934 : $31, $35, $2f
	ld ($2432), a                                                  ; $0937 : $32, $32, $24
	ld sp, $2f39                                                  ; $093a : $31, $39, $2f
	ld ($2d36), a                                                  ; $093d : $32, $36, $2d
	ld sp, $2f36                                                  ; $0940 : $31, $36, $2f
	inc sp                                                  ; $0943 : $33
	add hl, sp                                                  ; $0944 : $39
	dec a                                                  ; $0945 : $3d
	ld ($2f35), a                                                  ; $0946 : $32, $35, $2f
	scf                                                  ; $0949 : $37
	jr c, br_07_0970                                                  ; $094a : $38, $24

	ld sp, $2f33                                                  ; $094c : $31, $33, $2f
	ld sp, $2d34                                                  ; $094f : $31, $34, $2d
	ld ($2f37), a                                                  ; $0952 : $32, $37, $2f
	dec (hl)                                                  ; $0955 : $35
	ld (hl), $3d                                                  ; $0956 : $36, $3d
	ld ($2f35), a                                                  ; $0958 : $32, $35, $2f
	dec (hl)                                                  ; $095b : $35
	ld (hl), $24                                                  ; $095c : $36, $24
	inc sp                                                  ; $095e : $33
	cpl                                                  ; $095f : $2f
	jr c, br_07_098d                                                  ; $0960 : $38, $2b

	inc sp                                                  ; $0962 : $33
	cpl                                                  ; $0963 : $2f
	ld sp, $3d30                                                  ; $0964 : $31, $30, $3d
	ld ($2f37), a                                                  ; $0967 : $32, $37, $2f
	inc (hl)                                                  ; $096a : $34
	jr nc, br_07_0991                                                  ; $096b : $30, $24

	scf                                                  ; $096d : $37
	cpl                                                  ; $096e : $2f
	inc sp                                                  ; $096f : $33

br_07_0970:
	ld (hl), $2d                                                  ; $0970 : $36, $2d
	ld sp, $392f                                                  ; $0972 : $31, $2f, $39
	dec a                                                  ; $0975 : $3d
	ld sp, $312f                                                  ; $0976 : $31, $2f, $31
	ld ($3724), a                                                  ; $0979 : $32, $24, $37
	cpl                                                  ; $097c : $2f
	ld sp, $2b32                                                  ; $097d : $31, $32, $2b
	dec (hl)                                                  ; $0980 : $35
	cpl                                                  ; $0981 : $2f
	ld sp, $3d38                                                  ; $0982 : $31, $38, $3d
	inc sp                                                  ; $0985 : $33
	ld sp, $332f                                                  ; $0986 : $31, $2f, $33
	ld (hl), $24                                                  ; $0989 : $36, $24
	jr c, br_07_09bc                                                  ; $098b : $38, $2f

br_07_098d:
	ld sp, $2b35                                                  ; $098d : $31, $35, $2b
	add hl, sp                                                  ; $0990 : $39

br_07_0991:
	cpl                                                  ; $0991 : $2f
	ld ($3d30), a                                                  ; $0992 : $32, $30, $3d
	dec (hl)                                                  ; $0995 : $35
	add hl, sp                                                  ; $0996 : $39
	cpl                                                  ; $0997 : $2f
	ld (hl), $30                                                  ; $0998 : $36, $30
	inc h                                                  ; $099a : $24
	ld ($2f32), a                                                  ; $099b : $32, $32, $2f
	ld ($2d37), a                                                  ; $099e : $32, $37, $2d
	inc (hl)                                                  ; $09a1 : $34
	jr nc, br_07_09d3                                                  ; $09a2 : $30, $2f

	jr c, br_07_09d7                                                  ; $09a4 : $38, $31

	dec a                                                  ; $09a6 : $3d
	ld ($2f36), a                                                  ; $09a7 : $32, $36, $2f
	jr c, br_07_09dd                                                  ; $09aa : $38, $31

	inc h                                                  ; $09ac : $24
	scf                                                  ; $09ad : $37
	cpl                                                  ; $09ae : $2f
	ld sp, $2d32                                                  ; $09af : $31, $32, $2d
	dec (hl)                                                  ; $09b2 : $35
	cpl                                                  ; $09b3 : $2f
	ld sp, $3d34                                                  ; $09b4 : $31, $34, $3d
	ld sp, $2f39                                                  ; $09b7 : $31, $39, $2f
	jr c, $34                                                  ; $09ba : $38, $34

br_07_09bc:
	inc h                                                  ; $09bc : $24
	inc (hl)                                                  ; $09bd : $34
	cpl                                                  ; $09be : $2f
	add hl, sp                                                  ; $09bf : $39
	dec hl                                                  ; $09c0 : $2b
	dec (hl)                                                  ; $09c1 : $35
	cpl                                                  ; $09c2 : $2f
	ld sp, $3d32                                                  ; $09c3 : $31, $32, $3d
	inc sp                                                  ; $09c6 : $33
	ld sp, $332f                                                  ; $09c7 : $31, $2f, $33
	ld (hl), $24                                                  ; $09ca : $36, $24
	scf                                                  ; $09cc : $37
	cpl                                                  ; $09cd : $2f
	jr c, br_07_09fd                                                  ; $09ce : $38, $2d

	ld ($2f33), a                                                  ; $09d0 : $32, $33, $2f

br_07_09d3:
	inc sp                                                  ; $09d3 : $33
	ld ($353d), a                                                  ; $09d4 : $32, $3d, $35

br_07_09d7:
	cpl                                                  ; $09d7 : $2f
	inc sp                                                  ; $09d8 : $33
	ld ($3124), a                                                  ; $09d9 : $32, $24, $31
	inc sp                                                  ; $09dc : $33

br_07_09dd:
	cpl                                                  ; $09dd : $2f
	ld ($2b34), a                                                  ; $09de : $32, $34, $2b
	scf                                                  ; $09e1 : $37
	cpl                                                  ; $09e2 : $2f
	ld sp, $3d38                                                  ; $09e3 : $31, $38, $3d
	ld (hl), $37                                                  ; $09e6 : $36, $37
	cpl                                                  ; $09e8 : $2f
	scf                                                  ; $09e9 : $37
	ld ($3724), a                                                  ; $09ea : $32, $24, $37
	cpl                                                  ; $09ed : $2f
	ld sp, $2b35                                                  ; $09ee : $31, $35, $2b
	ld ($2f37), a                                                  ; $09f1 : $32, $37, $2f
	ld (hl), $30                                                  ; $09f4 : $36, $30
	dec a                                                  ; $09f6 : $3d
	ld sp, $2f31                                                  ; $09f7 : $31, $31, $2f
	ld sp, $2432                                                  ; $09fa : $31, $32, $24

br_07_09fd:
	dec (hl)                                                  ; $09fd : $35
	cpl                                                  ; $09fe : $2f
	ld sp, $2d34                                                  ; $09ff : $31, $34, $2d
	dec (hl)                                                  ; $0a02 : $35
	cpl                                                  ; $0a03 : $2f
	ld ($3d38), a                                                  ; $0a04 : $32, $38, $3d
	dec (hl)                                                  ; $0a07 : $35
	cpl                                                  ; $0a08 : $2f
	ld ($2438), a                                                  ; $0a09 : $32, $38, $24
	ld sp, $2f33                                                  ; $0a0c : $31, $33, $2f
	ld sp, $2d38                                                  ; $0a0f : $31, $38, $2d
	scf                                                  ; $0a12 : $37
	cpl                                                  ; $0a13 : $2f
	ld sp, $3d32                                                  ; $0a14 : $31, $32, $3d
	dec (hl)                                                  ; $0a17 : $35
	cpl                                                  ; $0a18 : $2f
	inc sp                                                  ; $0a19 : $33
	ld (hl), $24                                                  ; $0a1a : $36, $24
	scf                                                  ; $0a1c : $37
	cpl                                                  ; $0a1d : $2f
	ld sp, $2b30                                                  ; $0a1e : $31, $30, $2b
	inc (hl)                                                  ; $0a21 : $34
	cpl                                                  ; $0a22 : $2f
	ld sp, $3d35                                                  ; $0a23 : $31, $35, $3d
	ld ($2f39), a                                                  ; $0a26 : $32, $39, $2f
	inc sp                                                  ; $0a29 : $33
	jr nc, br_07_0a50                                                  ; $0a2a : $30, $24

	ld sp, $2f30                                                  ; $0a2c : $31, $30, $2f
	ld ($2d31), a                                                  ; $0a2f : $32, $31, $2d
	dec (hl)                                                  ; $0a32 : $35
	cpl                                                  ; $0a33 : $2f
	ld sp, $3d34                                                  ; $0a34 : $31, $34, $3d
	dec (hl)                                                  ; $0a37 : $35
	cpl                                                  ; $0a38 : $2f
	inc (hl)                                                  ; $0a39 : $34
	ld ($3724), a                                                  ; $0a3a : $32, $24, $37
	cpl                                                  ; $0a3d : $2f
	ld sp, $2b36                                                  ; $0a3e : $31, $36, $2b
	add hl, sp                                                  ; $0a41 : $39
	cpl                                                  ; $0a42 : $2f
	ld ($3d30), a                                                  ; $0a43 : $32, $30, $3d
	scf                                                  ; $0a46 : $37
	ld sp, $382f                                                  ; $0a47 : $31, $2f, $38
	jr nc, br_07_0a70                                                  ; $0a4a : $30, $24

	ld sp, $2f37                                                  ; $0a4c : $31, $37, $2f
	inc (hl)                                                  ; $0a4f : $34

br_07_0a50:
	jr nc, br_07_0a7d                                                  ; $0a50 : $30, $2b

	add hl, sp                                                  ; $0a52 : $39
	cpl                                                  ; $0a53 : $2f
	ld ($3d30), a                                                  ; $0a54 : $32, $30, $3d
	scf                                                  ; $0a57 : $37
	cpl                                                  ; $0a58 : $2f
	jr c, br_07_0a7f                                                  ; $0a59 : $38, $24

	ld sp, $2f37                                                  ; $0a5b : $31, $37, $2f
	ld ($2d34), a                                                  ; $0a5e : $32, $34, $2d
	ld sp, $2f31                                                  ; $0a61 : $31, $31, $2f
	inc sp                                                  ; $0a64 : $33
	ld (hl), $3d                                                  ; $0a65 : $36, $3d
	ld ($2f39), a                                                  ; $0a67 : $32, $39, $2f
	scf                                                  ; $0a6a : $37
	ld ($3124), a                                                  ; $0a6b : $32, $24, $31
	jr nc, $2f                                                  ; $0a6e : $30, $2f

br_07_0a70:
	ld sp, $2d33                                                  ; $0a70 : $31, $33, $2d
	ld ($2f30), a                                                  ; $0a73 : $32, $30, $2f
	inc sp                                                  ; $0a76 : $33
	add hl, sp                                                  ; $0a77 : $39
	dec a                                                  ; $0a78 : $3d
	ld sp, $2f30                                                  ; $0a79 : $31, $30, $2f
	inc sp                                                  ; $0a7c : $33

br_07_0a7d:
	add hl, sp                                                  ; $0a7d : $39
	inc h                                                  ; $0a7e : $24

br_07_0a7f:
	inc sp                                                  ; $0a7f : $33
	cpl                                                  ; $0a80 : $2f
	ld ($2b31), a                                                  ; $0a81 : $32, $31, $2b
	inc (hl)                                                  ; $0a84 : $34
	cpl                                                  ; $0a85 : $2f
	ld ($3d31), a                                                  ; $0a86 : $32, $31, $3d
	ld sp, $332f                                                  ; $0a89 : $31, $2f, $33
	inc h                                                  ; $0a8c : $24
	ld sp, $2f31                                                  ; $0a8d : $31, $31, $2f
	ld sp, $2d32                                                  ; $0a90 : $31, $32, $2d
	dec (hl)                                                  ; $0a93 : $35
	cpl                                                  ; $0a94 : $2f
	jr c, br_07_0ad4                                                  ; $0a95 : $38, $3d

	scf                                                  ; $0a97 : $37
	cpl                                                  ; $0a98 : $2f
	ld ($2434), a                                                  ; $0a99 : $32, $34, $24
	scf                                                  ; $0a9c : $37
	cpl                                                  ; $0a9d : $2f
	ld sp, $2b36                                                  ; $0a9e : $31, $36, $2b
	ld sp, $2f31                                                  ; $0aa1 : $31, $31, $2f
	ld ($3d34), a                                                  ; $0aa4 : $32, $34, $3d
	inc (hl)                                                  ; $0aa7 : $34
	inc sp                                                  ; $0aa8 : $33
	cpl                                                  ; $0aa9 : $2f
	inc (hl)                                                  ; $0aaa : $34
	jr c, br_07_0ad1                                                  ; $0aab : $38, $24

	ld sp, $2f33                                                  ; $0aad : $31, $33, $2f
	ld ($2b34), a                                                  ; $0ab0 : $32, $34, $2b
	ld sp, $2f31                                                  ; $0ab3 : $31, $31, $2f
	inc sp                                                  ; $0ab6 : $33
	ld (hl), $3d                                                  ; $0ab7 : $36, $3d
	ld (hl), $31                                                  ; $0ab9 : $36, $31
	cpl                                                  ; $0abb : $2f
	scf                                                  ; $0abc : $37
	ld ($3524), a                                                  ; $0abd : $32, $24, $35
	cpl                                                  ; $0ac0 : $2f
	ld sp, $2d32                                                  ; $0ac1 : $31, $32, $2d
	inc (hl)                                                  ; $0ac4 : $34
	cpl                                                  ; $0ac5 : $2f
	ld sp, $3d35                                                  ; $0ac6 : $31, $35, $3d
	inc sp                                                  ; $0ac9 : $33
	cpl                                                  ; $0aca : $2f
	ld ($2430), a                                                  ; $0acb : $32, $30, $24
	ld sp, $2f36                                                  ; $0ace : $31, $36, $2f

br_07_0ad1:
	ld ($2d31), a                                                  ; $0ad1 : $32, $31, $2d

br_07_0ad4:
	add hl, sp                                                  ; $0ad4 : $39
	cpl                                                  ; $0ad5 : $2f
	ld sp, $3d34                                                  ; $0ad6 : $31, $34, $3d
	dec (hl)                                                  ; $0ad9 : $35
	cpl                                                  ; $0ada : $2f
	inc (hl)                                                  ; $0adb : $34
	ld ($3224), a                                                  ; $0adc : $32, $24, $32
	ld sp, $352f                                                  ; $0adf : $31, $2f, $35
	ld sp, $392b                                                  ; $0ae2 : $31, $2b, $39
	cpl                                                  ; $0ae5 : $2f
	inc sp                                                  ; $0ae6 : $33
	inc (hl)                                                  ; $0ae7 : $34
	dec a                                                  ; $0ae8 : $3d
	ld ($2f33), a                                                  ; $0ae9 : $32, $33, $2f
	inc sp                                                  ; $0aec : $33
	inc (hl)                                                  ; $0aed : $34
	inc h                                                  ; $0aee : $24
	inc sp                                                  ; $0aef : $33
	cpl                                                  ; $0af0 : $2f
	dec (hl)                                                  ; $0af1 : $35
	dec l                                                  ; $0af2 : $2d
	inc sp                                                  ; $0af3 : $33
	cpl                                                  ; $0af4 : $2f
	ld sp, $3d30                                                  ; $0af5 : $31, $30, $3d
	inc sp                                                  ; $0af8 : $33
	cpl                                                  ; $0af9 : $2f
	ld sp, $2430                                                  ; $0afa : $31, $30, $24
	inc sp                                                  ; $0afd : $33
	cpl                                                  ; $0afe : $2f
	ld sp, $2b30                                                  ; $0aff : $31, $30, $2b
	ld sp, $2f32                                                  ; $0b02 : $31, $32, $2f
	ld ($3d35), a                                                  ; $0b05 : $32, $35, $3d
	inc sp                                                  ; $0b08 : $33
	add hl, sp                                                  ; $0b09 : $39
	cpl                                                  ; $0b0a : $2f
	dec (hl)                                                  ; $0b0b : $35
	jr nc, br_07_0b32                                                  ; $0b0c : $30, $24

	dec (hl)                                                  ; $0b0e : $35
	cpl                                                  ; $0b0f : $2f
	ld sp, $2b34                                                  ; $0b10 : $31, $34, $2b
	ld sp, $2f31                                                  ; $0b13 : $31, $31, $2f
	ld ($3d31), a                                                  ; $0b16 : $32, $31, $3d
	inc sp                                                  ; $0b19 : $33
	scf                                                  ; $0b1a : $37
	cpl                                                  ; $0b1b : $2f
	inc (hl)                                                  ; $0b1c : $34
	ld ($3224), a                                                  ; $0b1d : $32, $24, $32
	ld sp, $322f                                                  ; $0b20 : $31, $2f, $32
	ld (hl), $2d                                                  ; $0b23 : $36, $2d
	ld ($2f39), a                                                  ; $0b25 : $32, $39, $2f
	dec (hl)                                                  ; $0b28 : $35
	ld ($313d), a                                                  ; $0b29 : $32, $3d, $31
	cpl                                                  ; $0b2c : $2f
	inc (hl)                                                  ; $0b2d : $34
	inc h                                                  ; $0b2e : $24
	ld sp, $2f33                                                  ; $0b2f : $31, $33, $2f

br_07_0b32:
	ld sp, $2d36                                                  ; $0b32 : $31, $36, $2d
	ld sp, $2f33                                                  ; $0b35 : $31, $33, $2f
	ld ($3d34), a                                                  ; $0b38 : $32, $34, $3d
	ld sp, $2f33                                                  ; $0b3b : $31, $33, $2f
	inc (hl)                                                  ; $0b3e : $34
	jr c, $24                                                  ; $0b3f : $38, $24

	ld sp, $2f31                                                  ; $0b41 : $31, $31, $2f
	ld sp, $2b37                                                  ; $0b44 : $31, $37, $2b
	ld (hl), $2f                                                  ; $0b47 : $36, $2f
	ld sp, $3d37                                                  ; $0b49 : $31, $37, $3d
	ld sp, $3224                                                  ; $0b4c : $31, $24, $32
	ld sp, $332f                                                  ; $0b4f : $31, $2f, $33
	ld ($312d), a                                                  ; $0b52 : $32, $2d, $31
	inc sp                                                  ; $0b55 : $33
	cpl                                                  ; $0b56 : $2f
	inc sp                                                  ; $0b57 : $33
	ld ($313d), a                                                  ; $0b58 : $32, $3d, $31
	cpl                                                  ; $0b5b : $2f
	inc (hl)                                                  ; $0b5c : $34
	inc h                                                  ; $0b5d : $24
	ld sp, $312f                                                  ; $0b5e : $31, $2f, $31
	jr c, br_07_0b8e                                                  ; $0b61 : $38, $2b

	ld sp, $332f                                                  ; $0b63 : $31, $2f, $33
	jr nc, $3d                                                  ; $0b66 : $30, $3d

	inc (hl)                                                  ; $0b68 : $34
	cpl                                                  ; $0b69 : $2f
	inc (hl)                                                  ; $0b6a : $34
	dec (hl)                                                  ; $0b6b : $35
	inc h                                                  ; $0b6c : $24
	ld sp, $2f35                                                  ; $0b6d : $31, $35, $2f
	inc sp                                                  ; $0b70 : $33
	ld (hl), $2b                                                  ; $0b71 : $36, $2b
	dec (hl)                                                  ; $0b73 : $35
	cpl                                                  ; $0b74 : $2f
	ld sp, $3d34                                                  ; $0b75 : $31, $34, $3d
	ld (hl), $35                                                  ; $0b78 : $36, $35
	cpl                                                  ; $0b7a : $2f
	jr c, $34                                                  ; $0b7b : $38, $34

	inc h                                                  ; $0b7d : $24
	ld sp, $2f37                                                  ; $0b7e : $31, $37, $2f
	ld ($2d32), a                                                  ; $0b81 : $32, $32, $2d
	add hl, sp                                                  ; $0b84 : $39
	cpl                                                  ; $0b85 : $2f
	ld ($3d32), a                                                  ; $0b86 : $32, $32, $3d
	inc (hl)                                                  ; $0b89 : $34
	cpl                                                  ; $0b8a : $2f
	ld sp, $2431                                                  ; $0b8b : $31, $31, $24

br_07_0b8e:
	ld sp, $2f33                                                  ; $0b8e : $31, $33, $2f
	ld sp, $2d36                                                  ; $0b91 : $31, $36, $2d
	scf                                                  ; $0b94 : $37
	cpl                                                  ; $0b95 : $2f
	ld ($3d34), a                                                  ; $0b96 : $32, $34, $3d
	ld ($2f35), a                                                  ; $0b99 : $32, $35, $2f
	inc (hl)                                                  ; $0b9c : $34
	jr c, $24                                                  ; $0b9d : $38, $24

	inc (hl)                                                  ; $0b9f : $34
	cpl                                                  ; $0ba0 : $2f
	inc sp                                                  ; $0ba1 : $33
	inc sp                                                  ; $0ba2 : $33
	dec hl                                                  ; $0ba3 : $2b
	ld sp, $2f33                                                  ; $0ba4 : $31, $33, $2f
	ld ($3d32), a                                                  ; $0ba7 : $32, $32, $3d
	inc (hl)                                                  ; $0baa : $34
	scf                                                  ; $0bab : $37
	cpl                                                  ; $0bac : $2f
	ld (hl), $36                                                  ; $0bad : $36, $36
	inc h                                                  ; $0baf : $24
	ld sp, $2f33                                                  ; $0bb0 : $31, $33, $2f
	ld sp, $2d34                                                  ; $0bb3 : $31, $34, $2d
	inc (hl)                                                  ; $0bb6 : $34
	cpl                                                  ; $0bb7 : $2f
	ld ($3d31), a                                                  ; $0bb8 : $32, $31, $3d
	inc sp                                                  ; $0bbb : $33
	ld sp, $342f                                                  ; $0bbc : $31, $2f, $34
	ld ($3124), a                                                  ; $0bbf : $32, $24, $31
	ld sp, $312f                                                  ; $0bc2 : $31, $2f, $31
	jr c, $2b                                                  ; $0bc5 : $38, $2b

	ld sp, $312f                                                  ; $0bc7 : $31, $2f, $31
	ld ($323d), a                                                  ; $0bca : $32, $3d, $32
	dec (hl)                                                  ; $0bcd : $35
	cpl                                                  ; $0bce : $2f
	inc sp                                                  ; $0bcf : $33
	ld (hl), $24                                                  ; $0bd0 : $36, $24
	ld sp, $312f                                                  ; $0bd2 : $31, $2f, $31
	ld (hl), $2b                                                  ; $0bd5 : $36, $2b
	ld sp, $2f31                                                  ; $0bd7 : $31, $31, $2f
	ld sp, $3d32                                                  ; $0bda : $31, $32, $3d
	inc (hl)                                                  ; $0bdd : $34
	scf                                                  ; $0bde : $37
	cpl                                                  ; $0bdf : $2f
	inc (hl)                                                  ; $0be0 : $34
	jr c, br_07_0c07                                                  ; $0be1 : $38, $24

	scf                                                  ; $0be3 : $37
	cpl                                                  ; $0be4 : $2f
	ld sp, $2d32                                                  ; $0be5 : $31, $32, $2d
	dec (hl)                                                  ; $0be8 : $35
	cpl                                                  ; $0be9 : $2f
	ld sp, $3d38                                                  ; $0bea : $31, $38, $3d
	ld sp, $2f31                                                  ; $0bed : $31, $31, $2f
	inc sp                                                  ; $0bf0 : $33
	ld (hl), $24                                                  ; $0bf1 : $36, $24
	ld sp, $2f33                                                  ; $0bf3 : $31, $33, $2f
	ld sp, $2d34                                                  ; $0bf6 : $31, $34, $2d
	ld sp, $2f35                                                  ; $0bf9 : $31, $35, $2f
	ld ($3d38), a                                                  ; $0bfc : $32, $38, $3d
	ld sp, $2f31                                                  ; $0bff : $31, $31, $2f
	ld ($2438), a                                                  ; $0c02 : $32, $38, $24
	dec (hl)                                                  ; $0c05 : $35
	cpl                                                  ; $0c06 : $2f

br_07_0c07:
	ld sp, $2b34                                                  ; $0c07 : $31, $34, $2b
	ld sp, $2f35                                                  ; $0c0a : $31, $35, $2f
	inc sp                                                  ; $0c0d : $33
	ld (hl), $3d                                                  ; $0c0e : $36, $3d
	ld (hl), $35                                                  ; $0c10 : $36, $35
	cpl                                                  ; $0c12 : $2f
	jr c, $34                                                  ; $0c13 : $38, $34

	inc h                                                  ; $0c15 : $24
	inc sp                                                  ; $0c16 : $33
	cpl                                                  ; $0c17 : $2f
	inc (hl)                                                  ; $0c18 : $34
	dec l                                                  ; $0c19 : $2d
	ld ($2f33), a                                                  ; $0c1a : $32, $33, $2f
	inc sp                                                  ; $0c1d : $33
	ld (hl), $3d                                                  ; $0c1e : $36, $3d
	ld sp, $392f                                                  ; $0c20 : $31, $2f, $39
	inc h                                                  ; $0c23 : $24
	ld sp, $2f31                                                  ; $0c24 : $31, $31, $2f
	inc (hl)                                                  ; $0c27 : $34
	ld ($312b), a                                                  ; $0c28 : $32, $2b, $31
	ld sp, $322f                                                  ; $0c2b : $31, $2f, $32
	jr c, br_07_0c6d                                                  ; $0c2e : $38, $3d

	dec (hl)                                                  ; $0c30 : $35
	dec (hl)                                                  ; $0c31 : $35
	cpl                                                  ; $0c32 : $2f
	jr c, br_07_0c69                                                  ; $0c33 : $38, $34

	inc h                                                  ; $0c35 : $24
	ld ($2f36), a                                                  ; $0c36 : $32, $36, $2f
	inc (hl)                                                  ; $0c39 : $34
	dec (hl)                                                  ; $0c3a : $35
	dec hl                                                  ; $0c3b : $2b
	inc sp                                                  ; $0c3c : $33
	cpl                                                  ; $0c3d : $2f
	ld sp, $3d30                                                  ; $0c3e : $31, $30, $3d
	scf                                                  ; $0c41 : $37
	add hl, sp                                                  ; $0c42 : $39
	cpl                                                  ; $0c43 : $2f
	add hl, sp                                                  ; $0c44 : $39
	jr nc, $24                                                  ; $0c45 : $30, $24

	ld sp, $2f31                                                  ; $0c47 : $31, $31, $2f
	ld sp, $2d38                                                  ; $0c4a : $31, $38, $2d
	ld sp, $2f36                                                  ; $0c4d : $31, $36, $2f
	ld ($3d37), a                                                  ; $0c50 : $32, $37, $3d
	ld sp, $352f                                                  ; $0c53 : $31, $2f, $35
	inc (hl)                                                  ; $0c56 : $34
	inc h                                                  ; $0c57 : $24
	scf                                                  ; $0c58 : $37
	cpl                                                  ; $0c59 : $2f
	ld sp, $2d30                                                  ; $0c5a : $31, $30, $2d
	ld sp, $2f36                                                  ; $0c5d : $31, $36, $2f
	ld ($3d35), a                                                  ; $0c60 : $32, $35, $3d
	inc sp                                                  ; $0c63 : $33
	cpl                                                  ; $0c64 : $2f
	dec (hl)                                                  ; $0c65 : $35
	jr nc, $24                                                  ; $0c66 : $30, $24

	inc sp                                                  ; $0c68 : $33

br_07_0c69:
	cpl                                                  ; $0c69 : $2f
	ld sp, $2b30                                                  ; $0c6a : $31, $30, $2b

br_07_0c6d:
	dec (hl)                                                  ; $0c6d : $35
	cpl                                                  ; $0c6e : $2f
	ld sp, $3d32                                                  ; $0c6f : $31, $32, $3d
	inc (hl)                                                  ; $0c72 : $34
	inc sp                                                  ; $0c73 : $33
	cpl                                                  ; $0c74 : $2f
	ld (hl), $30                                                  ; $0c75 : $36, $30
	inc h                                                  ; $0c77 : $24
	scf                                                  ; $0c78 : $37
	cpl                                                  ; $0c79 : $2f
	ld sp, $2d30                                                  ; $0c7a : $31, $30, $2d
	inc (hl)                                                  ; $0c7d : $34
	cpl                                                  ; $0c7e : $2f
	ld sp, $3d35                                                  ; $0c7f : $31, $35, $3d
	ld sp, $2f33                                                  ; $0c82 : $31, $33, $2f
	inc sp                                                  ; $0c85 : $33
	jr nc, $24                                                  ; $0c86 : $30, $24

	inc (hl)                                                  ; $0c88 : $34
	cpl                                                  ; $0c89 : $2f
	ld sp, $2b35                                                  ; $0c8a : $31, $35, $2b
	scf                                                  ; $0c8d : $37
	cpl                                                  ; $0c8e : $2f
	inc sp                                                  ; $0c8f : $33
	jr nc, $3d                                                  ; $0c90 : $30, $3d

	ld sp, $322f                                                  ; $0c92 : $31, $2f, $32
	inc h                                                  ; $0c95 : $24
	dec (hl)                                                  ; $0c96 : $35
	cpl                                                  ; $0c97 : $2f
	ld sp, $2b36                                                  ; $0c98 : $31, $36, $2b
	ld sp, $2f31                                                  ; $0c9b : $31, $31, $2f
	ld ($3d34), a                                                  ; $0c9e : $32, $34, $3d
	inc sp                                                  ; $0ca1 : $33
	scf                                                  ; $0ca2 : $37
	cpl                                                  ; $0ca3 : $2f
	inc (hl)                                                  ; $0ca4 : $34
	jr c, br_07_0ccb                                                  ; $0ca5 : $38, $24

	ld sp, $2f31                                                  ; $0ca7 : $31, $31, $2f
	ld sp, $2d32                                                  ; $0caa : $31, $32, $2d
	inc sp                                                  ; $0cad : $33
	dec (hl)                                                  ; $0cae : $35
	cpl                                                  ; $0caf : $2f
	scf                                                  ; $0cb0 : $37
	ld ($333d), a                                                  ; $0cb1 : $32, $3d, $33
	ld sp, $372f                                                  ; $0cb4 : $31, $2f, $37
	ld ($3724), a                                                  ; $0cb7 : $32, $24, $37
	cpl                                                  ; $0cba : $2f
	ld sp, $2d32                                                  ; $0cbb : $31, $32, $2d
	scf                                                  ; $0cbe : $37
	cpl                                                  ; $0cbf : $2f
	ld sp, $3d36                                                  ; $0cc0 : $31, $36, $3d
	scf                                                  ; $0cc3 : $37
	cpl                                                  ; $0cc4 : $2f
	inc (hl)                                                  ; $0cc5 : $34
	jr c, $24                                                  ; $0cc6 : $38, $24

	ld sp, $2f39                                                  ; $0cc8 : $31, $39, $2f

br_07_0ccb:
	inc sp                                                  ; $0ccb : $33
	ld (hl), $2b                                                  ; $0ccc : $36, $2b
	ld sp, $342f                                                  ; $0cce : $31, $2f, $34
	dec a                                                  ; $0cd1 : $3d
	scf                                                  ; $0cd2 : $37
	cpl                                                  ; $0cd3 : $2f
	add hl, sp                                                  ; $0cd4 : $39
	inc h                                                  ; $0cd5 : $24
	ld ($2f37), a                                                  ; $0cd6 : $32, $37, $2f
	inc sp                                                  ; $0cd9 : $33
	ld ($332d), a                                                  ; $0cda : $32, $2d, $33
	dec (hl)                                                  ; $0cdd : $35
	cpl                                                  ; $0cde : $2f
	add hl, sp                                                  ; $0cdf : $39
	ld (hl), $3d                                                  ; $0ce0 : $36, $3d
	ld ($2f33), a                                                  ; $0ce2 : $32, $33, $2f
	inc (hl)                                                  ; $0ce5 : $34
	jr c, br_07_0d0c                                                  ; $0ce6 : $38, $24

	dec (hl)                                                  ; $0ce8 : $35
	cpl                                                  ; $0ce9 : $2f
	ld sp, $2b32                                                  ; $0cea : $31, $32, $2b
	scf                                                  ; $0ced : $37
	cpl                                                  ; $0cee : $2f
	ld sp, $3d36                                                  ; $0cef : $31, $36, $3d
	inc (hl)                                                  ; $0cf2 : $34
	ld sp, $342f                                                  ; $0cf3 : $31, $2f, $34
	jr c, $24                                                  ; $0cf6 : $38, $24

	ld sp, $2f30                                                  ; $0cf8 : $31, $30, $2f
	ld ($2b31), a                                                  ; $0cfb : $32, $31, $2b
	add hl, sp                                                  ; $0cfe : $39
	cpl                                                  ; $0cff : $2f
	ld ($3d38), a                                                  ; $0d00 : $32, $38, $3d
	ld (hl), $37                                                  ; $0d03 : $36, $37
	cpl                                                  ; $0d05 : $2f
	jr c, br_07_0d3c                                                  ; $0d06 : $38, $34

	inc h                                                  ; $0d08 : $24
	ld ($2f32), a                                                  ; $0d09 : $32, $32, $2f

br_07_0d0c:
	ld ($2d35), a                                                  ; $0d0c : $32, $35, $2d
	inc sp                                                  ; $0d0f : $33
	ld ($352f), a                                                  ; $0d10 : $32, $2f, $35
	jr nc, $3d                                                  ; $0d13 : $30, $3d

	ld (hl), $2f                                                  ; $0d15 : $36, $2f
	ld ($2435), a                                                  ; $0d17 : $32, $35, $24
	ld sp, $2f34                                                  ; $0d1a : $31, $34, $2f
	ld ($2d35), a                                                  ; $0d1d : $32, $35, $2d
	ld ($2f37), a                                                  ; $0d20 : $32, $37, $2f
	dec (hl)                                                  ; $0d23 : $35
	jr nc, br_07_0d63                                                  ; $0d24 : $30, $3d

	ld sp, $352f                                                  ; $0d26 : $31, $2f, $35
	jr nc, br_07_0d4f                                                  ; $0d29 : $30, $24

	scf                                                  ; $0d2b : $37
	cpl                                                  ; $0d2c : $2f
	ld sp, $2b38                                                  ; $0d2d : $31, $38, $2b
	ld sp, $2f33                                                  ; $0d30 : $31, $33, $2f
	inc sp                                                  ; $0d33 : $33
	jr nc, $3d                                                  ; $0d34 : $30, $3d

	inc sp                                                  ; $0d36 : $33
	scf                                                  ; $0d37 : $37
	cpl                                                  ; $0d38 : $2f
	inc (hl)                                                  ; $0d39 : $34
	dec (hl)                                                  ; $0d3a : $35
	inc h                                                  ; $0d3b : $24

br_07_0d3c:
	ld sp, $2f33                                                  ; $0d3c : $31, $33, $2f
	ld sp, $2d35                                                  ; $0d3f : $31, $35, $2d
	ld sp, $2f31                                                  ; $0d42 : $31, $31, $2f
	ld ($3d30), a                                                  ; $0d45 : $32, $30, $3d
	ld sp, $2f39                                                  ; $0d48 : $31, $39, $2f
	ld (hl), $30                                                  ; $0d4b : $36, $30
	inc h                                                  ; $0d4d : $24
	dec (hl)                                                  ; $0d4e : $35

br_07_0d4f:
	cpl                                                  ; $0d4f : $2f
	ld sp, $2b32                                                  ; $0d50 : $31, $32, $2b
	scf                                                  ; $0d53 : $37
	cpl                                                  ; $0d54 : $2f
	ld sp, $3d36                                                  ; $0d55 : $31, $36, $3d
	inc (hl)                                                  ; $0d58 : $34
	ld sp, $342f                                                  ; $0d59 : $31, $2f, $34
	jr c, $24                                                  ; $0d5c : $38, $24

	ld ($2f37), a                                                  ; $0d5e : $32, $37, $2f
	ld (hl), $34                                                  ; $0d61 : $36, $34

br_07_0d63:
	dec hl                                                  ; $0d63 : $2b
	add hl, sp                                                  ; $0d64 : $39
	cpl                                                  ; $0d65 : $2f
	ld sp, $3d36                                                  ; $0d66 : $31, $36, $3d
	ld (hl), $33                                                  ; $0d69 : $36, $33
	cpl                                                  ; $0d6b : $2f
	ld (hl), $34                                                  ; $0d6c : $36, $34
	inc h                                                  ; $0d6e : $24
	scf                                                  ; $0d6f : $37
	cpl                                                  ; $0d70 : $2f
	ld sp, $2d32                                                  ; $0d71 : $31, $32, $2d
	add hl, sp                                                  ; $0d74 : $39
	cpl                                                  ; $0d75 : $2f
	inc sp                                                  ; $0d76 : $33
	ld ($323d), a                                                  ; $0d77 : $32, $3d, $32
	add hl, sp                                                  ; $0d7a : $39
	cpl                                                  ; $0d7b : $2f
	add hl, sp                                                  ; $0d7c : $39
	ld (hl), $24                                                  ; $0d7d : $36, $24
	dec (hl)                                                  ; $0d7f : $35
	cpl                                                  ; $0d80 : $2f
	ld sp, $2d31                                                  ; $0d81 : $31, $31, $2d
	scf                                                  ; $0d84 : $37
	cpl                                                  ; $0d85 : $2f
	ld ($3d32), a                                                  ; $0d86 : $32, $32, $3d
	inc sp                                                  ; $0d89 : $33
	cpl                                                  ; $0d8a : $2f
	ld ($2432), a                                                  ; $0d8b : $32, $32, $24
	jr c, br_07_0dbf                                                  ; $0d8e : $38, $2f

	ld sp, $2b35                                                  ; $0d90 : $31, $35, $2b
	jr c, $2f                                                  ; $0d93 : $38, $2f

	inc (hl)                                                  ; $0d95 : $34
	dec (hl)                                                  ; $0d96 : $35
	dec a                                                  ; $0d97 : $3d
	inc sp                                                  ; $0d98 : $33
	ld ($342f), a                                                  ; $0d99 : $32, $2f, $34
	dec (hl)                                                  ; $0d9c : $35
	inc h                                                  ; $0d9d : $24
	ld ($2f32), a                                                  ; $0d9e : $32, $32, $2f
	ld ($2d37), a                                                  ; $0da1 : $32, $37, $2d
	scf                                                  ; $0da4 : $37
	cpl                                                  ; $0da5 : $2f
	ld sp, $3d38                                                  ; $0da6 : $31, $38, $3d
	ld ($2f33), a                                                  ; $0da9 : $32, $33, $2f
	dec (hl)                                                  ; $0dac : $35
	inc (hl)                                                  ; $0dad : $34
	inc h                                                  ; $0dae : $24
	dec (hl)                                                  ; $0daf : $35
	cpl                                                  ; $0db0 : $2f
	ld sp, $2b34                                                  ; $0db1 : $31, $34, $2b
	ld sp, $372f                                                  ; $0db4 : $31, $2f, $37
	jr nc, $3d                                                  ; $0db7 : $30, $3d

	ld sp, $2f33                                                  ; $0db9 : $31, $33, $2f
	inc sp                                                  ; $0dbc : $33
	dec (hl)                                                  ; $0dbd : $35
	inc h                                                  ; $0dbe : $24

br_07_0dbf:
	ld sp, $2f37                                                  ; $0dbf : $31, $37, $2f
	ld ($2d32), a                                                  ; $0dc2 : $32, $32, $2d
	ld ($2f35), a                                                  ; $0dc5 : $32, $35, $2f
	inc sp                                                  ; $0dc8 : $33
	inc sp                                                  ; $0dc9 : $33
	dec a                                                  ; $0dca : $3d
	ld sp, $362f                                                  ; $0dcb : $31, $2f, $36
	ld (hl), $24                                                  ; $0dce : $36, $24
	ld sp, $2f33                                                  ; $0dd0 : $31, $33, $2f
	ld ($2b34), a                                                  ; $0dd3 : $32, $34, $2b
	ld ($2f31), a                                                  ; $0dd6 : $32, $31, $2f
	dec (hl)                                                  ; $0dd9 : $35
	inc (hl)                                                  ; $0dda : $34
	dec a                                                  ; $0ddb : $3d
	ld (hl), $37                                                  ; $0ddc : $36, $37
	cpl                                                  ; $0dde : $2f
	scf                                                  ; $0ddf : $37
	ld ($3224), a                                                  ; $0de0 : $32, $24, $32
	ld sp, $332f                                                  ; $0de3 : $31, $2f, $33
	dec (hl)                                                  ; $0de6 : $35
	dec l                                                  ; $0de7 : $2d
	ld ($2f32), a                                                  ; $0de8 : $32, $32, $2f
	inc (hl)                                                  ; $0deb : $34
	dec (hl)                                                  ; $0dec : $35
	dec a                                                  ; $0ded : $3d
	ld sp, $392f                                                  ; $0dee : $31, $2f, $39
	inc h                                                  ; $0df1 : $24
	ld sp, $2f33                                                  ; $0df2 : $31, $33, $2f
	ld sp, $a534                                                  ; $0df5 : $31, $34, $a5
	inc sp                                                  ; $0df8 : $33
	dec (hl)                                                  ; $0df9 : $35
	cpl                                                  ; $0dfa : $2f
	inc sp                                                  ; $0dfb : $33
	add hl, sp                                                  ; $0dfc : $39
	dec a                                                  ; $0dfd : $3d
	dec (hl)                                                  ; $0dfe : $35
	cpl                                                  ; $0dff : $2f
	ld (hl), $24                                                  ; $0e00 : $36, $24
	ld sp, $2f32                                                  ; $0e02 : $31, $32, $2f
	ld ($a635), a                                                  ; $0e05 : $32, $35, $a6
	ld sp, $2f38                                                  ; $0e08 : $31, $38, $2f
	inc sp                                                  ; $0e0b : $33
	dec (hl)                                                  ; $0e0c : $35
	dec a                                                  ; $0e0d : $3d
	ld sp, $2f34                                                  ; $0e0e : $31, $34, $2f
	ld sp, $2435                                                  ; $0e11 : $31, $35, $24
	dec (hl)                                                  ; $0e14 : $35
	cpl                                                  ; $0e15 : $2f
	ld sp, $a532                                                  ; $0e16 : $31, $32, $a5
	jr c, $2f                                                  ; $0e19 : $38, $2f

	ld ($3d35), a                                                  ; $0e1b : $32, $35, $3d
	ld ($312f), a                                                  ; $0e1e : $32, $2f, $31
	dec (hl)                                                  ; $0e21 : $35
	inc h                                                  ; $0e22 : $24
	ld ($2f34), a                                                  ; $0e23 : $32, $34, $2f
	inc sp                                                  ; $0e26 : $33
	dec (hl)                                                  ; $0e27 : $35
	and (hl)                                                  ; $0e28 : $a6
	ld sp, $2f36                                                  ; $0e29 : $31, $36, $2f
	ld ($3d31), a                                                  ; $0e2c : $32, $31, $3d
	add hl, sp                                                  ; $0e2f : $39
	cpl                                                  ; $0e30 : $2f
	ld sp, $2430                                                  ; $0e31 : $31, $30, $24
	dec (hl)                                                  ; $0e34 : $35
	cpl                                                  ; $0e35 : $2f
	ld sp, $2b34                                                  ; $0e36 : $31, $34, $2b
	ld sp, $2f35                                                  ; $0e39 : $31, $35, $2f
	ld ($3d34), a                                                  ; $0e3c : $32, $34, $3d
	dec (hl)                                                  ; $0e3f : $35
	dec (hl)                                                  ; $0e40 : $35
	cpl                                                  ; $0e41 : $2f
	dec (hl)                                                  ; $0e42 : $35
	ld (hl), $24                                                  ; $0e43 : $36, $24
	ld sp, $2f34                                                  ; $0e45 : $31, $34, $2f
	ld ($2d31), a                                                  ; $0e48 : $32, $31, $2d
	scf                                                  ; $0e4b : $37
	cpl                                                  ; $0e4c : $2f
	ld sp, $3d35                                                  ; $0e4d : $31, $35, $3d
	ld sp, $352f                                                  ; $0e50 : $31, $2f, $35
	inc h                                                  ; $0e53 : $24
	scf                                                  ; $0e54 : $37
	cpl                                                  ; $0e55 : $2f
	ld sp, $a536                                                  ; $0e56 : $31, $36, $a5
	inc sp                                                  ; $0e59 : $33
	ld ($332f), a                                                  ; $0e5a : $32, $2f, $33
	dec (hl)                                                  ; $0e5d : $35
	dec a                                                  ; $0e5e : $3d
	ld ($352f), a                                                  ; $0e5f : $32, $2f, $35
	inc h                                                  ; $0e62 : $24
	inc sp                                                  ; $0e63 : $33
	ld ($352f), a                                                  ; $0e64 : $32, $2f, $35
	scf                                                  ; $0e67 : $37
	and (hl)                                                  ; $0e68 : $a6
	ld sp, $2f36                                                  ; $0e69 : $31, $36, $2f
	ld sp, $3d39                                                  ; $0e6c : $31, $39, $3d
	ld ($332f), a                                                  ; $0e6f : $32, $2f, $33
	inc h                                                  ; $0e72 : $24
	dec (hl)                                                  ; $0e73 : $35
	cpl                                                  ; $0e74 : $2f
	ld sp, $2b34                                                  ; $0e75 : $31, $34, $2b
	ld ($2f33), a                                                  ; $0e78 : $32, $33, $2f
	inc (hl)                                                  ; $0e7b : $34
	ld ($313d), a                                                  ; $0e7c : $32, $3d, $31
	add hl, sp                                                  ; $0e7f : $39
	cpl                                                  ; $0e80 : $2f
	ld ($2431), a                                                  ; $0e81 : $32, $31, $24
	ld sp, $2f36                                                  ; $0e84 : $31, $36, $2f
	ld ($2d31), a                                                  ; $0e87 : $32, $31, $2d
	ld sp, $2f35                                                  ; $0e8a : $31, $35, $2f
	ld ($3d38), a                                                  ; $0e8d : $32, $38, $3d
	ld sp, $2f39                                                  ; $0e90 : $31, $39, $2f
	jr c, $34                                                  ; $0e93 : $38, $34

	inc h                                                  ; $0e95 : $24
	ld ($2f32), a                                                  ; $0e96 : $32, $32, $2f
	inc (hl)                                                  ; $0e99 : $34
	add hl, sp                                                  ; $0e9a : $39
	and l                                                  ; $0e9b : $a5
	scf                                                  ; $0e9c : $37
	cpl                                                  ; $0e9d : $2f
	ld sp, $3d31                                                  ; $0e9e : $31, $31, $3d
	ld ($372f), a                                                  ; $0ea1 : $32, $2f, $37
	inc h                                                  ; $0ea4 : $24
	ld sp, $2f34                                                  ; $0ea5 : $31, $34, $2f
	inc sp                                                  ; $0ea8 : $33
	inc sp                                                  ; $0ea9 : $33
	and (hl)                                                  ; $0eaa : $a6
	scf                                                  ; $0eab : $37
	cpl                                                  ; $0eac : $2f
	ld sp, $3d31                                                  ; $0ead : $31, $31, $3d
	ld ($332f), a                                                  ; $0eb0 : $32, $2f, $33
	inc h                                                  ; $0eb3 : $24
	dec (hl)                                                  ; $0eb4 : $35
	cpl                                                  ; $0eb5 : $2f
	ld sp, $a532                                                  ; $0eb6 : $31, $32, $a5
	inc sp                                                  ; $0eb9 : $33
	cpl                                                  ; $0eba : $2f
	ld ($3d30), a                                                  ; $0ebb : $32, $30, $3d
	ld sp, $312f                                                  ; $0ebe : $31, $2f, $31
	ld (hl), $24                                                  ; $0ec1 : $36, $24
	ld ($2f36), a                                                  ; $0ec3 : $32, $36, $2f
	dec (hl)                                                  ; $0ec6 : $35
	ld sp, $31a6                                                  ; $0ec7 : $31, $a6, $31
	inc sp                                                  ; $0eca : $33
	cpl                                                  ; $0ecb : $2f
	ld sp, $3d37                                                  ; $0ecc : $31, $37, $3d
	ld ($332f), a                                                  ; $0ecf : $32, $2f, $33
	inc h                                                  ; $0ed2 : $24
	ld ($2f34), a                                                  ; $0ed3 : $32, $34, $2f
	ld (hl), $39                                                  ; $0ed6 : $36, $39
	dec hl                                                  ; $0ed8 : $2b
	ld ($2f31), a                                                  ; $0ed9 : $32, $31, $2f
	inc (hl)                                                  ; $0edc : $34
	ld (hl), $3d                                                  ; $0edd : $36, $3d
	inc sp                                                  ; $0edf : $33
	scf                                                  ; $0ee0 : $37
	cpl                                                  ; $0ee1 : $2f
	inc (hl)                                                  ; $0ee2 : $34
	ld (hl), $24                                                  ; $0ee3 : $36, $24
	ld ($2f34), a                                                  ; $0ee5 : $32, $34, $2f
	inc sp                                                  ; $0ee8 : $33
	dec (hl)                                                  ; $0ee9 : $35
	dec l                                                  ; $0eea : $2d
	ld sp, $2f35                                                  ; $0eeb : $31, $35, $2f
	ld ($3d38), a                                                  ; $0eee : $32, $38, $3d
	inc sp                                                  ; $0ef1 : $33
	cpl                                                  ; $0ef2 : $2f
	ld ($2430), a                                                  ; $0ef3 : $32, $30, $24
	inc (hl)                                                  ; $0ef6 : $34
	cpl                                                  ; $0ef7 : $2f
	ld sp, $a535                                                  ; $0ef8 : $31, $35, $a5
	dec (hl)                                                  ; $0efb : $35

br_07_0efc:
	cpl                                                  ; $0efc : $2f
	ld sp, $3d36                                                  ; $0efd : $31, $36, $3d
	ld sp, $312f                                                  ; $0f00 : $31, $2f, $31
	ld ($3524), a                                                  ; $0f03 : $32, $24, $35
	cpl                                                  ; $0f06 : $2f
	ld sp, $a632                                                  ; $0f07 : $31, $32, $a6
	ld ($2f35), a                                                  ; $0f0a : $32, $35, $2f
	inc sp                                                  ; $0f0d : $33
	ld (hl), $3d                                                  ; $0f0e : $36, $3d
	inc sp                                                  ; $0f10 : $33
	cpl                                                  ; $0f11 : $2f
	dec (hl)                                                  ; $0f12 : $35
	inc h                                                  ; $0f13 : $24
	scf                                                  ; $0f14 : $37
	cpl                                                  ; $0f15 : $2f
	ld sp, $2b36                                                  ; $0f16 : $31, $36, $2b
	ld ($2f31), a                                                  ; $0f19 : $32, $31, $2f
	ld (hl), $30                                                  ; $0f1c : $36, $30
	dec a                                                  ; $0f1e : $3d
	ld (hl), $33                                                  ; $0f1f : $36, $33
	cpl                                                  ; $0f21 : $2f
	jr c, br_07_0f54                                                  ; $0f22 : $38, $30

	inc h                                                  ; $0f24 : $24
	ld sp, $2f39                                                  ; $0f25 : $31, $39, $2f
	ld ($2d38), a                                                  ; $0f28 : $32, $38, $2d
	dec (hl)                                                  ; $0f2b : $35
	cpl                                                  ; $0f2c : $2f
	ld sp, $3d32                                                  ; $0f2d : $31, $32, $3d
	ld sp, $2f31                                                  ; $0f30 : $31, $31, $2f
	inc (hl)                                                  ; $0f33 : $34
	ld ($3524), a                                                  ; $0f34 : $32, $24, $35
	cpl                                                  ; $0f37 : $2f
	ld sp, $a532                                                  ; $0f38 : $31, $32, $a5
	jr c, $2f                                                  ; $0f3b : $38, $2f

	ld sp, $3d35                                                  ; $0f3d : $31, $35, $3d
	ld ($392f), a                                                  ; $0f40 : $32, $2f, $39
	inc h                                                  ; $0f43 : $24
	add hl, sp                                                  ; $0f44 : $39
	cpl                                                  ; $0f45 : $2f
	ld sp, $a634                                                  ; $0f46 : $31, $34, $a6
	ld ($2f37), a                                                  ; $0f49 : $32, $37, $2f
	ld ($3d38), a                                                  ; $0f4c : $32, $38, $3d
	ld ($332f), a                                                  ; $0f4f : $32, $2f, $33
	inc h                                                  ; $0f52 : $24
	inc sp                                                  ; $0f53 : $33

br_07_0f54:
	cpl                                                  ; $0f54 : $2f
	jr c, br_07_0efc                                                  ; $0f55 : $38, $a5

	ld sp, $2f36                                                  ; $0f57 : $31, $36, $2f
	dec (hl)                                                  ; $0f5a : $35
	scf                                                  ; $0f5b : $37
	dec a                                                  ; $0f5c : $3d
	ld ($312f), a                                                  ; $0f5d : $32, $2f, $31
	add hl, sp                                                  ; $0f60 : $39
	inc h                                                  ; $0f61 : $24
	dec (hl)                                                  ; $0f62 : $35
	cpl                                                  ; $0f63 : $2f
	ld sp, $a632                                                  ; $0f64 : $31, $32, $a6
	ld sp, $2f35                                                  ; $0f67 : $31, $35, $2f
	ld ($3d38), a                                                  ; $0f6a : $32, $38, $3d
	scf                                                  ; $0f6d : $37
	cpl                                                  ; $0f6e : $2f
	add hl, sp                                                  ; $0f6f : $39
	inc h                                                  ; $0f70 : $24
	ld sp, $2f35                                                  ; $0f71 : $31, $35, $2f
	ld ($2b38), a                                                  ; $0f74 : $32, $38, $2b
	jr c, $2f                                                  ; $0f77 : $38, $2f

	ld ($3d31), a                                                  ; $0f79 : $32, $31, $3d
	ld sp, $2f31                                                  ; $0f7c : $31, $31, $2f
	ld sp, $2432                                                  ; $0f7f : $31, $32, $24
	inc sp                                                  ; $0f82 : $33
	jr c, $2f                                                  ; $0f83 : $38, $2f

	inc (hl)                                                  ; $0f85 : $34
	dec (hl)                                                  ; $0f86 : $35
	dec l                                                  ; $0f87 : $2d
	ld sp, $362f                                                  ; $0f88 : $31, $2f, $36
	inc sp                                                  ; $0f8b : $33
	dec a                                                  ; $0f8c : $3d
	ld ($2f39), a                                                  ; $0f8d : $32, $39, $2f
	inc sp                                                  ; $0f90 : $33
	dec (hl)                                                  ; $0f91 : $35
	inc h                                                  ; $0f92 : $24
	ld sp, $2f39                                                  ; $0f93 : $31, $39, $2f
	inc sp                                                  ; $0f96 : $33
	add hl, sp                                                  ; $0f97 : $39
	and l                                                  ; $0f98 : $a5
	ld sp, $2f33                                                  ; $0f99 : $31, $33, $2f
	inc sp                                                  ; $0f9c : $33
	jr c, $3d                                                  ; $0f9d : $38, $3d

	ld sp, $362f                                                  ; $0f9f : $31, $2f, $36
	inc h                                                  ; $0fa2 : $24
	dec (hl)                                                  ; $0fa3 : $35
	cpl                                                  ; $0fa4 : $2f
	scf                                                  ; $0fa5 : $37
	and (hl)                                                  ; $0fa6 : $a6
	ld ($2f35), a                                                  ; $0fa7 : $32, $35, $2f
	ld ($3d38), a                                                  ; $0faa : $32, $38, $3d
	inc (hl)                                                  ; $0fad : $34
	cpl                                                  ; $0fae : $2f
	dec (hl)                                                  ; $0faf : $35
	inc h                                                  ; $0fb0 : $24
	jr c, br_07_0fe2                                                  ; $0fb1 : $38, $2f

	ld sp, $2b35                                                  ; $0fb3 : $31, $35, $2b
	jr c, br_07_0fe7                                                  ; $0fb6 : $38, $2f

	inc sp                                                  ; $0fb8 : $33
	dec (hl)                                                  ; $0fb9 : $35
	dec a                                                  ; $0fba : $3d
	ld sp, $2f36                                                  ; $0fbb : $31, $36, $2f
	ld ($2431), a                                                  ; $0fbe : $32, $31, $24
	ld sp, $2f33                                                  ; $0fc1 : $31, $33, $2f
	ld sp, $2d38                                                  ; $0fc4 : $31, $38, $2d
	ld sp, $2f37                                                  ; $0fc7 : $31, $37, $2f
	ld ($3d34), a                                                  ; $0fca : $32, $34, $3d
	ld sp, $372f                                                  ; $0fcd : $31, $2f, $37
	ld ($3224), a                                                  ; $0fd0 : $32, $24, $32
	inc sp                                                  ; $0fd3 : $33
	cpl                                                  ; $0fd4 : $2f
	inc (hl)                                                  ; $0fd5 : $34
	ld ($32a5), a                                                  ; $0fd6 : $32, $a5, $32
	jr c, $2f                                                  ; $0fd9 : $38, $2f

	ld (hl), $39                                                  ; $0fdb : $36, $39
	dec a                                                  ; $0fdd : $3d
	ld ($392f), a                                                  ; $0fde : $32, $2f, $39
	inc h                                                  ; $0fe1 : $24

br_07_0fe2:
	add hl, sp                                                  ; $0fe2 : $39
	cpl                                                  ; $0fe3 : $2f
	ld sp, $a636                                                  ; $0fe4 : $31, $36, $a6

br_07_0fe7:
	inc sp                                                  ; $0fe7 : $33
	cpl                                                  ; $0fe8 : $2f
	inc (hl)                                                  ; $0fe9 : $34
	dec a                                                  ; $0fea : $3d
	inc sp                                                  ; $0feb : $33
	cpl                                                  ; $0fec : $2f
	inc (hl)                                                  ; $0fed : $34
	inc h                                                  ; $0fee : $24
	ld ($2f34), a                                                  ; $0fef : $32, $34, $2f
	ld ($a535), a                                                  ; $0ff2 : $32, $35, $a5
	ld sp, $2f35                                                  ; $0ff5 : $31, $35, $2f
	dec (hl)                                                  ; $0ff8 : $35
	ld (hl), $3d                                                  ; $0ff9 : $36, $3d
	add hl, sp                                                  ; $0ffb : $39
	cpl                                                  ; $0ffc : $2f
	inc sp                                                  ; $0ffd : $33
	dec (hl)                                                  ; $0ffe : $35
	inc h                                                  ; $0fff : $24
	scf                                                  ; $1000 : $37
	cpl                                                  ; $1001 : $2f

Jump_07_1002:
	ld sp, $a632                                                  ; $1002 : $31, $32, $a6
	scf                                                  ; $1005 : $37
	cpl                                                  ; $1006 : $2f
	jr c, br_07_1046                                                  ; $1007 : $38, $3d

	ld ($332f), a                                                  ; $1009 : $32, $2f, $33
	inc h                                                  ; $100c : $24
	ld sp, $2f35                                                  ; $100d : $31, $35, $2f
	inc sp                                                  ; $1010 : $33
	inc (hl)                                                  ; $1011 : $34
	dec hl                                                  ; $1012 : $2b
	ld ($2f31), a                                                  ; $1013 : $32, $31, $2f
	dec (hl)                                                  ; $1016 : $35
	ld sp, $323d                                                  ; $1017 : $31, $3d, $32
	add hl, sp                                                  ; $101a : $39
	cpl                                                  ; $101b : $2f
	inc sp                                                  ; $101c : $33
	inc (hl)                                                  ; $101d : $34
	inc h                                                  ; $101e : $24
	ld ($2f33), a                                                  ; $101f : $32, $33, $2f
	inc sp                                                  ; $1022 : $33
	jr nc, $2d                                                  ; $1023 : $30, $2d

	ld ($2f35), a                                                  ; $1025 : $32, $35, $2f
	inc (hl)                                                  ; $1028 : $34
	ld ($363d), a                                                  ; $1029 : $32, $3d, $36
	cpl                                                  ; $102c : $2f
	inc sp                                                  ; $102d : $33
	dec (hl)                                                  ; $102e : $35
	inc h                                                  ; $102f : $24
	ld sp, $2f34                                                  ; $1030 : $31, $34, $2f
	inc (hl)                                                  ; $1033 : $34
	dec (hl)                                                  ; $1034 : $35
	and l                                                  ; $1035 : $a5
	inc sp                                                  ; $1036 : $33
	ld (hl), $2f                                                  ; $1037 : $36, $2f
	inc (hl)                                                  ; $1039 : $34
	add hl, sp                                                  ; $103a : $39
	dec a                                                  ; $103b : $3d
	jr c, br_07_106d                                                  ; $103c : $38, $2f

	inc sp                                                  ; $103e : $33
	dec (hl)                                                  ; $103f : $35
	inc h                                                  ; $1040 : $24
	ld sp, $2f33                                                  ; $1041 : $31, $33, $2f
	inc sp                                                  ; $1044 : $33
	inc (hl)                                                  ; $1045 : $34

br_07_1046:
	and (hl)                                                  ; $1046 : $a6
	ld ($2f36), a                                                  ; $1047 : $32, $36, $2f
	dec (hl)                                                  ; $104a : $35
	ld sp, $333d                                                  ; $104b : $31, $3d, $33
	cpl                                                  ; $104e : $2f
	inc (hl)                                                  ; $104f : $34
	inc h                                                  ; $1050 : $24
	ld sp, $2f30                                                  ; $1051 : $31, $30, $2f
	ld ($2b31), a                                                  ; $1054 : $32, $31, $2b
	dec (hl)                                                  ; $1057 : $35
	cpl                                                  ; $1058 : $2f
	ld sp, $3d34                                                  ; $1059 : $31, $34, $3d
	dec (hl)                                                  ; $105c : $35
	cpl                                                  ; $105d : $2f
	ld (hl), $24                                                  ; $105e : $36, $24
	ld sp, $2f31                                                  ; $1060 : $31, $31, $2f
	ld sp, $2d32                                                  ; $1063 : $31, $32, $2d
	ld sp, $2f31                                                  ; $1066 : $31, $31, $2f
	dec (hl)                                                  ; $1069 : $35
	scf                                                  ; $106a : $37
	dec a                                                  ; $106b : $3d
	dec (hl)                                                  ; $106c : $35

br_07_106d:
	dec (hl)                                                  ; $106d : $35
	cpl                                                  ; $106e : $2f
	scf                                                  ; $106f : $37
	ld (hl), $24                                                  ; $1070 : $36, $24
	ld sp, $2f36                                                  ; $1072 : $31, $36, $2f
	ld ($a535), a                                                  ; $1075 : $32, $35, $a5
	inc sp                                                  ; $1078 : $33
	dec (hl)                                                  ; $1079 : $35
	cpl                                                  ; $107a : $2f
	inc sp                                                  ; $107b : $33
	ld (hl), $3d                                                  ; $107c : $36, $3d
	ld ($2f38), a                                                  ; $107e : $32, $38, $2f
	inc (hl)                                                  ; $1081 : $34
	dec (hl)                                                  ; $1082 : $35
	inc h                                                  ; $1083 : $24
	ld sp, $2f30                                                  ; $1084 : $31, $30, $2f
	ld ($a631), a                                                  ; $1087 : $32, $31, $a6
	dec (hl)                                                  ; $108a : $35
	cpl                                                  ; $108b : $2f
	add hl, sp                                                  ; $108c : $39
	dec a                                                  ; $108d : $3d
	ld (hl), $2f                                                  ; $108e : $36, $2f

br_07_1090:
	scf                                                  ; $1090 : $37
	inc h                                                  ; $1091 : $24
	ld sp, $2f39                                                  ; $1092 : $31, $39, $2f
	inc sp                                                  ; $1095 : $33
	jr nc, -$5b                                                  ; $1096 : $30, $a5

	ld ($2f35), a                                                  ; $1098 : $32, $35, $2f
	dec (hl)                                                  ; $109b : $35
	scf                                                  ; $109c : $37
	dec a                                                  ; $109d : $3d
	dec (hl)                                                  ; $109e : $35
	cpl                                                  ; $109f : $2f
	ld sp, $2438                                                  ; $10a0 : $31, $38, $24
	ld sp, $2f32                                                  ; $10a3 : $31, $32, $2f
	ld sp, $a637                                                  ; $10a6 : $31, $37, $a6
	ld ($2f37), a                                                  ; $10a9 : $32, $37, $2f
	inc sp                                                  ; $10ac : $33
	inc (hl)                                                  ; $10ad : $34
	dec a                                                  ; $10ae : $3d
	jr c, br_07_10e0                                                  ; $10af : $38, $2f

	add hl, sp                                                  ; $10b1 : $39
	inc h                                                  ; $10b2 : $24
	ld sp, $2f37                                                  ; $10b3 : $31, $37, $2f
	inc sp                                                  ; $10b6 : $33
	ld ($322b), a                                                  ; $10b7 : $32, $2b, $32
	ld sp, $342f                                                  ; $10ba : $31, $2f, $34
	jr c, $3d                                                  ; $10bd : $38, $3d

	inc sp                                                  ; $10bf : $33
	ld sp, $332f                                                  ; $10c0 : $31, $2f, $33
	ld ($3124), a                                                  ; $10c3 : $32, $24, $31
	inc (hl)                                                  ; $10c6 : $34
	cpl                                                  ; $10c7 : $2f
	ld sp, $2d35                                                  ; $10c8 : $31, $35, $2d
	ld sp, $2f34                                                  ; $10cb : $31, $34, $2f
	inc sp                                                  ; $10ce : $33
	dec (hl)                                                  ; $10cf : $35
	dec a                                                  ; $10d0 : $3d
	jr c, br_07_1102                                                  ; $10d1 : $38, $2f

	ld sp, $2435                                                  ; $10d3 : $31, $35, $24
	dec (hl)                                                  ; $10d6 : $35
	cpl                                                  ; $10d7 : $2f
	ld sp, $a532                                                  ; $10d8 : $31, $32, $a5
	jr c, br_07_110c                                                  ; $10db : $38, $2f

	ld sp, $3d35                                                  ; $10dd : $31, $35, $3d

br_07_10e0:
	ld ($392f), a                                                  ; $10e0 : $32, $2f, $39
	inc h                                                  ; $10e3 : $24
	inc sp                                                  ; $10e4 : $33
	add hl, sp                                                  ; $10e5 : $39
	cpl                                                  ; $10e6 : $2f
	inc (hl)                                                  ; $10e7 : $34

Jump_07_10e8:
	jr nc, br_07_1090                                                  ; $10e8 : $30, $a6

	ld sp, $3d33                                                  ; $10ea : $31, $33, $3d
	inc sp                                                  ; $10ed : $33
	cpl                                                  ; $10ee : $2f
	inc (hl)                                                  ; $10ef : $34
	jr nc, $24                                                  ; $10f0 : $30, $24

	ld sp, $2f31                                                  ; $10f2 : $31, $31, $2f
	inc sp                                                  ; $10f5 : $33
	jr nc, br_07_1123                                                  ; $10f6 : $30, $2b

	ld sp, $2f31                                                  ; $10f8 : $31, $31, $2f
	ld sp, $3d38                                                  ; $10fb : $31, $38, $3d
	inc (hl)                                                  ; $10fe : $34
	inc (hl)                                                  ; $10ff : $34
	cpl                                                  ; $1100 : $2f
	inc (hl)                                                  ; $1101 : $34

br_07_1102:
	dec (hl)                                                  ; $1102 : $35
	inc h                                                  ; $1103 : $24

Jump_07_1104:
	ld ($2f37), a                                                  ; $1104 : $32, $37, $2f
	inc (hl)                                                  ; $1107 : $34
	jr nc, $2d                                                  ; $1108 : $30, $2d

	scf                                                  ; $110a : $37
	cpl                                                  ; $110b : $2f

br_07_110c:
	ld ($3d34), a                                                  ; $110c : $32, $34, $3d
	ld ($2f33), a                                                  ; $110f : $32, $33, $2f
	ld (hl), $30                                                  ; $1112 : $36, $30
	inc h                                                  ; $1114 : $24
	ld sp, $2f37                                                  ; $1115 : $31, $37, $2f
	inc (hl)                                                  ; $1118 : $34
	ld ($33a5), a                                                  ; $1119 : $32, $a5, $33
	dec (hl)                                                  ; $111c : $35
	cpl                                                  ; $111d : $2f
	ld (hl), $38                                                  ; $111e : $36, $38
	dec a                                                  ; $1120 : $3d
	dec (hl)                                                  ; $1121 : $35
	cpl                                                  ; $1122 : $2f

br_07_1123:
	ld ($2434), a                                                  ; $1123 : $32, $34, $24
	ld ($2f35), a                                                  ; $1126 : $32, $35, $2f
	inc sp                                                  ; $1129 : $33
	ld (hl), $a6                                                  ; $112a : $36, $a6
	ld ($2f30), a                                                  ; $112c : $32, $30, $2f
	ld ($3d37), a                                                  ; $112f : $32, $37, $3d
	ld sp, $2f35                                                  ; $1132 : $31, $35, $2f
	ld sp, $2436                                                  ; $1135 : $31, $36, $24
	ld sp, $2f36                                                  ; $1138 : $31, $36, $2f
	ld sp, $a537                                                  ; $113b : $31, $37, $a5
	dec (hl)                                                  ; $113e : $35
	ld sp, $362f                                                  ; $113f : $31, $2f, $36
	inc (hl)                                                  ; $1142 : $34
	dec a                                                  ; $1143 : $3d
	inc sp                                                  ; $1144 : $33
	cpl                                                  ; $1145 : $2f
	inc (hl)                                                  ; $1146 : $34
	inc h                                                  ; $1147 : $24
	ld ($2f31), a                                                  ; $1148 : $32, $31, $2f
	inc (hl)                                                  ; $114b : $34
	dec (hl)                                                  ; $114c : $35
	and (hl)                                                  ; $114d : $a6
	scf                                                  ; $114e : $37
	cpl                                                  ; $114f : $2f
	add hl, sp                                                  ; $1150 : $39
	dec a                                                  ; $1151 : $3d
	inc sp                                                  ; $1152 : $33
	cpl                                                  ; $1153 : $2f
	dec (hl)                                                  ; $1154 : $35
	inc h                                                  ; $1155 : $24
	ld sp, $2f35                                                  ; $1156 : $31, $35, $2f
	ld ($2b38), a                                                  ; $1159 : $32, $38, $2b
	dec (hl)                                                  ; $115c : $35
	cpl                                                  ; $115d : $2f
	ld sp, $3d32                                                  ; $115e : $31, $32, $3d
	ld ($2f30), a                                                  ; $1161 : $32, $30, $2f
	ld ($2431), a                                                  ; $1164 : $32, $31, $24
	ld sp, $2f31                                                  ; $1167 : $31, $31, $2f
	ld sp, $2d35                                                  ; $116a : $31, $35, $2d
	ld ($2f34), a                                                  ; $116d : $32, $34, $2f
	inc sp                                                  ; $1170 : $33
	dec (hl)                                                  ; $1171 : $35
	dec a                                                  ; $1172 : $3d
	ld sp, $322f                                                  ; $1173 : $31, $2f, $32
	ld sp, $3224                                                  ; $1176 : $31, $24, $32
	jr nc, br_07_11aa                                                  ; $1179 : $30, $2f

	dec (hl)                                                  ; $117b : $35
	ld sp, $31a5                                                  ; $117c : $31, $a5, $31
	scf                                                  ; $117f : $37
	cpl                                                  ; $1180 : $2f
	inc sp                                                  ; $1181 : $33
	dec (hl)                                                  ; $1182 : $35
	dec a                                                  ; $1183 : $3d
	inc (hl)                                                  ; $1184 : $34
	cpl                                                  ; $1185 : $2f
	ld ($2431), a                                                  ; $1186 : $32, $31, $24
	ld ($2f32), a                                                  ; $1189 : $32, $32, $2f
	inc (hl)                                                  ; $118c : $34
	dec (hl)                                                  ; $118d : $35
	and (hl)                                                  ; $118e : $a6
	ld sp, $2f31                                                  ; $118f : $31, $31, $2f
	ld sp, $3d35                                                  ; $1192 : $31, $35, $3d
	ld ($332f), a                                                  ; $1195 : $32, $2f, $33
	inc h                                                  ; $1198 : $24
	ld sp, $2f30                                                  ; $1199 : $31, $30, $2f
	ld ($2b32), a                                                  ; $119c : $32, $32, $2b
	ld sp, $2f34                                                  ; $119f : $31, $34, $2f
	dec (hl)                                                  ; $11a2 : $35
	dec (hl)                                                  ; $11a3 : $35
	dec a                                                  ; $11a4 : $3d
	inc sp                                                  ; $11a5 : $33
	add hl, sp                                                  ; $11a6 : $39
	cpl                                                  ; $11a7 : $2f
	dec (hl)                                                  ; $11a8 : $35
	dec (hl)                                                  ; $11a9 : $35

br_07_11aa:
	inc h                                                  ; $11aa : $24
	ld ($2f37), a                                                  ; $11ab : $32, $37, $2f
	inc sp                                                  ; $11ae : $33
	inc (hl)                                                  ; $11af : $34
	dec l                                                  ; $11b0 : $2d
	inc sp                                                  ; $11b1 : $33
	ld ($352f), a                                                  ; $11b2 : $32, $2f, $35
	ld sp, $313d                                                  ; $11b5 : $31, $3d, $31
	cpl                                                  ; $11b8 : $2f
	ld (hl), $24                                                  ; $11b9 : $36, $24
	ld ($2f34), a                                                  ; $11bb : $32, $34, $2f
	inc sp                                                  ; $11be : $33
	inc sp                                                  ; $11bf : $33
	and l                                                  ; $11c0 : $a5
	ld sp, $2f31                                                  ; $11c1 : $31, $31, $2f
	ld sp, $3d32                                                  ; $11c4 : $31, $32, $3d
	ld ($332f), a                                                  ; $11c7 : $32, $2f, $33
	inc h                                                  ; $11ca : $24
	scf                                                  ; $11cb : $37
	cpl                                                  ; $11cc : $2f
	ld ($a630), a                                                  ; $11cd : $32, $30, $a6
	inc sp                                                  ; $11d0 : $33
	dec (hl)                                                  ; $11d1 : $35
	cpl                                                  ; $11d2 : $2f
	inc sp                                                  ; $11d3 : $33
	ld (hl), $3d                                                  ; $11d4 : $36, $3d
	add hl, sp                                                  ; $11d6 : $39
	cpl                                                  ; $11d7 : $2f
	ld ($2435), a                                                  ; $11d8 : $32, $35, $24
	ld ($2f37), a                                                  ; $11db : $32, $37, $2f
	inc sp                                                  ; $11de : $33
	ld ($31a5), a                                                  ; $11df : $32, $a5, $31
	ld (hl), $2f                                                  ; $11e2 : $36, $2f
	inc (hl)                                                  ; $11e4 : $34
	dec (hl)                                                  ; $11e5 : $35
	dec a                                                  ; $11e6 : $3d
	inc sp                                                  ; $11e7 : $33
	cpl                                                  ; $11e8 : $2f
	ld sp, $2430                                                  ; $11e9 : $31, $30, $24
	ld ($2f30), a                                                  ; $11ec : $32, $30, $2f
	inc sp                                                  ; $11ef : $33
	inc sp                                                  ; $11f0 : $33
	and (hl)                                                  ; $11f1 : $a6
	ld sp, $2f35                                                  ; $11f2 : $31, $35, $2f
	ld ($3d32), a                                                  ; $11f5 : $32, $32, $3d
	jr c, br_07_1229                                                  ; $11f8 : $38, $2f

	add hl, sp                                                  ; $11fa : $39
	inc h                                                  ; $11fb : $24
	ld ($2f31), a                                                  ; $11fc : $32, $31, $2f
	inc sp                                                  ; $11ff : $33
	ld (hl), $2b                                                  ; $1200 : $36, $2b
	ld ($2f31), a                                                  ; $1202 : $32, $31, $2f
	dec (hl)                                                  ; $1205 : $35
	inc (hl)                                                  ; $1206 : $34
	dec a                                                  ; $1207 : $3d
	inc sp                                                  ; $1208 : $33
	dec (hl)                                                  ; $1209 : $35
	cpl                                                  ; $120a : $2f
	inc sp                                                  ; $120b : $33
	ld (hl), $24                                                  ; $120c : $36, $24
	ld sp, $2f35                                                  ; $120e : $31, $35, $2f
	inc sp                                                  ; $1211 : $33
	inc (hl)                                                  ; $1212 : $34
	dec l                                                  ; $1213 : $2d
	ld ($2f31), a                                                  ; $1214 : $32, $31, $2f
	dec (hl)                                                  ; $1217 : $35
	ld sp, $313d                                                  ; $1218 : $31, $3d, $31
	cpl                                                  ; $121b : $2f
	inc sp                                                  ; $121c : $33
	inc (hl)                                                  ; $121d : $34
	inc h                                                  ; $121e : $24
	ld sp, $2f31                                                  ; $121f : $31, $31, $2f
	ld ($a534), a                                                  ; $1222 : $32, $34, $a5
	ld sp, $2f36                                                  ; $1225 : $31, $36, $2f
	inc sp                                                  ; $1228 : $33

br_07_1229:
	inc sp                                                  ; $1229 : $33
	dec a                                                  ; $122a : $3d
	ld ($392f), a                                                  ; $122b : $32, $2f, $39
	inc h                                                  ; $122e : $24
	ld sp, $2f31                                                  ; $122f : $31, $31, $2f
	ld sp, $a638                                                  ; $1232 : $31, $38, $a6
	ld ($2f32), a                                                  ; $1235 : $32, $32, $2f
	ld ($3d37), a                                                  ; $1238 : $32, $37, $3d
	inc sp                                                  ; $123b : $33
	cpl                                                  ; $123c : $2f
	inc (hl)                                                  ; $123d : $34
	inc h                                                  ; $123e : $24
	ld sp, $2f36                                                  ; $123f : $31, $36, $2f
	inc (hl)                                                  ; $1242 : $34
	dec (hl)                                                  ; $1243 : $35
	dec hl                                                  ; $1244 : $2b
	ld sp, $2f31                                                  ; $1245 : $31, $31, $2f
	ld sp, $3d38                                                  ; $1248 : $31, $38, $3d
	ld ($2f39), a                                                  ; $124b : $32, $39, $2f
	inc sp                                                  ; $124e : $33
	jr nc, br_07_1275                                                  ; $124f : $30, $24

	ld sp, $2f35                                                  ; $1251 : $31, $35, $2f
	ld ($2d32), a                                                  ; $1254 : $32, $32, $2d
	ld ($2f30), a                                                  ; $1257 : $32, $30, $2f
	dec (hl)                                                  ; $125a : $35
	dec (hl)                                                  ; $125b : $35
	dec a                                                  ; $125c : $3d
	scf                                                  ; $125d : $37
	cpl                                                  ; $125e : $2f
	ld ($2432), a                                                  ; $125f : $32, $32, $24
	jr c, $2f                                                  ; $1262 : $38, $2f

	ld sp, $a531                                                  ; $1264 : $31, $31, $a5
	inc sp                                                  ; $1267 : $33
	inc sp                                                  ; $1268 : $33
	cpl                                                  ; $1269 : $2f
	inc (hl)                                                  ; $126a : $34
	jr nc, br_07_12aa                                                  ; $126b : $30, $3d

	inc sp                                                  ; $126d : $33
	cpl                                                  ; $126e : $2f
	dec (hl)                                                  ; $126f : $35
	inc h                                                  ; $1270 : $24
	ld ($2f35), a                                                  ; $1271 : $32, $35, $2f
	inc (hl)                                                  ; $1274 : $34

br_07_1275:
	ld ($35a6), a                                                  ; $1275 : $32, $a6, $35
	cpl                                                  ; $1278 : $2f
	ld (hl), $3d                                                  ; $1279 : $36, $3d
	dec (hl)                                                  ; $127b : $35
	cpl                                                  ; $127c : $2f
	scf                                                  ; $127d : $37
	inc h                                                  ; $127e : $24
	ld ($2f31), a                                                  ; $127f : $32, $31, $2f
	inc sp                                                  ; $1282 : $33
	ld sp, $36a5                                                  ; $1283 : $31, $a5, $36
	ld ($362f), a                                                  ; $1286 : $32, $2f, $36
	inc sp                                                  ; $1289 : $33
	dec a                                                  ; $128a : $3d
	ld ($332f), a                                                  ; $128b : $32, $2f, $33
	inc h                                                  ; $128e : $24
	ld sp, $2f38                                                  ; $128f : $31, $38, $2f
	ld ($a635), a                                                  ; $1292 : $32, $35, $a6
	add hl, sp                                                  ; $1295 : $39
	cpl                                                  ; $1296 : $2f
	ld sp, $3d30                                                  ; $1297 : $31, $30, $3d
	inc (hl)                                                  ; $129a : $34
	cpl                                                  ; $129b : $2f
	dec (hl)                                                  ; $129c : $35
	inc h                                                  ; $129d : $24
	ld sp, $2f37                                                  ; $129e : $31, $37, $2f
	inc sp                                                  ; $12a1 : $33
	ld (hl), $2b                                                  ; $12a2 : $36, $2b
	ld sp, $2f35                                                  ; $12a4 : $31, $35, $2f
	dec (hl)                                                  ; $12a7 : $35
	inc (hl)                                                  ; $12a8 : $34
	dec a                                                  ; $12a9 : $3d

br_07_12aa:
	inc sp                                                  ; $12aa : $33
	cpl                                                  ; $12ab : $2f
	inc (hl)                                                  ; $12ac : $34
	inc h                                                  ; $12ad : $24
	ld sp, $2f31                                                  ; $12ae : $31, $31, $2f
	ld ($2d36), a                                                  ; $12b1 : $32, $36, $2d
	ld sp, $2f34                                                  ; $12b4 : $31, $34, $2f
	inc sp                                                  ; $12b7 : $33
	add hl, sp                                                  ; $12b8 : $39
	dec a                                                  ; $12b9 : $3d
	dec (hl)                                                  ; $12ba : $35
	cpl                                                  ; $12bb : $2f
	scf                                                  ; $12bc : $37
	jr c, br_07_12e3                                                  ; $12bd : $38, $24

	add hl, sp                                                  ; $12bf : $39
	cpl                                                  ; $12c0 : $2f
	ld ($a538), a                                                  ; $12c1 : $32, $38, $a5
	ld sp, $2f34                                                  ; $12c4 : $31, $34, $2f
	ld sp, $3d35                                                  ; $12c7 : $31, $35, $3d
	inc sp                                                  ; $12ca : $33
	cpl                                                  ; $12cb : $2f
	ld sp, $2430                                                  ; $12cc : $31, $30, $24
	inc sp                                                  ; $12cf : $33
	cpl                                                  ; $12d0 : $2f
	ld sp, $a636                                                  ; $12d1 : $31, $36, $a6
	dec (hl)                                                  ; $12d4 : $35
	cpl                                                  ; $12d5 : $2f
	ld ($3d34), a                                                  ; $12d6 : $32, $34, $3d
	add hl, sp                                                  ; $12d9 : $39
	cpl                                                  ; $12da : $2f
	ld sp, $2430                                                  ; $12db : $31, $30, $24
	scf                                                  ; $12de : $37
	cpl                                                  ; $12df : $2f
	ld sp, $2b35                                                  ; $12e0 : $31, $35, $2b

br_07_12e3:
	ld sp, $2f31                                                  ; $12e3 : $31, $31, $2f
	ld ($3d34), a                                                  ; $12e6 : $32, $34, $3d
	inc sp                                                  ; $12e9 : $33
	scf                                                  ; $12ea : $37
	cpl                                                  ; $12eb : $2f
	inc (hl)                                                  ; $12ec : $34
	jr nc, br_07_1313                                                  ; $12ed : $30, $24

	add hl, sp                                                  ; $12ef : $39
	cpl                                                  ; $12f0 : $2f
	ld sp, $2d34                                                  ; $12f1 : $31, $34, $2d
	ld sp, $2f30                                                  ; $12f4 : $31, $30, $2f
	ld ($3d31), a                                                  ; $12f7 : $32, $31, $3d
	ld sp, $362f                                                  ; $12fa : $31, $2f, $36
	inc h                                                  ; $12fd : $24
	ld sp, $2f34                                                  ; $12fe : $31, $34, $2f
	ld ($a537), a                                                  ; $1301 : $32, $37, $a5
	ld sp, $2f38                                                  ; $1304 : $31, $38, $2f
	inc sp                                                  ; $1307 : $33

Jump_07_1308:
	dec (hl)                                                  ; $1308 : $35
	dec a                                                  ; $1309 : $3d
	inc (hl)                                                  ; $130a : $34
	cpl                                                  ; $130b : $2f
	ld sp, $2435                                                  ; $130c : $31, $35, $24
	dec (hl)                                                  ; $130f : $35
	cpl                                                  ; $1310 : $2f
	ld (hl), $a6                                                  ; $1311 : $36, $a6

br_07_1313:
	ld sp, $2f35                                                  ; $1313 : $31, $35, $2f
	ld sp, $3d36                                                  ; $1316 : $31, $36, $3d
	jr c, $2f                                                  ; $1319 : $38, $2f

	add hl, sp                                                  ; $131b : $39
	inc h                                                  ; $131c : $24
	dec (hl)                                                  ; $131d : $35
	cpl                                                  ; $131e : $2f
	ld sp, $a537                                                  ; $131f : $31, $37, $a5
	inc sp                                                  ; $1322 : $33
	inc (hl)                                                  ; $1323 : $34
	cpl                                                  ; $1324 : $2f
	inc (hl)                                                  ; $1325 : $34
	dec (hl)                                                  ; $1326 : $35
	dec a                                                  ; $1327 : $3d
	ld ($392f), a                                                  ; $1328 : $32, $2f, $39
	inc h                                                  ; $132b : $24
	ld sp, $2f36                                                  ; $132c : $31, $36, $2f
	ld ($a631), a                                                  ; $132f : $32, $31, $a6
	inc sp                                                  ; $1332 : $33
	ld ($332f), a                                                  ; $1333 : $32, $2f, $33
	dec (hl)                                                  ; $1336 : $35
	dec a                                                  ; $1337 : $3d
	dec (hl)                                                  ; $1338 : $35
	cpl                                                  ; $1339 : $2f
	ld (hl), $24                                                  ; $133a : $36, $24
	dec (hl)                                                  ; $133c : $35
	cpl                                                  ; $133d : $2f
	ld sp, $2b34                                                  ; $133e : $31, $34, $2b
	ld sp, $2f30                                                  ; $1341 : $31, $30, $2f
	ld ($3d31), a                                                  ; $1344 : $32, $31, $3d
	dec (hl)                                                  ; $1347 : $35
	cpl                                                  ; $1348 : $2f
	ld (hl), $24                                                  ; $1349 : $36, $24
	ld sp, $2f33                                                  ; $134b : $31, $33, $2f
	ld ($2d34), a                                                  ; $134e : $32, $34, $2d
	ld sp, $2f35                                                  ; $1351 : $31, $35, $2f
	inc sp                                                  ; $1354 : $33
	ld (hl), $3d                                                  ; $1355 : $36, $3d
	ld sp, $382f                                                  ; $1357 : $31, $2f, $38
	inc h                                                  ; $135a : $24
	ld ($2f35), a                                                  ; $135b : $32, $35, $2f
	inc sp                                                  ; $135e : $33
	inc sp                                                  ; $135f : $33
	and l                                                  ; $1360 : $a5
	ld ($2f32), a                                                  ; $1361 : $32, $32, $2f
	inc sp                                                  ; $1364 : $33
	dec (hl)                                                  ; $1365 : $35
	dec a                                                  ; $1366 : $3d
	ld sp, $2f30                                                  ; $1367 : $31, $30, $2f
	ld ($2431), a                                                  ; $136a : $32, $31, $24
	ld ($2f35), a                                                  ; $136d : $32, $35, $2f
	inc sp                                                  ; $1370 : $33
	ld ($31a6), a                                                  ; $1371 : $32, $a6, $31
	dec (hl)                                                  ; $1374 : $35
	cpl                                                  ; $1375 : $2f
	ld sp, $3d36                                                  ; $1376 : $31, $36, $3d
	dec (hl)                                                  ; $1379 : $35
	cpl                                                  ; $137a : $2f
	ld (hl), $24                                                  ; $137b : $36, $24
	ld ($2f37), a                                                  ; $137d : $32, $37, $2f
	ld (hl), $34                                                  ; $1380 : $36, $34
	dec hl                                                  ; $1382 : $2b
	ld sp, $2f35                                                  ; $1383 : $31, $35, $2f
	inc (hl)                                                  ; $1386 : $34
	jr c, $3d                                                  ; $1387 : $38, $3d

	inc (hl)                                                  ; $1389 : $34
	scf                                                  ; $138a : $37
	cpl                                                  ; $138b : $2f
	ld (hl), $34                                                  ; $138c : $36, $34
	inc h                                                  ; $138e : $24
	ld sp, $2f35                                                  ; $138f : $31, $35, $2f
	ld ($2d38), a                                                  ; $1392 : $32, $38, $2d
	ld sp, $2f38                                                  ; $1395 : $31, $38, $2f
	inc (hl)                                                  ; $1398 : $34
	ld ($333d), a                                                  ; $1399 : $32, $3d, $33
	cpl                                                  ; $139c : $2f
	ld ($2438), a                                                  ; $139d : $32, $38, $24
	scf                                                  ; $13a0 : $37
	cpl                                                  ; $13a1 : $2f
	ld ($a534), a                                                  ; $13a2 : $32, $34, $a5
	inc sp                                                  ; $13a5 : $33
	ld ($362f), a                                                  ; $13a6 : $32, $2f, $36
	inc sp                                                  ; $13a9 : $33
	dec a                                                  ; $13aa : $3d
	inc (hl)                                                  ; $13ab : $34
	cpl                                                  ; $13ac : $2f
	ld ($2437), a                                                  ; $13ad : $32, $37, $24
	ld sp, $2f33                                                  ; $13b0 : $31, $33, $2f
	ld ($a635), a                                                  ; $13b3 : $32, $35, $a6
	ld ($2f36), a                                                  ; $13b6 : $32, $36, $2f
	inc (hl)                                                  ; $13b9 : $34
	dec (hl)                                                  ; $13ba : $35
	dec a                                                  ; $13bb : $3d
	add hl, sp                                                  ; $13bc : $39
	cpl                                                  ; $13bd : $2f
	ld sp, $2430                                                  ; $13be : $31, $30, $24
	ld ($2f31), a                                                  ; $13c1 : $32, $31, $2f
	ld ($a536), a                                                  ; $13c4 : $32, $36, $a5
	ld sp, $2f33                                                  ; $13c7 : $31, $33, $2f
	ld sp, $3d38                                                  ; $13ca : $31, $38, $3d
	scf                                                  ; $13cd : $37
	cpl                                                  ; $13ce : $2f
	ld sp, $2432                                                  ; $13cf : $31, $32, $24
	jr c, $2f                                                  ; $13d2 : $38, $2f

	ld ($a635), a                                                  ; $13d4 : $32, $35, $a6
	inc (hl)                                                  ; $13d7 : $34
	cpl                                                  ; $13d8 : $2f
	dec (hl)                                                  ; $13d9 : $35
	dec a                                                  ; $13da : $3d
	ld ($352f), a                                                  ; $13db : $32, $2f, $35
	inc h                                                  ; $13de : $24
	ld sp, $2f39                                                  ; $13df : $31, $39, $2f
	inc sp                                                  ; $13e2 : $33
	jr nc, $2b                                                  ; $13e3 : $30, $2b

	dec (hl)                                                  ; $13e5 : $35
	cpl                                                  ; $13e6 : $2f
	ld sp, $3d38                                                  ; $13e7 : $31, $38, $3d
	inc (hl)                                                  ; $13ea : $34
	ld sp, $342f                                                  ; $13eb : $31, $2f, $34
	dec (hl)                                                  ; $13ee : $35
	inc h                                                  ; $13ef : $24
	ld sp, $2f32                                                  ; $13f0 : $31, $32, $2f
	ld sp, $2d37                                                  ; $13f3 : $31, $37, $2d
	ld sp, $2f38                                                  ; $13f6 : $31, $38, $2f
	dec (hl)                                                  ; $13f9 : $35
	ld sp, $363d                                                  ; $13fa : $31, $3d, $36
	cpl                                                  ; $13fd : $2f
	ld sp, $2437                                                  ; $13fe : $31, $37, $24
	ld sp, $2f34                                                  ; $1401 : $31, $34, $2f
	ld ($a537), a                                                  ; $1404 : $32, $37, $a5
	inc (hl)                                                  ; $1407 : $34
	dec (hl)                                                  ; $1408 : $35
	cpl                                                  ; $1409 : $2f
	dec (hl)                                                  ; $140a : $35
	ld (hl), $3d                                                  ; $140b : $36, $3d
	dec (hl)                                                  ; $140d : $35
	cpl                                                  ; $140e : $2f
	ld sp, $2432                                                  ; $140f : $31, $32, $24
	scf                                                  ; $1412 : $37
	cpl                                                  ; $1413 : $2f
	ld sp, $a632                                                  ; $1414 : $31, $32, $a6
	ld ($2f31), a                                                  ; $1417 : $32, $31, $2f
	inc sp                                                  ; $141a : $33
	ld ($383d), a                                                  ; $141b : $32, $3d, $38
	cpl                                                  ; $141e : $2f
	add hl, sp                                                  ; $141f : $39
	inc h                                                  ; $1420 : $24
	jr br_07_1464                                                  ; $1421 : $18, $41

	jr nz, br_07_1488                                                  ; $1423 : $20, $63

	ld l, h                                                  ; $1425 : $6c
	ld l, a                                                  ; $1426 : $6f
	ld h, e                                                  ; $1427 : $63
	ld l, e                                                  ; $1428 : $6b
	jr nz, br_07_148c                                                  ; $1429 : $20, $61

	ld l, (hl)                                                  ; $142b : $6e
	ld h, h                                                  ; $142c : $64
	jr nz, br_07_1490                                                  ; $142d : $20, $61

	jr nz, br_07_14a1                                                  ; $142f : $20, $70

	ld h, l                                                  ; $1431 : $65
	ld l, (hl)                                                  ; $1432 : $6e
	jr nz, $63                                                  ; $1433 : $20, $63

	ld l, a                                                  ; $1435 : $6f
	ld (hl), e                                                  ; $1436 : $73
	ld (hl), h                                                  ; $1437 : $74
	jr nz, br_07_145e                                                  ; $1438 : $20, $24

	ret po                                                  ; $143a : $e0

	call po, Call_07_2b05                                                  ; $143b : $e4, $05, $2b
	jr nz, br_07_14b4                                                  ; $143e : $20, $74

	ld l, a                                                  ; $1440 : $6f
	ld h, a                                                  ; $1441 : $67
	ld h, l                                                  ; $1442 : $65
	ld (hl), h                                                  ; $1443 : $74
	ld l, b                                                  ; $1444 : $68
	ld h, l                                                  ; $1445 : $65
	ld (hl), d                                                  ; $1446 : $72
	ld l, $20                                                  ; $1447 : $2e, $20
	ld (hl), a                                                  ; $1449 : $77
	ld l, b                                                  ; $144a : $68
	ld h, c                                                  ; $144b : $61
	ld (hl), h                                                  ; $144c : $74
	jr nz, br_07_14b2                                                  ; $144d : $20, $63

	ld l, b                                                  ; $144f : $68
	ld h, c                                                  ; $1450 : $61
	ld l, (hl)                                                  ; $1451 : $6e
	ld h, a                                                  ; $1452 : $67
	ld h, l                                                  ; $1453 : $65
	jr nz, $64                                                  ; $1454 : $20, $64

	ld l, a                                                  ; $1456 : $6f
	jr nz, br_07_14d2                                                  ; $1457 : $20, $79

	ld l, a                                                  ; $1459 : $6f
	ld (hl), l                                                  ; $145a : $75
	jr nz, $67                                                  ; $145b : $20, $67

	ld h, l                                                  ; $145d : $65

br_07_145e:
	ld (hl), h                                                  ; $145e : $74
	jr nz, $66                                                  ; $145f : $20, $66

	ld (hl), d                                                  ; $1461 : $72
	ld l, a                                                  ; $1462 : $6f
	ld l, l                                                  ; $1463 : $6d

br_07_1464:
	jr nz, br_07_148a                                                  ; $1464 : $20, $24

	ld ($3f30), a                                                  ; $1466 : $32, $30, $3f
	nop                                                  ; $1469 : $00
	nop                                                  ; $146a : $00
	ld sp, hl                                                  ; $146b : $f9
	call po, $0b04                                                  ; $146c : $e4, $04, $0b
	ld c, d                                                  ; $146f : $4a
	ld l, a                                                  ; $1470 : $6f
	ld a, c                                                  ; $1471 : $79
	ld h, e                                                  ; $1472 : $63
	ld h, l                                                  ; $1473 : $65
	jr nz, br_07_14d8                                                  ; $1474 : $20, $62

	ld (hl), l                                                  ; $1476 : $75
	ld a, c                                                  ; $1477 : $79
	ld (hl), e                                                  ; $1478 : $73
	jr nz, br_07_14b5                                                  ; $1479 : $20, $3a

	push hl                                                  ; $147b : $e5
	ld (bc), a                                                  ; $147c : $02
	ld l, $20                                                  ; $147d : $2e, $20
	ld h, (hl)                                                  ; $147f : $66
	ld l, h                                                  ; $1480 : $6c
	ld l, a                                                  ; $1481 : $6f
	ld (hl), a                                                  ; $1482 : $77
	ld h, l                                                  ; $1483 : $65
	ld (hl), d                                                  ; $1484 : $72
	ld (hl), e                                                  ; $1485 : $73
	jr nz, br_07_14ee                                                  ; $1486 : $20, $66

br_07_1488:
	ld l, a                                                  ; $1488 : $6f
	ld (hl), d                                                  ; $1489 : $72

br_07_148a:
	jr nz, br_07_14b0                                                  ; $148a : $20, $24

br_07_148c:
	ld ($6520), a                                                  ; $148c : $32, $20, $65
	ld h, c                                                  ; $148f : $61

br_07_1490:
	ld h, e                                                  ; $1490 : $63
	ld l, b                                                  ; $1491 : $68
	ld l, $20                                                  ; $1492 : $2e, $20
	ld c, b                                                  ; $1494 : $48
	ld l, a                                                  ; $1495 : $6f
	ld (hl), a                                                  ; $1496 : $77
	jr nz, $6d                                                  ; $1497 : $20, $6d

	ld (hl), l                                                  ; $1499 : $75
	ld h, e                                                  ; $149a : $63
	ld l, b                                                  ; $149b : $68
	jr nz, $64                                                  ; $149c : $20, $64

	ld l, a                                                  ; $149e : $6f
	ld h, l                                                  ; $149f : $65
	ld (hl), e                                                  ; $14a0 : $73

br_07_14a1:
	jr nz, br_07_1516                                                  ; $14a1 : $20, $73

	ld l, b                                                  ; $14a3 : $68
	ld h, l                                                  ; $14a4 : $65
	jr nz, $73                                                  ; $14a5 : $20, $73

	ld (hl), b                                                  ; $14a7 : $70
	ld h, l                                                  ; $14a8 : $65
	ld l, (hl)                                                  ; $14a9 : $6e
	ld h, h                                                  ; $14aa : $64
	ccf                                                  ; $14ab : $3f
	nop                                                  ; $14ac : $00
	nop                                                  ; $14ad : $00
	ld b, h                                                  ; $14ae : $44
	push hl                                                  ; $14af : $e5

br_07_14b0:
	ld (bc), a                                                  ; $14b0 : $02
	inc hl                                                  ; $14b1 : $23

br_07_14b2:
	ld d, h                                                  ; $14b2 : $54
	ld l, b                                                  ; $14b3 : $68

br_07_14b4:
	ld h, l                                                  ; $14b4 : $65

br_07_14b5:
	jr nz, $63                                                  ; $14b5 : $20, $63

	ld (hl), l                                                  ; $14b7 : $75
	ld h, d                                                  ; $14b8 : $62
	jr nz, $70                                                  ; $14b9 : $20, $70

	ld h, c                                                  ; $14bb : $61
	ld h, e                                                  ; $14bc : $63
	ld l, e                                                  ; $14bd : $6b
	jr nz, br_07_1537                                                  ; $14be : $20, $77

	ld h, l                                                  ; $14c0 : $65
	ld l, (hl)                                                  ; $14c1 : $6e
	ld (hl), h                                                  ; $14c2 : $74
	jr nz, br_07_1539                                                  ; $14c3 : $20, $74

	ld l, a                                                  ; $14c5 : $6f
	jr nz, $74                                                  ; $14c6 : $20, $74

	ld l, b                                                  ; $14c8 : $68
	ld h, l                                                  ; $14c9 : $65
	jr nz, br_07_152e                                                  ; $14ca : $20, $62

	ld h, c                                                  ; $14cc : $61
	ld l, h                                                  ; $14cd : $6c
	ld l, h                                                  ; $14ce : $6c
	ld h, a                                                  ; $14cf : $67
	ld h, c                                                  ; $14d0 : $61
	ld l, l                                                  ; $14d1 : $6d

br_07_14d2:
	ld h, l                                                  ; $14d2 : $65
	ld l, $20                                                  ; $14d3 : $2e, $20
	ld c, (hl)                                                  ; $14d5 : $4e
	push hl                                                  ; $14d6 : $e5
	ld (bc), a                                                  ; $14d7 : $02

br_07_14d8:
	ld ($6320), a                                                  ; $14d8 : $32, $20, $63
	ld h, c                                                  ; $14db : $61
	ld (hl), d                                                  ; $14dc : $72
	ld (hl), e                                                  ; $14dd : $73
	jr nz, br_07_1545                                                  ; $14de : $20, $65

	ld h, c                                                  ; $14e0 : $61
	ld h, e                                                  ; $14e1 : $63
	ld l, b                                                  ; $14e2 : $68
	jr nz, br_07_1559                                                  ; $14e3 : $20, $74

	ld l, a                                                  ; $14e5 : $6f
	ld l, a                                                  ; $14e6 : $6f
	ld l, e                                                  ; $14e7 : $6b
	jr nz, $35                                                  ; $14e8 : $20, $35

	jr nz, br_07_1557                                                  ; $14ea : $20, $6b

	ld l, c                                                  ; $14ec : $69
	ld h, h                                                  ; $14ed : $64

br_07_14ee:
	ld (hl), e                                                  ; $14ee : $73
	ld l, $20                                                  ; $14ef : $2e, $20
	ld c, b                                                  ; $14f1 : $48
	ld l, a                                                  ; $14f2 : $6f
	ld (hl), a                                                  ; $14f3 : $77
	jr nz, br_07_1563                                                  ; $14f4 : $20, $6d

	ld h, c                                                  ; $14f6 : $61
	ld l, (hl)                                                  ; $14f7 : $6e
	ld a, c                                                  ; $14f8 : $79
	jr nz, br_07_1572                                                  ; $14f9 : $20, $77

	ld h, l                                                  ; $14fb : $65
	ld l, (hl)                                                  ; $14fc : $6e
	ld (hl), h                                                  ; $14fd : $74
	jr nz, br_07_1574                                                  ; $14fe : $20, $74

	ld l, a                                                  ; $1500 : $6f
	jr nz, br_07_1577                                                  ; $1501 : $20, $74

	ld l, b                                                  ; $1503 : $68
	ld h, l                                                  ; $1504 : $65
	jr nz, br_07_156e                                                  ; $1505 : $20, $67

	ld h, c                                                  ; $1507 : $61
	ld l, l                                                  ; $1508 : $6d
	ld h, l                                                  ; $1509 : $65
	ccf                                                  ; $150a : $3f
	nop                                                  ; $150b : $00
	nop                                                  ; $150c : $00
	ld e, b                                                  ; $150d : $58
	push hl                                                  ; $150e : $e5
	ld (bc), a                                                  ; $150f : $02
	dec hl                                                  ; $1510 : $2b
	ld c, b                                                  ; $1511 : $48
	ld l, a                                                  ; $1512 : $6f
	ld (hl), a                                                  ; $1513 : $77
	jr nz, br_07_1583                                                  ; $1514 : $20, $6d

br_07_1516:
	ld (hl), l                                                  ; $1516 : $75
	ld h, e                                                  ; $1517 : $63
	ld l, b                                                  ; $1518 : $68
	jr nz, br_07_158f                                                  ; $1519 : $20, $74

	ld l, c                                                  ; $151b : $69
	ld l, l                                                  ; $151c : $6d
	ld h, l                                                  ; $151d : $65
	jr nz, br_07_1584                                                  ; $151e : $20, $64

	ld l, a                                                  ; $1520 : $6f
	ld h, l                                                  ; $1521 : $65
	ld (hl), e                                                  ; $1522 : $73
	jr nz, br_07_156c                                                  ; $1523 : $20, $47

	ld h, l                                                  ; $1525 : $65
	ld l, a                                                  ; $1526 : $6f
	ld (hl), d                                                  ; $1527 : $72
	ld h, a                                                  ; $1528 : $67
	ld h, l                                                  ; $1529 : $65
	jr nz, $73                                                  ; $152a : $20, $73

	ld (hl), a                                                  ; $152c : $77
	ld l, c                                                  ; $152d : $69

br_07_152e:
	ld l, l                                                  ; $152e : $6d
	jr nz, br_07_159a                                                  ; $152f : $20, $69

	ld h, (hl)                                                  ; $1531 : $66
	jr nz, br_07_159c                                                  ; $1532 : $20, $68

	ld h, l                                                  ; $1534 : $65
	jr nz, br_07_15aa                                                  ; $1535 : $20, $73

br_07_1537:
	ld (hl), a                                                  ; $1537 : $77
	ld l, c                                                  ; $1538 : $69

br_07_1539:
	ld l, l                                                  ; $1539 : $6d
	ld (hl), e                                                  ; $153a : $73
	jr nz, $62                                                  ; $153b : $20, $62

	push hl                                                  ; $153d : $e5
	ld bc, $2011                                                  ; $153e : $01, $11, $20
	ld l, b                                                  ; $1541 : $68
	ld l, a                                                  ; $1542 : $6f
	ld (hl), l                                                  ; $1543 : $75
	ld (hl), d                                                  ; $1544 : $72

br_07_1545:
	ld (hl), e                                                  ; $1545 : $73
	jr nz, br_07_15a9                                                  ; $1546 : $20, $61

	jr nz, br_07_15ae                                                  ; $1548 : $20, $64

	ld h, c                                                  ; $154a : $61
	ld a, c                                                  ; $154b : $79
	jr nz, br_07_15b4                                                  ; $154c : $20, $66

	ld l, a                                                  ; $154e : $6f
	ld (hl), d                                                  ; $154f : $72
	jr nz, br_07_15b9                                                  ; $1550 : $20, $67

	push hl                                                  ; $1552 : $e5
	ld (bc), a                                                  ; $1553 : $02
	ld b, $20                                                  ; $1554 : $06, $20
	ld h, h                                                  ; $1556 : $64

br_07_1557:
	ld h, c                                                  ; $1557 : $61
	ld a, c                                                  ; $1558 : $79

br_07_1559:
	ld (hl), e                                                  ; $1559 : $73
	ccf                                                  ; $155a : $3f
	nop                                                  ; $155b : $00
	nop                                                  ; $155c : $00
	ld (hl), c                                                  ; $155d : $71
	push hl                                                  ; $155e : $e5
	ld (bc), a                                                  ; $155f : $02
	jr c, br_07_15aa                                                  ; $1560 : $38, $48

	ld l, a                                                  ; $1562 : $6f

br_07_1563:
	ld (hl), a                                                  ; $1563 : $77
	jr nz, $6d                                                  ; $1564 : $20, $6d

	ld (hl), l                                                  ; $1566 : $75
	ld h, e                                                  ; $1567 : $63
	ld l, b                                                  ; $1568 : $68
	jr nz, $77                                                  ; $1569 : $20, $77

	ld l, a                                                  ; $156b : $6f

br_07_156c:
	ld (hl), l                                                  ; $156c : $75
	ld l, h                                                  ; $156d : $6c

br_07_156e:
	ld h, h                                                  ; $156e : $64
	jr nz, br_07_15da                                                  ; $156f : $20, $69

	ld (hl), h                                                  ; $1571 : $74

br_07_1572:
	jr nz, $63                                                  ; $1572 : $20, $63

br_07_1574:
	ld l, a                                                  ; $1574 : $6f
	ld (hl), e                                                  ; $1575 : $73
	ld (hl), h                                                  ; $1576 : $74

br_07_1577:
	jr nz, br_07_15ed                                                  ; $1577 : $20, $74

	ld l, a                                                  ; $1579 : $6f
	jr nz, br_07_15e9                                                  ; $157a : $20, $6d

	ld h, c                                                  ; $157c : $61
	ld l, c                                                  ; $157d : $69
	ld l, h                                                  ; $157e : $6c
	jr nz, br_07_15b4                                                  ; $157f : $20, $33

	jr nz, br_07_15f3                                                  ; $1581 : $20, $70

br_07_1583:
	ld h, c                                                  ; $1583 : $61

br_07_1584:
	ld h, e                                                  ; $1584 : $63
	ld l, e                                                  ; $1585 : $6b
	ld h, c                                                  ; $1586 : $61
	ld h, a                                                  ; $1587 : $67
	ld h, l                                                  ; $1588 : $65
	ld (hl), e                                                  ; $1589 : $73
	jr nz, br_07_15f1                                                  ; $158a : $20, $65

	ld h, c                                                  ; $158c : $61
	ld h, e                                                  ; $158d : $63
	ld l, b                                                  ; $158e : $68

br_07_158f:
	jr nz, $63                                                  ; $158f : $20, $63

	ld l, a                                                  ; $1591 : $6f
	ld (hl), e                                                  ; $1592 : $73
	ld (hl), h                                                  ; $1593 : $74
	ld l, c                                                  ; $1594 : $69
	ld l, (hl)                                                  ; $1595 : $6e
	ld h, a                                                  ; $1596 : $67
	jr nz, br_07_15bd                                                  ; $1597 : $20, $24

	xor b                                                  ; $1599 : $a8

br_07_159a:
	push hl                                                  ; $159a : $e5
	inc b                                                  ; $159b : $04

br_07_159c:
	inc bc                                                  ; $159c : $03
	inc l                                                  ; $159d : $2c
	jr nz, br_07_15c4                                                  ; $159e : $20, $24

	cp h                                                  ; $15a0 : $bc
	push hl                                                  ; $15a1 : $e5
	inc b                                                  ; $15a2 : $04
	inc bc                                                  ; $15a3 : $03
	inc l                                                  ; $15a4 : $2c
	jr nz, br_07_15cb                                                  ; $15a5 : $20, $24

	ret nc                                                  ; $15a7 : $d0

	push hl                                                  ; $15a8 : $e5

br_07_15a9:
	inc b                                                  ; $15a9 : $04

br_07_15aa:
	ld bc, $003f                                                  ; $15aa : $01, $3f, $00
	nop                                                  ; $15ad : $00

br_07_15ae:
	call po, Call_07_05e5                                                  ; $15ae : $e4, $e5, $05
	dec c                                                  ; $15b1 : $0d
	ld c, c                                                  ; $15b2 : $49
	ld h, (hl)                                                  ; $15b3 : $66

br_07_15b4:
	jr nz, br_07_1600                                                  ; $15b4 : $20, $4a

	ld (hl), l                                                  ; $15b6 : $75
	ld h, h                                                  ; $15b7 : $64
	ld a, c                                                  ; $15b8 : $79

br_07_15b9:
	jr nz, $62                                                  ; $15b9 : $20, $62

	ld (hl), l                                                  ; $15bb : $75
	ld a, c                                                  ; $15bc : $79

br_07_15bd:
	ld (hl), e                                                  ; $15bd : $73
	jr nz, br_07_15cd                                                  ; $15be : $20, $0d

	push hl                                                  ; $15c0 : $e5
	ld bc, $2015                                                  ; $15c1 : $01, $15, $20

br_07_15c4:
	ld h, d                                                  ; $15c4 : $62
	ld h, c                                                  ; $15c5 : $61
	ld h, a                                                  ; $15c6 : $67
	ld (hl), e                                                  ; $15c7 : $73
	jr nz, br_07_1639                                                  ; $15c8 : $20, $6f

	ld h, (hl)                                                  ; $15ca : $66

br_07_15cb:
	jr nz, br_07_1631                                                  ; $15cb : $20, $64

br_07_15cd:
	ld l, a                                                  ; $15cd : $6f
	ld l, (hl)                                                  ; $15ce : $6e
	ld (hl), l                                                  ; $15cf : $75
	ld (hl), h                                                  ; $15d0 : $74
	ld (hl), e                                                  ; $15d1 : $73
	jr nz, br_07_163a                                                  ; $15d2 : $20, $66

	ld l, a                                                  ; $15d4 : $6f
	ld (hl), d                                                  ; $15d5 : $72
	jr nz, br_07_15fc                                                  ; $15d6 : $20, $24

	ld (de), a                                                  ; $15d8 : $12

Jump_07_15d9:
	push hl                                                  ; $15d9 : $e5

br_07_15da:
	inc b                                                  ; $15da : $04
	dec h                                                  ; $15db : $25
	inc l                                                  ; $15dc : $2c
	jr nz, br_07_1647                                                  ; $15dd : $20, $68

	ld l, a                                                  ; $15df : $6f
	ld (hl), a                                                  ; $15e0 : $77
	jr nz, $6d                                                  ; $15e1 : $20, $6d

	ld (hl), l                                                  ; $15e3 : $75
	ld h, e                                                  ; $15e4 : $63
	ld l, b                                                  ; $15e5 : $68
	jr nz, br_07_164c                                                  ; $15e6 : $20, $64

	ld l, a                                                  ; $15e8 : $6f

br_07_15e9:
	ld h, l                                                  ; $15e9 : $65
	ld (hl), e                                                  ; $15ea : $73
	jr nz, br_07_1660                                                  ; $15eb : $20, $73

br_07_15ed:
	ld l, b                                                  ; $15ed : $68
	ld h, l                                                  ; $15ee : $65
	jr nz, br_07_1661                                                  ; $15ef : $20, $70

br_07_15f1:
	ld h, c                                                  ; $15f1 : $61
	ld a, c                                                  ; $15f2 : $79

br_07_15f3:
	jr nz, br_07_165b                                                  ; $15f3 : $20, $66

	ld l, a                                                  ; $15f5 : $6f
	ld (hl), d                                                  ; $15f6 : $72
	jr nz, br_07_165e                                                  ; $15f7 : $20, $65

	ld h, c                                                  ; $15f9 : $61
	ld h, e                                                  ; $15fa : $63
	ld l, b                                                  ; $15fb : $68

br_07_15fc:
	jr nz, br_07_1660                                                  ; $15fc : $20, $62

	ld h, c                                                  ; $15fe : $61
	ld h, a                                                  ; $15ff : $67

br_07_1600:
	ccf                                                  ; $1600 : $3f
	nop                                                  ; $1601 : $00
	nop                                                  ; $1602 : $00
	ld h, $e5                                                  ; $1603 : $26, $e5
	inc b                                                  ; $1605 : $04
	ld d, $44                                                  ; $1606 : $16, $44
	ld (hl), l                                                  ; $1608 : $75
	ld (hl), d                                                  ; $1609 : $72
	ld l, c                                                  ; $160a : $69
	ld l, (hl)                                                  ; $160b : $6e
	ld h, a                                                  ; $160c : $67
	jr nz, br_07_1670                                                  ; $160d : $20, $61

	jr nz, br_07_1684                                                  ; $160f : $20, $73

	ld (hl), b                                                  ; $1611 : $70
	ld h, l                                                  ; $1612 : $65
	ld h, e                                                  ; $1613 : $63
	ld l, c                                                  ; $1614 : $69
	ld h, c                                                  ; $1615 : $61
	ld l, h                                                  ; $1616 : $6c
	jr nz, br_07_168c                                                  ; $1617 : $20, $73

	ld h, c                                                  ; $1619 : $61
	ld l, h                                                  ; $161a : $6c
	ld h, l                                                  ; $161b : $65
	jr nz, br_07_1699                                                  ; $161c : $20, $7b

	push hl                                                  ; $161e : $e5
	ld bc, $2020                                                  ; $161f : $01, $20, $20
	ld l, b                                                  ; $1622 : $68
	ld h, c                                                  ; $1623 : $61
	ld l, l                                                  ; $1624 : $6d
	ld h, d                                                  ; $1625 : $62
	ld (hl), l                                                  ; $1626 : $75
	ld (hl), d                                                  ; $1627 : $72
	ld h, a                                                  ; $1628 : $67
	ld h, l                                                  ; $1629 : $65
	ld (hl), d                                                  ; $162a : $72
	ld (hl), e                                                  ; $162b : $73
	jr nz, br_07_16a5                                                  ; $162c : $20, $77

	ld h, l                                                  ; $162e : $65
	ld (hl), d                                                  ; $162f : $72
	ld h, l                                                  ; $1630 : $65

br_07_1631:
	jr nz, br_07_1694                                                  ; $1631 : $20, $61

	halt                                                  ; $1633 : $76
	ld h, c                                                  ; $1634 : $61
	ld l, c                                                  ; $1635 : $69
	ld l, h                                                  ; $1636 : $6c
	ld h, c                                                  ; $1637 : $61
	ld h, d                                                  ; $1638 : $62

br_07_1639:
	ld l, h                                                  ; $1639 : $6c

br_07_163a:
	ld h, l                                                  ; $163a : $65
	jr nz, br_07_16a3                                                  ; $163b : $20, $66

	ld l, a                                                  ; $163d : $6f
	ld (hl), d                                                  ; $163e : $72
	jr nz, br_07_1665                                                  ; $163f : $20, $24

	add a, b                                                  ; $1641 : $80
	push hl                                                  ; $1642 : $e5
	inc b                                                  ; $1643 : $04
	inc hl                                                  ; $1644 : $23
	ld l, $20                                                  ; $1645 : $2e, $20

br_07_1647:
	ld c, b                                                  ; $1647 : $48
	ld l, a                                                  ; $1648 : $6f
	ld (hl), a                                                  ; $1649 : $77
	jr nz, br_07_16b9                                                  ; $164a : $20, $6d

br_07_164c:
	ld (hl), l                                                  ; $164c : $75
	ld h, e                                                  ; $164d : $63
	ld l, b                                                  ; $164e : $68
	jr nz, $64                                                  ; $164f : $20, $64

	ld l, c                                                  ; $1651 : $69
	ld h, h                                                  ; $1652 : $64
	jr nz, $65                                                  ; $1653 : $20, $65

	ld h, c                                                  ; $1655 : $61
	ld h, e                                                  ; $1656 : $63
	ld l, b                                                  ; $1657 : $68
	jr nz, br_07_16c2                                                  ; $1658 : $20, $68

	ld h, c                                                  ; $165a : $61

br_07_165b:
	ld l, l                                                  ; $165b : $6d
	ld h, d                                                  ; $165c : $62
	ld (hl), l                                                  ; $165d : $75

br_07_165e:
	ld (hl), d                                                  ; $165e : $72
	ld h, a                                                  ; $165f : $67

br_07_1660:
	ld h, l                                                  ; $1660 : $65

br_07_1661:
	ld (hl), d                                                  ; $1661 : $72
	jr nz, br_07_16c7                                                  ; $1662 : $20, $63

	ld l, a                                                  ; $1664 : $6f

br_07_1665:
	ld (hl), e                                                  ; $1665 : $73
	ld (hl), h                                                  ; $1666 : $74
	ccf                                                  ; $1667 : $3f
	nop                                                  ; $1668 : $00
	nop                                                  ; $1669 : $00
	sub h                                                  ; $166a : $94
	push hl                                                  ; $166b : $e5
	inc b                                                  ; $166c : $04
	rra                                                  ; $166d : $1f
	ld c, a                                                  ; $166e : $4f
	ld l, (hl)                                                  ; $166f : $6e

br_07_1670:
	jr nz, $64                                                  ; $1670 : $20, $64

	ld l, c                                                  ; $1672 : $69
	ld h, a                                                  ; $1673 : $67
	ld l, c                                                  ; $1674 : $69
	ld (hl), h                                                  ; $1675 : $74
	ld h, c                                                  ; $1676 : $61
	ld l, h                                                  ; $1677 : $6c
	jr nz, br_07_16ed                                                  ; $1678 : $20, $73

	ld h, e                                                  ; $167a : $63
	ld h, c                                                  ; $167b : $61
	ld l, h                                                  ; $167c : $6c
	ld h, l                                                  ; $167d : $65
	ld (hl), e                                                  ; $167e : $73
	jr nz, br_07_16d1                                                  ; $167f : $20, $50

	ld h, l                                                  ; $1681 : $65
	ld (hl), h                                                  ; $1682 : $74
	ld h, l                                                  ; $1683 : $65

br_07_1684:
	ld (hl), d                                                  ; $1684 : $72
	jr nz, br_07_16fe                                                  ; $1685 : $20, $77

	ld h, l                                                  ; $1687 : $65
	ld l, c                                                  ; $1688 : $69
	ld h, a                                                  ; $1689 : $67
	ld l, b                                                  ; $168a : $68

br_07_168b:
	ld (hl), e                                                  ; $168b : $73

br_07_168c:
	jr nz, br_07_168b                                                  ; $168c : $20, $fd

	push hl                                                  ; $168e : $e5
	ld (bc), a                                                  ; $168f : $02
	dec d                                                  ; $1690 : $15
	jr nz, $6c                                                  ; $1691 : $20, $6c

	ld h, d                                                  ; $1693 : $62

br_07_1694:
	ld (hl), e                                                  ; $1694 : $73
	ld l, $20                                                  ; $1695 : $2e, $20
	ld h, c                                                  ; $1697 : $61
	ld l, (hl)                                                  ; $1698 : $6e

br_07_1699:
	ld h, h                                                  ; $1699 : $64
	jr nz, br_07_16ef                                                  ; $169a : $20, $53

	ld h, c                                                  ; $169c : $61
	ld l, l                                                  ; $169d : $6d
	jr nz, br_07_1717                                                  ; $169e : $20, $77

	ld h, l                                                  ; $16a0 : $65
	ld l, c                                                  ; $16a1 : $69
	ld h, a                                                  ; $16a2 : $67

br_07_16a3:
	ld l, b                                                  ; $16a3 : $68
	ld (hl), e                                                  ; $16a4 : $73

br_07_16a5:
	jr nz, br_07_16b8                                                  ; $16a5 : $20, $11

	and $02                                                  ; $16a7 : $e6, $02
	ld h, $20                                                  ; $16a9 : $26, $20
	ld l, h                                                  ; $16ab : $6c
	ld h, d                                                  ; $16ac : $62
	ld (hl), e                                                  ; $16ad : $73
	ld l, $2e                                                  ; $16ae : $2e, $2e
	jr nz, br_07_16fa                                                  ; $16b0 : $20, $48

	ld l, a                                                  ; $16b2 : $6f
	ld (hl), a                                                  ; $16b3 : $77
	jr nz, $6d                                                  ; $16b4 : $20, $6d

	ld (hl), l                                                  ; $16b6 : $75
	ld h, e                                                  ; $16b7 : $63

br_07_16b8:
	ld l, b                                                  ; $16b8 : $68

br_07_16b9:
	jr nz, $6d                                                  ; $16b9 : $20, $6d

	ld l, a                                                  ; $16bb : $6f
	ld (hl), d                                                  ; $16bc : $72
	ld h, l                                                  ; $16bd : $65
	jr nz, br_07_1724                                                  ; $16be : $20, $64

	ld l, a                                                  ; $16c0 : $6f
	ld h, l                                                  ; $16c1 : $65

br_07_16c2:
	ld (hl), e                                                  ; $16c2 : $73
	jr nz, br_07_1715                                                  ; $16c3 : $20, $50

	ld h, l                                                  ; $16c5 : $65
	ld (hl), h                                                  ; $16c6 : $74

br_07_16c7:
	ld h, l                                                  ; $16c7 : $65
	ld (hl), d                                                  ; $16c8 : $72
	jr nz, br_07_1742                                                  ; $16c9 : $20, $77

	ld h, l                                                  ; $16cb : $65
	ld l, c                                                  ; $16cc : $69
	ld h, a                                                  ; $16cd : $67
	ld l, b                                                  ; $16ce : $68
	ccf                                                  ; $16cf : $3f
	nop                                                  ; $16d0 : $00

br_07_16d1:
	nop                                                  ; $16d1 : $00
	rlca                                                  ; $16d2 : $07
	and $02                                                  ; $16d3 : $e6, $02
	ld de, $6649                                                  ; $16d5 : $11, $49, $66
	jr nz, br_07_173b                                                  ; $16d8 : $20, $61

	jr nz, br_07_173e                                                  ; $16da : $20, $62

	ld l, a                                                  ; $16dc : $6f
	ld l, a                                                  ; $16dd : $6f
	ld l, e                                                  ; $16de : $6b
	ld h, e                                                  ; $16df : $63
	ld h, c                                                  ; $16e0 : $61
	ld (hl), e                                                  ; $16e1 : $73
	ld h, l                                                  ; $16e2 : $65
	jr nz, br_07_174e                                                  ; $16e3 : $20, $69

	ld (hl), e                                                  ; $16e5 : $73
	jr nz, br_07_1703                                                  ; $16e6 : $20, $1b

	and $01                                                  ; $16e8 : $e6, $01
	rla                                                  ; $16ea : $17
	jr nz, br_07_175a                                                  ; $16eb : $20, $6d

br_07_16ed:
	jr nz, br_07_1766                                                  ; $16ed : $20, $77

br_07_16ef:
	ld l, c                                                  ; $16ef : $69
	ld h, h                                                  ; $16f0 : $64
	ld h, l                                                  ; $16f1 : $65
	jr nz, $61                                                  ; $16f2 : $20, $61

	ld l, (hl)                                                  ; $16f4 : $6e
	ld h, h                                                  ; $16f5 : $64
	jr nz, br_07_1759                                                  ; $16f6 : $20, $61

	jr nz, br_07_175d                                                  ; $16f8 : $20, $63

br_07_16fa:
	ld l, b                                                  ; $16fa : $68
	ld h, c                                                  ; $16fb : $61
	ld l, c                                                  ; $16fc : $69
	ld (hl), d                                                  ; $16fd : $72

br_07_16fe:
	jr nz, br_07_1769                                                  ; $16fe : $20, $69

	ld (hl), e                                                  ; $1700 : $73
	jr nz, $20                                                  ; $1701 : $20, $20

br_07_1703:
	and $04                                                  ; $1703 : $e6, $04
	add hl, sp                                                  ; $1705 : $39
	jr nz, br_07_1775                                                  ; $1706 : $20, $6d

	jr nz, $77                                                  ; $1708 : $20, $77

	ld l, c                                                  ; $170a : $69
	ld h, h                                                  ; $170b : $64
	ld h, l                                                  ; $170c : $65
	inc l                                                  ; $170d : $2c
	jr nz, $68                                                  ; $170e : $20, $68

	ld l, a                                                  ; $1710 : $6f
	ld (hl), a                                                  ; $1711 : $77
	jr nz, $6d                                                  ; $1712 : $20, $6d

	ld (hl), l                                                  ; $1714 : $75

br_07_1715:
	ld h, e                                                  ; $1715 : $63
	ld l, b                                                  ; $1716 : $68

br_07_1717:
	jr nz, $77                                                  ; $1717 : $20, $77

	ld h, c                                                  ; $1719 : $61
	ld l, h                                                  ; $171a : $6c
	ld l, h                                                  ; $171b : $6c
	jr nz, br_07_1791                                                  ; $171c : $20, $73

	ld (hl), b                                                  ; $171e : $70
	ld h, c                                                  ; $171f : $61
	ld h, e                                                  ; $1720 : $63
	ld h, l                                                  ; $1721 : $65
	jr nz, br_07_179b                                                  ; $1722 : $20, $77

br_07_1724:
	ld l, c                                                  ; $1724 : $69
	ld l, h                                                  ; $1725 : $6c
	ld l, h                                                  ; $1726 : $6c
	jr nz, br_07_179d                                                  ; $1727 : $20, $74

	ld l, b                                                  ; $1729 : $68
	ld h, l                                                  ; $172a : $65
	ld a, c                                                  ; $172b : $79
	jr nz, br_07_17a2                                                  ; $172c : $20, $74

	ld h, c                                                  ; $172e : $61
	ld l, e                                                  ; $172f : $6b
	ld h, l                                                  ; $1730 : $65
	jr nz, br_07_17a6                                                  ; $1731 : $20, $73

	ld l, c                                                  ; $1733 : $69
	ld h, h                                                  ; $1734 : $64
	ld h, l                                                  ; $1735 : $65
	jr nz, br_07_179a                                                  ; $1736 : $20, $62

	ld a, c                                                  ; $1738 : $79
	jr nz, br_07_17ae                                                  ; $1739 : $20, $73

br_07_173b:
	ld l, c                                                  ; $173b : $69
	ld h, h                                                  ; $173c : $64
	ld h, l                                                  ; $173d : $65

br_07_173e:
	ccf                                                  ; $173e : $3f
	nop                                                  ; $173f : $00
	nop                                                  ; $1740 : $00
	inc (hl)                                                  ; $1741 : $34

br_07_1742:
	and $04                                                  ; $1742 : $e6, $04
	dec bc                                                  ; $1744 : $0b
	ld c, c                                                  ; $1745 : $49
	ld h, (hl)                                                  ; $1746 : $66
	jr nz, br_07_17b2                                                  ; $1747 : $20, $69

	ld (hl), h                                                  ; $1749 : $74
	jr nz, $74                                                  ; $174a : $20, $74

	ld l, a                                                  ; $174c : $6f
	ld l, a                                                  ; $174d : $6f

br_07_174e:
	ld l, e                                                  ; $174e : $6b
	jr nz, $48                                                  ; $174f : $20, $48

	and $02                                                  ; $1751 : $e6, $02
	ld b, c                                                  ; $1753 : $41
	jr nz, br_07_17be                                                  ; $1754 : $20, $68

	ld l, a                                                  ; $1756 : $6f
	ld (hl), l                                                  ; $1757 : $75
	ld (hl), d                                                  ; $1758 : $72

br_07_1759:
	ld (hl), e                                                  ; $1759 : $73

br_07_175a:
	jr nz, br_07_17d0                                                  ; $175a : $20, $74

	ld l, a                                                  ; $175c : $6f

br_07_175d:
	jr nz, br_07_17c3                                                  ; $175d : $20, $64

	ld (hl), d                                                  ; $175f : $72
	ld l, c                                                  ; $1760 : $69
	halt                                                  ; $1761 : $76
	ld h, l                                                  ; $1762 : $65
	jr nz, br_07_17c7                                                  ; $1763 : $20, $62

	ld h, l                                                  ; $1765 : $65

br_07_1766:
	ld (hl), h                                                  ; $1766 : $74
	ld (hl), a                                                  ; $1767 : $77
	ld h, l                                                  ; $1768 : $65

br_07_1769:
	ld h, l                                                  ; $1769 : $65
	ld l, (hl)                                                  ; $176a : $6e
	jr nz, br_07_17e1                                                  ; $176b : $20, $74

	ld (hl), a                                                  ; $176d : $77
	ld l, a                                                  ; $176e : $6f
	jr nz, br_07_17d4                                                  ; $176f : $20, $63

	ld l, c                                                  ; $1771 : $69
	ld (hl), h                                                  ; $1772 : $74
	ld l, c                                                  ; $1773 : $69
	ld h, l                                                  ; $1774 : $65

br_07_1775:
	ld (hl), e                                                  ; $1775 : $73
	inc l                                                  ; $1776 : $2c
	jr nz, br_07_17e1                                                  ; $1777 : $20, $68

	ld l, a                                                  ; $1779 : $6f
	ld (hl), a                                                  ; $177a : $77
	jr nz, br_07_17ea                                                  ; $177b : $20, $6d

	ld h, c                                                  ; $177d : $61
	ld l, (hl)                                                  ; $177e : $6e
	ld a, c                                                  ; $177f : $79
	jr nz, br_07_17ef                                                  ; $1780 : $20, $6d

	ld l, c                                                  ; $1782 : $69
	ld l, (hl)                                                  ; $1783 : $6e
	ld (hl), l                                                  ; $1784 : $75
	ld (hl), h                                                  ; $1785 : $74
	ld h, l                                                  ; $1786 : $65
	ld (hl), e                                                  ; $1787 : $73
	jr nz, br_07_17ee                                                  ; $1788 : $20, $64

	ld l, c                                                  ; $178a : $69
	ld h, h                                                  ; $178b : $64
	jr nz, br_07_17f7                                                  ; $178c : $20, $69

	ld (hl), h                                                  ; $178e : $74
	jr nz, br_07_1805                                                  ; $178f : $20, $74

br_07_1791:
	ld h, c                                                  ; $1791 : $61
	ld l, e                                                  ; $1792 : $6b
	ld h, l                                                  ; $1793 : $65
	ccf                                                  ; $1794 : $3f
	nop                                                  ; $1795 : $00
	nop                                                  ; $1796 : $00
	ld d, d                                                  ; $1797 : $52
	and $03                                                  ; $1798 : $e6, $03

br_07_179a:
	inc d                                                  ; $179a : $14

br_07_179b:
	ld b, a                                                  ; $179b : $47
	ld h, l                                                  ; $179c : $65

br_07_179d:
	ld l, a                                                  ; $179d : $6f
	ld (hl), d                                                  ; $179e : $72
	ld h, a                                                  ; $179f : $67
	ld h, l                                                  ; $17a0 : $65
	daa                                                  ; $17a1 : $27

br_07_17a2:
	ld (hl), e                                                  ; $17a2 : $73
	jr nz, br_07_180b                                                  ; $17a3 : $20, $66

	ld h, c                                                  ; $17a5 : $61

br_07_17a6:
	ld (hl), h                                                  ; $17a6 : $74
	ld l, b                                                  ; $17a7 : $68
	ld h, l                                                  ; $17a8 : $65
	ld (hl), d                                                  ; $17a9 : $72
	jr nz, br_07_1823                                                  ; $17aa : $20, $77

	ld h, c                                                  ; $17ac : $61
	ld (hl), e                                                  ; $17ad : $73

br_07_17ae:
	jr nz, $61                                                  ; $17ae : $20, $61

	and $02                                                  ; $17b0 : $e6, $02

br_07_17b2:
	inc hl                                                  ; $17b2 : $23
	jr nz, $69                                                  ; $17b3 : $20, $69

	ld l, (hl)                                                  ; $17b5 : $6e
	jr nz, $31                                                  ; $17b6 : $20, $31

	add hl, sp                                                  ; $17b8 : $39
	jr c, br_07_17ee                                                  ; $17b9 : $38, $33

	ld l, $20                                                  ; $17bb : $2e, $20
	ld c, c                                                  ; $17bd : $49

br_07_17be:
	ld l, (hl)                                                  ; $17be : $6e
	jr nz, $77                                                  ; $17bf : $20, $77

	ld l, b                                                  ; $17c1 : $68
	ld h, c                                                  ; $17c2 : $61

br_07_17c3:
	ld (hl), h                                                  ; $17c3 : $74
	jr nz, br_07_183f                                                  ; $17c4 : $20, $79

	ld h, l                                                  ; $17c6 : $65

br_07_17c7:
	ld h, c                                                  ; $17c7 : $61
	ld (hl), d                                                  ; $17c8 : $72
	jr nz, br_07_1842                                                  ; $17c9 : $20, $77

	ld h, c                                                  ; $17cb : $61
	ld (hl), e                                                  ; $17cc : $73
	jr nz, br_07_1837                                                  ; $17cd : $20, $68

	ld h, l                                                  ; $17cf : $65

br_07_17d0:
	jr nz, br_07_1834                                                  ; $17d0 : $20, $62

	ld l, a                                                  ; $17d2 : $6f
	ld (hl), d                                                  ; $17d3 : $72

br_07_17d4:
	ld l, (hl)                                                  ; $17d4 : $6e
	ccf                                                  ; $17d5 : $3f
	nop                                                  ; $17d6 : $00
	nop                                                  ; $17d7 : $00
	ld l, e                                                  ; $17d8 : $6b
	and $04                                                  ; $17d9 : $e6, $04
	dec bc                                                  ; $17db : $0b
	ld c, a                                                  ; $17dc : $4f
	ld l, (hl)                                                  ; $17dd : $6e
	jr nz, br_07_184f                                                  ; $17de : $20, $6f

	ld l, (hl)                                                  ; $17e0 : $6e

br_07_17e1:
	ld h, l                                                  ; $17e1 : $65
	jr nz, br_07_1848                                                  ; $17e2 : $20, $64

	ld h, c                                                  ; $17e4 : $61
	ld a, c                                                  ; $17e5 : $79
	jr nz, br_07_1867                                                  ; $17e6 : $20, $7f

	and $02                                                  ; $17e8 : $e6, $02

br_07_17ea:
	ld e, h                                                  ; $17ea : $5c
	jr nz, $70                                                  ; $17eb : $20, $70

	ld h, l                                                  ; $17ed : $65

br_07_17ee:
	ld l, a                                                  ; $17ee : $6f

br_07_17ef:
	ld (hl), b                                                  ; $17ef : $70
	ld l, h                                                  ; $17f0 : $6c
	ld h, l                                                  ; $17f1 : $65
	jr nz, br_07_1866                                                  ; $17f2 : $20, $72

	ld l, a                                                  ; $17f4 : $6f
	ld h, h                                                  ; $17f5 : $64
	ld h, l                                                  ; $17f6 : $65

br_07_17f7:
	jr nz, $61                                                  ; $17f7 : $20, $61

	ld l, (hl)                                                  ; $17f9 : $6e
	jr nz, br_07_1861                                                  ; $17fa : $20, $65

	ld l, h                                                  ; $17fc : $6c

br_07_17fd:
	ld h, l                                                  ; $17fd : $65
	halt                                                  ; $17fe : $76
	ld h, c                                                  ; $17ff : $61
	ld (hl), h                                                  ; $1800 : $74
	ld l, a                                                  ; $1801 : $6f
	ld (hl), d                                                  ; $1802 : $72
	ld l, $20                                                  ; $1803 : $2e, $20

br_07_1805:
	ld c, c                                                  ; $1805 : $49
	ld h, (hl)                                                  ; $1806 : $66
	jr nz, br_07_1841                                                  ; $1807 : $20, $38

	jr nz, br_07_187b                                                  ; $1809 : $20, $70

br_07_180b:
	ld h, l                                                  ; $180b : $65
	ld l, a                                                  ; $180c : $6f
	ld (hl), b                                                  ; $180d : $70
	ld l, h                                                  ; $180e : $6c
	ld h, l                                                  ; $180f : $65
	jr nz, br_07_1884                                                  ; $1810 : $20, $72

	ld l, a                                                  ; $1812 : $6f
	ld h, h                                                  ; $1813 : $64
	ld h, l                                                  ; $1814 : $65
	jr nz, br_07_1886                                                  ; $1815 : $20, $6f

	ld l, (hl)                                                  ; $1817 : $6e
	jr nz, br_07_187f                                                  ; $1818 : $20, $65

	ld h, c                                                  ; $181a : $61
	ld h, e                                                  ; $181b : $63
	ld l, b                                                  ; $181c : $68
	jr nz, br_07_1893                                                  ; $181d : $20, $74

	ld (hl), d                                                  ; $181f : $72
	ld l, c                                                  ; $1820 : $69
	ld (hl), b                                                  ; $1821 : $70
	inc l                                                  ; $1822 : $2c

br_07_1823:
	jr nz, br_07_188d                                                  ; $1823 : $20, $68

	ld l, a                                                  ; $1825 : $6f
	ld (hl), a                                                  ; $1826 : $77
	jr nz, br_07_1896                                                  ; $1827 : $20, $6d

	ld h, c                                                  ; $1829 : $61
	ld l, (hl)                                                  ; $182a : $6e
	ld a, c                                                  ; $182b : $79
	jr nz, br_07_18a2                                                  ; $182c : $20, $74

	ld (hl), d                                                  ; $182e : $72
	ld l, c                                                  ; $182f : $69
	ld (hl), b                                                  ; $1830 : $70
	ld (hl), e                                                  ; $1831 : $73
	jr nz, br_07_18ab                                                  ; $1832 : $20, $77

br_07_1834:
	ld h, l                                                  ; $1834 : $65
	ld (hl), d                                                  ; $1835 : $72
	ld h, l                                                  ; $1836 : $65

br_07_1837:
	jr nz, br_07_18ad                                                  ; $1837 : $20, $74

	ld h, c                                                  ; $1839 : $61
	ld l, e                                                  ; $183a : $6b
	ld h, l                                                  ; $183b : $65
	ld l, (hl)                                                  ; $183c : $6e
	jr nz, br_07_18b3                                                  ; $183d : $20, $74

br_07_183f:
	ld l, b                                                  ; $183f : $68
	ld h, c                                                  ; $1840 : $61

br_07_1841:
	ld (hl), h                                                  ; $1841 : $74

br_07_1842:
	jr nz, br_07_18a8                                                  ; $1842 : $20, $64

	ld h, c                                                  ; $1844 : $61
	ld a, c                                                  ; $1845 : $79
	ccf                                                  ; $1846 : $3f
	nop                                                  ; $1847 : $00

br_07_1848:
	nop                                                  ; $1848 : $00
	adc a, c                                                  ; $1849 : $89
	and $01                                                  ; $184a : $e6, $01
	dec bc                                                  ; $184c : $0b
	ld c, d                                                  ; $184d : $4a
	ld l, c                                                  ; $184e : $69

br_07_184f:
	ld l, l                                                  ; $184f : $6d
	jr nz, br_07_18b4                                                  ; $1850 : $20, $62

	ld l, a                                                  ; $1852 : $6f
	ld (hl), l                                                  ; $1853 : $75
	ld h, a                                                  ; $1854 : $67
	ld l, b                                                  ; $1855 : $68
	ld (hl), h                                                  ; $1856 : $74
	jr nz, -$72                                                  ; $1857 : $20, $8e

	and $01                                                  ; $1859 : $e6, $01
	dec c                                                  ; $185b : $0d
	jr nz, br_07_18cd                                                  ; $185c : $20, $6f

	ld (hl), d                                                  ; $185e : $72
	ld h, c                                                  ; $185f : $61
	ld l, (hl)                                                  ; $1860 : $6e

br_07_1861:
	ld h, a                                                  ; $1861 : $67
	ld h, l                                                  ; $1862 : $65
	ld (hl), e                                                  ; $1863 : $73
	jr nz, br_07_18cc                                                  ; $1864 : $20, $66

br_07_1866:
	ld l, a                                                  ; $1866 : $6f

br_07_1867:
	ld (hl), d                                                  ; $1867 : $72
	jr nz, br_07_17fd                                                  ; $1868 : $20, $93

	and $04                                                  ; $186a : $e6, $04
	inc hl                                                  ; $186c : $23
	jr nz, br_07_18d2                                                  ; $186d : $20, $63

	ld h, l                                                  ; $186f : $65
	ld l, (hl)                                                  ; $1870 : $6e
	ld (hl), h                                                  ; $1871 : $74
	ld (hl), e                                                  ; $1872 : $73
	ld l, $20                                                  ; $1873 : $2e, $20
	ld c, b                                                  ; $1875 : $48
	ld l, a                                                  ; $1876 : $6f
	ld (hl), a                                                  ; $1877 : $77
	jr nz, $6d                                                  ; $1878 : $20, $6d

	ld (hl), l                                                  ; $187a : $75

br_07_187b:
	ld h, e                                                  ; $187b : $63
	ld l, b                                                  ; $187c : $68

br_07_187d:
	jr nz, br_07_18e3                                                  ; $187d : $20, $64

br_07_187f:
	ld l, c                                                  ; $187f : $69
	ld h, h                                                  ; $1880 : $64
	jr nz, br_07_18e8                                                  ; $1881 : $20, $65

	ld h, c                                                  ; $1883 : $61

br_07_1884:
	ld h, e                                                  ; $1884 : $63
	ld l, b                                                  ; $1885 : $68

br_07_1886:
	jr nz, br_07_18f7                                                  ; $1886 : $20, $6f

	ld l, (hl)                                                  ; $1888 : $6e
	ld h, l                                                  ; $1889 : $65
	jr nz, br_07_18ef                                                  ; $188a : $20, $63

	ld l, a                                                  ; $188c : $6f

br_07_188d:
	ld (hl), e                                                  ; $188d : $73
	ld (hl), h                                                  ; $188e : $74
	ccf                                                  ; $188f : $3f
	nop                                                  ; $1890 : $00
	nop                                                  ; $1891 : $00
	and a                                                  ; $1892 : $a7

br_07_1893:
	and $04                                                  ; $1893 : $e6, $04
	rrca                                                  ; $1895 : $0f

br_07_1896:
	ld c, a                                                  ; $1896 : $4f
	ld (hl), l                                                  ; $1897 : $75
	ld (hl), d                                                  ; $1898 : $72
	jr nz, br_07_190e                                                  ; $1899 : $20, $73

	ld h, e                                                  ; $189b : $63
	ld l, b                                                  ; $189c : $68
	ld l, a                                                  ; $189d : $6f
	ld l, a                                                  ; $189e : $6f
	ld l, h                                                  ; $189f : $6c
	jr nz, br_07_190a                                                  ; $18a0 : $20, $68

br_07_18a2:
	ld h, c                                                  ; $18a2 : $61
	ld (hl), e                                                  ; $18a3 : $73
	jr nz, br_07_1861                                                  ; $18a4 : $20, $bb

	and $02                                                  ; $18a6 : $e6, $02

br_07_18a8:
	ld c, $20                                                  ; $18a8 : $0e, $20
	ld h, e                                                  ; $18aa : $63

br_07_18ab:
	ld l, h                                                  ; $18ab : $6c
	ld h, c                                                  ; $18ac : $61

br_07_18ad:
	ld (hl), e                                                  ; $18ad : $73
	ld (hl), e                                                  ; $18ae : $73
	ld h, l                                                  ; $18af : $65
	ld (hl), e                                                  ; $18b0 : $73
	jr nz, $77                                                  ; $18b1 : $20, $77

br_07_18b3:
	ld l, c                                                  ; $18b3 : $69

br_07_18b4:
	ld (hl), h                                                  ; $18b4 : $74
	ld l, b                                                  ; $18b5 : $68
	jr nz, br_07_187d                                                  ; $18b6 : $20, $c5

	and $02                                                  ; $18b8 : $e6, $02
	scf                                                  ; $18ba : $37
	jr nz, br_07_1921                                                  ; $18bb : $20, $64

	ld h, l                                                  ; $18bd : $65
	ld (hl), e                                                  ; $18be : $73
	ld l, e                                                  ; $18bf : $6b
	ld (hl), e                                                  ; $18c0 : $73
	jr nz, br_07_192c                                                  ; $18c1 : $20, $69

	ld l, (hl)                                                  ; $18c3 : $6e
	jr nz, br_07_192b                                                  ; $18c4 : $20, $65

	ld h, c                                                  ; $18c6 : $61
	ld h, e                                                  ; $18c7 : $63
	ld l, b                                                  ; $18c8 : $68
	jr nz, $63                                                  ; $18c9 : $20, $63

	ld l, h                                                  ; $18cb : $6c

br_07_18cc:
	ld h, c                                                  ; $18cc : $61

br_07_18cd:
	ld (hl), e                                                  ; $18cd : $73
	ld (hl), e                                                  ; $18ce : $73
	ld l, $20                                                  ; $18cf : $2e, $20
	ld c, b                                                  ; $18d1 : $48

br_07_18d2:
	ld l, a                                                  ; $18d2 : $6f
	ld (hl), a                                                  ; $18d3 : $77
	jr nz, br_07_1943                                                  ; $18d4 : $20, $6d

	ld h, c                                                  ; $18d6 : $61
	ld l, (hl)                                                  ; $18d7 : $6e
	ld a, c                                                  ; $18d8 : $79
	jr nz, br_07_193f                                                  ; $18d9 : $20, $64

	ld h, l                                                  ; $18db : $65
	ld (hl), e                                                  ; $18dc : $73
	ld l, e                                                  ; $18dd : $6b
	ld (hl), e                                                  ; $18de : $73
	jr nz, br_07_1942                                                  ; $18df : $20, $61

	ld (hl), d                                                  ; $18e1 : $72
	ld h, l                                                  ; $18e2 : $65

br_07_18e3:
	jr nz, $69                                                  ; $18e3 : $20, $69

	ld l, (hl)                                                  ; $18e5 : $6e
	jr nz, br_07_1957                                                  ; $18e6 : $20, $6f

br_07_18e8:
	ld (hl), l                                                  ; $18e8 : $75
	ld (hl), d                                                  ; $18e9 : $72
	jr nz, br_07_195f                                                  ; $18ea : $20, $73

	ld h, e                                                  ; $18ec : $63
	ld l, b                                                  ; $18ed : $68
	ld l, a                                                  ; $18ee : $6f

br_07_18ef:
	ld l, a                                                  ; $18ef : $6f
	ld l, h                                                  ; $18f0 : $6c
	ccf                                                  ; $18f1 : $3f
	nop                                                  ; $18f2 : $00
	nop                                                  ; $18f3 : $00
	rst $08                                                  ; $18f4 : $cf
	and $03                                                  ; $18f5 : $e6, $03

br_07_18f7:
	inc l                                                  ; $18f7 : $2c
	ld c, e                                                  ; $18f8 : $4b
	ld h, c                                                  ; $18f9 : $61
	ld (hl), d                                                  ; $18fa : $72
	ld h, l                                                  ; $18fb : $65
	ld l, (hl)                                                  ; $18fc : $6e
	jr nz, $77                                                  ; $18fd : $20, $77

	ld h, c                                                  ; $18ff : $61
	ld l, (hl)                                                  ; $1900 : $6e
	ld (hl), h                                                  ; $1901 : $74
	ld (hl), e                                                  ; $1902 : $73
	jr nz, br_07_1979                                                  ; $1903 : $20, $74

	ld l, a                                                  ; $1905 : $6f
	jr nz, br_07_196a                                                  ; $1906 : $20, $62

	ld (hl), l                                                  ; $1908 : $75
	ld a, c                                                  ; $1909 : $79

br_07_190a:
	jr nz, br_07_196d                                                  ; $190a : $20, $61

	jr nz, br_07_1970                                                  ; $190c : $20, $62

br_07_190e:
	ld h, c                                                  ; $190e : $61
	ld (hl), e                                                  ; $190f : $73
	ld l, e                                                  ; $1910 : $6b
	ld h, l                                                  ; $1911 : $65
	ld (hl), h                                                  ; $1912 : $74
	ld h, d                                                  ; $1913 : $62
	ld h, c                                                  ; $1914 : $61
	ld l, h                                                  ; $1915 : $6c
	ld l, h                                                  ; $1916 : $6c
	jr nz, $74                                                  ; $1917 : $20, $74

	ld l, b                                                  ; $1919 : $68
	ld h, c                                                  ; $191a : $61
	ld (hl), h                                                  ; $191b : $74
	jr nz, br_07_1981                                                  ; $191c : $20, $63

	ld l, a                                                  ; $191e : $6f
	ld (hl), e                                                  ; $191f : $73
	ld (hl), h                                                  ; $1920 : $74

br_07_1921:
	ld (hl), e                                                  ; $1921 : $73
	jr nz, br_07_1948                                                  ; $1922 : $20, $24

	sbc a, $e6                                                  ; $1924 : $de, $e6
	ld bc, $2e0e                                                  ; $1926 : $01, $0e, $2e
	jr nz, $54                                                  ; $1929 : $20, $54

br_07_192b:
	ld l, b                                                  ; $192b : $68

br_07_192c:
	ld h, l                                                  ; $192c : $65
	jr nz, $74                                                  ; $192d : $20, $74

	ld h, c                                                  ; $192f : $61
	ld a, b                                                  ; $1930 : $78
	jr nz, br_07_199c                                                  ; $1931 : $20, $69

	ld (hl), e                                                  ; $1933 : $73
	jr nz, $24                                                  ; $1934 : $20, $24

	ex (sp), hl                                                  ; $1936 : $e3
	and $04                                                  ; $1937 : $e6, $04
	ld h, $2e                                                  ; $1939 : $26, $2e
	jr nz, br_07_1985                                                  ; $193b : $20, $48

	ld l, a                                                  ; $193d : $6f
	ld (hl), a                                                  ; $193e : $77

br_07_193f:
	jr nz, $6d                                                  ; $193f : $20, $6d

	ld (hl), l                                                  ; $1941 : $75

br_07_1942:
	ld h, e                                                  ; $1942 : $63

br_07_1943:
	ld l, b                                                  ; $1943 : $68
	jr nz, $64                                                  ; $1944 : $20, $64

	ld l, a                                                  ; $1946 : $6f
	ld h, l                                                  ; $1947 : $65

br_07_1948:
	ld (hl), e                                                  ; $1948 : $73
	jr nz, br_07_19be                                                  ; $1949 : $20, $73

	ld l, b                                                  ; $194b : $68
	ld h, l                                                  ; $194c : $65
	jr nz, br_07_19b7                                                  ; $194d : $20, $68

	ld h, c                                                  ; $194f : $61
	halt                                                  ; $1950 : $76
	ld h, l                                                  ; $1951 : $65
	jr nz, br_07_19c8                                                  ; $1952 : $20, $74

	ld l, a                                                  ; $1954 : $6f
	jr nz, br_07_19c7                                                  ; $1955 : $20, $70

br_07_1957:
	ld h, c                                                  ; $1957 : $61
	ld a, c                                                  ; $1958 : $79
	jr nz, br_07_19cf                                                  ; $1959 : $20, $74

	ld l, a                                                  ; $195b : $6f
	ld (hl), h                                                  ; $195c : $74
	ld h, c                                                  ; $195d : $61
	ld l, h                                                  ; $195e : $6c

br_07_195f:
	ccf                                                  ; $195f : $3f
	nop                                                  ; $1960 : $00
	nop                                                  ; $1961 : $00
	rst $30                                                  ; $1962 : $f7
	and $04                                                  ; $1963 : $e6, $04
	dec c                                                  ; $1965 : $0d
	ld c, d                                                  ; $1966 : $4a
	ld h, c                                                  ; $1967 : $61
	ld l, l                                                  ; $1968 : $6d
	ld h, l                                                  ; $1969 : $65

br_07_196a:
	ld (hl), e                                                  ; $196a : $73
	jr nz, br_07_19cf                                                  ; $196b : $20, $62

br_07_196d:
	ld l, a                                                  ; $196d : $6f
	ld (hl), l                                                  ; $196e : $75
	ld h, a                                                  ; $196f : $67

br_07_1970:
	ld l, b                                                  ; $1970 : $68
	ld (hl), h                                                  ; $1971 : $74
	jr nz, $0b                                                  ; $1972 : $20, $0b

	rst $20                                                  ; $1974 : $e7
	ld bc, $2012                                                  ; $1975 : $01, $12, $20
	ld h, c                                                  ; $1978 : $61

br_07_1979:
	ld (hl), b                                                  ; $1979 : $70
	ld (hl), b                                                  ; $197a : $70
	ld l, h                                                  ; $197b : $6c
	ld h, l                                                  ; $197c : $65
	ld (hl), e                                                  ; $197d : $73
	jr nz, br_07_19f4                                                  ; $197e : $20, $74

	ld l, b                                                  ; $1980 : $68

br_07_1981:
	ld h, c                                                  ; $1981 : $61
	ld (hl), h                                                  ; $1982 : $74
	jr nz, $77                                                  ; $1983 : $20, $77

br_07_1985:
	ld h, l                                                  ; $1985 : $65
	ld (hl), d                                                  ; $1986 : $72
	ld h, l                                                  ; $1987 : $65
	jr nz, br_07_199a                                                  ; $1988 : $20, $10

	rst $20                                                  ; $198a : $e7
	ld (bc), a                                                  ; $198b : $02
	ld sp, $6320                                                  ; $198c : $31, $20, $63
	ld h, l                                                  ; $198f : $65
	ld l, (hl)                                                  ; $1990 : $6e
	ld (hl), h                                                  ; $1991 : $74
	ld (hl), e                                                  ; $1992 : $73
	jr nz, br_07_19fa                                                  ; $1993 : $20, $65

	ld h, c                                                  ; $1995 : $61
	ld h, e                                                  ; $1996 : $63
	ld l, b                                                  ; $1997 : $68
	ld l, $20                                                  ; $1998 : $2e, $20

br_07_199a:
	ld c, b                                                  ; $199a : $48
	ld l, a                                                  ; $199b : $6f

br_07_199c:
	ld (hl), a                                                  ; $199c : $77
	jr nz, $6d                                                  ; $199d : $20, $6d

	ld (hl), l                                                  ; $199f : $75
	ld h, e                                                  ; $19a0 : $63
	ld l, b                                                  ; $19a1 : $68
	jr nz, br_07_1a07                                                  ; $19a2 : $20, $63

	ld l, b                                                  ; $19a4 : $68
	ld h, c                                                  ; $19a5 : $61
	ld l, (hl)                                                  ; $19a6 : $6e
	ld h, a                                                  ; $19a7 : $67
	ld h, l                                                  ; $19a8 : $65
	jr nz, br_07_1a0f                                                  ; $19a9 : $20, $64

	ld l, c                                                  ; $19ab : $69
	ld h, h                                                  ; $19ac : $64
	jr nz, br_07_1a17                                                  ; $19ad : $20, $68

	ld h, l                                                  ; $19af : $65
	jr nz, br_07_1a1a                                                  ; $19b0 : $20, $68

	ld h, c                                                  ; $19b2 : $61
	halt                                                  ; $19b3 : $76
	ld h, l                                                  ; $19b4 : $65
	jr nz, br_07_1a1d                                                  ; $19b5 : $20, $66

br_07_19b7:
	ld (hl), d                                                  ; $19b7 : $72
	ld l, a                                                  ; $19b8 : $6f
	ld l, l                                                  ; $19b9 : $6d
	jr nz, br_07_19e0                                                  ; $19ba : $20, $24

	dec (hl)                                                  ; $19bc : $35
	ccf                                                  ; $19bd : $3f

br_07_19be:
	nop                                                  ; $19be : $00
	nop                                                  ; $19bf : $00
	ld a, (de)                                                  ; $19c0 : $1a
	rst $20                                                  ; $19c1 : $e7
	inc b                                                  ; $19c2 : $04
	add hl, de                                                  ; $19c3 : $19
	ld d, e                                                  ; $19c4 : $53
	ld h, c                                                  ; $19c5 : $61
	ld l, h                                                  ; $19c6 : $6c

br_07_19c7:
	ld l, h                                                  ; $19c7 : $6c

br_07_19c8:
	ld a, c                                                  ; $19c8 : $79
	jr nz, br_07_1a2d                                                  ; $19c9 : $20, $62

	ld l, a                                                  ; $19cb : $6f
	ld (hl), l                                                  ; $19cc : $75
	ld h, a                                                  ; $19cd : $67
	ld l, b                                                  ; $19ce : $68

br_07_19cf:
	ld (hl), h                                                  ; $19cf : $74
	jr nz, br_07_1a33                                                  ; $19d0 : $20, $61

	jr nz, $64                                                  ; $19d2 : $20, $64

	ld l, a                                                  ; $19d4 : $6f
	ld l, h                                                  ; $19d5 : $6c
	ld l, h                                                  ; $19d6 : $6c
	jr nz, $66                                                  ; $19d7 : $20, $66

	ld l, a                                                  ; $19d9 : $6f
	ld (hl), d                                                  ; $19da : $72
	jr nz, br_07_1a01                                                  ; $19db : $20, $24

	ld l, $e7                                                  ; $19dd : $2e, $e7
	dec b                                                  ; $19df : $05

br_07_19e0:
	inc c                                                  ; $19e0 : $0c
	ld l, $20                                                  ; $19e1 : $2e, $20
	ld d, e                                                  ; $19e3 : $53
	ld l, b                                                  ; $19e4 : $68
	ld h, l                                                  ; $19e5 : $65
	jr nz, br_07_1a58                                                  ; $19e6 : $20, $70

	ld h, c                                                  ; $19e8 : $61
	ld l, c                                                  ; $19e9 : $69
	ld h, h                                                  ; $19ea : $64
	jr nz, br_07_1a11                                                  ; $19eb : $20, $24

	ld b, a                                                  ; $19ed : $47
	rst $20                                                  ; $19ee : $e7
	dec b                                                  ; $19ef : $05
	rra                                                  ; $19f0 : $1f
	ld l, $20                                                  ; $19f1 : $2e, $20
	ld c, b                                                  ; $19f3 : $48

br_07_19f4:
	ld l, a                                                  ; $19f4 : $6f
	ld (hl), a                                                  ; $19f5 : $77
	jr nz, br_07_1a65                                                  ; $19f6 : $20, $6d

	ld (hl), l                                                  ; $19f8 : $75
	ld h, e                                                  ; $19f9 : $63

br_07_19fa:
	ld l, b                                                  ; $19fa : $68
	jr nz, br_07_1a61                                                  ; $19fb : $20, $64

	ld l, c                                                  ; $19fd : $69
	ld h, h                                                  ; $19fe : $64
	jr nz, $73                                                  ; $19ff : $20, $73

br_07_1a01:
	ld l, b                                                  ; $1a01 : $68
	ld h, l                                                  ; $1a02 : $65
	jr nz, $70                                                  ; $1a03 : $20, $70

Jump_07_1a05:
	ld h, c                                                  ; $1a05 : $61
	ld a, c                                                  ; $1a06 : $79

br_07_1a07:
	jr nz, br_07_1a6f                                                  ; $1a07 : $20, $66

	ld l, a                                                  ; $1a09 : $6f
	ld (hl), d                                                  ; $1a0a : $72
	jr nz, $74                                                  ; $1a0b : $20, $74

	ld h, c                                                  ; $1a0d : $61
	ld a, b                                                  ; $1a0e : $78

br_07_1a0f:
	ccf                                                  ; $1a0f : $3f
	nop                                                  ; $1a10 : $00

br_07_1a11:
	nop                                                  ; $1a11 : $00
	ld h, b                                                  ; $1a12 : $60
	rst $20                                                  ; $1a13 : $e7
	inc b                                                  ; $1a14 : $04
	ex af, af'                                                  ; $1a15 : $08
	ld c, d                                                  ; $1a16 : $4a

br_07_1a17:
	ld (hl), l                                                  ; $1a17 : $75
	ld l, (hl)                                                  ; $1a18 : $6e
	ld h, l                                                  ; $1a19 : $65

br_07_1a1a:
	jr nz, br_07_1a85                                                  ; $1a1a : $20, $69

	ld (hl), e                                                  ; $1a1c : $73

br_07_1a1d:
	jr nz, br_07_1a93                                                  ; $1a1d : $20, $74

	rst $20                                                  ; $1a1f : $e7
	ld bc, $2033                                                  ; $1a20 : $01, $33, $20
	ld a, c                                                  ; $1a23 : $79
	ld h, l                                                  ; $1a24 : $65
	ld h, c                                                  ; $1a25 : $61
	ld (hl), d                                                  ; $1a26 : $72
	ld (hl), e                                                  ; $1a27 : $73
	jr nz, br_07_1a99                                                  ; $1a28 : $20, $6f

	ld l, h                                                  ; $1a2a : $6c
	ld h, h                                                  ; $1a2b : $64
	ld h, l                                                  ; $1a2c : $65

br_07_1a2d:
	ld (hl), d                                                  ; $1a2d : $72
	jr nz, br_07_1aa4                                                  ; $1a2e : $20, $74

	ld l, b                                                  ; $1a30 : $68
	ld h, c                                                  ; $1a31 : $61
	ld l, (hl)                                                  ; $1a32 : $6e

br_07_1a33:
	jr nz, br_07_1a9d                                                  ; $1a33 : $20, $68

	ld h, l                                                  ; $1a35 : $65
	ld (hl), d                                                  ; $1a36 : $72
	jr nz, br_07_1aac                                                  ; $1a37 : $20, $73

	ld l, c                                                  ; $1a39 : $69
	ld (hl), e                                                  ; $1a3a : $73
	ld (hl), h                                                  ; $1a3b : $74
	ld h, l                                                  ; $1a3c : $65
	ld (hl), d                                                  ; $1a3d : $72
	jr nz, br_07_1a83                                                  ; $1a3e : $20, $43

	ld l, c                                                  ; $1a40 : $69
	ld l, (hl)                                                  ; $1a41 : $6e
	ld h, h                                                  ; $1a42 : $64
	ld a, c                                                  ; $1a43 : $79
	jr nz, br_07_1abd                                                  ; $1a44 : $20, $77

	ld l, b                                                  ; $1a46 : $68
	ld l, a                                                  ; $1a47 : $6f
	jr nz, br_07_1ac1                                                  ; $1a48 : $20, $77

	ld h, c                                                  ; $1a4a : $61
	ld (hl), e                                                  ; $1a4b : $73
	jr nz, br_07_1ab0                                                  ; $1a4c : $20, $62

	ld l, a                                                  ; $1a4e : $6f
	ld (hl), d                                                  ; $1a4f : $72
	ld l, (hl)                                                  ; $1a50 : $6e
	jr nz, br_07_1abc                                                  ; $1a51 : $20, $69

	ld l, (hl)                                                  ; $1a53 : $6e
	jr nz, br_07_1acf                                                  ; $1a54 : $20, $79

	rst $20                                                  ; $1a56 : $e7
	inc b                                                  ; $1a57 : $04

br_07_1a58:
	dec d                                                  ; $1a58 : $15
	ld l, $20                                                  ; $1a59 : $2e, $20
	ld d, a                                                  ; $1a5b : $57
	ld l, b                                                  ; $1a5c : $68
	ld h, l                                                  ; $1a5d : $65
	ld l, (hl)                                                  ; $1a5e : $6e
	jr nz, br_07_1ad8                                                  ; $1a5f : $20, $77

br_07_1a61:
	ld h, c                                                  ; $1a61 : $61
	ld (hl), e                                                  ; $1a62 : $73
	jr nz, br_07_1aaf                                                  ; $1a63 : $20, $4a

br_07_1a65:
	ld (hl), l                                                  ; $1a65 : $75
	ld l, (hl)                                                  ; $1a66 : $6e
	ld h, l                                                  ; $1a67 : $65
	jr nz, $62                                                  ; $1a68 : $20, $62

	ld l, a                                                  ; $1a6a : $6f
	ld (hl), d                                                  ; $1a6b : $72
	ld l, (hl)                                                  ; $1a6c : $6e
	ccf                                                  ; $1a6d : $3f
	nop                                                  ; $1a6e : $00

br_07_1a6f:
	nop                                                  ; $1a6f : $00
	adc a, l                                                  ; $1a70 : $8d
	rst $20                                                  ; $1a71 : $e7
	inc b                                                  ; $1a72 : $04
	ld bc, $a120                                                  ; $1a73 : $01, $20, $a1
	rst $20                                                  ; $1a76 : $e7
	ld bc, $2016                                                  ; $1a77 : $01, $16, $20
	ld (hl), b                                                  ; $1a7a : $70
	ld l, a                                                  ; $1a7b : $6f
	ld (hl), l                                                  ; $1a7c : $75
	ld l, (hl)                                                  ; $1a7d : $6e
	ld h, h                                                  ; $1a7e : $64
	ld (hl), e                                                  ; $1a7f : $73
	jr nz, br_07_1af1                                                  ; $1a80 : $20, $6f

	ld h, (hl)                                                  ; $1a82 : $66

br_07_1a83:
	jr nz, br_07_1af2                                                  ; $1a83 : $20, $6d

br_07_1a85:
	ld h, l                                                  ; $1a85 : $65
	ld h, c                                                  ; $1a86 : $61
	ld (hl), h                                                  ; $1a87 : $74
	jr nz, br_07_1aed                                                  ; $1a88 : $20, $63

	ld l, a                                                  ; $1a8a : $6f
	ld (hl), e                                                  ; $1a8b : $73
	ld (hl), h                                                  ; $1a8c : $74
	jr nz, br_07_1ab3                                                  ; $1a8d : $20, $24

	and (hl)                                                  ; $1a8f : $a6
	rst $20                                                  ; $1a90 : $e7
	inc b                                                  ; $1a91 : $04
	add hl, de                                                  ; $1a92 : $19

br_07_1a93:
	ld l, $20                                                  ; $1a93 : $2e, $20
	ld d, a                                                  ; $1a95 : $57
	ld l, b                                                  ; $1a96 : $68
	ld h, c                                                  ; $1a97 : $61
	ld (hl), h                                                  ; $1a98 : $74

br_07_1a99:
	jr nz, br_07_1aff                                                  ; $1a99 : $20, $64

	ld l, a                                                  ; $1a9b : $6f
	ld h, l                                                  ; $1a9c : $65

br_07_1a9d:
	ld (hl), e                                                  ; $1a9d : $73
	jr nz, $31                                                  ; $1a9e : $20, $31

	jr nz, $70                                                  ; $1aa0 : $20, $70

	ld l, a                                                  ; $1aa2 : $6f
	ld (hl), l                                                  ; $1aa3 : $75

br_07_1aa4:
	ld l, (hl)                                                  ; $1aa4 : $6e
	ld h, h                                                  ; $1aa5 : $64
	jr nz, br_07_1b0b                                                  ; $1aa6 : $20, $63

	ld l, a                                                  ; $1aa8 : $6f
	ld (hl), e                                                  ; $1aa9 : $73
	ld (hl), h                                                  ; $1aaa : $74
	ccf                                                  ; $1aab : $3f

br_07_1aac:
	nop                                                  ; $1aac : $00
	nop                                                  ; $1aad : $00
	cp d                                                  ; $1aae : $ba

br_07_1aaf:
	rst $20                                                  ; $1aaf : $e7

br_07_1ab0:
	inc b                                                  ; $1ab0 : $04
	inc de                                                  ; $1ab1 : $13
	ld c, l                                                  ; $1ab2 : $4d

br_07_1ab3:
	ld (hl), d                                                  ; $1ab3 : $72
	ld l, $20                                                  ; $1ab4 : $2e, $20
	ld d, e                                                  ; $1ab6 : $53
	ld h, c                                                  ; $1ab7 : $61
	ld l, l                                                  ; $1ab8 : $6d
	ld (hl), l                                                  ; $1ab9 : $75
	ld h, l                                                  ; $1aba : $65
	ld l, h                                                  ; $1abb : $6c

br_07_1abc:
	ld (hl), e                                                  ; $1abc : $73

br_07_1abd:
	jr nz, $65                                                  ; $1abd : $20, $65

	ld h, c                                                  ; $1abf : $61
	ld (hl), d                                                  ; $1ac0 : $72

br_07_1ac1:
	ld l, (hl)                                                  ; $1ac1 : $6e
	ld (hl), e                                                  ; $1ac2 : $73
	jr nz, br_07_1ae9                                                  ; $1ac3 : $20, $24

	adc a, $e7                                                  ; $1ac5 : $ce, $e7
	dec b                                                  ; $1ac7 : $05
	ld h, $20                                                  ; $1ac8 : $26, $20
	ld h, c                                                  ; $1aca : $61
	jr nz, br_07_1b46                                                  ; $1acb : $20, $79

	ld h, l                                                  ; $1acd : $65
	ld h, c                                                  ; $1ace : $61

br_07_1acf:
	ld (hl), d                                                  ; $1acf : $72
	ld l, $20                                                  ; $1ad0 : $2e, $20
	ld c, b                                                  ; $1ad2 : $48
	ld l, a                                                  ; $1ad3 : $6f
	ld (hl), a                                                  ; $1ad4 : $77
	jr nz, br_07_1b44                                                  ; $1ad5 : $20, $6d

	ld (hl), l                                                  ; $1ad7 : $75

br_07_1ad8:
	ld h, e                                                  ; $1ad8 : $63
	ld l, b                                                  ; $1ad9 : $68
	jr nz, br_07_1b40                                                  ; $1ada : $20, $64

	ld l, a                                                  ; $1adc : $6f
	ld h, l                                                  ; $1add : $65
	ld (hl), e                                                  ; $1ade : $73
	jr nz, br_07_1b49                                                  ; $1adf : $20, $68

	ld h, l                                                  ; $1ae1 : $65
	jr nz, br_07_1b49                                                  ; $1ae2 : $20, $65

	ld h, c                                                  ; $1ae4 : $61
	ld (hl), d                                                  ; $1ae5 : $72
	ld l, (hl)                                                  ; $1ae6 : $6e
	jr nz, br_07_1b4a                                                  ; $1ae7 : $20, $61

br_07_1ae9:
	jr nz, $77                                                  ; $1ae9 : $20, $77

	ld h, l                                                  ; $1aeb : $65
	ld h, l                                                  ; $1aec : $65

br_07_1aed:
	ld l, e                                                  ; $1aed : $6b
	ccf                                                  ; $1aee : $3f
	nop                                                  ; $1aef : $00
	nop                                                  ; $1af0 : $00

br_07_1af1:
	rst $20                                                  ; $1af1 : $e7

br_07_1af2:
	rst $20                                                  ; $1af2 : $e7
	inc bc                                                  ; $1af3 : $03
	ld (de), a                                                  ; $1af4 : $12
	ld c, l                                                  ; $1af5 : $4d
	ld (hl), d                                                  ; $1af6 : $72
	ld l, $20                                                  ; $1af7 : $2e, $20
	ld c, d                                                  ; $1af9 : $4a
	ld l, a                                                  ; $1afa : $6f
	ld l, b                                                  ; $1afb : $68
	ld l, (hl)                                                  ; $1afc : $6e
	ld (hl), e                                                  ; $1afd : $73

br_07_1afe:
	ld l, a                                                  ; $1afe : $6f

br_07_1aff:
	ld l, (hl)                                                  ; $1aff : $6e
	jr nz, br_07_1b66                                                  ; $1b00 : $20, $64

	ld (hl), d                                                  ; $1b02 : $72
	ld l, a                                                  ; $1b03 : $6f
	halt                                                  ; $1b04 : $76
	ld h, l                                                  ; $1b05 : $65
	jr nz, br_07_1afe                                                  ; $1b06 : $20, $f6

	rst $20                                                  ; $1b08 : $e7
	inc b                                                  ; $1b09 : $04
	daa                                                  ; $1b0a : $27

br_07_1b0b:
	jr nz, br_07_1b7a                                                  ; $1b0b : $20, $6d

	ld l, c                                                  ; $1b0d : $69
	ld l, h                                                  ; $1b0e : $6c
	ld h, l                                                  ; $1b0f : $65
	ld (hl), e                                                  ; $1b10 : $73
	jr nz, br_07_1b8a                                                  ; $1b11 : $20, $77

	ld l, b                                                  ; $1b13 : $68
	ld l, c                                                  ; $1b14 : $69
	ld l, h                                                  ; $1b15 : $6c
	ld h, l                                                  ; $1b16 : $65
	jr nz, br_07_1b88                                                  ; $1b17 : $20, $6f

	ld l, (hl)                                                  ; $1b19 : $6e
	jr nz, $76                                                  ; $1b1a : $20, $76

	ld h, c                                                  ; $1b1c : $61
	ld h, e                                                  ; $1b1d : $63
	ld h, c                                                  ; $1b1e : $61
	ld (hl), h                                                  ; $1b1f : $74
	ld l, c                                                  ; $1b20 : $69
	ld l, a                                                  ; $1b21 : $6f
	ld l, (hl)                                                  ; $1b22 : $6e
	ld l, $20                                                  ; $1b23 : $2e, $20
	ld c, b                                                  ; $1b25 : $48
	ld h, l                                                  ; $1b26 : $65
	jr nz, $64                                                  ; $1b27 : $20, $64

	ld (hl), d                                                  ; $1b29 : $72
	ld l, a                                                  ; $1b2a : $6f
	halt                                                  ; $1b2b : $76
	ld h, l                                                  ; $1b2c : $65
	jr nz, br_07_1b95                                                  ; $1b2d : $20, $66

	ld l, a                                                  ; $1b2f : $6f
	ld (hl), d                                                  ; $1b30 : $72
	jr nz, $0a                                                  ; $1b31 : $20, $0a

	ret pe                                                  ; $1b33 : $e8

	ld (bc), a                                                  ; $1b34 : $02
	inc hl                                                  ; $1b35 : $23
	jr nz, br_07_1ba0                                                  ; $1b36 : $20, $68

	ld l, a                                                  ; $1b38 : $6f
	ld (hl), l                                                  ; $1b39 : $75
	ld (hl), d                                                  ; $1b3a : $72
	ld (hl), e                                                  ; $1b3b : $73
	ld l, $20                                                  ; $1b3c : $2e, $20
	ld d, a                                                  ; $1b3e : $57
	ld l, b                                                  ; $1b3f : $68

br_07_1b40:
	ld h, c                                                  ; $1b40 : $61
	ld (hl), h                                                  ; $1b41 : $74
	jr nz, $77                                                  ; $1b42 : $20, $77

br_07_1b44:
	ld h, c                                                  ; $1b44 : $61
	ld (hl), e                                                  ; $1b45 : $73

br_07_1b46:
	jr nz, $68                                                  ; $1b46 : $20, $68

	ld l, c                                                  ; $1b48 : $69

br_07_1b49:
	ld (hl), e                                                  ; $1b49 : $73

br_07_1b4a:
	jr nz, br_07_1bad                                                  ; $1b4a : $20, $61

	halt                                                  ; $1b4c : $76
	ld h, l                                                  ; $1b4d : $65
	ld (hl), d                                                  ; $1b4e : $72
	ld h, c                                                  ; $1b4f : $61
	ld h, a                                                  ; $1b50 : $67
	ld h, l                                                  ; $1b51 : $65
	jr nz, br_07_1bc7                                                  ; $1b52 : $20, $73

	ld (hl), b                                                  ; $1b54 : $70
	ld h, l                                                  ; $1b55 : $65
	ld h, l                                                  ; $1b56 : $65
	ld h, h                                                  ; $1b57 : $64
	ccf                                                  ; $1b58 : $3f
	nop                                                  ; $1b59 : $00
	nop                                                  ; $1b5a : $00
	inc d                                                  ; $1b5b : $14
	ret pe                                                  ; $1b5c : $e8

	ld (bc), a                                                  ; $1b5d : $02
	inc bc                                                  ; $1b5e : $03
	ld c, c                                                  ; $1b5f : $49
	ld h, (hl)                                                  ; $1b60 : $66
	jr nz, br_07_1b81                                                  ; $1b61 : $20, $1e

	ret pe                                                  ; $1b63 : $e8

	inc bc                                                  ; $1b64 : $03
	ld e, c                                                  ; $1b65 : $59

br_07_1b66:
	jr nz, br_07_1bd7                                                  ; $1b66 : $20, $6f

	ld h, (hl)                                                  ; $1b68 : $66
	jr nz, br_07_1bdf                                                  ; $1b69 : $20, $74

	ld l, b                                                  ; $1b6b : $68
	ld h, l                                                  ; $1b6c : $65
	jr nz, br_07_1bda                                                  ; $1b6d : $20, $6b

	ld l, c                                                  ; $1b6f : $69
	ld h, h                                                  ; $1b70 : $64
	ld (hl), e                                                  ; $1b71 : $73
	jr nz, br_07_1bdd                                                  ; $1b72 : $20, $69

	ld l, (hl)                                                  ; $1b74 : $6e
	jr nz, br_07_1bda                                                  ; $1b75 : $20, $63

	ld l, h                                                  ; $1b77 : $6c
	ld h, c                                                  ; $1b78 : $61
	ld (hl), e                                                  ; $1b79 : $73

br_07_1b7a:
	ld (hl), e                                                  ; $1b7a : $73
	jr nz, br_07_1bf4                                                  ; $1b7b : $20, $77

	ld h, c                                                  ; $1b7d : $61
	ld (hl), h                                                  ; $1b7e : $74
	ld h, e                                                  ; $1b7f : $63
	ld l, b                                                  ; $1b80 : $68

br_07_1b81:
	jr nz, br_07_1bd7                                                  ; $1b81 : $20, $54

	ld l, $56                                                  ; $1b83 : $2e, $56
	ld l, $20                                                  ; $1b85 : $2e, $20
	ld h, l                                                  ; $1b87 : $65

br_07_1b88:
	halt                                                  ; $1b88 : $76
	ld h, l                                                  ; $1b89 : $65

br_07_1b8a:
	ld (hl), d                                                  ; $1b8a : $72
	ld a, c                                                  ; $1b8b : $79
	jr nz, br_07_1bf2                                                  ; $1b8c : $20, $64

	ld h, c                                                  ; $1b8e : $61
	ld a, c                                                  ; $1b8f : $79
	inc l                                                  ; $1b90 : $2c
	jr nz, br_07_1c0a                                                  ; $1b91 : $20, $77

	ld l, b                                                  ; $1b93 : $68
	ld h, c                                                  ; $1b94 : $61

br_07_1b95:
	ld (hl), h                                                  ; $1b95 : $74
	jr nz, br_07_1c01                                                  ; $1b96 : $20, $69

	ld (hl), e                                                  ; $1b98 : $73
	jr nz, br_07_1c0f                                                  ; $1b99 : $20, $74

	ld l, b                                                  ; $1b9b : $68
	ld h, l                                                  ; $1b9c : $65
	jr nz, br_07_1c0f                                                  ; $1b9d : $20, $70

	ld h, l                                                  ; $1b9f : $65

br_07_1ba0:
	ld (hl), d                                                  ; $1ba0 : $72
	ld h, e                                                  ; $1ba1 : $63
	ld h, l                                                  ; $1ba2 : $65
	ld l, (hl)                                                  ; $1ba3 : $6e
	ld (hl), h                                                  ; $1ba4 : $74
	jr nz, br_07_1c1e                                                  ; $1ba5 : $20, $77

	ld l, b                                                  ; $1ba7 : $68
	ld l, a                                                  ; $1ba8 : $6f
	jr nz, br_07_1c22                                                  ; $1ba9 : $20, $77

	ld h, c                                                  ; $1bab : $61
	ld (hl), h                                                  ; $1bac : $74

br_07_1bad:
	ld h, e                                                  ; $1bad : $63
	ld l, b                                                  ; $1bae : $68
	jr nz, $54                                                  ; $1baf : $20, $54

	ld l, $56                                                  ; $1bb1 : $2e, $56
	ld l, $20                                                  ; $1bb3 : $2e, $20
	ld h, l                                                  ; $1bb5 : $65
	halt                                                  ; $1bb6 : $76
	ld h, l                                                  ; $1bb7 : $65
	ld (hl), d                                                  ; $1bb8 : $72
	ld a, c                                                  ; $1bb9 : $79
	jr nz, $64                                                  ; $1bba : $20, $64

	ld h, c                                                  ; $1bbc : $61
	ld a, c                                                  ; $1bbd : $79
	ccf                                                  ; $1bbe : $3f
	nop                                                  ; $1bbf : $00
	nop                                                  ; $1bc0 : $00
	dec l                                                  ; $1bc1 : $2d
	ret pe                                                  ; $1bc2 : $e8

	inc b                                                  ; $1bc3 : $04
	add hl, bc                                                  ; $1bc4 : $09
	ld d, e                                                  ; $1bc5 : $53
	ld h, c                                                  ; $1bc6 : $61

br_07_1bc7:
	ld l, l                                                  ; $1bc7 : $6d
	jr nz, br_07_1c2c                                                  ; $1bc8 : $20, $62

	ld (hl), l                                                  ; $1bca : $75
	ld a, c                                                  ; $1bcb : $79
	ld (hl), e                                                  ; $1bcc : $73
	jr nz, br_07_1c10                                                  ; $1bcd : $20, $41

br_07_1bcf:
	ret pe                                                  ; $1bcf : $e8

	ld (bc), a                                                  ; $1bd0 : $02
	rla                                                  ; $1bd1 : $17
	jr nz, br_07_1c44                                                  ; $1bd2 : $20, $70

	ld h, c                                                  ; $1bd4 : $61
	ld h, e                                                  ; $1bd5 : $63
	ld l, e                                                  ; $1bd6 : $6b

br_07_1bd7:
	ld h, l                                                  ; $1bd7 : $65
	ld (hl), h                                                  ; $1bd8 : $74
	ld (hl), e                                                  ; $1bd9 : $73

br_07_1bda:
	jr nz, br_07_1c4b                                                  ; $1bda : $20, $6f

	ld h, (hl)                                                  ; $1bdc : $66

br_07_1bdd:
	jr nz, br_07_1c52                                                  ; $1bdd : $20, $73

br_07_1bdf:
	ld h, l                                                  ; $1bdf : $65
	ld h, l                                                  ; $1be0 : $65
	ld h, h                                                  ; $1be1 : $64
	ld (hl), e                                                  ; $1be2 : $73
	jr nz, br_07_1c4b                                                  ; $1be3 : $20, $66

	ld l, a                                                  ; $1be5 : $6f
	ld (hl), d                                                  ; $1be6 : $72
	jr nz, br_07_1c0d                                                  ; $1be7 : $20, $24

	ld c, e                                                  ; $1be9 : $4b
	ret pe                                                  ; $1bea : $e8

br_07_1beb:
	ld bc, $202f                                                  ; $1beb : $01, $2f, $20
	ld h, l                                                  ; $1bee : $65
	ld h, c                                                  ; $1bef : $61
	ld h, e                                                  ; $1bf0 : $63
	ld l, b                                                  ; $1bf1 : $68

br_07_1bf2:
	ld l, $20                                                  ; $1bf2 : $2e, $20

br_07_1bf4:
	ld c, b                                                  ; $1bf4 : $48
	ld l, a                                                  ; $1bf5 : $6f
	ld (hl), a                                                  ; $1bf6 : $77
	jr nz, br_07_1c66                                                  ; $1bf7 : $20, $6d

	ld (hl), l                                                  ; $1bf9 : $75
	ld h, e                                                  ; $1bfa : $63
	ld l, b                                                  ; $1bfb : $68
	jr nz, br_07_1c62                                                  ; $1bfc : $20, $64

	ld l, a                                                  ; $1bfe : $6f
	ld h, l                                                  ; $1bff : $65
	ld (hl), e                                                  ; $1c00 : $73

br_07_1c01:
	jr nz, br_07_1c6b                                                  ; $1c01 : $20, $68

	ld h, l                                                  ; $1c03 : $65
	jr nz, br_07_1c6d                                                  ; $1c04 : $20, $67

	ld h, l                                                  ; $1c06 : $65
	ld (hl), h                                                  ; $1c07 : $74
	jr nz, br_07_1c6c                                                  ; $1c08 : $20, $62

br_07_1c0a:
	ld h, c                                                  ; $1c0a : $61
	ld h, e                                                  ; $1c0b : $63
	ld l, e                                                  ; $1c0c : $6b

br_07_1c0d:
	jr nz, br_07_1c78                                                  ; $1c0d : $20, $69

br_07_1c0f:
	ld h, (hl)                                                  ; $1c0f : $66

br_07_1c10:
	jr nz, $68                                                  ; $1c10 : $20, $68

	ld h, l                                                  ; $1c12 : $65
	jr nz, br_07_1c87                                                  ; $1c13 : $20, $72

	ld h, l                                                  ; $1c15 : $65
	ld (hl), h                                                  ; $1c16 : $74
	ld (hl), l                                                  ; $1c17 : $75
	ld (hl), d                                                  ; $1c18 : $72
	ld l, (hl)                                                  ; $1c19 : $6e
	ld (hl), e                                                  ; $1c1a : $73
	jr nz, br_07_1c6d                                                  ; $1c1b : $20, $50

	ret pe                                                  ; $1c1d : $e8

br_07_1c1e:
	ld bc, $2009                                                  ; $1c1e : $01, $09, $20
	ld (hl), b                                                  ; $1c21 : $70

br_07_1c22:
	ld h, c                                                  ; $1c22 : $61
	ld h, e                                                  ; $1c23 : $63
	ld l, e                                                  ; $1c24 : $6b
	ld h, l                                                  ; $1c25 : $65
	ld (hl), h                                                  ; $1c26 : $74
	ld (hl), e                                                  ; $1c27 : $73
	ccf                                                  ; $1c28 : $3f
	nop                                                  ; $1c29 : $00
	nop                                                  ; $1c2a : $00
	ld d, l                                                  ; $1c2b : $55

br_07_1c2c:
	ret pe                                                  ; $1c2c : $e8

	ld (bc), a                                                  ; $1c2d : $02
	inc de                                                  ; $1c2e : $13
	ld c, a                                                  ; $1c2f : $4f
	ld (hl), l                                                  ; $1c30 : $75
	ld (hl), d                                                  ; $1c31 : $72
	jr nz, br_07_1c95                                                  ; $1c32 : $20, $61

	ld (hl), l                                                  ; $1c34 : $75
	ld h, h                                                  ; $1c35 : $64
	ld l, c                                                  ; $1c36 : $69
	ld (hl), h                                                  ; $1c37 : $74
	ld l, a                                                  ; $1c38 : $6f
	ld (hl), d                                                  ; $1c39 : $72
	ld l, c                                                  ; $1c3a : $69
	ld (hl), l                                                  ; $1c3b : $75
	ld l, l                                                  ; $1c3c : $6d
	jr nz, br_07_1ca7                                                  ; $1c3d : $20, $68

	ld h, c                                                  ; $1c3f : $61
	ld (hl), e                                                  ; $1c40 : $73
	jr nz, br_07_1bcf                                                  ; $1c41 : $20, $8c

	ret pe                                                  ; $1c43 : $e8

br_07_1c44:
	ld (bc), a                                                  ; $1c44 : $02
	ld c, $20                                                  ; $1c45 : $0e, $20
	ld h, e                                                  ; $1c47 : $63
	ld l, h                                                  ; $1c48 : $6c
	ld h, c                                                  ; $1c49 : $61
	ld (hl), e                                                  ; $1c4a : $73

br_07_1c4b:
	ld (hl), e                                                  ; $1c4b : $73
	ld h, l                                                  ; $1c4c : $65
	ld (hl), e                                                  ; $1c4d : $73
	jr nz, br_07_1cc7                                                  ; $1c4e : $20, $77

	ld l, c                                                  ; $1c50 : $69
	ld (hl), h                                                  ; $1c51 : $74

br_07_1c52:
	ld l, b                                                  ; $1c52 : $68
	jr nz, br_07_1beb                                                  ; $1c53 : $20, $96

	ret pe                                                  ; $1c55 : $e8

	ld (bc), a                                                  ; $1c56 : $02
	ld b, (hl)                                                  ; $1c57 : $46
	jr nz, $72                                                  ; $1c58 : $20, $72

	ld l, a                                                  ; $1c5a : $6f
	ld (hl), a                                                  ; $1c5b : $77
	ld (hl), e                                                  ; $1c5c : $73
	jr nz, br_07_1cce                                                  ; $1c5d : $20, $6f

	ld h, (hl)                                                  ; $1c5f : $66
	jr nz, br_07_1c95                                                  ; $1c60 : $20, $33

br_07_1c62:
	jr nc, $20                                                  ; $1c62 : $30, $20

	ld (hl), e                                                  ; $1c64 : $73
	ld h, l                                                  ; $1c65 : $65

br_07_1c66:
	ld h, c                                                  ; $1c66 : $61
	ld (hl), h                                                  ; $1c67 : $74
	ld (hl), e                                                  ; $1c68 : $73
	ld l, $20                                                  ; $1c69 : $2e, $20

br_07_1c6b:
	ld c, b                                                  ; $1c6b : $48

br_07_1c6c:
	ld l, a                                                  ; $1c6c : $6f

br_07_1c6d:
	ld (hl), a                                                  ; $1c6d : $77
	jr nz, br_07_1cdd                                                  ; $1c6e : $20, $6d

	ld h, c                                                  ; $1c70 : $61
	ld l, (hl)                                                  ; $1c71 : $6e
	ld a, c                                                  ; $1c72 : $79
	jr nz, br_07_1ce8                                                  ; $1c73 : $20, $73

	ld h, l                                                  ; $1c75 : $65
	ld h, c                                                  ; $1c76 : $61
	ld (hl), h                                                  ; $1c77 : $74

br_07_1c78:
	ld (hl), e                                                  ; $1c78 : $73
	jr nz, $61                                                  ; $1c79 : $20, $61

	ld (hl), d                                                  ; $1c7b : $72
	ld h, l                                                  ; $1c7c : $65
	jr nz, br_07_1cf3                                                  ; $1c7d : $20, $74

	ld l, b                                                  ; $1c7f : $68
	ld h, l                                                  ; $1c80 : $65
	ld (hl), d                                                  ; $1c81 : $72
	ld h, l                                                  ; $1c82 : $65
	jr nz, br_07_1cf9                                                  ; $1c83 : $20, $74

	ld l, a                                                  ; $1c85 : $6f
	ld (hl), h                                                  ; $1c86 : $74

br_07_1c87:
	ld h, c                                                  ; $1c87 : $61
	ld l, h                                                  ; $1c88 : $6c
	ld l, h                                                  ; $1c89 : $6c
	ld a, c                                                  ; $1c8a : $79
	jr nz, br_07_1cf6                                                  ; $1c8b : $20, $69

	ld l, (hl)                                                  ; $1c8d : $6e
	jr nz, br_07_1d04                                                  ; $1c8e : $20, $74

	ld l, b                                                  ; $1c90 : $68
	ld h, l                                                  ; $1c91 : $65
	jr nz, br_07_1cf5                                                  ; $1c92 : $20, $61

	ld (hl), l                                                  ; $1c94 : $75

br_07_1c95:
	ld h, h                                                  ; $1c95 : $64
	ld l, c                                                  ; $1c96 : $69
	ld (hl), h                                                  ; $1c97 : $74
	ld l, a                                                  ; $1c98 : $6f
	ld (hl), d                                                  ; $1c99 : $72
	ld l, c                                                  ; $1c9a : $69
	ld (hl), l                                                  ; $1c9b : $75
	ld l, l                                                  ; $1c9c : $6d
	ccf                                                  ; $1c9d : $3f
	nop                                                  ; $1c9e : $00
	nop                                                  ; $1c9f : $00
	and b                                                  ; $1ca0 : $a0
	ret pe                                                  ; $1ca1 : $e8

	dec b                                                  ; $1ca2 : $05
	inc (hl)                                                  ; $1ca3 : $34
	ld c, e                                                  ; $1ca4 : $4b
	ld h, c                                                  ; $1ca5 : $61
	ld (hl), h                                                  ; $1ca6 : $74

br_07_1ca7:
	ld l, b                                                  ; $1ca7 : $68
	ld a, c                                                  ; $1ca8 : $79
	jr nz, br_07_1d13                                                  ; $1ca9 : $20, $68

	ld h, c                                                  ; $1cab : $61
	ld (hl), e                                                  ; $1cac : $73
	jr nz, br_07_1cd3                                                  ; $1cad : $20, $24

	dec (hl)                                                  ; $1caf : $35
	ld l, $30                                                  ; $1cb0 : $2e, $30
	jr nc, br_07_1ce2                                                  ; $1cb2 : $30, $2e

	jr nz, br_07_1cfe                                                  ; $1cb4 : $20, $48

	ld l, a                                                  ; $1cb6 : $6f
	ld (hl), a                                                  ; $1cb7 : $77
	jr nz, br_07_1d27                                                  ; $1cb8 : $20, $6d

	ld (hl), l                                                  ; $1cba : $75
	ld h, e                                                  ; $1cbb : $63
	ld l, b                                                  ; $1cbc : $68
	jr nz, $6d                                                  ; $1cbd : $20, $6d

	ld l, a                                                  ; $1cbf : $6f
	ld (hl), d                                                  ; $1cc0 : $72
	ld h, l                                                  ; $1cc1 : $65
	jr nz, br_07_1d3b                                                  ; $1cc2 : $20, $77

	ld l, c                                                  ; $1cc4 : $69
	ld l, h                                                  ; $1cc5 : $6c
	ld l, h                                                  ; $1cc6 : $6c

br_07_1cc7:
	jr nz, $73                                                  ; $1cc7 : $20, $73

	ld l, b                                                  ; $1cc9 : $68
	ld h, l                                                  ; $1cca : $65
	jr nz, br_07_1d3b                                                  ; $1ccb : $20, $6e

	ld h, l                                                  ; $1ccd : $65

br_07_1cce:
	ld h, l                                                  ; $1cce : $65
	ld h, h                                                  ; $1ccf : $64
	jr nz, br_07_1d46                                                  ; $1cd0 : $20, $74

	ld l, a                                                  ; $1cd2 : $6f

br_07_1cd3:
	jr nz, br_07_1d37                                                  ; $1cd3 : $20, $62

	ld (hl), l                                                  ; $1cd5 : $75
	ld a, c                                                  ; $1cd6 : $79
	jr nz, $5f                                                  ; $1cd7 : $20, $5f

	ret pe                                                  ; $1cd9 : $e8

br_07_1cda:
	ld bc, $2014                                                  ; $1cda : $01, $14, $20

br_07_1cdd:
	ld h, (hl)                                                  ; $1cdd : $66
	ld l, a                                                  ; $1cde : $6f
	ld l, h                                                  ; $1cdf : $6c
	ld h, h                                                  ; $1ce0 : $64
	ld h, l                                                  ; $1ce1 : $65

br_07_1ce2:
	ld (hl), d                                                  ; $1ce2 : $72
	ld (hl), e                                                  ; $1ce3 : $73
	jr nz, $74                                                  ; $1ce4 : $20, $74

	ld l, b                                                  ; $1ce6 : $68
	ld h, c                                                  ; $1ce7 : $61

br_07_1ce8:
	ld (hl), h                                                  ; $1ce8 : $74
	jr nz, br_07_1d4e                                                  ; $1ce9 : $20, $63

	ld l, a                                                  ; $1ceb : $6f
	ld (hl), e                                                  ; $1cec : $73
	ld (hl), h                                                  ; $1ced : $74
	jr nz, br_07_1d14                                                  ; $1cee : $20, $24

	ld h, h                                                  ; $1cf0 : $64
	ret pe                                                  ; $1cf1 : $e8

	inc b                                                  ; $1cf2 : $04

br_07_1cf3:
	ld b, $20                                                  ; $1cf3 : $06, $20

br_07_1cf5:
	ld h, l                                                  ; $1cf5 : $65

br_07_1cf6:
	ld h, c                                                  ; $1cf6 : $61
	ld h, e                                                  ; $1cf7 : $63
	ld l, b                                                  ; $1cf8 : $68

br_07_1cf9:
	ccf                                                  ; $1cf9 : $3f
	nop                                                  ; $1cfa : $00
	nop                                                  ; $1cfb : $00
	ld a, b                                                  ; $1cfc : $78
	ret pe                                                  ; $1cfd : $e8

br_07_1cfe:
	inc b                                                  ; $1cfe : $04
	jr nz, br_07_1d42                                                  ; $1cff : $20, $41

	jr nz, $63                                                  ; $1d01 : $20, $63

	ld h, l                                                  ; $1d03 : $65

br_07_1d04:
	ld (hl), d                                                  ; $1d04 : $72
	ld (hl), h                                                  ; $1d05 : $74
	ld h, c                                                  ; $1d06 : $61
	ld l, c                                                  ; $1d07 : $69
	ld l, (hl)                                                  ; $1d08 : $6e
	jr nz, br_07_1d82                                                  ; $1d09 : $20, $77

	ld l, a                                                  ; $1d0b : $6f
	ld (hl), d                                                  ; $1d0c : $72
	ld h, h                                                  ; $1d0d : $64
	jr nz, br_07_1d80                                                  ; $1d0e : $20, $70

	ld (hl), d                                                  ; $1d10 : $72
	ld l, a                                                  ; $1d11 : $6f
	ld h, e                                                  ; $1d12 : $63

br_07_1d13:
	ld h, l                                                  ; $1d13 : $65

br_07_1d14:
	ld (hl), e                                                  ; $1d14 : $73
	ld (hl), e                                                  ; $1d15 : $73
	ld l, a                                                  ; $1d16 : $6f
	ld (hl), d                                                  ; $1d17 : $72
	jr nz, br_07_1d8a                                                  ; $1d18 : $20, $70

	ld (hl), d                                                  ; $1d1a : $72
	ld l, c                                                  ; $1d1b : $69
	ld l, (hl)                                                  ; $1d1c : $6e
	ld (hl), h                                                  ; $1d1d : $74
	ld (hl), e                                                  ; $1d1e : $73
	jr nz, br_07_1cda                                                  ; $1d1f : $20, $b9

	ret pe                                                  ; $1d21 : $e8

	ld bc, $2045                                                  ; $1d22 : $01, $45, $20
	ld h, e                                                  ; $1d25 : $63
	ld l, a                                                  ; $1d26 : $6f

br_07_1d27:
	ld (hl), b                                                  ; $1d27 : $70

br_07_1d28:
	ld l, c                                                  ; $1d28 : $69
	ld h, l                                                  ; $1d29 : $65
	ld (hl), e                                                  ; $1d2a : $73
	jr nz, br_07_1d9c                                                  ; $1d2b : $20, $6f

	ld h, (hl)                                                  ; $1d2d : $66
	jr nz, $61                                                  ; $1d2e : $20, $61

	jr nz, br_07_1d9e                                                  ; $1d30 : $20, $6c

	ld h, l                                                  ; $1d32 : $65
	ld (hl), h                                                  ; $1d33 : $74
	ld (hl), h                                                  ; $1d34 : $74
	ld h, l                                                  ; $1d35 : $65
	ld (hl), d                                                  ; $1d36 : $72

br_07_1d37:
	jr nz, $70                                                  ; $1d37 : $20, $70

	ld h, l                                                  ; $1d39 : $65
	ld (hl), d                                                  ; $1d3a : $72

br_07_1d3b:
	jr nz, br_07_1daa                                                  ; $1d3b : $20, $6d

	ld l, c                                                  ; $1d3d : $69
	ld l, (hl)                                                  ; $1d3e : $6e
	ld (hl), l                                                  ; $1d3f : $75
	ld (hl), h                                                  ; $1d40 : $74
	ld h, l                                                  ; $1d41 : $65

br_07_1d42:
	ld l, $20                                                  ; $1d42 : $2e, $20
	ld c, b                                                  ; $1d44 : $48
	ld l, a                                                  ; $1d45 : $6f

br_07_1d46:
	ld (hl), a                                                  ; $1d46 : $77
	jr nz, br_07_1db6                                                  ; $1d47 : $20, $6d

	ld h, c                                                  ; $1d49 : $61
	ld l, (hl)                                                  ; $1d4a : $6e
	ld a, c                                                  ; $1d4b : $79
	jr nz, br_07_1db1                                                  ; $1d4c : $20, $63

br_07_1d4e:
	ld l, a                                                  ; $1d4e : $6f
	ld (hl), b                                                  ; $1d4f : $70
	ld l, c                                                  ; $1d50 : $69
	ld h, l                                                  ; $1d51 : $65
	ld (hl), e                                                  ; $1d52 : $73
	jr nz, br_07_1dcc                                                  ; $1d53 : $20, $77

	ld l, a                                                  ; $1d55 : $6f
	ld (hl), l                                                  ; $1d56 : $75
	ld l, h                                                  ; $1d57 : $6c
	ld h, h                                                  ; $1d58 : $64
	jr nz, br_07_1dbd                                                  ; $1d59 : $20, $62

	ld h, l                                                  ; $1d5b : $65
	jr nz, $70                                                  ; $1d5c : $20, $70

	ld (hl), d                                                  ; $1d5e : $72
	ld l, a                                                  ; $1d5f : $6f
	ld h, h                                                  ; $1d60 : $64
	ld (hl), l                                                  ; $1d61 : $75
	ld h, e                                                  ; $1d62 : $63
	ld h, l                                                  ; $1d63 : $65
	ld h, h                                                  ; $1d64 : $64
	jr nz, br_07_1dd0                                                  ; $1d65 : $20, $69

	ld l, (hl)                                                  ; $1d67 : $6e
	jr nz, br_07_1d28                                                  ; $1d68 : $20, $be

	ret pe                                                  ; $1d6a : $e8

	ld (bc), a                                                  ; $1d6b : $02
	add hl, bc                                                  ; $1d6c : $09
	jr nz, br_07_1ddc                                                  ; $1d6d : $20, $6d

	ld l, c                                                  ; $1d6f : $69
	ld l, (hl)                                                  ; $1d70 : $6e
	ld (hl), l                                                  ; $1d71 : $75
	ld (hl), h                                                  ; $1d72 : $74
	ld h, l                                                  ; $1d73 : $65
	ld (hl), e                                                  ; $1d74 : $73
	ccf                                                  ; $1d75 : $3f
	nop                                                  ; $1d76 : $00
	nop                                                  ; $1d77 : $00
	ret z                                                  ; $1d78 : $c8

	ret pe                                                  ; $1d79 : $e8

	ld (bc), a                                                  ; $1d7a : $02
	ld d, d                                                  ; $1d7b : $52
	ld c, c                                                  ; $1d7c : $49
	ld h, (hl)                                                  ; $1d7d : $66
	jr nz, br_07_1df3                                                  ; $1d7e : $20, $73

br_07_1d80:
	ld l, a                                                  ; $1d80 : $6f
	ld (hl), l                                                  ; $1d81 : $75

br_07_1d82:
	ld l, (hl)                                                  ; $1d82 : $6e
	ld h, h                                                  ; $1d83 : $64
	jr nz, br_07_1dfa                                                  ; $1d84 : $20, $74

	ld (hl), d                                                  ; $1d86 : $72
	ld h, c                                                  ; $1d87 : $61
	halt                                                  ; $1d88 : $76
	ld h, l                                                  ; $1d89 : $65

br_07_1d8a:
	ld l, h                                                  ; $1d8a : $6c
	ld (hl), e                                                  ; $1d8b : $73
	jr nz, $31                                                  ; $1d8c : $20, $31

	ld l, $35                                                  ; $1d8e : $2e, $35
	jr nz, br_07_1dfd                                                  ; $1d90 : $20, $6b

	ld l, l                                                  ; $1d92 : $6d
	jr nz, $70                                                  ; $1d93 : $20, $70

	ld h, l                                                  ; $1d95 : $65
	ld (hl), d                                                  ; $1d96 : $72
	jr nz, br_07_1e0c                                                  ; $1d97 : $20, $73

	ld h, l                                                  ; $1d99 : $65
	ld h, e                                                  ; $1d9a : $63
	ld l, a                                                  ; $1d9b : $6f

br_07_1d9c:
	ld l, (hl)                                                  ; $1d9c : $6e
	ld h, h                                                  ; $1d9d : $64

br_07_1d9e:
	jr nz, br_07_1e09                                                  ; $1d9e : $20, $69

	ld l, (hl)                                                  ; $1da0 : $6e

br_07_1da1:
	jr nz, br_07_1e1a                                                  ; $1da1 : $20, $77

	ld h, c                                                  ; $1da3 : $61
	ld (hl), h                                                  ; $1da4 : $74
	ld h, l                                                  ; $1da5 : $65
	ld (hl), d                                                  ; $1da6 : $72
	inc l                                                  ; $1da7 : $2c
	jr nz, br_07_1e12                                                  ; $1da8 : $20, $68

br_07_1daa:
	ld l, a                                                  ; $1daa : $6f
	ld (hl), a                                                  ; $1dab : $77
	jr nz, br_07_1e12                                                  ; $1dac : $20, $64

	ld h, l                                                  ; $1dae : $65
	ld h, l                                                  ; $1daf : $65
	ld (hl), b                                                  ; $1db0 : $70

br_07_1db1:
	jr nz, br_07_1e1c                                                  ; $1db1 : $20, $69

	ld (hl), e                                                  ; $1db3 : $73
	jr nz, br_07_1e2a                                                  ; $1db4 : $20, $74

br_07_1db6:
	ld l, b                                                  ; $1db6 : $68
	ld h, l                                                  ; $1db7 : $65
	jr nz, br_07_1e31                                                  ; $1db8 : $20, $77

	ld h, c                                                  ; $1dba : $61
	ld (hl), h                                                  ; $1dbb : $74
	ld h, l                                                  ; $1dbc : $65

br_07_1dbd:
	ld (hl), d                                                  ; $1dbd : $72
	jr nz, br_07_1e29                                                  ; $1dbe : $20, $69

	ld h, (hl)                                                  ; $1dc0 : $66
	jr nz, br_07_1e36                                                  ; $1dc1 : $20, $73

	ld l, a                                                  ; $1dc3 : $6f
	ld (hl), l                                                  ; $1dc4 : $75
	ld l, (hl)                                                  ; $1dc5 : $6e
	ld h, h                                                  ; $1dc6 : $64
	jr nz, br_07_1e3d                                                  ; $1dc7 : $20, $74

	ld h, c                                                  ; $1dc9 : $61
	ld l, e                                                  ; $1dca : $6b
	ld h, l                                                  ; $1dcb : $65

br_07_1dcc:
	ld (hl), e                                                  ; $1dcc : $73
	jr nz, br_07_1da1                                                  ; $1dcd : $20, $d2

	ret pe                                                  ; $1dcf : $e8

br_07_1dd0:
	inc bc                                                  ; $1dd0 : $03
	dec e                                                  ; $1dd1 : $1d
	jr nz, br_07_1e47                                                  ; $1dd2 : $20, $73

	ld h, l                                                  ; $1dd4 : $65
	ld h, e                                                  ; $1dd5 : $63
	ld l, a                                                  ; $1dd6 : $6f
	ld l, (hl)                                                  ; $1dd7 : $6e
	ld h, h                                                  ; $1dd8 : $64
	ld (hl), e                                                  ; $1dd9 : $73
	jr nz, br_07_1e50                                                  ; $1dda : $20, $74

br_07_1ddc:
	ld l, a                                                  ; $1ddc : $6f
	jr nz, br_07_1e51                                                  ; $1ddd : $20, $72

	ld h, l                                                  ; $1ddf : $65
	ld h, c                                                  ; $1de0 : $61
	ld h, e                                                  ; $1de1 : $63
	ld l, b                                                  ; $1de2 : $68
	jr nz, br_07_1e59                                                  ; $1de3 : $20, $74

	ld l, b                                                  ; $1de5 : $68
	ld h, l                                                  ; $1de6 : $65
	jr nz, $62                                                  ; $1de7 : $20, $62

	ld l, a                                                  ; $1de9 : $6f
	ld (hl), h                                                  ; $1dea : $74

Jump_07_1deb:
	ld (hl), h                                                  ; $1deb : $74
	ld l, a                                                  ; $1dec : $6f
	ld l, l                                                  ; $1ded : $6d
	ccf                                                  ; $1dee : $3f
	nop                                                  ; $1def : $00
	nop                                                  ; $1df0 : $00
	pop hl                                                  ; $1df1 : $e1
	ret pe                                                  ; $1df2 : $e8

br_07_1df3:
	inc b                                                  ; $1df3 : $04
	dec de                                                  ; $1df4 : $1b
	ld b, h                                                  ; $1df5 : $44
	ld h, c                                                  ; $1df6 : $61
	halt                                                  ; $1df7 : $76
	ld l, c                                                  ; $1df8 : $69
	ld h, h                                                  ; $1df9 : $64

br_07_1dfa:
	jr nz, br_07_1e5e                                                  ; $1dfa : $20, $62

	ld (hl), l                                                  ; $1dfc : $75

br_07_1dfd:
	ld a, c                                                  ; $1dfd : $79
	ld (hl), e                                                  ; $1dfe : $73
	jr nz, br_07_1e62                                                  ; $1dff : $20, $61

	ld (hl), l                                                  ; $1e01 : $75
	ld (hl), h                                                  ; $1e02 : $74

Jump_07_1e03:
	ld l, a                                                  ; $1e03 : $6f
	jr nz, $70                                                  ; $1e04 : $20, $70

	ld h, c                                                  ; $1e06 : $61
	ld (hl), d                                                  ; $1e07 : $72
	ld (hl), h                                                  ; $1e08 : $74

br_07_1e09:
	ld (hl), e                                                  ; $1e09 : $73
	jr nz, br_07_1e72                                                  ; $1e0a : $20, $66

br_07_1e0c:
	ld l, a                                                  ; $1e0c : $6f
	ld (hl), d                                                  ; $1e0d : $72
	jr nz, br_07_1e34                                                  ; $1e0e : $20, $24

	push af                                                  ; $1e10 : $f5
	ret pe                                                  ; $1e11 : $e8

br_07_1e12:
	ld (bc), a                                                  ; $1e12 : $02
	inc bc                                                  ; $1e13 : $03
	inc l                                                  ; $1e14 : $2c
	jr nz, br_07_1e3b                                                  ; $1e15 : $20, $24

	rst $38                                                  ; $1e17 : $ff
	ret pe                                                  ; $1e18 : $e8

	ld (bc), a                                                  ; $1e19 : $02

br_07_1e1a:
	ld b, $20                                                  ; $1e1a : $06, $20

br_07_1e1c:
	ld h, c                                                  ; $1e1c : $61
	ld l, (hl)                                                  ; $1e1d : $6e
	ld h, h                                                  ; $1e1e : $64
	jr nz, br_07_1e45                                                  ; $1e1f : $20, $24

	add hl, bc                                                  ; $1e21 : $09
	jp (hl)                                                  ; $1e22 : $e9


	ld (bc), a                                                  ; $1e23 : $02
	jr nc, br_07_1e54                                                  ; $1e24 : $30, $2e

	jr nz, br_07_1e70                                                  ; $1e26 : $20, $48

	ld l, a                                                  ; $1e28 : $6f

br_07_1e29:
	ld (hl), a                                                  ; $1e29 : $77

br_07_1e2a:
	jr nz, br_07_1e99                                                  ; $1e2a : $20, $6d

	ld (hl), l                                                  ; $1e2c : $75
	ld h, e                                                  ; $1e2d : $63
	ld l, b                                                  ; $1e2e : $68
	jr nz, br_07_1e94                                                  ; $1e2f : $20, $63

br_07_1e31:
	ld l, b                                                  ; $1e31 : $68
	ld h, c                                                  ; $1e32 : $61
	ld l, (hl)                                                  ; $1e33 : $6e

br_07_1e34:
	ld h, a                                                  ; $1e34 : $67
	ld h, l                                                  ; $1e35 : $65

br_07_1e36:
	jr nz, br_07_1e9c                                                  ; $1e36 : $20, $64

	ld l, a                                                  ; $1e38 : $6f
	ld h, l                                                  ; $1e39 : $65
	ld (hl), e                                                  ; $1e3a : $73

br_07_1e3b:
	jr nz, br_07_1ea5                                                  ; $1e3b : $20, $68

br_07_1e3d:
	ld h, l                                                  ; $1e3d : $65
	jr nz, $68                                                  ; $1e3e : $20, $68

	ld h, c                                                  ; $1e40 : $61
	halt                                                  ; $1e41 : $76
	ld h, l                                                  ; $1e42 : $65
	jr nz, $66                                                  ; $1e43 : $20, $66

br_07_1e45:
	ld (hl), d                                                  ; $1e45 : $72
	ld l, a                                                  ; $1e46 : $6f

br_07_1e47:
	ld l, l                                                  ; $1e47 : $6d
	jr nz, br_07_1e7d                                                  ; $1e48 : $20, $33

	jr nz, br_07_1e70                                                  ; $1e4a : $20, $24

	ld ($2030), a                                                  ; $1e4c : $32, $30, $20
	ld h, d                                                  ; $1e4f : $62

br_07_1e50:
	ld l, c                                                  ; $1e50 : $69

br_07_1e51:
	ld l, h                                                  ; $1e51 : $6c
	ld l, h                                                  ; $1e52 : $6c
	ld (hl), e                                                  ; $1e53 : $73

br_07_1e54:
	ccf                                                  ; $1e54 : $3f
	nop                                                  ; $1e55 : $00
	nop                                                  ; $1e56 : $00
	inc de                                                  ; $1e57 : $13
	jp (hl)                                                  ; $1e58 : $e9


br_07_1e59:
	ld (bc), a                                                  ; $1e59 : $02
	ld d, $41                                                  ; $1e5a : $16, $41
	jr nz, br_07_1ec8                                                  ; $1e5c : $20, $6a

br_07_1e5e:
	ld h, l                                                  ; $1e5e : $65
	ld (hl), h                                                  ; $1e5f : $74
	jr nz, br_07_1ed2                                                  ; $1e60 : $20, $70

br_07_1e62:
	ld l, h                                                  ; $1e62 : $6c
	ld h, c                                                  ; $1e63 : $61
	ld l, (hl)                                                  ; $1e64 : $6e
	ld h, l                                                  ; $1e65 : $65
	jr nz, $74                                                  ; $1e66 : $20, $74

	ld (hl), d                                                  ; $1e68 : $72
	ld h, c                                                  ; $1e69 : $61
	halt                                                  ; $1e6a : $76
	ld h, l                                                  ; $1e6b : $65
	ld l, h                                                  ; $1e6c : $6c
	ld l, h                                                  ; $1e6d : $6c
	ld h, l                                                  ; $1e6e : $65
	ld h, h                                                  ; $1e6f : $64

br_07_1e70:
	jr nz, $1d                                                  ; $1e70 : $20, $1d

br_07_1e72:
	jp (hl)                                                  ; $1e72 : $e9


	ld b, $0a                                                  ; $1e73 : $06, $0a
	jr nz, br_07_1ee4                                                  ; $1e75 : $20, $6d

	ld l, c                                                  ; $1e77 : $69
	ld l, h                                                  ; $1e78 : $6c
	ld h, l                                                  ; $1e79 : $65
	ld (hl), e                                                  ; $1e7a : $73
	jr nz, br_07_1ee6                                                  ; $1e7b : $20, $69

br_07_1e7d:
	ld l, (hl)                                                  ; $1e7d : $6e
	jr nz, $3b                                                  ; $1e7e : $20, $3b

	jp (hl)                                                  ; $1e80 : $e9


	inc bc                                                  ; $1e81 : $03
	ld sp, $6820                                                  ; $1e82 : $31, $20, $68
	ld l, a                                                  ; $1e85 : $6f
	ld (hl), l                                                  ; $1e86 : $75
	ld (hl), d                                                  ; $1e87 : $72
	ld (hl), e                                                  ; $1e88 : $73
	ld l, $20                                                  ; $1e89 : $2e, $20
	ld c, b                                                  ; $1e8b : $48
	ld l, a                                                  ; $1e8c : $6f
	ld (hl), a                                                  ; $1e8d : $77
	jr nz, br_07_1ef6                                                  ; $1e8e : $20, $66

	ld h, c                                                  ; $1e90 : $61
	ld (hl), d                                                  ; $1e91 : $72
	jr nz, $64                                                  ; $1e92 : $20, $64

br_07_1e94:
	ld l, c                                                  ; $1e94 : $69
	ld h, h                                                  ; $1e95 : $64
	jr nz, br_07_1f0c                                                  ; $1e96 : $20, $74

	ld l, b                                                  ; $1e98 : $68

br_07_1e99:
	ld h, l                                                  ; $1e99 : $65
	jr nz, br_07_1f0c                                                  ; $1e9a : $20, $70

br_07_1e9c:
	ld l, h                                                  ; $1e9c : $6c
	ld h, c                                                  ; $1e9d : $61
	ld l, (hl)                                                  ; $1e9e : $6e
	ld h, l                                                  ; $1e9f : $65
	jr nz, br_07_1f16                                                  ; $1ea0 : $20, $74

	ld (hl), d                                                  ; $1ea2 : $72
	ld h, c                                                  ; $1ea3 : $61
	halt                                                  ; $1ea4 : $76

br_07_1ea5:
	ld h, l                                                  ; $1ea5 : $65
	ld l, h                                                  ; $1ea6 : $6c
	jr nz, $69                                                  ; $1ea7 : $20, $69

	ld l, (hl)                                                  ; $1ea9 : $6e
	jr nz, br_07_1f1b                                                  ; $1eaa : $20, $6f

	ld l, (hl)                                                  ; $1eac : $6e
	ld h, l                                                  ; $1ead : $65
	jr nz, br_07_1f18                                                  ; $1eae : $20, $68

	ld l, a                                                  ; $1eb0 : $6f
	ld (hl), l                                                  ; $1eb1 : $75
	ld (hl), d                                                  ; $1eb2 : $72
	ccf                                                  ; $1eb3 : $3f
	nop                                                  ; $1eb4 : $00
	nop                                                  ; $1eb5 : $00
	ld c, d                                                  ; $1eb6 : $4a
	jp (hl)                                                  ; $1eb7 : $e9


	inc bc                                                  ; $1eb8 : $03
	ld ($6854), hl                                                  ; $1eb9 : $22, $54, $68
	ld h, l                                                  ; $1ebc : $65
	jr nz, br_07_1f23                                                  ; $1ebd : $20, $64

	ld l, c                                                  ; $1ebf : $69
	ld h, c                                                  ; $1ec0 : $61

br_07_1ec1:
	ld l, l                                                  ; $1ec1 : $6d
	ld h, l                                                  ; $1ec2 : $65
	ld (hl), h                                                  ; $1ec3 : $74
	ld h, l                                                  ; $1ec4 : $65
	ld (hl), d                                                  ; $1ec5 : $72
	jr nz, br_07_1f37                                                  ; $1ec6 : $20, $6f

br_07_1ec8:
	ld h, (hl)                                                  ; $1ec8 : $66
	jr nz, $61                                                  ; $1ec9 : $20, $61

	jr nz, br_07_1f13                                                  ; $1ecb : $20, $46

	ld h, l                                                  ; $1ecd : $65
	ld (hl), d                                                  ; $1ece : $72
	ld (hl), d                                                  ; $1ecf : $72
	ld l, c                                                  ; $1ed0 : $69
	ld (hl), e                                                  ; $1ed1 : $73

br_07_1ed2:
	jr nz, br_07_1f4b                                                  ; $1ed2 : $20, $77

	ld l, b                                                  ; $1ed4 : $68
	ld h, l                                                  ; $1ed5 : $65
	ld h, l                                                  ; $1ed6 : $65
	ld l, h                                                  ; $1ed7 : $6c
	jr nz, br_07_1f43                                                  ; $1ed8 : $20, $69

	ld (hl), e                                                  ; $1eda : $73
	jr nz, $59                                                  ; $1edb : $20, $59

	jp (hl)                                                  ; $1edd : $e9


	ld (bc), a                                                  ; $1ede : $02
	ld (hl), $20                                                  ; $1edf : $36, $20
	ld l, l                                                  ; $1ee1 : $6d
	ld h, l                                                  ; $1ee2 : $65

Call_07_1ee3:
	ld (hl), h                                                  ; $1ee3 : $74

br_07_1ee4:
	ld h, l                                                  ; $1ee4 : $65
	ld (hl), d                                                  ; $1ee5 : $72

br_07_1ee6:
	ld (hl), e                                                  ; $1ee6 : $73
	ld l, $20                                                  ; $1ee7 : $2e, $20
	ld c, b                                                  ; $1ee9 : $48
	ld l, a                                                  ; $1eea : $6f
	ld (hl), a                                                  ; $1eeb : $77
	jr nz, br_07_1f54                                                  ; $1eec : $20, $66

	ld h, c                                                  ; $1eee : $61
	ld (hl), d                                                  ; $1eef : $72
	jr nz, br_07_1f56                                                  ; $1ef0 : $20, $64

	ld l, a                                                  ; $1ef2 : $6f
	jr nz, br_07_1f6e                                                  ; $1ef3 : $20, $79

	ld l, a                                                  ; $1ef5 : $6f

br_07_1ef6:
	ld (hl), l                                                  ; $1ef6 : $75
	jr nz, br_07_1f60                                                  ; $1ef7 : $20, $67

	ld l, a                                                  ; $1ef9 : $6f
	jr nz, br_07_1f65                                                  ; $1efa : $20, $69

	ld l, (hl)                                                  ; $1efc : $6e
	jr nz, br_07_1f6e                                                  ; $1efd : $20, $6f

	ld l, (hl)                                                  ; $1eff : $6e
	ld h, l                                                  ; $1f00 : $65
	jr nz, br_07_1f75                                                  ; $1f01 : $20, $72

	ld h, l                                                  ; $1f03 : $65
	halt                                                  ; $1f04 : $76
	ld l, a                                                  ; $1f05 : $6f

Jump_07_1f06:
	ld l, h                                                  ; $1f06 : $6c
	ld (hl), l                                                  ; $1f07 : $75
	ld (hl), h                                                  ; $1f08 : $74
	ld l, c                                                  ; $1f09 : $69
	ld l, a                                                  ; $1f0a : $6f
	ld l, (hl)                                                  ; $1f0b : $6e

br_07_1f0c:
	jr nz, $28                                                  ; $1f0c : $20, $28

	exx                                                  ; $1f0e : $d9
	dec a                                                  ; $1f0f : $3d
	inc sp                                                  ; $1f10 : $33
	ld l, $31                                                  ; $1f11 : $2e, $31

br_07_1f13:
	inc (hl)                                                  ; $1f13 : $34
	add hl, hl                                                  ; $1f14 : $29
	ccf                                                  ; $1f15 : $3f

br_07_1f16:
	nop                                                  ; $1f16 : $00
	nop                                                  ; $1f17 : $00

br_07_1f18:
	ld h, e                                                  ; $1f18 : $63
	jp (hl)                                                  ; $1f19 : $e9


	dec b                                                  ; $1f1a : $05

br_07_1f1b:
	dec bc                                                  ; $1f1b : $0b
	ld b, c                                                  ; $1f1c : $41
	jr nz, br_07_1f85                                                  ; $1f1d : $20, $66

	ld l, c                                                  ; $1f1f : $69
	ld h, l                                                  ; $1f20 : $65
	ld l, h                                                  ; $1f21 : $6c
	ld h, h                                                  ; $1f22 : $64

br_07_1f23:
	jr nz, br_07_1f8e                                                  ; $1f23 : $20, $69

	ld (hl), e                                                  ; $1f25 : $73
	jr nz, br_07_1fa4                                                  ; $1f26 : $20, $7c

	jp (hl)                                                  ; $1f28 : $e9


	ld (bc), a                                                  ; $1f29 : $02
	rrca                                                  ; $1f2a : $0f
	jr nz, br_07_1f93                                                  ; $1f2b : $20, $66

	ld h, l                                                  ; $1f2d : $65
	ld h, l                                                  ; $1f2e : $65
	ld (hl), h                                                  ; $1f2f : $74
	jr nz, $6c                                                  ; $1f30 : $20, $6c

	ld l, a                                                  ; $1f32 : $6f
	ld l, (hl)                                                  ; $1f33 : $6e

br_07_1f34:
	ld h, a                                                  ; $1f34 : $67
	jr nz, br_07_1f98                                                  ; $1f35 : $20, $61

br_07_1f37:
	ld l, (hl)                                                  ; $1f37 : $6e
	ld h, h                                                  ; $1f38 : $64
	jr nz, br_07_1ec1                                                  ; $1f39 : $20, $86

	jp (hl)                                                  ; $1f3b : $e9


	ld (bc), a                                                  ; $1f3c : $02
	ld b, l                                                  ; $1f3d : $45
	jr nz, br_07_1fa6                                                  ; $1f3e : $20, $66

	ld h, l                                                  ; $1f40 : $65
	ld h, l                                                  ; $1f41 : $65
	ld (hl), h                                                  ; $1f42 : $74

br_07_1f43:
	jr nz, br_07_1fbc                                                  ; $1f43 : $20, $77

	ld l, c                                                  ; $1f45 : $69
	ld h, h                                                  ; $1f46 : $64
	ld h, l                                                  ; $1f47 : $65
	ld l, $20                                                  ; $1f48 : $2e, $20
	ld c, b                                                  ; $1f4a : $48

br_07_1f4b:
	ld l, a                                                  ; $1f4b : $6f
	ld (hl), a                                                  ; $1f4c : $77
	jr nz, br_07_1fbb                                                  ; $1f4d : $20, $6c

	ld l, a                                                  ; $1f4f : $6f
	ld l, (hl)                                                  ; $1f50 : $6e
	ld h, a                                                  ; $1f51 : $67
	jr nz, $77                                                  ; $1f52 : $20, $77

br_07_1f54:
	ld l, a                                                  ; $1f54 : $6f
	ld (hl), l                                                  ; $1f55 : $75

br_07_1f56:
	ld l, h                                                  ; $1f56 : $6c
	ld h, h                                                  ; $1f57 : $64
	jr nz, br_07_1fbb                                                  ; $1f58 : $20, $61

	jr nz, br_07_1fc2                                                  ; $1f5a : $20, $66

	ld h, l                                                  ; $1f5c : $65
	ld l, (hl)                                                  ; $1f5d : $6e
	ld h, e                                                  ; $1f5e : $63
	ld h, l                                                  ; $1f5f : $65

br_07_1f60:
	jr nz, br_07_1fd0                                                  ; $1f60 : $20, $6e

	ld h, l                                                  ; $1f62 : $65
	ld h, l                                                  ; $1f63 : $65
	ld h, h                                                  ; $1f64 : $64

br_07_1f65:
	jr nz, br_07_1fdb                                                  ; $1f65 : $20, $74

	ld l, a                                                  ; $1f67 : $6f
	jr nz, br_07_1fcc                                                  ; $1f68 : $20, $62

	ld h, l                                                  ; $1f6a : $65
	jr nz, $74                                                  ; $1f6b : $20, $74

	ld l, a                                                  ; $1f6d : $6f

br_07_1f6e:
	jr nz, br_07_1fd7                                                  ; $1f6e : $20, $67

	ld l, a                                                  ; $1f70 : $6f
	jr nz, br_07_1fd4                                                  ; $1f71 : $20, $61

	ld (hl), d                                                  ; $1f73 : $72
	ld l, a                                                  ; $1f74 : $6f

br_07_1f75:
	ld (hl), l                                                  ; $1f75 : $75
	ld l, (hl)                                                  ; $1f76 : $6e
	ld h, h                                                  ; $1f77 : $64
	jr nz, br_07_1fee                                                  ; $1f78 : $20, $74

	ld l, b                                                  ; $1f7a : $68
	ld h, l                                                  ; $1f7b : $65
	jr nz, br_07_1fe4                                                  ; $1f7c : $20, $66

	ld l, c                                                  ; $1f7e : $69
	ld h, l                                                  ; $1f7f : $65
	ld l, h                                                  ; $1f80 : $6c
	ld h, h                                                  ; $1f81 : $64
	ccf                                                  ; $1f82 : $3f
	nop                                                  ; $1f83 : $00
	nop                                                  ; $1f84 : $00

br_07_1f85:
	sub b                                                  ; $1f85 : $90
	jp (hl)                                                  ; $1f86 : $e9


	ld (bc), a                                                  ; $1f87 : $02
	djnz $4b                                                  ; $1f88 : $10, $4b
	ld h, c                                                  ; $1f8a : $61
	ld (hl), d                                                  ; $1f8b : $72
	ld h, l                                                  ; $1f8c : $65
	ld l, (hl)                                                  ; $1f8d : $6e

br_07_1f8e:
	jr nz, br_07_2000                                                  ; $1f8e : $20, $70

	ld (hl), l                                                  ; $1f90 : $75
	ld (hl), d                                                  ; $1f91 : $72
	ld h, e                                                  ; $1f92 : $63

br_07_1f93:
	ld l, b                                                  ; $1f93 : $68
	ld h, c                                                  ; $1f94 : $61
	ld (hl), e                                                  ; $1f95 : $73
	ld h, l                                                  ; $1f96 : $65
	ld (hl), e                                                  ; $1f97 : $73

br_07_1f98:
	jr nz, br_07_1f34                                                  ; $1f98 : $20, $9a

	jp (hl)                                                  ; $1f9a : $e9


	ld (bc), a                                                  ; $1f9b : $02
	ld b, (hl)                                                  ; $1f9c : $46
	jr nz, $73                                                  ; $1f9d : $20, $73

	ld (hl), h                                                  ; $1f9f : $74
	ld h, c                                                  ; $1fa0 : $61
	ld l, l                                                  ; $1fa1 : $6d
	ld (hl), b                                                  ; $1fa2 : $70
	ld (hl), e                                                  ; $1fa3 : $73

br_07_1fa4:
	jr nz, br_07_201a                                                  ; $1fa4 : $20, $74

br_07_1fa6:
	ld l, b                                                  ; $1fa6 : $68
	ld h, c                                                  ; $1fa7 : $61
	ld (hl), h                                                  ; $1fa8 : $74
	jr nz, $63                                                  ; $1fa9 : $20, $63

	ld l, a                                                  ; $1fab : $6f
	ld (hl), e                                                  ; $1fac : $73
	ld (hl), h                                                  ; $1fad : $74
	jr nz, br_07_1fd4                                                  ; $1fae : $20, $24

	jr nc, br_07_1fe0                                                  ; $1fb0 : $30, $2e

	ld ($2032), a                                                  ; $1fb2 : $32, $32, $20
	ld h, l                                                  ; $1fb5 : $65
	ld h, c                                                  ; $1fb6 : $61
	ld h, e                                                  ; $1fb7 : $63
	ld l, b                                                  ; $1fb8 : $68
	ld l, $20                                                  ; $1fb9 : $2e, $20

br_07_1fbb:
	ld c, b                                                  ; $1fbb : $48

br_07_1fbc:
	ld l, a                                                  ; $1fbc : $6f
	ld (hl), a                                                  ; $1fbd : $77
	jr nz, br_07_202d                                                  ; $1fbe : $20, $6d

	ld (hl), l                                                  ; $1fc0 : $75
	ld h, e                                                  ; $1fc1 : $63

br_07_1fc2:
	ld l, b                                                  ; $1fc2 : $68
	jr nz, br_07_2028                                                  ; $1fc3 : $20, $63

	ld l, b                                                  ; $1fc5 : $68
	ld h, c                                                  ; $1fc6 : $61
	ld l, (hl)                                                  ; $1fc7 : $6e
	ld h, a                                                  ; $1fc8 : $67
	ld h, l                                                  ; $1fc9 : $65
	jr nz, br_07_2043                                                  ; $1fca : $20, $77

br_07_1fcc:
	ld l, a                                                  ; $1fcc : $6f
	ld (hl), l                                                  ; $1fcd : $75
	ld l, h                                                  ; $1fce : $6c
	ld h, h                                                  ; $1fcf : $64

br_07_1fd0:
	jr nz, $73                                                  ; $1fd0 : $20, $73

	ld l, b                                                  ; $1fd2 : $68
	ld h, l                                                  ; $1fd3 : $65

br_07_1fd4:
	jr nz, br_07_203e                                                  ; $1fd4 : $20, $68

	ld h, c                                                  ; $1fd6 : $61

br_07_1fd7:
	halt                                                  ; $1fd7 : $76
	ld h, l                                                  ; $1fd8 : $65
	jr nz, br_07_2041                                                  ; $1fd9 : $20, $66

br_07_1fdb:
	ld (hl), d                                                  ; $1fdb : $72
	ld l, a                                                  ; $1fdc : $6f
	ld l, l                                                  ; $1fdd : $6d
	jr nz, br_07_2004                                                  ; $1fde : $20, $24

br_07_1fe0:
	ld sp, $3f30                                                  ; $1fe0 : $31, $30, $3f
	nop                                                  ; $1fe3 : $00

br_07_1fe4:
	nop                                                  ; $1fe4 : $00
	and h                                                  ; $1fe5 : $a4
	jp (hl)                                                  ; $1fe6 : $e9


	inc b                                                  ; $1fe7 : $04
	add hl, hl                                                  ; $1fe8 : $29
	ld c, c                                                  ; $1fe9 : $49
	ld h, (hl)                                                  ; $1fea : $66
	jr nz, $74                                                  ; $1feb : $20, $74

	ld l, b                                                  ; $1fed : $68

br_07_1fee:
	ld h, l                                                  ; $1fee : $65
	jr nz, br_07_2064                                                  ; $1fef : $20, $73

	ld h, e                                                  ; $1ff1 : $63
	ld l, b                                                  ; $1ff2 : $68
	ld l, a                                                  ; $1ff3 : $6f
	ld l, a                                                  ; $1ff4 : $6f

br_07_1ff5:
	ld l, h                                                  ; $1ff5 : $6c
	jr nz, br_07_2059                                                  ; $1ff6 : $20, $61

	ld (hl), h                                                  ; $1ff8 : $74
	ld (hl), h                                                  ; $1ff9 : $74
	ld h, l                                                  ; $1ffa : $65
	ld l, (hl)                                                  ; $1ffb : $6e
	ld h, h                                                  ; $1ffc : $64
	ld h, c                                                  ; $1ffd : $61
	ld l, (hl)                                                  ; $1ffe : $6e
	ld h, e                                                  ; $1fff : $63

br_07_2000:
	ld h, l                                                  ; $2000 : $65
	jr nz, br_07_2072                                                  ; $2001 : $20, $6f

	halt                                                  ; $2003 : $76

Jump_07_2004:
br_07_2004:
	ld h, l                                                  ; $2004 : $65
	ld (hl), d                                                  ; $2005 : $72
	jr nz, $35                                                  ; $2006 : $20, $35

	jr nz, br_07_206e                                                  ; $2008 : $20, $64

br_07_200a:
	ld h, c                                                  ; $200a : $61
	ld a, c                                                  ; $200b : $79
	ld (hl), e                                                  ; $200c : $73
	jr nz, br_07_2086                                                  ; $200d : $20, $77

	ld h, c                                                  ; $200f : $61
	ld (hl), e                                                  ; $2010 : $73
	jr nz, -$48                                                  ; $2011 : $20, $b8

	jp (hl)                                                  ; $2013 : $e9


	inc bc                                                  ; $2014 : $03
	ld (bc), a                                                  ; $2015 : $02
	inc l                                                  ; $2016 : $2c
	jr nz, br_07_1fe0                                                  ; $2017 : $20, $c7

	jp (hl)                                                  ; $2019 : $e9


br_07_201a:
	inc bc                                                  ; $201a : $03
	ld (bc), a                                                  ; $201b : $02
	inc l                                                  ; $201c : $2c
	jr nz, br_07_1ff5                                                  ; $201d : $20, $d6

br_07_201f:
	jp (hl)                                                  ; $201f : $e9


	inc bc                                                  ; $2020 : $03
	ld (bc), a                                                  ; $2021 : $02
	inc l                                                  ; $2022 : $2c
	jr nz, br_07_200a                                                  ; $2023 : $20, $e5

	jp (hl)                                                  ; $2025 : $e9


	inc bc                                                  ; $2026 : $03
	ld (bc), a                                                  ; $2027 : $02

br_07_2028:
	inc l                                                  ; $2028 : $2c
	jr nz, br_07_201f                                                  ; $2029 : $20, $f4

	jp (hl)                                                  ; $202b : $e9


	inc bc                                                  ; $202c : $03

br_07_202d:
	jr z, $2c                                                  ; $202d : $28, $2c

	jr nz, br_07_20a8                                                  ; $202f : $20, $77

	ld l, b                                                  ; $2031 : $68
	ld h, c                                                  ; $2032 : $61
	ld (hl), h                                                  ; $2033 : $74
	jr nz, br_07_20ad                                                  ; $2034 : $20, $77

	ld h, c                                                  ; $2036 : $61
	ld (hl), e                                                  ; $2037 : $73
	jr nz, br_07_20ae                                                  ; $2038 : $20, $74

	ld l, b                                                  ; $203a : $68
	ld h, l                                                  ; $203b : $65
	jr nz, br_07_209f                                                  ; $203c : $20, $61

br_07_203e:
	halt                                                  ; $203e : $76
	ld h, l                                                  ; $203f : $65
	ld (hl), d                                                  ; $2040 : $72

br_07_2041:
	ld h, c                                                  ; $2041 : $61
	ld h, a                                                  ; $2042 : $67

br_07_2043:
	ld h, l                                                  ; $2043 : $65
	jr nz, br_07_20aa                                                  ; $2044 : $20, $64

	ld h, c                                                  ; $2046 : $61
	ld l, c                                                  ; $2047 : $69
	ld l, h                                                  ; $2048 : $6c
	ld a, c                                                  ; $2049 : $79
	jr nz, br_07_20ad                                                  ; $204a : $20, $61

	ld (hl), h                                                  ; $204c : $74
	ld (hl), h                                                  ; $204d : $74
	ld h, l                                                  ; $204e : $65
	ld l, (hl)                                                  ; $204f : $6e
	ld h, h                                                  ; $2050 : $64
	ld h, c                                                  ; $2051 : $61
	ld l, (hl)                                                  ; $2052 : $6e
	ld h, e                                                  ; $2053 : $63
	ld h, l                                                  ; $2054 : $65
	ccf                                                  ; $2055 : $3f
	nop                                                  ; $2056 : $00
	nop                                                  ; $2057 : $00
	inc bc                                                  ; $2058 : $03

br_07_2059:
	jp pe, Jump_07_1a05                                                  ; $2059 : $ea, $05, $1a
	ld c, c                                                  ; $205c : $49
	ld h, (hl)                                                  ; $205d : $66
	jr nz, br_07_20c1                                                  ; $205e : $20, $61

	jr nz, br_07_20a9                                                  ; $2060 : $20, $47

	ld h, l                                                  ; $2062 : $65
	ld (hl), d                                                  ; $2063 : $72

br_07_2064:
	ld l, l                                                  ; $2064 : $6d
	ld h, c                                                  ; $2065 : $61
	ld l, (hl)                                                  ; $2066 : $6e
	jr nz, $6d                                                  ; $2067 : $20, $6d

	ld h, c                                                  ; $2069 : $61
	ld (hl), d                                                  ; $206a : $72
	ld l, e                                                  ; $206b : $6b
	jr nz, br_07_20d7                                                  ; $206c : $20, $69

br_07_206e:
	ld (hl), e                                                  ; $206e : $73
	jr nz, br_07_20e8                                                  ; $206f : $20, $77

	ld l, a                                                  ; $2071 : $6f

br_07_2072:
	ld (hl), d                                                  ; $2072 : $72
	ld (hl), h                                                  ; $2073 : $74
	ld l, b                                                  ; $2074 : $68
	jr nz, br_07_2093                                                  ; $2075 : $20, $1c

	jp pe, $1e05                                                  ; $2077 : $ea, $05, $1e
	jr nz, $55                                                  ; $207a : $20, $55

	ld l, $53                                                  ; $207c : $2e, $53
	ld l, $20                                                  ; $207e : $2e, $20
	ld h, h                                                  ; $2080 : $64
	ld l, a                                                  ; $2081 : $6f
	ld l, h                                                  ; $2082 : $6c
	ld l, h                                                  ; $2083 : $6c
	ld h, c                                                  ; $2084 : $61
	ld (hl), d                                                  ; $2085 : $72

br_07_2086:
	ld (hl), e                                                  ; $2086 : $73
	inc l                                                  ; $2087 : $2c
	jr nz, br_07_20f2                                                  ; $2088 : $20, $68

	ld l, a                                                  ; $208a : $6f
	ld (hl), a                                                  ; $208b : $77
	jr nz, br_07_20fb                                                  ; $208c : $20, $6d

	ld (hl), l                                                  ; $208e : $75
	ld h, e                                                  ; $208f : $63
	ld l, b                                                  ; $2090 : $68
	jr nz, br_07_210a                                                  ; $2091 : $20, $77

br_07_2093:
	ld l, a                                                  ; $2093 : $6f
	ld (hl), l                                                  ; $2094 : $75
	ld l, h                                                  ; $2095 : $6c
	ld h, h                                                  ; $2096 : $64
	jr nz, br_07_20ce                                                  ; $2097 : $20, $35

Jump_07_2099:
	jp pe, Jump_07_1002                                                  ; $2099 : $ea, $02, $10
	jr nz, br_07_210b                                                  ; $209c : $20, $6d

	ld h, c                                                  ; $209e : $61

br_07_209f:
	ld (hl), d                                                  ; $209f : $72
	ld l, e                                                  ; $20a0 : $6b
	ld (hl), e                                                  ; $20a1 : $73
	jr nz, $62                                                  ; $20a2 : $20, $62

	ld h, l                                                  ; $20a4 : $65
	jr nz, br_07_211e                                                  ; $20a5 : $20, $77

	ld l, a                                                  ; $20a7 : $6f

br_07_20a8:
	ld (hl), d                                                  ; $20a8 : $72

br_07_20a9:
	ld (hl), h                                                  ; $20a9 : $74

br_07_20aa:
	ld l, b                                                  ; $20aa : $68
	ccf                                                  ; $20ab : $3f
	nop                                                  ; $20ac : $00

br_07_20ad:
	nop                                                  ; $20ad : $00

br_07_20ae:
	ccf                                                  ; $20ae : $3f
	jp pe, Jump_07_1f06                                                  ; $20af : $ea, $06, $1f
	ld c, d                                                  ; $20b2 : $4a
	ld l, c                                                  ; $20b3 : $69
	ld l, l                                                  ; $20b4 : $6d
	ld l, l                                                  ; $20b5 : $6d
	ld a, c                                                  ; $20b6 : $79
	jr nz, br_07_211c                                                  ; $20b7 : $20, $63

	ld l, a                                                  ; $20b9 : $6f
	ld (hl), l                                                  ; $20ba : $75
	ld l, h                                                  ; $20bb : $6c
	ld h, h                                                  ; $20bc : $64
	jr nz, br_07_2133                                                  ; $20bd : $20, $74

	ld l, b                                                  ; $20bf : $68
	ld (hl), d                                                  ; $20c0 : $72

br_07_20c1:
	ld l, a                                                  ; $20c1 : $6f
	ld (hl), a                                                  ; $20c2 : $77
	jr nz, br_07_2139                                                  ; $20c3 : $20, $74

	ld l, b                                                  ; $20c5 : $68
	ld h, l                                                  ; $20c6 : $65
	jr nz, br_07_212b                                                  ; $20c7 : $20, $62

	ld h, c                                                  ; $20c9 : $61
	ld (hl), e                                                  ; $20ca : $73
	ld h, l                                                  ; $20cb : $65
	ld h, d                                                  ; $20cc : $62

br_07_20cd:
	ld h, c                                                  ; $20cd : $61

br_07_20ce:
	ld l, h                                                  ; $20ce : $6c
	ld l, h                                                  ; $20cf : $6c
	jr nz, br_07_212f                                                  ; $20d0 : $20, $5d

	jp pe, $1704                                                  ; $20d2 : $ea, $04, $17
	jr nz, $6d                                                  ; $20d5 : $20, $6d

br_07_20d7:
	ld (hl), b                                                  ; $20d7 : $70
	ld l, b                                                  ; $20d8 : $68
	ld l, $20                                                  ; $20d9 : $2e, $20
	ld c, (hl)                                                  ; $20db : $4e
	ld l, a                                                  ; $20dc : $6f
	ld (hl), a                                                  ; $20dd : $77
	jr nz, br_07_2148                                                  ; $20de : $20, $68

	ld h, l                                                  ; $20e0 : $65
	jr nz, br_07_2157                                                  ; $20e1 : $20, $74

	ld l, b                                                  ; $20e3 : $68
	ld (hl), d                                                  ; $20e4 : $72
	ld l, a                                                  ; $20e5 : $6f
	ld (hl), a                                                  ; $20e6 : $77
	ld (hl), e                                                  ; $20e7 : $73

br_07_20e8:
	jr nz, br_07_2153                                                  ; $20e8 : $20, $69

	ld (hl), h                                                  ; $20ea : $74
	jr nz, $71                                                  ; $20eb : $20, $71

	jp pe, Jump_07_1e03                                                  ; $20ed : $ea, $03, $1e
	jr nz, br_07_215f                                                  ; $20f0 : $20, $6d

br_07_20f2:
	ld (hl), b                                                  ; $20f2 : $70
	ld l, b                                                  ; $20f3 : $68
	jr nz, br_07_215c                                                  ; $20f4 : $20, $66

br_07_20f6:
	ld h, c                                                  ; $20f6 : $61
	ld (hl), e                                                  ; $20f7 : $73
	ld (hl), h                                                  ; $20f8 : $74
	ld h, l                                                  ; $20f9 : $65
	ld (hl), d                                                  ; $20fa : $72

br_07_20fb:
	ld l, $20                                                  ; $20fb : $2e, $20
	ld c, b                                                  ; $20fd : $48
	ld l, a                                                  ; $20fe : $6f
	ld (hl), a                                                  ; $20ff : $77
	jr nz, br_07_2168                                                  ; $2100 : $20, $66

	ld h, c                                                  ; $2102 : $61
	ld (hl), e                                                  ; $2103 : $73
	ld (hl), h                                                  ; $2104 : $74
	jr nz, $69                                                  ; $2105 : $20, $69

	ld (hl), e                                                  ; $2107 : $73
	jr nz, br_07_217e                                                  ; $2108 : $20, $74

br_07_210a:
	ld l, b                                                  ; $210a : $68

br_07_210b:
	ld h, c                                                  ; $210b : $61
	ld (hl), h                                                  ; $210c : $74
	ccf                                                  ; $210d : $3f
	nop                                                  ; $210e : $00
	nop                                                  ; $210f : $00
	add a, b                                                  ; $2110 : $80
	jp pe, Jump_07_2404                                                  ; $2111 : $ea, $04, $24
	ld d, h                                                  ; $2114 : $54
	ld l, b                                                  ; $2115 : $68
	ld h, l                                                  ; $2116 : $65
	jr nz, $73                                                  ; $2117 : $20, $73

	ld (hl), h                                                  ; $2119 : $74
	ld h, c                                                  ; $211a : $61
	ld (hl), h                                                  ; $211b : $74

br_07_211c:
	ld (hl), l                                                  ; $211c : $75
	ld h, l                                                  ; $211d : $65

br_07_211e:
	jr nz, br_07_2189                                                  ; $211e : $20, $69

	ld l, (hl)                                                  ; $2120 : $6e
	jr nz, br_07_2197                                                  ; $2121 : $20, $74

	ld l, b                                                  ; $2123 : $68
	ld h, l                                                  ; $2124 : $65
	jr nz, br_07_218a                                                  ; $2125 : $20, $63

	ld h, l                                                  ; $2127 : $65
	ld l, (hl)                                                  ; $2128 : $6e
	ld (hl), h                                                  ; $2129 : $74
	ld h, l                                                  ; $212a : $65

br_07_212b:
	ld (hl), d                                                  ; $212b : $72
	jr nz, $6f                                                  ; $212c : $20, $6f

	ld h, (hl)                                                  ; $212e : $66

br_07_212f:
	jr nz, br_07_21a5                                                  ; $212f : $20, $74

	ld l, a                                                  ; $2131 : $6f
	ld (hl), a                                                  ; $2132 : $77

br_07_2133:
	ld l, (hl)                                                  ; $2133 : $6e
	jr nz, $69                                                  ; $2134 : $20, $69

	ld (hl), e                                                  ; $2136 : $73
	jr nz, br_07_20cd                                                  ; $2137 : $20, $94

br_07_2139:
	jp pe, Jump_07_1104                                                  ; $2139 : $ea, $04, $11
	jr nz, br_07_21ab                                                  ; $213c : $20, $6d

	jr nz, $68                                                  ; $213e : $20, $68

	ld l, c                                                  ; $2140 : $69
	ld h, a                                                  ; $2141 : $67
	ld l, b                                                  ; $2142 : $68
	ld l, $20                                                  ; $2143 : $2e, $20
	ld c, d                                                  ; $2145 : $4a
	ld l, a                                                  ; $2146 : $6f
	ld l, b                                                  ; $2147 : $68

br_07_2148:
	ld l, (hl)                                                  ; $2148 : $6e
	jr nz, br_07_21b4                                                  ; $2149 : $20, $69

	ld (hl), e                                                  ; $214b : $73
	jr nz, br_07_20f6                                                  ; $214c : $20, $a8

	jp pe, Jump_07_3704                                                  ; $214e : $ea, $04, $37
	jr nz, br_07_21c0                                                  ; $2151 : $20, $6d

br_07_2153:
	jr nz, $74                                                  ; $2153 : $20, $74

	ld h, c                                                  ; $2155 : $61
	ld l, h                                                  ; $2156 : $6c

br_07_2157:
	ld l, h                                                  ; $2157 : $6c
	ld l, $20                                                  ; $2158 : $2e, $20
	ld c, b                                                  ; $215a : $48
	ld l, a                                                  ; $215b : $6f

br_07_215c:
	ld (hl), a                                                  ; $215c : $77
	jr nz, br_07_21cc                                                  ; $215d : $20, $6d

br_07_215f:
	ld h, c                                                  ; $215f : $61
	ld l, (hl)                                                  ; $2160 : $6e
	ld a, c                                                  ; $2161 : $79
	jr nz, br_07_21d8                                                  ; $2162 : $20, $74

	ld l, c                                                  ; $2164 : $69
	ld l, l                                                  ; $2165 : $6d
	ld h, l                                                  ; $2166 : $65
	ld (hl), e                                                  ; $2167 : $73

br_07_2168:
	jr nz, $74                                                  ; $2168 : $20, $74

	ld h, c                                                  ; $216a : $61
	ld l, h                                                  ; $216b : $6c
	ld l, h                                                  ; $216c : $6c
	ld h, l                                                  ; $216d : $65
	ld (hl), d                                                  ; $216e : $72
	jr nz, $74                                                  ; $216f : $20, $74

	ld l, b                                                  ; $2171 : $68
	ld h, c                                                  ; $2172 : $61
	ld l, (hl)                                                  ; $2173 : $6e
	jr nz, br_07_21c0                                                  ; $2174 : $20, $4a

	ld l, a                                                  ; $2176 : $6f
	ld l, b                                                  ; $2177 : $68
	ld l, (hl)                                                  ; $2178 : $6e
	jr nz, br_07_21e4                                                  ; $2179 : $20, $69

	ld (hl), e                                                  ; $217b : $73
	jr nz, br_07_21f2                                                  ; $217c : $20, $74

br_07_217e:
	ld l, b                                                  ; $217e : $68
	ld h, l                                                  ; $217f : $65
	jr nz, br_07_21f5                                                  ; $2180 : $20, $73

	ld (hl), h                                                  ; $2182 : $74
	ld h, c                                                  ; $2183 : $61
	ld (hl), h                                                  ; $2184 : $74
	ld (hl), l                                                  ; $2185 : $75
	ld h, l                                                  ; $2186 : $65
	ccf                                                  ; $2187 : $3f
	nop                                                  ; $2188 : $00

br_07_2189:
	nop                                                  ; $2189 : $00

br_07_218a:
	cp h                                                  ; $218a : $bc
	jp pe, $0c01                                                  ; $218b : $ea, $01, $0c
	ld d, b                                                  ; $218e : $50
	ld h, l                                                  ; $218f : $65
	ld (hl), h                                                  ; $2190 : $74
	ld h, l                                                  ; $2191 : $65
	ld (hl), d                                                  ; $2192 : $72
	jr nz, br_07_2205                                                  ; $2193 : $20, $70

	ld h, c                                                  ; $2195 : $61
	ld a, c                                                  ; $2196 : $79

br_07_2197:
	ld (hl), e                                                  ; $2197 : $73
	jr nz, br_07_21be                                                  ; $2198 : $20, $24

	pop bc                                                  ; $219a : $c1
	jp pe, $3103                                                  ; $219b : $ea, $03, $31
	jr nz, br_07_2206                                                  ; $219e : $20, $66

	ld l, a                                                  ; $21a0 : $6f
	ld (hl), d                                                  ; $21a1 : $72
	jr nz, br_07_2210                                                  ; $21a2 : $20, $6c

	ld l, c                                                  ; $21a4 : $69

br_07_21a5:
	ld h, (hl)                                                  ; $21a5 : $66
	ld h, l                                                  ; $21a6 : $65
	jr nz, br_07_2212                                                  ; $21a7 : $20, $69

	ld l, (hl)                                                  ; $21a9 : $6e
	ld (hl), e                                                  ; $21aa : $73

br_07_21ab:
	ld (hl), l                                                  ; $21ab : $75
	ld (hl), d                                                  ; $21ac : $72
	ld h, c                                                  ; $21ad : $61
	ld l, (hl)                                                  ; $21ae : $6e
	ld h, e                                                  ; $21af : $63
	ld h, l                                                  ; $21b0 : $65
	jr nz, br_07_2218                                                  ; $21b1 : $20, $65

	halt                                                  ; $21b3 : $76

br_07_21b4:
	ld h, l                                                  ; $21b4 : $65
	ld (hl), d                                                  ; $21b5 : $72
	ld a, c                                                  ; $21b6 : $79
	jr nz, br_07_21ef                                                  ; $21b7 : $20, $36

	jr nz, br_07_2228                                                  ; $21b9 : $20, $6d

	ld l, a                                                  ; $21bb : $6f
	ld l, (hl)                                                  ; $21bc : $6e
	ld (hl), h                                                  ; $21bd : $74

br_07_21be:
	ld l, b                                                  ; $21be : $68
	ld (hl), e                                                  ; $21bf : $73

br_07_21c0:
	ld l, $20                                                  ; $21c0 : $2e, $20
	ld c, b                                                  ; $21c2 : $48
	ld h, l                                                  ; $21c3 : $65
	jr nz, br_07_2229                                                  ; $21c4 : $20, $63

	ld h, c                                                  ; $21c6 : $61
	ld l, (hl)                                                  ; $21c7 : $6e
	jr nz, $73                                                  ; $21c8 : $20, $73

	ld h, c                                                  ; $21ca : $61
	halt                                                  ; $21cb : $76

br_07_21cc:
	ld h, l                                                  ; $21cc : $65
	jr nz, br_07_21f3                                                  ; $21cd : $20, $24

	ret nc                                                  ; $21cf : $d0

	jp pe, Jump_07_3402                                                  ; $21d0 : $ea, $02, $34
	jr nz, br_07_2237                                                  ; $21d3 : $20, $62

	ld a, c                                                  ; $21d5 : $79
	jr nz, br_07_2248                                                  ; $21d6 : $20, $70

br_07_21d8:
	ld h, c                                                  ; $21d8 : $61
	ld a, c                                                  ; $21d9 : $79
	ld l, c                                                  ; $21da : $69
	ld l, (hl)                                                  ; $21db : $6e
	ld h, a                                                  ; $21dc : $67
	jr nz, br_07_2258                                                  ; $21dd : $20, $79

	ld h, l                                                  ; $21df : $65
	ld h, c                                                  ; $21e0 : $61
	ld (hl), d                                                  ; $21e1 : $72
	ld l, h                                                  ; $21e2 : $6c
	ld a, c                                                  ; $21e3 : $79

br_07_21e4:
	ld l, $20                                                  ; $21e4 : $2e, $20
	ld d, a                                                  ; $21e6 : $57
	ld l, b                                                  ; $21e7 : $68
	ld h, c                                                  ; $21e8 : $61
	ld (hl), h                                                  ; $21e9 : $74
	jr nz, $77                                                  ; $21ea : $20, $77

	ld l, a                                                  ; $21ec : $6f
	ld (hl), l                                                  ; $21ed : $75
	ld l, h                                                  ; $21ee : $6c

br_07_21ef:
	ld h, h                                                  ; $21ef : $64
	jr nz, br_07_2254                                                  ; $21f0 : $20, $62

br_07_21f2:
	ld h, l                                                  ; $21f2 : $65

br_07_21f3:
	jr nz, br_07_225d                                                  ; $21f3 : $20, $68

br_07_21f5:
	ld l, c                                                  ; $21f5 : $69
	ld (hl), e                                                  ; $21f6 : $73
	jr nz, br_07_2272                                                  ; $21f7 : $20, $79

	ld h, l                                                  ; $21f9 : $65
	ld h, c                                                  ; $21fa : $61
	ld (hl), d                                                  ; $21fb : $72
	ld l, h                                                  ; $21fc : $6c
	ld a, c                                                  ; $21fd : $79
	jr nz, br_07_2270                                                  ; $21fe : $20, $70

	ld h, c                                                  ; $2200 : $61
	ld a, c                                                  ; $2201 : $79
	ld l, l                                                  ; $2202 : $6d
	ld h, l                                                  ; $2203 : $65
	ld l, (hl)                                                  ; $2204 : $6e

br_07_2205:
	ld (hl), h                                                  ; $2205 : $74

br_07_2206:
	ccf                                                  ; $2206 : $3f

br_07_2207:
	nop                                                  ; $2207 : $00
	nop                                                  ; $2208 : $00
	jp c, $03ea                                                  ; $2209 : $da, $ea, $03
	djnz br_07_225d                                                  ; $220c : $10, $4f
	ld l, (hl)                                                  ; $220e : $6e
	ld h, l                                                  ; $220f : $65

br_07_2210:
	jr nz, br_07_227f                                                  ; $2210 : $20, $6d

br_07_2212:
	ld l, a                                                  ; $2212 : $6f
	ld (hl), l                                                  ; $2213 : $75
	ld l, (hl)                                                  ; $2214 : $6e
	ld (hl), h                                                  ; $2215 : $74
	ld h, c                                                  ; $2216 : $61
	ld l, c                                                  ; $2217 : $69

br_07_2218:
	ld l, (hl)                                                  ; $2218 : $6e
	jr nz, br_07_2284                                                  ; $2219 : $20, $69

	ld (hl), e                                                  ; $221b : $73
	jr nz, br_07_2207                                                  ; $221c : $20, $e9

	jp pe, Jump_07_2902                                                  ; $221e : $ea, $02, $29
	dec h                                                  ; $2221 : $25
	jr nz, br_07_2285                                                  ; $2222 : $20, $61

	ld (hl), e                                                  ; $2224 : $73
	jr nz, br_07_228f                                                  ; $2225 : $20, $68

	ld l, c                                                  ; $2227 : $69

br_07_2228:
	ld h, a                                                  ; $2228 : $67

br_07_2229:
	ld l, b                                                  ; $2229 : $68
	jr nz, $61                                                  ; $222a : $20, $61

	ld (hl), e                                                  ; $222c : $73
	jr nz, br_07_22a3                                                  ; $222d : $20, $74

	ld l, b                                                  ; $222f : $68
	ld h, l                                                  ; $2230 : $65
	jr nz, $73                                                  ; $2231 : $20, $73

	ld h, l                                                  ; $2233 : $65
	ld h, e                                                  ; $2234 : $63
	ld l, a                                                  ; $2235 : $6f
	ld l, (hl)                                                  ; $2236 : $6e

br_07_2237:
	ld h, h                                                  ; $2237 : $64
	ld l, $20                                                  ; $2238 : $2e, $20
	ld c, c                                                  ; $223a : $49
	ld h, (hl)                                                  ; $223b : $66
	jr nz, br_07_22b2                                                  ; $223c : $20, $74

br_07_223e:
	ld l, b                                                  ; $223e : $68
	ld h, l                                                  ; $223f : $65
	jr nz, br_07_22a8                                                  ; $2240 : $20, $66

	ld l, c                                                  ; $2242 : $69
	ld (hl), d                                                  ; $2243 : $72
	ld (hl), e                                                  ; $2244 : $73
	ld (hl), h                                                  ; $2245 : $74
	jr nz, br_07_22b1                                                  ; $2246 : $20, $69

br_07_2248:
	ld (hl), e                                                  ; $2248 : $73
	jr nz, br_07_223e                                                  ; $2249 : $20, $f3

	jp pe, Jump_07_2004                                                  ; $224b : $ea, $04, $20
	jr nz, br_07_22bd                                                  ; $224e : $20, $6d

	ld h, l                                                  ; $2250 : $65
	ld (hl), h                                                  ; $2251 : $74
	ld h, l                                                  ; $2252 : $65
	ld (hl), d                                                  ; $2253 : $72

br_07_2254:
	ld (hl), e                                                  ; $2254 : $73
	inc l                                                  ; $2255 : $2c
	jr nz, $68                                                  ; $2256 : $20, $68

br_07_2258:
	ld l, a                                                  ; $2258 : $6f
	ld (hl), a                                                  ; $2259 : $77
	jr nz, br_07_22c4                                                  ; $225a : $20, $68

	ld l, c                                                  ; $225c : $69

br_07_225d:
	ld h, a                                                  ; $225d : $67
	ld l, b                                                  ; $225e : $68
	jr nz, br_07_22ca                                                  ; $225f : $20, $69

	ld (hl), e                                                  ; $2261 : $73
	jr nz, br_07_22d8                                                  ; $2262 : $20, $74

	ld l, b                                                  ; $2264 : $68
	ld h, l                                                  ; $2265 : $65
	jr nz, br_07_22db                                                  ; $2266 : $20, $73

	ld h, l                                                  ; $2268 : $65
	ld h, e                                                  ; $2269 : $63
	ld l, a                                                  ; $226a : $6f
	ld l, (hl)                                                  ; $226b : $6e
	ld h, h                                                  ; $226c : $64
	ccf                                                  ; $226d : $3f
	nop                                                  ; $226e : $00
	nop                                                  ; $226f : $00

br_07_2270:
	rlca                                                  ; $2270 : $07
	ex de, hl                                                  ; $2271 : $eb

br_07_2272:
	inc b                                                  ; $2272 : $04
	ld bc, $1b20                                                  ; $2273 : $01, $20, $1b
	ex de, hl                                                  ; $2276 : $eb
	ld bc, $202a                                                  ; $2277 : $01, $2a, $20
	ld h, c                                                  ; $227a : $61
	ld h, e                                                  ; $227b : $63
	ld (hl), h                                                  ; $227c : $74
	ld l, a                                                  ; $227d : $6f
	ld (hl), d                                                  ; $227e : $72

br_07_227f:
	ld (hl), e                                                  ; $227f : $73
	jr nz, br_07_22f9                                                  ; $2280 : $20, $77

	ld h, l                                                  ; $2282 : $65
	ld (hl), d                                                  ; $2283 : $72

br_07_2284:
	ld h, l                                                  ; $2284 : $65

br_07_2285:
	jr nz, br_07_22f6                                                  ; $2285 : $20, $6f

	ld l, (hl)                                                  ; $2287 : $6e
	jr nz, $74                                                  ; $2288 : $20, $74

	ld l, b                                                  ; $228a : $68
	ld h, l                                                  ; $228b : $65
	jr nz, br_07_2301                                                  ; $228c : $20, $73

	ld (hl), h                                                  ; $228e : $74

br_07_228f:
	ld h, c                                                  ; $228f : $61

br_07_2290:
	ld h, a                                                  ; $2290 : $67
	ld h, l                                                  ; $2291 : $65
	ld l, $20                                                  ; $2292 : $2e, $20
	ld c, c                                                  ; $2294 : $49
	ld h, (hl)                                                  ; $2295 : $66
	jr nz, $74                                                  ; $2296 : $20, $74

	ld l, b                                                  ; $2298 : $68
	ld h, l                                                  ; $2299 : $65
	ld a, c                                                  ; $229a : $79
	jr nz, br_07_2314                                                  ; $229b : $20, $77

	ld h, l                                                  ; $229d : $65
	ld (hl), d                                                  ; $229e : $72
	ld h, l                                                  ; $229f : $65
	jr nz, br_07_22d3                                                  ; $22a0 : $20, $31

	cpl                                                  ; $22a2 : $2f

br_07_22a3:
	jr nz, br_07_2290                                                  ; $22a3 : $20, $eb

	ld bc, $2033                                                  ; $22a5 : $01, $33, $20

br_07_22a8:
	ld l, a                                                  ; $22a8 : $6f
	ld h, (hl)                                                  ; $22a9 : $66
	jr nz, br_07_2320                                                  ; $22aa : $20, $74

	ld l, b                                                  ; $22ac : $68
	ld h, l                                                  ; $22ad : $65
	jr nz, br_07_2311                                                  ; $22ae : $20, $61

	ld h, e                                                  ; $22b0 : $63

br_07_22b1:
	ld (hl), h                                                  ; $22b1 : $74

br_07_22b2:
	ld l, a                                                  ; $22b2 : $6f
	ld (hl), d                                                  ; $22b3 : $72
	ld (hl), e                                                  ; $22b4 : $73
	inc l                                                  ; $22b5 : $2c
	jr nz, br_07_2320                                                  ; $22b6 : $20, $68

	ld l, a                                                  ; $22b8 : $6f
	ld (hl), a                                                  ; $22b9 : $77
	jr nz, br_07_2329                                                  ; $22ba : $20, $6d

	ld h, c                                                  ; $22bc : $61

br_07_22bd:
	ld l, (hl)                                                  ; $22bd : $6e
	ld a, c                                                  ; $22be : $79
	jr nz, br_07_2322                                                  ; $22bf : $20, $61

	ld h, e                                                  ; $22c1 : $63
	ld (hl), h                                                  ; $22c2 : $74
	ld l, a                                                  ; $22c3 : $6f

br_07_22c4:
	ld (hl), d                                                  ; $22c4 : $72
	ld (hl), e                                                  ; $22c5 : $73
	jr nz, br_07_233f                                                  ; $22c6 : $20, $77

	ld h, l                                                  ; $22c8 : $65
	ld (hl), d                                                  ; $22c9 : $72

br_07_22ca:
	ld h, l                                                  ; $22ca : $65
	jr nz, br_07_2341                                                  ; $22cb : $20, $74

	ld l, b                                                  ; $22cd : $68
	ld h, l                                                  ; $22ce : $65
	ld (hl), d                                                  ; $22cf : $72
	ld h, l                                                  ; $22d0 : $65
	jr nz, $74                                                  ; $22d1 : $20, $74

br_07_22d3:
	ld l, a                                                  ; $22d3 : $6f
	ld (hl), h                                                  ; $22d4 : $74
	ld h, c                                                  ; $22d5 : $61
	ld l, h                                                  ; $22d6 : $6c
	ld l, h                                                  ; $22d7 : $6c

br_07_22d8:
	ld a, c                                                  ; $22d8 : $79
	ccf                                                  ; $22d9 : $3f
	nop                                                  ; $22da : $00

br_07_22db:
	nop                                                  ; $22db : $00
	dec h                                                  ; $22dc : $25
	ex de, hl                                                  ; $22dd : $eb
	ld (bc), a                                                  ; $22de : $02
	ld e, $49                                                  ; $22df : $1e, $49
	ld h, (hl)                                                  ; $22e1 : $66
	jr nz, br_07_2345                                                  ; $22e2 : $20, $61

	jr nz, br_07_2349                                                  ; $22e4 : $20, $63

	ld a, c                                                  ; $22e6 : $79
	ld l, h                                                  ; $22e7 : $6c
	ld l, c                                                  ; $22e8 : $69
	ld l, (hl)                                                  ; $22e9 : $6e
	ld h, h                                                  ; $22ea : $64
	ld h, l                                                  ; $22eb : $65
	ld (hl), d                                                  ; $22ec : $72
	jr nz, br_07_2357                                                  ; $22ed : $20, $68

	ld h, c                                                  ; $22ef : $61
	ld (hl), e                                                  ; $22f0 : $73
	jr nz, br_07_2354                                                  ; $22f1 : $20, $61

	jr nz, br_07_2367                                                  ; $22f3 : $20, $72

	ld h, c                                                  ; $22f5 : $61

br_07_22f6:
	ld h, h                                                  ; $22f6 : $64
	ld l, c                                                  ; $22f7 : $69
	ld (hl), l                                                  ; $22f8 : $75

br_07_22f9:
	ld (hl), e                                                  ; $22f9 : $73
	jr nz, br_07_236b                                                  ; $22fa : $20, $6f

	ld h, (hl)                                                  ; $22fc : $66
	jr nz, br_07_232e                                                  ; $22fd : $20, $2f

	ex de, hl                                                  ; $22ff : $eb
	ld (bc), a                                                  ; $2300 : $02

br_07_2301:
	inc d                                                  ; $2301 : $14
	jr nz, br_07_2367                                                  ; $2302 : $20, $63

	ld l, l                                                  ; $2304 : $6d
	jr nz, br_07_2368                                                  ; $2305 : $20, $61

	ld l, (hl)                                                  ; $2307 : $6e
	ld h, h                                                  ; $2308 : $64
	jr nz, br_07_236c                                                  ; $2309 : $20, $61

	jr nz, br_07_2375                                                  ; $230b : $20, $68

	ld h, l                                                  ; $230d : $65
	ld l, c                                                  ; $230e : $69
	ld h, a                                                  ; $230f : $67
	ld l, b                                                  ; $2310 : $68

br_07_2311:
	ld (hl), h                                                  ; $2311 : $74
	jr nz, $6f                                                  ; $2312 : $20, $6f

br_07_2314:
	ld h, (hl)                                                  ; $2314 : $66
	jr nz, br_07_2350                                                  ; $2315 : $20, $39

	ex de, hl                                                  ; $2317 : $eb
	ld (bc), a                                                  ; $2318 : $02
	ld hl, $6320                                                  ; $2319 : $21, $20, $63
	ld l, l                                                  ; $231c : $6d
	inc l                                                  ; $231d : $2c
	jr nz, br_07_2397                                                  ; $231e : $20, $77

br_07_2320:
	ld l, b                                                  ; $2320 : $68
	ld h, c                                                  ; $2321 : $61

br_07_2322:
	ld (hl), h                                                  ; $2322 : $74
	jr nz, br_07_238e                                                  ; $2323 : $20, $69

	ld (hl), e                                                  ; $2325 : $73
	jr nz, br_07_2391                                                  ; $2326 : $20, $69

	ld (hl), h                                                  ; $2328 : $74

br_07_2329:
	ld (hl), e                                                  ; $2329 : $73
	jr nz, br_07_23a2                                                  ; $232a : $20, $76

	ld l, a                                                  ; $232c : $6f
	ld l, h                                                  ; $232d : $6c

br_07_232e:
	ld (hl), l                                                  ; $232e : $75
	ld l, l                                                  ; $232f : $6d
	ld h, l                                                  ; $2330 : $65
	jr nz, br_07_235b                                                  ; $2331 : $20, $28

	exx                                                  ; $2333 : $d9
	dec a                                                  ; $2334 : $3d
	inc sp                                                  ; $2335 : $33
	ld l, $31                                                  ; $2336 : $2e, $31
	inc (hl)                                                  ; $2338 : $34
	add hl, hl                                                  ; $2339 : $29
	ccf                                                  ; $233a : $3f
	nop                                                  ; $233b : $00
	nop                                                  ; $233c : $00
	ld b, e                                                  ; $233d : $43
	ex de, hl                                                  ; $233e : $eb

br_07_233f:
	rlca                                                  ; $233f : $07
	ld b, d                                                  ; $2340 : $42

br_07_2341:
	ld b, c                                                  ; $2341 : $41
	jr nz, $6d                                                  ; $2342 : $20, $6d

	ld h, c                                                  ; $2344 : $61

br_07_2345:
	ld l, (hl)                                                  ; $2345 : $6e
	jr nz, br_07_23b8                                                  ; $2346 : $20, $70

	ld (hl), d                                                  ; $2348 : $72

br_07_2349:
	ld h, l                                                  ; $2349 : $65
	ld h, h                                                  ; $234a : $64
	ld l, c                                                  ; $234b : $69
	ld h, e                                                  ; $234c : $63
	ld (hl), h                                                  ; $234d : $74
	ld h, l                                                  ; $234e : $65
	ld h, h                                                  ; $234f : $64

br_07_2350:
	jr nz, $74                                                  ; $2350 : $20, $74

	ld l, b                                                  ; $2352 : $68
	ld h, c                                                  ; $2353 : $61

br_07_2354:
	ld (hl), h                                                  ; $2354 : $74
	jr nz, $74                                                  ; $2355 : $20, $74

br_07_2357:
	ld l, b                                                  ; $2357 : $68
	ld h, l                                                  ; $2358 : $65
	jr nz, br_07_23be                                                  ; $2359 : $20, $63

br_07_235b:
	ld l, b                                                  ; $235b : $68
	ld h, c                                                  ; $235c : $61
	ld l, (hl)                                                  ; $235d : $6e
	ld h, e                                                  ; $235e : $63
	ld h, l                                                  ; $235f : $65
	jr nz, br_07_23d1                                                  ; $2360 : $20, $6f

	ld h, (hl)                                                  ; $2362 : $66
	jr nz, br_07_23d7                                                  ; $2363 : $20, $72

	ld h, c                                                  ; $2365 : $61
	ld l, c                                                  ; $2366 : $69

br_07_2367:
	ld l, (hl)                                                  ; $2367 : $6e

br_07_2368:
	jr nz, $6f                                                  ; $2368 : $20, $6f

	halt                                                  ; $236a : $76

br_07_236b:
	ld h, l                                                  ; $236b : $65

br_07_236c:
	ld (hl), d                                                  ; $236c : $72
	jr nz, br_07_23e3                                                  ; $236d : $20, $74

	ld l, b                                                  ; $236f : $68
	ld h, l                                                  ; $2370 : $65
	jr nz, $6e                                                  ; $2371 : $20, $6e

	ld h, l                                                  ; $2373 : $65
	ld a, b                                                  ; $2374 : $78

br_07_2375:
	ld (hl), h                                                  ; $2375 : $74
	jr nz, $33                                                  ; $2376 : $20, $33

	jr nc, $20                                                  ; $2378 : $30, $20

	ld h, h                                                  ; $237a : $64
	ld h, c                                                  ; $237b : $61
	ld a, c                                                  ; $237c : $79
	ld (hl), e                                                  ; $237d : $73
	jr nz, br_07_23f7                                                  ; $237e : $20, $77

	ld h, c                                                  ; $2380 : $61
	ld (hl), e                                                  ; $2381 : $73
	jr nz, br_07_23ea                                                  ; $2382 : $20, $66

	ex de, hl                                                  ; $2384 : $eb
	ld (bc), a                                                  ; $2385 : $02
	dec l                                                  ; $2386 : $2d
	jr nz, $70                                                  ; $2387 : $20, $70

	ld h, l                                                  ; $2389 : $65
	ld (hl), d                                                  ; $238a : $72
	ld h, e                                                  ; $238b : $63
	ld h, l                                                  ; $238c : $65
	ld l, (hl)                                                  ; $238d : $6e

br_07_238e:
	ld (hl), h                                                  ; $238e : $74
	ld l, $20                                                  ; $238f : $2e, $20

br_07_2391:
	ld c, b                                                  ; $2391 : $48
	ld l, a                                                  ; $2392 : $6f
	ld (hl), a                                                  ; $2393 : $77
	jr nz, $6d                                                  ; $2394 : $20, $6d

	ld h, c                                                  ; $2396 : $61

br_07_2397:
	ld l, (hl)                                                  ; $2397 : $6e
	ld a, c                                                  ; $2398 : $79
	jr nz, br_07_240d                                                  ; $2399 : $20, $72

	ld h, c                                                  ; $239b : $61
	ld l, c                                                  ; $239c : $69
	ld l, (hl)                                                  ; $239d : $6e
	ld a, c                                                  ; $239e : $79
	jr nz, br_07_2405                                                  ; $239f : $20, $64

	ld h, c                                                  ; $23a1 : $61

br_07_23a2:
	ld a, c                                                  ; $23a2 : $79
	ld (hl), e                                                  ; $23a3 : $73
	jr nz, br_07_241d                                                  ; $23a4 : $20, $77

	ld l, a                                                  ; $23a6 : $6f
	ld (hl), l                                                  ; $23a7 : $75
	ld l, h                                                  ; $23a8 : $6c
	ld h, h                                                  ; $23a9 : $64
	jr nz, br_07_2420                                                  ; $23aa : $20, $74

	ld l, b                                                  ; $23ac : $68
	ld h, l                                                  ; $23ad : $65
	ld (hl), d                                                  ; $23ae : $72
	ld h, l                                                  ; $23af : $65
	jr nz, br_07_2414                                                  ; $23b0 : $20, $62

	ld h, l                                                  ; $23b2 : $65
	ccf                                                  ; $23b3 : $3f
	nop                                                  ; $23b4 : $00
	nop                                                  ; $23b5 : $00
	ld (hl), b                                                  ; $23b6 : $70
	ex de, hl                                                  ; $23b7 : $eb

br_07_23b8:
	inc b                                                  ; $23b8 : $04
	ld ($6857), hl                                                  ; $23b9 : $22, $57, $68
	ld h, c                                                  ; $23bc : $61
	ld (hl), h                                                  ; $23bd : $74

br_07_23be:
	jr nz, $69                                                  ; $23be : $20, $69

	ld (hl), e                                                  ; $23c0 : $73
	jr nz, br_07_2437                                                  ; $23c1 : $20, $74

	ld l, b                                                  ; $23c3 : $68
	ld h, l                                                  ; $23c4 : $65
	jr nz, br_07_2428                                                  ; $23c5 : $20, $61

	ld (hl), d                                                  ; $23c7 : $72
	ld h, l                                                  ; $23c8 : $65
	ld h, c                                                  ; $23c9 : $61
	jr nz, br_07_243b                                                  ; $23ca : $20, $6f

	ld h, (hl)                                                  ; $23cc : $66
	jr nz, $61                                                  ; $23cd : $20, $61

	jr nz, br_07_2443                                                  ; $23cf : $20, $72

br_07_23d1:
	ld (hl), l                                                  ; $23d1 : $75
	ld h, a                                                  ; $23d2 : $67
	jr nz, br_07_2449                                                  ; $23d3 : $20, $74

	ld l, b                                                  ; $23d5 : $68
	ld h, c                                                  ; $23d6 : $61

br_07_23d7:
	ld (hl), h                                                  ; $23d7 : $74
	jr nz, br_07_2443                                                  ; $23d8 : $20, $69

	ld (hl), e                                                  ; $23da : $73
	jr nz, -$7c                                                  ; $23db : $20, $84

	ex de, hl                                                  ; $23dd : $eb
	inc bc                                                  ; $23de : $03
	inc d                                                  ; $23df : $14
	jr nz, $63                                                  ; $23e0 : $20, $63

	ld l, l                                                  ; $23e2 : $6d

br_07_23e3:
	jr nz, $6f                                                  ; $23e3 : $20, $6f

	ld l, (hl)                                                  ; $23e5 : $6e
	jr nz, br_07_2457                                                  ; $23e6 : $20, $6f

	ld l, (hl)                                                  ; $23e8 : $6e
	ld h, l                                                  ; $23e9 : $65

br_07_23ea:
	jr nz, br_07_245f                                                  ; $23ea : $20, $73

	ld l, c                                                  ; $23ec : $69
	ld h, h                                                  ; $23ed : $64
	ld h, l                                                  ; $23ee : $65
	jr nz, br_07_2452                                                  ; $23ef : $20, $61

	ld l, (hl)                                                  ; $23f1 : $6e
	ld h, h                                                  ; $23f2 : $64
	jr nz, -$6d                                                  ; $23f3 : $20, $93

	ex de, hl                                                  ; $23f5 : $eb
	inc bc                                                  ; $23f6 : $03

br_07_23f7:
	ld de, $6320                                                  ; $23f7 : $11, $20, $63
	ld l, l                                                  ; $23fa : $6d
	jr nz, br_07_246c                                                  ; $23fb : $20, $6f

	ld l, (hl)                                                  ; $23fd : $6e
	jr nz, br_07_2474                                                  ; $23fe : $20, $74

	ld l, b                                                  ; $2400 : $68
	ld h, l                                                  ; $2401 : $65
	jr nz, br_07_2473                                                  ; $2402 : $20, $6f

Jump_07_2404:
	ld (hl), h                                                  ; $2404 : $74

br_07_2405:
	ld l, b                                                  ; $2405 : $68
	ld h, l                                                  ; $2406 : $65
	ld (hl), d                                                  ; $2407 : $72
	ccf                                                  ; $2408 : $3f
	nop                                                  ; $2409 : $00
	nop                                                  ; $240a : $00
	and d                                                  ; $240b : $a2
	ex de, hl                                                  ; $240c : $eb

br_07_240d:
	dec b                                                  ; $240d : $05
	inc hl                                                  ; $240e : $23
	ld c, c                                                  ; $240f : $49

br_07_2410:
	ld h, (hl)                                                  ; $2410 : $66
	jr nz, br_07_2487                                                  ; $2411 : $20, $74

	ld l, b                                                  ; $2413 : $68

br_07_2414:
	ld h, l                                                  ; $2414 : $65
	jr nz, br_07_2487                                                  ; $2415 : $20, $70

	ld l, h                                                  ; $2417 : $6c
	ld h, c                                                  ; $2418 : $61
	ld l, (hl)                                                  ; $2419 : $6e
	ld h, l                                                  ; $241a : $65
	daa                                                  ; $241b : $27
	ld (hl), e                                                  ; $241c : $73

br_07_241d:
	jr nz, br_07_2485                                                  ; $241d : $20, $66

	ld (hl), l                                                  ; $241f : $75

br_07_2420:
	ld h, l                                                  ; $2420 : $65
	ld l, h                                                  ; $2421 : $6c
	jr nz, br_07_248b                                                  ; $2422 : $20, $67

	ld h, c                                                  ; $2424 : $61
	ld (hl), l                                                  ; $2425 : $75
	ld h, a                                                  ; $2426 : $67
	ld h, l                                                  ; $2427 : $65

br_07_2428:
	jr nz, br_07_249d                                                  ; $2428 : $20, $73

	ld l, b                                                  ; $242a : $68
	ld l, a                                                  ; $242b : $6f
	ld (hl), a                                                  ; $242c : $77
	ld h, l                                                  ; $242d : $65
	ld h, h                                                  ; $242e : $64
	jr nz, br_07_2462                                                  ; $242f : $20, $31

	cpl                                                  ; $2431 : $2f
	cp e                                                  ; $2432 : $bb
	ex de, hl                                                  ; $2433 : $eb
	ld bc, $2019                                                  ; $2434 : $01, $19, $20

br_07_2437:
	ld h, (hl)                                                  ; $2437 : $66
	ld (hl), l                                                  ; $2438 : $75
	ld l, h                                                  ; $2439 : $6c
	ld l, h                                                  ; $243a : $6c

br_07_243b:
	inc l                                                  ; $243b : $2c
	jr nz, br_07_249f                                                  ; $243c : $20, $61

	ld l, (hl)                                                  ; $243e : $6e
	ld h, h                                                  ; $243f : $64
	jr nz, br_07_24b6                                                  ; $2440 : $20, $74

	ld l, b                                                  ; $2442 : $68

br_07_2443:
	ld h, l                                                  ; $2443 : $65
	jr nz, br_07_24ba                                                  ; $2444 : $20, $74

	ld h, c                                                  ; $2446 : $61
	ld l, (hl)                                                  ; $2447 : $6e
	ld l, e                                                  ; $2448 : $6b

br_07_2449:
	jr nz, $68                                                  ; $2449 : $20, $68

	ld h, l                                                  ; $244b : $65
	ld l, h                                                  ; $244c : $6c
	ld h, h                                                  ; $244d : $64
	jr nz, br_07_2410                                                  ; $244e : $20, $c0

	ex de, hl                                                  ; $2450 : $eb
	inc b                                                  ; $2451 : $04

br_07_2452:
	inc h                                                  ; $2452 : $24
	jr nz, br_07_24c1                                                  ; $2453 : $20, $6c

	ld l, c                                                  ; $2455 : $69
	ld (hl), h                                                  ; $2456 : $74

br_07_2457:
	ld h, l                                                  ; $2457 : $65
	ld (hl), d                                                  ; $2458 : $72
	ld (hl), e                                                  ; $2459 : $73
	inc l                                                  ; $245a : $2c
	jr nz, br_07_24c5                                                  ; $245b : $20, $68

	ld l, a                                                  ; $245d : $6f
	ld (hl), a                                                  ; $245e : $77

br_07_245f:
	jr nz, br_07_24ce                                                  ; $245f : $20, $6d

	ld (hl), l                                                  ; $2461 : $75

br_07_2462:
	ld h, e                                                  ; $2462 : $63
	ld l, b                                                  ; $2463 : $68
	jr nz, br_07_24cd                                                  ; $2464 : $20, $67

	ld h, c                                                  ; $2466 : $61
	ld (hl), e                                                  ; $2467 : $73
	jr nz, br_07_24e1                                                  ; $2468 : $20, $77

	ld h, c                                                  ; $246a : $61
	ld (hl), e                                                  ; $246b : $73

br_07_246c:
	jr nz, br_07_24e0                                                  ; $246c : $20, $72

	ld h, l                                                  ; $246e : $65
	ld l, l                                                  ; $246f : $6d
	ld h, c                                                  ; $2470 : $61
	ld l, c                                                  ; $2471 : $69
	ld l, (hl)                                                  ; $2472 : $6e

br_07_2473:
	ld l, c                                                  ; $2473 : $69

br_07_2474:
	ld l, (hl)                                                  ; $2474 : $6e
	ld h, a                                                  ; $2475 : $67
	ccf                                                  ; $2476 : $3f
	nop                                                  ; $2477 : $00
	nop                                                  ; $2478 : $00
	call nc, Call_07_04eb                                                  ; $2479 : $d4, $eb, $04
	inc hl                                                  ; $247c : $23
	ld c, c                                                  ; $247d : $49
	ld h, (hl)                                                  ; $247e : $66
	jr nz, br_07_24f5                                                  ; $247f : $20, $74

	ld l, b                                                  ; $2481 : $68
	ld h, l                                                  ; $2482 : $65
	jr nz, br_07_24f8                                                  ; $2483 : $20, $73

br_07_2485:
	ld h, c                                                  ; $2485 : $61
	ld l, h                                                  ; $2486 : $6c

br_07_2487:
	ld h, l                                                  ; $2487 : $65
	ld (hl), e                                                  ; $2488 : $73

br_07_2489:
	jr nz, br_07_24ff                                                  ; $2489 : $20, $74

br_07_248b:
	ld h, c                                                  ; $248b : $61
	ld a, b                                                  ; $248c : $78
	jr nz, br_07_24f8                                                  ; $248d : $20, $69

	ld l, (hl)                                                  ; $248f : $6e
	jr nz, br_07_250b                                                  ; $2490 : $20, $79

	ld l, a                                                  ; $2492 : $6f
	ld (hl), l                                                  ; $2493 : $75
	ld (hl), d                                                  ; $2494 : $72
	jr nz, br_07_250a                                                  ; $2495 : $20, $73

	ld (hl), h                                                  ; $2497 : $74
	ld h, c                                                  ; $2498 : $61
	ld (hl), h                                                  ; $2499 : $74
	ld h, l                                                  ; $249a : $65
	jr nz, br_07_2514                                                  ; $249b : $20, $77

br_07_249d:
	ld h, c                                                  ; $249d : $61
	ld (hl), e                                                  ; $249e : $73

br_07_249f:
	jr nz, br_07_2489                                                  ; $249f : $20, $e8

	ex de, hl                                                  ; $24a1 : $eb
	ld bc, $2032                                                  ; $24a2 : $01, $32, $20
	ld (hl), b                                                  ; $24a5 : $70
	ld h, l                                                  ; $24a6 : $65
	ld (hl), d                                                  ; $24a7 : $72
	ld h, e                                                  ; $24a8 : $63
	ld h, l                                                  ; $24a9 : $65
	ld l, (hl)                                                  ; $24aa : $6e
	ld (hl), h                                                  ; $24ab : $74
	inc l                                                  ; $24ac : $2c
	jr nz, br_07_2526                                                  ; $24ad : $20, $77

	ld l, b                                                  ; $24af : $68
	ld h, c                                                  ; $24b0 : $61
	ld (hl), h                                                  ; $24b1 : $74
	jr nz, $77                                                  ; $24b2 : $20, $77

	ld l, a                                                  ; $24b4 : $6f
	ld (hl), l                                                  ; $24b5 : $75

br_07_24b6:
	ld l, h                                                  ; $24b6 : $6c
	ld h, h                                                  ; $24b7 : $64
	jr nz, br_07_251c                                                  ; $24b8 : $20, $62

br_07_24ba:
	ld h, l                                                  ; $24ba : $65
	jr nz, $74                                                  ; $24bb : $20, $74

	ld l, b                                                  ; $24bd : $68
	ld h, l                                                  ; $24be : $65
	jr nz, $74                                                  ; $24bf : $20, $74

br_07_24c1:
	ld h, c                                                  ; $24c1 : $61
	ld a, b                                                  ; $24c2 : $78
	jr nz, br_07_2534                                                  ; $24c3 : $20, $6f

br_07_24c5:
	ld l, (hl)                                                  ; $24c5 : $6e
	jr nz, $61                                                  ; $24c6 : $20, $61

	jr nz, br_07_253a                                                  ; $24c8 : $20, $70

	ld (hl), l                                                  ; $24ca : $75
	ld (hl), d                                                  ; $24cb : $72

br_07_24cc:
	ld h, e                                                  ; $24cc : $63

br_07_24cd:
	ld l, b                                                  ; $24cd : $68

br_07_24ce:
	ld h, c                                                  ; $24ce : $61
	ld (hl), e                                                  ; $24cf : $73
	ld h, l                                                  ; $24d0 : $65
	jr nz, br_07_2542                                                  ; $24d1 : $20, $6f

	ld h, (hl)                                                  ; $24d3 : $66
	jr nz, br_07_24fa                                                  ; $24d4 : $20, $24

	.db $ed                                                  ; $24d6 : $ed
	ex de, hl                                                  ; $24d7 : $eb
	inc bc                                                  ; $24d8 : $03
	ld bc, $003f                                                  ; $24d9 : $01, $3f, $00
	nop                                                  ; $24dc : $00
	call m, Call_07_04eb                                                  ; $24dd : $fc, $eb, $04

br_07_24e0:
	dec d                                                  ; $24e0 : $15

br_07_24e1:
	rst $20                                                  ; $24e1 : $e7
	ld d, c                                                  ; $24e2 : $51
	ld c, $3f                                                  ; $24e3 : $0e, $3f
	djnz br_07_24cc                                                  ; $24e5 : $10, $e5
	add a, c                                                  ; $24e7 : $81
	ld e, $22                                                  ; $24e8 : $1e, $22
	ld de, $41e5                                                  ; $24ea : $11, $e5, $41
	ld l, $15                                                  ; $24ed : $2e, $15
	ld (de), a                                                  ; $24ef : $12
	and $41                                                  ; $24f0 : $e6, $41
	ld a, $85                                                  ; $24f2 : $3e, $85
	inc d                                                  ; $24f4 : $14

br_07_24f5:
	jp po, $4ef1                                                  ; $24f5 : $e2, $f1, $4e

br_07_24f8:
	sub d                                                  ; $24f8 : $92
	ld c, (hl)                                                  ; $24f9 : $4e

br_07_24fa:
	dec h                                                  ; $24fa : $25
	sbc a, (hl)                                                  ; $24fb : $9e
	ld a, a                                                  ; $24fc : $7f
	sbc a, (hl)                                                  ; $24fd : $9e
	ld b, d                                                  ; $24fe : $42

br_07_24ff:
	adc a, (hl)                                                  ; $24ff : $8e
	ld a, b                                                  ; $2500 : $78
	adc a, (hl)                                                  ; $2501 : $8e
	ld b, (hl)                                                  ; $2502 : $46
	ld a, (hl)                                                  ; $2503 : $7e
	add a, l                                                  ; $2504 : $85
	ld a, (hl)                                                  ; $2505 : $7e
	ld (hl), $6e                                                  ; $2506 : $36, $6e
	dec d                                                  ; $2508 : $15
	ld e, (hl)                                                  ; $2509 : $5e

br_07_250a:
	adc a, a                                                  ; $250a : $8f

br_07_250b:
	ld e, (hl)                                                  ; $250b : $5e
	ex af, af'                                                  ; $250c : $08
	inc hl                                                  ; $250d : $23
	ld b, l                                                  ; $250e : $45
	inc hl                                                  ; $250f : $23
	ld b, l                                                  ; $2510 : $45
	inc (hl)                                                  ; $2511 : $34
	ld c, $88                                                  ; $2512 : $0e, $88

br_07_2514:
	ld e, $44                                                  ; $2514 : $1e, $44
	ld l, $08                                                  ; $2516 : $2e, $08
	ld l, $75                                                  ; $2518 : $2e, $75
	ld e, $28                                                  ; $251a : $1e, $28

br_07_251c:
	ld e, $98                                                  ; $251c : $1e, $98
	ld l, $88                                                  ; $251e : $2e, $88
	ld a, $9f                                                  ; $2520 : $3e, $9f
	ld l, $55                                                  ; $2522 : $2e, $55
	ld a, $52                                                  ; $2524 : $3e, $52

br_07_2526:
	ld c, $44                                                  ; $2526 : $0e, $44
	ld c, $48                                                  ; $2528 : $0e, $48
	ld c, $52                                                  ; $252a : $0e, $52
	ld c, $55                                                  ; $252c : $0e, $55
	ld c, $64                                                  ; $252e : $0e, $64
	ld c, $66                                                  ; $2530 : $0e, $66
	ld c, $72                                                  ; $2532 : $0e, $72

br_07_2534:
	ld c, $78                                                  ; $2534 : $0e, $78
	ld c, $85                                                  ; $2536 : $0e, $85
	ld c, $88                                                  ; $2538 : $0e, $88

br_07_253a:
	cpl                                                  ; $253a : $2f
	ld e, a                                                  ; $253b : $5f
	adc a, a                                                  ; $253c : $8f
	ld (de), a                                                  ; $253d : $12
	dec d                                                  ; $253e : $15
	jr br_07_2561                                                  ; $253f : $18, $20

	inc h                                                  ; $2541 : $24

br_07_2542:
	dec h                                                  ; $2542 : $25
	jr nc, br_07_2594                                                  ; $2543 : $30, $4f

	djnz $16                                                  ; $2545 : $10, $16
	inc h                                                  ; $2547 : $24
	jr nc, br_07_2580                                                  ; $2548 : $30, $36

	ld b, b                                                  ; $254a : $40
	ld c, b                                                  ; $254b : $48
	ld d, b                                                  ; $254c : $50
	ld h, b                                                  ; $254d : $60
	cpl                                                  ; $254e : $2f
	ccf                                                  ; $254f : $3f
	ld c, a                                                  ; $2550 : $4f
	ld e, a                                                  ; $2551 : $5f
	ld l, a                                                  ; $2552 : $6f
	ld a, a                                                  ; $2553 : $7f
	adc a, a                                                  ; $2554 : $8f
	sbc a, a                                                  ; $2555 : $9f
	djnz br_07_256a                                                  ; $2556 : $10, $12
	djnz br_07_256f                                                  ; $2558 : $10, $15
	jr nz, $25                                                  ; $255a : $20, $25

	jr nc, br_07_2593                                                  ; $255c : $30, $35

	ld b, b                                                  ; $255e : $40
	ld b, l                                                  ; $255f : $45
	ld d, b                                                  ; $2560 : $50

br_07_2561:
	ld h, b                                                  ; $2561 : $60
	inc hl                                                  ; $2562 : $23
	ld b, d                                                  ; $2563 : $42
	inc (hl)                                                  ; $2564 : $34
	inc hl                                                  ; $2565 : $23
	ld b, d                                                  ; $2566 : $42
	ld e, a                                                  ; $2567 : $5f
	ld l, a                                                  ; $2568 : $6f
	ld a, a                                                  ; $2569 : $7f

br_07_256a:
	adc a, a                                                  ; $256a : $8f
	sbc a, a                                                  ; $256b : $9f
	djnz br_07_257f                                                  ; $256c : $10, $11
	ld (de), a                                                  ; $256e : $12

br_07_256f:
	inc de                                                  ; $256f : $13
	dec d                                                  ; $2570 : $15
	djnz br_07_258b                                                  ; $2571 : $10, $18
	jr z, br_07_258b                                                  ; $2573 : $28, $16

	daa                                                  ; $2575 : $27
	ld b, b                                                  ; $2576 : $40
	ld ($5236), hl                                                  ; $2577 : $22, $36, $52
	jr nc, br_07_25e3                                                  ; $257a : $30, $67

	adc a, c                                                  ; $257c : $89
	ld h, a                                                  ; $257d : $67
	adc a, c                                                  ; $257e : $89

br_07_257f:
	ld l, c                                                  ; $257f : $69

br_07_2580:
	ld l, $52                                                  ; $2580 : $2e, $52
	ld a, $15                                                  ; $2582 : $3e, $15
	ld a, $68                                                  ; $2584 : $3e, $68
	ld c, (hl)                                                  ; $2586 : $4e
	add a, (hl)                                                  ; $2587 : $86
	ld a, $06                                                  ; $2588 : $3e, $06
	ld c, (hl)                                                  ; $258a : $4e

br_07_258b:
	ld b, $4e                                                  ; $258b : $06, $4e
	sub (hl)                                                  ; $258d : $96
	ld e, (hl)                                                  ; $258e : $5e
	sub h                                                  ; $258f : $94
	ld c, (hl)                                                  ; $2590 : $4e
	ex af, af'                                                  ; $2591 : $08
	ld l, (hl)                                                  ; $2592 : $6e

br_07_2593:
	ld c, b                                                  ; $2593 : $48

br_07_2594:
	ld c, $42                                                  ; $2594 : $0e, $42
	ld c, $45                                                  ; $2596 : $0e, $45
	ld c, $46                                                  ; $2598 : $0e, $46
	ld c, $54                                                  ; $259a : $0e, $54
	ld c, $51                                                  ; $259c : $0e, $51
	ld c, $58                                                  ; $259e : $0e, $58
	ld c, $62                                                  ; $25a0 : $0e, $62
	ld c, $66                                                  ; $25a2 : $0e, $66
	ld c, $68                                                  ; $25a4 : $0e, $68
	ld c, $72                                                  ; $25a6 : $0e, $72
	ld l, $24                                                  ; $25a8 : $2e, $24
	ld a, $46                                                  ; $25aa : $3e, $46
	ld c, (hl)                                                  ; $25ac : $4e
	ld (de), a                                                  ; $25ad : $12
	ld e, (hl)                                                  ; $25ae : $5e
	ld (hl), l                                                  ; $25af : $75
	ld l, (hl)                                                  ; $25b0 : $6e
	add a, h                                                  ; $25b1 : $84
	ld a, (hl)                                                  ; $25b2 : $7e
	cpl                                                  ; $25b3 : $2f
	ld a, $36                                                  ; $25b4 : $3e, $36
	ld e, (hl)                                                  ; $25b6 : $5e
	ld d, c                                                  ; $25b7 : $51
	ld a, (hl)                                                  ; $25b8 : $7e
	adc a, b                                                  ; $25b9 : $88
	ld l, $67                                                  ; $25ba : $2e, $67
	ld c, (hl)                                                  ; $25bc : $4e
	ld (hl), l                                                  ; $25bd : $75
	ld l, (hl)                                                  ; $25be : $6e
	ld h, d                                                  ; $25bf : $62
	ld l, (hl)                                                  ; $25c0 : $6e
	inc bc                                                  ; $25c1 : $03
	ld a, $42                                                  ; $25c2 : $3e, $42
	ld c, (hl)                                                  ; $25c4 : $4e
	jr $6e                                                  ; $25c5 : $18, $6e

	inc (hl)                                                  ; $25c7 : $34
	ld a, (hl)                                                  ; $25c8 : $7e
	ld b, $2e                                                  ; $25c9 : $06, $2e
	inc (hl)                                                  ; $25cb : $34
	ld e, (hl)                                                  ; $25cc : $5e
	ex af, af'                                                  ; $25cd : $08
	ld e, (hl)                                                  ; $25ce : $5e
	sbc a, a                                                  ; $25cf : $9f
	ld a, (hl)                                                  ; $25d0 : $7e
	ld (hl), d                                                  ; $25d1 : $72
	ld l, $22                                                  ; $25d2 : $2e, $22
	ld a, $93                                                  ; $25d4 : $3e, $93
	ld c, (hl)                                                  ; $25d6 : $4e
	ld c, b                                                  ; $25d7 : $48
	ld e, (hl)                                                  ; $25d8 : $5e
	ld a, a                                                  ; $25d9 : $7f
	ld l, $86                                                  ; $25da : $2e, $86
	ld a, $78                                                  ; $25dc : $3e, $78
	ld a, (hl)                                                  ; $25de : $7e
	ld b, d                                                  ; $25df : $42
	ld l, (hl)                                                  ; $25e0 : $6e
	inc sp                                                  ; $25e1 : $33
	ld l, (hl)                                                  ; $25e2 : $6e

br_07_25e3:
	ld h, $14                                                  ; $25e3 : $26, $14
	rst $20                                                  ; $25e5 : $e7
	ld de, $3f2e                                                  ; $25e6 : $11, $2e, $3f
	inc d                                                  ; $25e9 : $14
	ret po                                                  ; $25ea : $e0

	add a, c                                                  ; $25eb : $81
	ld a, $65                                                  ; $25ec : $3e, $65
	ld d, $e7                                                  ; $25ee : $16, $e7
	ld hl, $4f6e                                                  ; $25f0 : $21, $6e, $4f
	inc d                                                  ; $25f3 : $14
	jp po, $5ef1                                                  ; $25f4 : $e2, $f1, $5e
	daa                                                  ; $25f7 : $27
	add hl, de                                                  ; $25f8 : $19
	jp po, $4e91                                                  ; $25f9 : $e2, $91, $4e
	add a, e                                                  ; $25fc : $83
	ld h, b                                                  ; $25fd : $60
	ld h, e                                                  ; $25fe : $63
	ld h, (hl)                                                  ; $25ff : $66
	ld l, b                                                  ; $2600 : $68
	ld (hl), d                                                  ; $2601 : $72
	ld (hl), l                                                  ; $2602 : $75
	ld (hl), a                                                  ; $2603 : $77
	ld a, b                                                  ; $2604 : $78
	add a, b                                                  ; $2605 : $80
	add a, d                                                  ; $2606 : $82
	jr br_07_261b                                                  ; $2607 : $18, $12

	ld d, $10                                                  ; $2609 : $16, $10
	inc d                                                  ; $260b : $14
	ld de, $1317                                                  ; $260c : $11, $17, $13
	add hl, de                                                  ; $260f : $19
	dec d                                                  ; $2610 : $15
	ld b, d                                                  ; $2611 : $42
	ld d, c                                                  ; $2612 : $51
	ld d, b                                                  ; $2613 : $50
	ld e, b                                                  ; $2614 : $58
	ld e, b                                                  ; $2615 : $58
	ld h, h                                                  ; $2616 : $64
	ld h, b                                                  ; $2617 : $60
	ld h, l                                                  ; $2618 : $65
	ld h, c                                                  ; $2619 : $61
	ld h, a                                                  ; $261a : $67

br_07_261b:
	ld (de), a                                                  ; $261b : $12
	ld (de), a                                                  ; $261c : $12
	ld (de), a                                                  ; $261d : $12
	ld (de), a                                                  ; $261e : $12
	ld (de), a                                                  ; $261f : $12
	ld c, $4f                                                  ; $2620 : $0e, $4f
	ld c, $48                                                  ; $2622 : $0e, $48
	ld c, $52                                                  ; $2624 : $0e, $52
	ld c, $54                                                  ; $2626 : $0e, $54
	ld c, $56                                                  ; $2628 : $0e, $56
	ld c, $63                                                  ; $262a : $0e, $63
	ld c, $68                                                  ; $262c : $0e, $68
	ld c, $75                                                  ; $262e : $0e, $75
	ld c, $78                                                  ; $2630 : $0e, $78
	ld c, $82                                                  ; $2632 : $0e, $82
	ld e, $4f                                                  ; $2634 : $1e, $4f
	ld l, $48                                                  ; $2636 : $2e, $48
	ld e, $52                                                  ; $2638 : $1e, $52
	ld l, $54                                                  ; $263a : $2e, $54
	ld e, $56                                                  ; $263c : $1e, $56
	ld l, $63                                                  ; $263e : $2e, $63
	ld e, $68                                                  ; $2640 : $1e, $68
	ld l, $75                                                  ; $2642 : $2e, $75
	ld e, $78                                                  ; $2644 : $1e, $78
	ld l, $82                                                  ; $2646 : $2e, $82
	cpl                                                  ; $2648 : $2f
	ld c, a                                                  ; $2649 : $4f
	ld e, a                                                  ; $264a : $5f
	ld l, a                                                  ; $264b : $6f
	adc a, a                                                  ; $264c : $8f
	sbc a, a                                                  ; $264d : $9f
	djnz br_07_2662                                                  ; $264e : $10, $12
	dec d                                                  ; $2650 : $15
	ld d, $12                                                  ; $2651 : $16, $12
	ld (bc), a                                                  ; $2653 : $02
	ld b, b                                                  ; $2654 : $40
	jr nc, br_07_265a                                                  ; $2655 : $30, $03

	ld h, b                                                  ; $2657 : $60
	ld c, b                                                  ; $2658 : $48
	dec b                                                  ; $2659 : $05

br_07_265a:
	ld b, b                                                  ; $265a : $40
	ld h, b                                                  ; $265b : $60
	rlca                                                  ; $265c : $07
	jr nz, -$70                                                  ; $265d : $20, $90

	add hl, bc                                                  ; $265f : $09
	ld h, b                                                  ; $2660 : $60
	inc (hl)                                                  ; $2661 : $34

br_07_2662:
	ld (hl), $40                                                  ; $2662 : $36, $40
	ld b, e                                                  ; $2664 : $43
	ld b, l                                                  ; $2665 : $45
	ld c, b                                                  ; $2666 : $48
	ld d, b                                                  ; $2667 : $50
	ld d, d                                                  ; $2668 : $52
	ld d, l                                                  ; $2669 : $55
	ld d, a                                                  ; $266a : $57
	add hl, de                                                  ; $266b : $19
	ld c, c                                                  ; $266c : $49
	add hl, de                                                  ; $266d : $19
	ld b, a                                                  ; $266e : $47
	add hl, de                                                  ; $266f : $19
	ld b, e                                                  ; $2670 : $43
	add hl, de                                                  ; $2671 : $19
	ld b, b                                                  ; $2672 : $40
	add hl, de                                                  ; $2673 : $19
	jr c, br_07_268f                                                  ; $2674 : $38, $19

	dec (hl)                                                  ; $2676 : $35
	add hl, de                                                  ; $2677 : $19
	inc sp                                                  ; $2678 : $33
	add hl, de                                                  ; $2679 : $19
	ld sp, $2819                                                  ; $267a : $31, $19, $28
	add hl, de                                                  ; $267d : $19
	ld h, $8f                                                  ; $267e : $26, $8f
	ld d, $24                                                  ; $2680 : $16, $24
	ld ($4840), a                                                  ; $2682 : $32, $40, $48
	ld d, (hl)                                                  ; $2685 : $56
	ld h, h                                                  ; $2686 : $64
	ld (hl), d                                                  ; $2687 : $72
	ld d, b                                                  ; $2688 : $50
	ld (de), a                                                  ; $2689 : $12
	inc (hl)                                                  ; $268a : $34
	ld d, (hl)                                                  ; $268b : $56
	ld a, b                                                  ; $268c : $78
	sub a                                                  ; $268d : $97
	ld d, (hl)                                                  ; $268e : $56

br_07_268f:
	ld a, b                                                  ; $268f : $78
	sub l                                                  ; $2690 : $95
	ld h, a                                                  ; $2691 : $67
	adc a, c                                                  ; $2692 : $89
	ld c, $5f                                                  ; $2693 : $0e, $5f
	ld c, $72                                                  ; $2695 : $0e, $72
	ld c, $98                                                  ; $2697 : $0e, $98
	ld c, $88                                                  ; $2699 : $0e, $88
	ld e, $17                                                  ; $269b : $1e, $17
	ld c, $75                                                  ; $269d : $0e, $75
	ld c, $78                                                  ; $269f : $0e, $78
	ld c, $77                                                  ; $26a1 : $0e, $77
	ld e, $12                                                  ; $26a3 : $1e, $12
	ld e, $08                                                  ; $26a5 : $1e, $08
	ld c, $1f                                                  ; $26a7 : $0e, $1f
	ld c, $12                                                  ; $26a9 : $0e, $12
	ld c, $14                                                  ; $26ab : $0e, $14
	ld c, $11                                                  ; $26ad : $0e, $11
	ld c, $13                                                  ; $26af : $0e, $13
	ld c, $15                                                  ; $26b1 : $0e, $15
	ld c, $13                                                  ; $26b3 : $0e, $13
	ld c, $11                                                  ; $26b5 : $0e, $11
	ld c, $14                                                  ; $26b7 : $0e, $14
	ld c, $12                                                  ; $26b9 : $0e, $12
	djnz br_07_26ce                                                  ; $26bb : $10, $11
	ld (de), a                                                  ; $26bd : $12
	inc de                                                  ; $26be : $13
	inc d                                                  ; $26bf : $14
	dec d                                                  ; $26c0 : $15
	ld d, $17                                                  ; $26c1 : $16, $17
	jr br_07_26de                                                  ; $26c3 : $18, $19

	inc hl                                                  ; $26c5 : $23
	ld hl, $2830                                                  ; $26c6 : $21, $30, $28
	jr nz, br_07_26ef                                                  ; $26c9 : $20, $24

	ld ($2926), hl                                                  ; $26cb : $22, $26, $29

br_07_26ce:
	dec h                                                  ; $26ce : $25
	inc hl                                                  ; $26cf : $23
	ld (bc), a                                                  ; $26d0 : $02
	ld sp, $0336                                                  ; $26d1 : $31, $36, $03
	ld h, h                                                  ; $26d4 : $64
	jr z, br_07_26da                                                  ; $26d5 : $28, $03

	ld h, b                                                  ; $26d7 : $60
	dec (hl)                                                  ; $26d8 : $35
	inc h                                                  ; $26d9 : $24

br_07_26da:
	ld b, d                                                  ; $26da : $42
	ld d, d                                                  ; $26db : $52
	inc h                                                  ; $26dc : $24
	ld (hl), l                                                  ; $26dd : $75

br_07_26de:
	adc a, c                                                  ; $26de : $89
	ld a, b                                                  ; $26df : $78
	sub a                                                  ; $26e0 : $97
	adc a, c                                                  ; $26e1 : $89
	ld a, b                                                  ; $26e2 : $78
	ld c, $16                                                  ; $26e3 : $0e, $16
	ld c, $54                                                  ; $26e5 : $0e, $54
	ld c, $5f                                                  ; $26e7 : $0e, $5f
	ld c, $32                                                  ; $26e9 : $0e, $32
	ld c, $27                                                  ; $26eb : $0e, $27
	ld c, $3f                                                  ; $26ed : $0e, $3f

br_07_26ef:
	ld c, $56                                                  ; $26ef : $0e, $56
	ld c, $63                                                  ; $26f1 : $0e, $63
	ld c, $62                                                  ; $26f3 : $0e, $62
	ld c, $24                                                  ; $26f5 : $0e, $24
	adc a, (hl)                                                  ; $26f7 : $8e
	ld d, $9e                                                  ; $26f8 : $16, $9e
	ld d, h                                                  ; $26fa : $54
	ld a, (hl)                                                  ; $26fb : $7e
	ld e, a                                                  ; $26fc : $5f
	adc a, (hl)                                                  ; $26fd : $8e
	ld ($279e), a                                                  ; $26fe : $32, $9e, $27
	ld a, (hl)                                                  ; $2701 : $7e
	ccf                                                  ; $2702 : $3f
	adc a, (hl)                                                  ; $2703 : $8e
	ld d, (hl)                                                  ; $2704 : $56
	sbc a, (hl)                                                  ; $2705 : $9e
	ld h, e                                                  ; $2706 : $63
	ld a, (hl)                                                  ; $2707 : $7e
	ld h, d                                                  ; $2708 : $62
	adc a, (hl)                                                  ; $2709 : $8e
	inc h                                                  ; $270a : $24
	inc (hl)                                                  ; $270b : $34
	ld d, (hl)                                                  ; $270c : $56
	ld a, b                                                  ; $270d : $78
	sub e                                                  ; $270e : $93
	ld b, l                                                  ; $270f : $45
	jr nz, br_07_2733                                                  ; $2710 : $20, $21

	ld ($2423), hl                                                  ; $2712 : $22, $23, $24
	dec h                                                  ; $2715 : $25
	ld h, $28                                                  ; $2716 : $26, $28
	add hl, hl                                                  ; $2718 : $29
	daa                                                  ; $2719 : $27
	ld c, (hl)                                                  ; $271a : $4e
	ld c, a                                                  ; $271b : $4f
	ld c, (hl)                                                  ; $271c : $4e
	ld d, $3e                                                  ; $271d : $16, $3e
	sbc a, a                                                  ; $271f : $9f
	ld a, $62                                                  ; $2720 : $3e, $62
	ld a, $32                                                  ; $2722 : $3e, $32
	ccf                                                  ; $2724 : $3f
	rst $38                                                  ; $2725 : $ff
	ld l, $66                                                  ; $2726 : $2e, $66
	ld c, (hl)                                                  ; $2728 : $4e
	ld d, $3e                                                  ; $2729 : $16, $3e
	add a, h                                                  ; $272b : $84
	ld a, $65                                                  ; $272c : $3e, $65
	ld a, (hl)                                                  ; $272e : $7e
	ld ($e3f8), hl                                                  ; $272f : $22, $f8, $e3
	ld l, a                                                  ; $2732 : $6f

br_07_2733:
	sbc a, (hl)                                                  ; $2733 : $9e
	ld (de), a                                                  ; $2734 : $12
	pop af                                                  ; $2735 : $f1
	ld c, $05                                                  ; $2736 : $0e, $05
	ld de, $81e6                                                  ; $2738 : $11, $e6, $81
	ld l, $3f                                                  ; $273b : $2e, $3f
	ld a, (hl)                                                  ; $273d : $7e
	halt                                                  ; $273e : $76
	ret m                                                  ; $273f : $f8

	pop hl                                                  ; $2740 : $e1
	ld c, a                                                  ; $2741 : $4f
	sbc a, (hl)                                                  ; $2742 : $9e

br_07_2743:
	sub d                                                  ; $2743 : $92
	pop af                                                  ; $2744 : $f1
	ld c, $56                                                  ; $2745 : $0e, $56
	ld a, (hl)                                                  ; $2747 : $7e
	ld (hl), $f8                                                  ; $2748 : $36, $f8
	rst $20                                                  ; $274a : $e7
	adc a, a                                                  ; $274b : $8f
	sbc a, (hl)                                                  ; $274c : $9e
	add hl, sp                                                  ; $274d : $39
	pop af                                                  ; $274e : $f1
	ld c, $37                                                  ; $274f : $0e, $37
	ld (de), a                                                  ; $2751 : $12
	pop hl                                                  ; $2752 : $e1
	ld b, c                                                  ; $2753 : $41
	ld l, $55                                                  ; $2754 : $2e, $55
	ld a, (hl)                                                  ; $2756 : $7e
	sbc a, c                                                  ; $2757 : $99
	ret m                                                  ; $2758 : $f8

	and $2f                                                  ; $2759 : $e6, $2f
	djnz br_07_2743                                                  ; $275b : $10, $e6
	ld de, $081e                                                  ; $275d : $11, $1e, $08
	ld c, $14                                                  ; $2760 : $0e, $14
	ld c, $42                                                  ; $2762 : $0e, $42
	ld c, $27                                                  ; $2764 : $0e, $27
	ld c, $32                                                  ; $2766 : $0e, $32
	ld c, $46                                                  ; $2768 : $0e, $46
	ld c, $25                                                  ; $276a : $0e, $25
	ld c, $23                                                  ; $276c : $0e, $23

br_07_276e:
	ld c, $48                                                  ; $276e : $0e, $48
	ld c, $69                                                  ; $2770 : $0e, $69
	ld c, $52                                                  ; $2772 : $0e, $52
	jr c, br_07_27b9                                                  ; $2774 : $38, $43

	ld d, h                                                  ; $2776 : $54
	ld h, l                                                  ; $2777 : $65
	halt                                                  ; $2778 : $76
	add hl, de                                                  ; $2779 : $19
	halt                                                  ; $277a : $76
	add hl, de                                                  ; $277b : $19
	ld (hl), a                                                  ; $277c : $77
	add hl, de                                                  ; $277d : $19
	ld a, b                                                  ; $277e : $78
	add hl, de                                                  ; $277f : $19
	ld a, c                                                  ; $2780 : $79
	add hl, de                                                  ; $2781 : $19
	add a, b                                                  ; $2782 : $80
	add hl, de                                                  ; $2783 : $19
	add a, c                                                  ; $2784 : $81
	add hl, de                                                  ; $2785 : $19
	add a, d                                                  ; $2786 : $82
	add hl, de                                                  ; $2787 : $19
	add a, e                                                  ; $2788 : $83
	add hl, de                                                  ; $2789 : $19
	add a, h                                                  ; $278a : $84
	add hl, de                                                  ; $278b : $19
	add a, l                                                  ; $278c : $85
	add hl, de                                                  ; $278d : $19
	ld (hl), e                                                  ; $278e : $73
	add hl, de                                                  ; $278f : $19
	ld l, c                                                  ; $2790 : $69
	add hl, de                                                  ; $2791 : $19
	ld (hl), h                                                  ; $2792 : $74
	add hl, de                                                  ; $2793 : $19
	halt                                                  ; $2794 : $76
	add hl, de                                                  ; $2795 : $19
	ld (hl), l                                                  ; $2796 : $75
	add hl, de                                                  ; $2797 : $19
	ld (hl), a                                                  ; $2798 : $77
	add hl, de                                                  ; $2799 : $19
	halt                                                  ; $279a : $76
	add hl, de                                                  ; $279b : $19
	ld a, b                                                  ; $279c : $78
	add hl, de                                                  ; $279d : $19
	ld (hl), a                                                  ; $279e : $77
	add hl, de                                                  ; $279f : $19
	ld a, c                                                  ; $27a0 : $79
	inc (hl)                                                  ; $27a1 : $34
	ld d, (hl)                                                  ; $27a2 : $56
	inc (hl)                                                  ; $27a3 : $34
	ld d, h                                                  ; $27a4 : $54
	dec (hl)                                                  ; $27a5 : $35
	ld c, (hl)                                                  ; $27a6 : $4e
	ex af, af'                                                  ; $27a7 : $08
	ld e, (hl)                                                  ; $27a8 : $5e
	ld l, b                                                  ; $27a9 : $68
	adc a, (hl)                                                  ; $27aa : $8e
	ld l, a                                                  ; $27ab : $6f
	ld l, (hl)                                                  ; $27ac : $6e
	sbc a, a                                                  ; $27ad : $9f
	ld c, (hl)                                                  ; $27ae : $4e
	ld l, b                                                  ; $27af : $68
	ld a, (hl)                                                  ; $27b0 : $7e
	sub d                                                  ; $27b1 : $92
	ld l, (hl)                                                  ; $27b2 : $6e
	ld c, a                                                  ; $27b3 : $4f
	ld a, (hl)                                                  ; $27b4 : $7e
	ld (hl), $5e                                                  ; $27b5 : $36, $5e
	rlca                                                  ; $27b7 : $07
	ld e, (hl)                                                  ; $27b8 : $5e

br_07_27b9:
	ld l, a                                                  ; $27b9 : $6f
	ld e, $36                                                  ; $27ba : $1e, $36
	ld e, $42                                                  ; $27bc : $1e, $42
	ld e, $72                                                  ; $27be : $1e, $72
	ld e, $15                                                  ; $27c0 : $1e, $15
	ld e, $56                                                  ; $27c2 : $1e, $56
	ld e, $98                                                  ; $27c4 : $1e, $98
	ld e, $28                                                  ; $27c6 : $1e, $28
	ld e, $84                                                  ; $27c8 : $1e, $84
	ld e, $69                                                  ; $27ca : $1e, $69
	ld e, $12                                                  ; $27cc : $1e, $12
	daa                                                  ; $27ce : $27
	inc b                                                  ; $27cf : $04
	ld (bc), a                                                  ; $27d0 : $02
	add a, e                                                  ; $27d1 : $83
	sub d                                                  ; $27d2 : $92
	add hl, hl                                                  ; $27d3 : $29
	ld (hl), h                                                  ; $27d4 : $74
	ld b, e                                                  ; $27d5 : $43
	djnz br_07_276e                                                  ; $27d6 : $10, $96
	ld ($8344), a                                                  ; $27d8 : $32, $44, $83
	jr c, br_07_27dd                                                  ; $27db : $38, $00

br_07_27dd:
	dec (hl)                                                  ; $27dd : $35
	dec d                                                  ; $27de : $15
	inc hl                                                  ; $27df : $23
	ld h, l                                                  ; $27e0 : $65
	inc b                                                  ; $27e1 : $04
	scf                                                  ; $27e2 : $37
	add a, l                                                  ; $27e3 : $85
	ld h, e                                                  ; $27e4 : $63
	adc a, b                                                  ; $27e5 : $88
	sub (hl)                                                  ; $27e6 : $96
	ld d, d                                                  ; $27e7 : $52
	dec b                                                  ; $27e8 : $05
	ld b, (hl)                                                  ; $27e9 : $46
	ld d, a                                                  ; $27ea : $57
	dec h                                                  ; $27eb : $25
	sbc a, b                                                  ; $27ec : $98
	ld h, d                                                  ; $27ed : $62
	ld b, (hl)                                                  ; $27ee : $46
	ld d, b                                                  ; $27ef : $50
	ld h, a                                                  ; $27f0 : $67
	ld h, a                                                  ; $27f1 : $67
	ld (bc), a                                                  ; $27f2 : $02
	ld (hl), d                                                  ; $27f3 : $72
	add a, a                                                  ; $27f4 : $87
	ld c, b                                                  ; $27f5 : $48
	ld a, b                                                  ; $27f6 : $78
	rrca                                                  ; $27f7 : $0f
	ld (de), a                                                  ; $27f8 : $12
	ld b, b                                                  ; $27f9 : $40
	ld h, h                                                  ; $27fa : $64
	rrca                                                  ; $27fb : $0f
	ld (de), a                                                  ; $27fc : $12
	ld d, h                                                  ; $27fd : $54

br_07_27fe:
	sub l                                                  ; $27fe : $95
	cpl                                                  ; $27ff : $2f
	ld (hl), a                                                  ; $2800 : $77
	rrca                                                  ; $2801 : $0f
	ld (de), a                                                  ; $2802 : $12
	inc h                                                  ; $2803 : $24
	ld de, $9110                                                  ; $2804 : $11, $10, $91
	cpl                                                  ; $2807 : $2f
	ld (de), a                                                  ; $2808 : $12
	add a, b                                                  ; $2809 : $80
	inc de                                                  ; $280a : $13
	jr nz, br_07_281d                                                  ; $280b : $20, $10

	add hl, de                                                  ; $280d : $19
	inc d                                                  ; $280e : $14
	ld de, $1517                                                  ; $280f : $11, $17, $15
	ld (de), a                                                  ; $2812 : $12
	ld d, $60                                                  ; $2813 : $16, $60
	ld h, d                                                  ; $2815 : $62
	ld h, h                                                  ; $2816 : $64
	ld h, (hl)                                                  ; $2817 : $66
	ld l, b                                                  ; $2818 : $68
	ld (hl), b                                                  ; $2819 : $70
	ld (hl), d                                                  ; $281a : $72
	ld (hl), h                                                  ; $281b : $74
	halt                                                  ; $281c : $76

br_07_281d:
	add a, b                                                  ; $281d : $80
	ld a, ($a453)                                                  ; $281e : $3a, $53, $a4
	ld a, (de)                                                  ; $2821 : $1a
	dec h                                                  ; $2822 : $25
	xor b                                                  ; $2823 : $a8
	ld a, (de)                                                  ; $2824 : $1a
	ld d, c                                                  ; $2825 : $51
	and h                                                  ; $2826 : $a4
	ld hl, ($a554)                                                  ; $2827 : $2a, $54, $a5
	ld a, (de)                                                  ; $282a : $1a
	add a, e                                                  ; $282b : $83
	xor b                                                  ; $282c : $a8
	ld h, b                                                  ; $282d : $60
	rst $38                                                  ; $282e : $ff

br_07_282f:
	ld (hl), l                                                  ; $282f : $75
	rst $38                                                  ; $2830 : $ff
	ld d, b                                                  ; $2831 : $50
	rst $38                                                  ; $2832 : $ff
	ld h, d                                                  ; $2833 : $62
	push hl                                                  ; $2834 : $e5
	jr nz, -$01                                                  ; $2835 : $20, $ff

	dec h                                                  ; $2837 : $25
	rst $38                                                  ; $2838 : $ff
	ld b, b                                                  ; $2839 : $40
	rst $38                                                  ; $283a : $ff
	add a, b                                                  ; $283b : $80
	rst $38                                                  ; $283c : $ff
	ld (de), a                                                  ; $283d : $12
	push hl                                                  ; $283e : $e5
	scf                                                  ; $283f : $37
	push hl                                                  ; $2840 : $e5
	djnz br_07_2892                                                  ; $2841 : $10, $4f
	ld l, a                                                  ; $2843 : $6f
	adc a, a                                                  ; $2844 : $8f
	djnz br_07_2896                                                  ; $2845 : $10, $4f
	ld l, a                                                  ; $2847 : $6f
	adc a, a                                                  ; $2848 : $8f
	djnz br_07_28ba                                                  ; $2849 : $10, $6f
	ld ($4341), a                                                  ; $284b : $32, $41, $43
	ld (de), a                                                  ; $284e : $12
	inc hl                                                  ; $284f : $23
	ld d, d                                                  ; $2850 : $52
	inc (hl)                                                  ; $2851 : $34
	ld d, d                                                  ; $2852 : $52
	inc (hl)                                                  ; $2853 : $34
	ld d, e                                                  ; $2854 : $53
	dec d                                                  ; $2855 : $15
	ld c, a                                                  ; $2856 : $4f
	ld (de), a                                                  ; $2857 : $12
	ld c, a                                                  ; $2858 : $4f
	jr nz, br_07_28ca                                                  ; $2859 : $20, $6f

	ccf                                                  ; $285b : $3f
	adc a, a                                                  ; $285c : $8f
	djnz br_07_27fe                                                  ; $285d : $10, $9f
	inc hl                                                  ; $285f : $23
	ld b, d                                                  ; $2860 : $42
	inc (hl)                                                  ; $2861 : $34
	inc hl                                                  ; $2862 : $23
	ld b, d                                                  ; $2863 : $42
	ld l, $62                                                  ; $2864 : $2e, $62
	ld l, $76                                                  ; $2866 : $2e, $76
	ld l, $83                                                  ; $2868 : $2e, $83
	ld l, $99                                                  ; $286a : $2e, $99
	ld a, $1f                                                  ; $286c : $3e, $1f
	ld l, $65                                                  ; $286e : $2e, $65
	ld l, $75                                                  ; $2870 : $2e, $75
	ld l, $92                                                  ; $2872 : $2e, $92
	ld a, $06                                                  ; $2874 : $3e, $06
	ld l, $88                                                  ; $2876 : $2e, $88
	ld c, $24                                                  ; $2878 : $0e, $24
	ld a, $28                                                  ; $287a : $3e, $28
	ld l, (hl)                                                  ; $287c : $6e
	ld ($980e), a                                                  ; $287d : $32, $0e, $98
	ld c, (hl)                                                  ; $2880 : $4e
	ccf                                                  ; $2881 : $3f
	ld e, (hl)                                                  ; $2882 : $5e
	ld l, a                                                  ; $2883 : $6f
	ld c, $5f                                                  ; $2884 : $0e, $5f
	ld a, $76                                                  ; $2886 : $3e, $76
	ld a, (hl)                                                  ; $2888 : $7e
	inc h                                                  ; $2889 : $24
	ld c, $76                                                  ; $288a : $0e, $76
	djnz br_07_289f                                                  ; $288c : $10, $11
	ld (de), a                                                  ; $288e : $12
	inc de                                                  ; $288f : $13
	inc d                                                  ; $2890 : $14
	dec d                                                  ; $2891 : $15

br_07_2892:
	ld d, $17                                                  ; $2892 : $16, $17
	jr br_07_28af                                                  ; $2894 : $18, $19

br_07_2896:
	jr nc, br_07_28b9                                                  ; $2896 : $30, $21

	dec h                                                  ; $2898 : $25
	jr z, br_07_28bb                                                  ; $2899 : $28, $20

	inc h                                                  ; $289b : $24
	ld ($2627), hl                                                  ; $289c : $22, $27, $26

br_07_289f:
	inc hl                                                  ; $289f : $23
	sub b                                                  ; $28a0 : $90
	nop                                                  ; $28a1 : $00
	or $93                                                  ; $28a2 : $f6, $93
	rrca                                                  ; $28a4 : $0f
	sub b                                                  ; $28a5 : $90
	nop                                                  ; $28a6 : $00
	pop af                                                  ; $28a7 : $f1
	add hl, bc                                                  ; $28a8 : $09
	jr nz, br_07_282f                                                  ; $28a9 : $20, $84

	nop                                                  ; $28ab : $00
	pop af                                                  ; $28ac : $f1
	ex af, af'                                                  ; $28ad : $08
	nop                                                  ; $28ae : $00

br_07_28af:
	djnz br_07_2907                                                  ; $28af : $10, $56
	ld bc, $7037                                                  ; $28b1 : $01, $37, $70
	inc d                                                  ; $28b4 : $14
	inc b                                                  ; $28b5 : $04
	ld bc, $1031                                                  ; $28b6 : $01, $31, $10

br_07_28b9:
	inc hl                                                  ; $28b9 : $23

br_07_28ba:
	ld b, l                                                  ; $28ba : $45

br_07_28bb:
	inc hl                                                  ; $28bb : $23
	ld b, l                                                  ; $28bc : $45
	inc hl                                                  ; $28bd : $23
	adc a, a                                                  ; $28be : $8f
	sbc a, a                                                  ; $28bf : $9f
	djnz $11                                                  ; $28c0 : $10, $11
	ld (de), a                                                  ; $28c2 : $12
	adc a, a                                                  ; $28c3 : $8f
	sbc a, a                                                  ; $28c4 : $9f
	ld (de), a                                                  ; $28c5 : $12
	djnz $11                                                  ; $28c6 : $10, $11
	ld d, $27                                                  ; $28c8 : $16, $27

br_07_28ca:
	ld b, b                                                  ; $28ca : $40
	ld d, l                                                  ; $28cb : $55
	inc h                                                  ; $28cc : $24
	inc h                                                  ; $28cd : $24
	ld (hl), $60                                                  ; $28ce : $36, $60
	jr nz, $33                                                  ; $28d0 : $20, $33

	ld e, $21                                                  ; $28d2 : $1e, $21
	call po, $511e                                                  ; $28d4 : $e4, $1e, $51
	ret pe                                                  ; $28d7 : $e8

	ld l, $22                                                  ; $28d8 : $2e, $22
	call po, $622e                                                  ; $28da : $e4, $2e, $62
	jp (hl)                                                  ; $28dd : $e9


	ld a, $22                                                  ; $28de : $3e, $22
	rst $20                                                  ; $28e0 : $e7
	ld e, $8f                                                  ; $28e1 : $1e, $8f
	ld l, $1f                                                  ; $28e3 : $2e, $1f
	ld l, $25                                                  ; $28e5 : $2e, $25
	ld l, $7f                                                  ; $28e7 : $2e, $7f
	ld a, $3f                                                  ; $28e9 : $3e, $3f
	ld a, $6f                                                  ; $28eb : $3e, $6f
	ld a, $9f                                                  ; $28ed : $3e, $9f
	ld c, (hl)                                                  ; $28ef : $4e
	dec (hl)                                                  ; $28f0 : $35
	ld c, (hl)                                                  ; $28f1 : $4e
	adc a, a                                                  ; $28f2 : $8f
	ld c, (hl)                                                  ; $28f3 : $4e
	dec b                                                  ; $28f4 : $05
	djnz br_07_2908                                                  ; $28f5 : $10, $11
	ld (de), a                                                  ; $28f7 : $12
	inc de                                                  ; $28f8 : $13
	inc d                                                  ; $28f9 : $14
	dec d                                                  ; $28fa : $15
	ld d, $17                                                  ; $28fb : $16, $17
	jr $19                                                  ; $28fd : $18, $19

	ld d, $20                                                  ; $28ff : $16, $20
	add hl, de                                                  ; $2901 : $19

Jump_07_2902:
	ld (de), a                                                  ; $2902 : $12
	dec d                                                  ; $2903 : $15
	jr br_07_2917                                                  ; $2904 : $18, $11

	inc d                                                  ; $2906 : $14

br_07_2907:
	rla                                                  ; $2907 : $17

br_07_2908:
	inc de                                                  ; $2908 : $13
	jr br_07_291f                                                  ; $2909 : $18, $14

	dec d                                                  ; $290b : $15
	ld (de), a                                                  ; $290c : $12
	jr nz, br_07_2920                                                  ; $290d : $20, $11

	rla                                                  ; $290f : $17
	add hl, de                                                  ; $2910 : $19
	inc de                                                  ; $2911 : $13
	ld d, $16                                                  ; $2912 : $16, $16
	dec d                                                  ; $2914 : $15
	inc d                                                  ; $2915 : $14
	inc hl                                                  ; $2916 : $23

br_07_2917:
	ld de, $1616                                                  ; $2917 : $11, $16, $16
	djnz $12                                                  ; $291a : $10, $12
	ld (de), a                                                  ; $291c : $12
	inc d                                                  ; $291d : $14
	ld c, c                                                  ; $291e : $49

br_07_291f:
	rst $38                                                  ; $291f : $ff

br_07_2920:
	ld de, $e896                                                  ; $2920 : $11, $96, $e8
	dec d                                                  ; $2923 : $15
	ld (hl), $e4                                                  ; $2924 : $36, $e4
	ld (de), a                                                  ; $2926 : $12
	add hl, de                                                  ; $2927 : $19
	jp po, $5514                                                  ; $2928 : $e2, $14, $55
	rst $38                                                  ; $292b : $ff
	inc de                                                  ; $292c : $13
	ld h, $ff                                                  ; $292d : $26, $ff
	ld d, $52                                                  ; $292f : $16, $52
	call po, $4015                                                  ; $2931 : $e4, $15, $40
	rst $38                                                  ; $2934 : $ff
	jr br_07_294c                                                  ; $2935 : $18, $15

	call po, Call_07_0519                                                  ; $2937 : $e4, $19, $05
	rst $38                                                  ; $293a : $ff
	ld l, $12                                                  ; $293b : $2e, $12
	jp po, Jump_07_322e                                                  ; $293d : $e2, $2e, $32
	call po, $522e                                                  ; $2940 : $e4, $2e, $52
	and $2e                                                  ; $2943 : $e6, $2e
	ld (hl), d                                                  ; $2945 : $72
	ret pe                                                  ; $2946 : $e8

	ld l, $93                                                  ; $2947 : $2e, $93
	ret po                                                  ; $2949 : $e0

	ld l, c                                                  ; $294a : $69
	dec b                                                  ; $294b : $05

br_07_294c:
	ld b, h                                                  ; $294c : $44
	ld h, (hl)                                                  ; $294d : $66
	add a, l                                                  ; $294e : $85
	ex af, af'                                                  ; $294f : $08
	ld e, b                                                  ; $2950 : $58
	dec h                                                  ; $2951 : $25
	djnz br_07_29b5                                                  ; $2952 : $10, $61
	dec h                                                  ; $2954 : $25
	ld d, b                                                  ; $2955 : $50
	ld h, d                                                  ; $2956 : $62
	ld h, (hl)                                                  ; $2957 : $66
	dec (hl)                                                  ; $2958 : $35
	djnz $11                                                  ; $2959 : $10, $11
	ld (de), a                                                  ; $295b : $12
	inc de                                                  ; $295c : $13
	inc d                                                  ; $295d : $14
	dec d                                                  ; $295e : $15
	ld d, $17                                                  ; $295f : $16, $17
	jr br_07_297c                                                  ; $2961 : $18, $19

br_07_2963:
	ld sp, $f3e4                                                  ; $2963 : $31, $e4, $f3
	ld c, (hl)                                                  ; $2966 : $4e
	ld d, h                                                  ; $2967 : $54
	scf                                                  ; $2968 : $37
	and $84                                                  ; $2969 : $e6, $84
	ld c, $82                                                  ; $296b : $0e, $82
	ld b, e                                                  ; $296d : $43
	jp (hl)                                                  ; $296e : $e9


	ld h, h                                                  ; $296f : $64
	ld a, (hl)                                                  ; $2970 : $7e
	rra                                                  ; $2971 : $1f
	ld d, b                                                  ; $2972 : $50
	jp po, Jump_07_3e45                                                  ; $2973 : $e2, $45, $3e
	jr c, br_07_29ce                                                  ; $2976 : $38, $56

	push hl                                                  ; $2978 : $e5
	dec h                                                  ; $2979 : $25
	sbc a, (hl)                                                  ; $297a : $9e
	ld h, (hl)                                                  ; $297b : $66

br_07_297c:
	jr nz, br_07_299f                                                  ; $297c : $20, $21

	ld ($2423), hl                                                  ; $297e : $22, $23, $24
	dec h                                                  ; $2981 : $25
	ld h, $27                                                  ; $2982 : $26, $27
	jr z, br_07_29af                                                  ; $2984 : $28, $29

	djnz br_07_2999                                                  ; $2986 : $10, $11
	ld (de), a                                                  ; $2988 : $12
	inc de                                                  ; $2989 : $13
	dec d                                                  ; $298a : $15
	rla                                                  ; $298b : $17
	jr br_07_29a7                                                  ; $298c : $18, $19

	ld hl, $6017                                                  ; $298e : $21, $17, $60
	ld h, h                                                  ; $2991 : $64
	ld l, b                                                  ; $2992 : $68
	ld (hl), d                                                  ; $2993 : $72
	ld a, b                                                  ; $2994 : $78
	add a, h                                                  ; $2995 : $84
	adc a, b                                                  ; $2996 : $88
	sub d                                                  ; $2997 : $92
	sbc a, b                                                  ; $2998 : $98

br_07_2999:
	sub d                                                  ; $2999 : $92
	djnz br_07_29ad                                                  ; $299a : $10, $11
	ld (de), a                                                  ; $299c : $12
	inc de                                                  ; $299d : $13
	inc d                                                  ; $299e : $14

br_07_299f:
	dec d                                                  ; $299f : $15
	ld d, $17                                                  ; $29a0 : $16, $17
	jr br_07_29bd                                                  ; $29a2 : $18, $19

	ld a, (hl)                                                  ; $29a4 : $7e
	adc a, a                                                  ; $29a5 : $8f
	ld a, (hl)                                                  ; $29a6 : $7e

br_07_29a7:
	ld e, b                                                  ; $29a7 : $58
	ld a, (hl)                                                  ; $29a8 : $7e
	ld (hl), $7e                                                  ; $29a9 : $36, $7e
	inc d                                                  ; $29ab : $14
	ld l, (hl)                                                  ; $29ac : $6e

br_07_29ad:
	sub d                                                  ; $29ad : $92
	ld l, (hl)                                                  ; $29ae : $6e

br_07_29af:
	ld a, a                                                  ; $29af : $7f
	ld l, (hl)                                                  ; $29b0 : $6e
	ld c, b                                                  ; $29b1 : $48
	ld l, (hl)                                                  ; $29b2 : $6e
	ld h, $6e                                                  ; $29b3 : $26, $6e

br_07_29b5:
	inc b                                                  ; $29b5 : $04
	ld e, (hl)                                                  ; $29b6 : $5e
	add a, d                                                  ; $29b7 : $82
	jr nz, br_07_29bc                                                  ; $29b8 : $20, $02

	jr nz, $21                                                  ; $29ba : $20, $21

br_07_29bc:
	ld d, d                                                  ; $29bc : $52

br_07_29bd:
	inc d                                                  ; $29bd : $14
	inc hl                                                  ; $29be : $23
	ld (bc), a                                                  ; $29bf : $02
	ld ($0221), a                                                  ; $29c0 : $32, $21, $02
	ex af, af'                                                  ; $29c3 : $08
	inc hl                                                  ; $29c4 : $23
	add a, d                                                  ; $29c5 : $82
	ld b, b                                                  ; $29c6 : $40
	ld hl, $1722                                                  ; $29c7 : $21, $22, $17
	inc hl                                                  ; $29ca : $23
	ld ($2100), a                                                  ; $29cb : $32, $00, $21

br_07_29ce:
	add a, d                                                  ; $29ce : $82
	ld h, $21                                                  ; $29cf : $26, $21
	ld ($2124), hl                                                  ; $29d1 : $22, $24, $21
	add a, d                                                  ; $29d4 : $82
	ld sp, $0224                                                  ; $29d5 : $31, $24, $02
	ld sp, $5223                                                  ; $29d8 : $31, $23, $52
	ld (de), a                                                  ; $29db : $12
	ld hl, $3212                                                  ; $29dc : $21, $12, $32
	jr nz, br_07_2963                                                  ; $29df : $20, $82

	inc d                                                  ; $29e1 : $14
	ld ($2832), hl                                                  ; $29e2 : $22, $32, $28
	ld ($0262), hl                                                  ; $29e5 : $22, $62, $02
	ld ($2662), hl                                                  ; $29e8 : $22, $62, $26
	ld ($3632), hl                                                  ; $29eb : $22, $32, $36
	ld ($2202), hl                                                  ; $29ee : $22, $02, $22
	ld hl, $3462                                                  ; $29f1 : $21, $62, $34
	inc hl                                                  ; $29f4 : $23
	ld ($2136), hl                                                  ; $29f5 : $22, $36, $21
	ld (bc), a                                                  ; $29f8 : $02
	dec d                                                  ; $29f9 : $15
	inc h                                                  ; $29fa : $24
	ld (bc), a                                                  ; $29fb : $02
	ld b, d                                                  ; $29fc : $42
	ld hl, $1082                                                  ; $29fd : $21, $82, $10
	inc hl                                                  ; $2a00 : $23
	ld (bc), a                                                  ; $2a01 : $02
	inc (hl)                                                  ; $2a02 : $34
	ld ($f22f), hl                                                  ; $2a03 : $22, $2f, $f2
	ld hl, $22e2                                                  ; $2a06 : $21, $e2, $22
	ld a, $82                                                  ; $2a09 : $3e, $82
	inc de                                                  ; $2a0b : $13
	call po, $4e22                                                  ; $2a0c : $e4, $22, $4e
	ld b, d                                                  ; $2a0f : $42
	inc sp                                                  ; $2a10 : $33
	and $21                                                  ; $2a11 : $e6, $21

br_07_2a13:
	ld a, $62                                                  ; $2a13 : $3e, $62
	dec d                                                  ; $2a15 : $15
	and $22                                                  ; $2a16 : $e6, $22
	ld e, a                                                  ; $2a18 : $5f
	jp p, $e433                                                  ; $2a19 : $f2, $33, $e4
	ld c, $47                                                  ; $2a1c : $0e, $47
	jr nc, -$1c                                                  ; $2a1e : $30, $e4

	ld b, h                                                  ; $2a20 : $44
	ld c, $40                                                  ; $2a21 : $0e, $40
	ld d, b                                                  ; $2a23 : $50
	push hl                                                  ; $2a24 : $e5
	dec b                                                  ; $2a25 : $05
	ld c, $42                                                  ; $2a26 : $0e, $42
	jr nz, -$1c                                                  ; $2a28 : $20, $e4

	ld (hl), $0e                                                  ; $2a2a : $36, $0e
	ld c, b                                                  ; $2a2c : $48
	jr nz, br_07_2a13                                                  ; $2a2d : $20, $e4

	ld d, l                                                  ; $2a2f : $55
	ld c, $46                                                  ; $2a30 : $0e, $46
	ld b, b                                                  ; $2a32 : $40
	call po, Call_07_3019                                                  ; $2a33 : $e4, $19, $30
	ld ($3534), a                                                  ; $2a36 : $32, $34, $35
	jr c, br_07_2a7d                                                  ; $2a39 : $38, $42

	ld b, h                                                  ; $2a3b : $44
	ld b, l                                                  ; $2a3c : $45
	ld b, a                                                  ; $2a3d : $47
	ld d, b                                                  ; $2a3e : $50
	inc d                                                  ; $2a3f : $14
	pop hl                                                  ; $2a40 : $e1
	sbc a, a                                                  ; $2a41 : $9f
	inc d                                                  ; $2a42 : $14
	jp po, Jump_07_1308                                                  ; $2a43 : $e2, $08, $13
	rst $20                                                  ; $2a46 : $e7
	ld a, a                                                  ; $2a47 : $7f
	rla                                                  ; $2a48 : $17
	and $75                                                  ; $2a49 : $e6, $75
	ld d, $e0                                                  ; $2a4b : $16, $e0
	ld (hl), $18                                                  ; $2a4d : $36, $18
	ex (sp), hl                                                  ; $2a4f : $e3
	ld (de), a                                                  ; $2a50 : $12
	ld hl, $08e2                                                  ; $2a51 : $21, $e2, $08
	jr nz, -$1c                                                  ; $2a54 : $20, $e4

	ld (hl), l                                                  ; $2a56 : $75
	ld hl, $08e8                                                  ; $2a57 : $21, $e8, $08
	jr nz, -$17                                                  ; $2a5a : $20, $e9

	ld e, a                                                  ; $2a5c : $5f
	ld (hl), b                                                  ; $2a5d : $70
	jp po, $e371                                                  ; $2a5e : $e2, $71, $e3
	ld (hl), d                                                  ; $2a61 : $72
	ret po                                                  ; $2a62 : $e0

	ld (hl), e                                                  ; $2a63 : $73
	and $75                                                  ; $2a64 : $e6, $75
	push hl                                                  ; $2a66 : $e5
	halt                                                  ; $2a67 : $76
	ret pe                                                  ; $2a68 : $e8

	ld (hl), a                                                  ; $2a69 : $77
	pop hl                                                  ; $2a6a : $e1
	ld a, b                                                  ; $2a6b : $78
	call po, $e779                                                  ; $2a6c : $e4, $79, $e7
	add a, b                                                  ; $2a6f : $80
	ret po                                                  ; $2a70 : $e0

	ld l, (hl)                                                  ; $2a71 : $6e
	add a, (hl)                                                  ; $2a72 : $86
	jp (hl)                                                  ; $2a73 : $e9


	ld l, (hl)                                                  ; $2a74 : $6e
	ld h, (hl)                                                  ; $2a75 : $66
	jp po, Jump_07_056e                                                  ; $2a76 : $e2, $6e, $05
	push hl                                                  ; $2a79 : $e5
	ld e, (hl)                                                  ; $2a7a : $5e

br_07_2a7b:
	ld b, l                                                  ; $2a7b : $45
	pop hl                                                  ; $2a7c : $e1

br_07_2a7d:
	ld c, (hl)                                                  ; $2a7d : $4e
	ld h, h                                                  ; $2a7e : $64
	ex (sp), hl                                                  ; $2a7f : $e3
	ld (hl), a                                                  ; $2a80 : $77
	rst $38                                                  ; $2a81 : $ff
	ld a, b                                                  ; $2a82 : $78
	jp po, $e678                                                  ; $2a83 : $e2, $78, $e6
	ld a, c                                                  ; $2a86 : $79
	ret pe                                                  ; $2a87 : $e8

	add a, c                                                  ; $2a88 : $81
	push hl                                                  ; $2a89 : $e5
	add a, d                                                  ; $2a8a : $82
	ex (sp), hl                                                  ; $2a8b : $e3
	add a, d                                                  ; $2a8c : $82
	push hl                                                  ; $2a8d : $e5
	add a, e                                                  ; $2a8e : $83
	push hl                                                  ; $2a8f : $e5
	add a, h                                                  ; $2a90 : $84
	ex (sp), hl                                                  ; $2a91 : $e3
	add a, h                                                  ; $2a92 : $84
	ex (sp), hl                                                  ; $2a93 : $e3
	djnz br_07_2a7b                                                  ; $2a94 : $10, $e5
	ld a, $06                                                  ; $2a96 : $3e, $06
	ld l, (hl)                                                  ; $2a98 : $6e
	ld (hl), $9e                                                  ; $2a99 : $36, $9e
	ld (hl), d                                                  ; $2a9b : $72
	adc a, (hl)                                                  ; $2a9c : $8e
	dec h                                                  ; $2a9d : $25
	ld c, (hl)                                                  ; $2a9e : $4e
	sbc a, b                                                  ; $2a9f : $98
	ld l, (hl)                                                  ; $2aa0 : $6e
	add a, h                                                  ; $2aa1 : $84
	adc a, (hl)                                                  ; $2aa2 : $8e
	ld (hl), l                                                  ; $2aa3 : $75
	ld a, $64                                                  ; $2aa4 : $3e, $64
	ld e, (hl)                                                  ; $2aa6 : $5e
	ld d, l                                                  ; $2aa7 : $55
	ld e, $5f                                                  ; $2aa8 : $1e, $5f
	ld e, $53                                                  ; $2aaa : $1e, $53
	ld e, $59                                                  ; $2aac : $1e, $59
	ld e, $62                                                  ; $2aae : $1e, $62
	ld e, $65                                                  ; $2ab0 : $1e, $65
	ld e, $66                                                  ; $2ab2 : $1e, $66
	ld e, $71                                                  ; $2ab4 : $1e, $71
	ld e, $75                                                  ; $2ab6 : $1e, $75
	ld e, $82                                                  ; $2ab8 : $1e, $82
	ld e, $85                                                  ; $2aba : $1e, $85
	ld (hl), d                                                  ; $2abc : $72

br_07_2abd:
	ld b, (hl)                                                  ; $2abd : $46
	ld d, e                                                  ; $2abe : $53
	ld b, l                                                  ; $2abf : $45
	inc hl                                                  ; $2ac0 : $23
	jr nz, br_07_2ac5                                                  ; $2ac1 : $20, $02

	dec d                                                  ; $2ac3 : $15
	inc hl                                                  ; $2ac4 : $23

br_07_2ac5:
	ld h, d                                                  ; $2ac5 : $62
	ld d, l                                                  ; $2ac6 : $55
	jr z, br_07_2b2c                                                  ; $2ac7 : $28, $63

	djnz br_07_2aff                                                  ; $2ac9 : $10, $34
	inc sp                                                  ; $2acb : $33
	ld (hl), d                                                  ; $2acc : $72
	add hl, sp                                                  ; $2acd : $39
	ld b, h                                                  ; $2ace : $44
	ld b, $43                                                  ; $2acf : $06, $43
	dec h                                                  ; $2ad1 : $25
	scf                                                  ; $2ad2 : $37
	ld d, b                                                  ; $2ad3 : $50
	jr nc, br_07_2afe                                                  ; $2ad4 : $30, $28

	jr c, br_07_2b0a                                                  ; $2ad6 : $38, $32

	ld b, h                                                  ; $2ad8 : $44
	ld b, (hl)                                                  ; $2ad9 : $46
	dec (hl)                                                  ; $2ada : $35
	ld (hl), h                                                  ; $2adb : $74
	dec b                                                  ; $2adc : $05
	ld b, e                                                  ; $2add : $43
	ld d, h                                                  ; $2ade : $54
	ld h, b                                                  ; $2adf : $60
	ld d, h                                                  ; $2ae0 : $54
	dec h                                                  ; $2ae1 : $25
	sub d                                                  ; $2ae2 : $92
	ld h, h                                                  ; $2ae3 : $64
	add a, a                                                  ; $2ae4 : $87
	ld (de), a                                                  ; $2ae5 : $12
	ld (hl), h                                                  ; $2ae6 : $74
	ld b, a                                                  ; $2ae7 : $47
	ld h, (hl)                                                  ; $2ae8 : $66
	ld h, b                                                  ; $2ae9 : $60
	ld h, l                                                  ; $2aea : $65
	ld (hl), b                                                  ; $2aeb : $70
	ld (hl), l                                                  ; $2aec : $75
	add a, b                                                  ; $2aed : $80
	add a, l                                                  ; $2aee : $85
	sub b                                                  ; $2aef : $90
	ld h, l                                                  ; $2af0 : $65
	add a, b                                                  ; $2af1 : $80
	ld (hl), l                                                  ; $2af2 : $75
	djnz br_07_2b66                                                  ; $2af3 : $10, $71
	ld (de), a                                                  ; $2af5 : $12
	dec (hl)                                                  ; $2af6 : $35
	ld de, $1313                                                  ; $2af7 : $11, $13, $13
	add a, b                                                  ; $2afa : $80
	inc de                                                  ; $2afb : $13
	inc h                                                  ; $2afc : $24
	ld (de), a                                                  ; $2afd : $12

br_07_2afe:
	ld e, b                                                  ; $2afe : $58

br_07_2aff:
	dec d                                                  ; $2aff : $15
	add a, h                                                  ; $2b00 : $84
	ld de, $1170                                                  ; $2b01 : $11, $70, $11
	ld b, b                                                  ; $2b04 : $40

Call_07_2b05:
	ld (de), a                                                  ; $2b05 : $12
	jr nc, br_07_2b1f                                                  ; $2b06 : $30, $17

	add a, l                                                  ; $2b08 : $85
	add hl, de                                                  ; $2b09 : $19

br_07_2b0a:
	nop                                                  ; $2b0a : $00
	dec d                                                  ; $2b0b : $15
	sub b                                                  ; $2b0c : $90
	jr $40                                                  ; $2b0d : $18, $40

	ld d, $55                                                  ; $2b0f : $16, $55
	inc d                                                  ; $2b11 : $14
	add a, b                                                  ; $2b12 : $80
	rla                                                  ; $2b13 : $17
	ld h, b                                                  ; $2b14 : $60
	jr br_07_2b17                                                  ; $2b15 : $18, $00

br_07_2b17:
	inc d                                                  ; $2b17 : $14
	dec h                                                  ; $2b18 : $25
	ld d, $40                                                  ; $2b19 : $16, $40
	inc hl                                                  ; $2b1b : $23
	ld b, l                                                  ; $2b1c : $45
	inc hl                                                  ; $2b1d : $23
	ld b, l                                                  ; $2b1e : $45

br_07_2b1f:
	inc h                                                  ; $2b1f : $24
	add a, a                                                  ; $2b20 : $87
	scf                                                  ; $2b21 : $37
	jr c, br_07_2b8a                                                  ; $2b22 : $38, $66

	ld b, l                                                  ; $2b24 : $45
	ld d, $21                                                  ; $2b25 : $16, $21
	ld (de), a                                                  ; $2b27 : $12
	dec (hl)                                                  ; $2b28 : $35
	ld l, a                                                  ; $2b29 : $6f
	inc h                                                  ; $2b2a : $24
	inc h                                                  ; $2b2b : $24

br_07_2b2c:
	jr nc, br_07_2abd                                                  ; $2b2c : $30, $8f

	jr nz, br_07_2b40                                                  ; $2b2e : $20, $10

	ld de, $1312                                                  ; $2b30 : $11, $12, $13
	inc d                                                  ; $2b33 : $14
	dec d                                                  ; $2b34 : $15

br_07_2b35:
	ld d, $17                                                  ; $2b35 : $16, $17
	jr br_07_2b59                                                  ; $2b37 : $18, $20

	inc d                                                  ; $2b39 : $14
	jr nz, br_07_2b54                                                  ; $2b3a : $20, $18

	dec h                                                  ; $2b3c : $25
	dec h                                                  ; $2b3d : $25
	jr br_07_2b55                                                  ; $2b3e : $18, $15

br_07_2b40:
	djnz br_07_2b57                                                  ; $2b40 : $10, $15
	ld (de), a                                                  ; $2b42 : $12
	ld b, e                                                  ; $2b43 : $43
	sub (hl)                                                  ; $2b44 : $96
	rst $38                                                  ; $2b45 : $ff
	rst $30                                                  ; $2b46 : $f7
	ld e, c                                                  ; $2b47 : $59
	adc a, (hl)                                                  ; $2b48 : $8e
	adc a, a                                                  ; $2b49 : $8f
	add a, c                                                  ; $2b4a : $81
	jr c, br_07_2b35                                                  ; $2b4b : $38, $e8

	add a, c                                                  ; $2b4d : $81
	ld ($e566), a                                                  ; $2b4e : $32, $66, $e5
	dec d                                                  ; $2b51 : $15
	jr c, $6f                                                  ; $2b52 : $38, $6f

br_07_2b54:
	pop af                                                  ; $2b54 : $f1

br_07_2b55:
	daa                                                  ; $2b55 : $27

br_07_2b56:
	rla                                                  ; $2b56 : $17

br_07_2b57:
	rst $38                                                  ; $2b57 : $ff
	ld (de), a                                                  ; $2b58 : $12

br_07_2b59:
	dec b                                                  ; $2b59 : $05
	ld a, (hl)                                                  ; $2b5a : $7e
	ld l, c                                                  ; $2b5b : $69
	rlca                                                  ; $2b5c : $07
	ld c, (hl)                                                  ; $2b5d : $4e

br_07_2b5e:
	ld l, a                                                  ; $2b5e : $6f
	dec d                                                  ; $2b5f : $15
	ld h, $0e                                                  ; $2b60 : $26, $0e
	ld b, c                                                  ; $2b62 : $41
	ld d, b                                                  ; $2b63 : $50
	ld (hl), d                                                  ; $2b64 : $72
	rst $38                                                  ; $2b65 : $ff

br_07_2b66:
	jr nc, br_07_2b9c                                                  ; $2b66 : $30, $34

	ld (hl), $42                                                  ; $2b68 : $36, $42
	ld b, l                                                  ; $2b6a : $45
	ld c, b                                                  ; $2b6b : $48
	ld d, b                                                  ; $2b6c : $50
	ld d, d                                                  ; $2b6d : $52
	ld d, a                                                  ; $2b6e : $57
	inc sp                                                  ; $2b6f : $33
	sbc a, a                                                  ; $2b70 : $9f
	rst $38                                                  ; $2b71 : $ff
	djnz br_07_2b56                                                  ; $2b72 : $10, $e2
	djnz br_07_2b5e                                                  ; $2b74 : $10, $e8
	ld (de), a                                                  ; $2b76 : $12
	and $13                                                  ; $2b77 : $e6, $13
	push hl                                                  ; $2b79 : $e5
	inc d                                                  ; $2b7a : $14
	call po, $ff15                                                  ; $2b7b : $e4, $15, $ff
	dec d                                                  ; $2b7e : $15
	and $17                                                  ; $2b7f : $e6, $17
	pop hl                                                  ; $2b81 : $e1
	sbc a, (hl)                                                  ; $2b82 : $9e
	sbc a, a                                                  ; $2b83 : $9f
	jr nz, br_07_2b88                                                  ; $2b84 : $20, $02

	inc h                                                  ; $2b86 : $24
	inc hl                                                  ; $2b87 : $23

br_07_2b88:
	ld h, d                                                  ; $2b88 : $62
	ld (hl), l                                                  ; $2b89 : $75

br_07_2b8a:
	jr z, br_07_2baf                                                  ; $2b8a : $28, $23

	ld (de), a                                                  ; $2b8c : $12
	inc sp                                                  ; $2b8d : $33
	ld h, e                                                  ; $2b8e : $63
	ld d, b                                                  ; $2b8f : $50
	ld (hl), $73                                                  ; $2b90 : $36, $73
	sub l                                                  ; $2b92 : $95
	dec h                                                  ; $2b93 : $25
	ld d, c                                                  ; $2b94 : $51
	jr br_07_2bad                                                  ; $2b95 : $18, $16

	ld h, d                                                  ; $2b97 : $62
	inc (hl)                                                  ; $2b98 : $34
	djnz $61                                                  ; $2b99 : $10, $61
	ld (hl), d                                                  ; $2b9b : $72

br_07_2b9c:
	ld (de), a                                                  ; $2b9c : $12
	add a, d                                                  ; $2b9d : $82
	ld b, $14                                                  ; $2b9e : $06, $14
	ld (bc), a                                                  ; $2ba0 : $02
	jr nz, $51                                                  ; $2ba1 : $20, $51

	nop                                                  ; $2ba3 : $00
	ld (bc), a                                                  ; $2ba4 : $02
	ld h, h                                                  ; $2ba5 : $64
	ld ($1739), a                                                  ; $2ba6 : $32, $39, $17
	ld h, (hl)                                                  ; $2ba9 : $66
	ld b, e                                                  ; $2baa : $43
	ld d, b                                                  ; $2bab : $50
	add hl, hl                                                  ; $2bac : $29

br_07_2bad:
	adc a, c                                                  ; $2bad : $89
	dec h                                                  ; $2bae : $25

br_07_2baf:
	ld (hl), $64                                                  ; $2baf : $36, $64
	ld b, e                                                  ; $2bb1 : $43
	nop                                                  ; $2bb2 : $00
	add a, a                                                  ; $2bb3 : $87
	ld hl, $5100                                                  ; $2bb4 : $21, $00, $51
	jr c, br_07_2bc1                                                  ; $2bb7 : $38, $08

	ld l, c                                                  ; $2bb9 : $69
	nop                                                  ; $2bba : $00
	inc hl                                                  ; $2bbb : $23
	ld b, (hl)                                                  ; $2bbc : $46
	ld e, b                                                  ; $2bbd : $58
	inc h                                                  ; $2bbe : $24
	ld e, b                                                  ; $2bbf : $58
	scf                                                  ; $2bc0 : $37

br_07_2bc1:
	ld d, b                                                  ; $2bc1 : $50
	ld (hl), $00                                                  ; $2bc2 : $36, $00
	inc sp                                                  ; $2bc4 : $33
	nop                                                  ; $2bc5 : $00
	ld b, d                                                  ; $2bc6 : $42
	nop                                                  ; $2bc7 : $00
	ld b, l                                                  ; $2bc8 : $45
	nop                                                  ; $2bc9 : $00
	ld (hl), $00                                                  ; $2bca : $36, $00
	dec (hl)                                                  ; $2bcc : $35
	nop                                                  ; $2bcd : $00
	ld b, c                                                  ; $2bce : $41
	nop                                                  ; $2bcf : $00
	ld b, d                                                  ; $2bd0 : $42
	nop                                                  ; $2bd1 : $00
	ld b, h                                                  ; $2bd2 : $44
	nop                                                  ; $2bd3 : $00
	jr br_07_2c4b                                                  ; $2bd4 : $18, $75

	ld (de), a                                                  ; $2bd6 : $12
	nop                                                  ; $2bd7 : $00
	add a, d                                                  ; $2bd8 : $82
	ld e, a                                                  ; $2bd9 : $5f
	ld (hl), b                                                  ; $2bda : $70
	rrca                                                  ; $2bdb : $0f
	sub b                                                  ; $2bdc : $90
	rrca                                                  ; $2bdd : $0f
	ld b, l                                                  ; $2bde : $45
	rrca                                                  ; $2bdf : $0f
	rla                                                  ; $2be0 : $17
	ld d, b                                                  ; $2be1 : $50
	djnz br_07_2c09                                                  ; $2be2 : $10, $25
	add a, h                                                  ; $2be4 : $84
	rrca                                                  ; $2be5 : $0f
	ld d, l                                                  ; $2be6 : $55
	rrca                                                  ; $2be7 : $0f
	inc hl                                                  ; $2be8 : $23
	ld b, l                                                  ; $2be9 : $45
	ld h, d                                                  ; $2bea : $62
	add a, h                                                  ; $2beb : $84
	ld d, (hl)                                                  ; $2bec : $56
	ld d, $81                                                  ; $2bed : $16, $81
	inc h                                                  ; $2bef : $24
	dec d                                                  ; $2bf0 : $15
	ld d, d                                                  ; $2bf1 : $52
	ld ($0210), hl                                                  ; $2bf2 : $22, $10, $02
	ld b, l                                                  ; $2bf5 : $45
	ld de, $3621                                                  ; $2bf6 : $11, $21, $36
	inc d                                                  ; $2bf9 : $14
	ld bc, $3e95                                                  ; $2bfa : $01, $95, $3e
	ld (hl), $3e                                                  ; $2bfd : $36, $3e
	ld (hl), d                                                  ; $2bff : $72
	ld l, (hl)                                                  ; $2c00 : $6e
	cpl                                                  ; $2c01 : $2f
	ld de, $6fe1                                                  ; $2c02 : $11, $e1, $6f
	rst $38                                                  ; $2c05 : $ff
	ld c, (hl)                                                  ; $2c06 : $4e
	sbc a, a                                                  ; $2c07 : $9f
	adc a, (hl)                                                  ; $2c08 : $8e

br_07_2c09:
	sub (hl)                                                  ; $2c09 : $96
	ld e, (hl)                                                  ; $2c0a : $5e
	ld b, h                                                  ; $2c0b : $44
	ld a, a                                                  ; $2c0c : $7f
	rst $38                                                  ; $2c0d : $ff
	ld de, $00e7                                                  ; $2c0e : $11, $e7, $00
	nop                                                  ; $2c11 : $00
	nop                                                  ; $2c12 : $00
	nop                                                  ; $2c13 : $00
	nop                                                  ; $2c14 : $00
	nop                                                  ; $2c15 : $00
	nop                                                  ; $2c16 : $00
	nop                                                  ; $2c17 : $00
	nop                                                  ; $2c18 : $00
	nop                                                  ; $2c19 : $00
	nop                                                  ; $2c1a : $00
	nop                                                  ; $2c1b : $00
	nop                                                  ; $2c1c : $00
	ld bc, $1000                                                  ; $2c1d : $01, $00, $10
	inc c                                                  ; $2c20 : $0c
	add a, d                                                  ; $2c21 : $82
	ex af, af'                                                  ; $2c22 : $08
	sbc a, c                                                  ; $2c23 : $99
	ld bc, $4477                                                  ; $2c24 : $01, $77, $44
	and c                                                  ; $2c27 : $a1
	nop                                                  ; $2c28 : $00
	dec d                                                  ; $2c29 : $15
	ex af, af'                                                  ; $2c2a : $08
	ld (hl), c                                                  ; $2c2b : $71
	nop                                                  ; $2c2c : $00
	ld e, b                                                  ; $2c2d : $58
	nop                                                  ; $2c2e : $00
	xor l                                                  ; $2c2f : $ad
	nop                                                  ; $2c30 : $00
	nop                                                  ; $2c31 : $00
	nop                                                  ; $2c32 : $00
	nop                                                  ; $2c33 : $00
	nop                                                  ; $2c34 : $00
	nop                                                  ; $2c35 : $00
	nop                                                  ; $2c36 : $00
	nop                                                  ; $2c37 : $00
	nop                                                  ; $2c38 : $00
	nop                                                  ; $2c39 : $00
	nop                                                  ; $2c3a : $00
	nop                                                  ; $2c3b : $00
	nop                                                  ; $2c3c : $00
	ld bc, $1000                                                  ; $2c3d : $01, $00, $10
	inc c                                                  ; $2c40 : $0c
	add a, d                                                  ; $2c41 : $82
	add a, d                                                  ; $2c42 : $82
	sbc a, c                                                  ; $2c43 : $99
	adc a, b                                                  ; $2c44 : $88
	ld (hl), a                                                  ; $2c45 : $77
	ret nz                                                  ; $2c46 : $c0

	and c                                                  ; $2c47 : $a1
	jr nz, $15                                                  ; $2c48 : $20, $15

	ld (bc), a                                                  ; $2c4a : $02

br_07_2c4b:
	ld (hl), c                                                  ; $2c4b : $71
	jr nz, br_07_2ca6                                                  ; $2c4c : $20, $58

	jr nz, br_07_2c7d                                                  ; $2c4e : $20, $2d

	nop                                                  ; $2c50 : $00
	nop                                                  ; $2c51 : $00
	nop                                                  ; $2c52 : $00
	nop                                                  ; $2c53 : $00
	nop                                                  ; $2c54 : $00
	nop                                                  ; $2c55 : $00
	nop                                                  ; $2c56 : $00
	nop                                                  ; $2c57 : $00
	nop                                                  ; $2c58 : $00
	nop                                                  ; $2c59 : $00
	nop                                                  ; $2c5a : $00
	nop                                                  ; $2c5b : $00
	nop                                                  ; $2c5c : $00
	ld bc, $1000                                                  ; $2c5d : $01, $00, $10
	inc c                                                  ; $2c60 : $0c
	add a, d                                                  ; $2c61 : $82
	ld b, d                                                  ; $2c62 : $42
	sbc a, c                                                  ; $2c63 : $99
	nop                                                  ; $2c64 : $00
	ld (hl), a                                                  ; $2c65 : $77
	ex af, af'                                                  ; $2c66 : $08
	and c                                                  ; $2c67 : $a1
	ret nz                                                  ; $2c68 : $c0

	dec d                                                  ; $2c69 : $15
	ex af, af'                                                  ; $2c6a : $08
	ld (hl), c                                                  ; $2c6b : $71
	nop                                                  ; $2c6c : $00
	ld e, b                                                  ; $2c6d : $58
	nop                                                  ; $2c6e : $00
	xor c                                                  ; $2c6f : $a9
	nop                                                  ; $2c70 : $00
	nop                                                  ; $2c71 : $00
	nop                                                  ; $2c72 : $00
	nop                                                  ; $2c73 : $00
	nop                                                  ; $2c74 : $00
	nop                                                  ; $2c75 : $00
	nop                                                  ; $2c76 : $00
	nop                                                  ; $2c77 : $00
	nop                                                  ; $2c78 : $00
	nop                                                  ; $2c79 : $00
	nop                                                  ; $2c7a : $00
	nop                                                  ; $2c7b : $00
	nop                                                  ; $2c7c : $00

br_07_2c7d:
	ld bc, $1000                                                  ; $2c7d : $01, $00, $10
	inc b                                                  ; $2c80 : $04
	add a, d                                                  ; $2c81 : $82
	add a, b                                                  ; $2c82 : $80
	sbc a, c                                                  ; $2c83 : $99
	nop                                                  ; $2c84 : $00
	ld (hl), a                                                  ; $2c85 : $77
	ld b, b                                                  ; $2c86 : $40
	and c                                                  ; $2c87 : $a1
	jr nz, $15                                                  ; $2c88 : $20, $15

	nop                                                  ; $2c8a : $00
	ld (hl), c                                                  ; $2c8b : $71
	nop                                                  ; $2c8c : $00
	ld e, b                                                  ; $2c8d : $58
	nop                                                  ; $2c8e : $00
	xor l                                                  ; $2c8f : $ad
	nop                                                  ; $2c90 : $00
	nop                                                  ; $2c91 : $00
	nop                                                  ; $2c92 : $00
	nop                                                  ; $2c93 : $00
	nop                                                  ; $2c94 : $00
	nop                                                  ; $2c95 : $00
	nop                                                  ; $2c96 : $00
	nop                                                  ; $2c97 : $00
	nop                                                  ; $2c98 : $00
	nop                                                  ; $2c99 : $00
	nop                                                  ; $2c9a : $00
	nop                                                  ; $2c9b : $00
	nop                                                  ; $2c9c : $00
	ld bc, $1000                                                  ; $2c9d : $01, $00, $10
	inc c                                                  ; $2ca0 : $0c
	add a, d                                                  ; $2ca1 : $82
	add a, b                                                  ; $2ca2 : $80
	sbc a, c                                                  ; $2ca3 : $99
	nop                                                  ; $2ca4 : $00
	ld (hl), a                                                  ; $2ca5 : $77

br_07_2ca6:
	call nz, $a0a1                                                  ; $2ca6 : $c4, $a1, $a0
	dec d                                                  ; $2ca9 : $15
	ld bc, $2071                                                  ; $2caa : $01, $71, $20
	ld e, b                                                  ; $2cad : $58
	ld (bc), a                                                  ; $2cae : $02
	xor c                                                  ; $2caf : $a9
	nop                                                  ; $2cb0 : $00
	nop                                                  ; $2cb1 : $00
	nop                                                  ; $2cb2 : $00
	nop                                                  ; $2cb3 : $00
	nop                                                  ; $2cb4 : $00
	nop                                                  ; $2cb5 : $00
	nop                                                  ; $2cb6 : $00
	nop                                                  ; $2cb7 : $00
	nop                                                  ; $2cb8 : $00
	nop                                                  ; $2cb9 : $00
	nop                                                  ; $2cba : $00
	nop                                                  ; $2cbb : $00
	nop                                                  ; $2cbc : $00
	ld bc, $1000                                                  ; $2cbd : $01, $00, $10
	inc b                                                  ; $2cc0 : $04
	add a, d                                                  ; $2cc1 : $82
	adc a, b                                                  ; $2cc2 : $88
	sbc a, c                                                  ; $2cc3 : $99
	nop                                                  ; $2cc4 : $00
	ld (hl), a                                                  ; $2cc5 : $77
	nop                                                  ; $2cc6 : $00
	and c                                                  ; $2cc7 : $a1
	nop                                                  ; $2cc8 : $00
	dec d                                                  ; $2cc9 : $15
	nop                                                  ; $2cca : $00
	ld (hl), c                                                  ; $2ccb : $71
	ld b, b                                                  ; $2ccc : $40
	ld e, b                                                  ; $2ccd : $58
	nop                                                  ; $2cce : $00
	add hl, hl                                                  ; $2ccf : $29
	nop                                                  ; $2cd0 : $00
	nop                                                  ; $2cd1 : $00
	nop                                                  ; $2cd2 : $00
	nop                                                  ; $2cd3 : $00
	nop                                                  ; $2cd4 : $00
	nop                                                  ; $2cd5 : $00
	nop                                                  ; $2cd6 : $00
	nop                                                  ; $2cd7 : $00
	nop                                                  ; $2cd8 : $00
	nop                                                  ; $2cd9 : $00
	nop                                                  ; $2cda : $00
	nop                                                  ; $2cdb : $00
	nop                                                  ; $2cdc : $00
	ld bc, $1000                                                  ; $2cdd : $01, $00, $10
	inc b                                                  ; $2ce0 : $04
	add a, d                                                  ; $2ce1 : $82
	djnz br_07_2c7d                                                  ; $2ce2 : $10, $99
	ex af, af'                                                  ; $2ce4 : $08
	ld (hl), a                                                  ; $2ce5 : $77
	inc b                                                  ; $2ce6 : $04
	and c                                                  ; $2ce7 : $a1
	nop                                                  ; $2ce8 : $00
	dec d                                                  ; $2ce9 : $15
	nop                                                  ; $2cea : $00
	ld (hl), c                                                  ; $2ceb : $71
	nop                                                  ; $2cec : $00
	ld e, b                                                  ; $2ced : $58
	jr nz, br_07_2d1c                                                  ; $2cee : $20, $2c

	nop                                                  ; $2cf0 : $00
	nop                                                  ; $2cf1 : $00
	nop                                                  ; $2cf2 : $00
	nop                                                  ; $2cf3 : $00
	nop                                                  ; $2cf4 : $00
	nop                                                  ; $2cf5 : $00
	nop                                                  ; $2cf6 : $00
	nop                                                  ; $2cf7 : $00
	nop                                                  ; $2cf8 : $00
	nop                                                  ; $2cf9 : $00
	nop                                                  ; $2cfa : $00
	nop                                                  ; $2cfb : $00
	nop                                                  ; $2cfc : $00
	ld bc, $1000                                                  ; $2cfd : $01, $00, $10
	nop                                                  ; $2d00 : $00
	add a, d                                                  ; $2d01 : $82
	nop                                                  ; $2d02 : $00
	sbc a, c                                                  ; $2d03 : $99
	jr nz, br_07_2d7d                                                  ; $2d04 : $20, $77

	ld c, h                                                  ; $2d06 : $4c
	and c                                                  ; $2d07 : $a1
	add a, h                                                  ; $2d08 : $84
	dec d                                                  ; $2d09 : $15
	add hl, bc                                                  ; $2d0a : $09
	ld (hl), c                                                  ; $2d0b : $71
	nop                                                  ; $2d0c : $00
	ld e, b                                                  ; $2d0d : $58
	nop                                                  ; $2d0e : $00
	xor l                                                  ; $2d0f : $ad
	nop                                                  ; $2d10 : $00
	nop                                                  ; $2d11 : $00
	nop                                                  ; $2d12 : $00
	nop                                                  ; $2d13 : $00
	nop                                                  ; $2d14 : $00
	nop                                                  ; $2d15 : $00
	nop                                                  ; $2d16 : $00
	nop                                                  ; $2d17 : $00
	nop                                                  ; $2d18 : $00
	nop                                                  ; $2d19 : $00
	nop                                                  ; $2d1a : $00
	nop                                                  ; $2d1b : $00

br_07_2d1c:
	nop                                                  ; $2d1c : $00
	ld bc, $1000                                                  ; $2d1d : $01, $00, $10
	inc c                                                  ; $2d20 : $0c
	add a, d                                                  ; $2d21 : $82
	ld (bc), a                                                  ; $2d22 : $02
	sbc a, c                                                  ; $2d23 : $99
	ld ($0077), hl                                                  ; $2d24 : $22, $77, $00
	and c                                                  ; $2d27 : $a1
	inc h                                                  ; $2d28 : $24
	dec d                                                  ; $2d29 : $15
	ld bc, $4071                                                  ; $2d2a : $01, $71, $40
	ld e, b                                                  ; $2d2d : $58
	xor b                                                  ; $2d2e : $a8
	dec l                                                  ; $2d2f : $2d
	djnz br_07_2d32                                                  ; $2d30 : $10, $00

br_07_2d32:
	nop                                                  ; $2d32 : $00
	nop                                                  ; $2d33 : $00
	nop                                                  ; $2d34 : $00
	nop                                                  ; $2d35 : $00
	nop                                                  ; $2d36 : $00
	nop                                                  ; $2d37 : $00
	nop                                                  ; $2d38 : $00
	nop                                                  ; $2d39 : $00
	nop                                                  ; $2d3a : $00
	nop                                                  ; $2d3b : $00
	nop                                                  ; $2d3c : $00

br_07_2d3d:
	ld bc, $1000                                                  ; $2d3d : $01, $00, $10
	inc b                                                  ; $2d40 : $04
	add a, d                                                  ; $2d41 : $82
	ld a, (bc)                                                  ; $2d42 : $0a
	sbc a, c                                                  ; $2d43 : $99
	add hl, bc                                                  ; $2d44 : $09
	ld (hl), a                                                  ; $2d45 : $77
	nop                                                  ; $2d46 : $00
	and c                                                  ; $2d47 : $a1
	nop                                                  ; $2d48 : $00
	dec d                                                  ; $2d49 : $15
	nop                                                  ; $2d4a : $00
	ld (hl), c                                                  ; $2d4b : $71
	nop                                                  ; $2d4c : $00
	ld e, b                                                  ; $2d4d : $58
	ex af, af'                                                  ; $2d4e : $08
	xor h                                                  ; $2d4f : $ac
	nop                                                  ; $2d50 : $00
	nop                                                  ; $2d51 : $00
	nop                                                  ; $2d52 : $00
	nop                                                  ; $2d53 : $00
	nop                                                  ; $2d54 : $00
	nop                                                  ; $2d55 : $00
	nop                                                  ; $2d56 : $00
	nop                                                  ; $2d57 : $00
	nop                                                  ; $2d58 : $00
	nop                                                  ; $2d59 : $00
	nop                                                  ; $2d5a : $00
	nop                                                  ; $2d5b : $00
	nop                                                  ; $2d5c : $00
	ld bc, $1000                                                  ; $2d5d : $01, $00, $10
	inc c                                                  ; $2d60 : $0c
	add a, d                                                  ; $2d61 : $82
	jp nz, Jump_07_2099                                                  ; $2d62 : $c2, $99, $20
	ld (hl), a                                                  ; $2d65 : $77
	inc b                                                  ; $2d66 : $04
	and c                                                  ; $2d67 : $a1
	jr nz, $15                                                  ; $2d68 : $20, $15

	nop                                                  ; $2d6a : $00
	ld (hl), c                                                  ; $2d6b : $71
	ld h, b                                                  ; $2d6c : $60
	ld e, b                                                  ; $2d6d : $58
	nop                                                  ; $2d6e : $00
	adc a, l                                                  ; $2d6f : $8d
	nop                                                  ; $2d70 : $00
	nop                                                  ; $2d71 : $00
	nop                                                  ; $2d72 : $00
	nop                                                  ; $2d73 : $00
	nop                                                  ; $2d74 : $00
	nop                                                  ; $2d75 : $00
	nop                                                  ; $2d76 : $00
	nop                                                  ; $2d77 : $00
	nop                                                  ; $2d78 : $00
	nop                                                  ; $2d79 : $00
	nop                                                  ; $2d7a : $00
	nop                                                  ; $2d7b : $00
	nop                                                  ; $2d7c : $00

br_07_2d7d:
	ld bc, $1000                                                  ; $2d7d : $01, $00, $10
	inc b                                                  ; $2d80 : $04
	add a, d                                                  ; $2d81 : $82
	ld (bc), a                                                  ; $2d82 : $02
	sbc a, c                                                  ; $2d83 : $99
	adc a, b                                                  ; $2d84 : $88
	ld (hl), a                                                  ; $2d85 : $77
	ret nz                                                  ; $2d86 : $c0

	and c                                                  ; $2d87 : $a1
	ld ($0815), hl                                                  ; $2d88 : $22, $15, $08
	ld (hl), c                                                  ; $2d8b : $71
	ld h, b                                                  ; $2d8c : $60
	ld e, b                                                  ; $2d8d : $58
	jr nz, br_07_2d3d                                                  ; $2d8e : $20, $ad

	djnz br_07_2d92                                                  ; $2d90 : $10, $00

br_07_2d92:
	nop                                                  ; $2d92 : $00
	nop                                                  ; $2d93 : $00
	nop                                                  ; $2d94 : $00
	nop                                                  ; $2d95 : $00
	nop                                                  ; $2d96 : $00
	nop                                                  ; $2d97 : $00
	nop                                                  ; $2d98 : $00
	nop                                                  ; $2d99 : $00
	nop                                                  ; $2d9a : $00
	nop                                                  ; $2d9b : $00
	nop                                                  ; $2d9c : $00

br_07_2d9d:
	ld bc, $1000                                                  ; $2d9d : $01, $00, $10
	inc c                                                  ; $2da0 : $0c
	add a, d                                                  ; $2da1 : $82
	ld (bc), a                                                  ; $2da2 : $02
	sbc a, c                                                  ; $2da3 : $99
	ld (bc), a                                                  ; $2da4 : $02
	ld (hl), a                                                  ; $2da5 : $77
	ld b, b                                                  ; $2da6 : $40
	and c                                                  ; $2da7 : $a1
	jr nz, $15                                                  ; $2da8 : $20, $15

	nop                                                  ; $2daa : $00
	ld (hl), c                                                  ; $2dab : $71
	jr nz, br_07_2e06                                                  ; $2dac : $20, $58

	nop                                                  ; $2dae : $00
	xor h                                                  ; $2daf : $ac
	nop                                                  ; $2db0 : $00
	nop                                                  ; $2db1 : $00
	nop                                                  ; $2db2 : $00
	nop                                                  ; $2db3 : $00
	nop                                                  ; $2db4 : $00
	nop                                                  ; $2db5 : $00
	nop                                                  ; $2db6 : $00
	nop                                                  ; $2db7 : $00
	nop                                                  ; $2db8 : $00
	nop                                                  ; $2db9 : $00
	nop                                                  ; $2dba : $00
	nop                                                  ; $2dbb : $00
	nop                                                  ; $2dbc : $00
	ld bc, $1000                                                  ; $2dbd : $01, $00, $10
	inc c                                                  ; $2dc0 : $0c
	add a, d                                                  ; $2dc1 : $82
	adc a, b                                                  ; $2dc2 : $88
	sbc a, c                                                  ; $2dc3 : $99
	ex af, af'                                                  ; $2dc4 : $08
	ld (hl), a                                                  ; $2dc5 : $77
	inc b                                                  ; $2dc6 : $04
	and c                                                  ; $2dc7 : $a1
	add a, b                                                  ; $2dc8 : $80
	dec d                                                  ; $2dc9 : $15
	nop                                                  ; $2dca : $00
	ld (hl), c                                                  ; $2dcb : $71
	nop                                                  ; $2dcc : $00
	ld e, b                                                  ; $2dcd : $58
	nop                                                  ; $2dce : $00
	xor h                                                  ; $2dcf : $ac
	nop                                                  ; $2dd0 : $00
	nop                                                  ; $2dd1 : $00
	nop                                                  ; $2dd2 : $00
	nop                                                  ; $2dd3 : $00
	nop                                                  ; $2dd4 : $00
	nop                                                  ; $2dd5 : $00
	nop                                                  ; $2dd6 : $00
	nop                                                  ; $2dd7 : $00
	nop                                                  ; $2dd8 : $00
	nop                                                  ; $2dd9 : $00
	nop                                                  ; $2dda : $00
	nop                                                  ; $2ddb : $00
	nop                                                  ; $2ddc : $00
	ld bc, $1000                                                  ; $2ddd : $01, $00, $10
	inc c                                                  ; $2de0 : $0c
	add a, d                                                  ; $2de1 : $82
	add a, d                                                  ; $2de2 : $82
	sbc a, c                                                  ; $2de3 : $99
	ld hl, $4077                                                  ; $2de4 : $21, $77, $40
	and c                                                  ; $2de7 : $a1
	nop                                                  ; $2de8 : $00
	dec d                                                  ; $2de9 : $15
	nop                                                  ; $2dea : $00
	ld (hl), c                                                  ; $2deb : $71
	ld b, b                                                  ; $2dec : $40
	ld e, b                                                  ; $2ded : $58
	jr nz, br_07_2e1d                                                  ; $2dee : $20, $2d

	nop                                                  ; $2df0 : $00
	nop                                                  ; $2df1 : $00
	nop                                                  ; $2df2 : $00
	nop                                                  ; $2df3 : $00
	nop                                                  ; $2df4 : $00
	nop                                                  ; $2df5 : $00
	nop                                                  ; $2df6 : $00
	nop                                                  ; $2df7 : $00
	nop                                                  ; $2df8 : $00
	nop                                                  ; $2df9 : $00
	nop                                                  ; $2dfa : $00
	nop                                                  ; $2dfb : $00
	nop                                                  ; $2dfc : $00
	ld bc, $1000                                                  ; $2dfd : $01, $00, $10
	ex af, af'                                                  ; $2e00 : $08
	add a, d                                                  ; $2e01 : $82
	djnz br_07_2d9d                                                  ; $2e02 : $10, $99
	nop                                                  ; $2e04 : $00
	ld (hl), a                                                  ; $2e05 : $77

br_07_2e06:
	ld b, b                                                  ; $2e06 : $40
	and c                                                  ; $2e07 : $a1
	add a, b                                                  ; $2e08 : $80
	dec d                                                  ; $2e09 : $15
	nop                                                  ; $2e0a : $00
	ld (hl), c                                                  ; $2e0b : $71
	ld b, b                                                  ; $2e0c : $40
	ld e, b                                                  ; $2e0d : $58
	ex af, af'                                                  ; $2e0e : $08
	xor l                                                  ; $2e0f : $ad
	nop                                                  ; $2e10 : $00
	nop                                                  ; $2e11 : $00
	nop                                                  ; $2e12 : $00
	nop                                                  ; $2e13 : $00
	nop                                                  ; $2e14 : $00
	nop                                                  ; $2e15 : $00
	nop                                                  ; $2e16 : $00
	nop                                                  ; $2e17 : $00
	nop                                                  ; $2e18 : $00
	nop                                                  ; $2e19 : $00
	nop                                                  ; $2e1a : $00
	nop                                                  ; $2e1b : $00
	nop                                                  ; $2e1c : $00

br_07_2e1d:
	ld bc, $1000                                                  ; $2e1d : $01, $00, $10
	inc c                                                  ; $2e20 : $0c
	add a, d                                                  ; $2e21 : $82
	nop                                                  ; $2e22 : $00
	sbc a, c                                                  ; $2e23 : $99
	ex af, af'                                                  ; $2e24 : $08
	ld (hl), a                                                  ; $2e25 : $77
	ld c, b                                                  ; $2e26 : $48
	and c                                                  ; $2e27 : $a1
	nop                                                  ; $2e28 : $00
	dec d                                                  ; $2e29 : $15
	nop                                                  ; $2e2a : $00
	ld (hl), c                                                  ; $2e2b : $71
	ld (bc), a                                                  ; $2e2c : $02
	ld e, b                                                  ; $2e2d : $58
	ex af, af'                                                  ; $2e2e : $08
	add hl, hl                                                  ; $2e2f : $29
	nop                                                  ; $2e30 : $00
	nop                                                  ; $2e31 : $00
	nop                                                  ; $2e32 : $00
	nop                                                  ; $2e33 : $00
	nop                                                  ; $2e34 : $00
	nop                                                  ; $2e35 : $00
	nop                                                  ; $2e36 : $00
	nop                                                  ; $2e37 : $00
	nop                                                  ; $2e38 : $00
	nop                                                  ; $2e39 : $00
	nop                                                  ; $2e3a : $00
	nop                                                  ; $2e3b : $00
	nop                                                  ; $2e3c : $00
	ld bc, $1000                                                  ; $2e3d : $01, $00, $10
	inc c                                                  ; $2e40 : $0c
	add a, d                                                  ; $2e41 : $82
	add a, b                                                  ; $2e42 : $80
	sbc a, c                                                  ; $2e43 : $99
	adc a, c                                                  ; $2e44 : $89
	ld (hl), a                                                  ; $2e45 : $77
	nop                                                  ; $2e46 : $00
	and c                                                  ; $2e47 : $a1
	add a, b                                                  ; $2e48 : $80
	dec d                                                  ; $2e49 : $15
	nop                                                  ; $2e4a : $00
	ld (hl), c                                                  ; $2e4b : $71
	ld (bc), a                                                  ; $2e4c : $02
	ld e, b                                                  ; $2e4d : $58
	xor b                                                  ; $2e4e : $a8
	xor l                                                  ; $2e4f : $ad
	nop                                                  ; $2e50 : $00
	nop                                                  ; $2e51 : $00
	nop                                                  ; $2e52 : $00
	nop                                                  ; $2e53 : $00
	nop                                                  ; $2e54 : $00
	nop                                                  ; $2e55 : $00
	nop                                                  ; $2e56 : $00
	nop                                                  ; $2e57 : $00
	nop                                                  ; $2e58 : $00
	nop                                                  ; $2e59 : $00
	nop                                                  ; $2e5a : $00
	nop                                                  ; $2e5b : $00
	nop                                                  ; $2e5c : $00
	ld bc, $1000                                                  ; $2e5d : $01, $00, $10
	inc c                                                  ; $2e60 : $0c
	add a, d                                                  ; $2e61 : $82
	ex af, af'                                                  ; $2e62 : $08
	sbc a, c                                                  ; $2e63 : $99
	jr nz, br_07_2edd                                                  ; $2e64 : $20, $77

	nop                                                  ; $2e66 : $00
	and c                                                  ; $2e67 : $a1
	add a, b                                                  ; $2e68 : $80
	dec d                                                  ; $2e69 : $15
	nop                                                  ; $2e6a : $00
	ld (hl), c                                                  ; $2e6b : $71
	ld b, b                                                  ; $2e6c : $40
	ld e, b                                                  ; $2e6d : $58
	jr nz, br_07_2e1d                                                  ; $2e6e : $20, $ad

	nop                                                  ; $2e70 : $00
	nop                                                  ; $2e71 : $00
	nop                                                  ; $2e72 : $00
	nop                                                  ; $2e73 : $00
	nop                                                  ; $2e74 : $00
	nop                                                  ; $2e75 : $00
	nop                                                  ; $2e76 : $00
	nop                                                  ; $2e77 : $00
	nop                                                  ; $2e78 : $00
	nop                                                  ; $2e79 : $00
	nop                                                  ; $2e7a : $00
	nop                                                  ; $2e7b : $00
	nop                                                  ; $2e7c : $00
	ld bc, $1000                                                  ; $2e7d : $01, $00, $10
	nop                                                  ; $2e80 : $00
	add a, d                                                  ; $2e81 : $82
	ld b, d                                                  ; $2e82 : $42
	sbc a, c                                                  ; $2e83 : $99
	adc a, d                                                  ; $2e84 : $8a
	ld (hl), a                                                  ; $2e85 : $77
	ld b, b                                                  ; $2e86 : $40
	and c                                                  ; $2e87 : $a1
	nop                                                  ; $2e88 : $00
	dec d                                                  ; $2e89 : $15
	nop                                                  ; $2e8a : $00
	ld (hl), c                                                  ; $2e8b : $71
	add a, b                                                  ; $2e8c : $80
	ld e, b                                                  ; $2e8d : $58
	ex af, af'                                                  ; $2e8e : $08
	add hl, hl                                                  ; $2e8f : $29
	djnz br_07_2e92                                                  ; $2e90 : $10, $00

br_07_2e92:
	nop                                                  ; $2e92 : $00
	nop                                                  ; $2e93 : $00
	nop                                                  ; $2e94 : $00
	nop                                                  ; $2e95 : $00
	nop                                                  ; $2e96 : $00
	nop                                                  ; $2e97 : $00
	nop                                                  ; $2e98 : $00
	nop                                                  ; $2e99 : $00
	nop                                                  ; $2e9a : $00
	nop                                                  ; $2e9b : $00
	nop                                                  ; $2e9c : $00
	ld bc, $1000                                                  ; $2e9d : $01, $00, $10
	inc b                                                  ; $2ea0 : $04
	add a, d                                                  ; $2ea1 : $82
	ld (bc), a                                                  ; $2ea2 : $02
	sbc a, c                                                  ; $2ea3 : $99
	ld bc, $8077                                                  ; $2ea4 : $01, $77, $80
	and c                                                  ; $2ea7 : $a1
	nop                                                  ; $2ea8 : $00
	dec d                                                  ; $2ea9 : $15
	nop                                                  ; $2eaa : $00
	ld (hl), c                                                  ; $2eab : $71
	nop                                                  ; $2eac : $00
	ld e, b                                                  ; $2ead : $58
	ex af, af'                                                  ; $2eae : $08
	xor l                                                  ; $2eaf : $ad
	nop                                                  ; $2eb0 : $00
	nop                                                  ; $2eb1 : $00
	nop                                                  ; $2eb2 : $00
	nop                                                  ; $2eb3 : $00
	nop                                                  ; $2eb4 : $00
	nop                                                  ; $2eb5 : $00
	nop                                                  ; $2eb6 : $00
	nop                                                  ; $2eb7 : $00
	nop                                                  ; $2eb8 : $00
	nop                                                  ; $2eb9 : $00
	nop                                                  ; $2eba : $00
	nop                                                  ; $2ebb : $00
	nop                                                  ; $2ebc : $00
	ld bc, $1000                                                  ; $2ebd : $01, $00, $10
	inc b                                                  ; $2ec0 : $04
	add a, d                                                  ; $2ec1 : $82
	sub c                                                  ; $2ec2 : $91
	sbc a, c                                                  ; $2ec3 : $99
	add hl, bc                                                  ; $2ec4 : $09
	ld (hl), a                                                  ; $2ec5 : $77
	ld c, b                                                  ; $2ec6 : $48
	and c                                                  ; $2ec7 : $a1
	ld h, $15                                                  ; $2ec8 : $26, $15
	ex af, af'                                                  ; $2eca : $08
	ld (hl), c                                                  ; $2ecb : $71
	and b                                                  ; $2ecc : $a0
	ld e, b                                                  ; $2ecd : $58
	nop                                                  ; $2ece : $00
	xor c                                                  ; $2ecf : $a9
	nop                                                  ; $2ed0 : $00
	nop                                                  ; $2ed1 : $00
	nop                                                  ; $2ed2 : $00
	nop                                                  ; $2ed3 : $00
	nop                                                  ; $2ed4 : $00
	nop                                                  ; $2ed5 : $00
	nop                                                  ; $2ed6 : $00
	nop                                                  ; $2ed7 : $00
	nop                                                  ; $2ed8 : $00
	nop                                                  ; $2ed9 : $00
	nop                                                  ; $2eda : $00
	nop                                                  ; $2edb : $00
	nop                                                  ; $2edc : $00

br_07_2edd:
	ld bc, $1000                                                  ; $2edd : $01, $00, $10
	inc b                                                  ; $2ee0 : $04
	add a, d                                                  ; $2ee1 : $82
	nop                                                  ; $2ee2 : $00
	sbc a, c                                                  ; $2ee3 : $99
	ld bc, $0037                                                  ; $2ee4 : $01, $37, $00
	and c                                                  ; $2ee7 : $a1
	nop                                                  ; $2ee8 : $00
	dec d                                                  ; $2ee9 : $15
	nop                                                  ; $2eea : $00
	ld (hl), c                                                  ; $2eeb : $71
	nop                                                  ; $2eec : $00
	ld e, b                                                  ; $2eed : $58
	nop                                                  ; $2eee : $00
	xor h                                                  ; $2eef : $ac
	nop                                                  ; $2ef0 : $00
	nop                                                  ; $2ef1 : $00
	nop                                                  ; $2ef2 : $00
	nop                                                  ; $2ef3 : $00
	nop                                                  ; $2ef4 : $00
	nop                                                  ; $2ef5 : $00
	nop                                                  ; $2ef6 : $00
	nop                                                  ; $2ef7 : $00
	nop                                                  ; $2ef8 : $00
	nop                                                  ; $2ef9 : $00
	nop                                                  ; $2efa : $00
	nop                                                  ; $2efb : $00
	nop                                                  ; $2efc : $00

br_07_2efd:
	ld bc, $1000                                                  ; $2efd : $01, $00, $10
	inc b                                                  ; $2f00 : $04
	add a, d                                                  ; $2f01 : $82
	pop bc                                                  ; $2f02 : $c1
	sbc a, c                                                  ; $2f03 : $99
	and b                                                  ; $2f04 : $a0
	ld (hl), a                                                  ; $2f05 : $77
	call nz, $42a1                                                  ; $2f06 : $c4, $a1, $42
	dec d                                                  ; $2f09 : $15
	ld a, (bc)                                                  ; $2f0a : $0a
	ld (hl), c                                                  ; $2f0b : $71
	ld h, b                                                  ; $2f0c : $60
	ld e, b                                                  ; $2f0d : $58
	nop                                                  ; $2f0e : $00
	xor l                                                  ; $2f0f : $ad
	djnz br_07_2f12                                                  ; $2f10 : $10, $00

br_07_2f12:
	nop                                                  ; $2f12 : $00
	nop                                                  ; $2f13 : $00
	nop                                                  ; $2f14 : $00
	nop                                                  ; $2f15 : $00
	nop                                                  ; $2f16 : $00
	nop                                                  ; $2f17 : $00
	nop                                                  ; $2f18 : $00
	nop                                                  ; $2f19 : $00
	nop                                                  ; $2f1a : $00
	nop                                                  ; $2f1b : $00
	nop                                                  ; $2f1c : $00
	ld bc, $1000                                                  ; $2f1d : $01, $00, $10
	inc c                                                  ; $2f20 : $0c
	add a, d                                                  ; $2f21 : $82
	jp nz, $0099                                                  ; $2f22 : $c2, $99, $00
	ld (hl), a                                                  ; $2f25 : $77
	ld b, b                                                  ; $2f26 : $40
	and c                                                  ; $2f27 : $a1
	inc h                                                  ; $2f28 : $24
	dec d                                                  ; $2f29 : $15
	ld bc, $0071                                                  ; $2f2a : $01, $71, $00
	ld e, b                                                  ; $2f2d : $58
	jr z, br_07_2edd                                                  ; $2f2e : $28, $ad

	nop                                                  ; $2f30 : $00
	nop                                                  ; $2f31 : $00
	nop                                                  ; $2f32 : $00
	nop                                                  ; $2f33 : $00
	nop                                                  ; $2f34 : $00
	nop                                                  ; $2f35 : $00
	nop                                                  ; $2f36 : $00
	nop                                                  ; $2f37 : $00
	nop                                                  ; $2f38 : $00
	nop                                                  ; $2f39 : $00
	nop                                                  ; $2f3a : $00
	nop                                                  ; $2f3b : $00

br_07_2f3c:
	nop                                                  ; $2f3c : $00
	ld bc, $1000                                                  ; $2f3d : $01, $00, $10
	inc b                                                  ; $2f40 : $04
	add a, d                                                  ; $2f41 : $82
	djnz br_07_2edd                                                  ; $2f42 : $10, $99
	nop                                                  ; $2f44 : $00
	ld (hl), a                                                  ; $2f45 : $77
	inc b                                                  ; $2f46 : $04
	and c                                                  ; $2f47 : $a1
	and b                                                  ; $2f48 : $a0
	dec d                                                  ; $2f49 : $15
	nop                                                  ; $2f4a : $00
	ld (hl), c                                                  ; $2f4b : $71
	and b                                                  ; $2f4c : $a0
	ld e, b                                                  ; $2f4d : $58
	jr z, br_07_2efd                                                  ; $2f4e : $28, $ad

	nop                                                  ; $2f50 : $00
	nop                                                  ; $2f51 : $00
	nop                                                  ; $2f52 : $00
	nop                                                  ; $2f53 : $00
	nop                                                  ; $2f54 : $00
	nop                                                  ; $2f55 : $00
	nop                                                  ; $2f56 : $00
	nop                                                  ; $2f57 : $00
	nop                                                  ; $2f58 : $00
	nop                                                  ; $2f59 : $00
	nop                                                  ; $2f5a : $00
	nop                                                  ; $2f5b : $00
	nop                                                  ; $2f5c : $00

br_07_2f5d:
	ld bc, $1000                                                  ; $2f5d : $01, $00, $10
	inc c                                                  ; $2f60 : $0c
	add a, d                                                  ; $2f61 : $82
	ld (bc), a                                                  ; $2f62 : $02
	sbc a, c                                                  ; $2f63 : $99
	ld hl, $8077                                                  ; $2f64 : $21, $77, $80
	and c                                                  ; $2f67 : $a1
	nop                                                  ; $2f68 : $00
	dec d                                                  ; $2f69 : $15
	nop                                                  ; $2f6a : $00
	ld (hl), c                                                  ; $2f6b : $71
	jr nz, br_07_2fc6                                                  ; $2f6c : $20, $58

	jr z, br_07_2f98                                                  ; $2f6e : $28, $28

	nop                                                  ; $2f70 : $00
	nop                                                  ; $2f71 : $00
	nop                                                  ; $2f72 : $00
	nop                                                  ; $2f73 : $00
	nop                                                  ; $2f74 : $00
	nop                                                  ; $2f75 : $00
	nop                                                  ; $2f76 : $00
	nop                                                  ; $2f77 : $00
	nop                                                  ; $2f78 : $00
	nop                                                  ; $2f79 : $00
	nop                                                  ; $2f7a : $00
	nop                                                  ; $2f7b : $00
	nop                                                  ; $2f7c : $00

br_07_2f7d:
	ld bc, $1000                                                  ; $2f7d : $01, $00, $10
	inc b                                                  ; $2f80 : $04
	add a, d                                                  ; $2f81 : $82
	ld b, d                                                  ; $2f82 : $42
	sbc a, c                                                  ; $2f83 : $99
	xor b                                                  ; $2f84 : $a8
	ld (hl), a                                                  ; $2f85 : $77
	nop                                                  ; $2f86 : $00
	and c                                                  ; $2f87 : $a1
	nop                                                  ; $2f88 : $00
	dec d                                                  ; $2f89 : $15
	nop                                                  ; $2f8a : $00
	ld (hl), c                                                  ; $2f8b : $71
	nop                                                  ; $2f8c : $00
	ld e, b                                                  ; $2f8d : $58
	jr nz, br_07_2f3c                                                  ; $2f8e : $20, $ac

	nop                                                  ; $2f90 : $00
	nop                                                  ; $2f91 : $00
	nop                                                  ; $2f92 : $00
	nop                                                  ; $2f93 : $00
	nop                                                  ; $2f94 : $00
	nop                                                  ; $2f95 : $00
	nop                                                  ; $2f96 : $00
	nop                                                  ; $2f97 : $00

br_07_2f98:
	nop                                                  ; $2f98 : $00
	nop                                                  ; $2f99 : $00
	nop                                                  ; $2f9a : $00
	nop                                                  ; $2f9b : $00
	nop                                                  ; $2f9c : $00
	ld bc, $1000                                                  ; $2f9d : $01, $00, $10
	inc c                                                  ; $2fa0 : $0c
	add a, d                                                  ; $2fa1 : $82
	ld bc, $2999                                                  ; $2fa2 : $01, $99, $29
	ld (hl), a                                                  ; $2fa5 : $77
	inc c                                                  ; $2fa6 : $0c
	and c                                                  ; $2fa7 : $a1
	add a, b                                                  ; $2fa8 : $80
	dec d                                                  ; $2fa9 : $15
	ld bc, $0071                                                  ; $2faa : $01, $71, $00
	ld e, b                                                  ; $2fad : $58
	jr nz, br_07_2f5d                                                  ; $2fae : $20, $ad

	nop                                                  ; $2fb0 : $00
	nop                                                  ; $2fb1 : $00
	nop                                                  ; $2fb2 : $00
	nop                                                  ; $2fb3 : $00
	nop                                                  ; $2fb4 : $00
	nop                                                  ; $2fb5 : $00
	nop                                                  ; $2fb6 : $00
	nop                                                  ; $2fb7 : $00
	nop                                                  ; $2fb8 : $00
	nop                                                  ; $2fb9 : $00
	nop                                                  ; $2fba : $00
	nop                                                  ; $2fbb : $00
	nop                                                  ; $2fbc : $00
	ld bc, $1000                                                  ; $2fbd : $01, $00, $10
	nop                                                  ; $2fc0 : $00
	add a, d                                                  ; $2fc1 : $82
	djnz br_07_2f5d                                                  ; $2fc2 : $10, $99
	jr nz, br_07_303d                                                  ; $2fc4 : $20, $77

br_07_2fc6:
	call nz, $00a1                                                  ; $2fc6 : $c4, $a1, $00
	dec d                                                  ; $2fc9 : $15
	ex af, af'                                                  ; $2fca : $08
	ld (hl), c                                                  ; $2fcb : $71
	add a, d                                                  ; $2fcc : $82
	ld e, b                                                  ; $2fcd : $58
	ld hl, ($00ad)                                                  ; $2fce : $2a, $ad, $00
	nop                                                  ; $2fd1 : $00
	nop                                                  ; $2fd2 : $00
	nop                                                  ; $2fd3 : $00
	nop                                                  ; $2fd4 : $00
	nop                                                  ; $2fd5 : $00
	nop                                                  ; $2fd6 : $00
	nop                                                  ; $2fd7 : $00
	nop                                                  ; $2fd8 : $00
	nop                                                  ; $2fd9 : $00
	nop                                                  ; $2fda : $00
	nop                                                  ; $2fdb : $00
	nop                                                  ; $2fdc : $00
	ld bc, $1000                                                  ; $2fdd : $01, $00, $10
	nop                                                  ; $2fe0 : $00
	ld (bc), a                                                  ; $2fe1 : $02
	jr br_07_2f7d                                                  ; $2fe2 : $18, $99

	nop                                                  ; $2fe4 : $00
	ld (hl), a                                                  ; $2fe5 : $77
	inc b                                                  ; $2fe6 : $04
	and c                                                  ; $2fe7 : $a1
	nop                                                  ; $2fe8 : $00
	dec d                                                  ; $2fe9 : $15
	nop                                                  ; $2fea : $00
	ld (hl), c                                                  ; $2feb : $71
	jr nz, br_07_3006                                                  ; $2fec : $20, $18

	ld hl, ($00ad)                                                  ; $2fee : $2a, $ad, $00
	nop                                                  ; $2ff1 : $00
	nop                                                  ; $2ff2 : $00
	nop                                                  ; $2ff3 : $00
	nop                                                  ; $2ff4 : $00
	nop                                                  ; $2ff5 : $00
	nop                                                  ; $2ff6 : $00
	nop                                                  ; $2ff7 : $00
	nop                                                  ; $2ff8 : $00
	nop                                                  ; $2ff9 : $00
	nop                                                  ; $2ffa : $00
	nop                                                  ; $2ffb : $00
	nop                                                  ; $2ffc : $00
	ld bc, $1000                                                  ; $2ffd : $01, $00, $10
	ret po                                                  ; $3000 : $e0

	ld l, b                                                  ; $3001 : $68
	ret po                                                  ; $3002 : $e0

	ld (hl), a                                                  ; $3003 : $77
	ret po                                                  ; $3004 : $e0

	ld a, e                                                  ; $3005 : $7b

br_07_3006:
	ret po                                                  ; $3006 : $e0

	ld a, a                                                  ; $3007 : $7f
	ret po                                                  ; $3008 : $e0

	add a, (hl)                                                  ; $3009 : $86
	ld c, $00                                                  ; $300a : $0e, $00
	ret po                                                  ; $300c : $e0

	adc a, (hl)                                                  ; $300d : $8e
	ret po                                                  ; $300e : $e0

	sub l                                                  ; $300f : $95
	ret po                                                  ; $3010 : $e0

	and e                                                  ; $3011 : $a3
	ret po                                                  ; $3012 : $e0

	xor a                                                  ; $3013 : $af
	ret po                                                  ; $3014 : $e0

	or b                                                  ; $3015 : $b0
	ret po                                                  ; $3016 : $e0

Jump_07_3017:
	cp c                                                  ; $3017 : $b9
	ret po                                                  ; $3018 : $e0

Call_07_3019:
	ret                                                  ; $3019 : $c9


	dec e                                                  ; $301a : $1d
	nop                                                  ; $301b : $00
	pop hl                                                  ; $301c : $e1
	ld (bc), a                                                  ; $301d : $02
	pop hl                                                  ; $301e : $e1
	rlca                                                  ; $301f : $07
	pop hl                                                  ; $3020 : $e1
	ld a, (bc)                                                  ; $3021 : $0a
	pop hl                                                  ; $3022 : $e1
	inc c                                                  ; $3023 : $0c
	jr nz, br_07_3026                                                  ; $3024 : $20, $00

br_07_3026:
	pop hl                                                  ; $3026 : $e1
	ld e, $e1                                                  ; $3027 : $1e, $e1
	ld ($31e1), hl                                                  ; $3029 : $22, $e1, $31
	pop hl                                                  ; $302c : $e1
	ld (hl), $e1                                                  ; $302d : $36, $e1
	ld a, $e1                                                  ; $302f : $3e, $e1
	ld c, c                                                  ; $3031 : $49
	pop hl                                                  ; $3032 : $e1
	ld e, d                                                  ; $3033 : $5a
	pop hl                                                  ; $3034 : $e1
	ld e, l                                                  ; $3035 : $5d
	pop hl                                                  ; $3036 : $e1
	ld (hl), c                                                  ; $3037 : $71
	pop hl                                                  ; $3038 : $e1
	ld (hl), d                                                  ; $3039 : $72
	pop hl                                                  ; $303a : $e1
	ld a, a                                                  ; $303b : $7f
	pop hl                                                  ; $303c : $e1

br_07_303d:
	sub c                                                  ; $303d : $91
	pop hl                                                  ; $303e : $e1
	sub a                                                  ; $303f : $97
	pop hl                                                  ; $3040 : $e1
	sbc a, l                                                  ; $3041 : $9d
	pop hl                                                  ; $3042 : $e1
	xor d                                                  ; $3043 : $aa
	pop hl                                                  ; $3044 : $e1
	xor a                                                  ; $3045 : $af
	daa                                                  ; $3046 : $27
	nop                                                  ; $3047 : $00
	pop hl                                                  ; $3048 : $e1
	cp e                                                  ; $3049 : $bb
	pop hl                                                  ; $304a : $e1
	ret nz                                                  ; $304b : $c0

	pop hl                                                  ; $304c : $e1
	ret c                                                  ; $304d : $d8

	pop hl                                                  ; $304e : $e1
	ei                                                  ; $304f : $fb
	jp po, $e205                                                  ; $3050 : $e2, $05, $e2
	ld b, $e2                                                  ; $3053 : $06, $e2
	inc de                                                  ; $3055 : $13
	jp po, $e227                                                  ; $3056 : $e2, $27, $e2
	ld h, l                                                  ; $3059 : $65
	jp po, $e299                                                  ; $305a : $e2, $99, $e2
	sbc a, h                                                  ; $305d : $9c
	inc sp                                                  ; $305e : $33
	nop                                                  ; $305f : $00
	inc (hl)                                                  ; $3060 : $34
	nop                                                  ; $3061 : $00
	jp po, $e2c1                                                  ; $3062 : $e2, $c1, $e2
	push bc                                                  ; $3065 : $c5
	jp po, $e2c6                                                  ; $3066 : $e2, $c6, $e2
	ret z                                                  ; $3069 : $c8

	jp po, $e2ca                                                  ; $306a : $e2, $ca, $e2
	call z, Call_07_1ee3                                                  ; $306d : $cc, $e3, $1e
	ex (sp), hl                                                  ; $3070 : $e3
	ld ($31e3), hl                                                  ; $3071 : $22, $e3, $31
	ex (sp), hl                                                  ; $3074 : $e3
	ld b, e                                                  ; $3075 : $43
	ex (sp), hl                                                  ; $3076 : $e3
	ld b, l                                                  ; $3077 : $45
	ex (sp), hl                                                  ; $3078 : $e3
	ld c, c                                                  ; $3079 : $49
	ld a, ($e300)                                                  ; $307a : $3a, $00, $e3
	ld d, c                                                  ; $307d : $51
	ex (sp), hl                                                  ; $307e : $e3
	ld l, b                                                  ; $307f : $68
	ex (sp), hl                                                  ; $3080 : $e3
	ld l, l                                                  ; $3081 : $6d
	ex (sp), hl                                                  ; $3082 : $e3
	ld a, l                                                  ; $3083 : $7d
	ex (sp), hl                                                  ; $3084 : $e3
	add a, h                                                  ; $3085 : $84
	ex (sp), hl                                                  ; $3086 : $e3
	add a, l                                                  ; $3087 : $85
	ex (sp), hl                                                  ; $3088 : $e3
	and d                                                  ; $3089 : $a2
	ex (sp), hl                                                  ; $308a : $e3
	xor (hl)                                                  ; $308b : $ae
	ex (sp), hl                                                  ; $308c : $e3
	cp d                                                  ; $308d : $ba
	ex (sp), hl                                                  ; $308e : $e3
	call $dae3                                                  ; $308f : $cd, $e3, $da
	ex (sp), hl                                                  ; $3092 : $e3
	in a, ($e3)                                                  ; $3093 : $db, $e3
	rst $28                                                  ; $3095 : $ef
	ex (sp), hl                                                  ; $3096 : $e3
	ret m                                                  ; $3097 : $f8

	ld b, h                                                  ; $3098 : $44
	nop                                                  ; $3099 : $00
	ld b, l                                                  ; $309a : $45
	nop                                                  ; $309b : $00
	call po, $e441                                                  ; $309c : $e4, $41, $e4
	adc a, l                                                  ; $309f : $8d
	call po, $e48f                                                  ; $30a0 : $e4, $8f, $e4
	sub c                                                  ; $30a3 : $91
	call po, $e496                                                  ; $30a4 : $e4, $96, $e4
	sbc a, b                                                  ; $30a7 : $98
	call po, $e4a2                                                  ; $30a8 : $e4, $a2, $e4
	or h                                                  ; $30ab : $b4
	call po, $e4b8                                                  ; $30ac : $e4, $b8, $e4
	rst $00                                                  ; $30af : $c7
	ld c, (hl)                                                  ; $30b0 : $4e
	nop                                                  ; $30b1 : $00
	call po, $e4ca                                                  ; $30b2 : $e4, $ca, $e4
	adc a, $e4                                                  ; $30b5 : $ce, $e4
	pop de                                                  ; $30b7 : $d1
	call po, $e4d9                                                  ; $30b8 : $e4, $d9, $e4
	.db $dd                                                  ; $30bb : $dd
	call po, $e4e0                                                  ; $30bc : $e4, $e0, $e4
	ex (sp), hl                                                  ; $30bf : $e3
	ld d, e                                                  ; $30c0 : $53
	nop                                                  ; $30c1 : $00
	call po, $e5ed                                                  ; $30c2 : $e4, $ed, $e5
	inc b                                                  ; $30c5 : $04
	push hl                                                  ; $30c6 : $e5
	ld de, $13e5                                                  ; $30c7 : $11, $e5, $13
	push hl                                                  ; $30ca : $e5
	ld d, $58                                                  ; $30cb : $16, $58
	nop                                                  ; $30cd : $00
	push hl                                                  ; $30ce : $e5
	ld ($35e5), a                                                  ; $30cf : $32, $e5, $35
	push hl                                                  ; $30d2 : $e5
	ld d, h                                                  ; $30d3 : $54
	push hl                                                  ; $30d4 : $e5
	ld h, e                                                  ; $30d5 : $63
	push hl                                                  ; $30d6 : $e5
	ld h, h                                                  ; $30d7 : $64
	push hl                                                  ; $30d8 : $e5
	ld h, (hl)                                                  ; $30d9 : $66
	push hl                                                  ; $30da : $e5
	ld l, c                                                  ; $30db : $69
	push hl                                                  ; $30dc : $e5
	ld (hl), e                                                  ; $30dd : $73
	push hl                                                  ; $30de : $e5
	ld (hl), h                                                  ; $30df : $74
	push hl                                                  ; $30e0 : $e5
	sub (hl)                                                  ; $30e1 : $96
	push hl                                                  ; $30e2 : $e5
	sbc a, b                                                  ; $30e3 : $98
	push hl                                                  ; $30e4 : $e5
	jp nz, $c8e5                                                  ; $30e5 : $c2, $e5, $c8
	push hl                                                  ; $30e8 : $e5
	jp z, $dbe5                                                  ; $30e9 : $ca, $e5, $db
	push hl                                                  ; $30ec : $e5
	ret po                                                  ; $30ed : $e0

	push hl                                                  ; $30ee : $e5
	xor $62                                                  ; $30ef : $ee, $62
	nop                                                  ; $30f1 : $00
	and $19                                                  ; $30f2 : $e6, $19
	and $28                                                  ; $30f4 : $e6, $28
	ld l, b                                                  ; $30f6 : $68
	nop                                                  ; $30f7 : $00
	and $6c                                                  ; $30f8 : $e6, $6c
	and $6d                                                  ; $30fa : $e6, $6d
	and $77                                                  ; $30fc : $e6, $77
	ld (hl), e                                                  ; $30fe : $73
	nop                                                  ; $30ff : $00
	ld (hl), l                                                  ; $3100 : $75
	nop                                                  ; $3101 : $00
	and $90                                                  ; $3102 : $e6, $90
	and $bb                                                  ; $3104 : $e6, $bb
	and $c2                                                  ; $3106 : $e6, $c2
	and $d4                                                  ; $3108 : $e6, $d4
	and $f0                                                  ; $310a : $e6, $f0
	ld a, b                                                  ; $310c : $78
	nop                                                  ; $310d : $00
	and $fa                                                  ; $310e : $e6, $fa
	and $fb                                                  ; $3110 : $e6, $fb
	rst $20                                                  ; $3112 : $e7
	ld b, $e7                                                  ; $3113 : $06, $e7
	ld c, $e7                                                  ; $3115 : $0e, $e7
	ld d, $e7                                                  ; $3117 : $16, $e7
	jr nz, $7b                                                  ; $3119 : $20, $7b

	nop                                                  ; $311b : $00
	rst $20                                                  ; $311c : $e7
	inc sp                                                  ; $311d : $33
	rst $20                                                  ; $311e : $e7
	adc a, h                                                  ; $311f : $8c
	rst $20                                                  ; $3120 : $e7
	sbc a, c                                                  ; $3121 : $99
	rst $20                                                  ; $3122 : $e7
	sbc a, l                                                  ; $3123 : $9d
	rst $20                                                  ; $3124 : $e7
	and a                                                  ; $3125 : $a7
	ret pe                                                  ; $3126 : $e8

	dec bc                                                  ; $3127 : $0b
	add a, (hl)                                                  ; $3128 : $86
	nop                                                  ; $3129 : $00
	add a, a                                                  ; $312a : $87
	nop                                                  ; $312b : $00
	adc a, c                                                  ; $312c : $89
	nop                                                  ; $312d : $00
	ret pe                                                  ; $312e : $e8

	ld c, a                                                  ; $312f : $4f
	ret pe                                                  ; $3130 : $e8

	ld d, (hl)                                                  ; $3131 : $56
	ret pe                                                  ; $3132 : $e8

	ld e, c                                                  ; $3133 : $59
	ret pe                                                  ; $3134 : $e8

	ld a, e                                                  ; $3135 : $7b
	ret pe                                                  ; $3136 : $e8

	ld a, a                                                  ; $3137 : $7f
	ret pe                                                  ; $3138 : $e8

	add a, c                                                  ; $3139 : $81
	ret pe                                                  ; $313a : $e8

	add a, d                                                  ; $313b : $82
	ret pe                                                  ; $313c : $e8

	adc a, d                                                  ; $313d : $8a
	adc a, (hl)                                                  ; $313e : $8e
	nop                                                  ; $313f : $00
	ret pe                                                  ; $3140 : $e8

	sbc a, h                                                  ; $3141 : $9c
	sub c                                                  ; $3142 : $91
	nop                                                  ; $3143 : $00
	ret pe                                                  ; $3144 : $e8

	or (hl)                                                  ; $3145 : $b6

br_07_3146:
	sub l                                                  ; $3146 : $95
	nop                                                  ; $3147 : $00
	ret pe                                                  ; $3148 : $e8

	add a, $e8                                                  ; $3149 : $c6, $e8
	rst $08                                                  ; $314b : $cf
	ret pe                                                  ; $314c : $e8

	out ($e8), a                                                  ; $314d : $d3, $e8
	call c, $dde8                                                  ; $314f : $dc, $e8, $dd
	ret pe                                                  ; $3152 : $e8

	xor $e8                                                  ; $3153 : $ee, $e8
	pop af                                                  ; $3155 : $f1
	jp (hl)                                                  ; $3156 : $e9


	ld d, $e9                                                  ; $3157 : $16, $e9
	rla                                                  ; $3159 : $17
	jp (hl)                                                  ; $315a : $e9


	jr z, br_07_3146                                                  ; $315b : $28, $e9

	ld c, b                                                  ; $315d : $48
	jp (hl)                                                  ; $315e : $e9


	ld l, b                                                  ; $315f : $68
	jp (hl)                                                  ; $3160 : $e9


	ld (hl), d                                                  ; $3161 : $72
	jp (hl)                                                  ; $3162 : $e9


	ld (hl), a                                                  ; $3163 : $77
	jp (hl)                                                  ; $3164 : $e9


	adc a, b                                                  ; $3165 : $88
	jp (hl)                                                  ; $3166 : $e9


	sub d                                                  ; $3167 : $92
	jp (hl)                                                  ; $3168 : $e9


	xor (hl)                                                  ; $3169 : $ae
	jp (hl)                                                  ; $316a : $e9


	or e                                                  ; $316b : $b3
	jp (hl)                                                  ; $316c : $e9


	cp (hl)                                                  ; $316d : $be
	jp (hl)                                                  ; $316e : $e9


	jp $c6e9                                                  ; $316f : $c3, $e9, $c6


	jp (hl)                                                  ; $3172 : $e9


	sub $e9                                                  ; $3173 : $d6, $e9
	exx                                                  ; $3175 : $d9
	jp (hl)                                                  ; $3176 : $e9


	rst $38                                                  ; $3177 : $ff
	jp pe, $ea13                                                  ; $3178 : $ea, $13, $ea
	add hl, de                                                  ; $317b : $19
	jp pe, $ea20                                                  ; $317c : $ea, $20, $ea
	ld ($25ea), hl                                                  ; $317f : $22, $ea, $25
	jp pe, $ea9c                                                  ; $3182 : $ea, $9c, $ea
	and c                                                  ; $3185 : $a1
	and (hl)                                                  ; $3186 : $a6
	nop                                                  ; $3187 : $00
	jp pe, $eab7                                                  ; $3188 : $ea, $b7, $ea
	push bc                                                  ; $318b : $c5
	jp pe, $eac6                                                  ; $318c : $ea, $c6, $ea
	sub $eb                                                  ; $318f : $d6, $eb
	dec bc                                                  ; $3191 : $0b
	ex de, hl                                                  ; $3192 : $eb
	add hl, hl                                                  ; $3193 : $29
	ex de, hl                                                  ; $3194 : $eb
	ld a, $eb                                                  ; $3195 : $3e, $eb
	ld b, h                                                  ; $3197 : $44
	ex de, hl                                                  ; $3198 : $eb
	ld d, b                                                  ; $3199 : $50
	ex de, hl                                                  ; $319a : $eb
	ld d, e                                                  ; $319b : $53
	ex de, hl                                                  ; $319c : $eb
	ld a, c                                                  ; $319d : $79
	ex de, hl                                                  ; $319e : $eb
	adc a, d                                                  ; $319f : $8a
	ex de, hl                                                  ; $31a0 : $eb
	adc a, e                                                  ; $31a1 : $8b
	ex de, hl                                                  ; $31a2 : $eb
	sbc a, b                                                  ; $31a3 : $98
	ex de, hl                                                  ; $31a4 : $eb
	sbc a, h                                                  ; $31a5 : $9c
	ex de, hl                                                  ; $31a6 : $eb
	xor c                                                  ; $31a7 : $a9
	xor c                                                  ; $31a8 : $a9
	nop                                                  ; $31a9 : $00
	xor e                                                  ; $31aa : $ab
	nop                                                  ; $31ab : $00
	ex de, hl                                                  ; $31ac : $eb
	call z, $ddeb                                                  ; $31ad : $cc, $eb, $dd
	ex de, hl                                                  ; $31b0 : $eb
	ret po                                                  ; $31b1 : $e0

	xor (hl)                                                  ; $31b2 : $ae
	nop                                                  ; $31b3 : $00
	call pe, $ec06                                                  ; $31b4 : $ec, $06, $ec
	ld hl, ($2dec)                                                  ; $31b7 : $2a, $ec, $2d
	call pe, $ec31                                                  ; $31ba : $ec, $31, $ec
	ld h, l                                                  ; $31bd : $65
	call pe, $ec6a                                                  ; $31be : $ec, $6a, $ec
	ld a, h                                                  ; $31c1 : $7c
	or d                                                  ; $31c2 : $b2
	nop                                                  ; $31c3 : $00
	call pe, $ecc2                                                  ; $31c4 : $ec, $c2, $ec
	call nz, $d9ec                                                  ; $31c7 : $c4, $ec, $d9
	call pe, $edeb                                                  ; $31ca : $ec, $eb, $ed
	inc e                                                  ; $31cd : $1c
	.db $ed                                                  ; $31ce : $ed
	ld hl, ($2ded)                                                  ; $31cf : $2a, $ed, $2d
	.db $ed                                                  ; $31d2 : $ed
	scf                                                  ; $31d3 : $37
	.db $ed                                                  ; $31d4 : $ed
	ccf                                                  ; $31d5 : $3f
	out (c), c                                                  ; $31d6 : $ed, $49
	ld bc, ($66ed)                                                  ; $31d8 : $ed, $4b, $ed, $66
	.db $ed                                                  ; $31dc : $ed
	ld a, a                                                  ; $31dd : $7f
	jp nz, $ed00                                                  ; $31de : $c2, $00, $ed
	sub e                                                  ; $31e1 : $93
	push bc                                                  ; $31e2 : $c5
	nop                                                  ; $31e3 : $00
	.db $ed                                                  ; $31e4 : $ed
	sbc a, b                                                  ; $31e5 : $98
	.db $ed                                                  ; $31e6 : $ed
	sbc a, d                                                  ; $31e7 : $9a
	rst $00                                                  ; $31e8 : $c7
	nop                                                  ; $31e9 : $00
	ret                                                  ; $31ea : $c9


	nop                                                  ; $31eb : $00
	jp nc, $ed00                                                  ; $31ec : $d2, $00, $ed
	rst $10                                                  ; $31ef : $d7
	.db $ed                                                  ; $31f0 : $ed
	ret pe                                                  ; $31f1 : $e8

	ret c                                                  ; $31f2 : $d8

	nop                                                  ; $31f3 : $00
	.db $ed                                                  ; $31f4 : $ed
	di                                                  ; $31f5 : $f3
	exx                                                  ; $31f6 : $d9
	nop                                                  ; $31f7 : $00
	xor $0b                                                  ; $31f8 : $ee, $0b
	xor $13                                                  ; $31fa : $ee, $13
	xor $1b                                                  ; $31fc : $ee, $1b
	xor $22                                                  ; $31fe : $ee, $22
	dec c                                                  ; $3200 : $0d
	nop                                                  ; $3201 : $00
	ret po                                                  ; $3202 : $e0

	adc a, l                                                  ; $3203 : $8d
	djnz br_07_3206                                                  ; $3204 : $10, $00

br_07_3206:
	ret po                                                  ; $3206 : $e0

	sub a                                                  ; $3207 : $97
	ret po                                                  ; $3208 : $e0

	sbc a, d                                                  ; $3209 : $9a
	ret po                                                  ; $320a : $e0

	sbc a, l                                                  ; $320b : $9d
	ret po                                                  ; $320c : $e0

	xor (hl)                                                  ; $320d : $ae
	ret po                                                  ; $320e : $e0

	or h                                                  ; $320f : $b4
	ld (de), a                                                  ; $3210 : $12
	nop                                                  ; $3211 : $00
	ret po                                                  ; $3212 : $e0

	cp d                                                  ; $3213 : $ba
	ret po                                                  ; $3214 : $e0

	cp l                                                  ; $3215 : $bd
	ret po                                                  ; $3216 : $e0

	push bc                                                  ; $3217 : $c5
	ret po                                                  ; $3218 : $e0

	rst $00                                                  ; $3219 : $c7
	dec d                                                  ; $321a : $15
	nop                                                  ; $321b : $00
	ret po                                                  ; $321c : $e0

	call z, Call_07_0017                                                  ; $321d : $cc, $17, $00
	ret po                                                  ; $3220 : $e0

	sbc a, $e0                                                  ; $3221 : $de, $e0
	pop hl                                                  ; $3223 : $e1
	ret po                                                  ; $3224 : $e0

	xor $e0                                                  ; $3225 : $ee, $e0
	ret m                                                  ; $3227 : $f8

	pop hl                                                  ; $3228 : $e1
	add hl, de                                                  ; $3229 : $19
	pop hl                                                  ; $322a : $e1
	ld l, $e1                                                  ; $322b : $2e, $e1
	cpl                                                  ; $322d : $2f

Jump_07_322e:
	pop hl                                                  ; $322e : $e1
	ld d, (hl)                                                  ; $322f : $56
	pop hl                                                  ; $3230 : $e1
	ld h, b                                                  ; $3231 : $60
	pop hl                                                  ; $3232 : $e1
	ld l, d                                                  ; $3233 : $6a
	pop hl                                                  ; $3234 : $e1
	ld a, c                                                  ; $3235 : $79
	pop hl                                                  ; $3236 : $e1
	ld a, e                                                  ; $3237 : $7b
	pop hl                                                  ; $3238 : $e1
	ld a, h                                                  ; $3239 : $7c
	pop hl                                                  ; $323a : $e1
	ld a, (hl)                                                  ; $323b : $7e
	pop hl                                                  ; $323c : $e1
	add a, (hl)                                                  ; $323d : $86
	pop hl                                                  ; $323e : $e1
	adc a, h                                                  ; $323f : $8c
	pop hl                                                  ; $3240 : $e1
	sbc a, e                                                  ; $3241 : $9b
	pop hl                                                  ; $3242 : $e1
	and h                                                  ; $3243 : $a4
	pop hl                                                  ; $3244 : $e1
	cp c                                                  ; $3245 : $b9
	pop hl                                                  ; $3246 : $e1
	cp h                                                  ; $3247 : $bc
	pop hl                                                  ; $3248 : $e1
	call nz, Call_07_0028                                                  ; $3249 : $c4, $28, $00
	pop hl                                                  ; $324c : $e1
	rst $10                                                  ; $324d : $d7
	add hl, hl                                                  ; $324e : $29
	nop                                                  ; $324f : $00
	jp po, $e203                                                  ; $3250 : $e2, $03, $e2
	inc d                                                  ; $3253 : $14
	jp po, Jump_07_3017                                                  ; $3254 : $e2, $17, $30
	nop                                                  ; $3257 : $00
	ld sp, $e200                                                  ; $3258 : $31, $00, $e2
	add hl, sp                                                  ; $325b : $39
	jp po, $e23d                                                  ; $325c : $e2, $3d, $e2
	ccf                                                  ; $325f : $3f
	jp po, $e251                                                  ; $3260 : $e2, $51, $e2
	ld l, b                                                  ; $3263 : $68
	jp po, $e26c                                                  ; $3264 : $e2, $6c, $e2
	add a, c                                                  ; $3267 : $81
	jp po, Jump_07_328f                                                  ; $3268 : $e2, $8f, $32
	nop                                                  ; $326b : $00
	jp po, $e29d                                                  ; $326c : $e2, $9d, $e2
	xor c                                                  ; $326f : $a9

br_07_3270:
	jp po, $e2ba                                                  ; $3270 : $e2, $ba, $e2
	ret                                                  ; $3273 : $c9


	jp po, $e2d3                                                  ; $3274 : $e2, $d3, $e2
	rst $18                                                  ; $3277 : $df
	jp po, $e2e4                                                  ; $3278 : $e2, $e4, $e2
	ex de, hl                                                  ; $327b : $eb
	jp po, $e2f5                                                  ; $327c : $e2, $f5, $e2
	jp m, $03e3                                                  ; $327f : $fa, $e3, $03
	ex (sp), hl                                                  ; $3282 : $e3
	dec b                                                  ; $3283 : $05
	ex (sp), hl                                                  ; $3284 : $e3
	dec bc                                                  ; $3285 : $0b
	ex (sp), hl                                                  ; $3286 : $e3
	ld hl, $23e3                                                  ; $3287 : $21, $e3, $23
	ex (sp), hl                                                  ; $328a : $e3
	jr nc, br_07_3270                                                  ; $328b : $30, $e3

	jr c, -$1d                                                  ; $328d : $38, $e3

Jump_07_328f:
	ld c, h                                                  ; $328f : $4c
	dec sp                                                  ; $3290 : $3b
	nop                                                  ; $3291 : $00
	ex (sp), hl                                                  ; $3292 : $e3
	ld d, a                                                  ; $3293 : $57
	ex (sp), hl                                                  ; $3294 : $e3
	ld l, d                                                  ; $3295 : $6a
	ex (sp), hl                                                  ; $3296 : $e3
	ld (hl), a                                                  ; $3297 : $77
	ex (sp), hl                                                  ; $3298 : $e3
	sub c                                                  ; $3299 : $91
	ex (sp), hl                                                  ; $329a : $e3
	xor b                                                  ; $329b : $a8
	ex (sp), hl                                                  ; $329c : $e3
	xor h                                                  ; $329d : $ac
	ex (sp), hl                                                  ; $329e : $e3
	ret nc                                                  ; $329f : $d0

	ex (sp), hl                                                  ; $32a0 : $e3
	di                                                  ; $32a1 : $f3
	call po, $e403                                                  ; $32a2 : $e4, $03, $e4
	add hl, bc                                                  ; $32a5 : $09
	call po, $e40a                                                  ; $32a6 : $e4, $0a, $e4
	dec c                                                  ; $32a9 : $0d
	call po, $e411                                                  ; $32aa : $e4, $11, $e4
	ld ($2ee4), hl                                                  ; $32ad : $22, $e4, $2e
	call po, $e434                                                  ; $32b0 : $e4, $34, $e4
	ld (hl), $48                                                  ; $32b3 : $36, $48
	nop                                                  ; $32b5 : $00
	call po, $493e                                                  ; $32b6 : $e4, $3e, $49
	nop                                                  ; $32b9 : $00
	call po, $e452                                                  ; $32ba : $e4, $52, $e4
	ld d, (hl)                                                  ; $32bd : $56
	ld c, e                                                  ; $32be : $4b
	nop                                                  ; $32bf : $00
	call po, $e467                                                  ; $32c0 : $e4, $67, $e4
	ld l, e                                                  ; $32c3 : $6b
	call po, $e480                                                  ; $32c4 : $e4, $80, $e4
	sub l                                                  ; $32c7 : $95
	call po, $e49e                                                  ; $32c8 : $e4, $9e, $e4
	xor d                                                  ; $32cb : $aa
	call po, $e4af                                                  ; $32cc : $e4, $af, $e4
	add a, $50                                                  ; $32cf : $c6, $50
	nop                                                  ; $32d1 : $00
	call po, $e4eb                                                  ; $32d2 : $e4, $eb, $e4
	rst $30                                                  ; $32d5 : $f7
	ld d, h                                                  ; $32d6 : $54
	nop                                                  ; $32d7 : $00
	push hl                                                  ; $32d8 : $e5
	dec b                                                  ; $32d9 : $05
	push hl                                                  ; $32da : $e5
	ld c, $e5                                                  ; $32db : $0e, $e5
	dec de                                                  ; $32dd : $1b
	push hl                                                  ; $32de : $e5
	rra                                                  ; $32df : $1f
	push hl                                                  ; $32e0 : $e5
	ld ($23e5), hl                                                  ; $32e1 : $22, $e5, $23
	push hl                                                  ; $32e4 : $e5
	inc h                                                  ; $32e5 : $24
	push hl                                                  ; $32e6 : $e5
	jr z, br_07_3342                                                  ; $32e7 : $28, $59

	nop                                                  ; $32e9 : $00
	push hl                                                  ; $32ea : $e5
	ld d, c                                                  ; $32eb : $51
	push hl                                                  ; $32ec : $e5
	ld d, a                                                  ; $32ed : $57
	push hl                                                  ; $32ee : $e5
	ld e, e                                                  ; $32ef : $5b
	push hl                                                  ; $32f0 : $e5
	ld l, d                                                  ; $32f1 : $6a
	push hl                                                  ; $32f2 : $e5
	ld a, a                                                  ; $32f3 : $7f
	push hl                                                  ; $32f4 : $e5
	add a, l                                                  ; $32f5 : $85
	push hl                                                  ; $32f6 : $e5
	xor e                                                  ; $32f7 : $ab
	push hl                                                  ; $32f8 : $e5
	or d                                                  ; $32f9 : $b2
	push hl                                                  ; $32fa : $e5
	cp b                                                  ; $32fb : $b8
	push hl                                                  ; $32fc : $e5
	cp a                                                  ; $32fd : $bf
	ld e, l                                                  ; $32fe : $5d
	nop                                                  ; $32ff : $00
	push hl                                                  ; $3300 : $e5
	ret nc                                                  ; $3301 : $d0

	and $21                                                  ; $3302 : $e6, $21
	and $4d                                                  ; $3304 : $e6, $4d
	and $53                                                  ; $3306 : $e6, $53
	and $58                                                  ; $3308 : $e6, $58
	and $64                                                  ; $330a : $e6, $64
	ld (hl), c                                                  ; $330c : $71
	nop                                                  ; $330d : $00
	and $7b                                                  ; $330e : $e6, $7b
	and $7c                                                  ; $3310 : $e6, $7c
	and $83                                                  ; $3312 : $e6, $83
	and $86                                                  ; $3314 : $e6, $86
	and $ba                                                  ; $3316 : $e6, $ba
	and $bc                                                  ; $3318 : $e6, $bc
	and $c5                                                  ; $331a : $e6, $c5
	and $c6                                                  ; $331c : $e6, $c6
	and $d3                                                  ; $331e : $e6, $d3
	and $e2                                                  ; $3320 : $e6, $e2
	rst $20                                                  ; $3322 : $e7
	rlca                                                  ; $3323 : $07
	rst $20                                                  ; $3324 : $e7
	inc c                                                  ; $3325 : $0c
	rst $20                                                  ; $3326 : $e7
	djnz $7c                                                  ; $3327 : $10, $7c
	nop                                                  ; $3329 : $00
	ld a, l                                                  ; $332a : $7d
	nop                                                  ; $332b : $00
	rst $20                                                  ; $332c : $e7
	ld c, e                                                  ; $332d : $4b
	rst $20                                                  ; $332e : $e7

br_07_332f:
	ld e, a                                                  ; $332f : $5f
	rst $20                                                  ; $3330 : $e7
	add a, b                                                  ; $3331 : $80
	rst $20                                                  ; $3332 : $e7
	add a, a                                                  ; $3333 : $87
	add a, d                                                  ; $3334 : $82
	nop                                                  ; $3335 : $00
	rst $20                                                  ; $3336 : $e7
	call nz, $cfe7                                                  ; $3337 : $c4, $e7, $cf
	add a, e                                                  ; $333a : $83
	nop                                                  ; $333b : $00
	rst $20                                                  ; $333c : $e7
	in a, ($e7)                                                  ; $333d : $db, $e7
	push af                                                  ; $333f : $f5
	ret pe                                                  ; $3340 : $e8

	inc d                                                  ; $3341 : $14

br_07_3342:
	ret pe                                                  ; $3342 : $e8

	dec d                                                  ; $3343 : $15
	ret pe                                                  ; $3344 : $e8

	jr br_07_332f                                                  ; $3345 : $18, $e8

	ld ($008b), a                                                  ; $3347 : $32, $8b, $00
	ret pe                                                  ; $334a : $e8

	ld h, e                                                  ; $334b : $63
	ret pe                                                  ; $334c : $e8

	ld (hl), e                                                  ; $334d : $73
	ret pe                                                  ; $334e : $e8

	halt                                                  ; $334f : $76
	ret pe                                                  ; $3350 : $e8

	sub l                                                  ; $3351 : $95
	ret pe                                                  ; $3352 : $e8

	sbc a, e                                                  ; $3353 : $9b
	ret pe                                                  ; $3354 : $e8

	sbc a, a                                                  ; $3355 : $9f
	ret pe                                                  ; $3356 : $e8

	and d                                                  ; $3357 : $a2
	ret pe                                                  ; $3358 : $e8

	xor b                                                  ; $3359 : $a8
	ret pe                                                  ; $335a : $e8

	xor h                                                  ; $335b : $ac
	ret pe                                                  ; $335c : $e8

	cp h                                                  ; $335d : $bc
	ret pe                                                  ; $335e : $e8

	pop de                                                  ; $335f : $d1
	ret pe                                                  ; $3360 : $e8

	call nc, $dfe8                                                  ; $3361 : $d4, $e8, $df
	ret pe                                                  ; $3364 : $e8

	and $e8                                                  ; $3365 : $e6, $e8
	rst $28                                                  ; $3367 : $ef
	sbc a, h                                                  ; $3368 : $9c
	nop                                                  ; $3369 : $00
	jp (hl)                                                  ; $336a : $e9


	ld bc, $10e9                                                  ; $336b : $01, $e9, $10
	jp (hl)                                                  ; $336e : $e9


	rra                                                  ; $336f : $1f
	jp (hl)                                                  ; $3370 : $e9


	inc h                                                  ; $3371 : $24
	jp (hl)                                                  ; $3372 : $e9


	cpl                                                  ; $3373 : $2f
	sbc a, (hl)                                                  ; $3374 : $9e
	nop                                                  ; $3375 : $00
	jp (hl)                                                  ; $3376 : $e9


	ld b, h                                                  ; $3377 : $44
	sbc a, a                                                  ; $3378 : $9f
	nop                                                  ; $3379 : $00
	jp (hl)                                                  ; $337a : $e9


	ld e, d                                                  ; $337b : $5a
	jp (hl)                                                  ; $337c : $e9


	ld h, l                                                  ; $337d : $65
	jp (hl)                                                  ; $337e : $e9


	ld (hl), b                                                  ; $337f : $70
	jp (hl)                                                  ; $3380 : $e9


	ld (hl), h                                                  ; $3381 : $74
	jp (hl)                                                  ; $3382 : $e9


	ld a, h                                                  ; $3383 : $7c
	jp (hl)                                                  ; $3384 : $e9


	ld a, (hl)                                                  ; $3385 : $7e
	jp (hl)                                                  ; $3386 : $e9


	sub c                                                  ; $3387 : $91
	jp (hl)                                                  ; $3388 : $e9


	sub (hl)                                                  ; $3389 : $96
	jp (hl)                                                  ; $338a : $e9


	ret po                                                  ; $338b : $e0

	jp (hl)                                                  ; $338c : $e9


	ex de, hl                                                  ; $338d : $eb
	jp (hl)                                                  ; $338e : $e9


	pop af                                                  ; $338f : $f1
	jp (hl)                                                  ; $3390 : $e9


	cp $ea                                                  ; $3391 : $fe, $ea
	dec c                                                  ; $3393 : $0d
	jp pe, $ea12                                                  ; $3394 : $ea, $12, $ea
	inc hl                                                  ; $3397 : $23
	jp pe, $ea2d                                                  ; $3398 : $ea, $2d, $ea
	inc sp                                                  ; $339b : $33
	jp pe, $ea3e                                                  ; $339c : $ea, $3e, $ea
	ld e, c                                                  ; $339f : $59
	jp pe, $ea61                                                  ; $33a0 : $ea, $61, $ea
	ld (hl), d                                                  ; $33a3 : $72
	jp pe, $ea8a                                                  ; $33a4 : $ea, $8a, $ea
	adc a, a                                                  ; $33a7 : $8f
	jp pe, $eaa4                                                  ; $33a8 : $ea, $a4, $ea
	jp $c8ea                                                  ; $33ab : $c3, $ea, $c8


	and a                                                  ; $33ae : $a7
	nop                                                  ; $33af : $00
	jp pe, $ead5                                                  ; $33b0 : $ea, $d5, $ea
	ret c                                                  ; $33b3 : $d8

	jp pe, $ebf3                                                  ; $33b4 : $ea, $f3, $eb
	ld bc, $26eb                                                  ; $33b7 : $01, $eb, $26
	ex de, hl                                                  ; $33ba : $eb
	ld (hl), $eb                                                  ; $33bb : $36, $eb
	ccf                                                  ; $33bd : $3f
	ex de, hl                                                  ; $33be : $eb
	ld c, a                                                  ; $33bf : $4f
	ex de, hl                                                  ; $33c0 : $eb
	ld e, (hl)                                                  ; $33c1 : $5e
	ex de, hl                                                  ; $33c2 : $eb
	ld h, c                                                  ; $33c3 : $61
	ex de, hl                                                  ; $33c4 : $eb
	ld (hl), c                                                  ; $33c5 : $71
	ex de, hl                                                  ; $33c6 : $eb
	ld a, a                                                  ; $33c7 : $7f
	ex de, hl                                                  ; $33c8 : $eb
	adc a, a                                                  ; $33c9 : $8f
	ex de, hl                                                  ; $33ca : $eb
	xor e                                                  ; $33cb : $ab
	ex de, hl                                                  ; $33cc : $eb
	cp l                                                  ; $33cd : $bd
	ex de, hl                                                  ; $33ce : $eb
	push de                                                  ; $33cf : $d5
	ex de, hl                                                  ; $33d0 : $eb
	sub $eb                                                  ; $33d1 : $d6, $eb
	rst $10                                                  ; $33d3 : $d7
	ex de, hl                                                  ; $33d4 : $eb
	.db $ed                                                  ; $33d5 : $ed
	ex de, hl                                                  ; $33d6 : $eb
	pop af                                                  ; $33d7 : $f1
	call pe, $ec11                                                  ; $33d8 : $ec, $11, $ec
	inc h                                                  ; $33db : $24
	call pe, $ec27                                                  ; $33dc : $ec, $27, $ec
	ld b, b                                                  ; $33df : $40
	or b                                                  ; $33e0 : $b0
	nop                                                  ; $33e1 : $00
	call pe, $ec4e                                                  ; $33e2 : $ec, $4e, $ec
	ld a, a                                                  ; $33e5 : $7f

br_07_33e6:
	call pe, $ec90                                                  ; $33e6 : $ec, $90, $ec
	and a                                                  ; $33e9 : $a7
	call pe, $ecbf                                                  ; $33ea : $ec, $bf, $ec
	set 5, h                                                  ; $33ed : $cb, $ec
	adc a, $ec                                                  ; $33ef : $ce, $ec
	push hl                                                  ; $33f1 : $e5
	.db $ed                                                  ; $33f2 : $ed
	nop                                                  ; $33f3 : $00
	.db $ed                                                  ; $33f4 : $ed
	rlca                                                  ; $33f5 : $07
	.db $ed                                                  ; $33f6 : $ed
	djnz br_07_33e6                                                  ; $33f7 : $10, $ed
	inc l                                                  ; $33f9 : $2c
	.db $ed                                                  ; $33fa : $ed
	dec sp                                                  ; $33fb : $3b
	ld ($4ded), bc                                                  ; $33fc : $ed, $43, $ed, $4d
	.db $ed                                                  ; $3400 : $ed
	ld e, h                                                  ; $3401 : $5c

Jump_07_3402:
	.db $ed                                                  ; $3402 : $ed
	ld e, l                                                  ; $3403 : $5d
	out (c), l                                                  ; $3404 : $ed, $69
	.db $ed                                                  ; $3406 : $ed
	ld l, (hl)                                                  ; $3407 : $6e
	.db $ed                                                  ; $3408 : $ed
	halt                                                  ; $3409 : $76
	.db $ed                                                  ; $340a : $ed
	adc a, l                                                  ; $340b : $8d
	cpi                                                  ; $340c : $ed, $a1
	.db $ed                                                  ; $340e : $ed
	and h                                                  ; $340f : $a4
	.db $ed                                                  ; $3410 : $ed
	.db $fd                                                  ; $3411 : $fd
	xor $09                                                  ; $3412 : $ee, $09
	ret po                                                  ; $3414 : $e0

	add a, c                                                  ; $3415 : $81
	ret po                                                  ; $3416 : $e0

	sub d                                                  ; $3417 : $92
	ret po                                                  ; $3418 : $e0

	or d                                                  ; $3419 : $b2
	ret po                                                  ; $341a : $e0

	or (hl)                                                  ; $341b : $b6
	ret po                                                  ; $341c : $e0

	cp (hl)                                                  ; $341d : $be
	ret po                                                  ; $341e : $e0

	pop bc                                                  ; $341f : $c1
	ret po                                                  ; $3420 : $e0

	ret z                                                  ; $3421 : $c8

	ret po                                                  ; $3422 : $e0

	call nc, $f0e0                                                  ; $3423 : $d4, $e0, $f0
	pop hl                                                  ; $3426 : $e1
	inc de                                                  ; $3427 : $13
	pop hl                                                  ; $3428 : $e1
	rla                                                  ; $3429 : $17
	inc hl                                                  ; $342a : $23
	nop                                                  ; $342b : $00
	pop hl                                                  ; $342c : $e1
	inc (hl)                                                  ; $342d : $34
	pop hl                                                  ; $342e : $e1
	ld b, e                                                  ; $342f : $43
	pop hl                                                  ; $3430 : $e1
	ld d, d                                                  ; $3431 : $52
	pop hl                                                  ; $3432 : $e1
	sbc a, h                                                  ; $3433 : $9c
	pop hl                                                  ; $3434 : $e1
	jp $c8e1                                                  ; $3435 : $c3, $e1, $c8


	jp po, $e219                                                  ; $3438 : $e2, $19, $e2
	inc (hl)                                                  ; $343b : $34
	jp po, $e241                                                  ; $343c : $e2, $41, $e2
	ld e, c                                                  ; $343f : $59
	jp po, $e262                                                  ; $3440 : $e2, $62, $e2
	ld (hl), c                                                  ; $3443 : $71
	jp po, $e275                                                  ; $3444 : $e2, $75, $e2
	sub c                                                  ; $3447 : $91
	jp po, $e29f                                                  ; $3448 : $e2, $9f, $e2
	and c                                                  ; $344b : $a1
	jp po, $e2db                                                  ; $344c : $e2, $db, $e2
	and $e2                                                  ; $344f : $e6, $e2
	ret pe                                                  ; $3451 : $e8

	jp po, $e2f0                                                  ; $3452 : $e2, $f0, $e2
	di                                                  ; $3455 : $f3
	ex (sp), hl                                                  ; $3456 : $e3
	ld (bc), a                                                  ; $3457 : $02
	jr c, br_07_345a                                                  ; $3458 : $38, $00

br_07_345a:
	ex (sp), hl                                                  ; $345a : $e3
	rra                                                  ; $345b : $1f
	ex (sp), hl                                                  ; $345c : $e3
	ld b, b                                                  ; $345d : $40
	ex (sp), hl                                                  ; $345e : $e3
	ld d, d                                                  ; $345f : $52
	ex (sp), hl                                                  ; $3460 : $e3
	add a, (hl)                                                  ; $3461 : $86
	ex (sp), hl                                                  ; $3462 : $e3
	and e                                                  ; $3463 : $a3
	ex (sp), hl                                                  ; $3464 : $e3
	xor d                                                  ; $3465 : $aa
	ex (sp), hl                                                  ; $3466 : $e3
	cp h                                                  ; $3467 : $bc
	ex (sp), hl                                                  ; $3468 : $e3
	cp l                                                  ; $3469 : $bd
	ex (sp), hl                                                  ; $346a : $e3
	set 4, h                                                  ; $346b : $cb, $e4
	dec bc                                                  ; $346d : $0b

br_07_346e:
	call po, $e40c                                                  ; $346e : $e4, $0c, $e4
	inc e                                                  ; $3471 : $1c
	call po, $e420                                                  ; $3472 : $e4, $20, $e4
	dec h                                                  ; $3475 : $25
	call po, $e447                                                  ; $3476 : $e4, $47, $e4
	ld d, a                                                  ; $3479 : $57
	call po, $e470                                                  ; $347a : $e4, $70, $e4
	call nz, $e6e4                                                  ; $347d : $c4, $e4, $e6
	push hl                                                  ; $3480 : $e5
	ld (bc), a                                                  ; $3481 : $02
	push hl                                                  ; $3482 : $e5
	add hl, bc                                                  ; $3483 : $09
	push hl                                                  ; $3484 : $e5
	inc c                                                  ; $3485 : $0c
	push hl                                                  ; $3486 : $e5
	djnz br_07_346e                                                  ; $3487 : $10, $e5
	scf                                                  ; $3489 : $37
	push hl                                                  ; $348a : $e5
	ld a, $e5                                                  ; $348b : $3e, $e5
	ccf                                                  ; $348d : $3f
	push hl                                                  ; $348e : $e5
	ld l, a                                                  ; $348f : $6f
	push hl                                                  ; $3490 : $e5
	adc a, b                                                  ; $3491 : $88
	push hl                                                  ; $3492 : $e5
	sub a                                                  ; $3493 : $97
	push hl                                                  ; $3494 : $e5
	sbc a, l                                                  ; $3495 : $9d
	push hl                                                  ; $3496 : $e5
	or c                                                  ; $3497 : $b1
	push hl                                                  ; $3498 : $e5
	add a, $e5                                                  ; $3499 : $c6, $e5
	rst $38                                                  ; $349b : $ff

br_07_349c:
	and $20                                                  ; $349c : $e6, $20
	and $23                                                  ; $349e : $e6, $23
	and $33                                                  ; $34a0 : $e6, $33
	and $37                                                  ; $34a2 : $e6, $37
	and $4c                                                  ; $34a4 : $e6, $4c
	and $56                                                  ; $34a6 : $e6, $56
	and $5e                                                  ; $34a8 : $e6, $5e
	and $8d                                                  ; $34aa : $e6, $8d
	and $92                                                  ; $34ac : $e6, $92
	and $98                                                  ; $34ae : $e6, $98
	and $cf                                                  ; $34b0 : $e6, $cf
	rst $20                                                  ; $34b2 : $e7
	jr nc, br_07_349c                                                  ; $34b3 : $30, $e7

	dec a                                                  ; $34b5 : $3d
	rst $20                                                  ; $34b6 : $e7
	ld d, c                                                  ; $34b7 : $51
	rst $20                                                  ; $34b8 : $e7
	ld (hl), c                                                  ; $34b9 : $71
	rst $20                                                  ; $34ba : $e7
	add a, e                                                  ; $34bb : $83
	rst $20                                                  ; $34bc : $e7
	add a, h                                                  ; $34bd : $84
	rst $20                                                  ; $34be : $e7
	adc a, (hl)                                                  ; $34bf : $8e
	rst $20                                                  ; $34c0 : $e7
	cp b                                                  ; $34c1 : $b8
	rst $20                                                  ; $34c2 : $e7
	jp Jump_07_10e8                                                  ; $34c3 : $c3, $e8, $10


	ret pe                                                  ; $34c6 : $e8

	add hl, de                                                  ; $34c7 : $19
	adc a, b                                                  ; $34c8 : $88
	nop                                                  ; $34c9 : $00
	ret pe                                                  ; $34ca : $e8

	ld h, $e8                                                  ; $34cb : $26, $e8
	scf                                                  ; $34cd : $37
	ret pe                                                  ; $34ce : $e8

	dec sp                                                  ; $34cf : $3b
	ret pe                                                  ; $34d0 : $e8

	ld b, b                                                  ; $34d1 : $40
	ret pe                                                  ; $34d2 : $e8

	ld c, e                                                  ; $34d3 : $4b
	ret pe                                                  ; $34d4 : $e8

	ld a, b                                                  ; $34d5 : $78
	ret pe                                                  ; $34d6 : $e8

	ld a, l                                                  ; $34d7 : $7d
	ret pe                                                  ; $34d8 : $e8

	push de                                                  ; $34d9 : $d5
	ret pe                                                  ; $34da : $e8

	ld sp, hl                                                  ; $34db : $f9
	jp (hl)                                                  ; $34dc : $e9


	dec b                                                  ; $34dd : $05
	jp (hl)                                                  ; $34de : $e9


	ex af, af'                                                  ; $34df : $08
	jp (hl)                                                  ; $34e0 : $e9


	jr nc, -$17                                                  ; $34e1 : $30, $e9

	inc (hl)                                                  ; $34e3 : $34
	jp (hl)                                                  ; $34e4 : $e9


	inc a                                                  ; $34e5 : $3c
	jp (hl)                                                  ; $34e6 : $e9


	ld b, b                                                  ; $34e7 : $40
	jp (hl)                                                  ; $34e8 : $e9


	adc a, c                                                  ; $34e9 : $89
	jp (hl)                                                  ; $34ea : $e9


	sub a                                                  ; $34eb : $97
	jp (hl)                                                  ; $34ec : $e9


	sbc a, d                                                  ; $34ed : $9a
	jp (hl)                                                  ; $34ee : $e9


	and e                                                  ; $34ef : $a3
	jp (hl)                                                  ; $34f0 : $e9


	and l                                                  ; $34f1 : $a5
	jp (hl)                                                  ; $34f2 : $e9


	xor c                                                  ; $34f3 : $a9
	jp (hl)                                                  ; $34f4 : $e9


	xor h                                                  ; $34f5 : $ac
	jp (hl)                                                  ; $34f6 : $e9


	xor a                                                  ; $34f7 : $af
	and c                                                  ; $34f8 : $a1
	nop                                                  ; $34f9 : $00
	jp (hl)                                                  ; $34fa : $e9


	cp a                                                  ; $34fb : $bf
	jp (hl)                                                  ; $34fc : $e9


	jp nc, $e2e9                                                  ; $34fd : $d2, $e9, $e2
	jp (hl)                                                  ; $3500 : $e9


	call po, $f3e9                                                  ; $3501 : $e4, $e9, $f3
	jp (hl)                                                  ; $3504 : $e9


	push af                                                  ; $3505 : $f5
	jp pe, $ea44                                                  ; $3506 : $ea, $44, $ea
	ld e, h                                                  ; $3509 : $5c
	jp pe, $ea62                                                  ; $350a : $ea, $62, $ea
	ld a, b                                                  ; $350d : $78
	jp pe, $ea7c                                                  ; $350e : $ea, $7c, $ea
	ld a, l                                                  ; $3511 : $7d
	jp pe, $eaea                                                  ; $3512 : $ea, $ea, $ea
	.db $fd                                                  ; $3515 : $fd
	ex de, hl                                                  ; $3516 : $eb
	ex af, af'                                                  ; $3517 : $08
	ex de, hl                                                  ; $3518 : $eb
	rla                                                  ; $3519 : $17
	ex de, hl                                                  ; $351a : $eb
	ld b, d                                                  ; $351b : $42
	ex de, hl                                                  ; $351c : $eb
	ld a, b                                                  ; $351d : $78
	ex de, hl                                                  ; $351e : $eb
	and b                                                  ; $351f : $a0
	ex de, hl                                                  ; $3520 : $eb
	and e                                                  ; $3521 : $a3
	ex de, hl                                                  ; $3522 : $eb
	or a                                                  ; $3523 : $b7
	ex de, hl                                                  ; $3524 : $eb
	cp a                                                  ; $3525 : $bf
	ex de, hl                                                  ; $3526 : $eb
	call $10ec                                                  ; $3527 : $cd, $ec, $10
	call pe, $ec1f                                                  ; $352a : $ec, $1f, $ec
	ld ($23ec), hl                                                  ; $352d : $22, $ec, $23
	call pe, $ec2c                                                  ; $3530 : $ec, $2c, $ec
	ld b, d                                                  ; $3533 : $42
	call pe, $ec45                                                  ; $3534 : $ec, $45, $ec
	ld (hl), h                                                  ; $3537 : $74
	call pe, $ec76                                                  ; $3538 : $ec, $76, $ec
	ld a, c                                                  ; $353b : $79
	call pe, $ec7e                                                  ; $353c : $ec, $7e, $ec
	add a, c                                                  ; $353f : $81
	call pe, $ec82                                                  ; $3540 : $ec, $82, $ec
	add a, h                                                  ; $3543 : $84
	call pe, $ecc0                                                  ; $3544 : $ec, $c0, $ec
	push de                                                  ; $3547 : $d5
	call pe, $ecf0                                                  ; $3548 : $ec, $f0, $ec
	or $ec                                                  ; $354b : $f6, $ec
	call m, $46ed                                                  ; $354d : $fc, $ed, $46
	sbc hl, hl                                                  ; $3550 : $ed, $62
	.db $ed                                                  ; $3552 : $ed
	rst $00                                                  ; $3553 : $c7
	.db $ed                                                  ; $3554 : $ed
	jp po, $e4ed                                                  ; $3555 : $e2, $ed, $e4
	xor $19                                                  ; $3558 : $ee, $19
	xor $23                                                  ; $355a : $ee, $23
	ret po                                                  ; $355c : $e0

	ld l, (hl)                                                  ; $355d : $6e
	ret po                                                  ; $355e : $e0

	adc a, e                                                  ; $355f : $8b
	ret po                                                  ; $3560 : $e0

	sub b                                                  ; $3561 : $90
	ret po                                                  ; $3562 : $e0

	jp $eae0                                                  ; $3563 : $c3, $e0, $ea


	pop hl                                                  ; $3566 : $e1
	nop                                                  ; $3567 : $00
	pop hl                                                  ; $3568 : $e1
	ld c, $2e                                                  ; $3569 : $0e, $2e
	nop                                                  ; $356b : $00
	jp po, $e235                                                  ; $356c : $e2, $35, $e2
	ld l, d                                                  ; $356f : $6a
	jp po, $e26b                                                  ; $3570 : $e2, $6b, $e2
	ld (hl), b                                                  ; $3573 : $70
	jp po, $e27c                                                  ; $3574 : $e2, $7c, $e2
	and b                                                  ; $3577 : $a0
	ex (sp), hl                                                  ; $3578 : $e3
	ld d, $e3                                                  ; $3579 : $16, $e3
	adc a, l                                                  ; $357b : $8d
	ex (sp), hl                                                  ; $357c : $e3
	sbc a, d                                                  ; $357d : $9a
	call po, $e41d                                                  ; $357e : $e4, $1d, $e4
	scf                                                  ; $3581 : $37
	call po, $e443                                                  ; $3582 : $e4, $43, $e4
	ld b, l                                                  ; $3585 : $45
	call po, $e464                                                  ; $3586 : $e4, $64, $e4
	ld (hl), h                                                  ; $3589 : $74
	call po, $e477                                                  ; $358a : $e4, $77, $e4
	adc a, h                                                  ; $358d : $8c
	push hl                                                  ; $358e : $e5
	dec sp                                                  ; $358f : $3b
	push hl                                                  ; $3590 : $e5
	ld b, a                                                  ; $3591 : $47
	push hl                                                  ; $3592 : $e5
	ld d, b                                                  ; $3593 : $50
	push hl                                                  ; $3594 : $e5
	out ($e5), a                                                  ; $3595 : $d3, $e5
	call c, $48e6                                                  ; $3597 : $dc, $e6, $48
	and $cc                                                  ; $359a : $e6, $cc
	and $dd                                                  ; $359c : $e6, $dd
	rst $20                                                  ; $359e : $e7
	inc de                                                  ; $359f : $13
	rst $20                                                  ; $35a0 : $e7
	ld h, a                                                  ; $35a1 : $67
	rst $20                                                  ; $35a2 : $e7
	call z, $d6e7                                                  ; $35a3 : $cc, $e7, $d6
	rst $20                                                  ; $35a6 : $e7
	.db $ed                                                  ; $35a7 : $ed
	jp (hl)                                                  ; $35a8 : $e9


	rlca                                                  ; $35a9 : $07
	jp (hl)                                                  ; $35aa : $e9


	ld c, $e9                                                  ; $35ab : $0e, $e9
	ld d, d                                                  ; $35ad : $52
	jp (hl)                                                  ; $35ae : $e9


	ld a, b                                                  ; $35af : $78
	and b                                                  ; $35b0 : $a0
	nop                                                  ; $35b1 : $00
	jp (hl)                                                  ; $35b2 : $e9


	xor l                                                  ; $35b3 : $ad
	jp (hl)                                                  ; $35b4 : $e9


	ex (sp), hl                                                  ; $35b5 : $e3
	jp pe, $ea26                                                  ; $35b6 : $ea, $26, $ea
	ld d, d                                                  ; $35b9 : $52
	jp pe, $ea68                                                  ; $35ba : $ea, $68, $ea
	add a, b                                                  ; $35bd : $80
	jp pe, $ea83                                                  ; $35be : $ea, $83, $ea
	jp m, Jump_07_1deb                                                  ; $35c1 : $fa, $eb, $1d
	ex de, hl                                                  ; $35c4 : $eb
	ld hl, $23eb                                                  ; $35c5 : $21, $eb, $23
	ex de, hl                                                  ; $35c8 : $eb
	ld b, b                                                  ; $35c9 : $40

br_07_35ca:
	ex de, hl                                                  ; $35ca : $eb
	sub l                                                  ; $35cb : $95
	call pe, $ec6d                                                  ; $35cc : $ec, $6d, $ec
	sub l                                                  ; $35cf : $95
	call pe, $ecca                                                  ; $35d0 : $ec, $ca, $ec
	in a, ($ec)                                                  ; $35d3 : $db, $ec
	ex (sp), hl                                                  ; $35d5 : $e3
	call pe, $ede4                                                  ; $35d6 : $ec, $e4, $ed
	inc h                                                  ; $35d9 : $24
	.db $ed                                                  ; $35da : $ed
	jr c, br_07_35ca                                                  ; $35db : $38, $ed

	ld c, a                                                  ; $35dd : $4f
	sbc hl, sp                                                  ; $35de : $ed, $72
	.db $ed                                                  ; $35e0 : $ed
	sub c                                                  ; $35e1 : $91
	xor $15                                                  ; $35e2 : $ee, $15
	xor $1d                                                  ; $35e4 : $ee, $1d
	nop                                                  ; $35e6 : $00
	nop                                                  ; $35e7 : $00
	nop                                                  ; $35e8 : $00
	nop                                                  ; $35e9 : $00
	nop                                                  ; $35ea : $00
	nop                                                  ; $35eb : $00
	nop                                                  ; $35ec : $00
	nop                                                  ; $35ed : $00
	nop                                                  ; $35ee : $00
	nop                                                  ; $35ef : $00
	nop                                                  ; $35f0 : $00
	nop                                                  ; $35f1 : $00
	nop                                                  ; $35f2 : $00
	nop                                                  ; $35f3 : $00
	nop                                                  ; $35f4 : $00
	nop                                                  ; $35f5 : $00
	nop                                                  ; $35f6 : $00
	nop                                                  ; $35f7 : $00
	nop                                                  ; $35f8 : $00
	nop                                                  ; $35f9 : $00
	nop                                                  ; $35fa : $00
	nop                                                  ; $35fb : $00
	nop                                                  ; $35fc : $00
	nop                                                  ; $35fd : $00
	nop                                                  ; $35fe : $00
	nop                                                  ; $35ff : $00
	nop                                                  ; $3600 : $00
	nop                                                  ; $3601 : $00
	nop                                                  ; $3602 : $00
	nop                                                  ; $3603 : $00
	nop                                                  ; $3604 : $00
	nop                                                  ; $3605 : $00
	nop                                                  ; $3606 : $00
	nop                                                  ; $3607 : $00
	nop                                                  ; $3608 : $00
	nop                                                  ; $3609 : $00
	nop                                                  ; $360a : $00
	nop                                                  ; $360b : $00
	nop                                                  ; $360c : $00
	nop                                                  ; $360d : $00
	nop                                                  ; $360e : $00
	nop                                                  ; $360f : $00
	nop                                                  ; $3610 : $00
	nop                                                  ; $3611 : $00
	nop                                                  ; $3612 : $00
	nop                                                  ; $3613 : $00
	nop                                                  ; $3614 : $00
	nop                                                  ; $3615 : $00
	nop                                                  ; $3616 : $00
	nop                                                  ; $3617 : $00
	nop                                                  ; $3618 : $00
	nop                                                  ; $3619 : $00
	nop                                                  ; $361a : $00
	nop                                                  ; $361b : $00
	nop                                                  ; $361c : $00
	nop                                                  ; $361d : $00
	nop                                                  ; $361e : $00
	nop                                                  ; $361f : $00
	nop                                                  ; $3620 : $00
	nop                                                  ; $3621 : $00
	nop                                                  ; $3622 : $00
	nop                                                  ; $3623 : $00
	nop                                                  ; $3624 : $00
	nop                                                  ; $3625 : $00
	nop                                                  ; $3626 : $00
	nop                                                  ; $3627 : $00
	nop                                                  ; $3628 : $00
	nop                                                  ; $3629 : $00
	nop                                                  ; $362a : $00
	nop                                                  ; $362b : $00
	nop                                                  ; $362c : $00
	nop                                                  ; $362d : $00
	nop                                                  ; $362e : $00
	nop                                                  ; $362f : $00
	nop                                                  ; $3630 : $00
	nop                                                  ; $3631 : $00
	nop                                                  ; $3632 : $00
	nop                                                  ; $3633 : $00
	nop                                                  ; $3634 : $00
	nop                                                  ; $3635 : $00
	nop                                                  ; $3636 : $00
	nop                                                  ; $3637 : $00
	nop                                                  ; $3638 : $00
	nop                                                  ; $3639 : $00
	nop                                                  ; $363a : $00
	nop                                                  ; $363b : $00
	nop                                                  ; $363c : $00
	nop                                                  ; $363d : $00
	nop                                                  ; $363e : $00
	nop                                                  ; $363f : $00
	nop                                                  ; $3640 : $00
	nop                                                  ; $3641 : $00
	nop                                                  ; $3642 : $00
	nop                                                  ; $3643 : $00
	nop                                                  ; $3644 : $00
	nop                                                  ; $3645 : $00
	nop                                                  ; $3646 : $00
	nop                                                  ; $3647 : $00
	nop                                                  ; $3648 : $00
	nop                                                  ; $3649 : $00

br_07_364a:
	ld a, (de)                                                  ; $364a : $1a
	sub l                                                  ; $364b : $95
	call pe, $ec6d                                                  ; $364c : $ec, $6d, $ec
	sub l                                                  ; $364f : $95
	call pe, $ecca                                                  ; $3650 : $ec, $ca, $ec
	in a, ($ec)                                                  ; $3653 : $db, $ec
	ex (sp), hl                                                  ; $3655 : $e3
	call pe, $ede4                                                  ; $3656 : $ec, $e4, $ed
	inc h                                                  ; $3659 : $24
	.db $ed                                                  ; $365a : $ed
	jr c, br_07_364a                                                  ; $365b : $38, $ed

	ld c, a                                                  ; $365d : $4f
	sbc hl, sp                                                  ; $365e : $ed, $72
	.db $ed                                                  ; $3660 : $ed
	sub c                                                  ; $3661 : $91
	xor $15                                                  ; $3662 : $ee, $15
	xor $1d                                                  ; $3664 : $ee, $1d
	nop                                                  ; $3666 : $00
	nop                                                  ; $3667 : $00
	nop                                                  ; $3668 : $00
	nop                                                  ; $3669 : $00
	nop                                                  ; $366a : $00
	nop                                                  ; $366b : $00
	nop                                                  ; $366c : $00
	nop                                                  ; $366d : $00
	nop                                                  ; $366e : $00
	nop                                                  ; $366f : $00
	nop                                                  ; $3670 : $00
	nop                                                  ; $3671 : $00
	nop                                                  ; $3672 : $00
	nop                                                  ; $3673 : $00
	nop                                                  ; $3674 : $00
	nop                                                  ; $3675 : $00
	nop                                                  ; $3676 : $00
	nop                                                  ; $3677 : $00
	nop                                                  ; $3678 : $00
	cp $cd                                                  ; $3679 : $fe, $cd
	ld (hl), l                                                  ; $367b : $75
	call nc, Call_07_3e80                                                  ; $367c : $d4, $80, $3e
	and l                                                  ; $367f : $a5
	rst $38                                                  ; $3680 : $ff
	rst $38                                                  ; $3681 : $ff
	rst $38                                                  ; $3682 : $ff
	rst $38                                                  ; $3683 : $ff
	rst $38                                                  ; $3684 : $ff
	rst $38                                                  ; $3685 : $ff
	rst $38                                                  ; $3686 : $ff
	rst $38                                                  ; $3687 : $ff
	rst $38                                                  ; $3688 : $ff
	rst $38                                                  ; $3689 : $ff
	rst $38                                                  ; $368a : $ff
	rst $38                                                  ; $368b : $ff
	rst $38                                                  ; $368c : $ff
	rst $38                                                  ; $368d : $ff
	rst $38                                                  ; $368e : $ff
	rst $38                                                  ; $368f : $ff
	rst $38                                                  ; $3690 : $ff
	rst $38                                                  ; $3691 : $ff
	rst $38                                                  ; $3692 : $ff
	rst $38                                                  ; $3693 : $ff
	rst $38                                                  ; $3694 : $ff
	rst $38                                                  ; $3695 : $ff
	rst $38                                                  ; $3696 : $ff
	rst $38                                                  ; $3697 : $ff
	rst $38                                                  ; $3698 : $ff
	rst $38                                                  ; $3699 : $ff
	rst $38                                                  ; $369a : $ff
	rst $38                                                  ; $369b : $ff
	rst $38                                                  ; $369c : $ff
	rst $38                                                  ; $369d : $ff
	rst $38                                                  ; $369e : $ff
	rst $38                                                  ; $369f : $ff
	rst $38                                                  ; $36a0 : $ff
	rst $38                                                  ; $36a1 : $ff
	rst $38                                                  ; $36a2 : $ff
	rst $38                                                  ; $36a3 : $ff
	rst $38                                                  ; $36a4 : $ff
	rst $38                                                  ; $36a5 : $ff
	rst $38                                                  ; $36a6 : $ff
	rst $38                                                  ; $36a7 : $ff
	rst $38                                                  ; $36a8 : $ff
	rst $38                                                  ; $36a9 : $ff
	rst $38                                                  ; $36aa : $ff
	rst $38                                                  ; $36ab : $ff
	rst $38                                                  ; $36ac : $ff
	rst $38                                                  ; $36ad : $ff
	rst $38                                                  ; $36ae : $ff
	rst $38                                                  ; $36af : $ff
	rst $38                                                  ; $36b0 : $ff
	rst $38                                                  ; $36b1 : $ff
	rst $38                                                  ; $36b2 : $ff
	rst $38                                                  ; $36b3 : $ff
	rst $38                                                  ; $36b4 : $ff
	rst $38                                                  ; $36b5 : $ff
	rst $38                                                  ; $36b6 : $ff
	rst $38                                                  ; $36b7 : $ff
	rst $38                                                  ; $36b8 : $ff
	rst $38                                                  ; $36b9 : $ff
	rst $38                                                  ; $36ba : $ff
	rst $38                                                  ; $36bb : $ff
	rst $38                                                  ; $36bc : $ff
	rst $38                                                  ; $36bd : $ff
	rst $38                                                  ; $36be : $ff
	rst $38                                                  ; $36bf : $ff
	rst $38                                                  ; $36c0 : $ff
	rst $38                                                  ; $36c1 : $ff
	rst $38                                                  ; $36c2 : $ff
	rst $38                                                  ; $36c3 : $ff
	rst $38                                                  ; $36c4 : $ff
	rst $38                                                  ; $36c5 : $ff
	rst $38                                                  ; $36c6 : $ff
	rst $38                                                  ; $36c7 : $ff
	rst $38                                                  ; $36c8 : $ff
	rst $38                                                  ; $36c9 : $ff
	rst $38                                                  ; $36ca : $ff
	rst $38                                                  ; $36cb : $ff
	rst $38                                                  ; $36cc : $ff
	rst $38                                                  ; $36cd : $ff
	rst $38                                                  ; $36ce : $ff
	rst $38                                                  ; $36cf : $ff
	rst $38                                                  ; $36d0 : $ff
	rst $38                                                  ; $36d1 : $ff
	rst $38                                                  ; $36d2 : $ff
	rst $38                                                  ; $36d3 : $ff
	rst $38                                                  ; $36d4 : $ff
	rst $38                                                  ; $36d5 : $ff
	rst $38                                                  ; $36d6 : $ff
	rst $38                                                  ; $36d7 : $ff
	rst $38                                                  ; $36d8 : $ff
	rst $38                                                  ; $36d9 : $ff
	rst $38                                                  ; $36da : $ff
	rst $38                                                  ; $36db : $ff
	rst $38                                                  ; $36dc : $ff
	rst $38                                                  ; $36dd : $ff
	rst $38                                                  ; $36de : $ff
	rst $38                                                  ; $36df : $ff
	rst $38                                                  ; $36e0 : $ff
	rst $38                                                  ; $36e1 : $ff
	rst $38                                                  ; $36e2 : $ff
	rst $38                                                  ; $36e3 : $ff
	rst $38                                                  ; $36e4 : $ff
	rst $38                                                  ; $36e5 : $ff
	rst $38                                                  ; $36e6 : $ff
	rst $38                                                  ; $36e7 : $ff
	rst $38                                                  ; $36e8 : $ff
	rst $38                                                  ; $36e9 : $ff
	rst $38                                                  ; $36ea : $ff
	rst $38                                                  ; $36eb : $ff
	rst $38                                                  ; $36ec : $ff
	rst $38                                                  ; $36ed : $ff
	rst $38                                                  ; $36ee : $ff
	rst $38                                                  ; $36ef : $ff
	rst $38                                                  ; $36f0 : $ff
	rst $38                                                  ; $36f1 : $ff
	rst $38                                                  ; $36f2 : $ff
	rst $38                                                  ; $36f3 : $ff
	rst $38                                                  ; $36f4 : $ff
	rst $38                                                  ; $36f5 : $ff
	rst $38                                                  ; $36f6 : $ff
	rst $38                                                  ; $36f7 : $ff
	rst $38                                                  ; $36f8 : $ff
	rst $38                                                  ; $36f9 : $ff
	rst $38                                                  ; $36fa : $ff
	rst $38                                                  ; $36fb : $ff
	rst $38                                                  ; $36fc : $ff
	rst $38                                                  ; $36fd : $ff
	rst $38                                                  ; $36fe : $ff
	rst $38                                                  ; $36ff : $ff
	rst $38                                                  ; $3700 : $ff
	rst $38                                                  ; $3701 : $ff
	rst $38                                                  ; $3702 : $ff
	rst $38                                                  ; $3703 : $ff

Jump_07_3704:
	rst $38                                                  ; $3704 : $ff
	rst $38                                                  ; $3705 : $ff
	rst $38                                                  ; $3706 : $ff
	rst $38                                                  ; $3707 : $ff
	rst $38                                                  ; $3708 : $ff
	rst $38                                                  ; $3709 : $ff
	rst $38                                                  ; $370a : $ff
	rst $38                                                  ; $370b : $ff
	rst $38                                                  ; $370c : $ff
	rst $38                                                  ; $370d : $ff
	rst $38                                                  ; $370e : $ff
	rst $38                                                  ; $370f : $ff
	rst $38                                                  ; $3710 : $ff
	rst $38                                                  ; $3711 : $ff
	rst $38                                                  ; $3712 : $ff
	rst $38                                                  ; $3713 : $ff
	rst $38                                                  ; $3714 : $ff
	rst $38                                                  ; $3715 : $ff
	rst $38                                                  ; $3716 : $ff
	rst $38                                                  ; $3717 : $ff
	rst $38                                                  ; $3718 : $ff
	rst $38                                                  ; $3719 : $ff
	rst $38                                                  ; $371a : $ff
	rst $38                                                  ; $371b : $ff
	rst $38                                                  ; $371c : $ff
	rst $38                                                  ; $371d : $ff
	rst $38                                                  ; $371e : $ff
	rst $38                                                  ; $371f : $ff
	rst $38                                                  ; $3720 : $ff
	rst $38                                                  ; $3721 : $ff
	rst $38                                                  ; $3722 : $ff
	rst $38                                                  ; $3723 : $ff
	rst $38                                                  ; $3724 : $ff
	rst $38                                                  ; $3725 : $ff
	rst $38                                                  ; $3726 : $ff
	rst $38                                                  ; $3727 : $ff
	rst $38                                                  ; $3728 : $ff
	rst $38                                                  ; $3729 : $ff
	rst $38                                                  ; $372a : $ff
	rst $38                                                  ; $372b : $ff
	rst $38                                                  ; $372c : $ff
	rst $38                                                  ; $372d : $ff
	rst $38                                                  ; $372e : $ff
	rst $38                                                  ; $372f : $ff
	rst $38                                                  ; $3730 : $ff
	rst $38                                                  ; $3731 : $ff
	rst $38                                                  ; $3732 : $ff
	rst $38                                                  ; $3733 : $ff
	rst $38                                                  ; $3734 : $ff
	rst $38                                                  ; $3735 : $ff
	rst $38                                                  ; $3736 : $ff
	rst $38                                                  ; $3737 : $ff
	rst $38                                                  ; $3738 : $ff
	rst $38                                                  ; $3739 : $ff
	rst $38                                                  ; $373a : $ff
	rst $38                                                  ; $373b : $ff
	rst $38                                                  ; $373c : $ff
	rst $38                                                  ; $373d : $ff
	rst $38                                                  ; $373e : $ff
	rst $38                                                  ; $373f : $ff
	rst $38                                                  ; $3740 : $ff
	rst $38                                                  ; $3741 : $ff
	rst $38                                                  ; $3742 : $ff
	rst $38                                                  ; $3743 : $ff
	rst $38                                                  ; $3744 : $ff
	rst $38                                                  ; $3745 : $ff
	rst $38                                                  ; $3746 : $ff
	rst $38                                                  ; $3747 : $ff
	rst $38                                                  ; $3748 : $ff
	rst $38                                                  ; $3749 : $ff
	rst $38                                                  ; $374a : $ff
	rst $38                                                  ; $374b : $ff
	rst $38                                                  ; $374c : $ff
	rst $38                                                  ; $374d : $ff
	rst $38                                                  ; $374e : $ff
	rst $38                                                  ; $374f : $ff
	rst $38                                                  ; $3750 : $ff
	rst $38                                                  ; $3751 : $ff
	rst $38                                                  ; $3752 : $ff
	rst $38                                                  ; $3753 : $ff
	rst $38                                                  ; $3754 : $ff
	rst $38                                                  ; $3755 : $ff
	rst $38                                                  ; $3756 : $ff
	rst $38                                                  ; $3757 : $ff
	rst $38                                                  ; $3758 : $ff
	rst $38                                                  ; $3759 : $ff
	rst $38                                                  ; $375a : $ff
	rst $38                                                  ; $375b : $ff
	rst $38                                                  ; $375c : $ff
	rst $38                                                  ; $375d : $ff
	rst $38                                                  ; $375e : $ff
	rst $38                                                  ; $375f : $ff
	rst $38                                                  ; $3760 : $ff
	rst $38                                                  ; $3761 : $ff
	rst $38                                                  ; $3762 : $ff
	rst $38                                                  ; $3763 : $ff
	rst $38                                                  ; $3764 : $ff
	rst $38                                                  ; $3765 : $ff
	rst $38                                                  ; $3766 : $ff
	rst $38                                                  ; $3767 : $ff
	rst $38                                                  ; $3768 : $ff
	rst $38                                                  ; $3769 : $ff
	rst $38                                                  ; $376a : $ff
	rst $38                                                  ; $376b : $ff
	rst $38                                                  ; $376c : $ff
	rst $38                                                  ; $376d : $ff
	rst $38                                                  ; $376e : $ff
	rst $38                                                  ; $376f : $ff
	rst $38                                                  ; $3770 : $ff
	rst $38                                                  ; $3771 : $ff
	rst $38                                                  ; $3772 : $ff
	rst $38                                                  ; $3773 : $ff
	rst $38                                                  ; $3774 : $ff
	rst $38                                                  ; $3775 : $ff
	rst $38                                                  ; $3776 : $ff
	rst $38                                                  ; $3777 : $ff
	rst $38                                                  ; $3778 : $ff
	rst $38                                                  ; $3779 : $ff
	rst $38                                                  ; $377a : $ff
	rst $38                                                  ; $377b : $ff
	rst $38                                                  ; $377c : $ff
	rst $38                                                  ; $377d : $ff
	rst $38                                                  ; $377e : $ff
	rst $38                                                  ; $377f : $ff
	rst $38                                                  ; $3780 : $ff
	rst $38                                                  ; $3781 : $ff
	rst $38                                                  ; $3782 : $ff
	rst $38                                                  ; $3783 : $ff
	rst $38                                                  ; $3784 : $ff
	rst $38                                                  ; $3785 : $ff
	rst $38                                                  ; $3786 : $ff
	rst $38                                                  ; $3787 : $ff
	rst $38                                                  ; $3788 : $ff
	rst $38                                                  ; $3789 : $ff
	rst $38                                                  ; $378a : $ff
	rst $38                                                  ; $378b : $ff
	rst $38                                                  ; $378c : $ff
	rst $38                                                  ; $378d : $ff
	rst $38                                                  ; $378e : $ff
	rst $38                                                  ; $378f : $ff
	rst $38                                                  ; $3790 : $ff
	rst $38                                                  ; $3791 : $ff
	rst $38                                                  ; $3792 : $ff
	rst $38                                                  ; $3793 : $ff
	rst $38                                                  ; $3794 : $ff
	rst $38                                                  ; $3795 : $ff
	rst $38                                                  ; $3796 : $ff
	rst $38                                                  ; $3797 : $ff
	rst $38                                                  ; $3798 : $ff
	rst $38                                                  ; $3799 : $ff
	rst $38                                                  ; $379a : $ff
	rst $38                                                  ; $379b : $ff
	rst $38                                                  ; $379c : $ff
	rst $38                                                  ; $379d : $ff
	rst $38                                                  ; $379e : $ff
	rst $38                                                  ; $379f : $ff
	rst $38                                                  ; $37a0 : $ff
	rst $38                                                  ; $37a1 : $ff
	rst $38                                                  ; $37a2 : $ff
	rst $38                                                  ; $37a3 : $ff
	rst $38                                                  ; $37a4 : $ff
	rst $38                                                  ; $37a5 : $ff
	rst $38                                                  ; $37a6 : $ff
	rst $38                                                  ; $37a7 : $ff
	rst $38                                                  ; $37a8 : $ff
	rst $38                                                  ; $37a9 : $ff
	rst $38                                                  ; $37aa : $ff
	rst $38                                                  ; $37ab : $ff
	rst $38                                                  ; $37ac : $ff
	rst $38                                                  ; $37ad : $ff
	rst $38                                                  ; $37ae : $ff
	rst $38                                                  ; $37af : $ff
	rst $38                                                  ; $37b0 : $ff
	rst $38                                                  ; $37b1 : $ff
	rst $38                                                  ; $37b2 : $ff
	rst $38                                                  ; $37b3 : $ff
	rst $38                                                  ; $37b4 : $ff
	rst $38                                                  ; $37b5 : $ff
	rst $38                                                  ; $37b6 : $ff
	rst $38                                                  ; $37b7 : $ff
	rst $38                                                  ; $37b8 : $ff
	rst $38                                                  ; $37b9 : $ff
	rst $38                                                  ; $37ba : $ff
	rst $38                                                  ; $37bb : $ff
	rst $38                                                  ; $37bc : $ff
	rst $38                                                  ; $37bd : $ff
	rst $38                                                  ; $37be : $ff
	rst $38                                                  ; $37bf : $ff
	rst $38                                                  ; $37c0 : $ff
	rst $38                                                  ; $37c1 : $ff
	rst $38                                                  ; $37c2 : $ff
	rst $38                                                  ; $37c3 : $ff
	rst $38                                                  ; $37c4 : $ff
	rst $38                                                  ; $37c5 : $ff
	rst $38                                                  ; $37c6 : $ff
	rst $38                                                  ; $37c7 : $ff
	rst $38                                                  ; $37c8 : $ff
	rst $38                                                  ; $37c9 : $ff
	rst $38                                                  ; $37ca : $ff
	rst $38                                                  ; $37cb : $ff
	rst $38                                                  ; $37cc : $ff
	rst $38                                                  ; $37cd : $ff
	rst $38                                                  ; $37ce : $ff
	rst $38                                                  ; $37cf : $ff
	rst $38                                                  ; $37d0 : $ff
	rst $38                                                  ; $37d1 : $ff
	rst $38                                                  ; $37d2 : $ff
	rst $38                                                  ; $37d3 : $ff
	rst $38                                                  ; $37d4 : $ff
	rst $38                                                  ; $37d5 : $ff
	rst $38                                                  ; $37d6 : $ff
	rst $38                                                  ; $37d7 : $ff
	rst $38                                                  ; $37d8 : $ff
	rst $38                                                  ; $37d9 : $ff
	rst $38                                                  ; $37da : $ff
	rst $38                                                  ; $37db : $ff
	rst $38                                                  ; $37dc : $ff
	rst $38                                                  ; $37dd : $ff
	rst $38                                                  ; $37de : $ff
	rst $38                                                  ; $37df : $ff
	rst $38                                                  ; $37e0 : $ff
	rst $38                                                  ; $37e1 : $ff
	rst $38                                                  ; $37e2 : $ff
	rst $38                                                  ; $37e3 : $ff
	rst $38                                                  ; $37e4 : $ff
	rst $38                                                  ; $37e5 : $ff
	rst $38                                                  ; $37e6 : $ff
	rst $38                                                  ; $37e7 : $ff
	rst $38                                                  ; $37e8 : $ff
	rst $38                                                  ; $37e9 : $ff
	rst $38                                                  ; $37ea : $ff
	rst $38                                                  ; $37eb : $ff
	rst $38                                                  ; $37ec : $ff
	rst $38                                                  ; $37ed : $ff
	rst $38                                                  ; $37ee : $ff
	rst $38                                                  ; $37ef : $ff
	rst $38                                                  ; $37f0 : $ff
	rst $38                                                  ; $37f1 : $ff
	rst $38                                                  ; $37f2 : $ff
	rst $38                                                  ; $37f3 : $ff
	rst $38                                                  ; $37f4 : $ff
	rst $38                                                  ; $37f5 : $ff
	rst $38                                                  ; $37f6 : $ff
	rst $38                                                  ; $37f7 : $ff
	rst $38                                                  ; $37f8 : $ff
	rst $38                                                  ; $37f9 : $ff
	rst $38                                                  ; $37fa : $ff
	rst $38                                                  ; $37fb : $ff
	rst $38                                                  ; $37fc : $ff
	rst $38                                                  ; $37fd : $ff
	rst $38                                                  ; $37fe : $ff
	rst $38                                                  ; $37ff : $ff
	rst $38                                                  ; $3800 : $ff
	rst $38                                                  ; $3801 : $ff
	rst $38                                                  ; $3802 : $ff
	rst $38                                                  ; $3803 : $ff
	rst $38                                                  ; $3804 : $ff
	rst $38                                                  ; $3805 : $ff
	rst $38                                                  ; $3806 : $ff
	rst $38                                                  ; $3807 : $ff
	rst $38                                                  ; $3808 : $ff
	rst $38                                                  ; $3809 : $ff
	rst $38                                                  ; $380a : $ff
	rst $38                                                  ; $380b : $ff
	rst $38                                                  ; $380c : $ff
	rst $38                                                  ; $380d : $ff
	rst $38                                                  ; $380e : $ff
	rst $38                                                  ; $380f : $ff
	rst $38                                                  ; $3810 : $ff
	rst $38                                                  ; $3811 : $ff
	rst $38                                                  ; $3812 : $ff
	rst $38                                                  ; $3813 : $ff
	rst $38                                                  ; $3814 : $ff
	rst $38                                                  ; $3815 : $ff
	rst $38                                                  ; $3816 : $ff
	rst $38                                                  ; $3817 : $ff
	rst $38                                                  ; $3818 : $ff
	rst $38                                                  ; $3819 : $ff
	rst $38                                                  ; $381a : $ff
	rst $38                                                  ; $381b : $ff
	rst $38                                                  ; $381c : $ff
	rst $38                                                  ; $381d : $ff
	rst $38                                                  ; $381e : $ff
	rst $38                                                  ; $381f : $ff
	rst $38                                                  ; $3820 : $ff
	rst $38                                                  ; $3821 : $ff
	rst $38                                                  ; $3822 : $ff
	rst $38                                                  ; $3823 : $ff
	rst $38                                                  ; $3824 : $ff
	rst $38                                                  ; $3825 : $ff
	rst $38                                                  ; $3826 : $ff
	rst $38                                                  ; $3827 : $ff
	rst $38                                                  ; $3828 : $ff
	rst $38                                                  ; $3829 : $ff
	rst $38                                                  ; $382a : $ff
	rst $38                                                  ; $382b : $ff
	rst $38                                                  ; $382c : $ff
	rst $38                                                  ; $382d : $ff
	rst $38                                                  ; $382e : $ff
	rst $38                                                  ; $382f : $ff
	rst $38                                                  ; $3830 : $ff
	rst $38                                                  ; $3831 : $ff
	rst $38                                                  ; $3832 : $ff
	rst $38                                                  ; $3833 : $ff
	rst $38                                                  ; $3834 : $ff
	rst $38                                                  ; $3835 : $ff
	rst $38                                                  ; $3836 : $ff
	rst $38                                                  ; $3837 : $ff
	rst $38                                                  ; $3838 : $ff
	rst $38                                                  ; $3839 : $ff
	rst $38                                                  ; $383a : $ff
	rst $38                                                  ; $383b : $ff
	rst $38                                                  ; $383c : $ff
	rst $38                                                  ; $383d : $ff
	rst $38                                                  ; $383e : $ff
	rst $38                                                  ; $383f : $ff
	rst $38                                                  ; $3840 : $ff
	rst $38                                                  ; $3841 : $ff
	rst $38                                                  ; $3842 : $ff
	rst $38                                                  ; $3843 : $ff
	rst $38                                                  ; $3844 : $ff
	rst $38                                                  ; $3845 : $ff
	rst $38                                                  ; $3846 : $ff
	rst $38                                                  ; $3847 : $ff
	rst $38                                                  ; $3848 : $ff
	rst $38                                                  ; $3849 : $ff
	rst $38                                                  ; $384a : $ff
	rst $38                                                  ; $384b : $ff
	rst $38                                                  ; $384c : $ff
	rst $38                                                  ; $384d : $ff
	rst $38                                                  ; $384e : $ff
	rst $38                                                  ; $384f : $ff
	rst $38                                                  ; $3850 : $ff
	rst $38                                                  ; $3851 : $ff
	rst $38                                                  ; $3852 : $ff
	rst $38                                                  ; $3853 : $ff
	rst $38                                                  ; $3854 : $ff
	rst $38                                                  ; $3855 : $ff
	rst $38                                                  ; $3856 : $ff
	rst $38                                                  ; $3857 : $ff
	rst $38                                                  ; $3858 : $ff
	rst $38                                                  ; $3859 : $ff
	rst $38                                                  ; $385a : $ff
	rst $38                                                  ; $385b : $ff
	rst $38                                                  ; $385c : $ff
	rst $38                                                  ; $385d : $ff
	rst $38                                                  ; $385e : $ff
	rst $38                                                  ; $385f : $ff
	rst $38                                                  ; $3860 : $ff
	rst $38                                                  ; $3861 : $ff
	rst $38                                                  ; $3862 : $ff
	rst $38                                                  ; $3863 : $ff
	rst $38                                                  ; $3864 : $ff
	rst $38                                                  ; $3865 : $ff
	rst $38                                                  ; $3866 : $ff
	rst $38                                                  ; $3867 : $ff
	rst $38                                                  ; $3868 : $ff
	rst $38                                                  ; $3869 : $ff
	rst $38                                                  ; $386a : $ff
	rst $38                                                  ; $386b : $ff
	rst $38                                                  ; $386c : $ff
	rst $38                                                  ; $386d : $ff
	rst $38                                                  ; $386e : $ff
	rst $38                                                  ; $386f : $ff
	rst $38                                                  ; $3870 : $ff
	rst $38                                                  ; $3871 : $ff
	rst $38                                                  ; $3872 : $ff
	rst $38                                                  ; $3873 : $ff
	rst $38                                                  ; $3874 : $ff
	rst $38                                                  ; $3875 : $ff
	rst $38                                                  ; $3876 : $ff
	rst $38                                                  ; $3877 : $ff
	rst $38                                                  ; $3878 : $ff
	rst $38                                                  ; $3879 : $ff
	rst $38                                                  ; $387a : $ff
	rst $38                                                  ; $387b : $ff
	rst $38                                                  ; $387c : $ff
	rst $38                                                  ; $387d : $ff
	rst $38                                                  ; $387e : $ff
	rst $38                                                  ; $387f : $ff
	rst $38                                                  ; $3880 : $ff
	rst $38                                                  ; $3881 : $ff
	rst $38                                                  ; $3882 : $ff
	rst $38                                                  ; $3883 : $ff
	rst $38                                                  ; $3884 : $ff
	rst $38                                                  ; $3885 : $ff
	rst $38                                                  ; $3886 : $ff
	rst $38                                                  ; $3887 : $ff
	rst $38                                                  ; $3888 : $ff
	rst $38                                                  ; $3889 : $ff
	rst $38                                                  ; $388a : $ff
	rst $38                                                  ; $388b : $ff
	rst $38                                                  ; $388c : $ff
	rst $38                                                  ; $388d : $ff
	rst $38                                                  ; $388e : $ff
	rst $38                                                  ; $388f : $ff
	rst $38                                                  ; $3890 : $ff
	rst $38                                                  ; $3891 : $ff
	rst $38                                                  ; $3892 : $ff
	rst $38                                                  ; $3893 : $ff
	rst $38                                                  ; $3894 : $ff
	rst $38                                                  ; $3895 : $ff
	rst $38                                                  ; $3896 : $ff
	rst $38                                                  ; $3897 : $ff
	rst $38                                                  ; $3898 : $ff
	rst $38                                                  ; $3899 : $ff
	rst $38                                                  ; $389a : $ff
	rst $38                                                  ; $389b : $ff
	rst $38                                                  ; $389c : $ff
	rst $38                                                  ; $389d : $ff
	rst $38                                                  ; $389e : $ff
	rst $38                                                  ; $389f : $ff
	rst $38                                                  ; $38a0 : $ff
	rst $38                                                  ; $38a1 : $ff
	rst $38                                                  ; $38a2 : $ff
	rst $38                                                  ; $38a3 : $ff
	rst $38                                                  ; $38a4 : $ff
	rst $38                                                  ; $38a5 : $ff
	rst $38                                                  ; $38a6 : $ff
	rst $38                                                  ; $38a7 : $ff
	rst $38                                                  ; $38a8 : $ff
	rst $38                                                  ; $38a9 : $ff
	rst $38                                                  ; $38aa : $ff
	rst $38                                                  ; $38ab : $ff
	rst $38                                                  ; $38ac : $ff
	rst $38                                                  ; $38ad : $ff
	rst $38                                                  ; $38ae : $ff
	rst $38                                                  ; $38af : $ff
	rst $38                                                  ; $38b0 : $ff
	rst $38                                                  ; $38b1 : $ff
	rst $38                                                  ; $38b2 : $ff
	rst $38                                                  ; $38b3 : $ff
	rst $38                                                  ; $38b4 : $ff
	rst $38                                                  ; $38b5 : $ff
	rst $38                                                  ; $38b6 : $ff
	rst $38                                                  ; $38b7 : $ff
	rst $38                                                  ; $38b8 : $ff
	rst $38                                                  ; $38b9 : $ff
	rst $38                                                  ; $38ba : $ff
	rst $38                                                  ; $38bb : $ff
	rst $38                                                  ; $38bc : $ff
	rst $38                                                  ; $38bd : $ff
	rst $38                                                  ; $38be : $ff
	rst $38                                                  ; $38bf : $ff
	rst $38                                                  ; $38c0 : $ff
	rst $38                                                  ; $38c1 : $ff
	rst $38                                                  ; $38c2 : $ff
	rst $38                                                  ; $38c3 : $ff
	rst $38                                                  ; $38c4 : $ff
	rst $38                                                  ; $38c5 : $ff
	rst $38                                                  ; $38c6 : $ff
	rst $38                                                  ; $38c7 : $ff
	rst $38                                                  ; $38c8 : $ff
	rst $38                                                  ; $38c9 : $ff
	rst $38                                                  ; $38ca : $ff
	rst $38                                                  ; $38cb : $ff
	rst $38                                                  ; $38cc : $ff
	rst $38                                                  ; $38cd : $ff
	rst $38                                                  ; $38ce : $ff
	rst $38                                                  ; $38cf : $ff
	rst $38                                                  ; $38d0 : $ff
	rst $38                                                  ; $38d1 : $ff
	rst $38                                                  ; $38d2 : $ff
	rst $38                                                  ; $38d3 : $ff
	rst $38                                                  ; $38d4 : $ff
	rst $38                                                  ; $38d5 : $ff
	rst $38                                                  ; $38d6 : $ff
	rst $38                                                  ; $38d7 : $ff
	rst $38                                                  ; $38d8 : $ff
	rst $38                                                  ; $38d9 : $ff
	rst $38                                                  ; $38da : $ff
	rst $38                                                  ; $38db : $ff
	rst $38                                                  ; $38dc : $ff
	rst $38                                                  ; $38dd : $ff
	rst $38                                                  ; $38de : $ff
	rst $38                                                  ; $38df : $ff
	rst $38                                                  ; $38e0 : $ff
	rst $38                                                  ; $38e1 : $ff
	rst $38                                                  ; $38e2 : $ff
	rst $38                                                  ; $38e3 : $ff
	rst $38                                                  ; $38e4 : $ff
	rst $38                                                  ; $38e5 : $ff
	rst $38                                                  ; $38e6 : $ff
	rst $38                                                  ; $38e7 : $ff
	rst $38                                                  ; $38e8 : $ff
	rst $38                                                  ; $38e9 : $ff
	rst $38                                                  ; $38ea : $ff
	rst $38                                                  ; $38eb : $ff
	rst $38                                                  ; $38ec : $ff
	rst $38                                                  ; $38ed : $ff
	rst $38                                                  ; $38ee : $ff
	rst $38                                                  ; $38ef : $ff
	rst $38                                                  ; $38f0 : $ff
	rst $38                                                  ; $38f1 : $ff
	rst $38                                                  ; $38f2 : $ff
	rst $38                                                  ; $38f3 : $ff
	rst $38                                                  ; $38f4 : $ff
	rst $38                                                  ; $38f5 : $ff
	rst $38                                                  ; $38f6 : $ff
	rst $38                                                  ; $38f7 : $ff
	rst $38                                                  ; $38f8 : $ff
	rst $38                                                  ; $38f9 : $ff
	rst $38                                                  ; $38fa : $ff
	rst $38                                                  ; $38fb : $ff
	rst $38                                                  ; $38fc : $ff
	rst $38                                                  ; $38fd : $ff
	rst $38                                                  ; $38fe : $ff
	rst $38                                                  ; $38ff : $ff
	rst $38                                                  ; $3900 : $ff
	rst $38                                                  ; $3901 : $ff
	rst $38                                                  ; $3902 : $ff
	rst $38                                                  ; $3903 : $ff
	rst $38                                                  ; $3904 : $ff
	rst $38                                                  ; $3905 : $ff
	rst $38                                                  ; $3906 : $ff
	rst $38                                                  ; $3907 : $ff
	rst $38                                                  ; $3908 : $ff
	rst $38                                                  ; $3909 : $ff
	rst $38                                                  ; $390a : $ff
	rst $38                                                  ; $390b : $ff
	rst $38                                                  ; $390c : $ff
	rst $38                                                  ; $390d : $ff
	rst $38                                                  ; $390e : $ff
	rst $38                                                  ; $390f : $ff
	rst $38                                                  ; $3910 : $ff
	rst $38                                                  ; $3911 : $ff
	rst $38                                                  ; $3912 : $ff
	rst $38                                                  ; $3913 : $ff
	rst $38                                                  ; $3914 : $ff
	rst $38                                                  ; $3915 : $ff
	rst $38                                                  ; $3916 : $ff
	rst $38                                                  ; $3917 : $ff
	rst $38                                                  ; $3918 : $ff
	rst $38                                                  ; $3919 : $ff
	rst $38                                                  ; $391a : $ff
	rst $38                                                  ; $391b : $ff
	rst $38                                                  ; $391c : $ff
	rst $38                                                  ; $391d : $ff
	rst $38                                                  ; $391e : $ff
	rst $38                                                  ; $391f : $ff
	rst $38                                                  ; $3920 : $ff
	rst $38                                                  ; $3921 : $ff
	rst $38                                                  ; $3922 : $ff
	rst $38                                                  ; $3923 : $ff
	rst $38                                                  ; $3924 : $ff
	rst $38                                                  ; $3925 : $ff
	rst $38                                                  ; $3926 : $ff
	rst $38                                                  ; $3927 : $ff
	rst $38                                                  ; $3928 : $ff
	rst $38                                                  ; $3929 : $ff
	rst $38                                                  ; $392a : $ff
	rst $38                                                  ; $392b : $ff
	rst $38                                                  ; $392c : $ff
	rst $38                                                  ; $392d : $ff
	rst $38                                                  ; $392e : $ff
	rst $38                                                  ; $392f : $ff
	rst $38                                                  ; $3930 : $ff
	rst $38                                                  ; $3931 : $ff
	rst $38                                                  ; $3932 : $ff
	rst $38                                                  ; $3933 : $ff
	rst $38                                                  ; $3934 : $ff
	rst $38                                                  ; $3935 : $ff
	rst $38                                                  ; $3936 : $ff
	rst $38                                                  ; $3937 : $ff
	rst $38                                                  ; $3938 : $ff
	rst $38                                                  ; $3939 : $ff
	rst $38                                                  ; $393a : $ff
	rst $38                                                  ; $393b : $ff
	rst $38                                                  ; $393c : $ff
	rst $38                                                  ; $393d : $ff
	rst $38                                                  ; $393e : $ff
	rst $38                                                  ; $393f : $ff
	rst $38                                                  ; $3940 : $ff
	rst $38                                                  ; $3941 : $ff
	rst $38                                                  ; $3942 : $ff
	rst $38                                                  ; $3943 : $ff
	rst $38                                                  ; $3944 : $ff
	rst $38                                                  ; $3945 : $ff
	rst $38                                                  ; $3946 : $ff
	rst $38                                                  ; $3947 : $ff
	rst $38                                                  ; $3948 : $ff
	rst $38                                                  ; $3949 : $ff
	rst $38                                                  ; $394a : $ff
	rst $38                                                  ; $394b : $ff
	rst $38                                                  ; $394c : $ff
	rst $38                                                  ; $394d : $ff
	rst $38                                                  ; $394e : $ff
	rst $38                                                  ; $394f : $ff
	rst $38                                                  ; $3950 : $ff
	rst $38                                                  ; $3951 : $ff
	rst $38                                                  ; $3952 : $ff
	rst $38                                                  ; $3953 : $ff
	rst $38                                                  ; $3954 : $ff
	rst $38                                                  ; $3955 : $ff
	rst $38                                                  ; $3956 : $ff
	rst $38                                                  ; $3957 : $ff
	rst $38                                                  ; $3958 : $ff
	rst $38                                                  ; $3959 : $ff
	rst $38                                                  ; $395a : $ff
	rst $38                                                  ; $395b : $ff
	rst $38                                                  ; $395c : $ff
	rst $38                                                  ; $395d : $ff
	rst $38                                                  ; $395e : $ff
	rst $38                                                  ; $395f : $ff
	rst $38                                                  ; $3960 : $ff
	rst $38                                                  ; $3961 : $ff
	rst $38                                                  ; $3962 : $ff
	rst $38                                                  ; $3963 : $ff
	rst $38                                                  ; $3964 : $ff
	rst $38                                                  ; $3965 : $ff
	rst $38                                                  ; $3966 : $ff
	rst $38                                                  ; $3967 : $ff
	rst $38                                                  ; $3968 : $ff
	rst $38                                                  ; $3969 : $ff
	rst $38                                                  ; $396a : $ff
	rst $38                                                  ; $396b : $ff
	rst $38                                                  ; $396c : $ff
	rst $38                                                  ; $396d : $ff
	rst $38                                                  ; $396e : $ff
	rst $38                                                  ; $396f : $ff
	rst $38                                                  ; $3970 : $ff
	rst $38                                                  ; $3971 : $ff
	rst $38                                                  ; $3972 : $ff
	rst $38                                                  ; $3973 : $ff
	rst $38                                                  ; $3974 : $ff
	rst $38                                                  ; $3975 : $ff
	rst $38                                                  ; $3976 : $ff
	rst $38                                                  ; $3977 : $ff
	rst $38                                                  ; $3978 : $ff
	rst $38                                                  ; $3979 : $ff
	rst $38                                                  ; $397a : $ff
	rst $38                                                  ; $397b : $ff
	rst $38                                                  ; $397c : $ff
	rst $38                                                  ; $397d : $ff
	rst $38                                                  ; $397e : $ff
	rst $38                                                  ; $397f : $ff
	rst $38                                                  ; $3980 : $ff
	rst $38                                                  ; $3981 : $ff
	rst $38                                                  ; $3982 : $ff
	rst $38                                                  ; $3983 : $ff
	rst $38                                                  ; $3984 : $ff
	rst $38                                                  ; $3985 : $ff
	rst $38                                                  ; $3986 : $ff
	rst $38                                                  ; $3987 : $ff
	rst $38                                                  ; $3988 : $ff
	rst $38                                                  ; $3989 : $ff
	rst $38                                                  ; $398a : $ff
	rst $38                                                  ; $398b : $ff
	rst $38                                                  ; $398c : $ff
	rst $38                                                  ; $398d : $ff
	rst $38                                                  ; $398e : $ff
	rst $38                                                  ; $398f : $ff
	rst $38                                                  ; $3990 : $ff
	rst $38                                                  ; $3991 : $ff
	rst $38                                                  ; $3992 : $ff
	rst $38                                                  ; $3993 : $ff
	rst $38                                                  ; $3994 : $ff
	rst $38                                                  ; $3995 : $ff
	rst $38                                                  ; $3996 : $ff
	rst $38                                                  ; $3997 : $ff
	rst $38                                                  ; $3998 : $ff
	rst $38                                                  ; $3999 : $ff
	rst $38                                                  ; $399a : $ff
	rst $38                                                  ; $399b : $ff
	rst $38                                                  ; $399c : $ff
	rst $38                                                  ; $399d : $ff
	rst $38                                                  ; $399e : $ff
	rst $38                                                  ; $399f : $ff
	rst $38                                                  ; $39a0 : $ff
	rst $38                                                  ; $39a1 : $ff
	rst $38                                                  ; $39a2 : $ff
	rst $38                                                  ; $39a3 : $ff
	rst $38                                                  ; $39a4 : $ff
	rst $38                                                  ; $39a5 : $ff
	rst $38                                                  ; $39a6 : $ff
	rst $38                                                  ; $39a7 : $ff
	rst $38                                                  ; $39a8 : $ff
	rst $38                                                  ; $39a9 : $ff
	rst $38                                                  ; $39aa : $ff
	rst $38                                                  ; $39ab : $ff
	rst $38                                                  ; $39ac : $ff
	rst $38                                                  ; $39ad : $ff
	rst $38                                                  ; $39ae : $ff
	rst $38                                                  ; $39af : $ff
	rst $38                                                  ; $39b0 : $ff
	rst $38                                                  ; $39b1 : $ff
	rst $38                                                  ; $39b2 : $ff
	rst $38                                                  ; $39b3 : $ff
	rst $38                                                  ; $39b4 : $ff
	rst $38                                                  ; $39b5 : $ff
	rst $38                                                  ; $39b6 : $ff
	rst $38                                                  ; $39b7 : $ff
	rst $38                                                  ; $39b8 : $ff
	rst $38                                                  ; $39b9 : $ff
	rst $38                                                  ; $39ba : $ff
	rst $38                                                  ; $39bb : $ff
	rst $38                                                  ; $39bc : $ff
	rst $38                                                  ; $39bd : $ff
	rst $38                                                  ; $39be : $ff
	rst $38                                                  ; $39bf : $ff
	rst $38                                                  ; $39c0 : $ff
	rst $38                                                  ; $39c1 : $ff
	rst $38                                                  ; $39c2 : $ff
	rst $38                                                  ; $39c3 : $ff
	rst $38                                                  ; $39c4 : $ff
	rst $38                                                  ; $39c5 : $ff
	rst $38                                                  ; $39c6 : $ff
	rst $38                                                  ; $39c7 : $ff
	rst $38                                                  ; $39c8 : $ff
	rst $38                                                  ; $39c9 : $ff
	rst $38                                                  ; $39ca : $ff
	rst $38                                                  ; $39cb : $ff
	rst $38                                                  ; $39cc : $ff
	rst $38                                                  ; $39cd : $ff
	rst $38                                                  ; $39ce : $ff
	rst $38                                                  ; $39cf : $ff
	rst $38                                                  ; $39d0 : $ff
	rst $38                                                  ; $39d1 : $ff
	rst $38                                                  ; $39d2 : $ff
	rst $38                                                  ; $39d3 : $ff
	rst $38                                                  ; $39d4 : $ff
	rst $38                                                  ; $39d5 : $ff
	rst $38                                                  ; $39d6 : $ff
	rst $38                                                  ; $39d7 : $ff
	rst $38                                                  ; $39d8 : $ff
	rst $38                                                  ; $39d9 : $ff
	rst $38                                                  ; $39da : $ff
	rst $38                                                  ; $39db : $ff
	rst $38                                                  ; $39dc : $ff
	rst $38                                                  ; $39dd : $ff
	rst $38                                                  ; $39de : $ff
	rst $38                                                  ; $39df : $ff
	rst $38                                                  ; $39e0 : $ff
	rst $38                                                  ; $39e1 : $ff
	rst $38                                                  ; $39e2 : $ff
	rst $38                                                  ; $39e3 : $ff
	rst $38                                                  ; $39e4 : $ff
	rst $38                                                  ; $39e5 : $ff
	rst $38                                                  ; $39e6 : $ff
	rst $38                                                  ; $39e7 : $ff
	rst $38                                                  ; $39e8 : $ff
	rst $38                                                  ; $39e9 : $ff
	rst $38                                                  ; $39ea : $ff
	rst $38                                                  ; $39eb : $ff
	rst $38                                                  ; $39ec : $ff
	rst $38                                                  ; $39ed : $ff
	rst $38                                                  ; $39ee : $ff
	rst $38                                                  ; $39ef : $ff
	rst $38                                                  ; $39f0 : $ff
	rst $38                                                  ; $39f1 : $ff
	rst $38                                                  ; $39f2 : $ff
	rst $38                                                  ; $39f3 : $ff
	rst $38                                                  ; $39f4 : $ff
	rst $38                                                  ; $39f5 : $ff
	rst $38                                                  ; $39f6 : $ff
	rst $38                                                  ; $39f7 : $ff
	rst $38                                                  ; $39f8 : $ff
	rst $38                                                  ; $39f9 : $ff
	rst $38                                                  ; $39fa : $ff
	rst $38                                                  ; $39fb : $ff
	rst $38                                                  ; $39fc : $ff
	rst $38                                                  ; $39fd : $ff
	rst $38                                                  ; $39fe : $ff
	rst $38                                                  ; $39ff : $ff
	rst $38                                                  ; $3a00 : $ff
	rst $38                                                  ; $3a01 : $ff
	rst $38                                                  ; $3a02 : $ff
	rst $38                                                  ; $3a03 : $ff
	rst $38                                                  ; $3a04 : $ff
	rst $38                                                  ; $3a05 : $ff
	rst $38                                                  ; $3a06 : $ff
	rst $38                                                  ; $3a07 : $ff
	rst $38                                                  ; $3a08 : $ff
	rst $38                                                  ; $3a09 : $ff
	rst $38                                                  ; $3a0a : $ff
	rst $38                                                  ; $3a0b : $ff
	rst $38                                                  ; $3a0c : $ff
	rst $38                                                  ; $3a0d : $ff
	rst $38                                                  ; $3a0e : $ff
	rst $38                                                  ; $3a0f : $ff
	rst $38                                                  ; $3a10 : $ff
	rst $38                                                  ; $3a11 : $ff
	rst $38                                                  ; $3a12 : $ff
	rst $38                                                  ; $3a13 : $ff
	rst $38                                                  ; $3a14 : $ff
	rst $38                                                  ; $3a15 : $ff
	rst $38                                                  ; $3a16 : $ff
	rst $38                                                  ; $3a17 : $ff
	rst $38                                                  ; $3a18 : $ff
	rst $38                                                  ; $3a19 : $ff
	rst $38                                                  ; $3a1a : $ff
	rst $38                                                  ; $3a1b : $ff
	rst $38                                                  ; $3a1c : $ff
	rst $38                                                  ; $3a1d : $ff
	rst $38                                                  ; $3a1e : $ff
	rst $38                                                  ; $3a1f : $ff
	rst $38                                                  ; $3a20 : $ff
	rst $38                                                  ; $3a21 : $ff
	rst $38                                                  ; $3a22 : $ff
	rst $38                                                  ; $3a23 : $ff
	rst $38                                                  ; $3a24 : $ff
	rst $38                                                  ; $3a25 : $ff
	rst $38                                                  ; $3a26 : $ff
	rst $38                                                  ; $3a27 : $ff
	rst $38                                                  ; $3a28 : $ff
	rst $38                                                  ; $3a29 : $ff
	rst $38                                                  ; $3a2a : $ff
	rst $38                                                  ; $3a2b : $ff
	rst $38                                                  ; $3a2c : $ff
	rst $38                                                  ; $3a2d : $ff
	rst $38                                                  ; $3a2e : $ff
	rst $38                                                  ; $3a2f : $ff
	rst $38                                                  ; $3a30 : $ff
	rst $38                                                  ; $3a31 : $ff
	rst $38                                                  ; $3a32 : $ff
	rst $38                                                  ; $3a33 : $ff
	rst $38                                                  ; $3a34 : $ff
	rst $38                                                  ; $3a35 : $ff
	rst $38                                                  ; $3a36 : $ff
	rst $38                                                  ; $3a37 : $ff
	rst $38                                                  ; $3a38 : $ff
	rst $38                                                  ; $3a39 : $ff
	rst $38                                                  ; $3a3a : $ff
	rst $38                                                  ; $3a3b : $ff
	rst $38                                                  ; $3a3c : $ff
	rst $38                                                  ; $3a3d : $ff
	rst $38                                                  ; $3a3e : $ff
	rst $38                                                  ; $3a3f : $ff
	rst $38                                                  ; $3a40 : $ff
	rst $38                                                  ; $3a41 : $ff
	rst $38                                                  ; $3a42 : $ff
	rst $38                                                  ; $3a43 : $ff
	rst $38                                                  ; $3a44 : $ff
	rst $38                                                  ; $3a45 : $ff
	rst $38                                                  ; $3a46 : $ff
	rst $38                                                  ; $3a47 : $ff
	rst $38                                                  ; $3a48 : $ff
	rst $38                                                  ; $3a49 : $ff
	rst $38                                                  ; $3a4a : $ff
	rst $38                                                  ; $3a4b : $ff
	rst $38                                                  ; $3a4c : $ff
	rst $38                                                  ; $3a4d : $ff
	rst $38                                                  ; $3a4e : $ff
	rst $38                                                  ; $3a4f : $ff
	rst $38                                                  ; $3a50 : $ff
	rst $38                                                  ; $3a51 : $ff
	rst $38                                                  ; $3a52 : $ff
	rst $38                                                  ; $3a53 : $ff
	rst $38                                                  ; $3a54 : $ff
	rst $38                                                  ; $3a55 : $ff
	rst $38                                                  ; $3a56 : $ff
	rst $38                                                  ; $3a57 : $ff
	rst $38                                                  ; $3a58 : $ff
	rst $38                                                  ; $3a59 : $ff
	rst $38                                                  ; $3a5a : $ff
	rst $38                                                  ; $3a5b : $ff
	rst $38                                                  ; $3a5c : $ff
	rst $38                                                  ; $3a5d : $ff
	rst $38                                                  ; $3a5e : $ff
	rst $38                                                  ; $3a5f : $ff
	rst $38                                                  ; $3a60 : $ff
	rst $38                                                  ; $3a61 : $ff
	rst $38                                                  ; $3a62 : $ff
	rst $38                                                  ; $3a63 : $ff
	rst $38                                                  ; $3a64 : $ff
	rst $38                                                  ; $3a65 : $ff
	rst $38                                                  ; $3a66 : $ff
	rst $38                                                  ; $3a67 : $ff
	rst $38                                                  ; $3a68 : $ff
	rst $38                                                  ; $3a69 : $ff
	rst $38                                                  ; $3a6a : $ff
	rst $38                                                  ; $3a6b : $ff
	rst $38                                                  ; $3a6c : $ff
	rst $38                                                  ; $3a6d : $ff
	rst $38                                                  ; $3a6e : $ff
	rst $38                                                  ; $3a6f : $ff
	rst $38                                                  ; $3a70 : $ff
	rst $38                                                  ; $3a71 : $ff
	rst $38                                                  ; $3a72 : $ff
	rst $38                                                  ; $3a73 : $ff
	rst $38                                                  ; $3a74 : $ff
	rst $38                                                  ; $3a75 : $ff
	rst $38                                                  ; $3a76 : $ff
	rst $38                                                  ; $3a77 : $ff
	rst $38                                                  ; $3a78 : $ff
	rst $38                                                  ; $3a79 : $ff
	rst $38                                                  ; $3a7a : $ff
	rst $38                                                  ; $3a7b : $ff
	rst $38                                                  ; $3a7c : $ff
	rst $38                                                  ; $3a7d : $ff
	rst $38                                                  ; $3a7e : $ff
	rst $38                                                  ; $3a7f : $ff
	rst $38                                                  ; $3a80 : $ff
	rst $38                                                  ; $3a81 : $ff
	rst $38                                                  ; $3a82 : $ff
	rst $38                                                  ; $3a83 : $ff
	rst $38                                                  ; $3a84 : $ff
	rst $38                                                  ; $3a85 : $ff
	rst $38                                                  ; $3a86 : $ff
	rst $38                                                  ; $3a87 : $ff
	rst $38                                                  ; $3a88 : $ff
	rst $38                                                  ; $3a89 : $ff
	rst $38                                                  ; $3a8a : $ff
	rst $38                                                  ; $3a8b : $ff
	rst $38                                                  ; $3a8c : $ff
	rst $38                                                  ; $3a8d : $ff
	rst $38                                                  ; $3a8e : $ff
	rst $38                                                  ; $3a8f : $ff
	rst $38                                                  ; $3a90 : $ff
	rst $38                                                  ; $3a91 : $ff
	rst $38                                                  ; $3a92 : $ff
	rst $38                                                  ; $3a93 : $ff
	rst $38                                                  ; $3a94 : $ff
	rst $38                                                  ; $3a95 : $ff
	rst $38                                                  ; $3a96 : $ff
	rst $38                                                  ; $3a97 : $ff
	rst $38                                                  ; $3a98 : $ff
	rst $38                                                  ; $3a99 : $ff
	rst $38                                                  ; $3a9a : $ff
	rst $38                                                  ; $3a9b : $ff
	rst $38                                                  ; $3a9c : $ff
	rst $38                                                  ; $3a9d : $ff
	rst $38                                                  ; $3a9e : $ff
	rst $38                                                  ; $3a9f : $ff
	rst $38                                                  ; $3aa0 : $ff
	rst $38                                                  ; $3aa1 : $ff
	rst $38                                                  ; $3aa2 : $ff
	rst $38                                                  ; $3aa3 : $ff
	rst $38                                                  ; $3aa4 : $ff
	rst $38                                                  ; $3aa5 : $ff
	rst $38                                                  ; $3aa6 : $ff
	rst $38                                                  ; $3aa7 : $ff
	rst $38                                                  ; $3aa8 : $ff
	rst $38                                                  ; $3aa9 : $ff
	rst $38                                                  ; $3aaa : $ff
	rst $38                                                  ; $3aab : $ff
	rst $38                                                  ; $3aac : $ff
	rst $38                                                  ; $3aad : $ff
	rst $38                                                  ; $3aae : $ff
	rst $38                                                  ; $3aaf : $ff
	rst $38                                                  ; $3ab0 : $ff
	rst $38                                                  ; $3ab1 : $ff
	rst $38                                                  ; $3ab2 : $ff
	rst $38                                                  ; $3ab3 : $ff
	rst $38                                                  ; $3ab4 : $ff
	rst $38                                                  ; $3ab5 : $ff
	rst $38                                                  ; $3ab6 : $ff
	rst $38                                                  ; $3ab7 : $ff
	rst $38                                                  ; $3ab8 : $ff
	rst $38                                                  ; $3ab9 : $ff
	rst $38                                                  ; $3aba : $ff
	rst $38                                                  ; $3abb : $ff
	rst $38                                                  ; $3abc : $ff
	rst $38                                                  ; $3abd : $ff
	rst $38                                                  ; $3abe : $ff
	rst $38                                                  ; $3abf : $ff
	rst $38                                                  ; $3ac0 : $ff
	rst $38                                                  ; $3ac1 : $ff
	rst $38                                                  ; $3ac2 : $ff
	rst $38                                                  ; $3ac3 : $ff
	rst $38                                                  ; $3ac4 : $ff
	rst $38                                                  ; $3ac5 : $ff
	rst $38                                                  ; $3ac6 : $ff
	rst $38                                                  ; $3ac7 : $ff
	rst $38                                                  ; $3ac8 : $ff
	rst $38                                                  ; $3ac9 : $ff
	rst $38                                                  ; $3aca : $ff
	rst $38                                                  ; $3acb : $ff
	rst $38                                                  ; $3acc : $ff
	rst $38                                                  ; $3acd : $ff
	rst $38                                                  ; $3ace : $ff
	rst $38                                                  ; $3acf : $ff
	rst $38                                                  ; $3ad0 : $ff
	rst $38                                                  ; $3ad1 : $ff
	rst $38                                                  ; $3ad2 : $ff
	rst $38                                                  ; $3ad3 : $ff
	rst $38                                                  ; $3ad4 : $ff
	rst $38                                                  ; $3ad5 : $ff
	rst $38                                                  ; $3ad6 : $ff
	rst $38                                                  ; $3ad7 : $ff
	rst $38                                                  ; $3ad8 : $ff
	rst $38                                                  ; $3ad9 : $ff
	rst $38                                                  ; $3ada : $ff
	rst $38                                                  ; $3adb : $ff
	rst $38                                                  ; $3adc : $ff
	rst $38                                                  ; $3add : $ff
	rst $38                                                  ; $3ade : $ff
	rst $38                                                  ; $3adf : $ff
	rst $38                                                  ; $3ae0 : $ff
	rst $38                                                  ; $3ae1 : $ff
	rst $38                                                  ; $3ae2 : $ff
	rst $38                                                  ; $3ae3 : $ff
	rst $38                                                  ; $3ae4 : $ff
	rst $38                                                  ; $3ae5 : $ff
	rst $38                                                  ; $3ae6 : $ff
	rst $38                                                  ; $3ae7 : $ff
	rst $38                                                  ; $3ae8 : $ff
	rst $38                                                  ; $3ae9 : $ff
	rst $38                                                  ; $3aea : $ff
	rst $38                                                  ; $3aeb : $ff
	rst $38                                                  ; $3aec : $ff
	rst $38                                                  ; $3aed : $ff
	rst $38                                                  ; $3aee : $ff
	rst $38                                                  ; $3aef : $ff
	rst $38                                                  ; $3af0 : $ff
	rst $38                                                  ; $3af1 : $ff
	rst $38                                                  ; $3af2 : $ff
	rst $38                                                  ; $3af3 : $ff
	rst $38                                                  ; $3af4 : $ff
	rst $38                                                  ; $3af5 : $ff
	rst $38                                                  ; $3af6 : $ff
	rst $38                                                  ; $3af7 : $ff
	rst $38                                                  ; $3af8 : $ff
	rst $38                                                  ; $3af9 : $ff
	rst $38                                                  ; $3afa : $ff
	rst $38                                                  ; $3afb : $ff
	rst $38                                                  ; $3afc : $ff
	rst $38                                                  ; $3afd : $ff
	rst $38                                                  ; $3afe : $ff
	rst $38                                                  ; $3aff : $ff
	rst $38                                                  ; $3b00 : $ff
	rst $38                                                  ; $3b01 : $ff
	rst $38                                                  ; $3b02 : $ff
	rst $38                                                  ; $3b03 : $ff
	rst $38                                                  ; $3b04 : $ff
	rst $38                                                  ; $3b05 : $ff
	rst $38                                                  ; $3b06 : $ff
	rst $38                                                  ; $3b07 : $ff
	rst $38                                                  ; $3b08 : $ff
	rst $38                                                  ; $3b09 : $ff
	rst $38                                                  ; $3b0a : $ff
	rst $38                                                  ; $3b0b : $ff
	rst $38                                                  ; $3b0c : $ff
	rst $38                                                  ; $3b0d : $ff
	rst $38                                                  ; $3b0e : $ff
	rst $38                                                  ; $3b0f : $ff
	rst $38                                                  ; $3b10 : $ff
	rst $38                                                  ; $3b11 : $ff
	rst $38                                                  ; $3b12 : $ff
	rst $38                                                  ; $3b13 : $ff
	rst $38                                                  ; $3b14 : $ff
	rst $38                                                  ; $3b15 : $ff
	rst $38                                                  ; $3b16 : $ff
	rst $38                                                  ; $3b17 : $ff
	rst $38                                                  ; $3b18 : $ff
	rst $38                                                  ; $3b19 : $ff
	rst $38                                                  ; $3b1a : $ff
	rst $38                                                  ; $3b1b : $ff
	rst $38                                                  ; $3b1c : $ff
	rst $38                                                  ; $3b1d : $ff
	rst $38                                                  ; $3b1e : $ff
	rst $38                                                  ; $3b1f : $ff
	rst $38                                                  ; $3b20 : $ff
	rst $38                                                  ; $3b21 : $ff
	rst $38                                                  ; $3b22 : $ff
	rst $38                                                  ; $3b23 : $ff
	rst $38                                                  ; $3b24 : $ff
	rst $38                                                  ; $3b25 : $ff
	rst $38                                                  ; $3b26 : $ff
	rst $38                                                  ; $3b27 : $ff
	rst $38                                                  ; $3b28 : $ff
	rst $38                                                  ; $3b29 : $ff
	rst $38                                                  ; $3b2a : $ff
	rst $38                                                  ; $3b2b : $ff
	rst $38                                                  ; $3b2c : $ff
	rst $38                                                  ; $3b2d : $ff
	rst $38                                                  ; $3b2e : $ff
	rst $38                                                  ; $3b2f : $ff
	rst $38                                                  ; $3b30 : $ff
	rst $38                                                  ; $3b31 : $ff
	rst $38                                                  ; $3b32 : $ff
	rst $38                                                  ; $3b33 : $ff
	rst $38                                                  ; $3b34 : $ff
	rst $38                                                  ; $3b35 : $ff
	rst $38                                                  ; $3b36 : $ff
	rst $38                                                  ; $3b37 : $ff
	rst $38                                                  ; $3b38 : $ff
	rst $38                                                  ; $3b39 : $ff
	rst $38                                                  ; $3b3a : $ff
	rst $38                                                  ; $3b3b : $ff
	rst $38                                                  ; $3b3c : $ff
	rst $38                                                  ; $3b3d : $ff
	rst $38                                                  ; $3b3e : $ff
	rst $38                                                  ; $3b3f : $ff
	rst $38                                                  ; $3b40 : $ff
	rst $38                                                  ; $3b41 : $ff
	rst $38                                                  ; $3b42 : $ff
	rst $38                                                  ; $3b43 : $ff
	rst $38                                                  ; $3b44 : $ff
	rst $38                                                  ; $3b45 : $ff
	rst $38                                                  ; $3b46 : $ff
	rst $38                                                  ; $3b47 : $ff
	rst $38                                                  ; $3b48 : $ff
	rst $38                                                  ; $3b49 : $ff
	rst $38                                                  ; $3b4a : $ff
	rst $38                                                  ; $3b4b : $ff
	rst $38                                                  ; $3b4c : $ff
	rst $38                                                  ; $3b4d : $ff
	rst $38                                                  ; $3b4e : $ff
	rst $38                                                  ; $3b4f : $ff
	rst $38                                                  ; $3b50 : $ff
	rst $38                                                  ; $3b51 : $ff
	rst $38                                                  ; $3b52 : $ff
	rst $38                                                  ; $3b53 : $ff
	rst $38                                                  ; $3b54 : $ff
	rst $38                                                  ; $3b55 : $ff
	rst $38                                                  ; $3b56 : $ff
	rst $38                                                  ; $3b57 : $ff
	rst $38                                                  ; $3b58 : $ff
	rst $38                                                  ; $3b59 : $ff
	rst $38                                                  ; $3b5a : $ff
	rst $38                                                  ; $3b5b : $ff
	rst $38                                                  ; $3b5c : $ff
	rst $38                                                  ; $3b5d : $ff
	rst $38                                                  ; $3b5e : $ff
	rst $38                                                  ; $3b5f : $ff
	rst $38                                                  ; $3b60 : $ff
	rst $38                                                  ; $3b61 : $ff
	rst $38                                                  ; $3b62 : $ff
	rst $38                                                  ; $3b63 : $ff
	rst $38                                                  ; $3b64 : $ff
	rst $38                                                  ; $3b65 : $ff
	rst $38                                                  ; $3b66 : $ff
	rst $38                                                  ; $3b67 : $ff
	rst $38                                                  ; $3b68 : $ff
	rst $38                                                  ; $3b69 : $ff
	rst $38                                                  ; $3b6a : $ff
	rst $38                                                  ; $3b6b : $ff
	rst $38                                                  ; $3b6c : $ff
	rst $38                                                  ; $3b6d : $ff
	rst $38                                                  ; $3b6e : $ff
	rst $38                                                  ; $3b6f : $ff
	rst $38                                                  ; $3b70 : $ff
	rst $38                                                  ; $3b71 : $ff
	rst $38                                                  ; $3b72 : $ff
	rst $38                                                  ; $3b73 : $ff
	rst $38                                                  ; $3b74 : $ff
	rst $38                                                  ; $3b75 : $ff
	rst $38                                                  ; $3b76 : $ff
	rst $38                                                  ; $3b77 : $ff
	rst $38                                                  ; $3b78 : $ff
	rst $38                                                  ; $3b79 : $ff
	rst $38                                                  ; $3b7a : $ff
	rst $38                                                  ; $3b7b : $ff
	rst $38                                                  ; $3b7c : $ff
	rst $38                                                  ; $3b7d : $ff
	rst $38                                                  ; $3b7e : $ff
	rst $38                                                  ; $3b7f : $ff
	rst $38                                                  ; $3b80 : $ff
	rst $38                                                  ; $3b81 : $ff
	rst $38                                                  ; $3b82 : $ff
	rst $38                                                  ; $3b83 : $ff
	rst $38                                                  ; $3b84 : $ff
	rst $38                                                  ; $3b85 : $ff
	rst $38                                                  ; $3b86 : $ff
	rst $38                                                  ; $3b87 : $ff
	rst $38                                                  ; $3b88 : $ff
	rst $38                                                  ; $3b89 : $ff
	rst $38                                                  ; $3b8a : $ff
	rst $38                                                  ; $3b8b : $ff
	rst $38                                                  ; $3b8c : $ff
	rst $38                                                  ; $3b8d : $ff
	rst $38                                                  ; $3b8e : $ff
	rst $38                                                  ; $3b8f : $ff
	rst $38                                                  ; $3b90 : $ff
	rst $38                                                  ; $3b91 : $ff
	rst $38                                                  ; $3b92 : $ff
	rst $38                                                  ; $3b93 : $ff
	rst $38                                                  ; $3b94 : $ff
	rst $38                                                  ; $3b95 : $ff
	rst $38                                                  ; $3b96 : $ff
	rst $38                                                  ; $3b97 : $ff
	rst $38                                                  ; $3b98 : $ff
	rst $38                                                  ; $3b99 : $ff
	rst $38                                                  ; $3b9a : $ff
	rst $38                                                  ; $3b9b : $ff
	rst $38                                                  ; $3b9c : $ff
	rst $38                                                  ; $3b9d : $ff
	rst $38                                                  ; $3b9e : $ff
	rst $38                                                  ; $3b9f : $ff
	rst $38                                                  ; $3ba0 : $ff
	rst $38                                                  ; $3ba1 : $ff
	rst $38                                                  ; $3ba2 : $ff
	rst $38                                                  ; $3ba3 : $ff
	rst $38                                                  ; $3ba4 : $ff
	rst $38                                                  ; $3ba5 : $ff
	rst $38                                                  ; $3ba6 : $ff
	rst $38                                                  ; $3ba7 : $ff
	rst $38                                                  ; $3ba8 : $ff
	rst $38                                                  ; $3ba9 : $ff
	rst $38                                                  ; $3baa : $ff
	rst $38                                                  ; $3bab : $ff
	rst $38                                                  ; $3bac : $ff
	rst $38                                                  ; $3bad : $ff
	rst $38                                                  ; $3bae : $ff
	rst $38                                                  ; $3baf : $ff
	rst $38                                                  ; $3bb0 : $ff
	rst $38                                                  ; $3bb1 : $ff
	rst $38                                                  ; $3bb2 : $ff
	rst $38                                                  ; $3bb3 : $ff
	rst $38                                                  ; $3bb4 : $ff
	rst $38                                                  ; $3bb5 : $ff
	rst $38                                                  ; $3bb6 : $ff
	rst $38                                                  ; $3bb7 : $ff
	rst $38                                                  ; $3bb8 : $ff
	rst $38                                                  ; $3bb9 : $ff
	rst $38                                                  ; $3bba : $ff
	rst $38                                                  ; $3bbb : $ff
	rst $38                                                  ; $3bbc : $ff
	rst $38                                                  ; $3bbd : $ff
	rst $38                                                  ; $3bbe : $ff
	rst $38                                                  ; $3bbf : $ff
	rst $38                                                  ; $3bc0 : $ff
	rst $38                                                  ; $3bc1 : $ff
	rst $38                                                  ; $3bc2 : $ff
	rst $38                                                  ; $3bc3 : $ff
	rst $38                                                  ; $3bc4 : $ff
	rst $38                                                  ; $3bc5 : $ff
	rst $38                                                  ; $3bc6 : $ff
	rst $38                                                  ; $3bc7 : $ff
	rst $38                                                  ; $3bc8 : $ff
	rst $38                                                  ; $3bc9 : $ff
	rst $38                                                  ; $3bca : $ff
	rst $38                                                  ; $3bcb : $ff
	rst $38                                                  ; $3bcc : $ff
	rst $38                                                  ; $3bcd : $ff
	rst $38                                                  ; $3bce : $ff
	rst $38                                                  ; $3bcf : $ff
	rst $38                                                  ; $3bd0 : $ff
	rst $38                                                  ; $3bd1 : $ff
	rst $38                                                  ; $3bd2 : $ff
	rst $38                                                  ; $3bd3 : $ff
	rst $38                                                  ; $3bd4 : $ff
	rst $38                                                  ; $3bd5 : $ff
	rst $38                                                  ; $3bd6 : $ff
	rst $38                                                  ; $3bd7 : $ff
	rst $38                                                  ; $3bd8 : $ff
	rst $38                                                  ; $3bd9 : $ff
	rst $38                                                  ; $3bda : $ff
	rst $38                                                  ; $3bdb : $ff
	rst $38                                                  ; $3bdc : $ff
	rst $38                                                  ; $3bdd : $ff
	rst $38                                                  ; $3bde : $ff
	rst $38                                                  ; $3bdf : $ff
	rst $38                                                  ; $3be0 : $ff
	rst $38                                                  ; $3be1 : $ff
	rst $38                                                  ; $3be2 : $ff
	rst $38                                                  ; $3be3 : $ff
	rst $38                                                  ; $3be4 : $ff
	rst $38                                                  ; $3be5 : $ff
	rst $38                                                  ; $3be6 : $ff
	rst $38                                                  ; $3be7 : $ff
	rst $38                                                  ; $3be8 : $ff
	rst $38                                                  ; $3be9 : $ff
	rst $38                                                  ; $3bea : $ff
	rst $38                                                  ; $3beb : $ff
	rst $38                                                  ; $3bec : $ff
	rst $38                                                  ; $3bed : $ff
	rst $38                                                  ; $3bee : $ff
	rst $38                                                  ; $3bef : $ff
	rst $38                                                  ; $3bf0 : $ff
	rst $38                                                  ; $3bf1 : $ff
	rst $38                                                  ; $3bf2 : $ff
	rst $38                                                  ; $3bf3 : $ff
	rst $38                                                  ; $3bf4 : $ff
	rst $38                                                  ; $3bf5 : $ff
	rst $38                                                  ; $3bf6 : $ff
	rst $38                                                  ; $3bf7 : $ff
	rst $38                                                  ; $3bf8 : $ff
	rst $38                                                  ; $3bf9 : $ff
	rst $38                                                  ; $3bfa : $ff
	rst $38                                                  ; $3bfb : $ff
	rst $38                                                  ; $3bfc : $ff
	rst $38                                                  ; $3bfd : $ff
	rst $38                                                  ; $3bfe : $ff
	rst $38                                                  ; $3bff : $ff
	rst $38                                                  ; $3c00 : $ff
	rst $38                                                  ; $3c01 : $ff
	rst $38                                                  ; $3c02 : $ff
	rst $38                                                  ; $3c03 : $ff
	rst $38                                                  ; $3c04 : $ff
	rst $38                                                  ; $3c05 : $ff
	rst $38                                                  ; $3c06 : $ff
	rst $38                                                  ; $3c07 : $ff
	rst $38                                                  ; $3c08 : $ff
	rst $38                                                  ; $3c09 : $ff
	rst $38                                                  ; $3c0a : $ff
	rst $38                                                  ; $3c0b : $ff
	rst $38                                                  ; $3c0c : $ff
	rst $38                                                  ; $3c0d : $ff
	rst $38                                                  ; $3c0e : $ff
	rst $38                                                  ; $3c0f : $ff
	rst $38                                                  ; $3c10 : $ff
	rst $38                                                  ; $3c11 : $ff
	rst $38                                                  ; $3c12 : $ff
	rst $38                                                  ; $3c13 : $ff
	rst $38                                                  ; $3c14 : $ff
	rst $38                                                  ; $3c15 : $ff
	rst $38                                                  ; $3c16 : $ff
	rst $38                                                  ; $3c17 : $ff
	rst $38                                                  ; $3c18 : $ff
	rst $38                                                  ; $3c19 : $ff
	rst $38                                                  ; $3c1a : $ff
	rst $38                                                  ; $3c1b : $ff
	rst $38                                                  ; $3c1c : $ff
	rst $38                                                  ; $3c1d : $ff
	rst $38                                                  ; $3c1e : $ff
	rst $38                                                  ; $3c1f : $ff
	rst $38                                                  ; $3c20 : $ff
	rst $38                                                  ; $3c21 : $ff
	rst $38                                                  ; $3c22 : $ff
	rst $38                                                  ; $3c23 : $ff
	rst $38                                                  ; $3c24 : $ff
	rst $38                                                  ; $3c25 : $ff
	rst $38                                                  ; $3c26 : $ff
	rst $38                                                  ; $3c27 : $ff
	rst $38                                                  ; $3c28 : $ff
	rst $38                                                  ; $3c29 : $ff
	rst $38                                                  ; $3c2a : $ff
	rst $38                                                  ; $3c2b : $ff
	rst $38                                                  ; $3c2c : $ff
	rst $38                                                  ; $3c2d : $ff
	rst $38                                                  ; $3c2e : $ff
	rst $38                                                  ; $3c2f : $ff
	rst $38                                                  ; $3c30 : $ff
	rst $38                                                  ; $3c31 : $ff
	rst $38                                                  ; $3c32 : $ff
	rst $38                                                  ; $3c33 : $ff
	rst $38                                                  ; $3c34 : $ff
	rst $38                                                  ; $3c35 : $ff
	rst $38                                                  ; $3c36 : $ff
	rst $38                                                  ; $3c37 : $ff
	rst $38                                                  ; $3c38 : $ff
	rst $38                                                  ; $3c39 : $ff
	rst $38                                                  ; $3c3a : $ff
	rst $38                                                  ; $3c3b : $ff
	rst $38                                                  ; $3c3c : $ff
	rst $38                                                  ; $3c3d : $ff
	rst $38                                                  ; $3c3e : $ff
	rst $38                                                  ; $3c3f : $ff
	rst $38                                                  ; $3c40 : $ff
	rst $38                                                  ; $3c41 : $ff
	rst $38                                                  ; $3c42 : $ff
	rst $38                                                  ; $3c43 : $ff
	rst $38                                                  ; $3c44 : $ff
	rst $38                                                  ; $3c45 : $ff
	rst $38                                                  ; $3c46 : $ff
	rst $38                                                  ; $3c47 : $ff
	rst $38                                                  ; $3c48 : $ff
	rst $38                                                  ; $3c49 : $ff
	rst $38                                                  ; $3c4a : $ff
	rst $38                                                  ; $3c4b : $ff
	rst $38                                                  ; $3c4c : $ff
	rst $38                                                  ; $3c4d : $ff
	rst $38                                                  ; $3c4e : $ff
	rst $38                                                  ; $3c4f : $ff
	rst $38                                                  ; $3c50 : $ff
	rst $38                                                  ; $3c51 : $ff
	rst $38                                                  ; $3c52 : $ff
	rst $38                                                  ; $3c53 : $ff
	rst $38                                                  ; $3c54 : $ff
	rst $38                                                  ; $3c55 : $ff
	rst $38                                                  ; $3c56 : $ff
	rst $38                                                  ; $3c57 : $ff
	rst $38                                                  ; $3c58 : $ff
	rst $38                                                  ; $3c59 : $ff
	rst $38                                                  ; $3c5a : $ff
	rst $38                                                  ; $3c5b : $ff
	rst $38                                                  ; $3c5c : $ff
	rst $38                                                  ; $3c5d : $ff
	rst $38                                                  ; $3c5e : $ff
	rst $38                                                  ; $3c5f : $ff
	rst $38                                                  ; $3c60 : $ff
	rst $38                                                  ; $3c61 : $ff
	rst $38                                                  ; $3c62 : $ff
	rst $38                                                  ; $3c63 : $ff
	rst $38                                                  ; $3c64 : $ff
	rst $38                                                  ; $3c65 : $ff
	rst $38                                                  ; $3c66 : $ff
	rst $38                                                  ; $3c67 : $ff
	rst $38                                                  ; $3c68 : $ff
	rst $38                                                  ; $3c69 : $ff
	rst $38                                                  ; $3c6a : $ff
	rst $38                                                  ; $3c6b : $ff
	rst $38                                                  ; $3c6c : $ff
	rst $38                                                  ; $3c6d : $ff
	rst $38                                                  ; $3c6e : $ff
	rst $38                                                  ; $3c6f : $ff
	rst $38                                                  ; $3c70 : $ff
	rst $38                                                  ; $3c71 : $ff
	rst $38                                                  ; $3c72 : $ff
	rst $38                                                  ; $3c73 : $ff
	rst $38                                                  ; $3c74 : $ff
	rst $38                                                  ; $3c75 : $ff
	rst $38                                                  ; $3c76 : $ff
	rst $38                                                  ; $3c77 : $ff
	rst $38                                                  ; $3c78 : $ff
	rst $38                                                  ; $3c79 : $ff
	rst $38                                                  ; $3c7a : $ff
	rst $38                                                  ; $3c7b : $ff
	rst $38                                                  ; $3c7c : $ff
	rst $38                                                  ; $3c7d : $ff
	rst $38                                                  ; $3c7e : $ff
	rst $38                                                  ; $3c7f : $ff
	rst $38                                                  ; $3c80 : $ff
	rst $38                                                  ; $3c81 : $ff
	rst $38                                                  ; $3c82 : $ff
	rst $38                                                  ; $3c83 : $ff
	rst $38                                                  ; $3c84 : $ff
	rst $38                                                  ; $3c85 : $ff
	rst $38                                                  ; $3c86 : $ff
	rst $38                                                  ; $3c87 : $ff
	rst $38                                                  ; $3c88 : $ff
	rst $38                                                  ; $3c89 : $ff
	rst $38                                                  ; $3c8a : $ff
	rst $38                                                  ; $3c8b : $ff
	rst $38                                                  ; $3c8c : $ff
	rst $38                                                  ; $3c8d : $ff
	rst $38                                                  ; $3c8e : $ff
	rst $38                                                  ; $3c8f : $ff
	rst $38                                                  ; $3c90 : $ff
	rst $38                                                  ; $3c91 : $ff
	rst $38                                                  ; $3c92 : $ff
	rst $38                                                  ; $3c93 : $ff
	rst $38                                                  ; $3c94 : $ff
	rst $38                                                  ; $3c95 : $ff
	rst $38                                                  ; $3c96 : $ff
	rst $38                                                  ; $3c97 : $ff
	rst $38                                                  ; $3c98 : $ff
	rst $38                                                  ; $3c99 : $ff
	rst $38                                                  ; $3c9a : $ff
	rst $38                                                  ; $3c9b : $ff
	rst $38                                                  ; $3c9c : $ff
	rst $38                                                  ; $3c9d : $ff
	rst $38                                                  ; $3c9e : $ff
	rst $38                                                  ; $3c9f : $ff
	rst $38                                                  ; $3ca0 : $ff
	rst $38                                                  ; $3ca1 : $ff
	rst $38                                                  ; $3ca2 : $ff
	rst $38                                                  ; $3ca3 : $ff
	rst $38                                                  ; $3ca4 : $ff
	rst $38                                                  ; $3ca5 : $ff
	rst $38                                                  ; $3ca6 : $ff
	rst $38                                                  ; $3ca7 : $ff
	rst $38                                                  ; $3ca8 : $ff
	rst $38                                                  ; $3ca9 : $ff
	rst $38                                                  ; $3caa : $ff
	rst $38                                                  ; $3cab : $ff
	rst $38                                                  ; $3cac : $ff
	rst $38                                                  ; $3cad : $ff
	rst $38                                                  ; $3cae : $ff
	rst $38                                                  ; $3caf : $ff
	rst $38                                                  ; $3cb0 : $ff
	rst $38                                                  ; $3cb1 : $ff
	rst $38                                                  ; $3cb2 : $ff
	rst $38                                                  ; $3cb3 : $ff
	rst $38                                                  ; $3cb4 : $ff
	rst $38                                                  ; $3cb5 : $ff
	rst $38                                                  ; $3cb6 : $ff
	rst $38                                                  ; $3cb7 : $ff
	rst $38                                                  ; $3cb8 : $ff
	rst $38                                                  ; $3cb9 : $ff
	rst $38                                                  ; $3cba : $ff
	rst $38                                                  ; $3cbb : $ff
	rst $38                                                  ; $3cbc : $ff
	rst $38                                                  ; $3cbd : $ff
	rst $38                                                  ; $3cbe : $ff
	rst $38                                                  ; $3cbf : $ff
	rst $38                                                  ; $3cc0 : $ff
	rst $38                                                  ; $3cc1 : $ff
	rst $38                                                  ; $3cc2 : $ff
	rst $38                                                  ; $3cc3 : $ff
	rst $38                                                  ; $3cc4 : $ff
	rst $38                                                  ; $3cc5 : $ff
	rst $38                                                  ; $3cc6 : $ff
	rst $38                                                  ; $3cc7 : $ff
	rst $38                                                  ; $3cc8 : $ff
	rst $38                                                  ; $3cc9 : $ff
	rst $38                                                  ; $3cca : $ff
	rst $38                                                  ; $3ccb : $ff
	rst $38                                                  ; $3ccc : $ff
	rst $38                                                  ; $3ccd : $ff
	rst $38                                                  ; $3cce : $ff
	rst $38                                                  ; $3ccf : $ff
	rst $38                                                  ; $3cd0 : $ff
	rst $38                                                  ; $3cd1 : $ff
	rst $38                                                  ; $3cd2 : $ff
	rst $38                                                  ; $3cd3 : $ff
	rst $38                                                  ; $3cd4 : $ff
	rst $38                                                  ; $3cd5 : $ff
	rst $38                                                  ; $3cd6 : $ff
	rst $38                                                  ; $3cd7 : $ff
	rst $38                                                  ; $3cd8 : $ff
	rst $38                                                  ; $3cd9 : $ff
	rst $38                                                  ; $3cda : $ff
	rst $38                                                  ; $3cdb : $ff
	rst $38                                                  ; $3cdc : $ff
	rst $38                                                  ; $3cdd : $ff
	rst $38                                                  ; $3cde : $ff
	rst $38                                                  ; $3cdf : $ff
	rst $38                                                  ; $3ce0 : $ff
	rst $38                                                  ; $3ce1 : $ff
	rst $38                                                  ; $3ce2 : $ff
	rst $38                                                  ; $3ce3 : $ff
	rst $38                                                  ; $3ce4 : $ff
	rst $38                                                  ; $3ce5 : $ff
	rst $38                                                  ; $3ce6 : $ff
	rst $38                                                  ; $3ce7 : $ff
	rst $38                                                  ; $3ce8 : $ff
	rst $38                                                  ; $3ce9 : $ff
	rst $38                                                  ; $3cea : $ff
	rst $38                                                  ; $3ceb : $ff
	rst $38                                                  ; $3cec : $ff
	rst $38                                                  ; $3ced : $ff
	rst $38                                                  ; $3cee : $ff
	rst $38                                                  ; $3cef : $ff
	rst $38                                                  ; $3cf0 : $ff
	rst $38                                                  ; $3cf1 : $ff
	rst $38                                                  ; $3cf2 : $ff
	rst $38                                                  ; $3cf3 : $ff
	rst $38                                                  ; $3cf4 : $ff
	rst $38                                                  ; $3cf5 : $ff
	rst $38                                                  ; $3cf6 : $ff
	rst $38                                                  ; $3cf7 : $ff
	rst $38                                                  ; $3cf8 : $ff
	rst $38                                                  ; $3cf9 : $ff
	rst $38                                                  ; $3cfa : $ff
	rst $38                                                  ; $3cfb : $ff
	rst $38                                                  ; $3cfc : $ff
	rst $38                                                  ; $3cfd : $ff
	rst $38                                                  ; $3cfe : $ff
	rst $38                                                  ; $3cff : $ff
	rst $38                                                  ; $3d00 : $ff
	rst $38                                                  ; $3d01 : $ff
	rst $38                                                  ; $3d02 : $ff
	rst $38                                                  ; $3d03 : $ff
	rst $38                                                  ; $3d04 : $ff
	rst $38                                                  ; $3d05 : $ff
	rst $38                                                  ; $3d06 : $ff
	rst $38                                                  ; $3d07 : $ff
	rst $38                                                  ; $3d08 : $ff
	rst $38                                                  ; $3d09 : $ff
	rst $38                                                  ; $3d0a : $ff
	rst $38                                                  ; $3d0b : $ff
	rst $38                                                  ; $3d0c : $ff
	rst $38                                                  ; $3d0d : $ff
	rst $38                                                  ; $3d0e : $ff
	rst $38                                                  ; $3d0f : $ff
	rst $38                                                  ; $3d10 : $ff
	rst $38                                                  ; $3d11 : $ff
	rst $38                                                  ; $3d12 : $ff
	rst $38                                                  ; $3d13 : $ff
	rst $38                                                  ; $3d14 : $ff
	rst $38                                                  ; $3d15 : $ff
	rst $38                                                  ; $3d16 : $ff
	rst $38                                                  ; $3d17 : $ff
	rst $38                                                  ; $3d18 : $ff
	rst $38                                                  ; $3d19 : $ff
	rst $38                                                  ; $3d1a : $ff
	rst $38                                                  ; $3d1b : $ff
	rst $38                                                  ; $3d1c : $ff
	rst $38                                                  ; $3d1d : $ff
	rst $38                                                  ; $3d1e : $ff
	rst $38                                                  ; $3d1f : $ff
	rst $38                                                  ; $3d20 : $ff
	rst $38                                                  ; $3d21 : $ff
	rst $38                                                  ; $3d22 : $ff
	rst $38                                                  ; $3d23 : $ff
	rst $38                                                  ; $3d24 : $ff
	rst $38                                                  ; $3d25 : $ff
	rst $38                                                  ; $3d26 : $ff
	rst $38                                                  ; $3d27 : $ff
	rst $38                                                  ; $3d28 : $ff
	rst $38                                                  ; $3d29 : $ff
	rst $38                                                  ; $3d2a : $ff
	rst $38                                                  ; $3d2b : $ff
	rst $38                                                  ; $3d2c : $ff
	rst $38                                                  ; $3d2d : $ff
	rst $38                                                  ; $3d2e : $ff
	rst $38                                                  ; $3d2f : $ff
	rst $38                                                  ; $3d30 : $ff
	rst $38                                                  ; $3d31 : $ff
	rst $38                                                  ; $3d32 : $ff
	rst $38                                                  ; $3d33 : $ff
	rst $38                                                  ; $3d34 : $ff
	rst $38                                                  ; $3d35 : $ff
	rst $38                                                  ; $3d36 : $ff
	rst $38                                                  ; $3d37 : $ff
	rst $38                                                  ; $3d38 : $ff
	rst $38                                                  ; $3d39 : $ff
	rst $38                                                  ; $3d3a : $ff
	rst $38                                                  ; $3d3b : $ff
	rst $38                                                  ; $3d3c : $ff
	rst $38                                                  ; $3d3d : $ff
	rst $38                                                  ; $3d3e : $ff
	rst $38                                                  ; $3d3f : $ff
	rst $38                                                  ; $3d40 : $ff
	rst $38                                                  ; $3d41 : $ff
	rst $38                                                  ; $3d42 : $ff
	rst $38                                                  ; $3d43 : $ff
	rst $38                                                  ; $3d44 : $ff
	rst $38                                                  ; $3d45 : $ff
	rst $38                                                  ; $3d46 : $ff
	rst $38                                                  ; $3d47 : $ff
	rst $38                                                  ; $3d48 : $ff
	rst $38                                                  ; $3d49 : $ff
	rst $38                                                  ; $3d4a : $ff
	rst $38                                                  ; $3d4b : $ff
	rst $38                                                  ; $3d4c : $ff
	rst $38                                                  ; $3d4d : $ff
	rst $38                                                  ; $3d4e : $ff
	rst $38                                                  ; $3d4f : $ff
	rst $38                                                  ; $3d50 : $ff
	rst $38                                                  ; $3d51 : $ff
	rst $38                                                  ; $3d52 : $ff
	rst $38                                                  ; $3d53 : $ff
	rst $38                                                  ; $3d54 : $ff
	rst $38                                                  ; $3d55 : $ff
	rst $38                                                  ; $3d56 : $ff
	rst $38                                                  ; $3d57 : $ff
	rst $38                                                  ; $3d58 : $ff
	rst $38                                                  ; $3d59 : $ff
	rst $38                                                  ; $3d5a : $ff
	rst $38                                                  ; $3d5b : $ff
	rst $38                                                  ; $3d5c : $ff
	rst $38                                                  ; $3d5d : $ff
	rst $38                                                  ; $3d5e : $ff
	rst $38                                                  ; $3d5f : $ff
	rst $38                                                  ; $3d60 : $ff
	rst $38                                                  ; $3d61 : $ff
	rst $38                                                  ; $3d62 : $ff
	rst $38                                                  ; $3d63 : $ff
	rst $38                                                  ; $3d64 : $ff
	rst $38                                                  ; $3d65 : $ff
	rst $38                                                  ; $3d66 : $ff
	rst $38                                                  ; $3d67 : $ff
	rst $38                                                  ; $3d68 : $ff
	rst $38                                                  ; $3d69 : $ff
	rst $38                                                  ; $3d6a : $ff
	rst $38                                                  ; $3d6b : $ff
	rst $38                                                  ; $3d6c : $ff
	rst $38                                                  ; $3d6d : $ff
	rst $38                                                  ; $3d6e : $ff
	rst $38                                                  ; $3d6f : $ff
	rst $38                                                  ; $3d70 : $ff
	rst $38                                                  ; $3d71 : $ff
	rst $38                                                  ; $3d72 : $ff
	rst $38                                                  ; $3d73 : $ff
	rst $38                                                  ; $3d74 : $ff
	rst $38                                                  ; $3d75 : $ff
	rst $38                                                  ; $3d76 : $ff
	rst $38                                                  ; $3d77 : $ff
	rst $38                                                  ; $3d78 : $ff
	rst $38                                                  ; $3d79 : $ff
	rst $38                                                  ; $3d7a : $ff
	rst $38                                                  ; $3d7b : $ff
	rst $38                                                  ; $3d7c : $ff
	rst $38                                                  ; $3d7d : $ff
	rst $38                                                  ; $3d7e : $ff
	rst $38                                                  ; $3d7f : $ff
	rst $38                                                  ; $3d80 : $ff
	rst $38                                                  ; $3d81 : $ff
	rst $38                                                  ; $3d82 : $ff
	rst $38                                                  ; $3d83 : $ff
	rst $38                                                  ; $3d84 : $ff
	rst $38                                                  ; $3d85 : $ff
	rst $38                                                  ; $3d86 : $ff
	rst $38                                                  ; $3d87 : $ff
	rst $38                                                  ; $3d88 : $ff
	rst $38                                                  ; $3d89 : $ff
	rst $38                                                  ; $3d8a : $ff
	rst $38                                                  ; $3d8b : $ff
	rst $38                                                  ; $3d8c : $ff
	rst $38                                                  ; $3d8d : $ff
	rst $38                                                  ; $3d8e : $ff
	rst $38                                                  ; $3d8f : $ff
	rst $38                                                  ; $3d90 : $ff
	rst $38                                                  ; $3d91 : $ff
	rst $38                                                  ; $3d92 : $ff
	rst $38                                                  ; $3d93 : $ff
	rst $38                                                  ; $3d94 : $ff
	rst $38                                                  ; $3d95 : $ff
	rst $38                                                  ; $3d96 : $ff
	rst $38                                                  ; $3d97 : $ff
	rst $38                                                  ; $3d98 : $ff
	rst $38                                                  ; $3d99 : $ff
	rst $38                                                  ; $3d9a : $ff
	rst $38                                                  ; $3d9b : $ff
	rst $38                                                  ; $3d9c : $ff
	rst $38                                                  ; $3d9d : $ff
	rst $38                                                  ; $3d9e : $ff
	rst $38                                                  ; $3d9f : $ff
	rst $38                                                  ; $3da0 : $ff
	rst $38                                                  ; $3da1 : $ff
	rst $38                                                  ; $3da2 : $ff
	rst $38                                                  ; $3da3 : $ff
	rst $38                                                  ; $3da4 : $ff
	rst $38                                                  ; $3da5 : $ff
	rst $38                                                  ; $3da6 : $ff
	rst $38                                                  ; $3da7 : $ff
	rst $38                                                  ; $3da8 : $ff
	rst $38                                                  ; $3da9 : $ff
	rst $38                                                  ; $3daa : $ff
	rst $38                                                  ; $3dab : $ff
	rst $38                                                  ; $3dac : $ff
	rst $38                                                  ; $3dad : $ff
	rst $38                                                  ; $3dae : $ff
	rst $38                                                  ; $3daf : $ff
	rst $38                                                  ; $3db0 : $ff
	rst $38                                                  ; $3db1 : $ff
	rst $38                                                  ; $3db2 : $ff
	rst $38                                                  ; $3db3 : $ff
	rst $38                                                  ; $3db4 : $ff
	rst $38                                                  ; $3db5 : $ff
	rst $38                                                  ; $3db6 : $ff
	rst $38                                                  ; $3db7 : $ff
	rst $38                                                  ; $3db8 : $ff
	rst $38                                                  ; $3db9 : $ff
	rst $38                                                  ; $3dba : $ff
	rst $38                                                  ; $3dbb : $ff
	rst $38                                                  ; $3dbc : $ff
	rst $38                                                  ; $3dbd : $ff
	rst $38                                                  ; $3dbe : $ff
	rst $38                                                  ; $3dbf : $ff
	rst $38                                                  ; $3dc0 : $ff
	rst $38                                                  ; $3dc1 : $ff
	rst $38                                                  ; $3dc2 : $ff
	rst $38                                                  ; $3dc3 : $ff
	rst $38                                                  ; $3dc4 : $ff
	rst $38                                                  ; $3dc5 : $ff
	rst $38                                                  ; $3dc6 : $ff
	rst $38                                                  ; $3dc7 : $ff
	rst $38                                                  ; $3dc8 : $ff
	rst $38                                                  ; $3dc9 : $ff
	rst $38                                                  ; $3dca : $ff
	rst $38                                                  ; $3dcb : $ff
	rst $38                                                  ; $3dcc : $ff
	rst $38                                                  ; $3dcd : $ff
	rst $38                                                  ; $3dce : $ff
	rst $38                                                  ; $3dcf : $ff
	rst $38                                                  ; $3dd0 : $ff
	rst $38                                                  ; $3dd1 : $ff
	rst $38                                                  ; $3dd2 : $ff
	rst $38                                                  ; $3dd3 : $ff
	rst $38                                                  ; $3dd4 : $ff
	rst $38                                                  ; $3dd5 : $ff
	rst $38                                                  ; $3dd6 : $ff
	rst $38                                                  ; $3dd7 : $ff
	rst $38                                                  ; $3dd8 : $ff
	rst $38                                                  ; $3dd9 : $ff
	rst $38                                                  ; $3dda : $ff
	rst $38                                                  ; $3ddb : $ff
	rst $38                                                  ; $3ddc : $ff
	rst $38                                                  ; $3ddd : $ff
	rst $38                                                  ; $3dde : $ff
	rst $38                                                  ; $3ddf : $ff
	rst $38                                                  ; $3de0 : $ff
	rst $38                                                  ; $3de1 : $ff
	rst $38                                                  ; $3de2 : $ff
	rst $38                                                  ; $3de3 : $ff
	rst $38                                                  ; $3de4 : $ff
	rst $38                                                  ; $3de5 : $ff
	rst $38                                                  ; $3de6 : $ff
	rst $38                                                  ; $3de7 : $ff
	rst $38                                                  ; $3de8 : $ff
	rst $38                                                  ; $3de9 : $ff
	rst $38                                                  ; $3dea : $ff
	rst $38                                                  ; $3deb : $ff
	rst $38                                                  ; $3dec : $ff
	rst $38                                                  ; $3ded : $ff
	rst $38                                                  ; $3dee : $ff
	rst $38                                                  ; $3def : $ff
	rst $38                                                  ; $3df0 : $ff
	rst $38                                                  ; $3df1 : $ff
	rst $38                                                  ; $3df2 : $ff
	rst $38                                                  ; $3df3 : $ff
	rst $38                                                  ; $3df4 : $ff
	rst $38                                                  ; $3df5 : $ff
	rst $38                                                  ; $3df6 : $ff
	rst $38                                                  ; $3df7 : $ff
	rst $38                                                  ; $3df8 : $ff
	rst $38                                                  ; $3df9 : $ff
	rst $38                                                  ; $3dfa : $ff
	rst $38                                                  ; $3dfb : $ff
	rst $38                                                  ; $3dfc : $ff
	rst $38                                                  ; $3dfd : $ff
	rst $38                                                  ; $3dfe : $ff
	rst $38                                                  ; $3dff : $ff
	rst $38                                                  ; $3e00 : $ff
	rst $38                                                  ; $3e01 : $ff
	rst $38                                                  ; $3e02 : $ff
	rst $38                                                  ; $3e03 : $ff
	rst $38                                                  ; $3e04 : $ff
	rst $38                                                  ; $3e05 : $ff
	rst $38                                                  ; $3e06 : $ff
	rst $38                                                  ; $3e07 : $ff
	rst $38                                                  ; $3e08 : $ff
	rst $38                                                  ; $3e09 : $ff
	rst $38                                                  ; $3e0a : $ff
	rst $38                                                  ; $3e0b : $ff
	rst $38                                                  ; $3e0c : $ff
	rst $38                                                  ; $3e0d : $ff
	rst $38                                                  ; $3e0e : $ff
	rst $38                                                  ; $3e0f : $ff
	rst $38                                                  ; $3e10 : $ff
	rst $38                                                  ; $3e11 : $ff
	rst $38                                                  ; $3e12 : $ff
	rst $38                                                  ; $3e13 : $ff
	rst $38                                                  ; $3e14 : $ff
	rst $38                                                  ; $3e15 : $ff
	rst $38                                                  ; $3e16 : $ff
	rst $38                                                  ; $3e17 : $ff
	rst $38                                                  ; $3e18 : $ff
	rst $38                                                  ; $3e19 : $ff
	rst $38                                                  ; $3e1a : $ff
	rst $38                                                  ; $3e1b : $ff
	rst $38                                                  ; $3e1c : $ff
	rst $38                                                  ; $3e1d : $ff
	rst $38                                                  ; $3e1e : $ff
	rst $38                                                  ; $3e1f : $ff
	rst $38                                                  ; $3e20 : $ff
	rst $38                                                  ; $3e21 : $ff
	rst $38                                                  ; $3e22 : $ff
	rst $38                                                  ; $3e23 : $ff
	rst $38                                                  ; $3e24 : $ff
	rst $38                                                  ; $3e25 : $ff
	rst $38                                                  ; $3e26 : $ff
	rst $38                                                  ; $3e27 : $ff
	rst $38                                                  ; $3e28 : $ff
	rst $38                                                  ; $3e29 : $ff
	rst $38                                                  ; $3e2a : $ff
	rst $38                                                  ; $3e2b : $ff
	rst $38                                                  ; $3e2c : $ff
	rst $38                                                  ; $3e2d : $ff
	rst $38                                                  ; $3e2e : $ff
	rst $38                                                  ; $3e2f : $ff
	rst $38                                                  ; $3e30 : $ff
	rst $38                                                  ; $3e31 : $ff
	rst $38                                                  ; $3e32 : $ff
	rst $38                                                  ; $3e33 : $ff
	rst $38                                                  ; $3e34 : $ff
	rst $38                                                  ; $3e35 : $ff
	rst $38                                                  ; $3e36 : $ff
	rst $38                                                  ; $3e37 : $ff
	rst $38                                                  ; $3e38 : $ff
	rst $38                                                  ; $3e39 : $ff
	rst $38                                                  ; $3e3a : $ff
	rst $38                                                  ; $3e3b : $ff
	rst $38                                                  ; $3e3c : $ff
	rst $38                                                  ; $3e3d : $ff
	rst $38                                                  ; $3e3e : $ff
	rst $38                                                  ; $3e3f : $ff
	rst $38                                                  ; $3e40 : $ff
	rst $38                                                  ; $3e41 : $ff
	rst $38                                                  ; $3e42 : $ff
	rst $38                                                  ; $3e43 : $ff
	rst $38                                                  ; $3e44 : $ff

Jump_07_3e45:
	rst $38                                                  ; $3e45 : $ff
	rst $38                                                  ; $3e46 : $ff
	rst $38                                                  ; $3e47 : $ff
	rst $38                                                  ; $3e48 : $ff
	rst $38                                                  ; $3e49 : $ff
	rst $38                                                  ; $3e4a : $ff
	rst $38                                                  ; $3e4b : $ff
	rst $38                                                  ; $3e4c : $ff
	rst $38                                                  ; $3e4d : $ff
	rst $38                                                  ; $3e4e : $ff
	rst $38                                                  ; $3e4f : $ff
	rst $38                                                  ; $3e50 : $ff
	rst $38                                                  ; $3e51 : $ff
	rst $38                                                  ; $3e52 : $ff
	rst $38                                                  ; $3e53 : $ff
	rst $38                                                  ; $3e54 : $ff
	rst $38                                                  ; $3e55 : $ff
	rst $38                                                  ; $3e56 : $ff
	rst $38                                                  ; $3e57 : $ff
	rst $38                                                  ; $3e58 : $ff
	rst $38                                                  ; $3e59 : $ff
	rst $38                                                  ; $3e5a : $ff
	rst $38                                                  ; $3e5b : $ff
	rst $38                                                  ; $3e5c : $ff
	rst $38                                                  ; $3e5d : $ff
	rst $38                                                  ; $3e5e : $ff
	rst $38                                                  ; $3e5f : $ff
	rst $38                                                  ; $3e60 : $ff
	rst $38                                                  ; $3e61 : $ff
	rst $38                                                  ; $3e62 : $ff
	rst $38                                                  ; $3e63 : $ff
	rst $38                                                  ; $3e64 : $ff
	rst $38                                                  ; $3e65 : $ff
	rst $38                                                  ; $3e66 : $ff
	rst $38                                                  ; $3e67 : $ff
	rst $38                                                  ; $3e68 : $ff
	rst $38                                                  ; $3e69 : $ff
	rst $38                                                  ; $3e6a : $ff
	rst $38                                                  ; $3e6b : $ff
	rst $38                                                  ; $3e6c : $ff
	rst $38                                                  ; $3e6d : $ff
	rst $38                                                  ; $3e6e : $ff
	rst $38                                                  ; $3e6f : $ff
	rst $38                                                  ; $3e70 : $ff
	rst $38                                                  ; $3e71 : $ff
	rst $38                                                  ; $3e72 : $ff
	rst $38                                                  ; $3e73 : $ff
	rst $38                                                  ; $3e74 : $ff
	rst $38                                                  ; $3e75 : $ff
	rst $38                                                  ; $3e76 : $ff
	rst $38                                                  ; $3e77 : $ff
	rst $38                                                  ; $3e78 : $ff
	rst $38                                                  ; $3e79 : $ff
	rst $38                                                  ; $3e7a : $ff
	rst $38                                                  ; $3e7b : $ff
	rst $38                                                  ; $3e7c : $ff
	rst $38                                                  ; $3e7d : $ff
	rst $38                                                  ; $3e7e : $ff
	rst $38                                                  ; $3e7f : $ff

Call_07_3e80:
	rst $38                                                  ; $3e80 : $ff
	rst $38                                                  ; $3e81 : $ff
	rst $38                                                  ; $3e82 : $ff
	rst $38                                                  ; $3e83 : $ff
	rst $38                                                  ; $3e84 : $ff
	rst $38                                                  ; $3e85 : $ff
	rst $38                                                  ; $3e86 : $ff
	rst $38                                                  ; $3e87 : $ff
	rst $38                                                  ; $3e88 : $ff
	rst $38                                                  ; $3e89 : $ff
	rst $38                                                  ; $3e8a : $ff
	rst $38                                                  ; $3e8b : $ff
	rst $38                                                  ; $3e8c : $ff
	rst $38                                                  ; $3e8d : $ff
	rst $38                                                  ; $3e8e : $ff
	rst $38                                                  ; $3e8f : $ff
	rst $38                                                  ; $3e90 : $ff
	rst $38                                                  ; $3e91 : $ff
	rst $38                                                  ; $3e92 : $ff
	rst $38                                                  ; $3e93 : $ff
	rst $38                                                  ; $3e94 : $ff
	rst $38                                                  ; $3e95 : $ff
	rst $38                                                  ; $3e96 : $ff
	rst $38                                                  ; $3e97 : $ff
	rst $38                                                  ; $3e98 : $ff
	rst $38                                                  ; $3e99 : $ff
	rst $38                                                  ; $3e9a : $ff
	rst $38                                                  ; $3e9b : $ff
	rst $38                                                  ; $3e9c : $ff
	rst $38                                                  ; $3e9d : $ff
	rst $38                                                  ; $3e9e : $ff
	rst $38                                                  ; $3e9f : $ff
	rst $38                                                  ; $3ea0 : $ff
	rst $38                                                  ; $3ea1 : $ff
	rst $38                                                  ; $3ea2 : $ff
	rst $38                                                  ; $3ea3 : $ff
	rst $38                                                  ; $3ea4 : $ff
	rst $38                                                  ; $3ea5 : $ff
	rst $38                                                  ; $3ea6 : $ff
	rst $38                                                  ; $3ea7 : $ff
	rst $38                                                  ; $3ea8 : $ff
	rst $38                                                  ; $3ea9 : $ff
	rst $38                                                  ; $3eaa : $ff
	rst $38                                                  ; $3eab : $ff
	rst $38                                                  ; $3eac : $ff
	rst $38                                                  ; $3ead : $ff
	rst $38                                                  ; $3eae : $ff
	rst $38                                                  ; $3eaf : $ff
	rst $38                                                  ; $3eb0 : $ff
	rst $38                                                  ; $3eb1 : $ff
	rst $38                                                  ; $3eb2 : $ff
	rst $38                                                  ; $3eb3 : $ff
	rst $38                                                  ; $3eb4 : $ff
	rst $38                                                  ; $3eb5 : $ff
	rst $38                                                  ; $3eb6 : $ff
	rst $38                                                  ; $3eb7 : $ff
	rst $38                                                  ; $3eb8 : $ff
	rst $38                                                  ; $3eb9 : $ff
	rst $38                                                  ; $3eba : $ff
	rst $38                                                  ; $3ebb : $ff
	rst $38                                                  ; $3ebc : $ff
	rst $38                                                  ; $3ebd : $ff
	rst $38                                                  ; $3ebe : $ff
	rst $38                                                  ; $3ebf : $ff
	rst $38                                                  ; $3ec0 : $ff
	rst $38                                                  ; $3ec1 : $ff
	rst $38                                                  ; $3ec2 : $ff
	rst $38                                                  ; $3ec3 : $ff
	rst $38                                                  ; $3ec4 : $ff
	rst $38                                                  ; $3ec5 : $ff
	rst $38                                                  ; $3ec6 : $ff
	rst $38                                                  ; $3ec7 : $ff
	rst $38                                                  ; $3ec8 : $ff
	rst $38                                                  ; $3ec9 : $ff
	rst $38                                                  ; $3eca : $ff
	rst $38                                                  ; $3ecb : $ff
	rst $38                                                  ; $3ecc : $ff
	rst $38                                                  ; $3ecd : $ff
	rst $38                                                  ; $3ece : $ff
	rst $38                                                  ; $3ecf : $ff
	rst $38                                                  ; $3ed0 : $ff
	rst $38                                                  ; $3ed1 : $ff
	rst $38                                                  ; $3ed2 : $ff
	rst $38                                                  ; $3ed3 : $ff
	rst $38                                                  ; $3ed4 : $ff
	rst $38                                                  ; $3ed5 : $ff
	rst $38                                                  ; $3ed6 : $ff
	rst $38                                                  ; $3ed7 : $ff
	rst $38                                                  ; $3ed8 : $ff
	rst $38                                                  ; $3ed9 : $ff
	rst $38                                                  ; $3eda : $ff
	rst $38                                                  ; $3edb : $ff
	rst $38                                                  ; $3edc : $ff
	rst $38                                                  ; $3edd : $ff
	rst $38                                                  ; $3ede : $ff
	rst $38                                                  ; $3edf : $ff
	rst $38                                                  ; $3ee0 : $ff
	rst $38                                                  ; $3ee1 : $ff
	rst $38                                                  ; $3ee2 : $ff
	rst $38                                                  ; $3ee3 : $ff
	rst $38                                                  ; $3ee4 : $ff
	rst $38                                                  ; $3ee5 : $ff
	rst $38                                                  ; $3ee6 : $ff
	rst $38                                                  ; $3ee7 : $ff
	rst $38                                                  ; $3ee8 : $ff
	rst $38                                                  ; $3ee9 : $ff
	rst $38                                                  ; $3eea : $ff
	rst $38                                                  ; $3eeb : $ff
	rst $38                                                  ; $3eec : $ff
	rst $38                                                  ; $3eed : $ff
	rst $38                                                  ; $3eee : $ff
	rst $38                                                  ; $3eef : $ff
	rst $38                                                  ; $3ef0 : $ff
	rst $38                                                  ; $3ef1 : $ff
	rst $38                                                  ; $3ef2 : $ff
	rst $38                                                  ; $3ef3 : $ff
	rst $38                                                  ; $3ef4 : $ff
	rst $38                                                  ; $3ef5 : $ff
	rst $38                                                  ; $3ef6 : $ff
	rst $38                                                  ; $3ef7 : $ff
	rst $38                                                  ; $3ef8 : $ff
	rst $38                                                  ; $3ef9 : $ff
	rst $38                                                  ; $3efa : $ff
	rst $38                                                  ; $3efb : $ff
	rst $38                                                  ; $3efc : $ff
	rst $38                                                  ; $3efd : $ff
	rst $38                                                  ; $3efe : $ff
	rst $38                                                  ; $3eff : $ff
	rst $38                                                  ; $3f00 : $ff
	rst $38                                                  ; $3f01 : $ff
	rst $38                                                  ; $3f02 : $ff
	rst $38                                                  ; $3f03 : $ff
	rst $38                                                  ; $3f04 : $ff
	rst $38                                                  ; $3f05 : $ff
	rst $38                                                  ; $3f06 : $ff
	rst $38                                                  ; $3f07 : $ff
	rst $38                                                  ; $3f08 : $ff
	rst $38                                                  ; $3f09 : $ff
	rst $38                                                  ; $3f0a : $ff
	rst $38                                                  ; $3f0b : $ff
	rst $38                                                  ; $3f0c : $ff
	rst $38                                                  ; $3f0d : $ff
	rst $38                                                  ; $3f0e : $ff
	rst $38                                                  ; $3f0f : $ff
	rst $38                                                  ; $3f10 : $ff
	rst $38                                                  ; $3f11 : $ff
	rst $38                                                  ; $3f12 : $ff
	rst $38                                                  ; $3f13 : $ff
	rst $38                                                  ; $3f14 : $ff
	rst $38                                                  ; $3f15 : $ff
	rst $38                                                  ; $3f16 : $ff
	rst $38                                                  ; $3f17 : $ff
	rst $38                                                  ; $3f18 : $ff
	rst $38                                                  ; $3f19 : $ff
	rst $38                                                  ; $3f1a : $ff
	rst $38                                                  ; $3f1b : $ff
	rst $38                                                  ; $3f1c : $ff
	rst $38                                                  ; $3f1d : $ff
	rst $38                                                  ; $3f1e : $ff
	rst $38                                                  ; $3f1f : $ff
	rst $38                                                  ; $3f20 : $ff
	rst $38                                                  ; $3f21 : $ff
	rst $38                                                  ; $3f22 : $ff
	rst $38                                                  ; $3f23 : $ff
	rst $38                                                  ; $3f24 : $ff
	rst $38                                                  ; $3f25 : $ff
	rst $38                                                  ; $3f26 : $ff
	rst $38                                                  ; $3f27 : $ff
	rst $38                                                  ; $3f28 : $ff
	rst $38                                                  ; $3f29 : $ff
	rst $38                                                  ; $3f2a : $ff
	rst $38                                                  ; $3f2b : $ff
	rst $38                                                  ; $3f2c : $ff
	rst $38                                                  ; $3f2d : $ff
	rst $38                                                  ; $3f2e : $ff
	rst $38                                                  ; $3f2f : $ff
	rst $38                                                  ; $3f30 : $ff
	rst $38                                                  ; $3f31 : $ff
	rst $38                                                  ; $3f32 : $ff
	rst $38                                                  ; $3f33 : $ff
	rst $38                                                  ; $3f34 : $ff
	rst $38                                                  ; $3f35 : $ff
	rst $38                                                  ; $3f36 : $ff
	rst $38                                                  ; $3f37 : $ff
	rst $38                                                  ; $3f38 : $ff
	rst $38                                                  ; $3f39 : $ff
	rst $38                                                  ; $3f3a : $ff
	rst $38                                                  ; $3f3b : $ff
	rst $38                                                  ; $3f3c : $ff
	rst $38                                                  ; $3f3d : $ff
	rst $38                                                  ; $3f3e : $ff
	rst $38                                                  ; $3f3f : $ff
	rst $38                                                  ; $3f40 : $ff
	rst $38                                                  ; $3f41 : $ff
	rst $38                                                  ; $3f42 : $ff
	rst $38                                                  ; $3f43 : $ff
	rst $38                                                  ; $3f44 : $ff
	rst $38                                                  ; $3f45 : $ff
	rst $38                                                  ; $3f46 : $ff
	rst $38                                                  ; $3f47 : $ff
	rst $38                                                  ; $3f48 : $ff
	rst $38                                                  ; $3f49 : $ff
	rst $38                                                  ; $3f4a : $ff
	rst $38                                                  ; $3f4b : $ff
	rst $38                                                  ; $3f4c : $ff
	rst $38                                                  ; $3f4d : $ff
	rst $38                                                  ; $3f4e : $ff
	rst $38                                                  ; $3f4f : $ff
	rst $38                                                  ; $3f50 : $ff
	rst $38                                                  ; $3f51 : $ff
	rst $38                                                  ; $3f52 : $ff
	rst $38                                                  ; $3f53 : $ff
	rst $38                                                  ; $3f54 : $ff
	rst $38                                                  ; $3f55 : $ff
	rst $38                                                  ; $3f56 : $ff
	rst $38                                                  ; $3f57 : $ff
	rst $38                                                  ; $3f58 : $ff
	rst $38                                                  ; $3f59 : $ff
	rst $38                                                  ; $3f5a : $ff
	rst $38                                                  ; $3f5b : $ff
	rst $38                                                  ; $3f5c : $ff
	rst $38                                                  ; $3f5d : $ff
	rst $38                                                  ; $3f5e : $ff
	rst $38                                                  ; $3f5f : $ff
	rst $38                                                  ; $3f60 : $ff
	rst $38                                                  ; $3f61 : $ff
	rst $38                                                  ; $3f62 : $ff
	rst $38                                                  ; $3f63 : $ff
	rst $38                                                  ; $3f64 : $ff
	rst $38                                                  ; $3f65 : $ff
	rst $38                                                  ; $3f66 : $ff
	rst $38                                                  ; $3f67 : $ff
	rst $38                                                  ; $3f68 : $ff
	rst $38                                                  ; $3f69 : $ff
	rst $38                                                  ; $3f6a : $ff
	rst $38                                                  ; $3f6b : $ff
	rst $38                                                  ; $3f6c : $ff
	rst $38                                                  ; $3f6d : $ff
	rst $38                                                  ; $3f6e : $ff
	rst $38                                                  ; $3f6f : $ff
	rst $38                                                  ; $3f70 : $ff
	rst $38                                                  ; $3f71 : $ff
	rst $38                                                  ; $3f72 : $ff
	rst $38                                                  ; $3f73 : $ff
	rst $38                                                  ; $3f74 : $ff
	rst $38                                                  ; $3f75 : $ff
	rst $38                                                  ; $3f76 : $ff
	rst $38                                                  ; $3f77 : $ff
	rst $38                                                  ; $3f78 : $ff
	rst $38                                                  ; $3f79 : $ff
	rst $38                                                  ; $3f7a : $ff
	rst $38                                                  ; $3f7b : $ff
	rst $38                                                  ; $3f7c : $ff
	rst $38                                                  ; $3f7d : $ff
	rst $38                                                  ; $3f7e : $ff
	rst $38                                                  ; $3f7f : $ff
	rst $38                                                  ; $3f80 : $ff
	rst $38                                                  ; $3f81 : $ff
	rst $38                                                  ; $3f82 : $ff
	rst $38                                                  ; $3f83 : $ff
	rst $38                                                  ; $3f84 : $ff
	rst $38                                                  ; $3f85 : $ff
	rst $38                                                  ; $3f86 : $ff
	rst $38                                                  ; $3f87 : $ff
	rst $38                                                  ; $3f88 : $ff
	rst $38                                                  ; $3f89 : $ff
	rst $38                                                  ; $3f8a : $ff
	rst $38                                                  ; $3f8b : $ff
	rst $38                                                  ; $3f8c : $ff
	rst $38                                                  ; $3f8d : $ff
	rst $38                                                  ; $3f8e : $ff
	rst $38                                                  ; $3f8f : $ff
	rst $38                                                  ; $3f90 : $ff
	rst $38                                                  ; $3f91 : $ff
	rst $38                                                  ; $3f92 : $ff
	rst $38                                                  ; $3f93 : $ff
	rst $38                                                  ; $3f94 : $ff
	rst $38                                                  ; $3f95 : $ff
	rst $38                                                  ; $3f96 : $ff
	rst $38                                                  ; $3f97 : $ff
	rst $38                                                  ; $3f98 : $ff
	rst $38                                                  ; $3f99 : $ff
	rst $38                                                  ; $3f9a : $ff
	rst $38                                                  ; $3f9b : $ff
	rst $38                                                  ; $3f9c : $ff
	rst $38                                                  ; $3f9d : $ff
	rst $38                                                  ; $3f9e : $ff
	rst $38                                                  ; $3f9f : $ff
	rst $38                                                  ; $3fa0 : $ff
	rst $38                                                  ; $3fa1 : $ff
	rst $38                                                  ; $3fa2 : $ff
	rst $38                                                  ; $3fa3 : $ff
	rst $38                                                  ; $3fa4 : $ff
	rst $38                                                  ; $3fa5 : $ff
	rst $38                                                  ; $3fa6 : $ff
	rst $38                                                  ; $3fa7 : $ff
	rst $38                                                  ; $3fa8 : $ff
	rst $38                                                  ; $3fa9 : $ff
	rst $38                                                  ; $3faa : $ff
	rst $38                                                  ; $3fab : $ff
	rst $38                                                  ; $3fac : $ff
	rst $38                                                  ; $3fad : $ff
	rst $38                                                  ; $3fae : $ff
	rst $38                                                  ; $3faf : $ff
	rst $38                                                  ; $3fb0 : $ff
	rst $38                                                  ; $3fb1 : $ff
	rst $38                                                  ; $3fb2 : $ff
	rst $38                                                  ; $3fb3 : $ff
	rst $38                                                  ; $3fb4 : $ff
	rst $38                                                  ; $3fb5 : $ff
	rst $38                                                  ; $3fb6 : $ff
	rst $38                                                  ; $3fb7 : $ff
	rst $38                                                  ; $3fb8 : $ff
	rst $38                                                  ; $3fb9 : $ff
	rst $38                                                  ; $3fba : $ff
	rst $38                                                  ; $3fbb : $ff
	rst $38                                                  ; $3fbc : $ff
	rst $38                                                  ; $3fbd : $ff
	rst $38                                                  ; $3fbe : $ff
	rst $38                                                  ; $3fbf : $ff
	rst $38                                                  ; $3fc0 : $ff
	rst $38                                                  ; $3fc1 : $ff
	rst $38                                                  ; $3fc2 : $ff
	rst $38                                                  ; $3fc3 : $ff
	rst $38                                                  ; $3fc4 : $ff
	rst $38                                                  ; $3fc5 : $ff
	rst $38                                                  ; $3fc6 : $ff
	rst $38                                                  ; $3fc7 : $ff
	rst $38                                                  ; $3fc8 : $ff
	rst $38                                                  ; $3fc9 : $ff
	rst $38                                                  ; $3fca : $ff
	rst $38                                                  ; $3fcb : $ff
	rst $38                                                  ; $3fcc : $ff
	rst $38                                                  ; $3fcd : $ff
	rst $38                                                  ; $3fce : $ff
	rst $38                                                  ; $3fcf : $ff
	rst $38                                                  ; $3fd0 : $ff
	rst $38                                                  ; $3fd1 : $ff
	rst $38                                                  ; $3fd2 : $ff
	rst $38                                                  ; $3fd3 : $ff
	rst $38                                                  ; $3fd4 : $ff
	rst $38                                                  ; $3fd5 : $ff
	rst $38                                                  ; $3fd6 : $ff
	rst $38                                                  ; $3fd7 : $ff
	rst $38                                                  ; $3fd8 : $ff
	rst $38                                                  ; $3fd9 : $ff
	rst $38                                                  ; $3fda : $ff
	rst $38                                                  ; $3fdb : $ff
	rst $38                                                  ; $3fdc : $ff
	rst $38                                                  ; $3fdd : $ff
	rst $38                                                  ; $3fde : $ff
	rst $38                                                  ; $3fdf : $ff
	rst $38                                                  ; $3fe0 : $ff
	rst $38                                                  ; $3fe1 : $ff
	rst $38                                                  ; $3fe2 : $ff
	rst $38                                                  ; $3fe3 : $ff
	rst $38                                                  ; $3fe4 : $ff
	rst $38                                                  ; $3fe5 : $ff
	rst $38                                                  ; $3fe6 : $ff
	rst $38                                                  ; $3fe7 : $ff
	rst $38                                                  ; $3fe8 : $ff
	rst $38                                                  ; $3fe9 : $ff
	rst $38                                                  ; $3fea : $ff
	rst $38                                                  ; $3feb : $ff
	rst $38                                                  ; $3fec : $ff
	rst $38                                                  ; $3fed : $ff
	rst $38                                                  ; $3fee : $ff
	rst $38                                                  ; $3fef : $ff
	rst $38                                                  ; $3ff0 : $ff
	rst $38                                                  ; $3ff1 : $ff
	rst $38                                                  ; $3ff2 : $ff
	rst $38                                                  ; $3ff3 : $ff
	rst $38                                                  ; $3ff4 : $ff
	rst $38                                                  ; $3ff5 : $ff
	rst $38                                                  ; $3ff6 : $ff
	rst $38                                                  ; $3ff7 : $ff
	rst $38                                                  ; $3ff8 : $ff
	rst $38                                                  ; $3ff9 : $ff
	rst $38                                                  ; $3ffa : $ff
	rst $38                                                  ; $3ffb : $ff
	rst $38                                                  ; $3ffc : $ff
	rst $38                                                  ; $3ffd : $ff
	rst $38                                                  ; $3ffe : $ff
	rst $38                                                  ; $3fff : $ff