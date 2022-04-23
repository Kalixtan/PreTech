.include "includes.s"
        
.bank $004 slot 4
.org $0

	rst $20                                                  ; $0000 : $e7
	ret pe                                                  ; $0001 : $e8

	sub d                                                  ; $0002 : $92
	ld e, d                                                  ; $0003 : $5a
	add hl, hl                                                  ; $0004 : $29
	ld b, e                                                  ; $0005 : $43
	or h                                                  ; $0006 : $b4
	inc de                                                  ; $0007 : $13
	jp pe, $0b8b                                                  ; $0008 : $ea, $8b, $0b
	ret pe                                                  ; $000b : $e8

	call m, $69e9                                                  ; $000c : $fc, $e9, $69
	rst $20                                                  ; $000f : $e7
	ld d, l                                                  ; $0010 : $55
	dec d                                                  ; $0011 : $15
	ret                                                  ; $0012 : $c9


	ret c                                                  ; $0013 : $d8

	rst $20                                                  ; $0014 : $e7
	xor (hl)                                                  ; $0015 : $ae
	cp d                                                  ; $0016 : $ba
	jp pe, $ba56                                                  ; $0017 : $ea, $56, $ba
	jp po, $9a0e                                                  ; $001a : $e2, $0e, $9a
	.db $ed                                                  ; $001d : $ed
	ld sp, $6be5                                                  ; $001e : $31, $e5, $6b
	ld d, (hl)                                                  ; $0021 : $56
	inc c                                                  ; $0022 : $0c
	jp po, Jump_04_3972                                                  ; $0023 : $e2, $72, $39

Call_04_0026:
	dec bc                                                  ; $0026 : $0b
	jp (hl)                                                  ; $0027 : $e9


	.db $ed                                                  ; $0028 : $ed
	jp pe, $e1a1                                                  ; $0029 : $ea, $a1, $e1
	jp nc, $c915                                                  ; $002c : $d2, $15, $c9
	add hl, sp                                                  ; $002f : $39
	ex de, hl                                                  ; $0030 : $eb
	dec hl                                                  ; $0031 : $2b
	inc d                                                  ; $0032 : $14
	pop hl                                                  ; $0033 : $e1
	inc b                                                  ; $0034 : $04
	cp d                                                  ; $0035 : $ba
	ex (sp), hl                                                  ; $0036 : $e3
	ld a, a                                                  ; $0037 : $7f
	or h                                                  ; $0038 : $b4
	ld c, d                                                  ; $0039 : $4a
	ld h, e                                                  ; $003a : $63
	cp $fe                                                  ; $003b : $fe, $fe
	ld sp, $3835                                                  ; $003d : $31, $35, $38
	jr c, -$01                                                  ; $0040 : $38, $ff

	dec bc                                                  ; $0042 : $0b
	ld d, h                                                  ; $0043 : $54
	jp (hl)                                                  ; $0044 : $e9


	xor c                                                  ; $0045 : $a9
	xor e                                                  ; $0046 : $ab
	ld c, $c9                                                  ; $0047 : $0e, $c9
	add hl, sp                                                  ; $0049 : $39

Call_04_004a:
	call po, $e0f9                                                  ; $004a : $e4, $f9, $e0
	adc a, l                                                  ; $004d : $8d
	or h                                                  ; $004e : $b4
	ld d, l                                                  ; $004f : $55
	ld h, l                                                  ; $0050 : $65
	ld d, l                                                  ; $0051 : $55
	ld d, $69                                                  ; $0052 : $16, $69
	jp nz, $e90b                                                  ; $0054 : $c2, $0b, $e9
	xor c                                                  ; $0057 : $a9
	xor e                                                  ; $0058 : $ab
	add hl, hl                                                  ; $0059 : $29
	rrca                                                  ; $005a : $0f
	ret                                                  ; $005b : $c9


	push hl                                                  ; $005c : $e5
	sub c                                                  ; $005d : $91
	sub d                                                  ; $005e : $92
	ld c, d                                                  ; $005f : $4a
	jp po, $eed2                                                  ; $0060 : $e2, $d2, $ee
	rlca                                                  ; $0063 : $07
	or h                                                  ; $0064 : $b4
	rst $20                                                  ; $0065 : $e7
	xor b                                                  ; $0066 : $a8
	jp po, Jump_04_0be9                                                  ; $0067 : $e2, $e9, $0b
	.db $ed                                                  ; $006a : $ed
	ld h, l                                                  ; $006b : $65
	jp pe, $e90b                                                  ; $006c : $ea, $0b, $e9
	ld h, h                                                  ; $006f : $64
	dec c                                                  ; $0070 : $0d
	cpir                                                  ; $0071 : $ed, $b1
	adc a, c                                                  ; $0073 : $89
	sub e                                                  ; $0074 : $93
	ld c, (hl)                                                  ; $0075 : $4e
	jp (hl)                                                  ; $0076 : $e9


	ccf                                                  ; $0077 : $3f

Call_04_0078:
	ld c, d                                                  ; $0078 : $4a
	jp po, $63d3                                                  ; $0079 : $e2, $d3, $63
	ld (de), a                                                  ; $007c : $12
	dec bc                                                  ; $007d : $0b
	jp pe, $e9a6                                                  ; $007e : $ea, $a6, $e9
	adc a, d                                                  ; $0081 : $8a
	and $8d                                                  ; $0082 : $e6, $8d
	rrca                                                  ; $0084 : $0f
	ret                                                  ; $0085 : $c9


	xor h                                                  ; $0086 : $ac
	call po, $eb7c                                                  ; $0087 : $e4, $7c, $eb
	ld c, $52                                                  ; $008a : $0e, $52
	call po, $92fc                                                  ; $008c : $e4, $fc, $92
	xor $1c                                                  ; $008f : $ee, $1c
	ld h, e                                                  ; $0091 : $63
	ld d, b                                                  ; $0092 : $50
	dec bc                                                  ; $0093 : $0b
	ret pe                                                  ; $0094 : $e8

	ld b, d                                                  ; $0095 : $42
	call po, $e95a                                                  ; $0096 : $e4, $5a, $e9
	sbc a, l                                                  ; $0099 : $9d
	ex (sp), hl                                                  ; $009a : $e3
	ld (hl), b                                                  ; $009b : $70
	ld de, $89c9                                                  ; $009c : $11, $c9, $89
	ld l, h                                                  ; $009f : $6c
	push hl                                                  ; $00a0 : $e5
	ld e, d                                                  ; $00a1 : $5a
	cp e                                                  ; $00a2 : $bb
	jp (hl)                                                  ; $00a3 : $e9


	dec sp                                                  ; $00a4 : $3b
	sub d                                                  ; $00a5 : $92
	jp pe, $633f                                                  ; $00a6 : $ea, $3f, $63
	rst $20                                                  ; $00a9 : $e7
	ld a, (bc)                                                  ; $00aa : $0a
	ld h, e                                                  ; $00ab : $63
	ld c, e                                                  ; $00ac : $4b
	dec bc                                                  ; $00ad : $0b
	ex (sp), hl                                                  ; $00ae : $e3
	ld l, c                                                  ; $00af : $69
	ex (sp), hl                                                  ; $00b0 : $e3
	ld c, b                                                  ; $00b1 : $48
	jp pe, Jump_04_1768                                                  ; $00b2 : $ea, $68, $17
	res 6, h                                                  ; $00b5 : $cb, $b4
	jp (hl)                                                  ; $00b7 : $e9


	dec sp                                                  ; $00b8 : $3b
	sub d                                                  ; $00b9 : $92
	call pe, $56b5                                                  ; $00ba : $ec, $b5, $56
	ret po                                                  ; $00bd : $e0

	ld l, b                                                  ; $00be : $68
	ret po                                                  ; $00bf : $e0

	ld h, d                                                  ; $00c0 : $62
	ret po                                                  ; $00c1 : $e0

	ld e, c                                                  ; $00c2 : $59
	cp d                                                  ; $00c3 : $ba
	cp $fe                                                  ; $00c4 : $fe, $fe
	ld sp, $3033                                                  ; $00c6 : $31, $33, $30
	jr nc, -$01                                                  ; $00c9 : $30, $ff

	dec bc                                                  ; $00cb : $0b
	jp pe, $e368                                                  ; $00cc : $ea, $68, $e3
	ld c, b                                                  ; $00cf : $48
	rst $20                                                  ; $00d0 : $e7
	rst $10                                                  ; $00d1 : $d7
	ld c, $cb                                                  ; $00d2 : $0e, $cb
	sbc a, (hl)                                                  ; $00d4 : $9e
	push de                                                  ; $00d5 : $d5
	call pe, $b421                                                  ; $00d6 : $ec, $21, $b4
	jp pe, $9265                                                  ; $00d9 : $ea, $65, $92
	ex (sp), hl                                                  ; $00dc : $e3
	ei                                                  ; $00dd : $fb
	ex (sp), hl                                                  ; $00de : $e3
	ld c, l                                                  ; $00df : $4d

Jump_04_00e0:
	dec bc                                                  ; $00e0 : $0b
	ret pe                                                  ; $00e1 : $e8

	ei                                                  ; $00e2 : $fb
	ret po                                                  ; $00e3 : $e0

	or $e0                                                  ; $00e4 : $f6, $e0
	di                                                  ; $00e6 : $f3
	ret po                                                  ; $00e7 : $e0

	jp p, $cf11                                                  ; $00e8 : $f2, $11, $cf
	or h                                                  ; $00eb : $b4
	ld a, b                                                  ; $00ec : $78
	ex de, hl                                                  ; $00ed : $eb
	ld c, c                                                  ; $00ee : $49
	sub d                                                  ; $00ef : $92
	and $28                                                  ; $00f0 : $e6, $28
	call po, $43f0                                                  ; $00f2 : $e4, $f0, $43
	or h                                                  ; $00f5 : $b4
	and $28                                                  ; $00f6 : $e6, $28
	ret po                                                  ; $00f8 : $e0

	adc a, (hl)                                                  ; $00f9 : $8e
	dec bc                                                  ; $00fa : $0b
	.db $ed                                                  ; $00fb : $ed

br_04_00fc:
	dec b                                                  ; $00fc : $05
	ret pe                                                  ; $00fd : $e8

	ld (de), a                                                  ; $00fe : $12
	push hl                                                  ; $00ff : $e5
	ld e, h                                                  ; $0100 : $5c
	inc c                                                  ; $0101 : $0c
	adc a, $4c                                                  ; $0102 : $ce, $4c

br_04_0104:
	call po, $e20b                                                  ; $0104 : $e4, $0b, $e2
	ret pe                                                  ; $0107 : $e8

	.db $ed                                                  ; $0108 : $ed
	ld (hl), $e6                                                  ; $0109 : $36, $e6
	call c, Call_04_0b1f                                                  ; $010b : $dc, $1f, $0b
	ret pe                                                  ; $010e : $e8

	ld b, (hl)                                                  ; $010f : $46
	pop hl                                                  ; $0110 : $e1
	add a, (hl)                                                  ; $0111 : $86
	jp po, $e4e5                                                  ; $0112 : $e2, $e5, $e4
	inc de                                                  ; $0115 : $13
	inc de                                                  ; $0116 : $13
	ret                                                  ; $0117 : $c9


	add hl, sp                                                  ; $0118 : $39
	dec a                                                  ; $0119 : $3d
	.db $ed                                                  ; $011a : $ed
	res 6, h                                                  ; $011b : $cb, $b4
	ex (sp), hl                                                  ; $011d : $e3
	dec c                                                  ; $011e : $0d
	ex (sp), hl                                                  ; $011f : $e3
	dec bc                                                  ; $0120 : $0b
	ld h, e                                                  ; $0121 : $63
	cp $fe                                                  ; $0122 : $fe, $fe

Call_04_0124:
Jump_04_0124:
	ld sp, $3630                                                  ; $0124 : $31, $30, $36
	ld (hl), $ff                                                  ; $0127 : $36, $ff
	dec bc                                                  ; $0129 : $0b
	ld d, h                                                  ; $012a : $54
	ld e, c                                                  ; $012b : $59
	ld c, c                                                  ; $012c : $49
	djnz br_04_0104                                                  ; $012d : $10, $d5
	ld l, e                                                  ; $012f : $6b
	or h                                                  ; $0130 : $b4
	jp (hl)                                                  ; $0131 : $e9


	push de                                                  ; $0132 : $d5
	jp (hl)                                                  ; $0133 : $e9


	cp (hl)                                                  ; $0134 : $be
	ld h, e                                                  ; $0135 : $63
	cp $fe                                                  ; $0136 : $fe, $fe
	ld sp, $3434                                                  ; $0138 : $31, $34, $34
	jr nc, -$01                                                  ; $013b : $30, $ff

	dec bc                                                  ; $013d : $0b
	rst $20                                                  ; $013e : $e7
	out ($e5), a                                                  ; $013f : $d3, $e5

Jump_04_0141:
	inc hl                                                  ; $0141 : $23
	push hl                                                  ; $0142 : $e5
	sbc a, l                                                  ; $0143 : $9d
	and $9e                                                  ; $0144 : $e6, $9e
	djnz br_04_00fc                                                  ; $0146 : $10, $b4
	ld (hl), a                                                  ; $0148 : $77
	jp pe, $93cd                                                  ; $0149 : $ea, $cd, $93
	ret po                                                  ; $014c : $e0

	ld l, $e7                                                  ; $014d : $2e, $e7
	sub l                                                  ; $014f : $95
	or h                                                  ; $0150 : $b4
	call po, $9338                                                  ; $0151 : $e4, $38, $93
	ret z                                                  ; $0154 : $c8

	sbc a, $01                                                  ; $0155 : $de, $01
	call pe, $edd7                                                  ; $0157 : $ec, $d7, $ed
	adc a, (hl)                                                  ; $015a : $8e
	push hl                                                  ; $015b : $e5
	djnz br_04_016e                                                  ; $015c : $10, $10

Jump_04_015e:
	push de                                                  ; $015e : $d5
	xor $07                                                  ; $015f : $ee, $07
	or h                                                  ; $0161 : $b4
	pop hl                                                  ; $0162 : $e1
	ret nz                                                  ; $0163 : $c0

	ret po                                                  ; $0164 : $e0

	inc c                                                  ; $0165 : $0c
	ex (sp), hl                                                  ; $0166 : $e3
	sub b                                                  ; $0167 : $90
	call pe, $9345                                                  ; $0168 : $ec, $45, $93
	call po, Call_04_0bcc                                                  ; $016b : $e4, $cc, $0b

br_04_016e:
	jp po, $eb44                                                  ; $016e : $e2, $44, $eb
	jp $6ae3                                                  ; $0171 : $c3, $e3, $6a


	jp po, Jump_04_1987                                                  ; $0174 : $e2, $87, $19
	or h                                                  ; $0177 : $b4
	cp $fe                                                  ; $0178 : $fe, $fe
	ld sp, $3838                                                  ; $017a : $31, $38, $38
	jr nc, $27                                                  ; $017d : $30, $27

Jump_04_017f:
	ld d, e                                                  ; $017f : $53
	rst $38                                                  ; $0180 : $ff
	ld d, $e0                                                  ; $0181 : $16, $e0
	ld l, $ed                                                  ; $0183 : $2e, $ed
	adc a, a                                                  ; $0185 : $8f
	jp (hl)                                                  ; $0186 : $e9


	dec sp                                                  ; $0187 : $3b
	sub d                                                  ; $0188 : $92
	push hl                                                  ; $0189 : $e5
	sub l                                                  ; $018a : $95
	ld d, $ed                                                  ; $018b : $16, $ed
	ld h, d                                                  ; $018d : $62

Jump_04_018e:
	ld d, c                                                  ; $018e : $51
	ld a, (bc)                                                  ; $018f : $0a
	and $47                                                  ; $0190 : $e6, $47
	and $34                                                  ; $0192 : $e6, $34
	.db $ed                                                  ; $0194 : $ed
	dec e                                                  ; $0195 : $1d
	ld de, $bdc9                                                  ; $0196 : $11, $c9, $bd
	pop hl                                                  ; $0199 : $e1
	ld h, d                                                  ; $019a : $62
	call po, $6379                                                  ; $019b : $e4, $79, $63
	push hl                                                  ; $019e : $e5
	cp a                                                  ; $019f : $bf
	push hl                                                  ; $01a0 : $e5
	or d                                                  ; $01a1 : $b2
	push hl                                                  ; $01a2 : $e5
	cp e                                                  ; $01a3 : $bb
	jp nz, $abd7                                                  ; $01a4 : $c2, $d7, $ab
	dec bc                                                  ; $01a7 : $0b
	add a, l                                                  ; $01a8 : $85
	pop hl                                                  ; $01a9 : $e1
	ld bc, $7ae7                                                  ; $01aa : $01, $e7, $7a
	add hl, bc                                                  ; $01ad : $09
	inc c                                                  ; $01ae : $0c
	jp (hl)                                                  ; $01af : $e9


	sbc a, b                                                  ; $01b0 : $98
	ld l, l                                                  ; $01b1 : $6d
	call pe, $ba65                                                  ; $01b2 : $ec, $65, $ba
	sbc a, $01                                                  ; $01b5 : $de, $01
	call pe, $e7e5                                                  ; $01b7 : $ec, $e5, $e7
	sbc a, b                                                  ; $01ba : $98
	adc hl, sp                                                  ; $01bb : $ed, $7a
	inc c                                                  ; $01bd : $0c
	call nc, $b3e2                                                  ; $01be : $d4, $e2, $b3
	push hl                                                  ; $01c1 : $e5
	rst $08                                                  ; $01c2 : $cf
	or h                                                  ; $01c3 : $b4
	ld c, (hl)                                                  ; $01c4 : $4e
	ret pe                                                  ; $01c5 : $e8

	cp h                                                  ; $01c6 : $bc
	push hl                                                  ; $01c7 : $e5
	ld h, $0b                                                  ; $01c8 : $26, $0b
	jp pe, $e4b7                                                  ; $01ca : $ea, $b7, $e4
	rla                                                  ; $01cd : $17
	push hl                                                  ; $01ce : $e5
	add a, (hl)                                                  ; $01cf : $86
	push hl                                                  ; $01d0 : $e5
	add a, l                                                  ; $01d1 : $85
	dec d                                                  ; $01d2 : $15
	ret                                                  ; $01d3 : $c9


	ret po                                                  ; $01d4 : $e0

	dec h                                                  ; $01d5 : $25
	call c, $b8e8                                                  ; $01d6 : $dc, $e8, $b8
	push hl                                                  ; $01d9 : $e5
	ld e, b                                                  ; $01da : $58
	rst $20                                                  ; $01db : $e7
	dec c                                                  ; $01dc : $0d
	or h                                                  ; $01dd : $b4
	ld d, l                                                  ; $01de : $55
	pop hl                                                  ; $01df : $e1
	ld a, (bc)                                                  ; $01e0 : $0a
	cp d                                                  ; $01e1 : $ba
	ld de, ($e163)                                                  ; $01e2 : $ed, $5b, $63, $e1
	ld h, b                                                  ; $01e6 : $60

Call_04_01e7:
	dec bc                                                  ; $01e7 : $0b
	and $91                                                  ; $01e8 : $e6, $91
	rst $20                                                  ; $01ea : $e7
	ld e, e                                                  ; $01eb : $5b
	and $9d                                                  ; $01ec : $e6, $9d
	dec c                                                  ; $01ee : $0d
	call nc, $9399                                                  ; $01ef : $d4, $99, $93
	.db $ed                                                  ; $01f2 : $ed
	ex de, hl                                                  ; $01f3 : $eb
	sub e                                                  ; $01f4 : $93
	dec d                                                  ; $01f5 : $15
	exx                                                  ; $01f6 : $d9
	ex de, hl                                                  ; $01f7 : $eb
	rst $38                                                  ; $01f8 : $ff
	call po, Call_04_0b73                                                  ; $01f9 : $e4, $73, $0b
	jp po, $e9d8                                                  ; $01fc : $e2, $d8, $e9
	ld c, l                                                  ; $01ff : $4d
	jp pe, Jump_04_0d07                                                  ; $0200 : $ea, $07, $0d
	ret                                                  ; $0203 : $c9


	cpd                                                  ; $0204 : $ed, $a9
	jp pe, $e4ce                                                  ; $0206 : $ea, $ce, $e4
	inc sp                                                  ; $0209 : $33
	cpl                                                  ; $020a : $2f
	pop hl                                                  ; $020b : $e1
	halt                                                  ; $020c : $76
	ret po                                                  ; $020d : $e0

	jr nc, br_04_021b                                                  ; $020e : $30, $0b

	jp (hl)                                                  ; $0210 : $e9


	ld c, h                                                  ; $0211 : $4c
	jp po, $e31b                                                  ; $0212 : $e2, $1b, $e3
	ld e, e                                                  ; $0215 : $5b
	ex (sp), hl                                                  ; $0216 : $e3
	ld e, d                                                  ; $0217 : $5a
	ld c, $59                                                  ; $0218 : $0e, $59
	nop                                                  ; $021a : $00

br_04_021b:
	ld (hl), e                                                  ; $021b : $73
	ld d, $75                                                  ; $021c : $16, $75
	ld b, e                                                  ; $021e : $43
	jp c, Jump_04_32e6                                                  ; $021f : $da, $e6, $32
	add a, $76                                                  ; $0222 : $c6, $76
	or h                                                  ; $0224 : $b4
	sbc a, $01                                                  ; $0225 : $de, $01
	ret pe                                                  ; $0227 : $e8

	ld d, b                                                  ; $0228 : $50
	ret po                                                  ; $0229 : $e0

	and a                                                  ; $022a : $a7
	pop hl                                                  ; $022b : $e1
	add hl, sp                                                  ; $022c : $39
	pop hl                                                  ; $022d : $e1
	jr c, $11                                                  ; $022e : $38, $11

	and $9f                                                  ; $0230 : $e6, $9f
	jp (hl)                                                  ; $0232 : $e9


	ld h, $e6                                                  ; $0233 : $26, $e6
	xor a                                                  ; $0235 : $af
	.db $ed                                                  ; $0236 : $ed
	adc a, a                                                  ; $0237 : $8f
	cp l                                                  ; $0238 : $bd
	ret pe                                                  ; $0239 : $e8

	ld c, d                                                  ; $023a : $4a
	push hl                                                  ; $023b : $e5
	ret po                                                  ; $023c : $e0

	ld h, l                                                  ; $023d : $65
	sbc a, $c2                                                  ; $023e : $de, $c2
	ld bc, $fe35                                                  ; $0240 : $01, $35, $fe
	cp $31                                                  ; $0243 : $fe, $31
	jr c, br_04_0278                                                  ; $0245 : $38, $31

	ld ($eaff), a                                                  ; $0247 : $32, $ff, $ea
	adc a, h                                                  ; $024a : $8c
	ld (de), a                                                  ; $024b : $12
	ret                                                  ; $024c : $c9


	ccf                                                  ; $024d : $3f
	sbc a, (hl)                                                  ; $024e : $9e
	sub d                                                  ; $024f : $92
	sbc a, c                                                  ; $0250 : $99
	ex (sp), hl                                                  ; $0251 : $e3
	ld c, h                                                  ; $0252 : $4c
	push de                                                  ; $0253 : $d5
	ex de, hl                                                  ; $0254 : $eb
	ld b, h                                                  ; $0255 : $44
	or h                                                  ; $0256 : $b4
	jp pe, $ece2                                                  ; $0257 : $ea, $e2, $ec
	add a, c                                                  ; $025a : $81
	call po, Call_04_0bee                                                  ; $025b : $e4, $ee, $0b
	and b                                                  ; $025e : $a0
	.db $ed                                                  ; $025f : $ed
	dec a                                                  ; $0260 : $3d
	ex de, hl                                                  ; $0261 : $eb
	sub h                                                  ; $0262 : $94
	dec c                                                  ; $0263 : $0d
	or h                                                  ; $0264 : $b4
	call pe, $930c                                                  ; $0265 : $ec, $0c, $93
	pop hl                                                  ; $0268 : $e1
	ld e, h                                                  ; $0269 : $5c
	pop hl                                                  ; $026a : $e1
	ld (hl), a                                                  ; $026b : $77
	or h                                                  ; $026c : $b4
	sbc a, $ea                                                  ; $026d : $de, $ea
	adc a, e                                                  ; $026f : $8b
	ld bc, $e7ac                                                  ; $0270 : $01, $ac, $e7
	rst $08                                                  ; $0273 : $cf
	ld d, l                                                  ; $0274 : $55
	inc c                                                  ; $0275 : $0c
	sub $13                                                  ; $0276 : $d6, $13

br_04_0278:
	and c                                                  ; $0278 : $a1
	jp nc, $2ce9                                                  ; $0279 : $d2, $e9, $2c
	push hl                                                  ; $027c : $e5
	or d                                                  ; $027d : $b2
	jp Jump_04_27e1                                                  ; $027e : $c3, $e1, $27


	dec bc                                                  ; $0281 : $0b
	.db $ed                                                  ; $0282 : $ed
	nop                                                  ; $0283 : $00
	and $09                                                  ; $0284 : $e6, $09
	jp pe, $e4ba                                                  ; $0286 : $ea, $ba, $e4
	and l                                                  ; $0289 : $a5
	dec c                                                  ; $028a : $0d
	call nc, $a113                                                  ; $028b : $d4, $13, $a1
	ex de, hl                                                  ; $028e : $eb
	inc (hl)                                                  ; $028f : $34
	or h                                                  ; $0290 : $b4
	ex de, hl                                                  ; $0291 : $eb
	ld d, h                                                  ; $0292 : $54
	or d                                                  ; $0293 : $b2

br_04_0294:
	ld h, e                                                  ; $0294 : $63
	ret pe                                                  ; $0295 : $e8

	or d                                                  ; $0296 : $b2
	dec bc                                                  ; $0297 : $0b
	and $c6                                                  ; $0298 : $e6, $c6
	ld a, h                                                  ; $029a : $7c
	push hl                                                  ; $029b : $e5
	dec hl                                                  ; $029c : $2b
	and $8a                                                  ; $029d : $e6, $8a
	add hl, bc                                                  ; $029f : $09
	sub $13                                                  ; $02a0 : $d6, $13
	and c                                                  ; $02a2 : $a1
	jp nc, $faed                                                  ; $02a3 : $d2, $ed, $fa
	call po, Call_04_0b3a                                                  ; $02a6 : $e4, $3a, $0b
	jp pe, $e4ba                                                  ; $02a9 : $ea, $ba, $e4
	dec e                                                  ; $02ac : $1d
	.db $ed                                                  ; $02ad : $ed
	nop                                                  ; $02ae : $00
	push hl                                                  ; $02af : $e5
	or (hl)                                                  ; $02b0 : $b6
	rrca                                                  ; $02b1 : $0f
	push de                                                  ; $02b2 : $d5
	pop hl                                                  ; $02b3 : $e1
	ld l, h                                                  ; $02b4 : $6c
	or h                                                  ; $02b5 : $b4
	cp l                                                  ; $02b6 : $bd
	and c                                                  ; $02b7 : $a1
	ld h, e                                                  ; $02b8 : $63
	ret po                                                  ; $02b9 : $e0

	ld a, ($e6ed)                                                  ; $02ba : $3a, $ed, $e6
	pop hl                                                  ; $02bd : $e1
	ld a, d                                                  ; $02be : $7a
	ld b, (hl)                                                  ; $02bf : $46
	dec bc                                                  ; $02c0 : $0b
	and $a9                                                  ; $02c1 : $e6, $a9
	jp po, $e44e                                                  ; $02c3 : $e2, $4e, $e4
	jp (hl)                                                  ; $02c6 : $e9


	push hl                                                  ; $02c7 : $e5
	ld c, b                                                  ; $02c8 : $48
	djnz br_04_0294                                                  ; $02c9 : $10, $c9
	and $5c                                                  ; $02cb : $e6, $5c
	ex de, hl                                                  ; $02cd : $eb
	ret nc                                                  ; $02ce : $d0

	call po, $c365                                                  ; $02cf : $e4, $65, $c3
	pop hl                                                  ; $02d2 : $e1
	out ($2d), a                                                  ; $02d3 : $d3, $2d
	cp l                                                  ; $02d5 : $bd
	ld h, e                                                  ; $02d6 : $63
	ret po                                                  ; $02d7 : $e0

	dec a                                                  ; $02d8 : $3d
	dec bc                                                  ; $02d9 : $0b
	jp (hl)                                                  ; $02da : $e9


	nop                                                  ; $02db : $00
	.db $ed                                                  ; $02dc : $ed
	rst $30                                                  ; $02dd : $f7
	ret pe                                                  ; $02de : $e8

	cp l                                                  ; $02df : $bd
	call pe, Call_04_1130                                                  ; $02e0 : $ec, $30, $11
	ld d, (hl)                                                  ; $02e3 : $56
	ret                                                  ; $02e4 : $c9


	inc (hl)                                                  ; $02e5 : $34
	dec a                                                  ; $02e6 : $3d
	jp (hl)                                                  ; $02e7 : $e9


	ld h, $ea                                                  ; $02e8 : $26, $ea
	adc a, c                                                  ; $02ea : $89
	ex de, hl                                                  ; $02eb : $eb
	ex de, hl                                                  ; $02ec : $eb
	ld e, a                                                  ; $02ed : $5f
	ld c, l                                                  ; $02ee : $4d
	rst $20                                                  ; $02ef : $e7
	ret c                                                  ; $02f0 : $d8

	jp pe, $0b99                                                  ; $02f1 : $ea, $99, $0b
	adc a, l                                                  ; $02f4 : $8d
	jp (hl)                                                  ; $02f5 : $e9


	ld c, (hl)                                                  ; $02f6 : $4e
	jr z, br_04_030c                                                  ; $02f7 : $28, $13

	jp (hl)                                                  ; $02f9 : $e9


	ld (hl), e                                                  ; $02fa : $73
	ld d, (hl)                                                  ; $02fb : $56
	ret                                                  ; $02fc : $c9


	add hl, sp                                                  ; $02fd : $39
	pop hl                                                  ; $02fe : $e1
	cp l                                                  ; $02ff : $bd
	inc d                                                  ; $0300 : $14
	inc de                                                  ; $0301 : $13
	ex de, hl                                                  ; $0302 : $eb
	ld d, b                                                  ; $0303 : $50
	sbc a, b                                                  ; $0304 : $98
	xor $0f                                                  ; $0305 : $ee, $0f
	and (hl)                                                  ; $0307 : $a6
	ld h, e                                                  ; $0308 : $63
	ret po                                                  ; $0309 : $e0

	inc (hl)                                                  ; $030a : $34

Call_04_030b:
	dec bc                                                  ; $030b : $0b

br_04_030c:
	inc sp                                                  ; $030c : $33
	ld e, c                                                  ; $030d : $59
	ld (hl), l                                                  ; $030e : $75
	inc de                                                  ; $030f : $13
	adc a, d                                                  ; $0310 : $8a
	inc de                                                  ; $0311 : $13
	push de                                                  ; $0312 : $d5
	.db $ed                                                  ; $0313 : $ed
	jp pe, $fde4                                                  ; $0314 : $ea, $e4, $fd
	push hl                                                  ; $0317 : $e5
	ld h, (hl)                                                  ; $0318 : $66
	rst $20                                                  ; $0319 : $e7
	or a                                                  ; $031a : $b7
	ld h, l                                                  ; $031b : $65
	ret po                                                  ; $031c : $e0

	inc sp                                                  ; $031d : $33
	call pe, $e82f                                                  ; $031e : $ec, $2f, $e8
	cp l                                                  ; $0321 : $bd
	ld bc, $a3ec                                                  ; $0322 : $01, $ec, $a3
	rst $20                                                  ; $0325 : $e7
	ld hl, $ebe8                                                  ; $0326 : $21, $e8, $eb
	and $99                                                  ; $0329 : $e6, $99
	add hl, bc                                                  ; $032b : $09
	ld h, (hl)                                                  ; $032c : $66
	add hl, sp                                                  ; $032d : $39
	call nz, $e74e                                                  ; $032e : $c4, $4e, $e7
	adc a, (hl)                                                  ; $0331 : $8e
	jp pe, Jump_04_0bca                                                  ; $0332 : $ea, $ca, $0b
	ld c, c                                                  ; $0335 : $49
	ld e, c                                                  ; $0336 : $59
	push hl                                                  ; $0337 : $e5
	add a, l                                                  ; $0338 : $85
	ld c, $ed                                                  ; $0339 : $0e, $ed
	ret nz                                                  ; $033b : $c0

	jp pe, $1f47                                                  ; $033c : $ea, $47, $1f
	or h                                                  ; $033f : $b4
	call po, $93a3                                                  ; $0340 : $e4, $a3, $93
	pop hl                                                  ; $0343 : $e1
	ld ($1263), a                                                  ; $0344 : $32, $63, $12
	dec bc                                                  ; $0347 : $0b
	ex (sp), hl                                                  ; $0348 : $e3
	call z, $16e6                                                  ; $0349 : $cc, $e6, $16
	call po, $e5e9                                                  ; $034c : $e4, $e9, $e5
	sub $0e                                                  ; $034f : $d6, $0e
	ret                                                  ; $0351 : $c9


	ex (sp), hl                                                  ; $0352 : $e3
	ld b, e                                                  ; $0353 : $43
	jp $17e0                                                  ; $0354 : $c3, $e0, $17


br_04_0357:
	ld h, l                                                  ; $0357 : $65
	ex de, hl                                                  ; $0358 : $eb
	or c                                                  ; $0359 : $b1
	cp l                                                  ; $035a : $bd
	ld h, l                                                  ; $035b : $65
	ret po                                                  ; $035c : $e0

	dec hl                                                  ; $035d : $2b
	dec bc                                                  ; $035e : $0b
	.db $ed                                                  ; $035f : $ed
	or l                                                  ; $0360 : $b5
	call pe, $e3bf                                                  ; $0361 : $ec, $bf, $e3
	ld hl, ($d60b)                                                  ; $0364 : $2a, $0b, $d6
	inc de                                                  ; $0367 : $13
	and c                                                  ; $0368 : $a1
	pop hl                                                  ; $0369 : $e1
	jr br_04_0357                                                  ; $036a : $18, $eb

	ex de, hl                                                  ; $036c : $eb
	sub e                                                  ; $036d : $93
	dec (hl)                                                  ; $036e : $35
	jp nz, $ed0b                                                  ; $036f : $c2, $0b, $ed
	sub c                                                  ; $0372 : $91
	and $83                                                  ; $0373 : $e6, $83
	ld a, h                                                  ; $0375 : $7c
	ret po                                                  ; $0376 : $e0

	ld l, e                                                  ; $0377 : $6b
	rrca                                                  ; $0378 : $0f
	call nc, Call_04_11ec                                                  ; $0379 : $d4, $ec, $11
	pop hl                                                  ; $037c : $e1
	ld l, h                                                  ; $037d : $6c
	inc c                                                  ; $037e : $0c
	ld (hl), a                                                  ; $037f : $77
	pop hl                                                  ; $0380 : $e1
	ex (sp), hl                                                  ; $0381 : $e3
	dec h                                                  ; $0382 : $25
	jr nz, $16                                                  ; $0383 : $20, $16

	adc a, (hl)                                                  ; $0385 : $8e
	ld (de), a                                                  ; $0386 : $12
	dec bc                                                  ; $0387 : $0b
	ret po                                                  ; $0388 : $e0

	sbc a, (hl)                                                  ; $0389 : $9e
	ret po                                                  ; $038a : $e0

	sub (hl)                                                  ; $038b : $96
	pop hl                                                  ; $038c : $e1
	adc a, c                                                  ; $038d : $89
	pop hl                                                  ; $038e : $e1
	adc a, d                                                  ; $038f : $8a
	dec c                                                  ; $0390 : $0d
	adc a, d                                                  ; $0391 : $8a
	ld c, (hl)                                                  ; $0392 : $4e
	jp po, $e699                                                  ; $0393 : $e2, $99, $e6
	cp h                                                  ; $0396 : $bc
	sub e                                                  ; $0397 : $93
	cp l                                                  ; $0398 : $bd
	call pe, $e33c                                                  ; $0399 : $ec, $3c, $e3
	ld sp, $e601                                                  ; $039c : $31, $01, $e6
	and (hl)                                                  ; $039f : $a6
	.db $ed                                                  ; $03a0 : $ed
	adc a, h                                                  ; $03a1 : $8c
	and $a4                                                  ; $03a2 : $e6, $a4
	inc c                                                  ; $03a4 : $0c
	ret                                                  ; $03a5 : $c9


	jp po, $136c                                                  ; $03a6 : $e2, $6c, $13
	jp po, $e0b3                                                  ; $03a9 : $e2, $b3, $e0
	or b                                                  ; $03ac : $b0
	dec hl                                                  ; $03ad : $2b
	jp pe, Jump_04_0b08                                                  ; $03ae : $ea, $08, $0b
	rst $20                                                  ; $03b1 : $e7
	and a                                                  ; $03b2 : $a7
	and $3c                                                  ; $03b3 : $e6, $3c
	pop hl                                                  ; $03b5 : $e1
	ld a, ($e011)                                                  ; $03b6 : $3a, $11, $e0
	ld (hl), l                                                  ; $03b9 : $75
	cp d                                                  ; $03ba : $ba
	im 2                                                  ; $03bb : $ed, $5e
	jp pe, $00d3                                                  ; $03bd : $ea, $d3, $00
	push de                                                  ; $03c0 : $d5
	ret pe                                                  ; $03c1 : $e8

	ld a, $b4                                                  ; $03c2 : $3e, $b4
	ld (hl), c                                                  ; $03c4 : $71
	sub d                                                  ; $03c5 : $92
	push hl                                                  ; $03c6 : $e5
	adc a, b                                                  ; $03c7 : $88
	dec bc                                                  ; $03c8 : $0b
	push hl                                                  ; $03c9 : $e5
	dec bc                                                  ; $03ca : $0b
	call po, $e74e                                                  ; $03cb : $e4, $4e, $e7
	dec d                                                  ; $03ce : $15
	call po, $0d4f                                                  ; $03cf : $e4, $4f, $0d
	ret                                                  ; $03d2 : $c9


	jp (hl)                                                  ; $03d3 : $e9


	xor d                                                  ; $03d4 : $aa
	ld a, d                                                  ; $03d5 : $7a
	call po, Call_04_0c58                                                  ; $03d6 : $e4, $58, $0c
	jp pe, $92ff                                                  ; $03d9 : $ea, $ff, $92
	ret pe                                                  ; $03dc : $e8

	ld c, h                                                  ; $03dd : $4c
	dec bc                                                  ; $03de : $0b
	and $d5                                                  ; $03df : $e6, $d5
	jp pe, $e914                                                  ; $03e1 : $ea, $14, $e9
	call $b409                                                  ; $03e4 : $cd, $09, $b4
	ld c, (hl)                                                  ; $03e7 : $4e
	ld sp, $bf93                                                  ; $03e8 : $31, $93, $bf
	jp $d37f                                                  ; $03eb : $c3, $7f, $d3


	dec bc                                                  ; $03ee : $0b
	jr z, -$17                                                  ; $03ef : $28, $e9

	ld c, (hl)                                                  ; $03f1 : $4e
	ret pe                                                  ; $03f2 : $e8

	ld (hl), c                                                  ; $03f3 : $71
	ex af, af'                                                  ; $03f4 : $08
	ret                                                  ; $03f5 : $c9


	xor h                                                  ; $03f6 : $ac
	call po, Call_04_2b7c                                                  ; $03f7 : $e4, $7c, $2b
	add a, e                                                  ; $03fa : $83
	inc (hl)                                                  ; $03fb : $34
	dec bc                                                  ; $03fc : $0b
	jp (hl)                                                  ; $03fd : $e9


	ld l, d                                                  ; $03fe : $6a
	ex (sp), hl                                                  ; $03ff : $e3
	ld d, (hl)                                                  ; $0400 : $56
	ex (sp), hl                                                  ; $0401 : $e3
	ld h, $10                                                  ; $0402 : $26, $10
	ret                                                  ; $0404 : $c9


	inc de                                                  ; $0405 : $13
	jp po, $c3d3                                                  ; $0406 : $e2, $d3, $c3
	call po, $2cfb                                                  ; $0409 : $e4, $fb, $2c
	and $89                                                  ; $040c : $e6, $89
	ret pe                                                  ; $040e : $e8

	or l                                                  ; $040f : $b5
	ld d, c                                                  ; $0410 : $51
	jp (hl)                                                  ; $0411 : $e9


	ret c                                                  ; $0412 : $d8

	dec bc                                                  ; $0413 : $0b
	rst $20                                                  ; $0414 : $e7
	sbc a, a                                                  ; $0415 : $9f
	.db $ed                                                  ; $0416 : $ed
	ld h, h                                                  ; $0417 : $64
	push hl                                                  ; $0418 : $e5
	ld b, (hl)                                                  ; $0419 : $46
	rrca                                                  ; $041a : $0f
	ld h, (hl)                                                  ; $041b : $66
	xor $13                                                  ; $041c : $ee, $13
	add a, $e1                                                  ; $041e : $c6, $e1
	xor c                                                  ; $0420 : $a9
	ld c, (hl)                                                  ; $0421 : $4e
	pop hl                                                  ; $0422 : $e1
	ex de, hl                                                  ; $0423 : $eb
	cp d                                                  ; $0424 : $ba
	and $8d                                                  ; $0425 : $e6, $8d
	ld d, (hl)                                                  ; $0427 : $56
	dec c                                                  ; $0428 : $0d
	dec bc                                                  ; $0429 : $0b
	cp $fe                                                  ; $042a : $fe, $fe
	ld sp, $3036                                                  ; $042c : $31, $36, $30
	scf                                                  ; $042f : $37
	rst $38                                                  ; $0430 : $ff
	cp $fe                                                  ; $0431 : $fe, $fe
	ld sp, $3037                                                  ; $0433 : $31, $37, $30
	ld (hl), $ff                                                  ; $0436 : $36, $ff
	cp $fe                                                  ; $0438 : $fe, $fe
	ld sp, $3136                                                  ; $043a : $31, $36, $31
	add hl, sp                                                  ; $043d : $39
	rst $38                                                  ; $043e : $ff
	dec c                                                  ; $043f : $0d
	or h                                                  ; $0440 : $b4
	and $12                                                  ; $0441 : $e6, $12
	sub d                                                  ; $0443 : $92
	sbc a, $c3                                                  ; $0444 : $de, $c3
	ret po                                                  ; $0446 : $e0

	or a                                                  ; $0447 : $b7
	ld c, (hl)                                                  ; $0448 : $4e
	and $fc                                                  ; $0449 : $e6, $fc
	daa                                                  ; $044b : $27
	ld bc, $64ed                                                  ; $044c : $01, $ed, $64
	jp pe, $e26d                                                  ; $044f : $ea, $6d, $e2
	inc b                                                  ; $0452 : $04
	inc d                                                  ; $0453 : $14
	ret                                                  ; $0454 : $c9


	ld c, d                                                  ; $0455 : $4a
	jp po, $e3d3                                                  ; $0456 : $e2, $d3, $e3
	or (hl)                                                  ; $0459 : $b6
	.db $ed                                                  ; $045a : $ed
	and $0c                                                  ; $045b : $e6, $0c
	call pe, Call_04_0ed0                                                  ; $045d : $ec, $d0, $0e
	cp $fe                                                  ; $0460 : $fe, $fe
	ld sp, $3835                                                  ; $0462 : $31, $35, $38
	scf                                                  ; $0465 : $37
	rst $38                                                  ; $0466 : $ff
	dec bc                                                  ; $0467 : $0b
	jp pe, $e633                                                  ; $0468 : $ea, $33, $e6
	adc a, l                                                  ; $046b : $8d
	jp pe, Jump_04_0da6                                                  ; $046c : $ea, $a6, $0d
	call z, $afe7                                                  ; $046f : $cc, $e7, $af
	inc l                                                  ; $0472 : $2c
	inc c                                                  ; $0473 : $0c
	ex (sp), hl                                                  ; $0474 : $e3
	ret p                                                  ; $0475 : $f0

	sub (hl)                                                  ; $0476 : $96
	call pe, $e5d2                                                  ; $0477 : $ec, $d2, $e5
	ld l, e                                                  ; $047a : $6b
	dec bc                                                  ; $047b : $0b
	jp pe, $e9db                                                  ; $047c : $ea, $db, $e9
	jp $65ec                                                  ; $047f : $c3, $ec, $65


	call pe, Call_04_1967                                                  ; $0482 : $ec, $67, $19
	ret                                                  ; $0485 : $c9


	ld hl, ($7be0)                                                  ; $0486 : $2a, $e0, $7b
	ld h, e                                                  ; $0489 : $63
	cp $fe                                                  ; $048a : $fe, $fe
	ld sp, $3637                                                  ; $048c : $31, $37, $36
	dec (hl)                                                  ; $048f : $35
	rst $38                                                  ; $0490 : $ff
	jp pe, $0c76                                                  ; $0491 : $ea, $76, $0c
	call pe, $9665                                                  ; $0494 : $ec, $65, $96
	rst $20                                                  ; $0497 : $e7
	adc a, e                                                  ; $0498 : $8b
	jp (hl)                                                  ; $0499 : $e9


	out ($e7), a                                                  ; $049a : $d3, $e7
	and h                                                  ; $049c : $a4
	dec bc                                                  ; $049d : $0b
	ex (sp), hl                                                  ; $049e : $e3
	ld d, d                                                  ; $049f : $52
	jp (hl)                                                  ; $04a0 : $e9


	call nc, $ddeb                                                  ; $04a1 : $d4, $eb, $dd
	rrca                                                  ; $04a4 : $0f
	push de                                                  ; $04a5 : $d5
	jp (hl)                                                  ; $04a6 : $e9


	ei                                                  ; $04a7 : $fb
	inc c                                                  ; $04a8 : $0c
	ret pe                                                  ; $04a9 : $e8

	.db $fd                                                  ; $04aa : $fd
	cpl                                                  ; $04ab : $2f
	jp po, $ebe4                                                  ; $04ac : $e2, $e4, $eb
	add hl, hl                                                  ; $04af : $29
	ld h, e                                                  ; $04b0 : $63
	ret po                                                  ; $04b1 : $e0

	jr z, br_04_04bf                                                  ; $04b2 : $28, $0b

	and $92                                                  ; $04b4 : $e6, $92
	push hl                                                  ; $04b6 : $e5
	xor e                                                  ; $04b7 : $ab
	call pe, $e8a2                                                  ; $04b8 : $ec, $a2, $e8
	rst $30                                                  ; $04bb : $f7
	ld a, (bc)                                                  ; $04bc : $0a
	adc a, d                                                  ; $04bd : $8a
	ld c, (hl)                                                  ; $04be : $4e

br_04_04bf:
	ld c, h                                                  ; $04bf : $4c
	cp d                                                  ; $04c0 : $ba
	jp po, $b4ad                                                  ; $04c1 : $e2, $ad, $b4
	push hl                                                  ; $04c4 : $e5
	ld h, b                                                  ; $04c5 : $60
	ld bc, $dbe2                                                  ; $04c6 : $01, $e2, $db
	ex (sp), hl                                                  ; $04c9 : $e3
	ld h, $e7                                                  ; $04ca : $26, $e7
	ld (hl), c                                                  ; $04cc : $71
	dec c                                                  ; $04cd : $0d
	out ($c4), a                                                  ; $04ce : $d3, $c4
	and $f4                                                  ; $04d0 : $e6, $f4
	pop hl                                                  ; $04d2 : $e1
	ld h, b                                                  ; $04d3 : $60
	ld h, l                                                  ; $04d4 : $65
	inc de                                                  ; $04d5 : $13
	jp nz, $e651                                                  ; $04d6 : $c2, $51, $e6
	ld b, d                                                  ; $04d9 : $42
	dec bc                                                  ; $04da : $0b
	jp pe, $eaee                                                  ; $04db : $ea, $ee, $ea
	sub a                                                  ; $04de : $97
	xor $19                                                  ; $04df : $ee, $19
	rrca                                                  ; $04e1 : $0f
	or h                                                  ; $04e2 : $b4
	ld c, (hl)                                                  ; $04e3 : $4e
	jp (hl)                                                  ; $04e4 : $e9


	ld (hl), d                                                  ; $04e5 : $72
	sub d                                                  ; $04e6 : $92
	push hl                                                  ; $04e7 : $e5
	ld l, (hl)                                                  ; $04e8 : $6e
	ld d, d                                                  ; $04e9 : $52
	cp a                                                  ; $04ea : $bf
	call nz, $0de1                                                  ; $04eb : $c4, $e1, $0d
	sub d                                                  ; $04ee : $92
	sbc a, $01                                                  ; $04ef : $de, $01
	ex (sp), hl                                                  ; $04f1 : $e3
	ld (de), a                                                  ; $04f2 : $12
	.db $ed                                                  ; $04f3 : $ed
	inc hl                                                  ; $04f4 : $23
	ex (sp), hl                                                  ; $04f5 : $e3
	ld bc, $610a                                                  ; $04f6 : $01, $0a, $61
	and $15                                                  ; $04f9 : $e6, $15
	ld b, c                                                  ; $04fb : $41
	pop hl                                                  ; $04fc : $e1
	sub d                                                  ; $04fd : $92
	rst $20                                                  ; $04fe : $e7
	inc de                                                  ; $04ff : $13
	ld e, h                                                  ; $0500 : $5c
	dec bc                                                  ; $0501 : $0b
	ret po                                                  ; $0502 : $e0

	ld a, (de)                                                  ; $0503 : $1a
	dec b                                                  ; $0504 : $05
	ret po                                                  ; $0505 : $e0

	ld b, e                                                  ; $0506 : $43
	cp h                                                  ; $0507 : $bc
	ld a, (bc)                                                  ; $0508 : $0a
	adc a, $ec                                                  ; $0509 : $ce, $ec
	inc a                                                  ; $050b : $3c
	and $fb                                                  ; $050c : $e6, $fb
	sub e                                                  ; $050e : $93
	ld (hl), a                                                  ; $050f : $77
	ld h, l                                                  ; $0510 : $65
	cp a                                                  ; $0511 : $bf
	dec bc                                                  ; $0512 : $0b
	ex (sp), hl                                                  ; $0513 : $e3
	ld (bc), a                                                  ; $0514 : $02
	and c                                                  ; $0515 : $a1
	ex (sp), hl                                                  ; $0516 : $e3
	ld (de), a                                                  ; $0517 : $12
	inc c                                                  ; $0518 : $0c
	adc a, $e5                                                  ; $0519 : $ce, $e5
	sub c                                                  ; $051b : $91
	sub d                                                  ; $051c : $92
	ret po                                                  ; $051d : $e0

	adc a, b                                                  ; $051e : $88
	cp e                                                  ; $051f : $bb
	and c                                                  ; $0520 : $a1
	sub e                                                  ; $0521 : $93
	cp a                                                  ; $0522 : $bf
	cpl                                                  ; $0523 : $2f
	dec bc                                                  ; $0524 : $0b
	ex de, hl                                                  ; $0525 : $eb
	ld d, $e4                                                  ; $0526 : $16, $e4
	ld (hl), c                                                  ; $0528 : $71
	jp po, Jump_04_0b12                                                  ; $0529 : $e2, $12, $0b
	push de                                                  ; $052c : $d5
	ld (hl), b                                                  ; $052d : $70
	sbc a, a                                                  ; $052e : $9f
	ld c, $ed                                                  ; $052f : $0e, $ed
	jp nz, $6c12                                                  ; $0531 : $c2, $12, $6c
	ret pe                                                  ; $0534 : $e8

	ld a, $0b                                                  ; $0535 : $3e, $0b
	jp po, $e7a5                                                  ; $0537 : $e2, $a5, $e7
	dec de                                                  ; $053a : $1b
	ret po                                                  ; $053b : $e0

	cp b                                                  ; $053c : $b8
	ld (de), a                                                  ; $053d : $12
	push hl                                                  ; $053e : $e5
	rst $18                                                  ; $053f : $df
	ex (sp), hl                                                  ; $0540 : $e3
	ld h, $e3                                                  ; $0541 : $26, $e3
	inc c                                                  ; $0543 : $0c
	add a, e                                                  ; $0544 : $83
	ld c, $ec                                                  ; $0545 : $0e, $ec
	ld e, a                                                  ; $0547 : $5f
	jp (hl)                                                  ; $0548 : $e9


	rst $10                                                  ; $0549 : $d7
	or h                                                  ; $054a : $b4
	pop hl                                                  ; $054b : $e1
	ld a, ($c7ea)                                                  ; $054c : $3a, $ea, $c7
	ld a, (bc)                                                  ; $054f : $0a
	call pe, $ec71                                                  ; $0550 : $ec, $71, $ec
	ld (hl), d                                                  ; $0553 : $72
	ret pe                                                  ; $0554 : $e8

	add hl, bc                                                  ; $0555 : $09
	add hl, bc                                                  ; $0556 : $09
	push de                                                  ; $0557 : $d5
	ld (hl), b                                                  ; $0558 : $70
	push hl                                                  ; $0559 : $e5
	push bc                                                  ; $055a : $c5
	sub d                                                  ; $055b : $92
	xor (hl)                                                  ; $055c : $ae

br_04_055d:
	ld h, e                                                  ; $055d : $63
	jr nc, $0b                                                  ; $055e : $30, $0b

	jp (hl)                                                  ; $0560 : $e9


	jp z, $c9e9                                                  ; $0561 : $ca, $e9, $c9
	jp pe, $ea15                                                  ; $0564 : $ea, $15, $ea
	ld d, $11                                                  ; $0567 : $16, $11
	inc c                                                  ; $0569 : $0c
	call pe, $9665                                                  ; $056a : $ec, $65, $96
	push hl                                                  ; $056d : $e5
	ld l, e                                                  ; $056e : $6b

br_04_056f:
	add a, b                                                  ; $056f : $80
	ld h, e                                                  ; $0570 : $63
	sbc a, c                                                  ; $0571 : $99
	add hl, sp                                                  ; $0572 : $39
	ld d, $eb                                                  ; $0573 : $16, $eb
	sbc a, e                                                  ; $0575 : $9b
	ld h, e                                                  ; $0576 : $63
	add hl, de                                                  ; $0577 : $19
	ld l, a                                                  ; $0578 : $6f
	dec bc                                                  ; $0579 : $0b
	pop hl                                                  ; $057a : $e1
	ld d, c                                                  ; $057b : $51
	ex de, hl                                                  ; $057c : $eb
	jp p, $63ec                                                  ; $057d : $f2, $ec, $63
	rrca                                                  ; $0580 : $0f
	rst $20                                                  ; $0581 : $e7
	sbc a, e                                                  ; $0582 : $9b
	rst $20                                                  ; $0583 : $e7
	ld h, (hl)                                                  ; $0584 : $66
	jp $9399                                                  ; $0585 : $c3, $99, $93


	ld e, d                                                  ; $0588 : $5a
	call po, $65c0                                                  ; $0589 : $e4, $c0, $65
	jp (hl)                                                  ; $058c : $e9


	dec sp                                                  ; $058d : $3b
	sub e                                                  ; $058e : $93
	ld a, (bc)                                                  ; $058f : $0a
	ex (sp), hl                                                  ; $0590 : $e3
	dec l                                                  ; $0591 : $2d
	jp pe, $e968                                                  ; $0592 : $ea, $68, $e9
	xor $ea                                                  ; $0595 : $ee, $ea
	ld d, d                                                  ; $0597 : $52
	dec bc                                                  ; $0598 : $0b
	or h                                                  ; $0599 : $b4
	ld e, d                                                  ; $059a : $5a
	ret pe                                                  ; $059b : $e8

	jp m, $2c2b                                                  ; $059c : $fa, $2b, $2c
	rst $20                                                  ; $059f : $e7
	ld e, d                                                  ; $05a0 : $5a
	jp Jump_04_0a21                                                  ; $05a1 : $c3, $21, $0a


	rst $20                                                  ; $05a4 : $e7
	ld e, (hl)                                                  ; $05a5 : $5e
	jp po, $ed8c                                                  ; $05a6 : $e2, $8c, $ed
	ld c, (hl)                                                  ; $05a9 : $4e
	rrca                                                  ; $05aa : $0f
	ret                                                  ; $05ab : $c9


	push hl                                                  ; $05ac : $e5
	jr nz, br_04_055d                                                  ; $05ad : $20, $ae

	ld a, $e8                                                  ; $05af : $3e, $e8
	rrca                                                  ; $05b1 : $0f
	ex de, hl                                                  ; $05b2 : $eb
	jr c, br_04_056f                                                  ; $05b3 : $38, $ba

	call po, $e954                                                  ; $05b5 : $e4, $54, $e9
	ld b, e                                                  ; $05b8 : $43
	dec bc                                                  ; $05b9 : $0b
	ld l, $e8                                                  ; $05ba : $2e, $e8
	ld h, a                                                  ; $05bc : $67
	.db $ed                                                  ; $05bd : $ed

br_04_05be:
	scf                                                  ; $05be : $37
	ld a, (de)                                                  ; $05bf : $1a
	ret                                                  ; $05c0 : $c9


	jp nz, $bd3e                                                  ; $05c1 : $c2, $3e, $bd
	call po, Call_04_25be                                                  ; $05c4 : $e4, $be, $25
	cp $fe                                                  ; $05c7 : $fe, $fe
	ld sp, $3438                                                  ; $05c9 : $31, $38, $34
	ld (hl), $2d                                                  ; $05cc : $36, $2d
	ld sp, $3438                                                  ; $05ce : $31, $38, $34
	scf                                                  ; $05d1 : $37
	rst $38                                                  ; $05d2 : $ff
	ret pe                                                  ; $05d3 : $e8

	jp (hl)                                                  ; $05d4 : $e9


	ex (sp), hl                                                  ; $05d5 : $e3
	cp e                                                  ; $05d6 : $bb
	pop hl                                                  ; $05d7 : $e1
	rst $08                                                  ; $05d8 : $cf
	dec bc                                                  ; $05d9 : $0b
	xor h                                                  ; $05da : $ac
	dec (hl)                                                  ; $05db : $35
	rst $20                                                  ; $05dc : $e7
	rst $08                                                  ; $05dd : $cf
	ld c, $8a                                                  ; $05de : $0e, $8a
	ld d, l                                                  ; $05e0 : $55
	push hl                                                  ; $05e1 : $e5
	ld (hl), $d5                                                  ; $05e2 : $36, $d5
	call po, $65f9                                                  ; $05e4 : $e4, $f9, $65
	ld d, l                                                  ; $05e7 : $55
	ld d, $13                                                  ; $05e8 : $16, $13
	jp pe, Jump_04_018e                                                  ; $05ea : $ea, $8e, $01

Call_04_05ed:
	ret pe                                                  ; $05ed : $e8

	ld b, b                                                  ; $05ee : $40
	ex (sp), hl                                                  ; $05ef : $e3
	xor $e6                                                  ; $05f0 : $ee, $e6
	ret pe                                                  ; $05f2 : $e8

	jr br_04_05be                                                  ; $05f3 : $18, $c9

	push hl                                                  ; $05f5 : $e5
	ld (hl), $e0                                                  ; $05f6 : $36, $e0
	ld (hl), h                                                  ; $05f8 : $74
	or h                                                  ; $05f9 : $b4
	call pe, $9242                                                  ; $05fa : $ec, $42, $92
	push hl                                                  ; $05fd : $e5
	ld (hl), $ea                                                  ; $05fe : $36, $ea
	and a                                                  ; $0600 : $a7
	ex (sp), hl                                                  ; $0601 : $e3
	push af                                                  ; $0602 : $f5
	ld h, e                                                  ; $0603 : $63
	cp $fe                                                  ; $0604 : $fe, $fe
	ld sp, $3638                                                  ; $0606 : $31, $38, $36
	dec (hl)                                                  ; $0609 : $35
	rst $38                                                  ; $060a : $ff
	dec bc                                                  ; $060b : $0b
	and $83                                                  ; $060c : $e6, $83
	ex de, hl                                                  ; $060e : $eb
	ld c, l                                                  ; $060f : $4d
	push hl                                                  ; $0610 : $e5
	ld a, b                                                  ; $0611 : $78
	.db $ed                                                  ; $0612 : $ed
	dec d                                                  ; $0613 : $15
	ld c, $c9                                                  ; $0614 : $0e, $c9
	ret po                                                  ; $0616 : $e0

	or (hl)                                                  ; $0617 : $b6
	cp e                                                  ; $0618 : $bb

Call_04_0619:
	cp l                                                  ; $0619 : $bd
	ex (sp), hl                                                  ; $061a : $e3
	ld (de), a                                                  ; $061b : $12
	ret po                                                  ; $061c : $e0

	ld h, a                                                  ; $061d : $67
	ex de, hl                                                  ; $061e : $eb
	ld a, a                                                  ; $061f : $7f
	ld h, l                                                  ; $0620 : $65
	cp a                                                  ; $0621 : $bf
	dec bc                                                  ; $0622 : $0b
	cp $fe                                                  ; $0623 : $fe, $fe
	ld sp, $5435                                                  ; $0625 : $31, $35, $54
	ld c, b                                                  ; $0628 : $48
	rst $38                                                  ; $0629 : $ff
	ret po                                                  ; $062a : $e0

	ld b, d                                                  ; $062b : $42
	cp $fe                                                  ; $062c : $fe, $fe
	ld sp, $5433                                                  ; $062e : $31, $33, $54
	ld c, b                                                  ; $0631 : $48
	rst $38                                                  ; $0632 : $ff
	call pe, Call_04_0ea0                                                  ; $0633 : $ec, $a0, $0e
	call nc, $c4a1                                                  ; $0636 : $d4, $a1, $c4
	ret pe                                                  ; $0639 : $e8

	call nz, $baa1                                                  ; $063a : $c4, $a1, $ba
	inc h                                                  ; $063d : $24
	and $37                                                  ; $063e : $e6, $37
	inc l                                                  ; $0640 : $2c
	ex (sp), hl                                                  ; $0641 : $e3
	ld (bc), a                                                  ; $0642 : $02
	dec bc                                                  ; $0643 : $0b
	jp pe, $e51d                                                  ; $0644 : $ea, $1d, $e5
	sbc a, (hl)                                                  ; $0647 : $9e
	ret po                                                  ; $0648 : $e0

	ld h, c                                                  ; $0649 : $61
	ret po                                                  ; $064a : $e0

	rrc e                                                  ; $064b : $cb, $0b
	call nc, $e64a                                                  ; $064d : $d4, $4a, $e6
	call nc, $9fe5                                                  ; $0650 : $d4, $e5, $9f
	ex de, hl                                                  ; $0653 : $eb
	ld (hl), h                                                  ; $0654 : $74
	.db $ed                                                  ; $0655 : $ed
	rst $20                                                  ; $0656 : $e7
	dec bc                                                  ; $0657 : $0b
	push hl                                                  ; $0658 : $e5
	rst $10                                                  ; $0659 : $d7
	push hl                                                  ; $065a : $e5
	ld b, e                                                  ; $065b : $43
	push hl                                                  ; $065c : $e5
	ret c                                                  ; $065d : $d8

	push hl                                                  ; $065e : $e5
	exx                                                  ; $065f : $d9
	dec bc                                                  ; $0660 : $0b
	push de                                                  ; $0661 : $d5
	ld l, h                                                  ; $0662 : $6c
	jp pe, $ed47                                                  ; $0663 : $ea, $47, $ed
	ei                                                  ; $0666 : $fb
	rra                                                  ; $0667 : $1f
	or h                                                  ; $0668 : $b4
	ret po                                                  ; $0669 : $e0

	inc b                                                  ; $066a : $04
	dec bc                                                  ; $066b : $0b
	pop hl                                                  ; $066c : $e1
	inc a                                                  ; $066d : $3c
	jp po, $ea10                                                  ; $066e : $e2, $10, $ea
	inc e                                                  ; $0671 : $1c
	jp pe, Jump_04_0fc1                                                  ; $0672 : $ea, $c1, $0f
	push hl                                                  ; $0675 : $e5
	ld (hl), a                                                  ; $0676 : $77
	and $ff                                                  ; $0677 : $e6, $ff
	add a, $e9                                                  ; $0679 : $c6, $e9
	add hl, de                                                  ; $067b : $19

Call_04_067c:
	cp d                                                  ; $067c : $ba
	jp pe, $c95c                                                  ; $067d : $ea, $5c, $c9
	ld a, b                                                  ; $0680 : $78
	and $4b                                                  ; $0681 : $e6, $4b
	dec bc                                                  ; $0683 : $0b
	call po, $eb9a                                                  ; $0684 : $e4, $9a, $eb
	or $ea                                                  ; $0687 : $f6, $ea
	add hl, hl                                                  ; $0689 : $29
	jp pe, Jump_04_102a                                                  ; $068a : $ea, $2a, $10
	or h                                                  ; $068d : $b4
	jp (hl)                                                  ; $068e : $e9


	ld (hl), $e9                                                  ; $068f : $36, $e9
	ld d, $92                                                  ; $0691 : $16, $92
	ld (de), a                                                  ; $0693 : $12
	jp $b0e0                                                  ; $0694 : $c3, $e0, $b0


	halt                                                  ; $0697 : $76
	or h                                                  ; $0698 : $b4
	sbc a, $e9                                                  ; $0699 : $de, $e9
	ld d, $01                                                  ; $069b : $16, $01
	jp po, $ede7                                                  ; $069d : $e2, $e7, $ed
	cp d                                                  ; $06a0 : $ba
	jp (hl)                                                  ; $06a1 : $e9


	and e                                                  ; $06a2 : $a3

br_04_06a3:
	inc b                                                  ; $06a3 : $04
	sub $e0                                                  ; $06a4 : $d6, $e0
	ld d, $0b                                                  ; $06a6 : $16, $0b
	.db $ed                                                  ; $06a8 : $ed
	xor h                                                  ; $06a9 : $ac
	pop hl                                                  ; $06aa : $e1
	ld a, a                                                  ; $06ab : $7f
	call po, $ec10                                                  ; $06ac : $e4, $10, $ec
	and c                                                  ; $06af : $a1
	ld a, (bc)                                                  ; $06b0 : $0a
	ret                                                  ; $06b1 : $c9


	call nz, $e74e                                                  ; $06b2 : $c4, $4e, $e7
	ld a, b                                                  ; $06b5 : $78
	ex de, hl                                                  ; $06b6 : $eb
	dec (hl)                                                  ; $06b7 : $35
	jp po, Jump_04_0beb                                                  ; $06b8 : $e2, $eb, $0b
	ex de, hl                                                  ; $06bb : $eb
	rrca                                                  ; $06bc : $0f
	and $80                                                  ; $06bd : $e6, $80
	ret pe                                                  ; $06bf : $e8

	ld a, (bc)                                                  ; $06c0 : $0a
	.db $ed                                                  ; $06c1 : $ed
	add a, a                                                  ; $06c2 : $87
	rrca                                                  ; $06c3 : $0f
	or h                                                  ; $06c4 : $b4
	xor h                                                  ; $06c5 : $ac
	inc de                                                  ; $06c6 : $13
	jp nz, $e4c3                                                  ; $06c7 : $c2, $c3, $e4
	ld sp, hl                                                  ; $06ca : $f9
	ld h, e                                                  ; $06cb : $63
	ld a, ($b416)                                                  ; $06cc : $3a, $16, $b4
	sbc a, $e6                                                  ; $06cf : $de, $e6
	ld a, b                                                  ; $06d1 : $78
	ld bc, $63ed                                                  ; $06d2 : $01, $ed, $63
	ld e, l                                                  ; $06d5 : $5d
	jp (hl)                                                  ; $06d6 : $e9


	ld d, c                                                  ; $06d7 : $51
	djnz br_04_06a3                                                  ; $06d8 : $10, $c9
	ld a, $e4                                                  ; $06da : $3e, $e4
	dec de                                                  ; $06dc : $1b
	ret po                                                  ; $06dd : $e0

	or (hl)                                                  ; $06de : $b6
	jp (hl)                                                  ; $06df : $e9


Call_04_06e0:
	jp po, $eab4                                                  ; $06e0 : $e2, $b4, $ea
	in a, ($9a)                                                  ; $06e3 : $db, $9a
	.db $ed                                                  ; $06e5 : $ed
	ld sp, $0b92                                                  ; $06e6 : $31, $92, $0b
	call pe, $e5bf                                                  ; $06e9 : $ec, $bf, $e5
	sbc a, h                                                  ; $06ec : $9c
	ret po                                                  ; $06ed : $e0

	sbc a, l                                                  ; $06ee : $9d
	jr -$79                                                  ; $06ef : $18, $87

	ex de, hl                                                  ; $06f1 : $eb
	ret nz                                                  ; $06f2 : $c0

	pop hl                                                  ; $06f3 : $e1
	res 6, (hl)                                                  ; $06f4 : $cb, $b6
	sbc a, $96                                                  ; $06f6 : $de, $96
	rst $20                                                  ; $06f8 : $e7
	sub d                                                  ; $06f9 : $92
	pop hl                                                  ; $06fa : $e1
	halt                                                  ; $06fb : $76
	or h                                                  ; $06fc : $b4

Call_04_06fd:
	ex (sp), hl                                                  ; $06fd : $e3
	scf                                                  ; $06fe : $37
	sub d                                                  ; $06ff : $92
	cp $fe                                                  ; $0700 : $fe, $fe
	ld sp, $3239                                                  ; $0702 : $31, $39, $32
	add hl, sp                                                  ; $0705 : $39
	rst $38                                                  ; $0706 : $ff
	ld bc, $bee1                                                  ; $0707 : $01, $e1, $be
	call pe, $ecaf                                                  ; $070a : $ec, $af, $ec
	ld (bc), a                                                  ; $070d : $02
	call pe, Call_04_0e00                                                  ; $070e : $ec, $00, $0e
	or h                                                  ; $0711 : $b4
	pop hl                                                  ; $0712 : $e1
	rst $28                                                  ; $0713 : $ef
	jp (hl)                                                  ; $0714 : $e9


	ld (hl), b                                                  ; $0715 : $70
	jp $b0e0                                                  ; $0716 : $c3, $e0, $b0


	halt                                                  ; $0719 : $76
	or h                                                  ; $071a : $b4
	sbc a, $e9                                                  ; $071b : $de, $e9
	ld (hl), b                                                  ; $071d : $70
	ld bc, $bded                                                  ; $071e : $01, $ed, $bd
	and h                                                  ; $0721 : $a4
	ld h, $0d                                                  ; $0722 : $26, $0d
	push hl                                                  ; $0724 : $e5
	ld (bc), a                                                  ; $0725 : $02
	ex (sp), hl                                                  ; $0726 : $e3
	ld e, a                                                  ; $0727 : $5f
	jp $a146                                                  ; $0728 : $c3, $46, $a1


	sub e                                                  ; $072b : $93
	cp a                                                  ; $072c : $bf
	sbc a, $ec                                                  ; $072d : $de, $ec
	or (hl)                                                  ; $072f : $b6
	ld bc, $4fb8                                                  ; $0730 : $01, $b8, $4f
	call po, Call_04_06fd                                                  ; $0733 : $e4, $fd, $06
	dec c                                                  ; $0736 : $0d
	ld b, e                                                  ; $0737 : $43
	call nc, Call_04_3ec2                                                  ; $0738 : $d4, $c2, $3e
	cp l                                                  ; $073b : $bd
	call po, $ea77                                                  ; $073c : $e4, $77, $ea
	jr c, br_04_0757                                                  ; $073f : $38, $16

	pop hl                                                  ; $0741 : $e1
	xor b                                                  ; $0742 : $a8

br_04_0743:
	dec bc                                                  ; $0743 : $0b
	dec (hl)                                                  ; $0744 : $35
	.db $ed                                                  ; $0745 : $ed
	ld e, l                                                  ; $0746 : $5d
	.db $ed                                                  ; $0747 : $ed
	jp m, $e319                                                  ; $0748 : $fa, $19, $e3
	ld e, l                                                  ; $074b : $5d
	call pe, $e9c7                                                  ; $074c : $ec, $c7, $e9
	ld l, l                                                  ; $074f : $6d
	sub (hl)                                                  ; $0750 : $96
	and $b9                                                  ; $0751 : $e6, $b9
	ex af, af'                                                  ; $0753 : $08
	nop                                                  ; $0754 : $00
	cp $fe                                                  ; $0755 : $fe, $fe

br_04_0757:
	ld sp, $3439                                                  ; $0757 : $31, $39, $34
	inc (hl)                                                  ; $075a : $34
	rst $38                                                  ; $075b : $ff
	nop                                                  ; $075c : $00
	sbc a, b                                                  ; $075d : $98
	jp po, $94c6                                                  ; $075e : $e2, $c6, $94
	adc a, e                                                  ; $0761 : $8b
	dec bc                                                  ; $0762 : $0b
	ld e, c                                                  ; $0763 : $59
	ld (hl), e                                                  ; $0764 : $73
	ld d, h                                                  ; $0765 : $54
	dec bc                                                  ; $0766 : $0b
	call nc, $e939                                                  ; $0767 : $d4, $39, $e9
	or (hl)                                                  ; $076a : $b6
	or h                                                  ; $076b : $b4
	jp (hl)                                                  ; $076c : $e9


	sub (hl)                                                  ; $076d : $96
	sub d                                                  ; $076e : $92
	ret po                                                  ; $076f : $e0

	rst $18                                                  ; $0770 : $df
	dec bc                                                  ; $0771 : $0b
	xor $23                                                  ; $0772 : $ee, $23
	and $6c                                                  ; $0774 : $e6, $6c
	ex de, hl                                                  ; $0776 : $eb
	xor h                                                  ; $0777 : $ac
	djnz br_04_0743                                                  ; $0778 : $10, $c9
	or d                                                  ; $077a : $b2
	inc a                                                  ; $077b : $3c
	or h                                                  ; $077c : $b4
	ex de, hl                                                  ; $077d : $eb
	ld (hl), e                                                  ; $077e : $73
	ld h, a                                                  ; $077f : $67
	or h                                                  ; $0780 : $b4
	.db $ed                                                  ; $0781 : $ed
	dec a                                                  ; $0782 : $3d
	sub d                                                  ; $0783 : $92
	ret pe                                                  ; $0784 : $e8

Call_04_0785:
	ld (bc), a                                                  ; $0785 : $02
	ex (sp), hl                                                  ; $0786 : $e3
	ld a, e                                                  ; $0787 : $7b
	dec bc                                                  ; $0788 : $0b
	ex (sp), hl                                                  ; $0789 : $e3
	add a, c                                                  ; $078a : $81
	jp pe, $e644                                                  ; $078b : $ea, $44, $e6
	ld c, h                                                  ; $078e : $4c
	dec bc                                                  ; $078f : $0b
	call nc, $e6a1                                                  ; $0790 : $d4, $a1, $e6
	ld c, (hl)                                                  ; $0793 : $4e
	or h                                                  ; $0794 : $b4
	ld e, d                                                  ; $0795 : $5a
	ex de, hl                                                  ; $0796 : $eb
	sub h                                                  ; $0797 : $94
	ld d, d                                                  ; $0798 : $52
	cp a                                                  ; $0799 : $bf
	dec bc                                                  ; $079a : $0b
	and $7f                                                  ; $079b : $e6, $7f
	jp pe, $e61d                                                  ; $079d : $ea, $1d, $e6
	call po, $6ae7                                                  ; $07a0 : $e4, $e7, $6a
	dec bc                                                  ; $07a3 : $0b
	adc a, d                                                  ; $07a4 : $8a
	ld c, (hl)                                                  ; $07a5 : $4e
	inc de                                                  ; $07a6 : $13
	.db $ed                                                  ; $07a7 : $ed
	ret pe                                                  ; $07a8 : $e8

	cp d                                                  ; $07a9 : $ba
	call pe, $63e5                                                  ; $07aa : $ec, $e5, $63
	xor d                                                  ; $07ad : $aa
	ld bc, $b5e0                                                  ; $07ae : $01, $e0, $b5
	call pe, $ea46                                                  ; $07b1 : $ec, $46, $ea
	.db $dd                                                  ; $07b4 : $dd
	jp pe, $1199                                                  ; $07b5 : $ea, $99, $11
	ret                                                  ; $07b8 : $c9


	add hl, sp                                                  ; $07b9 : $39
	jp $ade1                                                  ; $07ba : $c3, $e1, $ad


	dec l                                                  ; $07bd : $2d
	cp l                                                  ; $07be : $bd
	.db $ed                                                  ; $07bf : $ed
	ld h, $ea                                                  ; $07c0 : $26, $ea

Call_04_07c2:
	adc a, $e7                                                  ; $07c2 : $ce, $e7
	call pe, $eac6                                                  ; $07c4 : $ec, $c6, $ea
	ld h, a                                                  ; $07c7 : $67
	dec bc                                                  ; $07c8 : $0b
	jp po, $e61f                                                  ; $07c9 : $e2, $1f, $e6
	ld l, h                                                  ; $07cc : $6c
	ld a, ($6610)                                                  ; $07cd : $3a, $10, $66
	xor (hl)                                                  ; $07d0 : $ae
	ld a, $e2                                                  ; $07d1 : $3e, $e2
	ld l, h                                                  ; $07d3 : $6c
	sbc a, h                                                  ; $07d4 : $9c
	ld d, $ed                                                  ; $07d5 : $16, $ed
	inc e                                                  ; $07d7 : $1c
	sbc a, h                                                  ; $07d8 : $9c
	jp pe, $4e2a                                                  ; $07d9 : $ea, $2a, $4e
	rst $20                                                  ; $07dc : $e7
	cp e                                                  ; $07dd : $bb
	dec bc                                                  ; $07de : $0b
	ld l, $e8                                                  ; $07df : $2e, $e8
	ld h, a                                                  ; $07e1 : $67
	.db $ed                                                  ; $07e2 : $ed
	scf                                                  ; $07e3 : $37
	ld de, $81c9                                                  ; $07e4 : $11, $c9, $81
	inc de                                                  ; $07e7 : $13
	inc (hl)                                                  ; $07e8 : $34
	jp Jump_04_3deb                                                  ; $07e9 : $c3, $eb, $3d


	ex (sp), hl                                                  ; $07ec : $e3
	ld h, l                                                  ; $07ed : $65

Call_04_07ee:
	inc l                                                  ; $07ee : $2c
	inc d                                                  ; $07ef : $14
	ex (sp), hl                                                  ; $07f0 : $e3
	cp $63                                                  ; $07f1 : $fe, $63
	ret po                                                  ; $07f3 : $e0

	cpl                                                  ; $07f4 : $2f
	dec bc                                                  ; $07f5 : $0b
	ld ($1be1), a                                                  ; $07f6 : $32, $e1, $1b
	jp pe, Jump_04_13e4                                                  ; $07f9 : $ea, $e4, $13
	adc a, d                                                  ; $07fc : $8a
	cp l                                                  ; $07fd : $bd
	ex de, hl                                                  ; $07fe : $eb
	or (hl)                                                  ; $07ff : $b6
	or e                                                  ; $0800 : $b3
	ex (sp), hl                                                  ; $0801 : $e3
	ret                                                  ; $0802 : $c9


	rst $10                                                  ; $0803 : $d7
	or h                                                  ; $0804 : $b4
	ex de, hl                                                  ; $0805 : $eb
	or e                                                  ; $0806 : $b3
	ex de, hl                                                  ; $0807 : $eb
	or l                                                  ; $0808 : $b5
	ex (sp), hl                                                  ; $0809 : $e3
	ld (hl), $63                                                  ; $080a : $36, $63
	ret po                                                  ; $080c : $e0

	dec sp                                                  ; $080d : $3b
	ld bc, $c6e7                                                  ; $080e : $01, $e7, $c6
	jp pe, $e0f3                                                  ; $0811 : $ea, $f3, $e0
	pop hl                                                  ; $0814 : $e1
	ld d, $c9                                                  ; $0815 : $16, $c9
	ret po                                                  ; $0817 : $e0

	ret po                                                  ; $0818 : $e0

	jp po, $c3ee                                                  ; $0819 : $e2, $ee, $c3
	pop hl                                                  ; $081c : $e1
	rst $20                                                  ; $081d : $e7
	ld l, d                                                  ; $081e : $6a
	ld h, e                                                  ; $081f : $63
	ret po                                                  ; $0820 : $e0

	jr c, br_04_084f                                                  ; $0821 : $38, $2c

	and $1e                                                  ; $0823 : $e6, $1e
	nop                                                  ; $0825 : $00
	rst $20                                                  ; $0826 : $e7
	ld h, $16                                                  ; $0827 : $26, $16
	ret pe                                                  ; $0829 : $e8

	ret po                                                  ; $082a : $e0

	dec bc                                                  ; $082b : $0b
	jp (hl)                                                  ; $082c : $e9


	dec c                                                  ; $082d : $0d
	rst $20                                                  ; $082e : $e7
	exx                                                  ; $082f : $d9
	.db $ed                                                  ; $0830 : $ed
	sub (hl)                                                  ; $0831 : $96
	rrca                                                  ; $0832 : $0f
	ret                                                  ; $0833 : $c9


	inc de                                                  ; $0834 : $13
	and c                                                  ; $0835 : $a1
	call pe, $9805                                                  ; $0836 : $ec, $05, $98
	ld e, d                                                  ; $0839 : $5a
	.db $ed                                                  ; $083a : $ed
	add a, d                                                  ; $083b : $82
	sub d                                                  ; $083c : $92
	inc sp                                                  ; $083d : $33
	ld h, e                                                  ; $083e : $63
	ret po                                                  ; $083f : $e0

	jr c, br_04_084d                                                  ; $0840 : $38, $0b

	call po, $e2e9                                                  ; $0842 : $e4, $e9, $e2
	ld c, (hl)                                                  ; $0845 : $4e
	ret pe                                                  ; $0846 : $e8

	ld a, a                                                  ; $0847 : $7f
	jp pe, Jump_04_0f96                                                  ; $0848 : $ea, $96, $0f
	out ($3d), a                                                  ; $084b : $d3, $3d

br_04_084d:
	inc d                                                  ; $084d : $14
	inc de                                                  ; $084e : $13

br_04_084f:
	call pe, $bae5                                                  ; $084f : $ec, $e5, $ba
	ld h, e                                                  ; $0852 : $63
	ret po                                                  ; $0853 : $e0

	scf                                                  ; $0854 : $37
	ld d, d                                                  ; $0855 : $52
	ld c, (hl)                                                  ; $0856 : $4e
	call pe, Call_04_0bb5                                                  ; $0857 : $ec, $b5, $0b
	ex de, hl                                                  ; $085a : $eb
	xor a                                                  ; $085b : $af
	ret pe                                                  ; $085c : $e8

	dec hl                                                  ; $085d : $2b
	add a, (hl)                                                  ; $085e : $86
	call pe, Call_04_0f8f                                                  ; $085f : $ec, $8f, $0f
	ret                                                  ; $0862 : $c9


	ld hl, ($d3e2)                                                  ; $0863 : $2a, $e2, $d3
	.db $ed                                                  ; $0866 : $ed
	ret                                                  ; $0867 : $c9


	inc h                                                  ; $0868 : $24
	jp po, $ba60                                                  ; $0869 : $e2, $60, $ba
	inc sp                                                  ; $086c : $33

Jump_04_086d:
	ld h, e                                                  ; $086d : $63
	ret po                                                  ; $086e : $e0

	ld b, c                                                  ; $086f : $41
	dec bc                                                  ; $0870 : $0b
	call pe, $e75c                                                  ; $0871 : $ec, $5c, $e7
	ld l, e                                                  ; $0874 : $6b
	and $07                                                  ; $0875 : $e6, $07
	ex af, af'                                                  ; $0877 : $08
	adc a, d                                                  ; $0878 : $8a
	inc de                                                  ; $0879 : $13
	push de                                                  ; $087a : $d5
	ld l, e                                                  ; $087b : $6b
	or h                                                  ; $087c : $b4
	rst $20                                                  ; $087d : $e7
	ld l, $01                                                  ; $087e : $2e, $01
	pop hl                                                  ; $0880 : $e1
	ld a, a                                                  ; $0881 : $7f
	.db $ed                                                  ; $0882 : $ed
	xor h                                                  ; $0883 : $ac
	call po, $ec10                                                  ; $0884 : $e4, $10, $ec
	and c                                                  ; $0887 : $a1
	ld de, $80d5                                                  ; $0888 : $11, $d5, $80
	or h                                                  ; $088b : $b4
	ld c, (hl)                                                  ; $088c : $4e
	ex de, hl                                                  ; $088d : $eb
	sbc a, a                                                  ; $088e : $9f
	call po, $e0d5                                                  ; $088f : $e4, $d5, $e0
	ld a, d                                                  ; $0892 : $7a
	or h                                                  ; $0893 : $b4
	ld ($6391), hl                                                  ; $0894 : $22, $91, $63
	ret po                                                  ; $0897 : $e0

	ld sp, $e70b                                                  ; $0898 : $31, $0b, $e7
	sub b                                                  ; $089b : $90
	push hl                                                  ; $089c : $e5
	xor a                                                  ; $089d : $af
	rst $20                                                  ; $089e : $e7
	dec (hl)                                                  ; $089f : $35
	jp po, Jump_04_0b89                                                  ; $08a0 : $e2, $89, $0b
	adc a, $3b                                                  ; $08a3 : $ce, $3b
	rst $20                                                  ; $08a5 : $e7
	rst $20                                                  ; $08a6 : $e7
	ld sp, ($8ee0)                                                  ; $08a7 : $ed, $7b, $e0, $8e
	ld h, l                                                  ; $08ab : $65
	cp l                                                  ; $08ac : $bd
	dec bc                                                  ; $08ad : $0b
	ret po                                                  ; $08ae : $e0

	inc h                                                  ; $08af : $24
	ret po                                                  ; $08b0 : $e0

	ld b, a                                                  ; $08b1 : $47
	ret po                                                  ; $08b2 : $e0

	add hl, hl                                                  ; $08b3 : $29
	call po, Call_04_0f1a                                                  ; $08b4 : $e4, $1a, $0f
	adc a, d                                                  ; $08b7 : $8a
	xor d                                                  ; $08b8 : $aa
	ex de, hl                                                  ; $08b9 : $eb
	rst $28                                                  ; $08ba : $ef
	jp (hl)                                                  ; $08bb : $e9


	ld l, (hl)                                                  ; $08bc : $6e
	ld h, e                                                  ; $08bd : $63
	ret pe                                                  ; $08be : $e8

	rst $08                                                  ; $08bf : $cf
	dec l                                                  ; $08c0 : $2d
	cp l                                                  ; $08c1 : $bd
	ld h, e                                                  ; $08c2 : $63
	ret po                                                  ; $08c3 : $e0

	add hl, sp                                                  ; $08c4 : $39
	ld bc, $33e5                                                  ; $08c5 : $01, $e5, $33

Jump_04_08c8:
	ex (sp), hl                                                  ; $08c8 : $e3
	ret m                                                  ; $08c9 : $f8

	ex de, hl                                                  ; $08ca : $eb
	ld a, l                                                  ; $08cb : $7d

Call_04_08cc:
	ld a, (bc)                                                  ; $08cc : $0a
	sub $4e                                                  ; $08cd : $d6, $4e
	ld h, $ed                                                  ; $08cf : $26, $ed
	ret pe                                                  ; $08d1 : $e8

	ld b, (hl)                                                  ; $08d2 : $46
	cp d                                                  ; $08d3 : $ba
	ex (sp), hl                                                  ; $08d4 : $e3
	ld (bc), a                                                  ; $08d5 : $02
	dec bc                                                  ; $08d6 : $0b
	and $d4                                                  ; $08d7 : $e6, $d4
	and $0c                                                  ; $08d9 : $e6, $0c
	jp po, $eb9e                                                  ; $08db : $e2, $9e, $eb
	ld d, d                                                  ; $08de : $52
	dec b                                                  ; $08df : $05
	adc a, d                                                  ; $08e0 : $8a
	in a, ($5e)                                                  ; $08e1 : $db, $5e
	adc a, b                                                  ; $08e3 : $88
	ld bc, $bfed                                                  ; $08e4 : $01, $ed, $bf
	ret po                                                  ; $08e7 : $e0

	ret nc                                                  ; $08e8 : $d0

	call po, $e867                                                  ; $08e9 : $e4, $67, $e8
	dec hl                                                  ; $08ec : $2b
	inc b                                                  ; $08ed : $04
	adc a, $79                                                  ; $08ee : $ce, $79
	sub c                                                  ; $08f0 : $91
	dec bc                                                  ; $08f1 : $0b
	ld ($9c69), hl                                                  ; $08f2 : $22, $69, $9c
	ret pe                                                  ; $08f5 : $e8

	or $0c                                                  ; $08f6 : $f6, $0c
	ret                                                  ; $08f8 : $c9


	ld a, b                                                  ; $08f9 : $78
	and (hl)                                                  ; $08fa : $a6

Jump_04_08fb:
	jp pe, $b9cc                                                  ; $08fb : $ea, $cc, $b9
	.db $ed                                                  ; $08fe : $ed
	sub c                                                  ; $08ff : $91
	nop                                                  ; $0900 : $00
	ex (sp), hl                                                  ; $0901 : $e3
	ld h, b                                                  ; $0902 : $60
	dec bc                                                  ; $0903 : $0b
	rst $20                                                  ; $0904 : $e7
	.db $ed                                                  ; $0905 : $ed
	ex (sp), hl                                                  ; $0906 : $e3
	add a, e                                                  ; $0907 : $83
	jp (hl)                                                  ; $0908 : $e9


	or b                                                  ; $0909 : $b0
	add hl, bc                                                  ; $090a : $09
	ret                                                  ; $090b : $c9


	cp l                                                  ; $090c : $bd
	inc (hl)                                                  ; $090d : $34
	ld l, h                                                  ; $090e : $6c
	halt                                                  ; $090f : $76
	or h                                                  ; $0910 : $b4
	ret po                                                  ; $0911 : $e0

	ld a, (bc)                                                  ; $0912 : $0a
	dec bc                                                  ; $0913 : $0b
	jp pe, $eadf                                                  ; $0914 : $ea, $df, $ea
	ex de, hl                                                  ; $0917 : $eb
	ex (sp), hl                                                  ; $0918 : $e3
	adc a, e                                                  ; $0919 : $8b
	ld b, $cc                                                  ; $091a : $06, $cc
	ret pe                                                  ; $091c : $e8

	add hl, hl                                                  ; $091d : $29
	rrca                                                  ; $091e : $0f
	cpl                                                  ; $091f : $2f
	dec bc                                                  ; $0920 : $0b
	pop hl                                                  ; $0921 : $e1
	xor e                                                  ; $0922 : $ab
	and $19                                                  ; $0923 : $e6, $19
	.db $ed                                                  ; $0925 : $ed
	rst $10                                                  ; $0926 : $d7
	dec c                                                  ; $0927 : $0d
	call Call_04_1d78                                                  ; $0928 : $cd, $78, $1d
	sub d                                                  ; $092b : $92
	push hl                                                  ; $092c : $e5
	ld (de), a                                                  ; $092d : $12
	and $28                                                  ; $092e : $e6, $28
	ld d, $eb                                                  ; $0930 : $16, $eb
	sub b                                                  ; $0932 : $90
	cpl                                                  ; $0933 : $2f
	dec bc                                                  ; $0934 : $0b
	.db $ed                                                  ; $0935 : $ed
	dec b                                                  ; $0936 : $05
	jp (hl)                                                  ; $0937 : $e9


	sub d                                                  ; $0938 : $92
	push hl                                                  ; $0939 : $e5
	ld e, e                                                  ; $093a : $5b
	ex af, af'                                                  ; $093b : $08
	adc a, $87                                                  ; $093c : $ce, $87
	ret pe                                                  ; $093e : $e8

	sub d                                                  ; $093f : $92
	xor (hl)                                                  ; $0940 : $ae
	sub e                                                  ; $0941 : $93
	cp l                                                  ; $0942 : $bd
	dec bc                                                  ; $0943 : $0b
	rst $20                                                  ; $0944 : $e7
	ld a, d                                                  ; $0945 : $7a
	rst $20                                                  ; $0946 : $e7
	call nc, Call_04_0a10                                                  ; $0947 : $d4, $10, $0a
	call Call_04_26e8                                                  ; $094a : $cd, $e8, $26
	sub d                                                  ; $094d : $92
	push bc                                                  ; $094e : $c5
	and $3b                                                  ; $094f : $e6, $3b
	sub c                                                  ; $0951 : $91
	cpl                                                  ; $0952 : $2f
	dec bc                                                  ; $0953 : $0b
	call pe, $ecb0                                                  ; $0954 : $ec, $b0, $ec
	inc de                                                  ; $0957 : $13
	dec sp                                                  ; $0958 : $3b
	inc d                                                  ; $0959 : $14
	call z, Call_04_2f72                                                  ; $095a : $cc, $72, $2f
	jp nc, $b1ea                                                  ; $095d : $d2, $ea, $b1
	ld d, $a8                                                  ; $0960 : $16, $a8
	push hl                                                  ; $0962 : $e5
	ld c, l                                                  ; $0963 : $4d
	.db $ed                                                  ; $0964 : $ed
	call m, Call_04_37e1                                                  ; $0965 : $fc, $e1, $37
	inc l                                                  ; $0968 : $2c
	.db $ed                                                  ; $0969 : $ed
	rst $10                                                  ; $096a : $d7
	sbc a, d                                                  ; $096b : $9a
	push bc                                                  ; $096c : $c5
	dec bc                                                  ; $096d : $0b
	and $74                                                  ; $096e : $e6, $74
	ret po                                                  ; $0970 : $e0

	sub b                                                  ; $0971 : $90
	call po, $0f52                                                  ; $0972 : $e4, $52, $0f
	ret pe                                                  ; $0975 : $e8

	cp (hl)                                                  ; $0976 : $be
	and (hl)                                                  ; $0977 : $a6
	dec a                                                  ; $0978 : $3d
	rst $20                                                  ; $0979 : $e7
	ld hl, $e216                                                  ; $097a : $21, $16, $e2
	or h                                                  ; $097d : $b4
	pop hl                                                  ; $097e : $e1
	ld a, b                                                  ; $097f : $78
	or (hl)                                                  ; $0980 : $b6
	call po, Call_04_0b7b                                                  ; $0981 : $e4, $7b, $0b
	ret pe                                                  ; $0984 : $e8

	or (hl)                                                  ; $0985 : $b6
	jp pe, $85a0                                                  ; $0986 : $ea, $a0, $85
	rst $20                                                  ; $0989 : $e7
	rst $28                                                  ; $098a : $ef
	ld a, (bc)                                                  ; $098b : $0a
	jp z, $e478                                                  ; $098c : $ca, $78, $e4
	sbc a, e                                                  ; $098f : $9b
	ld h, l                                                  ; $0990 : $65

Jump_04_0991:
	ex de, hl                                                  ; $0991 : $eb
	or c                                                  ; $0992 : $b1
	cp l                                                  ; $0993 : $bd
	cpl                                                  ; $0994 : $2f
	dec bc                                                  ; $0995 : $0b
	jp pe, $e434                                                  ; $0996 : $ea, $34, $e4
	ld e, c                                                  ; $0999 : $59
	jp (hl)                                                  ; $099a : $e9


	ld a, c                                                  ; $099b : $79
	jp (hl)                                                  ; $099c : $e9


	ld a, b                                                  ; $099d : $78
	ex af, af'                                                  ; $099e : $08
	sub h                                                  ; $099f : $94
	add hl, sp                                                  ; $09a0 : $39
	ld l, h                                                  ; $09a1 : $6c
	rst $20                                                  ; $09a2 : $e7
	ld c, e                                                  ; $09a3 : $4b
	or h                                                  ; $09a4 : $b4
	ld sp, $e60b                                                  ; $09a5 : $31, $0b, $e6
	ld l, (hl)                                                  ; $09a8 : $6e
	ex (sp), hl                                                  ; $09a9 : $e3
	adc a, b                                                  ; $09aa : $88
	.db $ed                                                  ; $09ab : $ed
	ld hl, $14ed                                                  ; $09ac : $21, $ed, $14
	.db $ed                                                  ; $09af : $ed
	ld de, $80e5                                                  ; $09b0 : $11, $e5, $80
	ld c, c                                                  ; $09b3 : $49
	add hl, hl                                                  ; $09b4 : $29
	add hl, bc                                                  ; $09b5 : $09
	ret pe                                                  ; $09b6 : $e8

	cp (hl)                                                  ; $09b7 : $be
	jr c, br_04_0a2a                                                  ; $09b8 : $38, $70

	jp pe, $e3d5                                                  ; $09ba : $ea, $d5, $e3
	sub c                                                  ; $09bd : $91
	dec bc                                                  ; $09be : $0b
	jr nz, br_04_0a0c                                                  ; $09bf : $20, $4b

	dec c                                                  ; $09c1 : $0d
	ld a, (bc)                                                  ; $09c2 : $0a
	ret pe                                                  ; $09c3 : $e8

	cp (hl)                                                  ; $09c4 : $be

Jump_04_09c5:
	jr c, -$20                                                  ; $09c5 : $38, $e0

	.db $fd                                                  ; $09c7 : $fd
	ret po                                                  ; $09c8 : $e0

	ret                                                  ; $09c9 : $c9


	ret pe                                                  ; $09ca : $e8

	ld hl, $230b                                                  ; $09cb : $21, $0b, $23
	ret pe                                                  ; $09ce : $e8

	adc a, h                                                  ; $09cf : $8c
	ex de, hl                                                  ; $09d0 : $eb
	xor l                                                  ; $09d1 : $ad
	rlca                                                  ; $09d2 : $07
	ret                                                  ; $09d3 : $c9


	add hl, sp                                                  ; $09d4 : $39
	ld l, h                                                  ; $09d5 : $6c
	rst $00                                                  ; $09d6 : $c7
	sub d                                                  ; $09d7 : $92
	ld b, l                                                  ; $09d8 : $45
	dec bc                                                  ; $09d9 : $0b
	call pe, $e429                                                  ; $09da : $ec, $29, $e4
	ld e, a                                                  ; $09dd : $5f
	rst $20                                                  ; $09de : $e7
	dec h                                                  ; $09df : $25
	ld b, $ce                                                  ; $09e0 : $06, $ce
	ld a, c                                                  ; $09e2 : $79
	inc (hl)                                                  ; $09e3 : $34
	ld h, e                                                  ; $09e4 : $63
	ld (hl), l                                                  ; $09e5 : $75
	dec bc                                                  ; $09e6 : $0b
	ret pe                                                  ; $09e7 : $e8

	call c, $f0e5                                                  ; $09e8 : $dc, $e5, $f0
	call pe, Call_04_0ac2                                                  ; $09eb : $ec, $c2, $0a
	rst $08                                                  ; $09ee : $cf
	or h                                                  ; $09ef : $b4
	sub c                                                  ; $09f0 : $91
	or e                                                  ; $09f1 : $b3
	call pe, $b444                                                  ; $09f2 : $ec, $44, $b4
	ret pe                                                  ; $09f5 : $e8

	adc a, a                                                  ; $09f6 : $8f
	dec bc                                                  ; $09f7 : $0b
	ld ($92e9), hl                                                  ; $09f8 : $22, $e9, $92

Jump_04_09fb:
	ret po                                                  ; $09fb : $e0

	ret m                                                  ; $09fc : $f8

br_04_09fd:
	ld b, $ce                                                  ; $09fd : $06, $ce
	add a, c                                                  ; $09ff : $81
	and (hl)                                                  ; $0a00 : $a6
	ld h, e                                                  ; $0a01 : $63
	ld b, l                                                  ; $0a02 : $45
	dec bc                                                  ; $0a03 : $0b
	call pe, $e4b3                                                  ; $0a04 : $ec, $b3, $e4
	ld h, c                                                  ; $0a07 : $61
	ret pe                                                  ; $0a08 : $e8

Jump_04_0a09:
	ld a, e                                                  ; $0a09 : $7b

br_04_0a0a:
	inc c                                                  ; $0a0a : $0c
	ret                                                  ; $0a0b : $c9


br_04_0a0c:
	inc (hl)                                                  ; $0a0c : $34
	ld h, e                                                  ; $0a0d : $63
	ld c, e                                                  ; $0a0e : $4b
	ld l, h                                                  ; $0a0f : $6c

Call_04_0a10:
	ex (sp), hl                                                  ; $0a10 : $e3
	push bc                                                  ; $0a11 : $c5

Jump_04_0a12:
	ld l, d                                                  ; $0a12 : $6a
	ld b, h                                                  ; $0a13 : $44
	ld d, $c7                                                  ; $0a14 : $16, $c7
	dec bc                                                  ; $0a16 : $0b
	xor $27                                                  ; $0a17 : $ee, $27
	ex (sp), hl                                                  ; $0a19 : $e3
	jr nz, br_04_09fd                                                  ; $0a1a : $20, $e1

	adc a, h                                                  ; $0a1c : $8c
	ld a, (bc)                                                  ; $0a1d : $0a
	ld h, (hl)                                                  ; $0a1e : $66
	xor (hl)                                                  ; $0a1f : $ae
	ld l, h                                                  ; $0a20 : $6c

Call_04_0a21:
Jump_04_0a21:
	xor $15                                                  ; $0a21 : $ee, $15
	ret pe                                                  ; $0a23 : $e8

	ld b, e                                                  ; $0a24 : $43
	jp (hl)                                                  ; $0a25 : $e9


	inc c                                                  ; $0a26 : $0c
	dec bc                                                  ; $0a27 : $0b
	.db $ed                                                  ; $0a28 : $ed
	scf                                                  ; $0a29 : $37

br_04_0a2a:
	jp po, $eed4                                                  ; $0a2a : $e2, $d4, $ee
	add hl, bc                                                  ; $0a2d : $09
	ld a, (bc)                                                  ; $0a2e : $0a
	ret                                                  ; $0a2f : $c9


	xor (hl)                                                  ; $0a30 : $ae
	ld l, h                                                  ; $0a31 : $6c
	dec h                                                  ; $0a32 : $25
	ret pe                                                  ; $0a33 : $e8

Call_04_0a34:
	or (hl)                                                  ; $0a34 : $b6
	ld d, $e6                                                  ; $0a35 : $16, $e6
	inc sp                                                  ; $0a37 : $33
	dec bc                                                  ; $0a38 : $0b
	rst $20                                                  ; $0a39 : $e7
	call nc, Call_04_32e9                                                  ; $0a3a : $d4, $e9, $32
	and $46                                                  ; $0a3d : $e6, $46

Call_04_0a3f:
	djnz br_04_0a0a                                                  ; $0a3f : $10, $c9
	and (hl)                                                  ; $0a41 : $a6
	ccf                                                  ; $0a42 : $3f
	ex (sp), ix                                                  ; $0a43 : $dd, $e3
	ld b, l                                                  ; $0a45 : $45

Jump_04_0a46:
	cp d                                                  ; $0a46 : $ba
	push hl                                                  ; $0a47 : $e5
	ld h, d                                                  ; $0a48 : $62
	ld d, (hl)                                                  ; $0a49 : $56
	and $6b                                                  ; $0a4a : $e6, $6b
	cp d                                                  ; $0a4c : $ba
	.db $ed                                                  ; $0a4d : $ed
	call po, $850b                                                  ; $0a4e : $e4, $0b, $85
	ex de, hl                                                  ; $0a51 : $eb
	adc a, l                                                  ; $0a52 : $8d
	rst $20                                                  ; $0a53 : $e7
	.db $ed                                                  ; $0a54 : $ed
	rst $20                                                  ; $0a55 : $e7
	xor $0a                                                  ; $0a56 : $ee, $0a
	ret                                                  ; $0a58 : $c9


	and (hl)                                                  ; $0a59 : $a6
	ex de, hl                                                  ; $0a5a : $eb
	ld l, $e8                                                  ; $0a5b : $2e, $e8
	pop de                                                  ; $0a5d : $d1
	ld d, $ed                                                  ; $0a5e : $16, $ed
	sub c                                                  ; $0a60 : $91
	dec bc                                                  ; $0a61 : $0b
	.db $ed                                                  ; $0a62 : $ed
	jp z, $bbe8                                                  ; $0a63 : $ca, $e8, $bb
	jp po, $e2d9                                                  ; $0a66 : $e2, $d9, $e2
	jp c, $c909                                                  ; $0a69 : $da, $09, $c9
	xor (hl)                                                  ; $0a6c : $ae
	ld l, h                                                  ; $0a6d : $6c

Jump_04_0a6e:
	adc a, (hl)                                                  ; $0a6e : $8e
	sub d                                                  ; $0a6f : $92
	adc a, (hl)                                                  ; $0a70 : $8e

br_04_0a71:
	jp po, Jump_04_0b45                                                  ; $0a71 : $e2, $45, $0b
	call pe, $e57e                                                  ; $0a74 : $ec, $7e, $e5
	ld b, (hl)                                                  ; $0a77 : $46
	.db $ed                                                  ; $0a78 : $ed
	ld h, h                                                  ; $0a79 : $64
	add hl, bc                                                  ; $0a7a : $09
	ret pe                                                  ; $0a7b : $e8

	cp (hl)                                                  ; $0a7c : $be
	jr c, br_04_0aef                                                  ; $0a7d : $38, $70

	add hl, sp                                                  ; $0a7f : $39
	sub d                                                  ; $0a80 : $92
	and $c7                                                  ; $0a81 : $e6, $c7
	dec bc                                                  ; $0a83 : $0b
	jr nz, br_04_0a71                                                  ; $0a84 : $20, $eb

	xor l                                                  ; $0a86 : $ad
	dec c                                                  ; $0a87 : $0d
	add hl, bc                                                  ; $0a88 : $09
	ld h, (hl)                                                  ; $0a89 : $66
	sub c                                                  ; $0a8a : $91
	ret po                                                  ; $0a8b : $e0

	.db $fd                                                  ; $0a8c : $fd

Call_04_0a8d:
	jp po, $e629                                                  ; $0a8d : $e2, $29, $e6
	ld a, b                                                  ; $0a90 : $78
	dec bc                                                  ; $0a91 : $0b
	sbc a, h                                                  ; $0a92 : $9c
	ld l, c                                                  ; $0a93 : $69
	ld ($1ce1), hl                                                  ; $0a94 : $22, $e1, $1c
	ld b, $ce                                                  ; $0a97 : $06, $ce
	ex de, hl                                                  ; $0a99 : $eb
	add a, a                                                  ; $0a9a : $87
	cp l                                                  ; $0a9b : $bd
	xor (hl)                                                  ; $0a9c : $ae
	dec bc                                                  ; $0a9d : $0b
	ex (sp), hl                                                  ; $0a9e : $e3
	rlca                                                  ; $0a9f : $07
	reti                                                  ; $0aa0 : $ed, $4d
	jp pe, Jump_04_0991                                                  ; $0aa2 : $ea, $91, $09
	ret pe                                                  ; $0aa5 : $e8

	cp (hl)                                                  ; $0aa6 : $be
	jr c, $70                                                  ; $0aa7 : $38, $70

	add hl, sp                                                  ; $0aa9 : $39
	sub d                                                  ; $0aaa : $92
	jp po, $0b05                                                  ; $0aab : $e2, $05, $0b
	ld c, e                                                  ; $0aae : $4b
	dec c                                                  ; $0aaf : $0d
	jr nz, br_04_0ab7                                                  ; $0ab0 : $20, $05

	adc a, $31                                                  ; $0ab2 : $ce, $31
	sub d                                                  ; $0ab4 : $92
	add a, e                                                  ; $0ab5 : $83
	dec bc                                                  ; $0ab6 : $0b

br_04_0ab7:
	ret po                                                  ; $0ab7 : $e0

	ld (hl), c                                                  ; $0ab8 : $71
	adc hl, bc                                                  ; $0ab9 : $ed, $4a
	rst $20                                                  ; $0abb : $e7
	pop de                                                  ; $0abc : $d1
	dec b                                                  ; $0abd : $05
	ld h, c                                                  ; $0abe : $61
	ret po                                                  ; $0abf : $e0

	ld b, $1c                                                  ; $0ac0 : $06, $1c

Call_04_0ac2:
	dec bc                                                  ; $0ac2 : $0b
	ret po                                                  ; $0ac3 : $e0

	ld e, h                                                  ; $0ac4 : $5c
	inc b                                                  ; $0ac5 : $04
	rlca                                                  ; $0ac6 : $07
	ld c, a                                                  ; $0ac7 : $4f
	inc c                                                  ; $0ac8 : $0c
	ret                                                  ; $0ac9 : $c9


	ld c, l                                                  ; $0aca : $4d
	push bc                                                  ; $0acb : $c5
	call po, $6c91                                                  ; $0acc : $e4, $91, $6c
	dec h                                                  ; $0acf : $25
	or h                                                  ; $0ad0 : $b4
	cp l                                                  ; $0ad1 : $bd
	ld d, $30                                                  ; $0ad2 : $16, $30
	dec bc                                                  ; $0ad4 : $0b
	adc hl, de                                                  ; $0ad5 : $ed, $5a
	pop hl                                                  ; $0ad7 : $e1
	jp po, $76e8                                                  ; $0ad8 : $e2, $e8, $76
	ret pe                                                  ; $0adb : $e8

	ld (hl), a                                                  ; $0adc : $77
	ex af, af'                                                  ; $0add : $08
	ld h, (hl)                                                  ; $0ade : $66
	xor (hl)                                                  ; $0adf : $ae
	ld b, d                                                  ; $0ae0 : $42
	rst $20                                                  ; $0ae1 : $e7
	xor $e1                                                  ; $0ae2 : $ee, $e1
	ld a, b                                                  ; $0ae4 : $78
	dec bc                                                  ; $0ae5 : $0b
	.db $ed                                                  ; $0ae6 : $ed
	call po, $8de8                                                  ; $0ae7 : $e4, $e8, $8d
	rst $20                                                  ; $0aea : $e7
	jp (hl)                                                  ; $0aeb : $e9


	ld a, (bc)                                                  ; $0aec : $0a
	pop hl                                                  ; $0aed : $e1
	ld a, e                                                  ; $0aee : $7b

br_04_0aef:
	ld (hl), b                                                  ; $0aef : $70
	ld sp, $8494                                                  ; $0af0 : $31, $94, $84
	call po, Call_04_3904                                                  ; $0af3 : $e4, $04, $39
	dec bc                                                  ; $0af6 : $0b
	call pe, $e653                                                  ; $0af7 : $ec, $53, $e6
	or b                                                  ; $0afa : $b0
	rst $20                                                  ; $0afb : $e7
	inc c                                                  ; $0afc : $0c
	ld b, $ce                                                  ; $0afd : $06, $ce
	ld sp, $e692                                                  ; $0aff : $31, $92, $e6
	ld a, e                                                  ; $0b02 : $7b

Call_04_0b03:
	dec bc                                                  ; $0b03 : $0b
	and $98                                                  ; $0b04 : $e6, $98

Jump_04_0b06:
	and $96                                                  ; $0b06 : $e6, $96

Jump_04_0b08:
	call pe, $0673                                                  ; $0b08 : $ec, $73, $06
	ld h, c                                                  ; $0b0b : $61

Jump_04_0b0c:
	xor a                                                  ; $0b0c : $af
	ld a, (de)                                                  ; $0b0d : $1a
	ld h, l                                                  ; $0b0e : $65
	cp l                                                  ; $0b0f : $bd
	dec bc                                                  ; $0b10 : $0b

Call_04_0b11:
	ret po                                                  ; $0b11 : $e0

Call_04_0b12:
Jump_04_0b12:
	rra                                                  ; $0b12 : $1f
	ret po                                                  ; $0b13 : $e0

	ld d, (hl)                                                  ; $0b14 : $56

Jump_04_0b15:
	ret po                                                  ; $0b15 : $e0

	ld e, b                                                  ; $0b16 : $58
	call po, $07bc                                                  ; $0b17 : $e4, $bc, $07

Jump_04_0b1a:
	.db $ed                                                  ; $0b1a : $ed
	scf                                                  ; $0b1b : $37
	ld l, h                                                  ; $0b1c : $6c

Call_04_0b1d:
	ld b, h                                                  ; $0b1d : $44
	sub h                                                  ; $0b1e : $94

Call_04_0b1f:
	xor (hl)                                                  ; $0b1f : $ae
	dec bc                                                  ; $0b20 : $0b
	pop hl                                                  ; $0b21 : $e1
	ld bc, $09ee                                                  ; $0b22 : $01, $ee, $09
	ret pe                                                  ; $0b25 : $e8

	ld h, a                                                  ; $0b26 : $67

Jump_04_0b27:
	add hl, bc                                                  ; $0b27 : $09
	ret                                                  ; $0b28 : $c9


	xor (hl)                                                  ; $0b29 : $ae
	ld l, h                                                  ; $0b2a : $6c

Call_04_0b2b:
	rst $00                                                  ; $0b2b : $c7
	sub d                                                  ; $0b2c : $92
	adc a, h                                                  ; $0b2d : $8c
	push hl                                                  ; $0b2e : $e5

Call_04_0b2f:
	xor b                                                  ; $0b2f : $a8
	dec bc                                                  ; $0b30 : $0b
	rst $20                                                  ; $0b31 : $e7
	ld a, d                                                  ; $0b32 : $7a
	adc a, l                                                  ; $0b33 : $8d

Call_04_0b34:
	reti                                                  ; $0b34 : $ed, $4d

Call_04_0b36:
	ld c, $c9                                                  ; $0b36 : $0e, $c9
	xor (hl)                                                  ; $0b38 : $ae
	ld l, h                                                  ; $0b39 : $6c

Call_04_0b3a:
	dec h                                                  ; $0b3a : $25
	or h                                                  ; $0b3b : $b4

Call_04_0b3c:
	ld ($1691), hl                                                  ; $0b3c : $22, $91, $16

Call_04_0b3f:
	or h                                                  ; $0b3f : $b4
	push hl                                                  ; $0b40 : $e5
	sbc a, b                                                  ; $0b41 : $98
	sub d                                                  ; $0b42 : $92
	add a, e                                                  ; $0b43 : $83
	dec bc                                                  ; $0b44 : $0b

Call_04_0b45:
Jump_04_0b45:
	push hl                                                  ; $0b45 : $e5
	ld b, (hl)                                                  ; $0b46 : $46
	rst $20                                                  ; $0b47 : $e7
	sbc a, a                                                  ; $0b48 : $9f
	ld d, b                                                  ; $0b49 : $50
	rlca                                                  ; $0b4a : $07
	ret                                                  ; $0b4b : $c9


	add hl, sp                                                  ; $0b4c : $39
	ld l, h                                                  ; $0b4d : $6c
	adc a, (hl)                                                  ; $0b4e : $8e
	sub d                                                  ; $0b4f : $92
	ld c, c                                                  ; $0b50 : $49
	dec bc                                                  ; $0b51 : $0b
	ld d, h                                                  ; $0b52 : $54
	and $6e                                                  ; $0b53 : $e6, $6e
	ex de, hl                                                  ; $0b55 : $eb
	ex af, af'                                                  ; $0b56 : $08
	ld b, $66                                                  ; $0b57 : $06, $66
	add hl, sp                                                  ; $0b59 : $39
	ld (hl), b                                                  ; $0b5a : $70

Jump_04_0b5b:
	push hl                                                  ; $0b5b : $e5
	add a, d                                                  ; $0b5c : $82
	dec bc                                                  ; $0b5d : $0b
	ld b, l                                                  ; $0b5e : $45
	ld l, b                                                  ; $0b5f : $68
	inc sp                                                  ; $0b60 : $33
	ex af, af'                                                  ; $0b61 : $08
	or h                                                  ; $0b62 : $b4
	ret po                                                  ; $0b63 : $e0

Call_04_0b64:
	or h                                                  ; $0b64 : $b4
	and (hl)                                                  ; $0b65 : $a6
	ld l, h                                                  ; $0b66 : $6c

Jump_04_0b67:
	ld h, (hl)                                                  ; $0b67 : $66
	jr c, br_04_0b75                                                  ; $0b68 : $38, $0b

	ret pe                                                  ; $0b6a : $e8

	adc a, h                                                  ; $0b6b : $8c
	dec c                                                  ; $0b6c : $0d

Jump_04_0b6d:
	ex de, hl                                                  ; $0b6d : $eb
	xor l                                                  ; $0b6e : $ad
	rlca                                                  ; $0b6f : $07

Call_04_0b70:
	ret                                                  ; $0b70 : $c9


Jump_04_0b71:
	add hl, sp                                                  ; $0b71 : $39

Jump_04_0b72:
	ld l, h                                                  ; $0b72 : $6c

Call_04_0b73:
Jump_04_0b73:
	rst $00                                                  ; $0b73 : $c7
	sub d                                                  ; $0b74 : $92

br_04_0b75:
	xor e                                                  ; $0b75 : $ab
	dec bc                                                  ; $0b76 : $0b
	ld d, h                                                  ; $0b77 : $54
	ld (hl), e                                                  ; $0b78 : $73
	jp (hl)                                                  ; $0b79 : $e9


	xor c                                                  ; $0b7a : $a9

Call_04_0b7b:
	dec bc                                                  ; $0b7b : $0b
	adc a, d                                                  ; $0b7c : $8a

Jump_04_0b7d:
	push hl                                                  ; $0b7d : $e5
	ret pe                                                  ; $0b7e : $e8

	or e                                                  ; $0b7f : $b3

Call_04_0b80:
	ex (sp), hl                                                  ; $0b80 : $e3
	add hl, bc                                                  ; $0b81 : $09
	adc a, (hl)                                                  ; $0b82 : $8e
	ld d, $a9                                                  ; $0b83 : $16, $a9
	ld (de), a                                                  ; $0b85 : $12
	ld bc, $5de6                                                  ; $0b86 : $01, $e6, $5d

Jump_04_0b89:
	ret pe                                                  ; $0b89 : $e8

Call_04_0b8a:
	call p, $ffe8                                                  ; $0b8a : $f4, $e8, $ff

Call_04_0b8d:
	dec b                                                  ; $0b8d : $05
	ld h, c                                                  ; $0b8e : $61
	ex (sp), hl                                                  ; $0b8f : $e3
	add hl, de                                                  ; $0b90 : $19

Call_04_0b91:
	inc e                                                  ; $0b91 : $1c
	dec bc                                                  ; $0b92 : $0b
	rlca                                                  ; $0b93 : $07
	ex af, af'                                                  ; $0b94 : $08
	add hl, bc                                                  ; $0b95 : $09
	ex de, hl                                                  ; $0b96 : $eb
	ld a, ($8a08)                                                  ; $0b97 : $3a, $08, $8a
	ld a, c                                                  ; $0b9a : $79

Call_04_0b9b:
	inc (hl)                                                  ; $0b9b : $34
	ld h, l                                                  ; $0b9c : $65
	ret z                                                  ; $0b9d : $c8

	push hl                                                  ; $0b9e : $e5
	out ($01), a                                                  ; $0b9f : $d3, $01
	adc a, l                                                  ; $0ba1 : $8d

Call_04_0ba2:
	rst $20                                                  ; $0ba2 : $e7
	ld d, (hl)                                                  ; $0ba3 : $56
	rst $20                                                  ; $0ba4 : $e7
	pop de                                                  ; $0ba5 : $d1

Call_04_0ba6:
	ex af, af'                                                  ; $0ba6 : $08

Call_04_0ba7:
	or h                                                  ; $0ba7 : $b4
	ld a, c                                                  ; $0ba8 : $79
	add hl, sp                                                  ; $0ba9 : $39
	ld h, e                                                  ; $0baa : $63
	xor c                                                  ; $0bab : $a9
	ld (de), a                                                  ; $0bac : $12

Jump_04_0bad:
	ld l, h                                                  ; $0bad : $6c

Jump_04_0bae:
	ld a, (bc)                                                  ; $0bae : $0a
	jp po, $e09c                                                  ; $0baf : $e2, $9c, $e0
	rst $38                                                  ; $0bb2 : $ff

Jump_04_0bb3:
	pop hl                                                  ; $0bb3 : $e1
	.db $dd                                                  ; $0bb4 : $dd

Call_04_0bb5:
	ld a, (bc)                                                  ; $0bb5 : $0a
	adc a, d                                                  ; $0bb6 : $8a
	ld e, d                                                  ; $0bb7 : $5a

Call_04_0bb8:
	adc a, b                                                  ; $0bb8 : $88
	and e                                                  ; $0bb9 : $a3
	ld h, l                                                  ; $0bba : $65
	ret z                                                  ; $0bbb : $c8

	sbc a, l                                                  ; $0bbc : $9d
	adc a, (hl)                                                  ; $0bbd : $8e
	ld (de), a                                                  ; $0bbe : $12
	ld bc, $afe0                                                  ; $0bbf : $01, $e0, $af
	pop hl                                                  ; $0bc2 : $e1
	adc a, e                                                  ; $0bc3 : $8b
	jp pe, $eab3                                                  ; $0bc4 : $ea, $b3, $ea
	or b                                                  ; $0bc7 : $b0
	ld a, (bc)                                                  ; $0bc8 : $0a

Call_04_0bc9:
Jump_04_0bc9:
	or h                                                  ; $0bc9 : $b4

Jump_04_0bca:
	push hl                                                  ; $0bca : $e5
	halt                                                  ; $0bcb : $76

Call_04_0bcc:
	jp po, $6c30                                                  ; $0bcc : $e2, $30, $6c

Call_04_0bcf:
	sbc a, l                                                  ; $0bcf : $9d
	call nc, Call_04_0ba6                                                  ; $0bd0 : $d4, $a6, $0b
	ex de, hl                                                  ; $0bd3 : $eb
	adc a, l                                                  ; $0bd4 : $8d
	rst $20                                                  ; $0bd5 : $e7
	.db $ed                                                  ; $0bd6 : $ed
	jp po, $e2d4                                                  ; $0bd7 : $e2, $d4, $e2

Call_04_0bda:
	push de                                                  ; $0bda : $d5
	ld b, $8a                                                  ; $0bdb : $06, $8a
	ld a, c                                                  ; $0bdd : $79
	inc (hl)                                                  ; $0bde : $34

Call_04_0bdf:
	ld h, e                                                  ; $0bdf : $63
	jr nc, $01                                                  ; $0be0 : $30, $01

	adc hl, de                                                  ; $0be2 : $ed, $5a

Call_04_0be4:
	ret pe                                                  ; $0be4 : $e8

Call_04_0be5:
Jump_04_0be5:
	push bc                                                  ; $0be5 : $c5
	call pe, Call_04_08cc                                                  ; $0be6 : $ec, $cc, $08

Jump_04_0be9:
	adc a, d                                                  ; $0be9 : $8a
	ld a, c                                                  ; $0bea : $79

Call_04_0beb:
Jump_04_0beb:
	and $e9                                                  ; $0beb : $e6, $e9
	ld h, e                                                  ; $0bed : $63

Call_04_0bee:
	.db $ed                                                  ; $0bee : $ed
	scf                                                  ; $0bef : $37
	ld bc, $eae6                                                  ; $0bf0 : $01, $e6, $ea
	call pe, $e55b                                                  ; $0bf3 : $ec, $5b, $e5
	add a, c                                                  ; $0bf6 : $81

Call_04_0bf7:
	dec bc                                                  ; $0bf7 : $0b
	ret                                                  ; $0bf8 : $c9


	add a, c                                                  ; $0bf9 : $81

Call_04_0bfa:
	and (hl)                                                  ; $0bfa : $a6
	call po, $b9dc                                                  ; $0bfb : $e4, $dc, $b9
	rst $20                                                  ; $0bfe : $e7
	ld c, e                                                  ; $0bff : $4b
	nop                                                  ; $0c00 : $00
	ld c, c                                                  ; $0c01 : $49
	dec bc                                                  ; $0c02 : $0b
	pop hl                                                  ; $0c03 : $e1
	dec (hl)                                                  ; $0c04 : $35
	ex (sp), hl                                                  ; $0c05 : $e3
	ld h, a                                                  ; $0c06 : $67
	call pe, Call_04_0785                                                  ; $0c07 : $ec, $85, $07
	ex (sp), hl                                                  ; $0c0a : $e3
	jr nz, $6c                                                  ; $0c0b : $20, $6c

	ld h, (hl)                                                  ; $0c0d : $66
	ld c, h                                                  ; $0c0e : $4c
	add hl, sp                                                  ; $0c0f : $39
	dec bc                                                  ; $0c10 : $0b
	ret pe                                                  ; $0c11 : $e8

	sub l                                                  ; $0c12 : $95
	ld c, c                                                  ; $0c13 : $49
	ex (sp), hl                                                  ; $0c14 : $e3
	adc a, b                                                  ; $0c15 : $88
	dec b                                                  ; $0c16 : $05
	adc a, d                                                  ; $0c17 : $8a
	ld sp, $7592                                                  ; $0c18 : $31, $92, $75
	ld bc, $e3e6                                                  ; $0c1b : $01, $e6, $e3
	ret pe                                                  ; $0c1e : $e8

	dec a                                                  ; $0c1f : $3d
	call pe, Call_04_07c2                                                  ; $0c20 : $ec, $c2, $07
	ld h, (hl)                                                  ; $0c23 : $66
	add hl, sp                                                  ; $0c24 : $39
	ld (hl), b                                                  ; $0c25 : $70
	ld e, d                                                  ; $0c26 : $5a
	pop hl                                                  ; $0c27 : $e1
	ld d, h                                                  ; $0c28 : $54
	dec bc                                                  ; $0c29 : $0b
	ret pe                                                  ; $0c2a : $e8

	ld l, h                                                  ; $0c2b : $6c
	inc sp                                                  ; $0c2c : $33
	inc hl                                                  ; $0c2d : $23
	ld (de), a                                                  ; $0c2e : $12
	call nc, Call_04_0beb                                                  ; $0c2f : $d4, $eb, $0b
	ld l, h                                                  ; $0c32 : $6c
	ex de, hl                                                  ; $0c33 : $eb
	sub c                                                  ; $0c34 : $91
	jp pe, Jump_04_00e0                                                  ; $0c35 : $ea, $e0, $00
	inc c                                                  ; $0c38 : $0c
	sbc a, a                                                  ; $0c39 : $9f
	jp po, $eb25                                                  ; $0c3a : $e2, $25, $eb
	ld l, a                                                  ; $0c3d : $6f
	ld h, e                                                  ; $0c3e : $63
	ld (hl), d                                                  ; $0c3f : $72
	dec bc                                                  ; $0c40 : $0b
	pop hl                                                  ; $0c41 : $e1
	ld c, d                                                  ; $0c42 : $4a
	ld h, $e3                                                  ; $0c43 : $26, $e3
	ld (hl), d                                                  ; $0c45 : $72
	ex (sp), hl                                                  ; $0c46 : $e3
	ld (hl), e                                                  ; $0c47 : $73
	rrca                                                  ; $0c48 : $0f
	or h                                                  ; $0c49 : $b4
	ex de, hl                                                  ; $0c4a : $eb
	or e                                                  ; $0c4b : $b3
	.db $ed                                                  ; $0c4c : $ed
	inc e                                                  ; $0c4d : $1c
	ld l, h                                                  ; $0c4e : $6c
	sub (hl)                                                  ; $0c4f : $96
	ret po                                                  ; $0c50 : $e0

	ld b, e                                                  ; $0c51 : $43
	ex (sp), hl                                                  ; $0c52 : $e3
	add hl, de                                                  ; $0c53 : $19
	nop                                                  ; $0c54 : $00
	jr nz, br_04_0c6d                                                  ; $0c55 : $20, $16

Jump_04_0c57:
	ld a, (bc)                                                  ; $0c57 : $0a

Call_04_0c58:
	dec c                                                  ; $0c58 : $0d
	ex de, hl                                                  ; $0c59 : $eb
	ld h, c                                                  ; $0c5a : $61
	ld c, e                                                  ; $0c5b : $4b
	add hl, bc                                                  ; $0c5c : $09
	ld h, (hl)                                                  ; $0c5d : $66
	cp l                                                  ; $0c5e : $bd
	xor (hl)                                                  ; $0c5f : $ae
	ld l, h                                                  ; $0c60 : $6c
	ex (sp), hl                                                  ; $0c61 : $e3
	halt                                                  ; $0c62 : $76
	.db $ed                                                  ; $0c63 : $ed
	dec sp                                                  ; $0c64 : $3b
	dec bc                                                  ; $0c65 : $0b
	ret pe                                                  ; $0c66 : $e8

	ld h, a                                                  ; $0c67 : $67
	xor $09                                                  ; $0c68 : $ee, $09
	ld l, $07                                                  ; $0c6a : $2e, $07
	ret                                                  ; $0c6c : $c9


br_04_0c6d:
	jr c, br_04_0cdb                                                  ; $0c6d : $38, $6c

	and $c7                                                  ; $0c6f : $e6, $c7
	sub (hl)                                                  ; $0c71 : $96
	dec bc                                                  ; $0c72 : $0b
	ex de, hl                                                  ; $0c73 : $eb
	xor l                                                  ; $0c74 : $ad
	jr nz, br_04_0c84                                                  ; $0c75 : $20, $0d

	rlca                                                  ; $0c77 : $07
	adc a, $ae                                                  ; $0c78 : $ce, $ae
	ld sp, $e292                                                  ; $0c7a : $31, $92, $e2
	call nc, $e10b                                                  ; $0c7d : $d4, $0b, $e1
	call z, $d6e2                                                  ; $0c80 : $cc, $e2, $d6
	ex (sp), hl                                                  ; $0c83 : $e3

br_04_0c84:
	adc a, e                                                  ; $0c84 : $8b
	inc c                                                  ; $0c85 : $0c
	ret                                                  ; $0c86 : $c9


	xor (hl)                                                  ; $0c87 : $ae
	ld l, h                                                  ; $0c88 : $6c
	sbc a, b                                                  ; $0c89 : $98
	ex de, hl                                                  ; $0c8a : $eb
	or c                                                  ; $0c8b : $b1
	pop hl                                                  ; $0c8c : $e1
	call nz, $ed92                                                  ; $0c8d : $c4, $92, $ed
	call po, $e70b                                                  ; $0c90 : $e4, $0b, $e7
	jp (hl)                                                  ; $0c93 : $e9


	and $6b                                                  ; $0c94 : $e6, $6b
	and $33                                                  ; $0c96 : $e6, $33
	dec bc                                                  ; $0c98 : $0b
	adc a, $e8                                                  ; $0c99 : $ce, $e8
	call nz, $aebd                                                  ; $0c9b : $c4, $bd, $ae
	or e                                                  ; $0c9e : $b3
	push hl                                                  ; $0c9f : $e5
	sub h                                                  ; $0ca0 : $94
	jp po, Jump_04_0bc9                                                  ; $0ca1 : $e2, $c9, $0b
	ld d, b                                                  ; $0ca4 : $50
	jp pe, $5d91                                                  ; $0ca5 : $ea, $91, $5d
	rlca                                                  ; $0ca8 : $07
	ld h, c                                                  ; $0ca9 : $61
	jp (hl)                                                  ; $0caa : $e9


	or $1c                                                  ; $0cab : $f6, $1c
	ld h, e                                                  ; $0cad : $63
	jr nc, br_04_0cbb                                                  ; $0cae : $30, $0b

	ret po                                                  ; $0cb0 : $e0

	ld c, c                                                  ; $0cb1 : $49
	ret po                                                  ; $0cb2 : $e0

br_04_0cb3:
	ld c, d                                                  ; $0cb3 : $4a
	ld (bc), a                                                  ; $0cb4 : $02
	call pe, Call_04_067c                                                  ; $0cb5 : $ec, $7c, $06
	ld h, a                                                  ; $0cb8 : $67

Jump_04_0cb9:
	add hl, sp                                                  ; $0cb9 : $39
	ld l, h                                                  ; $0cba : $6c

br_04_0cbb:
	jp (hl)                                                  ; $0cbb : $e9


	dec bc                                                  ; $0cbc : $0b
	dec bc                                                  ; $0cbd : $0b
	ld c, c                                                  ; $0cbe : $49
	ld (hl), e                                                  ; $0cbf : $73
	ld d, h                                                  ; $0cc0 : $54
	ld a, (bc)                                                  ; $0cc1 : $0a
	jp z, $fde3                                                  ; $0cc2 : $ca, $e3, $fd
	ld a, c                                                  ; $0cc5 : $79
	pop hl                                                  ; $0cc6 : $e1
	or e                                                  ; $0cc7 : $b3
	sub d                                                  ; $0cc8 : $92
	ld (hl), a                                                  ; $0cc9 : $77
	cpl                                                  ; $0cca : $2f
	dec bc                                                  ; $0ccb : $0b
	and $78                                                  ; $0ccc : $e6, $78
	jr nz, br_04_0cb3                                                  ; $0cce : $20, $e3

	add hl, de                                                  ; $0cd0 : $19
	jr c, br_04_0ce5                                                  ; $0cd1 : $38, $12

	.db $ed                                                  ; $0cd3 : $ed
	or a                                                  ; $0cd4 : $b7
	push hl                                                  ; $0cd5 : $e5
	ld h, b                                                  ; $0cd6 : $60
	ld l, h                                                  ; $0cd7 : $6c
	ex (sp), hl                                                  ; $0cd8 : $e3
	push bc                                                  ; $0cd9 : $c5
	dec l                                                  ; $0cda : $2d

br_04_0cdb:
	call po, Call_04_004a                                                  ; $0cdb : $e4, $4a, $00
	call nc, $d3e5                                                  ; $0cde : $d4, $e5, $d3
	ld (hl), b                                                  ; $0ce1 : $70

Call_04_0ce2:
	cp l                                                  ; $0ce2 : $bd
	ld h, e                                                  ; $0ce3 : $63
	dec bc                                                  ; $0ce4 : $0b

br_04_0ce5:
	ex de, hl                                                  ; $0ce5 : $eb
	or c                                                  ; $0ce6 : $b1
	ret z                                                  ; $0ce7 : $c8

	ret pe                                                  ; $0ce8 : $e8

	sub d                                                  ; $0ce9 : $92
	rrca                                                  ; $0cea : $0f
	ret                                                  ; $0ceb : $c9


br_04_0cec:
	adc a, c                                                  ; $0cec : $89
	ld l, h                                                  ; $0ced : $6c
	push hl                                                  ; $0cee : $e5
	ld e, d                                                  ; $0cef : $5a
	cp e                                                  ; $0cf0 : $bb
	jp pe, $e359                                                  ; $0cf1 : $ea, $59, $e3
	ex af, af'                                                  ; $0cf4 : $08
	adc a, (hl)                                                  ; $0cf5 : $8e
	ld d, $a9                                                  ; $0cf6 : $16, $a9
	ld (de), a                                                  ; $0cf8 : $12
	dec bc                                                  ; $0cf9 : $0b
	call pe, $e983                                                  ; $0cfa : $ec, $83, $e9
	ld (bc), a                                                  ; $0cfd : $02

br_04_0cfe:
	jp po, Jump_04_086d                                                  ; $0cfe : $e2, $6d, $08
	call nc, $aebd                                                  ; $0d01 : $d4, $bd, $ae
	ld l, h                                                  ; $0d04 : $6c
	adc a, a                                                  ; $0d05 : $8f
	sub a                                                  ; $0d06 : $97

Jump_04_0d07:
	jr c, br_04_0d14                                                  ; $0d07 : $38, $0b

	djnz br_04_0d5b                                                  ; $0d09 : $10, $50
	ld e, l                                                  ; $0d0b : $5d
	rlca                                                  ; $0d0c : $07
	ret                                                  ; $0d0d : $c9


	add hl, sp                                                  ; $0d0e : $39
	ld l, h                                                  ; $0d0f : $6c
	adc a, (hl)                                                  ; $0d10 : $8e
	sub e                                                  ; $0d11 : $93
	cp l                                                  ; $0d12 : $bd
	dec bc                                                  ; $0d13 : $0b

br_04_0d14:
	djnz br_04_0cfe                                                  ; $0d14 : $10, $e8
	adc a, a                                                  ; $0d16 : $8f
	jr nc, br_04_0d27                                                  ; $0d17 : $30, $0e

	ret                                                  ; $0d19 : $c9


	add hl, sp                                                  ; $0d1a : $39
	ld (hl), b                                                  ; $0d1b : $70
	in a, ($fe)                                                  ; $0d1c : $db, $fe
	cp $34                                                  ; $0d1e : $fe, $34
	ld d, h                                                  ; $0d20 : $54
	ld c, b                                                  ; $0d21 : $48
	rst $38                                                  ; $0d22 : $ff
	ld a, c                                                  ; $0d23 : $79
	ld h, e                                                  ; $0d24 : $63
	dec e                                                  ; $0d25 : $1d
	dec bc                                                  ; $0d26 : $0b

br_04_0d27:
	jr nc, $33                                                  ; $0d27 : $30, $33

	cp (hl)                                                  ; $0d29 : $be
	.db $ed                                                  ; $0d2a : $ed
	jr nc, br_04_0cec                                                  ; $0d2b : $30, $bf

Jump_04_0d2d:
	ld a, (bc)                                                  ; $0d2d : $0a
	call Call_04_30ea                                                  ; $0d2e : $cd, $ea, $30
	dec e                                                  ; $0d31 : $1d
	sub d                                                  ; $0d32 : $92
	call po, $77d1                                                  ; $0d33 : $e4, $d1, $77
	cpl                                                  ; $0d36 : $2f
	dec bc                                                  ; $0d37 : $0b

br_04_0d38:
	adc a, b                                                  ; $0d38 : $88
	.db $ed                                                  ; $0d39 : $ed
	dec sp                                                  ; $0d3a : $3b
	jp (hl)                                                  ; $0d3b : $e9


	ld a, (hl)                                                  ; $0d3c : $7e
	ld c, $66                                                  ; $0d3d : $0e, $66
	jp po, $e5b1                                                  ; $0d3f : $e2, $b1, $e5
	or d                                                  ; $0d42 : $b2
	ld b, d                                                  ; $0d43 : $42
	ex de, hl                                                  ; $0d44 : $eb
	pop af                                                  ; $0d45 : $f1
	sub d                                                  ; $0d46 : $92

Call_04_0d47:
	rst $20                                                  ; $0d47 : $e7
	inc hl                                                  ; $0d48 : $23
	ex de, hl                                                  ; $0d49 : $eb
	sbc a, $0b                                                  ; $0d4a : $de, $0b
	jr z, br_04_0d38                                                  ; $0d4c : $28, $ea

	call po, Call_04_0a8d                                                  ; $0d4e : $e4, $8d, $0a

Jump_04_0d51:
	jp po, $4edb                                                  ; $0d51 : $e2, $db, $4e
	and $ed                                                  ; $0d54 : $e6, $ed
	ld h, (hl)                                                  ; $0d56 : $66
	ld (hl), c                                                  ; $0d57 : $71
	push hl                                                  ; $0d58 : $e5
	sub c                                                  ; $0d59 : $91
	dec bc                                                  ; $0d5a : $0b

br_04_0d5b:
	call po, $e202                                                  ; $0d5b : $e4, $02, $e2
	ld b, (hl)                                                  ; $0d5e : $46
	outd                                                  ; $0d5f : $ed, $ab
	inc de                                                  ; $0d61 : $13
	ret                                                  ; $0d62 : $c9


	ld a, $e9                                                  ; $0d63 : $3e, $e9
	ld h, h                                                  ; $0d65 : $64
	adc a, d                                                  ; $0d66 : $8a
	dec e                                                  ; $0d67 : $1d
	out ($b7), a                                                  ; $0d68 : $d3, $b7
	and $ed                                                  ; $0d6a : $e6, $ed
	ld h, e                                                  ; $0d6c : $63
	cp $fe                                                  ; $0d6d : $fe, $fe
	ld sp, $3236                                                  ; $0d6f : $31, $36, $32
	jr nc, -$01                                                  ; $0d72 : $30, $ff

	dec bc                                                  ; $0d74 : $0b
	adc a, l                                                  ; $0d75 : $8d
	and $8d                                                  ; $0d76 : $e6, $8d
	jp (hl)                                                  ; $0d78 : $e9


	adc a, d                                                  ; $0d79 : $8a
	jp (hl)                                                  ; $0d7a : $e9


	adc a, e                                                  ; $0d7b : $8b
	add hl, bc                                                  ; $0d7c : $09
	cpir                                                  ; $0d7d : $ed, $b1
	ret pe                                                  ; $0d7f : $e8

	ret c                                                  ; $0d80 : $d8

	adc a, c                                                  ; $0d81 : $89
	ld d, c                                                  ; $0d82 : $51
	ret pe                                                  ; $0d83 : $e8

	ld (hl), c                                                  ; $0d84 : $71
	dec bc                                                  ; $0d85 : $0b
	push hl                                                  ; $0d86 : $e5
	dec d                                                  ; $0d87 : $15
	xor $19                                                  ; $0d88 : $ee, $19
	ret pe                                                  ; $0d8a : $e8

	ld l, c                                                  ; $0d8b : $69
	inc c                                                  ; $0d8c : $0c
	ret                                                  ; $0d8d : $c9


	xor (hl)                                                  ; $0d8e : $ae
	dec a                                                  ; $0d8f : $3d
	.db $ed                                                  ; $0d90 : $ed
	set 5, c                                                  ; $0d91 : $cb, $e9

Jump_04_0d93:
	ld sp, $d3e2                                                  ; $0d93 : $31, $e2, $d3
	pop hl                                                  ; $0d96 : $e1
	ld l, (hl)                                                  ; $0d97 : $6e
	dec bc                                                  ; $0d98 : $0b
	push hl                                                  ; $0d99 : $e5
	ld b, (hl)                                                  ; $0d9a : $46
	ex (sp), hl                                                  ; $0d9b : $e3
	add a, e                                                  ; $0d9c : $83
	jp (hl)                                                  ; $0d9d : $e9


	ld ($6609), a                                                  ; $0d9e : $32, $09, $66
	xor (hl)                                                  ; $0da1 : $ae
	ld l, h                                                  ; $0da2 : $6c
	.db $ed                                                  ; $0da3 : $ed
	sub c                                                  ; $0da4 : $91
	nop                                                  ; $0da5 : $00

Jump_04_0da6:
	ex (sp), hl                                                  ; $0da6 : $e3
	ld h, b                                                  ; $0da7 : $60
	dec bc                                                  ; $0da8 : $0b

br_04_0da9:
	rst $20                                                  ; $0da9 : $e7
	sbc a, a                                                  ; $0daa : $9f
	.db $ed                                                  ; $0dab : $ed
	ld h, h                                                  ; $0dac : $64
	ret pe                                                  ; $0dad : $e8

	adc a, b                                                  ; $0dae : $88

br_04_0daf:
	ld c, $c9                                                  ; $0daf : $0e, $c9
	jp pe, $2c01                                                  ; $0db1 : $ea, $01, $2c
	and $92                                                  ; $0db4 : $e6, $92
	and $3e                                                  ; $0db6 : $e6, $3e
	or h                                                  ; $0db8 : $b4
	add a, l                                                  ; $0db9 : $85
	and (hl)                                                  ; $0dba : $a6
	.db $ed                                                  ; $0dbb : $ed
	dec sp                                                  ; $0dbc : $3b
	dec bc                                                  ; $0dbd : $0b
	ret pe                                                  ; $0dbe : $e8

	sub e                                                  ; $0dbf : $93
	djnz br_04_0da9                                                  ; $0dc0 : $10, $e7
	ld e, h                                                  ; $0dc2 : $5c
	rst $20                                                  ; $0dc3 : $e7
	ld e, l                                                  ; $0dc4 : $5d

Jump_04_0dc5:
	add hl, de                                                  ; $0dc5 : $19
	ld h, l                                                  ; $0dc6 : $65
	cp $fe                                                  ; $0dc7 : $fe, $fe
	ld sp, $3038                                                  ; $0dc9 : $31, $38, $30
	jr nc, $27                                                  ; $0dcc : $30, $27

	ld d, e                                                  ; $0dce : $53
	rst $38                                                  ; $0dcf : $ff
	nop                                                  ; $0dd0 : $00
	ret                                                  ; $0dd1 : $c9


	jp po, $e327                                                  ; $0dd2 : $e2, $27, $e3
	ld b, $e0                                                  ; $0dd5 : $06, $e0
	sbc a, b                                                  ; $0dd7 : $98
	ld d, $e1                                                  ; $0dd8 : $16, $e1
	ld sp, hl                                                  ; $0dda : $f9
	nop                                                  ; $0ddb : $00
	ret pe                                                  ; $0ddc : $e8

	and h                                                  ; $0ddd : $a4
	dec bc                                                  ; $0dde : $0b
	jp pe, $e136                                                  ; $0ddf : $ea, $36, $e1
	ld sp, hl                                                  ; $0de2 : $f9
	call po, $e450                                                  ; $0de3 : $e4, $50, $e4
	ld d, c                                                  ; $0de6 : $51
	ex af, af'                                                  ; $0de7 : $08
	or h                                                  ; $0de8 : $b4
	ret po                                                  ; $0de9 : $e0

	sub l                                                  ; $0dea : $95
	ld l, h                                                  ; $0deb : $6c
	ld a, a                                                  ; $0dec : $7f
	ld h, a                                                  ; $0ded : $67
	xor (hl)                                                  ; $0dee : $ae
	dec bc                                                  ; $0def : $0b
	ret po                                                  ; $0df0 : $e0

	sub h                                                  ; $0df1 : $94
	ret pe                                                  ; $0df2 : $e8

	or a                                                  ; $0df3 : $b7
	call pe, Call_04_0f83                                                  ; $0df4 : $ec, $83, $0f
	ret                                                  ; $0df7 : $c9


	jp (hl)                                                  ; $0df8 : $e9


	push bc                                                  ; $0df9 : $c5
	ex (sp), hl                                                  ; $0dfa : $e3
	or b                                                  ; $0dfb : $b0
	dec a                                                  ; $0dfc : $3d
	sbc a, (hl)                                                  ; $0dfd : $9e
	sbc a, b                                                  ; $0dfe : $98
	.db $ed                                                  ; $0dff : $ed

Call_04_0e00:
	add hl, de                                                  ; $0e00 : $19
	jp pe, $ec29                                                  ; $0e01 : $ea, $29, $ec
	push hl                                                  ; $0e04 : $e5
	dec bc                                                  ; $0e05 : $0b
	xor c                                                  ; $0e06 : $a9
	rst $00                                                  ; $0e07 : $c7
	adc a, (hl)                                                  ; $0e08 : $8e
	rlca                                                  ; $0e09 : $07
	ld h, (hl)                                                  ; $0e0a : $66
	sub c                                                  ; $0e0b : $91

Call_04_0e0c:
	ld l, h                                                  ; $0e0c : $6c
	rst $20                                                  ; $0e0d : $e7
	jp c, Jump_04_0b71                                                  ; $0e0e : $da, $71, $0b
	ld l, c                                                  ; $0e11 : $69
	ld ($e89c), hl                                                  ; $0e12 : $22, $9c, $e8
	or $0f                                                  ; $0e15 : $f6, $0f
	call $41e8                                                  ; $0e17 : $cd, $e8, $41
	jp (hl)                                                  ; $0e1a : $e9


	jr br_04_0daf                                                  ; $0e1b : $18, $92

	push bc                                                  ; $0e1d : $c5
	and $ac                                                  ; $0e1e : $e6, $ac
	cp h                                                  ; $0e20 : $bc
	pop hl                                                  ; $0e21 : $e1
	or e                                                  ; $0e22 : $b3
	sub d                                                  ; $0e23 : $92
	push bc                                                  ; $0e24 : $c5
	dec bc                                                  ; $0e25 : $0b
	and $7c                                                  ; $0e26 : $e6, $7c
	pop hl                                                  ; $0e28 : $e1
	ld h, e                                                  ; $0e29 : $63
	call pe, Call_04_0b11                                                  ; $0e2a : $ec, $11, $0b
	ret                                                  ; $0e2d : $c9


	ld a, b                                                  ; $0e2e : $78
	and $e9                                                  ; $0e2f : $e6, $e9
	ld l, h                                                  ; $0e31 : $6c
	ex (sp), hl                                                  ; $0e32 : $e3
	or d                                                  ; $0e33 : $b2
	ld b, h                                                  ; $0e34 : $44
	sub d                                                  ; $0e35 : $92
	ld ($ec0b), a                                                  ; $0e36 : $32, $0b, $ec
	add hl, sp                                                  ; $0e39 : $39
	and $1f                                                  ; $0e3a : $e6, $1f
	rst $20                                                  ; $0e3c : $e7
	call nc, $eae6                                                  ; $0e3d : $d4, $e6, $ea
	add hl, bc                                                  ; $0e40 : $09
	ld h, (hl)                                                  ; $0e41 : $66
	xor (hl)                                                  ; $0e42 : $ae
	ret po                                                  ; $0e43 : $e0

	.db $fd                                                  ; $0e44 : $fd
	jp po, $e242                                                  ; $0e45 : $e2, $42, $e2
	ld e, (hl)                                                  ; $0e48 : $5e
	dec bc                                                  ; $0e49 : $0b
	pop hl                                                  ; $0e4a : $e1
	ld bc, $08e8                                                  ; $0e4b : $01, $e8, $08
	ret pe                                                  ; $0e4e : $e8

	ld l, (hl)                                                  ; $0e4f : $6e
	ex af, af'                                                  ; $0e50 : $08
	ret pe                                                  ; $0e51 : $e8

	rra                                                  ; $0e52 : $1f
	rst $20                                                  ; $0e53 : $e7
	xor e                                                  ; $0e54 : $ab
	ld l, h                                                  ; $0e55 : $6c
	ld h, (hl)                                                  ; $0e56 : $66
	xor (hl)                                                  ; $0e57 : $ae
	dec bc                                                  ; $0e58 : $0b
	ret pe                                                  ; $0e59 : $e8

	pop de                                                  ; $0e5a : $d1
	ex de, hl                                                  ; $0e5b : $eb
	xor (hl)                                                  ; $0e5c : $ae
	djnz br_04_0e67                                                  ; $0e5d : $10, $08
	or h                                                  ; $0e5f : $b4
	ld h, $e5                                                  ; $0e60 : $26, $e5
	jp pe, $661a                                                  ; $0e62 : $ea, $1a, $66
	xor (hl)                                                  ; $0e65 : $ae
	dec bc                                                  ; $0e66 : $0b

br_04_0e67:
	ret pe                                                  ; $0e67 : $e8

	adc a, l                                                  ; $0e68 : $8d
	ret pe                                                  ; $0e69 : $e8

	ld d, h                                                  ; $0e6a : $54
	ex de, hl                                                  ; $0e6b : $eb
	xor (hl)                                                  ; $0e6c : $ae
	add hl, bc                                                  ; $0e6d : $09
	ret                                                  ; $0e6e : $c9


	add hl, sp                                                  ; $0e6f : $39
	ex (sp), hl                                                  ; $0e70 : $e3
	inc (hl)                                                  ; $0e71 : $34
	inc d                                                  ; $0e72 : $14
	call po, Call_04_3844                                                  ; $0e73 : $e4, $44, $38
	dec bc                                                  ; $0e76 : $0b
	push hl                                                  ; $0e77 : $e5
	adc a, b                                                  ; $0e78 : $88
	inc sp                                                  ; $0e79 : $33
	inc hl                                                  ; $0e7a : $23
	rlca                                                  ; $0e7b : $07
	ret                                                  ; $0e7c : $c9


Call_04_0e7d:
	sub c                                                  ; $0e7d : $91
	ld l, h                                                  ; $0e7e : $6c
	rst $00                                                  ; $0e7f : $c7
	sub e                                                  ; $0e80 : $93
	cp l                                                  ; $0e81 : $bd
	dec bc                                                  ; $0e82 : $0b
	ld l, c                                                  ; $0e83 : $69
	ld ($e89c), hl                                                  ; $0e84 : $22, $9c, $e8
	or $07                                                  ; $0e87 : $f6, $07
	ret                                                  ; $0e89 : $c9


	sub c                                                  ; $0e8a : $91
	ld l, h                                                  ; $0e8b : $6c
	xor c                                                  ; $0e8c : $a9
	sub d                                                  ; $0e8d : $92
	ld l, b                                                  ; $0e8e : $68
	dec bc                                                  ; $0e8f : $0b
	ld ($699c), hl                                                  ; $0e90 : $22, $9c, $69
	and $45                                                  ; $0e93 : $e6, $45
	rrca                                                  ; $0e95 : $0f
	and $6c                                                  ; $0e96 : $e6, $6c
	ld d, $ea                                                  ; $0e98 : $16, $ea
	call p, $eee0                                                  ; $0e9a : $f4, $e0, $ee
	ld a, (de)                                                  ; $0e9d : $1a
	ex de, hl                                                  ; $0e9e : $eb
	dec l                                                  ; $0e9f : $2d

Call_04_0ea0:
	inc l                                                  ; $0ea0 : $2c
	ret                                                  ; $0ea1 : $c9


	push hl                                                  ; $0ea2 : $e5
	sbc a, b                                                  ; $0ea3 : $98
	dec bc                                                  ; $0ea4 : $0b
	ret po                                                  ; $0ea5 : $e0

	rst $28                                                  ; $0ea6 : $ef
	ret po                                                  ; $0ea7 : $e0

	.db $ed                                                  ; $0ea8 : $ed

Call_04_0ea9:
	jp (hl)                                                  ; $0ea9 : $e9


	ld b, h                                                  ; $0eaa : $44
	jp (hl)                                                  ; $0eab : $e9


	ld b, l                                                  ; $0eac : $45
	rlca                                                  ; $0ead : $07
	ret                                                  ; $0eae : $c9


	xor (hl)                                                  ; $0eaf : $ae
	ld l, h                                                  ; $0eb0 : $6c
	adc a, (hl)                                                  ; $0eb1 : $8e
	sub d                                                  ; $0eb2 : $92
	add a, l                                                  ; $0eb3 : $85
	dec bc                                                  ; $0eb4 : $0b
	and $33                                                  ; $0eb5 : $e6, $33
	pop hl                                                  ; $0eb7 : $e1
	inc bc                                                  ; $0eb8 : $03
	and $6b                                                  ; $0eb9 : $e6, $6b
	ex af, af'                                                  ; $0ebb : $08
	adc a, $87                                                  ; $0ebc : $ce, $87
	ex de, hl                                                  ; $0ebe : $eb
	or c                                                  ; $0ebf : $b1
	sub e                                                  ; $0ec0 : $93
	cp l                                                  ; $0ec1 : $bd
	xor a                                                  ; $0ec2 : $af
	dec bc                                                  ; $0ec3 : $0b
	ld d, b                                                  ; $0ec4 : $50
	call pe, $5d83                                                  ; $0ec5 : $ec, $83, $5d
	add hl, bc                                                  ; $0ec8 : $09
	ret                                                  ; $0ec9 : $c9


	add hl, sp                                                  ; $0eca : $39
	ld l, h                                                  ; $0ecb : $6c
	ex (sp), hl                                                  ; $0ecc : $e3
	or d                                                  ; $0ecd : $b2
	rst $00                                                  ; $0ece : $c7
	sub d                                                  ; $0ecf : $92

Call_04_0ed0:
	djnz br_04_0edd                                                  ; $0ed0 : $10, $0b
	jr nc, br_04_0f49                                                  ; $0ed2 : $30, $75

	.db $ed                                                  ; $0ed4 : $ed
	inc de                                                  ; $0ed5 : $13
	ex de, hl                                                  ; $0ed6 : $eb
	or h                                                  ; $0ed7 : $b4
	.db $ed                                                  ; $0ed8 : $ed
	dec (hl)                                                  ; $0ed9 : $35
	and a                                                  ; $0eda : $a7
	dec bc                                                  ; $0edb : $0b
	ret                                                  ; $0edc : $c9


br_04_0edd:
	ld a, b                                                  ; $0edd : $78

Jump_04_0ede:
	ld (hl), c                                                  ; $0ede : $71
	adc a, e                                                  ; $0edf : $8b
	ld l, h                                                  ; $0ee0 : $6c
	ex (sp), hl                                                  ; $0ee1 : $e3
	or d                                                  ; $0ee2 : $b2
	xor c                                                  ; $0ee3 : $a9
	sub d                                                  ; $0ee4 : $92
	ld d, b                                                  ; $0ee5 : $50
	dec bc                                                  ; $0ee6 : $0b
	and $88                                                  ; $0ee7 : $e6, $88
	jp (hl)                                                  ; $0ee9 : $e9


	.db $fd                                                  ; $0eea : $fd
	ld a, ($c909)                                                  ; $0eeb : $3a, $09, $c9
	add hl, sp                                                  ; $0eee : $39
	call pe, $e644                                                  ; $0eef : $ec, $44, $e6
	ld d, $e1                                                  ; $0ef2 : $16, $e1
	ld h, e                                                  ; $0ef4 : $63
	dec bc                                                  ; $0ef5 : $0b
	cp (hl)                                                  ; $0ef6 : $be
	push hl                                                  ; $0ef7 : $e5
	adc a, b                                                  ; $0ef8 : $88
	jr nc, br_04_0f03                                                  ; $0ef9 : $30, $08

	ret                                                  ; $0efb : $c9


	ld a, b                                                  ; $0efc : $78
	ld (hl), c                                                  ; $0efd : $71
	ld l, l                                                  ; $0efe : $6d
	sbc a, l                                                  ; $0eff : $9d
	adc a, l                                                  ; $0f00 : $8d
	xor (hl)                                                  ; $0f01 : $ae
	dec bc                                                  ; $0f02 : $0b

br_04_0f03:
	jp po, $e694                                                  ; $0f03 : $e2, $94, $e6
	ld d, $e7                                                  ; $0f06 : $16, $e7
	ld c, l                                                  ; $0f08 : $4d
	rst $20                                                  ; $0f09 : $e7
	ld c, h                                                  ; $0f0a : $4c
	ld a, (bc)                                                  ; $0f0b : $0a
	ret                                                  ; $0f0c : $c9


	ld c, l                                                  ; $0f0d : $4d
	jp po, $6c32                                                  ; $0f0e : $e2, $32, $6c
	ex de, hl                                                  ; $0f11 : $eb
	or b                                                  ; $0f12 : $b0
	sub d                                                  ; $0f13 : $92
	jr z, $0b                                                  ; $0f14 : $28, $0b

	rst $20                                                  ; $0f16 : $e7
	and l                                                  ; $0f17 : $a5
	push hl                                                  ; $0f18 : $e5
	cp (hl)                                                  ; $0f19 : $be

Call_04_0f1a:
	jp po, $e233                                                  ; $0f1a : $e2, $33, $e2
	ret z                                                  ; $0f1d : $c8

	dec d                                                  ; $0f1e : $15

Jump_04_0f1f:
	ret                                                  ; $0f1f : $c9


	jp pe, $e1e3                                                  ; $0f20 : $ea, $e3, $e1
	ex (sp), hl                                                  ; $0f23 : $e3
	ld l, h                                                  ; $0f24 : $6c
	ret pe                                                  ; $0f25 : $e8

	ld a, $52                                                  ; $0f26 : $3e, $52
	cp $fe                                                  ; $0f28 : $fe, $fe
	ld sp, $5436                                                  ; $0f2a : $31, $36, $54
	ld c, b                                                  ; $0f2d : $48
	rst $38                                                  ; $0f2e : $ff
	jp po, $e46f                                                  ; $0f2f : $e2, $6f, $e4
	ld a, h                                                  ; $0f32 : $7c
	dec bc                                                  ; $0f33 : $0b
	jp po, $e27b                                                  ; $0f34 : $e2, $7b, $e2
	in a, ($e3)                                                  ; $0f37 : $db, $e3
	inc h                                                  ; $0f39 : $24
	rlca                                                  ; $0f3a : $07
	ret                                                  ; $0f3b : $c9


	add hl, sp                                                  ; $0f3c : $39
	ld l, h                                                  ; $0f3d : $6c
	rst $00                                                  ; $0f3e : $c7
	sub d                                                  ; $0f3f : $92
	or b                                                  ; $0f40 : $b0
	dec bc                                                  ; $0f41 : $0b
	call po, $e9c6                                                  ; $0f42 : $e4, $c6, $e9
	sub c                                                  ; $0f45 : $91
	ret pe                                                  ; $0f46 : $e8

	sub l                                                  ; $0f47 : $95
	ld a, (bc)                                                  ; $0f48 : $0a

br_04_0f49:
	cpir                                                  ; $0f49 : $ed, $b1
	call po, $89f1                                                  ; $0f4b : $e4, $f1, $89
	sub d                                                  ; $0f4e : $92
	push hl                                                  ; $0f4f : $e5
	call p, Call_04_0b34                                                  ; $0f50 : $f4, $34, $0b
	push hl                                                  ; $0f53 : $e5
	xor l                                                  ; $0f54 : $ad

Call_04_0f55:
	jp (hl)                                                  ; $0f55 : $e9


	ld d, e                                                  ; $0f56 : $53
	jp pe, $08d8                                                  ; $0f57 : $ea, $d8, $08
	adc a, d                                                  ; $0f5a : $8a
	sub c                                                  ; $0f5b : $91
	or e                                                  ; $0f5c : $b3
	ld l, h                                                  ; $0f5d : $6c
	adc a, (hl)                                                  ; $0f5e : $8e
	sub d                                                  ; $0f5f : $92
	jr nc, $01                                                  ; $0f60 : $30, $01

	ld ($d4e0), hl                                                  ; $0f62 : $22, $e0, $d4
	ret po                                                  ; $0f65 : $e0

	ret m                                                  ; $0f66 : $f8

	ret po                                                  ; $0f67 : $e0

	jp m, $d40c                                                  ; $0f68 : $fa, $0c, $d4
	jp po, $e926                                                  ; $0f6b : $e2, $26, $e9
	push af                                                  ; $0f6e : $f5
	ld e, e                                                  ; $0f6f : $5b
	inc c                                                  ; $0f70 : $0c
	ld a, b                                                  ; $0f71 : $78
	push hl                                                  ; $0f72 : $e5
	ex af, af'                                                  ; $0f73 : $08
	and b                                                  ; $0f74 : $a0
	dec bc                                                  ; $0f75 : $0b
	rst $20                                                  ; $0f76 : $e7
	add a, (hl)                                                  ; $0f77 : $86
	ret po                                                  ; $0f78 : $e0

	sbc a, c                                                  ; $0f79 : $99
	jp pe, Jump_04_0a12                                                  ; $0f7a : $ea, $12, $0a
	adc a, $87                                                  ; $0f7d : $ce, $87
	jp (hl)                                                  ; $0f7f : $e9


	and h                                                  ; $0f80 : $a4
	add hl, sp                                                  ; $0f81 : $39
	ld h, e                                                  ; $0f82 : $63

Call_04_0f83:
	jp po, $126c                                                  ; $0f83 : $e2, $6c, $12
	dec bc                                                  ; $0f86 : $0b
	and $06                                                  ; $0f87 : $e6, $06
	ret pe                                                  ; $0f89 : $e8

	ld a, b                                                  ; $0f8a : $78
	push hl                                                  ; $0f8b : $e5
	sub a                                                  ; $0f8c : $97
	ex af, af'                                                  ; $0f8d : $08
	pop hl                                                  ; $0f8e : $e1

Call_04_0f8f:
	ld b, (hl)                                                  ; $0f8f : $46
	ld l, $6d                                                  ; $0f90 : $2e, $6d
	sbc a, l                                                  ; $0f92 : $9d
	ret                                                  ; $0f93 : $c9


	add hl, sp                                                  ; $0f94 : $39
	dec bc                                                  ; $0f95 : $0b

Jump_04_0f96:
	cp (hl)                                                  ; $0f96 : $be
	jp (hl)                                                  ; $0f97 : $e9


	ld bc, $0d83                                                  ; $0f98 : $01, $83, $0d
	call nc, $c6e2                                                  ; $0f9b : $d4, $e2, $c6
	sub d                                                  ; $0f9e : $92
	xor c                                                  ; $0f9f : $a9
	ld (de), a                                                  ; $0fa0 : $12
	ld a, $e6                                                  ; $0fa1 : $3e, $e6
	dec a                                                  ; $0fa3 : $3d
	rst $20                                                  ; $0fa4 : $e7
	ld b, d                                                  ; $0fa5 : $42
	sub (hl)                                                  ; $0fa6 : $96
	dec bc                                                  ; $0fa7 : $0b
	ld b, h                                                  ; $0fa8 : $44
	adc a, (hl)                                                  ; $0fa9 : $8e
	rst $00                                                  ; $0faa : $c7
	rlca                                                  ; $0fab : $07
	and $07                                                  ; $0fac : $e6, $07
	ld l, h                                                  ; $0fae : $6c
	ret pe                                                  ; $0faf : $e8

	cp a                                                  ; $0fb0 : $bf
	jr c, $0b                                                  ; $0fb1 : $38, $0b

	dec c                                                  ; $0fb3 : $0d
	inc hl                                                  ; $0fb4 : $23
	jr nz, $0e                                                  ; $0fb5 : $20, $0e

	adc a, d                                                  ; $0fb7 : $8a
	add a, c                                                  ; $0fb8 : $81
	inc de                                                  ; $0fb9 : $13
	and (hl)                                                  ; $0fba : $a6
	or e                                                  ; $0fbb : $b3
	call po, $e635                                                  ; $0fbc : $e4, $35, $e6
	ld h, b                                                  ; $0fbf : $60
	push hl                                                  ; $0fc0 : $e5

Jump_04_0fc1:
	sbc a, b                                                  ; $0fc1 : $98
	sub d                                                  ; $0fc2 : $92
	add a, e                                                  ; $0fc3 : $83
	ld bc, $e885                                                  ; $0fc4 : $01, $85, $e8
	or (hl)                                                  ; $0fc7 : $b6
	rst $20                                                  ; $0fc8 : $e7
	.db $ed                                                  ; $0fc9 : $ed
	dec b                                                  ; $0fca : $05
	adc a, d                                                  ; $0fcb : $8a
	ld sp, $3392                                                  ; $0fcc : $31, $92, $33
	ld bc, $42eb                                                  ; $0fcf : $01, $eb, $42
	jp po, $e12f                                                  ; $0fd2 : $e2, $2f, $e1
	ld a, c                                                  ; $0fd5 : $79
	add hl, bc                                                  ; $0fd6 : $09
	call nc, $e539                                                  ; $0fd7 : $d4, $39, $e5
	cp d                                                  ; $0fda : $ba
	ld a, c                                                  ; $0fdb : $79
	and b                                                  ; $0fdc : $a0
	ld h, l                                                  ; $0fdd : $65
	exx                                                  ; $0fde : $d9
	dec bc                                                  ; $0fdf : $0b
	ld l, b                                                  ; $0fe0 : $68
	pop hl                                                  ; $0fe1 : $e1
	.db $dd                                                  ; $0fe2 : $dd
	inc sp                                                  ; $0fe3 : $33
	ld c, $c9                                                  ; $0fe4 : $0e, $c9

Jump_04_0fe6:
	rst $20                                                  ; $0fe6 : $e7
	ld (hl), $e3                                                  ; $0fe7 : $36, $e3
	add a, $b4                                                  ; $0fe9 : $c6, $b4
	ret pe                                                  ; $0feb : $e8

	sub d                                                  ; $0fec : $92
	ld d, a                                                  ; $0fed : $57
	ex de, hl                                                  ; $0fee : $eb
	or c                                                  ; $0fef : $b1
	push hl                                                  ; $0ff0 : $e5
	out ($0b), a                                                  ; $0ff1 : $d3, $0b
	rst $20                                                  ; $0ff3 : $e7
	rst $00                                                  ; $0ff4 : $c7
	call pe, $e4fb                                                  ; $0ff5 : $ec, $fb, $e4
	ld c, d                                                  ; $0ff8 : $4a
	inc c                                                  ; $0ff9 : $0c
	ld e, d                                                  ; $0ffa : $5a
	add hl, hl                                                  ; $0ffb : $29
	ld l, h                                                  ; $0ffc : $6c
	add a, b                                                  ; $0ffd : $80
	ret nz                                                  ; $0ffe : $c0

	sub d                                                  ; $0fff : $92
	ld c, c                                                  ; $1000 : $49
	nop                                                  ; $1001 : $00
	ex de, hl                                                  ; $1002 : $eb
	ex af, af'                                                  ; $1003 : $08
	ld d, $0a                                                  ; $1004 : $16, $0a
	and $6e                                                  ; $1006 : $e6, $6e
	pop hl                                                  ; $1008 : $e1

br_04_1009:
	and $ed                                                  ; $1009 : $e6, $ed
	add a, b                                                  ; $100b : $80
	inc c                                                  ; $100c : $0c
	ld h, (hl)                                                  ; $100d : $66
	pop hl                                                  ; $100e : $e1
	rrca                                                  ; $100f : $0f
	add hl, sp                                                  ; $1010 : $39
	ld a, $e9                                                  ; $1011 : $3e, $e9
	add hl, hl                                                  ; $1013 : $29
	call pe, $e8eb                                                  ; $1014 : $ec, $eb, $e8
	exx                                                  ; $1017 : $d9
	dec bc                                                  ; $1018 : $0b
	ld (hl), l                                                  ; $1019 : $75
	jp (hl)                                                  ; $101a : $e9


	ld d, d                                                  ; $101b : $52
	inc sp                                                  ; $101c : $33
	ex af, af'                                                  ; $101d : $08
	adc a, $e7                                                  ; $101e : $ce, $e7
	ld d, b                                                  ; $1020 : $50
	adc a, b                                                  ; $1021 : $88
	and e                                                  ; $1022 : $a3
	ld h, l                                                  ; $1023 : $65
	exx                                                  ; $1024 : $d9
	dec bc                                                  ; $1025 : $0b
	jp pe, $edb0                                                  ; $1026 : $ea, $b0, $ed
	dec hl                                                  ; $1029 : $2b

Jump_04_102a:
	ret po                                                  ; $102a : $e0

	ret                                                  ; $102b : $c9


	dec bc                                                  ; $102c : $0b
	ret                                                  ; $102d : $c9


	ld a, b                                                  ; $102e : $78
	ld (hl), c                                                  ; $102f : $71
	ld (hl), b                                                  ; $1030 : $70
	jp po, $bbc0                                                  ; $1031 : $e2, $c0, $bb
	adc a, (hl)                                                  ; $1034 : $8e
	jp (hl)                                                  ; $1035 : $e9


	sub h                                                  ; $1036 : $94
	dec bc                                                  ; $1037 : $0b
	and $2d                                                  ; $1038 : $e6, $2d
	call po, $e52a                                                  ; $103a : $e4, $2a, $e5
	adc a, b                                                  ; $103d : $88
	ex af, af'                                                  ; $103e : $08
	adc a, $e9                                                  ; $103f : $ce, $e9
	cp d                                                  ; $1041 : $ba
	ld sp, $e993                                                  ; $1042 : $31, $93, $e9
	ld d, d                                                  ; $1045 : $52
	dec bc                                                  ; $1046 : $0b
	jp po, $ee5f                                                  ; $1047 : $e2, $5f, $ee
	rra                                                  ; $104a : $1f
	rst $20                                                  ; $104b : $e7
	add a, l                                                  ; $104c : $85
	dec b                                                  ; $104d : $05
	adc a, $31                                                  ; $104e : $ce, $31
	sub d                                                  ; $1050 : $92
	jr nc, br_04_105e                                                  ; $1051 : $30, $0b

	ret pe                                                  ; $1053 : $e8

	inc c                                                  ; $1054 : $0c
	call pe, $e8cc                                                  ; $1055 : $ec, $cc, $e8
	pop hl                                                  ; $1058 : $e1
	ld a, (bc)                                                  ; $1059 : $0a
	ret                                                  ; $105a : $c9


	ex de, hl                                                  ; $105b : $eb
	dec bc                                                  ; $105c : $0b
	rst $20                                                  ; $105d : $e7

br_04_105e:
	jr z, br_04_1009                                                  ; $105e : $28, $a9

	sub d                                                  ; $1060 : $92
	push hl                                                  ; $1061 : $e5
	and b                                                  ; $1062 : $a0
	dec bc                                                  ; $1063 : $0b
	rst $20                                                  ; $1064 : $e7
	cp c                                                  ; $1065 : $b9
	pop hl                                                  ; $1066 : $e1
	ld c, d                                                  ; $1067 : $4a
	jp po, $0841                                                  ; $1068 : $e2, $41, $08
	rst $20                                                  ; $106b : $e7
	inc sp                                                  ; $106c : $33
	ld l, h                                                  ; $106d : $6c
	ld h, (hl)                                                  ; $106e : $66
	xor c                                                  ; $106f : $a9
	inc de                                                  ; $1070 : $13
	add hl, sp                                                  ; $1071 : $39
	dec bc                                                  ; $1072 : $0b
	ret po                                                  ; $1073 : $e0

	rst $38                                                  ; $1074 : $ff
	.db $ed                                                  ; $1075 : $ed
	cpl                                                  ; $1076 : $2f
	jp (hl)                                                  ; $1077 : $e9


	ld c, b                                                  ; $1078 : $48
	ld b, $ce                                                  ; $1079 : $06, $ce
	xor (hl)                                                  ; $107b : $ae
	ld sp, $8d92                                                  ; $107c : $31, $92, $8d
	dec bc                                                  ; $107f : $0b
	call pe, $e152                                                  ; $1080 : $ec, $52, $e1
	ld sp, hl                                                  ; $1083 : $f9
	ret po                                                  ; $1084 : $e0

	sbc a, b                                                  ; $1085 : $98
	dec b                                                  ; $1086 : $05
	adc a, $31                                                  ; $1087 : $ce, $31
	sub d                                                  ; $1089 : $92
	add a, l                                                  ; $108a : $85
	dec bc                                                  ; $108b : $0b
	and $bd                                                  ; $108c : $e6, $bd
	ex de, hl                                                  ; $108e : $eb
	jp c, $93e6                                                  ; $108f : $da, $e6, $93
	inc c                                                  ; $1092 : $0c
	ret                                                  ; $1093 : $c9


Jump_04_1094:
	xor (hl)                                                  ; $1094 : $ae
	ld e, e                                                  ; $1095 : $5b
	inc c                                                  ; $1096 : $0c
	jp po, Jump_04_1f14                                                  ; $1097 : $e2, $14, $1f
	ld (hl), h                                                  ; $109a : $74
	xor (hl)                                                  ; $109b : $ae
	call po, Call_04_0bda                                                  ; $109c : $e4, $da, $0b
	jp po, $edd4                                                  ; $109f : $e2, $d4, $ed
	scf                                                  ; $10a2 : $37
	pop hl                                                  ; $10a3 : $e1
	ld bc, $6606                                                  ; $10a4 : $01, $06, $66
	xor (hl)                                                  ; $10a7 : $ae
	ld l, h                                                  ; $10a8 : $6c
	ret po                                                  ; $10a9 : $e0

	sbc a, e                                                  ; $10aa : $9b
	dec bc                                                  ; $10ab : $0b
	call pe, $e783                                                  ; $10ac : $ec, $83, $e7
	ld e, h                                                  ; $10af : $5c
	ret pe                                                  ; $10b0 : $e8

	ld l, (hl)                                                  ; $10b1 : $6e
	ex af, af'                                                  ; $10b2 : $08
	ret                                                  ; $10b3 : $c9


	inc (hl)                                                  ; $10b4 : $34
	ld (hl), b                                                  ; $10b5 : $70
	ld sp, $e892                                                  ; $10b6 : $31, $92, $e8
	sub l                                                  ; $10b9 : $95
	dec bc                                                  ; $10ba : $0b
	pop hl                                                  ; $10bb : $e1
	adc a, b                                                  ; $10bc : $88
	call pe, $e801                                                  ; $10bd : $ec, $01, $e8
	sbc a, $07                                                  ; $10c0 : $de, $07
	jp po, $702a                                                  ; $10c2 : $e2, $2a, $70
	ld sp, $8b94                                                  ; $10c5 : $31, $94, $8b
	dec bc                                                  ; $10c8 : $0b
	call pe, $e5c1                                                  ; $10c9 : $ec, $c1, $e5
	sub (hl)                                                  ; $10cc : $96
	inc hl                                                  ; $10cd : $23
	rlca                                                  ; $10ce : $07
	adc a, $db                                                  ; $10cf : $ce, $db
	ld a, c                                                  ; $10d1 : $79
	add hl, sp                                                  ; $10d2 : $39
	ld h, e                                                  ; $10d3 : $63
	dec e                                                  ; $10d4 : $1d
	dec bc                                                  ; $10d5 : $0b
	inc sp                                                  ; $10d6 : $33
	cp (hl)                                                  ; $10d7 : $be
	.db $ed                                                  ; $10d8 : $ed
	inc de                                                  ; $10d9 : $13
	.db $ed                                                  ; $10da : $ed
	dec (hl)                                                  ; $10db : $35
	ex de, hl                                                  ; $10dc : $eb
	or h                                                  ; $10dd : $b4
	ex af, af'                                                  ; $10de : $08
	ret                                                  ; $10df : $c9


	add hl, sp                                                  ; $10e0 : $39
	push hl                                                  ; $10e1 : $e5
	cp d                                                  ; $10e2 : $ba
	in a, ($79)                                                  ; $10e3 : $db, $79
	and b                                                  ; $10e5 : $a0
	dec bc                                                  ; $10e6 : $0b

Call_04_10e7:
	ld l, b                                                  ; $10e7 : $68
	ld (hl), l                                                  ; $10e8 : $75
	inc sp                                                  ; $10e9 : $33
	inc de                                                  ; $10ea : $13
	and $74                                                  ; $10eb : $e6, $74
	call pe, $e555                                                  ; $10ed : $ec, $55, $e5
	pop de                                                  ; $10f0 : $d1
	cp d                                                  ; $10f1 : $ba
	call po, $7798                                                  ; $10f2 : $e4, $98, $77
	.db $ed                                                  ; $10f5 : $ed
	or a                                                  ; $10f6 : $b7
	jp po, $6cba                                                  ; $10f7 : $e2, $ba, $6c
	call pe, $dec6                                                  ; $10fa : $ec, $c6, $de
	ld bc, $aded                                                  ; $10fd : $01, $ed, $ad
	jp po, $e3cc                                                  ; $1100 : $e2, $cc, $e3
	ret pe                                                  ; $1103 : $e8

	dec bc                                                  ; $1104 : $0b
	call nc, Call_04_394c                                                  ; $1105 : $d4, $4c, $39
	ld l, h                                                  ; $1108 : $6c
	.db $ed                                                  ; $1109 : $ed
	and (hl)                                                  ; $110a : $a6
	ld d, c                                                  ; $110b : $51
	ld (hl), h                                                  ; $110c : $74
	ex (sp), hl                                                  ; $110d : $e3
	xor l                                                  ; $110e : $ad
	dec bc                                                  ; $110f : $0b
	pop hl                                                  ; $1110 : $e1
	ld a, h                                                  ; $1111 : $7c

Call_04_1112:
	ex (sp), hl                                                  ; $1112 : $e3
	adc a, b                                                  ; $1113 : $88
	ret pe                                                  ; $1114 : $e8

	ld h, d                                                  ; $1115 : $62
	push hl                                                  ; $1116 : $e5
	.db $fd                                                  ; $1117 : $fd
	ld c, $c9                                                  ; $1118 : $0e, $c9
	add hl, sp                                                  ; $111a : $39
	ex de, hl                                                  ; $111b : $eb
	ld b, l                                                  ; $111c : $45
	or h                                                  ; $111d : $b4
	push bc                                                  ; $111e : $c5
	sub e                                                  ; $111f : $93
	jp po, $a6d4                                                  ; $1120 : $e2, $d4, $a6
	rst $10                                                  ; $1123 : $d7
	or h                                                  ; $1124 : $b4
	cp l                                                  ; $1125 : $bd
	dec bc                                                  ; $1126 : $0b
	jp (hl)                                                  ; $1127 : $e9


	ld bc, $8330                                                  ; $1128 : $01, $30, $83
	ld b, $ce                                                  ; $112b : $06, $ce
	ld a, c                                                  ; $112d : $79
	ret z                                                  ; $112e : $c8

	ld c, h                                                  ; $112f : $4c

Call_04_1130:
	add hl, sp                                                  ; $1130 : $39
	dec bc                                                  ; $1131 : $0b
	ind                                                  ; $1132 : $ed, $aa
	or b                                                  ; $1134 : $b0
	ld d, h                                                  ; $1135 : $54
	djnz br_04_1144                                                  ; $1136 : $10, $0c
	rst $20                                                  ; $1138 : $e7
	ld c, c                                                  ; $1139 : $49
	ret po                                                  ; $113a : $e0

	or d                                                  ; $113b : $b2
	ld l, h                                                  ; $113c : $6c
	rst $20                                                  ; $113d : $e7
	or c                                                  ; $113e : $b1
	inc l                                                  ; $113f : $2c
	ld (hl), h                                                  ; $1140 : $74
	push hl                                                  ; $1141 : $e5
	adc a, $e0                                                  ; $1142 : $ce, $e0

br_04_1144:
	ld l, c                                                  ; $1144 : $69
	ret                                                  ; $1145 : $c9


	dec bc                                                  ; $1146 : $0b
	push hl                                                  ; $1147 : $e5
	adc a, a                                                  ; $1148 : $8f
	jp (hl)                                                  ; $1149 : $e9


	ld a, (hl)                                                  ; $114a : $7e
	ex de, hl                                                  ; $114b : $eb
	inc c                                                  ; $114c : $0c
	ld c, $c9                                                  ; $114d : $0e, $c9
	or d                                                  ; $114f : $b2
	and l                                                  ; $1150 : $a5
	inc c                                                  ; $1151 : $0c
	daa                                                  ; $1152 : $27
	sub d                                                  ; $1153 : $92
	ld (hl), a                                                  ; $1154 : $77
	rst $10                                                  ; $1155 : $d7
	push bc                                                  ; $1156 : $c5
	sub (hl)                                                  ; $1157 : $96
	dec b                                                  ; $1158 : $05
	ex de, hl                                                  ; $1159 : $eb
	ld h, h                                                  ; $115a : $64
	dec bc                                                  ; $115b : $0b
	ld (hl), c                                                  ; $115c : $71
	and $7c                                                  ; $115d : $e6, $7c
	jp (hl)                                                  ; $115f : $e9


	jr nc, br_04_116a                                                  ; $1160 : $30, $08

	ld h, (hl)                                                  ; $1162 : $66
	add hl, sp                                                  ; $1163 : $39
	call nz, Call_04_3ae1                                                  ; $1164 : $c4, $e1, $3a
	jp po, Jump_04_0bb3                                                  ; $1167 : $e2, $b3, $0b

Jump_04_116a:
br_04_116a:
	jp (hl)                                                  ; $116a : $e9


	ld c, b                                                  ; $116b : $48
	ld a, ($0b83)                                                  ; $116c : $3a, $83, $0b
	adc a, d                                                  ; $116f : $8a
	call pe, $9217                                                  ; $1170 : $ec, $17, $92
	and $78                                                  ; $1173 : $e6, $78
	sub d                                                  ; $1175 : $92
	ex de, hl                                                  ; $1176 : $eb
	or d                                                  ; $1177 : $b2
	djnz br_04_117b                                                  ; $1178 : $10, $01
	pop hl                                                  ; $117a : $e1

br_04_117b:
	adc a, c                                                  ; $117b : $89
	and $be                                                  ; $117c : $e6, $be
	ret po                                                  ; $117e : $e0

	sbc a, (hl)                                                  ; $117f : $9e
	ret po                                                  ; $1180 : $e0

	sbc a, a                                                  ; $1181 : $9f
	dec bc                                                  ; $1182 : $0b
	ret                                                  ; $1183 : $c9


	ld c, h                                                  ; $1184 : $4c
	jp pe, Jump_04_3e59                                                  ; $1185 : $ea, $59, $3e
	ld a, r                                                  ; $1188 : $ed, $5f
	jp po, $56de                                                  ; $118a : $e2, $de, $56
	dec bc                                                  ; $118d : $0b
	push hl                                                  ; $118e : $e5
	add a, h                                                  ; $118f : $84
	and $26                                                  ; $1190 : $e6, $26
	jp pe, $0efa                                                  ; $1192 : $ea, $fa, $0e
	ret                                                  ; $1195 : $c9


	ld (hl), c                                                  ; $1196 : $71
	adc a, e                                                  ; $1197 : $8b
	jp Jump_04_3ee8                                                  ; $1198 : $c3, $e8, $3e


	ld c, $e6                                                  ; $119b : $0e, $e6
	call nc, $4fe9                                                  ; $119d : $d4, $e9, $4f
	sub d                                                  ; $11a0 : $92
	xor e                                                  ; $11a1 : $ab
	dec bc                                                  ; $11a2 : $0b
	jp (hl)                                                  ; $11a3 : $e9


	ld d, b                                                  ; $11a4 : $50
	jp (hl)                                                  ; $11a5 : $e9


	jr nz, -$17                                                  ; $11a6 : $20, $e9

	ld d, d                                                  ; $11a8 : $52
	inc d                                                  ; $11a9 : $14
	ret                                                  ; $11aa : $c9


	call nz, $5ae1                                                  ; $11ab : $c4, $e1, $5a
	ex (sp), hl                                                  ; $11ae : $e3
	or b                                                  ; $11af : $b0
	call pe, Call_04_2de6                                                  ; $11b0 : $ec, $e6, $2d
	ld c, (hl)                                                  ; $11b3 : $4e
	ld c, h                                                  ; $11b4 : $4c
	ex de, hl                                                  ; $11b5 : $eb
	ld d, c                                                  ; $11b6 : $51
	cp d                                                  ; $11b7 : $ba
	jp pe, Jump_04_1ed9                                                  ; $11b8 : $ea, $d9, $1e
	or h                                                  ; $11bb : $b4
	exx                                                  ; $11bc : $d9
	dec bc                                                  ; $11bd : $0b
	ld b, h                                                  ; $11be : $44
	xor c                                                  ; $11bf : $a9
	rst $00                                                  ; $11c0 : $c7
	rlca                                                  ; $11c1 : $07
	adc a, $31                                                  ; $11c2 : $ce, $31
	inc (hl)                                                  ; $11c4 : $34
	sub d                                                  ; $11c5 : $92
	pop hl                                                  ; $11c6 : $e1
	.db $dd                                                  ; $11c7 : $dd
	dec bc                                                  ; $11c8 : $0b
	jp pe, $ea9f                                                  ; $11c9 : $ea, $9f, $ea
	call pe, $dce1                                                  ; $11cc : $ec, $e1, $dc
	rlca                                                  ; $11cf : $07
	call nc, $7038                                                  ; $11d0 : $d4, $38, $70
	add a, a                                                  ; $11d3 : $87
	.db $ed                                                  ; $11d4 : $ed
	dec h                                                  ; $11d5 : $25
	dec bc                                                  ; $11d6 : $0b
	inc hl                                                  ; $11d7 : $23
	push hl                                                  ; $11d8 : $e5
	adc a, b                                                  ; $11d9 : $88
	ret po                                                  ; $11da : $e0

	push de                                                  ; $11db : $d5
	add hl, bc                                                  ; $11dc : $09
	call nc, $aebd                                                  ; $11dd : $d4, $bd, $ae
	push hl                                                  ; $11e0 : $e5
	cp d                                                  ; $11e1 : $ba
	add a, a                                                  ; $11e2 : $87
	push hl                                                  ; $11e3 : $e5
	ld e, h                                                  ; $11e4 : $5c
	dec bc                                                  ; $11e5 : $0b
	and $2e                                                  ; $11e6 : $e6, $2e
	ret pe                                                  ; $11e8 : $e8

	pop de                                                  ; $11e9 : $d1
	djnz br_04_11f2                                                  ; $11ea : $10, $06

Call_04_11ec:
	adc a, $db                                                  ; $11ec : $ce, $db
	ld e, (hl)                                                  ; $11ee : $5e
	adc a, b                                                  ; $11ef : $88
	and e                                                  ; $11f0 : $a3
	dec bc                                                  ; $11f1 : $0b

br_04_11f2:
	ret po                                                  ; $11f2 : $e0

	xor a                                                  ; $11f3 : $af
	ret po                                                  ; $11f4 : $e0

	ret                                                  ; $11f5 : $c9


	push hl                                                  ; $11f6 : $e5
	call pe, $ce05                                                  ; $11f7 : $ec, $05, $ce
	in a, ($79)                                                  ; $11fa : $db, $79
	ld (hl), c                                                  ; $11fc : $71
	dec bc                                                  ; $11fd : $0b
	ld a, ($2de6)                                                  ; $11fe : $3a, $e6, $2d
	push hl                                                  ; $1201 : $e5
	adc a, b                                                  ; $1202 : $88
	rlca                                                  ; $1203 : $07
	adc a, $e0                                                  ; $1204 : $ce, $e0
	ld c, a                                                  ; $1206 : $4f
	ld a, c                                                  ; $1207 : $79
	cp l                                                  ; $1208 : $bd
	xor (hl)                                                  ; $1209 : $ae
	dec bc                                                  ; $120a : $0b
	ret pe                                                  ; $120b : $e8

	ex af, af'                                                  ; $120c : $08
	ld l, $ec                                                  ; $120d : $2e, $ec
	add a, e                                                  ; $120f : $83
	dec bc                                                  ; $1210 : $0b
	ret                                                  ; $1211 : $c9


	add hl, sp                                                  ; $1212 : $39
	ld l, h                                                  ; $1213 : $6c
	dec h                                                  ; $1214 : $25
	jp po, Jump_04_1600                                                  ; $1215 : $e2, $00, $16
	or h                                                  ; $1218 : $b4
	.db $ed                                                  ; $1219 : $ed
	inc de                                                  ; $121a : $13
	dec bc                                                  ; $121b : $0b
	ret po                                                  ; $121c : $e0

	sub a                                                  ; $121d : $97
	xor $1d                                                  ; $121e : $ee, $1d
	jp pe, Jump_04_08c8                                                  ; $1220 : $ea, $c8, $08
	ret                                                  ; $1223 : $c9


	add hl, sp                                                  ; $1224 : $39
	ld l, h                                                  ; $1225 : $6c
	ld b, h                                                  ; $1226 : $44
	sub d                                                  ; $1227 : $92
	jp (hl)                                                  ; $1228 : $e9


	xor c                                                  ; $1229 : $a9
	dec bc                                                  ; $122a : $0b
	ld d, h                                                  ; $122b : $54
	ld (hl), e                                                  ; $122c : $73
	xor e                                                  ; $122d : $ab
	ex af, af'                                                  ; $122e : $08
	jp z, Jump_04_21e8                                                  ; $122f : $ca, $e8, $21
	dec h                                                  ; $1232 : $25
	xor e                                                  ; $1233 : $ab
	ld d, $54                                                  ; $1234 : $16, $54
	dec bc                                                  ; $1236 : $0b
	ret po                                                  ; $1237 : $e0

	xor a                                                  ; $1238 : $af
	jp (hl)                                                  ; $1239 : $e9


	ld (de), a                                                  ; $123a : $12
	jp pe, Jump_04_0a09                                                  ; $123b : $ea, $09, $0a
	ret                                                  ; $123e : $c9


	dec d                                                  ; $123f : $15
	inc (hl)                                                  ; $1240 : $34
	jp $962b                                                  ; $1241 : $c3, $2b, $96


	add hl, bc                                                  ; $1244 : $09
	push hl                                                  ; $1245 : $e5
	jp pe, $e10b                                                  ; $1246 : $ea, $0b, $e1
	add hl, de                                                  ; $1249 : $19
	and $98                                                  ; $124a : $e6, $98
	jp pe, $06b9                                                  ; $124c : $ea, $b9, $06
	ld h, (hl)                                                  ; $124f : $66
	inc (hl)                                                  ; $1250 : $34
	ld (hl), b                                                  ; $1251 : $70
	ret po                                                  ; $1252 : $e0

	dec b                                                  ; $1253 : $05
	dec bc                                                  ; $1254 : $0b
	ld ($eb28), a                                                  ; $1255 : $32, $28, $eb
	jp c, $ce06                                                  ; $1258 : $da, $06, $ce
	ld sp, $e192                                                  ; $125b : $31, $92, $e1
	cp c                                                  ; $125e : $b9
	dec bc                                                  ; $125f : $0b
	pop hl                                                  ; $1260 : $e1
	ret m                                                  ; $1261 : $f8

	rst $20                                                  ; $1262 : $e7
	inc sp                                                  ; $1263 : $33
	and $e5                                                  ; $1264 : $e6, $e5
	ex af, af'                                                  ; $1266 : $08
	sub h                                                  ; $1267 : $94
	add hl, sp                                                  ; $1268 : $39
	ld l, h                                                  ; $1269 : $6c
	jp po, $b439                                                  ; $126a : $e2, $39, $b4
	ld sp, $e40b                                                  ; $126d : $31, $0b, $e4
	dec c                                                  ; $1270 : $0d
	push hl                                                  ; $1271 : $e5
	and b                                                  ; $1272 : $a0
	im 0                                                  ; $1273 : $ed, $46

Call_04_1275:
	add hl, bc                                                  ; $1275 : $09
	ret                                                  ; $1276 : $c9


	ex de, hl                                                  ; $1277 : $eb
	dec bc                                                  ; $1278 : $0b
	ld (hl), b                                                  ; $1279 : $70
	ld d, l                                                  ; $127a : $55
	jp pe, $96a4                                                  ; $127b : $ea, $a4, $96
	dec bc                                                  ; $127e : $0b
	ret po                                                  ; $127f : $e0

	add a, l                                                  ; $1280 : $85
	and $6a                                                  ; $1281 : $e6, $6a
	rst $20                                                  ; $1283 : $e7
	cp c                                                  ; $1284 : $b9
	ex af, af'                                                  ; $1285 : $08
	ret                                                  ; $1286 : $c9


	xor (hl)                                                  ; $1287 : $ae
	ld l, h                                                  ; $1288 : $6c
	call po, $569d                                                  ; $1289 : $e4, $9d, $56
	ld l, $0b                                                  ; $128c : $2e, $0b
	ld d, b                                                  ; $128e : $50
	rst $20                                                  ; $128f : $e7
	ld a, d                                                  ; $1290 : $7a
	ld e, l                                                  ; $1291 : $5d
	add hl, bc                                                  ; $1292 : $09
	adc a, d                                                  ; $1293 : $8a
	rst $20                                                  ; $1294 : $e7
	ld d, b                                                  ; $1295 : $50
	ret pe                                                  ; $1296 : $e8

	ld c, e                                                  ; $1297 : $4b
	.db $ed                                                  ; $1298 : $ed
	sub a                                                  ; $1299 : $97
	ld h, l                                                  ; $129a : $65
	cp l                                                  ; $129b : $bd
	ret pe                                                  ; $129c : $e8

	or (hl)                                                  ; $129d : $b6
	add a, l                                                  ; $129e : $85
	rst $20                                                  ; $129f : $e7
	.db $ed                                                  ; $12a0 : $ed
	rst $20                                                  ; $12a1 : $e7
	xor $08                                                  ; $12a2 : $ee, $08
	adc a, d                                                  ; $12a4 : $8a
	.db $ed                                                  ; $12a5 : $ed
	ld a, (de)                                                  ; $12a6 : $1a
	jr c, br_04_12ff                                                  ; $12a7 : $38, $56

	ret pe                                                  ; $12a9 : $e8

	dec sp                                                  ; $12aa : $3b
	ld bc, $9ce9                                                  ; $12ab : $01, $e9, $9c
	and $e1                                                  ; $12ae : $e6, $e1
	pop hl                                                  ; $12b0 : $e1
	dec e                                                  ; $12b1 : $1d
	rlca                                                  ; $12b2 : $07
	rst $08                                                  ; $12b3 : $cf
	or h                                                  ; $12b4 : $b4
	in a, ($79)                                                  ; $12b5 : $db, $79
	ex de, hl                                                  ; $12b7 : $eb
	dec bc                                                  ; $12b8 : $0b
	dec bc                                                  ; $12b9 : $0b
	ld h, $e2                                                  ; $12ba : $26, $e2
	ld d, h                                                  ; $12bc : $54
	rst $20                                                  ; $12bd : $e7
	cp c                                                  ; $12be : $b9
	dec bc                                                  ; $12bf : $0b
	ret                                                  ; $12c0 : $c9


	inc (hl)                                                  ; $12c1 : $34
	ld l, h                                                  ; $12c2 : $6c
	ld c, l                                                  ; $12c3 : $4d
	ld d, c                                                  ; $12c4 : $51
	ld (hl), h                                                  ; $12c5 : $74
	rst $20                                                  ; $12c6 : $e7
	ex af, af'                                                  ; $12c7 : $08
	call pe, Call_04_0bcf                                                  ; $12c8 : $ec, $cf, $0b
	rst $20                                                  ; $12cb : $e7
	call c, $d8e4                                                  ; $12cc : $dc, $e4, $d8
	jp (hl)                                                  ; $12cf : $e9


	ld h, a                                                  ; $12d0 : $67
	ld c, $e8                                                  ; $12d1 : $0e, $e8
	cp a                                                  ; $12d3 : $bf
	jr c, -$1b                                                  ; $12d4 : $38, $e5

	ret nz                                                  ; $12d6 : $c0

	ret pe                                                  ; $12d7 : $e8

	cp c                                                  ; $12d8 : $b9
	call po, $e1f8                                                  ; $12d9 : $e4, $f8, $e1
	ld (hl), h                                                  ; $12dc : $74
	call po, Call_04_0bfa                                                  ; $12dd : $e4, $fa, $0b
	jr nz, br_04_1305                                                  ; $12e0 : $20, $23

	dec c                                                  ; $12e2 : $0d
	dec c                                                  ; $12e3 : $0d
	ld h, (hl)                                                  ; $12e4 : $66
	ld c, l                                                  ; $12e5 : $4d
	ld c, h                                                  ; $12e6 : $4c
	inc (hl)                                                  ; $12e7 : $34
	ex (sp), hl                                                  ; $12e8 : $e3
	dec hl                                                  ; $12e9 : $2b
	.db $dd                                                  ; $12ea : $dd
	jp pe, $6499                                                  ; $12eb : $ea, $99, $64
	push hl                                                  ; $12ee : $e5
	ld l, d                                                  ; $12ef : $6a
	dec bc                                                  ; $12f0 : $0b
	jp pe, $edb9                                                  ; $12f1 : $ea, $b9, $ed
	ld e, h                                                  ; $12f4 : $5c
	ld i, a                                                  ; $12f5 : $ed, $47
	add hl, bc                                                  ; $12f7 : $09

Jump_04_12f8:
	adc a, $e2                                                  ; $12f8 : $ce, $e2
	ld h, $e4                                                  ; $12fa : $26, $e4

Jump_04_12fc:
	ld c, h                                                  ; $12fc : $4c
	sub e                                                  ; $12fd : $93
	cp l                                                  ; $12fe : $bd

br_04_12ff:
	xor a                                                  ; $12ff : $af
	dec bc                                                  ; $1300 : $0b
	ex (sp), hl                                                  ; $1301 : $e3
	jp nz, $e9af                                                  ; $1302 : $c2, $af, $e9

br_04_1305:
	or $e9                                                  ; $1305 : $f6, $e9
	push af                                                  ; $1307 : $f5
	add hl, bc                                                  ; $1308 : $09
	adc a, $db                                                  ; $1309 : $ce, $db
	ld a, c                                                  ; $130b : $79
	push hl                                                  ; $130c : $e5
	ld a, (bc)                                                  ; $130d : $0a
	push bc                                                  ; $130e : $c5
	and $e9                                                  ; $130f : $e6, $e9
	dec bc                                                  ; $1311 : $0b
	rst $20                                                  ; $1312 : $e7
	call nc, $45e1                                                  ; $1313 : $d4, $e1, $45
	call pe, $e639                                                  ; $1316 : $ec, $39, $e6
	call pe, $1f0d                                                  ; $1319 : $ec, $0d, $1f
	inc c                                                  ; $131c : $0c
	push hl                                                  ; $131d : $e5

br_04_131e:
	dec a                                                  ; $131e : $3d
	.db $ed                                                  ; $131f : $ed
	ld e, $00                                                  ; $1320 : $1e, $00
	or h                                                  ; $1322 : $b4
	xor (hl)                                                  ; $1323 : $ae
	sub d                                                  ; $1324 : $92
	ld d, b                                                  ; $1325 : $50
	ld l, l                                                  ; $1326 : $6d
	ld a, (bc)                                                  ; $1327 : $0a
	and $7c                                                  ; $1328 : $e6, $7c
	ld (hl), c                                                  ; $132a : $71
	jp (hl)                                                  ; $132b : $e9


	jr nc, br_04_1339                                                  ; $132c : $30, $0b

	ld h, a                                                  ; $132e : $67
	sbc a, l                                                  ; $132f : $9d
	or h                                                  ; $1330 : $b4
	ret z                                                  ; $1331 : $c8

	push hl                                                  ; $1332 : $e5
	out ($6c), a                                                  ; $1333 : $d3, $6c
	ret pe                                                  ; $1335 : $e8

	ld a, b                                                  ; $1336 : $78
	ld a, a                                                  ; $1337 : $7f
	dec bc                                                  ; $1338 : $0b

br_04_1339:
	ex de, hl                                                  ; $1339 : $eb
	xor l                                                  ; $133a : $ad
	ret pe                                                  ; $133b : $e8

	adc a, h                                                  ; $133c : $8c
	jp po, Jump_04_0b6d                                                  ; $133d : $e2, $6d, $0b
	adc a, d                                                  ; $1340 : $8a
	ld a, c                                                  ; $1341 : $79
	ex de, hl                                                  ; $1342 : $eb
	cp b                                                  ; $1343 : $b8
	cp l                                                  ; $1344 : $bd
	jp (hl)                                                  ; $1345 : $e9


	xor l                                                  ; $1346 : $ad
	ld h, l                                                  ; $1347 : $65
	jp po, Jump_04_0141                                                  ; $1348 : $e2, $41, $01
	ld a, ($a0e5)                                                  ; $134b : $3a, $e5, $a0
	jp (hl)                                                  ; $134e : $e9


	.db $fd                                                  ; $134f : $fd
	inc d                                                  ; $1350 : $14
	or h                                                  ; $1351 : $b4
	dec d                                                  ; $1352 : $15
	jp po, $b3b3                                                  ; $1353 : $e2, $b3, $b3
	push hl                                                  ; $1356 : $e5
	adc a, e                                                  ; $1357 : $8b
	ret nz                                                  ; $1358 : $c0

	ret po                                                  ; $1359 : $e0

	xor e                                                  ; $135a : $ab
	or h                                                  ; $135b : $b4
	ret pe                                                  ; $135c : $e8

	ld a, e                                                  ; $135d : $7b
	ld l, h                                                  ; $135e : $6c
	ret pe                                                  ; $135f : $e8

	sbc a, (hl)                                                  ; $1360 : $9e
	or h                                                  ; $1361 : $b4
	adc a, e                                                  ; $1362 : $8b
	sub d                                                  ; $1363 : $92
	ld a, (bc)                                                  ; $1364 : $0a
	push hl                                                  ; $1365 : $e5
	add a, l                                                  ; $1366 : $85
	.db $ed                                                  ; $1367 : $ed
	rlca                                                  ; $1368 : $07
	ld b, l                                                  ; $1369 : $45
	rlca                                                  ; $136a : $07
	and $44                                                  ; $136b : $e6, $44
	and $01                                                  ; $136d : $e6, $01
	and (hl)                                                  ; $136f : $a6
	ld (hl), b                                                  ; $1370 : $70
	ld a, (bc)                                                  ; $1371 : $0a
	call pe, $e262                                                  ; $1372 : $ec, $62, $e2
	ld (hl), a                                                  ; $1375 : $77

Jump_04_1376:
	push hl                                                  ; $1376 : $e5
	add hl, hl                                                  ; $1377 : $29
	djnz br_04_131e                                                  ; $1378 : $10, $a4
	ex de, hl                                                  ; $137a : $eb
	sub $63                                                  ; $137b : $d6, $63
	ret pe                                                  ; $137d : $e8

	dec d                                                  ; $137e : $15
	ld l, h                                                  ; $137f : $6c
	call po, $e8fa                                                  ; $1380 : $e4, $fa, $e8
	ret pe                                                  ; $1383 : $e8

	or h                                                  ; $1384 : $b4
	.db $ed                                                  ; $1385 : $ed
	add a, e                                                  ; $1386 : $83
	sub e                                                  ; $1387 : $93
	ld a, (bc)                                                  ; $1388 : $0a
	push hl                                                  ; $1389 : $e5
	sbc a, $ed                                                  ; $138a : $de, $ed
	ret po                                                  ; $138c : $e0

	and $e2                                                  ; $138d : $e6, $e2
	rlca                                                  ; $138f : $07
	adc a, $5a                                                  ; $1390 : $ce, $5a
	adc a, b                                                  ; $1392 : $88

Call_04_1393:
	and e                                                  ; $1393 : $a3
	sub d                                                  ; $1394 : $92
	ld c, e                                                  ; $1395 : $4b
	dec bc                                                  ; $1396 : $0b
	ret po                                                  ; $1397 : $e0

	ret                                                  ; $1398 : $c9


	push hl                                                  ; $1399 : $e5
	call pe, $8bec                                                  ; $139a : $ec, $ec, $8b
	ret po                                                  ; $139d : $e0

	xor a                                                  ; $139e : $af
	dec d                                                  ; $139f : $15
	call nc, Call_04_394c                                                  ; $13a0 : $d4, $4c, $39
	ld l, h                                                  ; $13a3 : $6c
	ex de, hl                                                  ; $13a4 : $eb
	add a, (hl)                                                  ; $13a5 : $86
	call pe, $e586                                                  ; $13a6 : $ec, $86, $e5
	.db $fd                                                  ; $13a9 : $fd
	jp po, $eb0b                                                  ; $13aa : $e2, $0b, $eb
	rst $38                                                  ; $13ad : $ff
	sbc hl, de                                                  ; $13ae : $ed, $52
	ex (sp), hl                                                  ; $13b0 : $e3
	adc a, c                                                  ; $13b1 : $89
	jp (hl)                                                  ; $13b2 : $e9


	and d                                                  ; $13b3 : $a2
	dec bc                                                  ; $13b4 : $0b
	ex (sp), hl                                                  ; $13b5 : $e3
	adc a, b                                                  ; $13b6 : $88
	or b                                                  ; $13b7 : $b0
	pop hl                                                  ; $13b8 : $e1
	ld a, h                                                  ; $13b9 : $7c
	add hl, bc                                                  ; $13ba : $09
	call nc, $6c39                                                  ; $13bb : $d4, $39, $6c
	ld c, l                                                  ; $13be : $4d
	ld d, c                                                  ; $13bf : $51
	ld (hl), h                                                  ; $13c0 : $74
	call po, $0bcd                                                  ; $13c1 : $e4, $cd, $0b
	ex (sp), hl                                                  ; $13c4 : $e3
	adc a, b                                                  ; $13c5 : $88
	call po, $e85b                                                  ; $13c6 : $e4, $5b, $e8
	sub l                                                  ; $13c9 : $95
	rla                                                  ; $13ca : $17
	or h                                                  ; $13cb : $b4
	rst $20                                                  ; $13cc : $e7
	ld (hl), $b3                                                  ; $13cd : $36, $b3
	ex (sp), hl                                                  ; $13cf : $e3
	add a, $d3                                                  ; $13d0 : $c6, $d3
	call pe, $ed14                                                  ; $13d2 : $ec, $14, $ed
	rst $38                                                  ; $13d5 : $ff
	call po, $6ad9                                                  ; $13d6 : $e4, $d9, $6a
	or h                                                  ; $13d9 : $b4
	ret po                                                  ; $13da : $e0

	or c                                                  ; $13db : $b1
	sbc a, d                                                  ; $13dc : $9a
	sbc a, h                                                  ; $13dd : $9c
	sub c                                                  ; $13de : $91
	ld l, (hl)                                                  ; $13df : $6e
	or h                                                  ; $13e0 : $b4
	ld a, (bc)                                                  ; $13e1 : $0a
	jp (hl)                                                  ; $13e2 : $e9


	ld h, d                                                  ; $13e3 : $62

Jump_04_13e4:
	pop hl                                                  ; $13e4 : $e1
	adc a, e                                                  ; $13e5 : $8b
	ex (sp), hl                                                  ; $13e6 : $e3
	rla                                                  ; $13e7 : $17
	inc d                                                  ; $13e8 : $14
	rst $20                                                  ; $13e9 : $e7

Call_04_13ea:
	add hl, sp                                                  ; $13ea : $39
	sub a                                                  ; $13eb : $97
	rst $20                                                  ; $13ec : $e7
	adc a, h                                                  ; $13ed : $8c
	ex de, hl                                                  ; $13ee : $eb
	ld e, e                                                  ; $13ef : $5b
	ex (sp), hl                                                  ; $13f0 : $e3
	cp (hl)                                                  ; $13f1 : $be
	adc a, (hl)                                                  ; $13f2 : $8e

Call_04_13f3:
	sbc a, d                                                  ; $13f3 : $9a
	xor c                                                  ; $13f4 : $a9
	ld d, a                                                  ; $13f5 : $57
	call po, Call_04_1a4a                                                  ; $13f6 : $e4, $4a, $1a
	rst $20                                                  ; $13f9 : $e7
	add hl, sp                                                  ; $13fa : $39
	sub d                                                  ; $13fb : $92
	ld a, (bc)                                                  ; $13fc : $0a
	rst $20                                                  ; $13fd : $e7
	rst $00                                                  ; $13fe : $c7
	rst $20                                                  ; $13ff : $e7
	ld d, c                                                  ; $1400 : $51
	and $f7                                                  ; $1401 : $e6, $f7
	ld c, $d4                                                  ; $1403 : $0e, $d4
	add hl, sp                                                  ; $1405 : $39
	pop hl                                                  ; $1406 : $e1
	adc a, l                                                  ; $1407 : $8d
	xor e                                                  ; $1408 : $ab
	rst $20                                                  ; $1409 : $e7
	ld a, h                                                  ; $140a : $7c
	ret nz                                                  ; $140b : $c0

	or h                                                  ; $140c : $b4
	and $27                                                  ; $140d : $e6, $27
	jp (hl)                                                  ; $140f : $e9


	jr nc, $0b                                                  ; $1410 : $30, $0b

	ld d, h                                                  ; $1412 : $54
	ld (hl), e                                                  ; $1413 : $73
	jp (hl)                                                  ; $1414 : $e9


	xor c                                                  ; $1415 : $a9
	dec bc                                                  ; $1416 : $0b
	call nc, $e484                                                  ; $1417 : $d4, $84, $e4
	inc b                                                  ; $141a : $04
	add hl, sp                                                  ; $141b : $39
	call pe, $4b0f                                                  ; $141c : $ec, $0f, $4b
	ld d, $20                                                  ; $141f : $16, $20
	dec bc                                                  ; $1421 : $0b
	and $6d                                                  ; $1422 : $e6, $6d
	rst $20                                                  ; $1424 : $e7
	inc c                                                  ; $1425 : $0c
	.db $ed                                                  ; $1426 : $ed
	rlca                                                  ; $1427 : $07
	add hl, bc                                                  ; $1428 : $09
	adc a, d                                                  ; $1429 : $8a
	add a, c                                                  ; $142a : $81
	adc a, b                                                  ; $142b : $88
	and e                                                  ; $142c : $a3
	ld h, e                                                  ; $142d : $63
	ret pe                                                  ; $142e : $e8

	sub h                                                  ; $142f : $94
	dec c                                                  ; $1430 : $0d
	ld bc, $c9e0                                                  ; $1431 : $01, $e0, $c9
	ret po                                                  ; $1434 : $e0

	xor a                                                  ; $1435 : $af
	pop hl                                                  ; $1436 : $e1
	rra                                                  ; $1437 : $1f
	pop hl                                                  ; $1438 : $e1
	ld e, $09                                                  ; $1439 : $1e, $09
	ld h, a                                                  ; $143b : $67
	jp po, $e926                                                  ; $143c : $e2, $26, $e9
	push af                                                  ; $143f : $f5
	ld l, h                                                  ; $1440 : $6c
	.db $ed                                                  ; $1441 : $ed
	ld a, $0b                                                  ; $1442 : $3e, $0b
	jp pe, $e7f0                                                  ; $1444 : $ea, $f0, $e7
	add a, (hl)                                                  ; $1447 : $86
	pop hl                                                  ; $1448 : $e1
	push hl                                                  ; $1449 : $e5
	ld a, (bc)                                                  ; $144a : $0a
	pop hl                                                  ; $144b : $e1
	ld b, h                                                  ; $144c : $44
	ld (hl), b                                                  ; $144d : $70
	ld sp, $8494                                                  ; $144e : $31, $94, $84
	call po, Call_04_3904                                                  ; $1451 : $e4, $04, $39
	dec bc                                                  ; $1454 : $0b
	and $6c                                                  ; $1455 : $e6, $6c
	call pe, $e653                                                  ; $1457 : $ec, $53, $e6
	ld l, l                                                  ; $145a : $6d
	ex af, af'                                                  ; $145b : $08
	ret                                                  ; $145c : $c9


	add hl, sp                                                  ; $145d : $39
	ld l, h                                                  ; $145e : $6c
	pop hl                                                  ; $145f : $e1
	jp p, $637f                                                  ; $1460 : $f2, $7f, $63
	dec bc                                                  ; $1463 : $0b
	.db $ed                                                  ; $1464 : $ed
	rlca                                                  ; $1465 : $07
	ld (hl), e                                                  ; $1466 : $73
	and $1d                                                  ; $1467 : $e6, $1d
	ld a, (bc)                                                  ; $1469 : $0a
	ret                                                  ; $146a : $c9


	add hl, sp                                                  ; $146b : $39
	ld l, h                                                  ; $146c : $6c
	dec h                                                  ; $146d : $25
	jp (hl)                                                  ; $146e : $e9


	ld bc, $e816                                                  ; $146f : $01, $16, $e8
	ld a, b                                                  ; $1472 : $78
	dec bc                                                  ; $1473 : $0b
	push hl                                                  ; $1474 : $e5
	sub a                                                  ; $1475 : $97
	and $06                                                  ; $1476 : $e6, $06
	ex (sp), hl                                                  ; $1478 : $e3
	add hl, hl                                                  ; $1479 : $29
	ex af, af'                                                  ; $147a : $08
	adc a, $87                                                  ; $147b : $ce, $87
	ret pe                                                  ; $147d : $e8

	sub d                                                  ; $147e : $92
	ld (hl), c                                                  ; $147f : $71
	sub d                                                  ; $1480 : $92
	ld e, l                                                  ; $1481 : $5d
	dec bc                                                  ; $1482 : $0b
	ret pe                                                  ; $1483 : $e8

	and l                                                  ; $1484 : $a5
	ld e, l                                                  ; $1485 : $5d
	and $c1                                                  ; $1486 : $e6, $c1
	rlca                                                  ; $1488 : $07
	adc a, $79                                                  ; $1489 : $ce, $79
	ld (hl), c                                                  ; $148b : $71
	ld h, e                                                  ; $148c : $63

br_04_148d:
	jp pe, Jump_04_0be5                                                  ; $148d : $ea, $e5, $0b
	ret po                                                  ; $1490 : $e0

	sbc a, h                                                  ; $1491 : $9c
	call pe, $e0e9                                                  ; $1492 : $ec, $e9, $e0
	adc a, $e0                                                  ; $1495 : $ce, $e0
	rst $08                                                  ; $1497 : $cf
	add hl, bc                                                  ; $1498 : $09
	ret                                                  ; $1499 : $c9


	add hl, sp                                                  ; $149a : $39
	ld l, h                                                  ; $149b : $6c
	ex de, hl                                                  ; $149c : $eb
	sub (hl)                                                  ; $149d : $96
	or h                                                  ; $149e : $b4
	ld sp, $0b92                                                  ; $149f : $31, $92, $0b
	jp pe, $edc8                                                  ; $14a2 : $ea, $c8, $ed
	rlca                                                  ; $14a5 : $07
	jp po, $0d00                                                  ; $14a6 : $e2, $00, $0d
	otir                                                  ; $14a9 : $ed, $b3
	or h                                                  ; $14ab : $b4
	ret po                                                  ; $14ac : $e0

	ld c, a                                                  ; $14ad : $4f
	add a, a                                                  ; $14ae : $87
	jp (hl)                                                  ; $14af : $e9


	and h                                                  ; $14b0 : $a4
	add hl, sp                                                  ; $14b1 : $39
	ld h, e                                                  ; $14b2 : $63
	xor c                                                  ; $14b3 : $a9
	ld (de), a                                                  ; $14b4 : $12
	dec bc                                                  ; $14b5 : $0b
	call po, $ed0d                                                  ; $14b6 : $e4, $0d, $ed
	ld b, (hl)                                                  ; $14b9 : $46
	ret po                                                  ; $14ba : $e0

	rst $38                                                  ; $14bb : $ff
	ld a, (bc)                                                  ; $14bc : $0a
	ret                                                  ; $14bd : $c9


	pop hl                                                  ; $14be : $e1
	ld h, e                                                  ; $14bf : $63
	ld l, h                                                  ; $14c0 : $6c
	ret pe                                                  ; $14c1 : $e8

	ld (hl), l                                                  ; $14c2 : $75
	cp d                                                  ; $14c3 : $ba
	rst $20                                                  ; $14c4 : $e7
	jp nc, $e80b                                                  ; $14c5 : $d2, $0b, $e8
	inc de                                                  ; $14c8 : $13
	ld d, b                                                  ; $14c9 : $50
	pop hl                                                  ; $14ca : $e1
	and e                                                  ; $14cb : $a3
	inc c                                                  ; $14cc : $0c
	adc a, $e8                                                  ; $14cd : $ce, $e8
	ld d, d                                                  ; $14cf : $52
	jr c, br_04_148d                                                  ; $14d0 : $38, $bb

	jp pe, $e413                                                  ; $14d2 : $ea, $13, $e4
	add hl, hl                                                  ; $14d5 : $29
	and $78                                                  ; $14d6 : $e6, $78
	dec bc                                                  ; $14d8 : $0b
	ld c, e                                                  ; $14d9 : $4b
	dec c                                                  ; $14da : $0d
	ret pe                                                  ; $14db : $e8

	adc a, h                                                  ; $14dc : $8c
	add hl, bc                                                  ; $14dd : $09
	ret                                                  ; $14de : $c9


	ret po                                                  ; $14df : $e0

	sub (hl)                                                  ; $14e0 : $96

Call_04_14e1:
	inc (hl)                                                  ; $14e1 : $34
	ld l, h                                                  ; $14e2 : $6c
	push hl                                                  ; $14e3 : $e5
	inc e                                                  ; $14e4 : $1c
	adc a, (hl)                                                  ; $14e5 : $8e
	dec bc                                                  ; $14e6 : $0b

Call_04_14e7:
	ret pe                                                  ; $14e7 : $e8

	add a, l                                                  ; $14e8 : $85
	call po, $e98e                                                  ; $14e9 : $e4, $8e, $e9
	jp m, $55e1                                                  ; $14ec : $fa, $e1, $55
	ld (de), a                                                  ; $14ef : $12
	ret po                                                  ; $14f0 : $e0

	ld (hl), l                                                  ; $14f1 : $75
	cp e                                                  ; $14f2 : $bb
	ret po                                                  ; $14f3 : $e0

	dec a                                                  ; $14f4 : $3d
	jp po, $0068                                                  ; $14f5 : $e2, $68, $00
	ret                                                  ; $14f8 : $c9


	cp l                                                  ; $14f9 : $bd
	xor (hl)                                                  ; $14fa : $ae
	jp $e387                                                  ; $14fb : $c3, $87, $e3


	adc a, c                                                  ; $14fe : $89
	jp (hl)                                                  ; $14ff : $e9


	and d                                                  ; $1500 : $a2
	dec bc                                                  ; $1501 : $0b
	ld l, $8d                                                  ; $1502 : $2e, $8d
	ret pe                                                  ; $1504 : $e8

	ld l, l                                                  ; $1505 : $6d
	ld c, $c9                                                  ; $1506 : $0e, $c9
	add hl, sp                                                  ; $1508 : $39
	ld l, h                                                  ; $1509 : $6c
	pop hl                                                  ; $150a : $e1
	push bc                                                  ; $150b : $c5
	inc l                                                  ; $150c : $2c
	xor c                                                  ; $150d : $a9
	and $df                                                  ; $150e : $e6, $df
	nop                                                  ; $1510 : $00
	inc sp                                                  ; $1511 : $33
	ld d, $a7                                                  ; $1512 : $16, $a7
	dec bc                                                  ; $1514 : $0b
	ld (hl), l                                                  ; $1515 : $75
	ret pe                                                  ; $1516 : $e8

	inc bc                                                  ; $1517 : $03
	ret pe                                                  ; $1518 : $e8

	adc a, (hl)                                                  ; $1519 : $8e
	ld a, (bc)                                                  ; $151a : $0a
	ret                                                  ; $151b : $c9


	ld (hl), c                                                  ; $151c : $71
	add hl, sp                                                  ; $151d : $39
	ld l, h                                                  ; $151e : $6c
	ex de, hl                                                  ; $151f : $eb
	and (hl)                                                  ; $1520 : $a6
	cpl                                                  ; $1521 : $2f
	ret po                                                  ; $1522 : $e0

	inc d                                                  ; $1523 : $14
	dec bc                                                  ; $1524 : $0b
	ex de, hl                                                  ; $1525 : $eb
	ld l, (hl)                                                  ; $1526 : $6e
	rst $20                                                  ; $1527 : $e7
	ld l, l                                                  ; $1528 : $6d
	ex de, hl                                                  ; $1529 : $eb
	ret c                                                  ; $152a : $d8

	ld (de), a                                                  ; $152b : $12
	and $30                                                  ; $152c : $e6, $30
	call pe, $6c8d                                                  ; $152e : $ec, $8d, $6c
	ex (sp), hl                                                  ; $1531 : $e3
	push bc                                                  ; $1532 : $c5
	ld l, d                                                  ; $1533 : $6a
	push hl                                                  ; $1534 : $e5
	and e                                                  ; $1535 : $a3
	nop                                                  ; $1536 : $00
	call z, $f7e3                                                  ; $1537 : $cc, $e3, $f7
	push hl                                                  ; $153a : $e5
	and c                                                  ; $153b : $a1
	cpl                                                  ; $153c : $2f
	dec bc                                                  ; $153d : $0b
	push hl                                                  ; $153e : $e5
	ld h, b                                                  ; $153f : $60
	call po, $e54a                                                  ; $1540 : $e4, $4a, $e5
	out ($0e), a                                                  ; $1543 : $d3, $0e
	adc a, $e9                                                  ; $1545 : $ce, $e9
	push bc                                                  ; $1547 : $c5
	inc (hl)                                                  ; $1548 : $34
	or e                                                  ; $1549 : $b3
	or h                                                  ; $154a : $b4
	jp (hl)                                                  ; $154b : $e9


	add a, $e7                                                  ; $154c : $c6, $e7
	rst $00                                                  ; $154e : $c7
	jp pe, $b9cc                                                  ; $154f : $ea, $cc, $b9
	dec bc                                                  ; $1552 : $0b
	rst $20                                                  ; $1553 : $e7
	ld c, e                                                  ; $1554 : $4b
	.db $ed                                                  ; $1555 : $ed
	pop af                                                  ; $1556 : $f1
	push hl                                                  ; $1557 : $e5

Jump_04_1558:
	adc a, c                                                  ; $1558 : $89
	dec c                                                  ; $1559 : $0d
	ret                                                  ; $155a : $c9


	or d                                                  ; $155b : $b2
	and l                                                  ; $155c : $a5
	or h                                                  ; $155d : $b4
	push hl                                                  ; $155e : $e5
	sub l                                                  ; $155f : $95
	ld d, $e3                                                  ; $1560 : $16, $e3
	sbc a, d                                                  ; $1562 : $9a
	sub d                                                  ; $1563 : $92
	jp po, Jump_04_0bae                                                  ; $1564 : $e2, $ae, $0b
	and $4a                                                  ; $1567 : $e6, $4a
	ex de, hl                                                  ; $1569 : $eb
	sub e                                                  ; $156a : $93
	.db $ed                                                  ; $156b : $ed
	ld l, $15                                                  ; $156c : $2e, $15
	ret                                                  ; $156e : $c9


	dec e                                                  ; $156f : $1d
	sub e                                                  ; $1570 : $93
	cp l                                                  ; $1571 : $bd
	and $41                                                  ; $1572 : $e6, $41
	add a, a                                                  ; $1574 : $87
	ld h, e                                                  ; $1575 : $63
	and b                                                  ; $1576 : $a0
	dec h                                                  ; $1577 : $25

br_04_1578:
	cp $fe                                                  ; $1578 : $fe, $fe
	ld sp, $3539                                                  ; $157a : $31, $39, $35
	jr nc, -$01                                                  ; $157d : $30, $ff

	ld d, $e0                                                  ; $157f : $16, $e0
	dec a                                                  ; $1581 : $3d
	dec bc                                                  ; $1582 : $0b
	ret pe                                                  ; $1583 : $e8

	ld l, e                                                  ; $1584 : $6b
	rst $20                                                  ; $1585 : $e7
	in a, ($eb)                                                  ; $1586 : $db, $eb
	or d                                                  ; $1588 : $b2
	inc c                                                  ; $1589 : $0c
	or h                                                  ; $158a : $b4
	ret po                                                  ; $158b : $e0

	pop af                                                  ; $158c : $f1
	ret po                                                  ; $158d : $e0

	jr br_04_1600                                                  ; $158e : $18, $70

	call pe, $514e                                                  ; $1590 : $ec, $4e, $51
	ret                                                  ; $1593 : $c9


	add hl, sp                                                  ; $1594 : $39
	dec bc                                                  ; $1595 : $0b
	add a, e                                                  ; $1596 : $83
	ret pe                                                  ; $1597 : $e8

	ld sp, hl                                                  ; $1598 : $f9
	ld d, h                                                  ; $1599 : $54
	inc c                                                  ; $159a : $0c
	ret                                                  ; $159b : $c9


	add hl, sp                                                  ; $159c : $39
	ld h, e                                                  ; $159d : $63
	ex de, hl                                                  ; $159e : $eb
	or b                                                  ; $159f : $b0
	jr nz, br_04_15fd                                                  ; $15a0 : $20, $5b

	ret pe                                                  ; $15a2 : $e8

	add a, b                                                  ; $15a3 : $80
	ex de, hl                                                  ; $15a4 : $eb
	dec c                                                  ; $15a5 : $0d
	dec bc                                                  ; $15a6 : $0b
	call pe, $ed84                                                  ; $15a7 : $ec, $84, $ed
	ld e, l                                                  ; $15aa : $5d
	and $f0                                                  ; $15ab : $e6, $f0
	ld a, (bc)                                                  ; $15ad : $0a
	cpdr                                                  ; $15ae : $ed, $b9
	in a, ($e0)                                                  ; $15b0 : $db, $e0
	ld d, l                                                  ; $15b2 : $55
	ld a, c                                                  ; $15b3 : $79
	add hl, sp                                                  ; $15b4 : $39
	ld h, e                                                  ; $15b5 : $63
	dec e                                                  ; $15b6 : $1d
	dec bc                                                  ; $15b7 : $0b
	jr nc, br_04_1578                                                  ; $15b8 : $30, $be

	inc sp                                                  ; $15ba : $33
	rlca                                                  ; $15bb : $07
	adc a, $e7                                                  ; $15bc : $ce, $e7
	ld d, b                                                  ; $15be : $50
	and (hl)                                                  ; $15bf : $a6
	ld h, e                                                  ; $15c0 : $63
	inc sp                                                  ; $15c1 : $33
	dec bc                                                  ; $15c2 : $0b
	jp (hl)                                                  ; $15c3 : $e9


	inc l                                                  ; $15c4 : $2c
	jp (hl)                                                  ; $15c5 : $e9


	adc a, h                                                  ; $15c6 : $8c
	xor $0f                                                  ; $15c7 : $ee, $0f
	inc c                                                  ; $15c9 : $0c
	rst $08                                                  ; $15ca : $cf
	or h                                                  ; $15cb : $b4
	jp (hl)                                                  ; $15cc : $e9


	ld a, (hl)                                                  ; $15cd : $7e
	or e                                                  ; $15ce : $b3
	ex (sp), hl                                                  ; $15cf : $e3
	inc (hl)                                                  ; $15d0 : $34
	add a, a                                                  ; $15d1 : $87
	sub d                                                  ; $15d2 : $92
	ret z                                                  ; $15d3 : $c8

	inc sp                                                  ; $15d4 : $33
	dec bc                                                  ; $15d5 : $0b
	ret pe                                                  ; $15d6 : $e8

	inc b                                                  ; $15d7 : $04
	push hl                                                  ; $15d8 : $e5
	ex de, hl                                                  ; $15d9 : $eb
	call pe, $0aad                                                  ; $15da : $ec, $ad, $0a
	ret                                                  ; $15dd : $c9


	and (hl)                                                  ; $15de : $a6
	ex de, hl                                                  ; $15df : $eb
	ld l, $e6                                                  ; $15e0 : $2e, $e6
	rlca                                                  ; $15e2 : $07
	ld d, $e7                                                  ; $15e3 : $16, $e7
	ld l, e                                                  ; $15e5 : $6b
	dec bc                                                  ; $15e6 : $0b
	xor $0f                                                  ; $15e7 : $ee, $0f
	rst $20                                                  ; $15e9 : $e7
	cp (hl)                                                  ; $15ea : $be

Jump_04_15eb:
	jp (hl)                                                  ; $15eb : $e9


	inc l                                                  ; $15ec : $2c
	add hl, bc                                                  ; $15ed : $09
	adc a, $e0                                                  ; $15ee : $ce, $e0
	ld c, a                                                  ; $15f0 : $4f
	ld a, c                                                  ; $15f1 : $79
	add hl, sp                                                  ; $15f2 : $39
	ld h, e                                                  ; $15f3 : $63
	xor c                                                  ; $15f4 : $a9
	ld (de), a                                                  ; $15f5 : $12
	dec bc                                                  ; $15f6 : $0b
	pop hl                                                  ; $15f7 : $e1
	jp (ix)                                                  ; $15f8 : $dd, $e9


	dec b                                                  ; $15fa : $05
	ret po                                                  ; $15fb : $e0

	rst $38                                                  ; $15fc : $ff

br_04_15fd:
	add hl, bc                                                  ; $15fd : $09
	rst $08                                                  ; $15fe : $cf
	or h                                                  ; $15ff : $b4

Jump_04_1600:
br_04_1600:
	add a, c                                                  ; $1600 : $81
	adc a, b                                                  ; $1601 : $88
	and e                                                  ; $1602 : $a3
	ld h, e                                                  ; $1603 : $63
	xor c                                                  ; $1604 : $a9
	ld (de), a                                                  ; $1605 : $12
	dec bc                                                  ; $1606 : $0b
	ex de, hl                                                  ; $1607 : $eb
	ld h, l                                                  ; $1608 : $65
	.db $ed                                                  ; $1609 : $ed
	dec hl                                                  ; $160a : $2b
	ret po                                                  ; $160b : $e0

	ret                                                  ; $160c : $c9


	dec c                                                  ; $160d : $0d
	ret                                                  ; $160e : $c9


	jr c, br_04_167d                                                  ; $160f : $38, $6c

	and $3e                                                  ; $1611 : $e6, $3e
	ld h, l                                                  ; $1613 : $65
	jp pe, Jump_04_2f59                                                  ; $1614 : $ea, $59, $2f
	and $f6                                                  ; $1617 : $e6, $f6
	ld (de), a                                                  ; $1619 : $12
	dec bc                                                  ; $161a : $0b
	ret pe                                                  ; $161b : $e8

	adc a, h                                                  ; $161c : $8c
	ld c, e                                                  ; $161d : $4b
	ex de, hl                                                  ; $161e : $eb
	xor l                                                  ; $161f : $ad
	dec bc                                                  ; $1620 : $0b
	cp c                                                  ; $1621 : $b9
	ret                                                  ; $1622 : $c9


	add hl, sp                                                  ; $1623 : $39
	ld b, d                                                  ; $1624 : $42
	in a, ($e7)                                                  ; $1625 : $db, $e7
	ld d, b                                                  ; $1627 : $50
	and (hl)                                                  ; $1628 : $a6
	call po, $0bd9                                                  ; $1629 : $e4, $d9, $0b
	cp (hl)                                                  ; $162c : $be
	inc sp                                                  ; $162d : $33
	pop hl                                                  ; $162e : $e1
	.db $dd                                                  ; $162f : $dd
	rrca                                                  ; $1630 : $0f
	call $85eb                                                  ; $1631 : $cd, $eb, $85
	and (hl)                                                  ; $1634 : $a6
	cpl                                                  ; $1635 : $2f
	jp nc, $e472                                                  ; $1636 : $d2, $72, $e4
	call c, $5fe6                                                  ; $1639 : $dc, $e6, $5f
	and $f1                                                  ; $163c : $e6, $f1
	and (hl)                                                  ; $163e : $a6
	dec bc                                                  ; $163f : $0b
	ex (sp), hl                                                  ; $1640 : $e3
	jp nc, Jump_04_15eb                                                  ; $1641 : $d2, $eb, $15
	call pe, Call_04_13f3                                                  ; $1644 : $ec, $f3, $13
	ret                                                  ; $1647 : $c9


	or d                                                  ; $1648 : $b2
	and l                                                  ; $1649 : $a5
	inc c                                                  ; $164a : $0c
	ex de, hl                                                  ; $164b : $eb
	ret m                                                  ; $164c : $f8

Jump_04_164d:
	jp po, Jump_04_25b9                                                  ; $164d : $e2, $b9, $25
	inc c                                                  ; $1650 : $0c
	push hl                                                  ; $1651 : $e5
	rst $20                                                  ; $1652 : $e7
	ld d, $0c                                                  ; $1653 : $16, $0c
	rst $20                                                  ; $1655 : $e7
	ld h, c                                                  ; $1656 : $61
	ld (hl), a                                                  ; $1657 : $77
	dec e                                                  ; $1658 : $1d
	dec bc                                                  ; $1659 : $0b

br_04_165a:
	ret po                                                  ; $165a : $e0

	ld (hl), b                                                  ; $165b : $70
	ex (sp), hl                                                  ; $165c : $e3
	ld b, b                                                  ; $165d : $40
	call po, Call_04_0f55                                                  ; $165e : $e4, $55, $0f
	ret                                                  ; $1661 : $c9


	or d                                                  ; $1662 : $b2
	and l                                                  ; $1663 : $a5
	or h                                                  ; $1664 : $b4
	.db $ed                                                  ; $1665 : $ed
	add a, $e6                                                  ; $1666 : $c6, $e6
	cp e                                                  ; $1668 : $bb
	pop hl                                                  ; $1669 : $e1
	sub b                                                  ; $166a : $90
	inc c                                                  ; $166b : $0c
	jp (hl)                                                  ; $166c : $e9


	and d                                                  ; $166d : $a2
	dec e                                                  ; $166e : $1d
	dec bc                                                  ; $166f : $0b
	ex (sp), hl                                                  ; $1670 : $e3
	sub c                                                  ; $1671 : $91
	ret pe                                                  ; $1672 : $e8

	jr nz, br_04_165a                                                  ; $1673 : $20, $e5

	djnz br_04_1681                                                  ; $1675 : $10, $0a
	ret                                                  ; $1677 : $c9


	ex de, hl                                                  ; $1678 : $eb
	dec bc                                                  ; $1679 : $0b

Call_04_167a:
	rst $20                                                  ; $167a : $e7
	jr z, -$45                                                  ; $167b : $28, $bb

br_04_167d:
	rst $00                                                  ; $167d : $c7
	sub d                                                  ; $167e : $92
	ld l, b                                                  ; $167f : $68
	dec bc                                                  ; $1680 : $0b

br_04_1681:
	and h                                                  ; $1681 : $a4

Jump_04_1682:
	ld l, c                                                  ; $1682 : $69
	ret po                                                  ; $1683 : $e0

	rst $28                                                  ; $1684 : $ef
	add hl, bc                                                  ; $1685 : $09
	ret                                                  ; $1686 : $c9


	add a, c                                                  ; $1687 : $81
	and (hl)                                                  ; $1688 : $a6
	call po, $b9dc                                                  ; $1689 : $e4, $dc, $b9
	ret pe                                                  ; $168c : $e8

Call_04_168d:
	ld sp, hl                                                  ; $168d : $f9
	dec bc                                                  ; $168e : $0b
	and $73                                                  ; $168f : $e6, $73
	push hl                                                  ; $1691 : $e5
	add hl, hl                                                  ; $1692 : $29
	and $49                                                  ; $1693 : $e6, $49
	add hl, bc                                                  ; $1695 : $09
	ld h, (hl)                                                  ; $1696 : $66
	add hl, sp                                                  ; $1697 : $39
	ld (hl), b                                                  ; $1698 : $70
	call pe, $e388                                                  ; $1699 : $ec, $88, $e3
	sub c                                                  ; $169c : $91
	ld a, a                                                  ; $169d : $7f
	dec bc                                                  ; $169e : $0b
	ret pe                                                  ; $169f : $e8

	ld sp, hl                                                  ; $16a0 : $f9
	ret po                                                  ; $16a1 : $e0

	adc a, e                                                  ; $16a2 : $8b

Jump_04_16a3:
	ld l, b                                                  ; $16a3 : $68
	inc c                                                  ; $16a4 : $0c
	ret                                                  ; $16a5 : $c9


	ld a, b                                                  ; $16a6 : $78
	inc (hl)                                                  ; $16a7 : $34
	ld l, h                                                  ; $16a8 : $6c
	dec hl                                                  ; $16a9 : $2b
	sbc a, b                                                  ; $16aa : $98
	push hl                                                  ; $16ab : $e5
	add hl, hl                                                  ; $16ac : $29
	and (hl)                                                  ; $16ad : $a6
	ex (sp), hl                                                  ; $16ae : $e3
	add a, l                                                  ; $16af : $85
	dec bc                                                  ; $16b0 : $0b

Jump_04_16b1:
	pop hl                                                  ; $16b1 : $e1
	cp h                                                  ; $16b2 : $bc
	ex (sp), hl                                                  ; $16b3 : $e3
	add a, h                                                  ; $16b4 : $84
	jp po, $0c19                                                  ; $16b5 : $e2, $19, $0c
	or h                                                  ; $16b8 : $b4
	jp pe, $6cd6                                                  ; $16b9 : $ea, $d6, $6c

Jump_04_16bc:
	and $bb                                                  ; $16bc : $e6, $bb
	xor c                                                  ; $16be : $a9
	sub h                                                  ; $16bf : $94
	ld a, b                                                  ; $16c0 : $78
	ex (sp), hl                                                  ; $16c1 : $e3
	sub c                                                  ; $16c2 : $91
	dec bc                                                  ; $16c3 : $0b
	push hl                                                  ; $16c4 : $e5
	ld h, h                                                  ; $16c5 : $64
	rst $20                                                  ; $16c6 : $e7
	rst $30                                                  ; $16c7 : $f7
	jp pe, $12d5                                                  ; $16c8 : $ea, $d5, $12
	call $82e7                                                  ; $16cb : $cd, $e7, $82
	add a, b                                                  ; $16ce : $80
	push bc                                                  ; $16cf : $c5
	.db $ed                                                  ; $16d0 : $ed
	sbc a, l                                                  ; $16d1 : $9d
	ex (sp), hl                                                  ; $16d2 : $e3
	call pe, $bc25                                                  ; $16d3 : $ec, $25, $bc
	and $f1                                                  ; $16d6 : $e6, $f1
	pop hl                                                  ; $16d8 : $e1
	or e                                                  ; $16d9 : $b3
	sub d                                                  ; $16da : $92
	push bc                                                  ; $16db : $c5
	dec bc                                                  ; $16dc : $0b
	and (hl)                                                  ; $16dd : $a6
	and $74                                                  ; $16de : $e6, $74
	jp po, Jump_04_0b27                                                  ; $16e0 : $e2, $27, $0b
	ret                                                  ; $16e3 : $c9


	jp pe, $9359                                                  ; $16e4 : $ea, $59, $93
	ex de, hl                                                  ; $16e7 : $eb
	or h                                                  ; $16e8 : $b4
	ld l, h                                                  ; $16e9 : $6c
	xor $0d                                                  ; $16ea : $ee, $0d
	ld h, e                                                  ; $16ec : $63
	dec bc                                                  ; $16ed : $0b
	push hl                                                  ; $16ee : $e5
	ld b, (hl)                                                  ; $16ef : $46
	and $f8                                                  ; $16f0 : $e6, $f8
	ex de, hl                                                  ; $16f2 : $eb
	ld h, c                                                  ; $16f3 : $61
	ld a, (bc)                                                  ; $16f4 : $0a
	ret                                                  ; $16f5 : $c9


	and (hl)                                                  ; $16f6 : $a6
	ex (sp), hl                                                  ; $16f7 : $e3
	add a, $b4                                                  ; $16f8 : $c6, $b4
	ex de, hl                                                  ; $16fa : $eb
	or h                                                  ; $16fb : $b4
	ld d, (hl)                                                  ; $16fc : $56
	inc sp                                                  ; $16fd : $33
	dec bc                                                  ; $16fe : $0b
	.db $ed                                                  ; $16ff : $ed
	ld (hl), c                                                  ; $1700 : $71
	ex (sp), hl                                                  ; $1701 : $e3
	ret z                                                  ; $1702 : $c8

	ret po                                                  ; $1703 : $e0

	jp nz, $ce06                                                  ; $1704 : $c2, $06, $ce
	ld e, (hl)                                                  ; $1707 : $5e
	adc a, b                                                  ; $1708 : $88
	ld h, e                                                  ; $1709 : $63
	dec c                                                  ; $170a : $0d
	dec bc                                                  ; $170b : $0b
	ex (sp), hl                                                  ; $170c : $e3
	ld h, e                                                  ; $170d : $63
	call po, $e667                                                  ; $170e : $e4, $67, $e6
	call z, $c90d                                                  ; $1711 : $cc, $0d, $c9
	ex de, hl                                                  ; $1714 : $eb
	dec bc                                                  ; $1715 : $0b
	ex de, hl                                                  ; $1716 : $eb
	ld l, $b4                                                  ; $1717 : $2e, $b4
	and $e0                                                  ; $1719 : $e6, $e0
	jp (hl)                                                  ; $171b : $e9


	jr nc, br_04_1774                                                  ; $171c : $30, $56

	inc sp                                                  ; $171e : $33
	dec bc                                                  ; $171f : $0b
	inc sp                                                  ; $1720 : $33
	and $e0                                                  ; $1721 : $e6, $e0
	xor $14                                                  ; $1723 : $ee, $14
	ld a, (bc)                                                  ; $1725 : $0a
	cp d                                                  ; $1726 : $ba
	ret                                                  ; $1727 : $c9


	add hl, sp                                                  ; $1728 : $39
	ld l, h                                                  ; $1729 : $6c
	ret pe                                                  ; $172a : $e8

	sub d                                                  ; $172b : $92
	ld (hl), l                                                  ; $172c : $75
	jp po, $0bc0                                                  ; $172d : $e2, $c0, $0b
	and $df                                                  ; $1730 : $e6, $df
	inc sp                                                  ; $1732 : $33
	ex de, hl                                                  ; $1733 : $eb
	or h                                                  ; $1734 : $b4
	.db $ed                                                  ; $1735 : $ed
	dec (hl)                                                  ; $1736 : $35
	.db $ed                                                  ; $1737 : $ed
	inc de                                                  ; $1738 : $13
	dec bc                                                  ; $1739 : $0b
	ret                                                  ; $173a : $c9


	add hl, sp                                                  ; $173b : $39
	ex de, hl                                                  ; $173c : $eb
	dec l                                                  ; $173d : $2d
	ld d, (hl)                                                  ; $173e : $56
	ret pe                                                  ; $173f : $e8

	ld sp, hl                                                  ; $1740 : $f9
	ld h, e                                                  ; $1741 : $63
	ret po                                                  ; $1742 : $e0

	jr c, br_04_1750                                                  ; $1743 : $38, $0b

	ret po                                                  ; $1745 : $e0

	adc a, e                                                  ; $1746 : $8b
	push hl                                                  ; $1747 : $e5
	rst $28                                                  ; $1748 : $ef
	pop hl                                                  ; $1749 : $e1
	ld c, (hl)                                                  ; $174a : $4e
	ld c, $c9                                                  ; $174b : $0e, $c9
	daa                                                  ; $174d : $27
	sub d                                                  ; $174e : $92
	push bc                                                  ; $174f : $c5

br_04_1750:
	ex (sp), hl                                                  ; $1750 : $e3
	add hl, bc                                                  ; $1751 : $09
	or h                                                  ; $1752 : $b4
	rst $20                                                  ; $1753 : $e7
	cp c                                                  ; $1754 : $b9
	ld d, $a4                                                  ; $1755 : $16, $a4
	ex de, hl                                                  ; $1757 : $eb
	djnz br_04_1765                                                  ; $1758 : $10, $0b
	jp (hl)                                                  ; $175a : $e9


	ld b, l                                                  ; $175b : $45
	ret pe                                                  ; $175c : $e8

	ld a, h                                                  ; $175d : $7c
	call pe, Call_04_0b2b                                                  ; $175e : $ec, $2b, $0b
	call nc, $e484                                                  ; $1761 : $d4, $84, $e4
	inc b                                                  ; $1764 : $04

br_04_1765:
	add hl, sp                                                  ; $1765 : $39
	ld l, h                                                  ; $1766 : $6c
	ret po                                                  ; $1767 : $e0

Jump_04_1768:
	or b                                                  ; $1768 : $b0
	sbc a, l                                                  ; $1769 : $9d
	ld c, e                                                  ; $176a : $4b
	dec bc                                                  ; $176b : $0b
	jp pe, $e6f5                                                  ; $176c : $ea, $f5, $e6
	ld l, h                                                  ; $176f : $6c
	.db $ed                                                  ; $1770 : $ed
	rlca                                                  ; $1771 : $07
	add hl, bc                                                  ; $1772 : $09
	ld h, c                                                  ; $1773 : $61

br_04_1774:
	call pe, $eeb5                                                  ; $1774 : $ec, $b5, $ee
	dec h                                                  ; $1777 : $25
	inc e                                                  ; $1778 : $1c
	ld h, l                                                  ; $1779 : $65
	exx                                                  ; $177a : $d9
	dec bc                                                  ; $177b : $0b
	inc b                                                  ; $177c : $04
	ret po                                                  ; $177d : $e0

	ld d, (hl)                                                  ; $177e : $56
	ret po                                                  ; $177f : $e0

	ld c, d                                                  ; $1780 : $4a
	ex af, af'                                                  ; $1781 : $08
	cpdr                                                  ; $1782 : $ed, $b9
	ex de, hl                                                  ; $1784 : $eb
	add a, a                                                  ; $1785 : $87
	ret z                                                  ; $1786 : $c8

	ld c, h                                                  ; $1787 : $4c
	add hl, sp                                                  ; $1788 : $39
	dec bc                                                  ; $1789 : $0b
	rst $20                                                  ; $178a : $e7
	daa                                                  ; $178b : $27
	rst $20                                                  ; $178c : $e7
	ld l, b                                                  ; $178d : $68
	ret pe                                                  ; $178e : $e8

	nop                                                  ; $178f : $00
	ld c, $c9                                                  ; $1790 : $0e, $c9
	ld a, (de)                                                  ; $1792 : $1a
	ret pe                                                  ; $1793 : $e8

	sub (hl)                                                  ; $1794 : $96
	ex de, hl                                                  ; $1795 : $eb
	ld sp, hl                                                  ; $1796 : $f9
	and $4f                                                  ; $1797 : $e6, $4f
	ret po                                                  ; $1799 : $e0

	xor e                                                  ; $179a : $ab
	or h                                                  ; $179b : $b4
	sub c                                                  ; $179c : $91
	cpl                                                  ; $179d : $2f
	dec bc                                                  ; $179e : $0b
	pop hl                                                  ; $179f : $e1
	ld h, h                                                  ; $17a0 : $64
	push hl                                                  ; $17a1 : $e5
	ld e, h                                                  ; $17a2 : $5c
	call po, $0acd                                                  ; $17a3 : $e4, $cd, $0a
	ret pe                                                  ; $17a6 : $e8

	sub l                                                  ; $17a7 : $95
	ld d, $b0                                                  ; $17a8 : $16, $b0
	ret pe                                                  ; $17aa : $e8

	xor b                                                  ; $17ab : $a8
	ret                                                  ; $17ac : $c9


	jp (hl)                                                  ; $17ad : $e9


	jr nc, $0b                                                  ; $17ae : $30, $0b

	pop hl                                                  ; $17b0 : $e1
	ld c, d                                                  ; $17b1 : $4a
	and $27                                                  ; $17b2 : $e6, $27
	jp pe, Jump_04_09fb                                                  ; $17b4 : $ea, $fb, $09
	ret                                                  ; $17b7 : $c9


	add a, c                                                  ; $17b8 : $81
	and (hl)                                                  ; $17b9 : $a6
	call po, $b9dc                                                  ; $17ba : $e4, $dc, $b9
	jp (hl)                                                  ; $17bd : $e9


	dec bc                                                  ; $17be : $0b
	dec bc                                                  ; $17bf : $0b
	ex (sp), hl                                                  ; $17c0 : $e3
	ld h, a                                                  ; $17c1 : $67
	call po, $eb18                                                  ; $17c2 : $e4, $18, $eb
	ld ($ab0a), hl                                                  ; $17c5 : $22, $0a, $ab
	ld d, $e9                                                  ; $17c8 : $16, $e9
	xor c                                                  ; $17ca : $a9
	ret pe                                                  ; $17cb : $e8

	xor b                                                  ; $17cc : $a8
	ret                                                  ; $17cd : $c9


	jp (hl)                                                  ; $17ce : $e9


	jr nc, br_04_17dc                                                  ; $17cf : $30, $0b

	push hl                                                  ; $17d1 : $e5
	ld d, e                                                  ; $17d2 : $53
	ret pe                                                  ; $17d3 : $e8

	djnz -$1a                                                  ; $17d4 : $10, $e6
	daa                                                  ; $17d6 : $27
	dec d                                                  ; $17d7 : $15
	ret                                                  ; $17d8 : $c9


	or d                                                  ; $17d9 : $b2
	ld l, h                                                  ; $17da : $6c
	pop bc                                                  ; $17db : $c1

br_04_17dc:
	ex (sp), hl                                                  ; $17dc : $e3
	adc a, a                                                  ; $17dd : $8f
	inc c                                                  ; $17de : $0c
	jp pe, $569a                                                  ; $17df : $ea, $9a, $56
	call nc, $e4c5                                                  ; $17e2 : $d4, $c5, $e4
	call c, $bc63                                                  ; $17e5 : $dc, $63, $bc
	ex (sp), hl                                                  ; $17e8 : $e3
	and a                                                  ; $17e9 : $a7
	ex (sp), hl                                                  ; $17ea : $e3
	or c                                                  ; $17eb : $b1
	dec bc                                                  ; $17ec : $0b
	jp (hl)                                                  ; $17ed : $e9


	ld a, (hl)                                                  ; $17ee : $7e
	adc a, b                                                  ; $17ef : $88
	ex (sp), hl                                                  ; $17f0 : $e3
	call nz, $c90d                                                  ; $17f1 : $c4, $0d, $c9
	cp l                                                  ; $17f4 : $bd
	inc (hl)                                                  ; $17f5 : $34
	ld l, h                                                  ; $17f6 : $6c
	ld a, a                                                  ; $17f7 : $7f
	pop hl                                                  ; $17f8 : $e1
	jr -$18                                                  ; $17f9 : $18, $e8

	inc hl                                                  ; $17fb : $23
	sub e                                                  ; $17fc : $93
	rst $20                                                  ; $17fd : $e7
	rst $28                                                  ; $17fe : $ef
	dec bc                                                  ; $17ff : $0b
	ret pe                                                  ; $1800 : $e8

	ld l, a                                                  ; $1801 : $6f
	and $bd                                                  ; $1802 : $e6, $bd
	ex de, hl                                                  ; $1804 : $eb
	jp c, $c911                                                  ; $1805 : $da, $11, $c9
	or d                                                  ; $1808 : $b2
	inc a                                                  ; $1809 : $3c
	inc c                                                  ; $180a : $0c
	ld a, b                                                  ; $180b : $78
	.db $ed                                                  ; $180c : $ed
	dec l                                                  ; $180d : $2d
	dec e                                                  ; $180e : $1d
	add a, b                                                  ; $180f : $80
	ret nz                                                  ; $1810 : $c0

	sub d                                                  ; $1811 : $92
	ex de, hl                                                  ; $1812 : $eb
	inc a                                                  ; $1813 : $3c
	ld a, b                                                  ; $1814 : $78
	jp po, Jump_04_0bae                                                  ; $1815 : $e2, $ae, $0b
	xor (hl)                                                  ; $1818 : $ae
	ex (sp), hl                                                  ; $1819 : $e3
	jr nc, -$19                                                  ; $181a : $30, $e7

	cp h                                                  ; $181c : $bc
	ld de, $8de1                                                  ; $181d : $11, $e1, $8d
	push hl                                                  ; $1820 : $e5
	ld h, (hl)                                                  ; $1821 : $66
	nop                                                  ; $1822 : $00
	adc a, c                                                  ; $1823 : $89
	add hl, de                                                  ; $1824 : $19
	and $38                                                  ; $1825 : $e6, $38
	rst $20                                                  ; $1827 : $e7
	ld l, c                                                  ; $1828 : $69
	call po, $927e                                                  ; $1829 : $e4, $7e, $92
	xor c                                                  ; $182c : $a9
	dec c                                                  ; $182d : $0d
	ld a, (bc)                                                  ; $182e : $0a
	sub l                                                  ; $182f : $95
	call po, $e330                                                  ; $1830 : $e4, $30, $e3
	sbc a, a                                                  ; $1833 : $9f
	add hl, bc                                                  ; $1834 : $09
	ex de, hl                                                  ; $1835 : $eb
	ld h, d                                                  ; $1836 : $62
	ld l, l                                                  ; $1837 : $6d
	ld a, b                                                  ; $1838 : $78
	ld (hl), c                                                  ; $1839 : $71
	pop hl                                                  ; $183a : $e1
	add a, c                                                  ; $183b : $81
	cp d                                                  ; $183c : $ba
	ld a, (bc)                                                  ; $183d : $0a
	ld d, h                                                  ; $183e : $54
	rst $20                                                  ; $183f : $e7
	dec h                                                  ; $1840 : $25
	ld (hl), e                                                  ; $1841 : $73
	inc d                                                  ; $1842 : $14
	or h                                                  ; $1843 : $b4
	.db $ed                                                  ; $1844 : $ed
	ld hl, ($21e8)                                                  ; $1845 : $2a, $e8, $21
	call po, $9dee                                                  ; $1848 : $e4, $ee, $9d
	or h                                                  ; $184b : $b4
	pop hl                                                  ; $184c : $e1
	ret nc                                                  ; $184d : $d0

	dec h                                                  ; $184e : $25
	call nc, Call_04_19e3                                                  ; $184f : $d4, $e3, $19
	dec bc                                                  ; $1852 : $0b
	jr nz, br_04_186b                                                  ; $1853 : $20, $16

	sbc a, $01                                                  ; $1855 : $de, $01
	dec c                                                  ; $1857 : $0d
	inc hl                                                  ; $1858 : $23
	ld c, e                                                  ; $1859 : $4b
	ex af, af'                                                  ; $185a : $08
	adc a, d                                                  ; $185b : $8a
	ex de, hl                                                  ; $185c : $eb
	add a, a                                                  ; $185d : $87
	jp pe, $6574                                                  ; $185e : $ea, $74, $65
	exx                                                  ; $1861 : $d9
	ld bc, $00e8                                                  ; $1862 : $01, $e8, $00
	rst $20                                                  ; $1865 : $e7
	ld h, a                                                  ; $1866 : $67
	jp pe, Jump_04_0fe6                                                  ; $1867 : $ea, $e6, $0f
	or h                                                  ; $186a : $b4

br_04_186b:
	call pe, $e9ec                                                  ; $186b : $ec, $ec, $e9
	ld (hl), c                                                  ; $186e : $71
	sub e                                                  ; $186f : $93
	ret pe                                                  ; $1870 : $e8

	sub d                                                  ; $1871 : $92
	ret po                                                  ; $1872 : $e0

	ret m                                                  ; $1873 : $f8

	jp pe, Jump_04_1a5a                                                  ; $1874 : $ea, $5a, $1a
	cpl                                                  ; $1877 : $2f
	ld a, (bc)                                                  ; $1878 : $0a
	ex (sp), hl                                                  ; $1879 : $e3
	sub c                                                  ; $187a : $91
	ex de, hl                                                  ; $187b : $eb
	call m, Call_04_05ed                                                  ; $187c : $fc, $ed, $05
	inc c                                                  ; $187f : $0c
	and $2f                                                  ; $1880 : $e6, $2f
	or h                                                  ; $1882 : $b4
	ex de, hl                                                  ; $1883 : $eb
	add a, a                                                  ; $1884 : $87
	jp pe, $6374                                                  ; $1885 : $ea, $74, $63
	jp po, $126c                                                  ; $1888 : $e2, $6c, $12
	ld bc, $97e5                                                  ; $188b : $01, $e5, $97
	ex (sp), hl                                                  ; $188e : $e3
	add hl, hl                                                  ; $188f : $29
	pop hl                                                  ; $1890 : $e1
	ld a, (hl)                                                  ; $1891 : $7e
	ld c, $ce                                                  ; $1892 : $0e, $ce
	adc a, c                                                  ; $1894 : $89
	push hl                                                  ; $1895 : $e5
	ld e, d                                                  ; $1896 : $5a
	cp e                                                  ; $1897 : $bb
	pop hl                                                  ; $1898 : $e1
	ld l, e                                                  ; $1899 : $6b
	jp (hl)                                                  ; $189a : $e9


	or $92                                                  ; $189b : $f6, $92
	call po, Call_04_3004                                                  ; $189d : $e4, $04, $30
	dec bc                                                  ; $18a0 : $0b
	ret pe                                                  ; $18a1 : $e8

	ld l, e                                                  ; $18a2 : $6b
	.db $ed                                                  ; $18a3 : $ed

Call_04_18a4:
	add hl, hl                                                  ; $18a4 : $29
	rst $20                                                  ; $18a5 : $e7
	sub h                                                  ; $18a6 : $94
	inc d                                                  ; $18a7 : $14
	inc c                                                  ; $18a8 : $0c
	rst $20                                                  ; $18a9 : $e7
	ld (hl), $97                                                  ; $18aa : $36, $97
	rst $20                                                  ; $18ac : $e7
	adc a, h                                                  ; $18ad : $8c
	ex (sp), hl                                                  ; $18ae : $e3
	ex af, af'                                                  ; $18af : $08
	jp (hl)                                                  ; $18b0 : $e9


	ld l, a                                                  ; $18b1 : $6f
	sub d                                                  ; $18b2 : $92
	call po, $e149                                                  ; $18b3 : $e4, $49, $e1
	ld d, e                                                  ; $18b6 : $53
	jp (hl)                                                  ; $18b7 : $e9


	cp a                                                  ; $18b8 : $bf
	and $75                                                  ; $18b9 : $e6, $75
	ld a, (bc)                                                  ; $18bb : $0a
	and $7a                                                  ; $18bc : $e6, $7a
	rst $20                                                  ; $18be : $e7
	ld d, c                                                  ; $18bf : $51
	and $79                                                  ; $18c0 : $e6, $79
	ld a, (de)                                                  ; $18c2 : $1a
	or h                                                  ; $18c3 : $b4
	jp po, $98a9                                                  ; $18c4 : $e2, $a9, $98
	call pe, $933f                                                  ; $18c7 : $ec, $3f, $93
	push hl                                                  ; $18ca : $e5
	ld h, b                                                  ; $18cb : $60
	or e                                                  ; $18cc : $b3
	jp (hl)                                                  ; $18cd : $e9


Jump_04_18ce:
	ld a, (de)                                                  ; $18ce : $1a
	cp c                                                  ; $18cf : $b9
	pop hl                                                  ; $18d0 : $e1
	jp z, $95e9                                                  ; $18d1 : $ca, $e9, $95
	ld d, $e5                                                  ; $18d4 : $16, $e5
	adc a, c                                                  ; $18d6 : $89
	nop                                                  ; $18d7 : $00
	ld c, c                                                  ; $18d8 : $49
	nop                                                  ; $18d9 : $00
	ld (hl), b                                                  ; $18da : $70
	sbc a, $01                                                  ; $18db : $de, $01
	ret po                                                  ; $18dd : $e0

	ld sp, hl                                                  ; $18de : $f9
	call pe, $e9fb                                                  ; $18df : $ec, $fb, $e9
	rst $00                                                  ; $18e2 : $c7
	dec bc                                                  ; $18e3 : $0b
	call nc, $e65a                                                  ; $18e4 : $d4, $5a, $e6
	jp (hl)                                                  ; $18e7 : $e9


	pop hl                                                  ; $18e8 : $e1
	add a, d                                                  ; $18e9 : $82
	ret pe                                                  ; $18ea : $e8

	call nz, $bdbb                                                  ; $18eb : $c4, $bb, $bd
	dec bc                                                  ; $18ee : $0b
	and $1f                                                  ; $18ef : $e6, $1f
	call po, $e750                                                  ; $18f1 : $e4, $50, $e7
	call nc, $eae6                                                  ; $18f4 : $d4, $e6, $ea
	ld a, (bc)                                                  ; $18f7 : $0a
	ret                                                  ; $18f8 : $c9


	daa                                                  ; $18f9 : $27
	sub d                                                  ; $18fa : $92
	push bc                                                  ; $18fb : $c5
	ex de, hl                                                  ; $18fc : $eb
	ld l, $49                                                  ; $18fd : $2e, $49
	ld d, $54                                                  ; $18ff : $16, $54
	dec bc                                                  ; $1901 : $0b
	pop hl                                                  ; $1902 : $e1
	inc e                                                  ; $1903 : $1c
	ret pe                                                  ; $1904 : $e8

	sub b                                                  ; $1905 : $90
	call po, Call_04_0a3f                                                  ; $1906 : $e4, $3f, $0a
	ret                                                  ; $1909 : $c9


	and $e9                                                  ; $190a : $e6, $e9
	ld (hl), b                                                  ; $190c : $70
	inc (hl)                                                  ; $190d : $34
	sub d                                                  ; $190e : $92
	call pe, $96cc                                                  ; $190f : $ec, $cc, $96
	dec bc                                                  ; $1912 : $0b
	call pe, $ec39                                                  ; $1913 : $ec, $39, $ec
	ld e, e                                                  ; $1916 : $5b
	ret pe                                                  ; $1917 : $e8

	push bc                                                  ; $1918 : $c5
	and $eb                                                  ; $1919 : $e6, $eb
	ex af, af'                                                  ; $191b : $08
	and $c0                                                  ; $191c : $e6, $c0
	ld l, h                                                  ; $191e : $6c
	ld h, (hl)                                                  ; $191f : $66

Call_04_1920:
	pop hl                                                  ; $1920 : $e1
	rrca                                                  ; $1921 : $0f
	add hl, sp                                                  ; $1922 : $39
	dec bc                                                  ; $1923 : $0b
	and $f0                                                  ; $1924 : $e6, $f0
	ret pe                                                  ; $1926 : $e8

	ld sp, hl                                                  ; $1927 : $f9
	ret pe                                                  ; $1928 : $e8

	ld e, (hl)                                                  ; $1929 : $5e
	inc de                                                  ; $192a : $13
	ret                                                  ; $192b : $c9


	push hl                                                  ; $192c : $e5
	jp (hl)                                                  ; $192d : $e9


	call pe, $e4d6                                                  ; $192e : $ec, $d6, $e4
	jp po, $88b4                                                  ; $1931 : $e2, $b4, $88
	jp pe, $e89b                                                  ; $1934 : $ea, $9b, $e8
	ld d, c                                                  ; $1937 : $51
	or h                                                  ; $1938 : $b4
	cp l                                                  ; $1939 : $bd
	ld b, h                                                  ; $193a : $44
	jp po, $0bc6                                                  ; $193b : $e2, $c6, $0b
	.db $ed                                                  ; $193e : $ed
	.db $dd                                                  ; $193f : $dd
	ret pe                                                  ; $1940 : $e8

	push af                                                  ; $1941 : $f5
	ret po                                                  ; $1942 : $e0

	jp po, $e3e0                                                  ; $1943 : $e2, $e0, $e3
	ld c, $d4                                                  ; $1946 : $0e, $d4
	jp (hl)                                                  ; $1948 : $e9


	push af                                                  ; $1949 : $f5
	sub d                                                  ; $194a : $92
	xor e                                                  ; $194b : $ab
	ld e, e                                                  ; $194c : $5b
	ld (hl), h                                                  ; $194d : $74
	ret pe                                                  ; $194e : $e8

	call pe, $c1e3                                                  ; $194f : $ec, $e3, $c1
	and $ef                                                  ; $1952 : $e6, $ef
	dec bc                                                  ; $1954 : $0b
	push hl                                                  ; $1955 : $e5
	jp po, $70e7                                                  ; $1956 : $e2, $e7, $70
	jp po, Jump_04_0c57                                                  ; $1959 : $e2, $57, $0c
	ld h, (hl)                                                  ; $195c : $66
	ld c, h                                                  ; $195d : $4c
	inc (hl)                                                  ; $195e : $34
	.db $ed                                                  ; $195f : $ed
	rst $38                                                  ; $1960 : $ff
	.db $dd                                                  ; $1961 : $dd
	call po, $b4c5                                                  ; $1962 : $e4, $c5, $b4
	ret po                                                  ; $1965 : $e0

	ld (de), a                                                  ; $1966 : $12

Call_04_1967:
	dec bc                                                  ; $1967 : $0b
	rst $20                                                  ; $1968 : $e7

Jump_04_1969:
	ld (hl), b                                                  ; $1969 : $70
	pop hl                                                  ; $196a : $e1
	add hl, de                                                  ; $196b : $19
	jp pe, Jump_04_0cb9                                                  ; $196c : $ea, $b9, $0c
	otir                                                  ; $196f : $ed, $b3
	or h                                                  ; $1971 : $b4
	ld a, c                                                  ; $1972 : $79
	cp l                                                  ; $1973 : $bd
	inc (hl)                                                  ; $1974 : $34
	sbc a, b                                                  ; $1975 : $98
	pop hl                                                  ; $1976 : $e1
	call nz, Call_04_30d7                                                  ; $1977 : $c4, $d7, $30
	dec bc                                                  ; $197a : $0b
	pop hl                                                  ; $197b : $e1
	ld sp, hl                                                  ; $197c : $f9
	ld ($96e3), a                                                  ; $197d : $32, $e3, $96
	ld a, (bc)                                                  ; $1980 : $0a
	ret                                                  ; $1981 : $c9


	add hl, sp                                                  ; $1982 : $39
	ld l, h                                                  ; $1983 : $6c
	ex (sp), hl                                                  ; $1984 : $e3
	or d                                                  ; $1985 : $b2
	adc a, (hl)                                                  ; $1986 : $8e

Jump_04_1987:
	sub d                                                  ; $1987 : $92
	jp po, Jump_04_0b73                                                  ; $1988 : $e2, $73, $0b
	ld b, l                                                  ; $198b : $45
	and $c7                                                  ; $198c : $e6, $c7
	rst $20                                                  ; $198e : $e7
	dec h                                                  ; $198f : $25
	dec c                                                  ; $1990 : $0d
	ret                                                  ; $1991 : $c9


	adc a, b                                                  ; $1992 : $88
	and e                                                  ; $1993 : $a3
	ld l, h                                                  ; $1994 : $6c
	dec h                                                  ; $1995 : $25
	or h                                                  ; $1996 : $b4
	ld h, $16                                                  ; $1997 : $26, $16
	jp po, $eb54                                                  ; $1999 : $e2, $54, $eb
	djnz br_04_19a9                                                  ; $199c : $10, $0b
	.db $ed                                                  ; $199e : $ed
	dec hl                                                  ; $199f : $2b
	jp po, $e248                                                  ; $19a0 : $e2, $48, $e2
	ld e, d                                                  ; $19a3 : $5a
	inc c                                                  ; $19a4 : $0c
	ret                                                  ; $19a5 : $c9


	add hl, sp                                                  ; $19a6 : $39
	ccf                                                  ; $19a7 : $3f
	or h                                                  ; $19a8 : $b4

br_04_19a9:
	ret pe                                                  ; $19a9 : $e8

	jp c, $78e6                                                  ; $19aa : $da, $e6, $78
	pop hl                                                  ; $19ad : $e1
	add a, b                                                  ; $19ae : $80
	cp d                                                  ; $19af : $ba
	dec bc                                                  ; $19b0 : $0b
	ld c, c                                                  ; $19b1 : $49
	ex (sp), hl                                                  ; $19b2 : $e3
	adc a, b                                                  ; $19b3 : $88
	ex de, hl                                                  ; $19b4 : $eb
	ex af, af'                                                  ; $19b5 : $08
	dec bc                                                  ; $19b6 : $0b
	ret                                                  ; $19b7 : $c9


	daa                                                  ; $19b8 : $27
	sub d                                                  ; $19b9 : $92
	push bc                                                  ; $19ba : $c5
	ex de, hl                                                  ; $19bb : $eb
	ld l, $e4                                                  ; $19bc : $2e, $e4
	add a, $16                                                  ; $19be : $c6, $16
	or b                                                  ; $19c0 : $b0
	dec bc                                                  ; $19c1 : $0b
	pop hl                                                  ; $19c2 : $e1
	and a                                                  ; $19c3 : $a7
	ret po                                                  ; $19c4 : $e0

	jp m, $99e5                                                  ; $19c5 : $fa, $e5, $99
	dec bc                                                  ; $19c8 : $0b
	ret                                                  ; $19c9 : $c9


	and $8f                                                  ; $19ca : $e6, $8f
	inc (hl)                                                  ; $19cc : $34
	jp $c0e8                                                  ; $19cd : $c3, $e8, $c0


	cpl                                                  ; $19d0 : $2f
	call po, Call_04_0b12                                                  ; $19d1 : $e4, $12, $0b
	push hl                                                  ; $19d4 : $e5
	ret p                                                  ; $19d5 : $f0

	xor $20                                                  ; $19d6 : $ee, $20
	call pe, Call_04_07c2                                                  ; $19d8 : $ec, $c2, $07
	adc a, $31                                                  ; $19db : $ce, $31
	inc (hl)                                                  ; $19dd : $34
	sub d                                                  ; $19de : $92
	ret pe                                                  ; $19df : $e8

	ld de, $e80b                                                  ; $19e0 : $11, $0b, $e8

Call_04_19e3:
	call z, $53e2                                                  ; $19e3 : $cc, $e2, $53
	jp pe, Jump_04_0f1f                                                  ; $19e6 : $ea, $1f, $0f
	call pe, Call_04_18a4                                                  ; $19e9 : $ec, $a4, $18
	push de                                                  ; $19ec : $d5
	ex de, hl                                                  ; $19ed : $eb
	add a, c                                                  ; $19ee : $81
	cp c                                                  ; $19ef : $b9
	or h                                                  ; $19f0 : $b4
	.db $ed                                                  ; $19f1 : $ed
	rst $18                                                  ; $19f2 : $df
	ld a, (de)                                                  ; $19f3 : $1a
	jp pe, $bad7                                                  ; $19f4 : $ea, $d7, $ba
	ld a, (bc)                                                  ; $19f7 : $0a
	out (c), b                                                  ; $19f8 : $ed, $41
	jp pe, $e5c9                                                  ; $19fa : $ea, $c9, $e5
	pop hl                                                  ; $19fd : $e1
	rrca                                                  ; $19fe : $0f
	call pe, Call_04_18a4                                                  ; $19ff : $ec, $a4, $18
	or e                                                  ; $1a02 : $b3
	ret pe                                                  ; $1a03 : $e8

	sbc a, e                                                  ; $1a04 : $9b
	or (hl)                                                  ; $1a05 : $b6
	xor $1a                                                  ; $1a06 : $ee, $1a
	rst $10                                                  ; $1a08 : $d7
	rst $20                                                  ; $1a09 : $e7
	rst $18                                                  ; $1a0a : $df
	ld a, (de)                                                  ; $1a0b : $1a
	cpl                                                  ; $1a0c : $2f
	ld a, (bc)                                                  ; $1a0d : $0a
	jp pe, $e073                                                  ; $1a0e : $ea, $73, $e0
	cp (hl)                                                  ; $1a11 : $be
	rst $20                                                  ; $1a12 : $e7
	add a, c                                                  ; $1a13 : $81
	rst $20                                                  ; $1a14 : $e7
	add a, b                                                  ; $1a15 : $80
	dec c                                                  ; $1a16 : $0d
	pop de                                                  ; $1a17 : $d1
	or h                                                  ; $1a18 : $b4
	daa                                                  ; $1a19 : $27
	ld b, d                                                  ; $1a1a : $42
	and $53                                                  ; $1a1b : $e6, $53
	.db $ed                                                  ; $1a1d : $ed
	ld sp, $ebba                                                  ; $1a1e : $31, $ba, $eb
	add hl, hl                                                  ; $1a21 : $29
	rst $10                                                  ; $1a22 : $d7
	dec bc                                                  ; $1a23 : $0b
	.db $ed                                                  ; $1a24 : $ed
	call c, Call_04_14e7                                                  ; $1a25 : $dc, $e7, $14
	ret po                                                  ; $1a28 : $e0

	ret c                                                  ; $1a29 : $d8

	dec c                                                  ; $1a2a : $0d
	call nc, $72e1                                                  ; $1a2b : $d4, $e1, $72
	rst $20                                                  ; $1a2e : $e7
	inc bc                                                  ; $1a2f : $03
	ld de, $e4b4                                                  ; $1a30 : $11, $b4, $e4
	ld d, $65                                                  ; $1a33 : $16, $65
	pop hl                                                  ; $1a35 : $e1
	ld (hl), e                                                  ; $1a36 : $73
	dec bc                                                  ; $1a37 : $0b
	ex (sp), hl                                                  ; $1a38 : $e3
	ex (sp), hl                                                  ; $1a39 : $e3
	.db $ed                                                  ; $1a3a : $ed
	call p, Call_04_13ea                                                  ; $1a3b : $f4, $ea, $13
	rrca                                                  ; $1a3e : $0f
	rst $08                                                  ; $1a3f : $cf
	inc c                                                  ; $1a40 : $0c
	ex de, hl                                                  ; $1a41 : $eb
	ld l, e                                                  ; $1a42 : $6b
	rst $20                                                  ; $1a43 : $e7
	ld l, h                                                  ; $1a44 : $6c
	or e                                                  ; $1a45 : $b3
	rst $20                                                  ; $1a46 : $e7
	ld hl, ($5b16)                                                  ; $1a47 : $2a, $16, $5b

Call_04_1a4a:
	inc c                                                  ; $1a4a : $0c
	push hl                                                  ; $1a4b : $e5
	rla                                                  ; $1a4c : $17
	dec bc                                                  ; $1a4d : $0b
	ex (sp), hl                                                  ; $1a4e : $e3
	ld b, a                                                  ; $1a4f : $47
	outi                                                  ; $1a50 : $ed, $a3
	rst $20                                                  ; $1a52 : $e7
	jr nz, br_04_1a64                                                  ; $1a53 : $20, $0f

	rst $08                                                  ; $1a55 : $cf
	or h                                                  ; $1a56 : $b4
	jp pe, Jump_04_16bc                                                  ; $1a57 : $ea, $bc, $16

Jump_04_1a5a:
	.db $ed                                                  ; $1a5a : $ed
	or (hl)                                                  ; $1a5b : $b6
	ex (sp), hl                                                  ; $1a5c : $e3
	sbc a, e                                                  ; $1a5d : $9b
	or e                                                  ; $1a5e : $b3
	jp pe, $e431                                                  ; $1a5f : $ea, $31, $e4
	rst $08                                                  ; $1a62 : $cf
	dec bc                                                  ; $1a63 : $0b

br_04_1a64:
	jp po, $ed13                                                  ; $1a64 : $e2, $13, $ed
	sub $e9                                                  ; $1a67 : $d6, $e9
	cp $0f                                                  ; $1a69 : $fe, $0f
	ret                                                  ; $1a6b : $c9


	ld d, e                                                  ; $1a6c : $53
	ld l, h                                                  ; $1a6d : $6c
	ex (sp), hl                                                  ; $1a6e : $e3
	inc a                                                  ; $1a6f : $3c
	jp nc, $e8bc                                                  ; $1a70 : $d2, $bc, $e8
	and a                                                  ; $1a73 : $a7
	ld a, (de)                                                  ; $1a74 : $1a
	jp pe, $ecc2                                                  ; $1a75 : $ea, $c2, $ec
	ret nz                                                  ; $1a78 : $c0

	dec bc                                                  ; $1a79 : $0b
	rst $20                                                  ; $1a7a : $e7
	ld b, (hl)                                                  ; $1a7b : $46
	ex de, hl                                                  ; $1a7c : $eb
	cp d                                                  ; $1a7d : $ba
	push hl                                                  ; $1a7e : $e5
	inc c                                                  ; $1a7f : $0c
	dec c                                                  ; $1a80 : $0d
	pop de                                                  ; $1a81 : $d1
	inc c                                                  ; $1a82 : $0c
	jp po, $ed38                                                  ; $1a83 : $e2, $38, $ed
	inc sp                                                  ; $1a86 : $33
	push hl                                                  ; $1a87 : $e5
	inc c                                                  ; $1a88 : $0c
	cp d                                                  ; $1a89 : $ba
	call pe, $7206                                                  ; $1a8a : $ec, $06, $72
	dec bc                                                  ; $1a8d : $0b
	push hl                                                  ; $1a8e : $e5
	ld sp, $c4e2                                                  ; $1a8f : $31, $e2, $c4
	pop hl                                                  ; $1a92 : $e1
	exx                                                  ; $1a93 : $d9
	rrca                                                  ; $1a94 : $0f
	ret                                                  ; $1a95 : $c9


	pop hl                                                  ; $1a96 : $e1
	cp a                                                  ; $1a97 : $bf
	sub e                                                  ; $1a98 : $93
	ld h, d                                                  ; $1a99 : $62
	daa                                                  ; $1a9a : $27
	jp (hl)                                                  ; $1a9b : $e9


	ret pe                                                  ; $1a9c : $e8

	or h                                                  ; $1a9d : $b4
	push hl                                                  ; $1a9e : $e5
	ret z                                                  ; $1a9f : $c8

	ld d, $e7                                                  ; $1aa0 : $16, $e7
	ld h, h                                                  ; $1aa2 : $64
	dec bc                                                  ; $1aa3 : $0b
	ex de, hl                                                  ; $1aa4 : $eb
	call z, Call_04_2fe9                                                  ; $1aa5 : $cc, $e9, $2f
	jp pe, Jump_04_1094                                                  ; $1aa8 : $ea, $94, $10
	rst $08                                                  ; $1aab : $cf
	or h                                                  ; $1aac : $b4
	rst $20                                                  ; $1aad : $e7
	ld c, h                                                  ; $1aae : $4c
	call pe, $b3b9                                                  ; $1aaf : $ec, $b9, $b3
	ex (sp), hl                                                  ; $1ab2 : $e3
	dec b                                                  ; $1ab3 : $05
	or h                                                  ; $1ab4 : $b4
	ret pe                                                  ; $1ab5 : $e8

	inc sp                                                  ; $1ab6 : $33
	cp e                                                  ; $1ab7 : $bb
	pop hl                                                  ; $1ab8 : $e1
	cp a                                                  ; $1ab9 : $bf
	dec bc                                                  ; $1aba : $0b
	call po, $e5b5                                                  ; $1abb : $e4, $b5, $e5
	xor d                                                  ; $1abe : $aa
	call pe, Call_04_0e7d                                                  ; $1abf : $ec, $7d, $0e
	inc c                                                  ; $1ac2 : $0c
	daa                                                  ; $1ac3 : $27
	or e                                                  ; $1ac4 : $b3
	push hl                                                  ; $1ac5 : $e5
	cp d                                                  ; $1ac6 : $ba
	ret po                                                  ; $1ac7 : $e0

	ld h, (hl)                                                  ; $1ac8 : $66
	cp d                                                  ; $1ac9 : $ba
	pop hl                                                  ; $1aca : $e1
	ld hl, ($70e6)                                                  ; $1acb : $2a, $e6, $70
	ld l, l                                                  ; $1ace : $6d
	ld a, (bc)                                                  ; $1acf : $0a
	ex de, hl                                                  ; $1ad0 : $eb
	ld e, b                                                  ; $1ad1 : $58
	call po, $e7ed                                                  ; $1ad2 : $e4, $ed, $e7
	ld (hl), e                                                  ; $1ad5 : $73
	dec c                                                  ; $1ad6 : $0d
	ld de, $6c82                                                  ; $1ad7 : $11, $82, $6c
	add a, b                                                  ; $1ada : $80
	ret nz                                                  ; $1adb : $c0

	sub d                                                  ; $1adc : $92
	call pe, $e9b7                                                  ; $1add : $ec, $b7, $e9
	inc d                                                  ; $1ae0 : $14
	cpl                                                  ; $1ae1 : $2f
	ret                                                  ; $1ae2 : $c9


	dec bc                                                  ; $1ae3 : $0b
	jp (hl)                                                  ; $1ae4 : $e9


	ld e, a                                                  ; $1ae5 : $5f
	jp (hl)                                                  ; $1ae6 : $e9


	dec d                                                  ; $1ae7 : $15
	pop hl                                                  ; $1ae8 : $e1
	inc h                                                  ; $1ae9 : $24
	dec bc                                                  ; $1aea : $0b
	bit 6, d                                                  ; $1aeb : $cb, $72
	jp nc, $7d0c                                                  ; $1aed : $d2, $0c, $7d
	.db $ed                                                  ; $1af0 : $ed
	ex af, af'                                                  ; $1af1 : $08
	and $5f                                                  ; $1af2 : $e6, $5f
	ld e, b                                                  ; $1af4 : $58
	dec bc                                                  ; $1af5 : $0b
	rst $20                                                  ; $1af6 : $e7
	pop bc                                                  ; $1af7 : $c1
	push hl                                                  ; $1af8 : $e5
	rlca                                                  ; $1af9 : $07
	call po, $e464                                                  ; $1afa : $e4, $64, $e4
	ld h, e                                                  ; $1afd : $63
	inc c                                                  ; $1afe : $0c
	ret nc                                                  ; $1aff : $d0

	ld c, b                                                  ; $1b00 : $48
	jp po, $e75d                                                  ; $1b01 : $e2, $5d, $e7
	call m, $e8ba                                                  ; $1b04 : $fc, $ba, $e8
	dec h                                                  ; $1b07 : $25
	call po, $0ba0                                                  ; $1b08 : $e4, $a0, $0b
	ld a, e                                                  ; $1b0b : $7b
	push hl                                                  ; $1b0c : $e5
	ld a, a                                                  ; $1b0d : $7f
	push hl                                                  ; $1b0e : $e5
	jp z, $630f                                                  ; $1b0f : $ca, $0f, $63
	ret pe                                                  ; $1b12 : $e8

	jp po, $98eb                                                  ; $1b13 : $e2, $eb, $98
	or c                                                  ; $1b16 : $b1
	nop                                                  ; $1b17 : $00
	or l                                                  ; $1b18 : $b5
	ld (hl), b                                                  ; $1b19 : $70
	jp (hl)                                                  ; $1b1a : $e9


	push bc                                                  ; $1b1b : $c5
	ex de, hl                                                  ; $1b1c : $eb
	xor e                                                  ; $1b1d : $ab

Jump_04_1b1e:
	sub d                                                  ; $1b1e : $92
	ld a, (bc)                                                  ; $1b1f : $0a
	push hl                                                  ; $1b20 : $e5
	ld a, (hl)                                                  ; $1b21 : $7e
	pop hl                                                  ; $1b22 : $e1
	cp a                                                  ; $1b23 : $bf
	ld a, e                                                  ; $1b24 : $7b
	dec bc                                                  ; $1b25 : $0b
	call nc, $4158                                                  ; $1b26 : $d4, $58, $41
	jp po, $e82c                                                  ; $1b29 : $e2, $2c, $e8
	ld d, (hl)                                                  ; $1b2c : $56
	cp d                                                  ; $1b2d : $ba
	jp po, Jump_04_0b06                                                  ; $1b2e : $e2, $06, $0b
	ret pe                                                  ; $1b31 : $e8

	ld a, l                                                  ; $1b32 : $7d
	and $23                                                  ; $1b33 : $e6, $23
	ret pe                                                  ; $1b35 : $e8

	rst $28                                                  ; $1b36 : $ef
	ld d, $d2                                                  ; $1b37 : $16, $d2
	jp (hl)                                                  ; $1b39 : $e9


	sbc a, d                                                  ; $1b3a : $9a
	ld d, (hl)                                                  ; $1b3b : $56
	jp po, Jump_04_164d                                                  ; $1b3c : $e2, $4d, $16
	and $4b                                                  ; $1b3f : $e6, $4b
	rst $20                                                  ; $1b41 : $e7
	jp p, $ecd7                                                  ; $1b42 : $f2, $d7, $ec
	adc a, d                                                  ; $1b45 : $8a
	nop                                                  ; $1b46 : $00
	ret nc                                                  ; $1b47 : $d0

	jp pe, $6c2c                                                  ; $1b48 : $ea, $2c, $6c
	jp (hl)                                                  ; $1b4b : $e9


	call c, $e50b                                                  ; $1b4c : $dc, $0b, $e5
	call $b3e3                                                  ; $1b4f : $cd, $e3, $b3
	ret po                                                  ; $1b52 : $e0

	ld (hl), a                                                  ; $1b53 : $77
	dec bc                                                  ; $1b54 : $0b
	rst $08                                                  ; $1b55 : $cf
	or h                                                  ; $1b56 : $b4
	and $f4                                                  ; $1b57 : $e6, $f4
	jp (hl)                                                  ; $1b59 : $e9


	ld (hl), h                                                  ; $1b5a : $74
	ld h, l                                                  ; $1b5b : $65
	ex de, hl                                                  ; $1b5c : $eb
	sbc a, b                                                  ; $1b5d : $98
	or c                                                  ; $1b5e : $b1
	dec bc                                                  ; $1b5f : $0b
	ret pe                                                  ; $1b60 : $e8

	ld e, a                                                  ; $1b61 : $5f
	and $ba                                                  ; $1b62 : $e6, $ba
	jp (hl)                                                  ; $1b64 : $e9


	adc a, b                                                  ; $1b65 : $88
	dec bc                                                  ; $1b66 : $0b
	jp nc, $fce7                                                  ; $1b67 : $d2, $e7, $fc
	ld a, (de)                                                  ; $1b6a : $1a
	call po, $ece8                                                  ; $1b6b : $e4, $e8, $ec
	ret nz                                                  ; $1b6e : $c0

	or a                                                  ; $1b6f : $b7
	ld a, (de)                                                  ; $1b70 : $1a
	ld a, (bc)                                                  ; $1b71 : $0a
	call po, $ea76                                                  ; $1b72 : $e4, $76, $ea
	ld c, e                                                  ; $1b75 : $4b
	jp po, $0cf2                                                  ; $1b76 : $e2, $f2, $0c
	adc a, d                                                  ; $1b79 : $8a
	jp (hl)                                                  ; $1b7a : $e9


	ld ($0cb3), hl                                                  ; $1b7b : $22, $b3, $0c
	jp (hl)                                                  ; $1b7e : $e9


	ld (hl), h                                                  ; $1b7f : $74
	call pe, $1e5e                                                  ; $1b80 : $ec, $5e, $1e
	or l                                                  ; $1b83 : $b5
	ld bc, $dbec                                                  ; $1b84 : $01, $ec, $db
	call po, $e8d5                                                  ; $1b87 : $e4, $d5, $e8
	rst $08                                                  ; $1b8a : $cf

br_04_1b8b:
	inc c                                                  ; $1b8b : $0c
	ret                                                  ; $1b8c : $c9


	ld d, e                                                  ; $1b8d : $53
	ld d, (hl)                                                  ; $1b8e : $56
	or l                                                  ; $1b8f : $b5
	and $c4                                                  ; $1b90 : $e6, $c4
	jp (hl)                                                  ; $1b92 : $e9


	ld (hl), l                                                  ; $1b93 : $75
	ld d, (hl)                                                  ; $1b94 : $56
	call po, Call_04_0bdf                                                  ; $1b95 : $e4, $df, $0b
	push hl                                                  ; $1b98 : $e5
	jp z, $a0e8                                                  ; $1b99 : $ca, $e8, $a0
	push hl                                                  ; $1b9c : $e5
	ld a, a                                                  ; $1b9d : $7f
	ex af, af'                                                  ; $1b9e : $08
	call nc, $74e9                                                  ; $1b9f : $d4, $e9, $74
	ld l, h                                                  ; $1ba2 : $6c
	ret pe                                                  ; $1ba3 : $e8

	ld d, d                                                  ; $1ba4 : $52
	or l                                                  ; $1ba5 : $b5
	dec bc                                                  ; $1ba6 : $0b
	ex (sp), hl                                                  ; $1ba7 : $e3
	call m, $99e7                                                  ; $1ba8 : $fc, $e7, $99
	rst $20                                                  ; $1bab : $e7
	add a, $12                                                  ; $1bac : $c6, $12
	ret po                                                  ; $1bae : $e0

	ld l, b                                                  ; $1baf : $68
	ld h, c                                                  ; $1bb0 : $61
	ex (sp), hl                                                  ; $1bb1 : $e3
	ld l, (hl)                                                  ; $1bb2 : $6e
	ld b, b                                                  ; $1bb3 : $40
	ld (hl), d                                                  ; $1bb4 : $72
	call pe, $515d                                                  ; $1bb5 : $ec, $5d, $51
	call pe, $ba8d                                                  ; $1bb8 : $ec, $8d, $ba
	jp pe, Jump_04_1e8f                                                  ; $1bbb : $ea, $8f, $1e
	or l                                                  ; $1bbe : $b5
	dec bc                                                  ; $1bbf : $0b
	ret po                                                  ; $1bc0 : $e0

	ld a, (de)                                                  ; $1bc1 : $1a
	cp $fe                                                  ; $1bc2 : $fe, $fe
	ld sp, $3038                                                  ; $1bc4 : $31, $38, $30
	rst $38                                                  ; $1bc7 : $ff
	cp $fe                                                  ; $1bc8 : $fe, $fe
	inc sp                                                  ; $1bca : $33
	ld (hl), $35                                                  ; $1bcb : $36, $35
	rst $38                                                  ; $1bcd : $ff
	ld c, $cf                                                  ; $1bce : $0e, $cf
	or h                                                  ; $1bd0 : $b4
	ex de, hl                                                  ; $1bd1 : $eb
	ld bc, $ecb3                                                  ; $1bd2 : $01, $b3, $ec
	jr nz, br_04_1b8b                                                  ; $1bd5 : $20, $b4

	ex de, hl                                                  ; $1bd7 : $eb
	jp (hl)                                                  ; $1bd8 : $e9


	ld d, $e9                                                  ; $1bd9 : $16, $e9
	ld (hl), l                                                  ; $1bdb : $75
	dec bc                                                  ; $1bdc : $0b
	pop hl                                                  ; $1bdd : $e1
	inc de                                                  ; $1bde : $13
	ex de, hl                                                  ; $1bdf : $eb
	call po, $17e1                                                  ; $1be0 : $e4, $e1, $17

Jump_04_1be3:
	ld c, $c9                                                  ; $1be3 : $0e, $c9
	ex de, hl                                                  ; $1be5 : $eb
	ld (bc), a                                                  ; $1be6 : $02
	call pe, $6cc8                                                  ; $1be7 : $ec, $c8, $6c
	pop bc                                                  ; $1bea : $c1
	rst $20                                                  ; $1beb : $e7
	ld d, e                                                  ; $1bec : $53
	call po, $6a96                                                  ; $1bed : $e4, $96, $6a
	xor d                                                  ; $1bf0 : $aa
	dec bc                                                  ; $1bf1 : $0b
	rst $20                                                  ; $1bf2 : $e7
	sub $e7                                                  ; $1bf3 : $d6, $e7
	rla                                                  ; $1bf5 : $17
	call pe, $0c76                                                  ; $1bf6 : $ec, $76, $0c
	jp z, $17e6                                                  ; $1bf9 : $ca, $e6, $17
	push hl                                                  ; $1bfc : $e5
	ei                                                  ; $1bfd : $fb
	sbc a, b                                                  ; $1bfe : $98
	ret pe                                                  ; $1bff : $e8

	dec c                                                  ; $1c00 : $0d
	call pe, Call_04_2f3f                                                  ; $1c01 : $ec, $3f, $2f
	dec bc                                                  ; $1c04 : $0b
	ex (sp), hl                                                  ; $1c05 : $e3
	jp Jump_04_28e2                                                  ; $1c06 : $c3, $e2, $28


	ex (sp), hl                                                  ; $1c09 : $e3
	add hl, sp                                                  ; $1c0a : $39
	ex (sp), hl                                                  ; $1c0b : $e3
	jr c, br_04_1c21                                                  ; $1c0c : $38, $13

	call pe, $eca4                                                  ; $1c0e : $ec, $a4, $ec
	sbc a, h                                                  ; $1c11 : $9c
	.db $ed                                                  ; $1c12 : $ed
	sbc a, (hl)                                                  ; $1c13 : $9e
	jp po, $e42d                                                  ; $1c14 : $e2, $2d, $e4
	xor l                                                  ; $1c17 : $ad
	pop hl                                                  ; $1c18 : $e1
	ld l, l                                                  ; $1c19 : $6d
	or a                                                  ; $1c1a : $b7
	ld a, (de)                                                  ; $1c1b : $1a
	rst $20                                                  ; $1c1c : $e7
	ld sp, $1a0f                                                  ; $1c1d : $31, $0f, $1a
	ld a, (bc)                                                  ; $1c20 : $0a

br_04_1c21:
	ex (sp), hl                                                  ; $1c21 : $e3
	sbc a, h                                                  ; $1c22 : $9c
	ld a, l                                                  ; $1c23 : $7d
	push hl                                                  ; $1c24 : $e5
	dec l                                                  ; $1c25 : $2d
	ld e, b                                                  ; $1c26 : $58
	ld a, (bc)                                                  ; $1c27 : $0a
	ld h, b                                                  ; $1c28 : $60
	ld b, b                                                  ; $1c29 : $40
	ex de, hl                                                  ; $1c2a : $eb

br_04_1c2b:
	xor c                                                  ; $1c2b : $a9
	ret pe                                                  ; $1c2c : $e8

	dec h                                                  ; $1c2d : $25
	cp c                                                  ; $1c2e : $b9
	call pe, Call_04_0b8a                                                  ; $1c2f : $ec, $8a, $0b
	push hl                                                  ; $1c32 : $e5
	dec l                                                  ; $1c33 : $2d
	ex de, hl                                                  ; $1c34 : $eb
	call nc, $9ced                                                  ; $1c35 : $d4, $ed, $9c
	.db $ed                                                  ; $1c38 : $ed
	sbc a, d                                                  ; $1c39 : $9a
	add hl, bc                                                  ; $1c3a : $09
	pop de                                                  ; $1c3b : $d1
	or h                                                  ; $1c3c : $b4
	call pe, $e7a7                                                  ; $1c3d : $ec, $a7, $e7
	ld a, h                                                  ; $1c40 : $7c
	ex de, hl                                                  ; $1c41 : $eb
	xor d                                                  ; $1c42 : $aa
	dec bc                                                  ; $1c43 : $0b
	.db $ed                                                  ; $1c44 : $ed
	exx                                                  ; $1c45 : $d9
	call pe, $edc5                                                  ; $1c46 : $ec, $c5, $ed
	ld l, l                                                  ; $1c49 : $6d
	.db $ed                                                  ; $1c4a : $ed
	ld l, h                                                  ; $1c4b : $6c
	rlca                                                  ; $1c4c : $07
	or h                                                  ; $1c4d : $b4
	ret pe                                                  ; $1c4e : $e8

	ld h, $92                                                  ; $1c4f : $26, $92
	rrca                                                  ; $1c51 : $0f
	ld l, (hl)                                                  ; $1c52 : $6e
	ld a, (bc)                                                  ; $1c53 : $0a
	push hl                                                  ; $1c54 : $e5
	ld de, $7aec                                                  ; $1c55 : $11, $ec, $7a
	.db $ed                                                  ; $1c58 : $ed
	rst $10                                                  ; $1c59 : $d7
	dec bc                                                  ; $1c5a : $0b
	res 6, h                                                  ; $1c5b : $cb, $b4
	ret po                                                  ; $1c5d : $e0

	cp h                                                  ; $1c5e : $bc
	sub d                                                  ; $1c5f : $92
	push bc                                                  ; $1c60 : $c5
	.db $ed                                                  ; $1c61 : $ed
	ccf                                                  ; $1c62 : $3f
	ld h, l                                                  ; $1c63 : $65
	rrca                                                  ; $1c64 : $0f
	dec bc                                                  ; $1c65 : $0b
	jp pe, $e72c                                                  ; $1c66 : $ea, $2c, $e7
	ret m                                                  ; $1c69 : $f8

	and $1a                                                  ; $1c6a : $e6, $1a
	ex af, af'                                                  ; $1c6c : $08
	or h                                                  ; $1c6d : $b4
	ld h, d                                                  ; $1c6e : $62
	daa                                                  ; $1c6f : $27
	ld e, e                                                  ; $1c70 : $5b
	ld h, c                                                  ; $1c71 : $61
	ex de, hl                                                  ; $1c72 : $eb
	ld hl, ($080b)                                                  ; $1c73 : $2a, $0b, $08
	dec b                                                  ; $1c76 : $05
	rlca                                                  ; $1c77 : $07
	ld c, a                                                  ; $1c78 : $4f
	djnz $14                                                  ; $1c79 : $10, $14

br_04_1c7b:
	call po, $926b                                                  ; $1c7b : $e4, $6b, $92
	ex de, hl                                                  ; $1c7e : $eb
	cpl                                                  ; $1c7f : $2f
	sub d                                                  ; $1c80 : $92
	call pe, $9733                                                  ; $1c81 : $ec, $33, $97
	jp pe, $e32f                                                  ; $1c84 : $ea, $2f, $e3
	ld l, l                                                  ; $1c87 : $6d
	ld l, l                                                  ; $1c88 : $6d
	ld a, (bc)                                                  ; $1c89 : $0a
	call po, $ece0                                                  ; $1c8a : $e4, $e0, $ec
	dec bc                                                  ; $1c8d : $0b
	jp pe, Jump_04_0d2d                                                  ; $1c8e : $ea, $2d, $0d
	or h                                                  ; $1c91 : $b4
	pop hl                                                  ; $1c92 : $e1
	pop af                                                  ; $1c93 : $f1
	pop hl                                                  ; $1c94 : $e1
	jr br_04_1c7b                                                  ; $1c95 : $18, $e4

	jr c, br_04_1c2b                                                  ; $1c97 : $38, $92

	inc c                                                  ; $1c99 : $0c
	pop hl                                                  ; $1c9a : $e1
	jp c, Jump_04_0a6e                                                  ; $1c9b : $da, $6e, $0a
	rst $20                                                  ; $1c9e : $e7
	ld b, $ed                                                  ; $1c9f : $06, $ed
	dec bc                                                  ; $1ca1 : $0b
	call pe, Call_04_0b80                                                  ; $1ca2 : $ec, $80, $0b
	jp z, Jump_04_2eec                                                  ; $1ca5 : $ca, $ec, $2e
	ld d, $eb                                                  ; $1ca8 : $16, $eb
	ret pe                                                  ; $1caa : $e8

	ld h, e                                                  ; $1cab : $63
	call po, Call_04_2fe4                                                  ; $1cac : $e4, $e4, $2f
	dec bc                                                  ; $1caf : $0b
	call pe, $e927                                                  ; $1cb0 : $ec, $27, $e9
	ex de, hl                                                  ; $1cb3 : $eb
	jp po, $e23c                                                  ; $1cb4 : $e2, $3c, $e2
	dec sp                                                  ; $1cb7 : $3b
	inc d                                                  ; $1cb8 : $14
	ld h, b                                                  ; $1cb9 : $60
	ld b, d                                                  ; $1cba : $42
	add a, (hl)                                                  ; $1cbb : $86
	ret po                                                  ; $1cbc : $e0

	and $d2                                                  ; $1cbd : $e6, $d2
	or l                                                  ; $1cbf : $b5
	ld d, $b4                                                  ; $1cc0 : $16, $b4
	add a, (hl)                                                  ; $1cc2 : $86
	ld a, (de)                                                  ; $1cc3 : $1a
	sub (hl)                                                  ; $1cc4 : $96
	ret pe                                                  ; $1cc5 : $e8

	set 5, e                                                  ; $1cc6 : $cb, $eb
	ld h, h                                                  ; $1cc8 : $64
	sub d                                                  ; $1cc9 : $92
	call pe, Call_04_0b8d                                                  ; $1cca : $ec, $8d, $0b
	ex (sp), hl                                                  ; $1ccd : $e3
	ld l, b                                                  ; $1cce : $68
	push hl                                                  ; $1ccf : $e5
	and c                                                  ; $1cd0 : $a1
	push hl                                                  ; $1cd1 : $e5
	jr br_04_1ce1                                                  ; $1cd2 : $18, $0d

	ret                                                  ; $1cd4 : $c9


	push hl                                                  ; $1cd5 : $e5
	or b                                                  ; $1cd6 : $b0
	.db $ed                                                  ; $1cd7 : $ed
	or a                                                  ; $1cd8 : $b7
	add a, (hl)                                                  ; $1cd9 : $86
	ld l, h                                                  ; $1cda : $6c
	dec h                                                  ; $1cdb : $25
	call pe, Call_04_168d                                                  ; $1cdc : $ec, $8d, $16
	or l                                                  ; $1cdf : $b5
	dec bc                                                  ; $1ce0 : $0b

br_04_1ce1:
	ret pe                                                  ; $1ce1 : $e8

	ld a, d                                                  ; $1ce2 : $7a
	call pe, $e434                                                  ; $1ce3 : $ec, $34, $e4
	add hl, bc                                                  ; $1ce6 : $09
	ld de, $ddd2                                                  ; $1ce7 : $11, $d2, $dd
	jp po, $e424                                                  ; $1cea : $e2, $24, $e4
	xor l                                                  ; $1ced : $ad
	or h                                                  ; $1cee : $b4
	ex de, hl                                                  ; $1cef : $eb
	ld b, e                                                  ; $1cf0 : $43
	sub d                                                  ; $1cf1 : $92
	ex de, hl                                                  ; $1cf2 : $eb
	and l                                                  ; $1cf3 : $a5
	nop                                                  ; $1cf4 : $00
	or e                                                  ; $1cf5 : $b3
	sub b                                                  ; $1cf6 : $90
	ld l, l                                                  ; $1cf7 : $6d
	ld a, (bc)                                                  ; $1cf8 : $0a
	ld e, b                                                  ; $1cf9 : $58
	ld a, l                                                  ; $1cfa : $7d
	ex de, hl                                                  ; $1cfb : $eb
	sbc a, h                                                  ; $1cfc : $9c
	ld de, $7bd2                                                  ; $1cfd : $11, $d2, $7b
	jp (hl)                                                  ; $1d00 : $e9


	ld a, (de)                                                  ; $1d01 : $1a
	call pe, $b910                                                  ; $1d02 : $ec, $10, $b9
	add a, d                                                  ; $1d05 : $82
	nop                                                  ; $1d06 : $00
	.db $ed                                                  ; $1d07 : $ed
	sbc a, (hl)                                                  ; $1d08 : $9e
	jp po, $b41c                                                  ; $1d09 : $e2, $1c, $b4
	add a, d                                                  ; $1d0c : $82
	ret                                                  ; $1d0d : $c9


	dec bc                                                  ; $1d0e : $0b
	ex (sp), hl                                                  ; $1d0f : $e3
	ld l, b                                                  ; $1d10 : $68
	ld a, e                                                  ; $1d11 : $7b
	call pe, Call_04_0be4                                                  ; $1d12 : $ec, $e4, $0b
	res 0, d                                                  ; $1d15 : $cb, $82
	or e                                                  ; $1d17 : $b3
	jp pe, $7bfc                                                  ; $1d18 : $ea, $fc, $7b
	ld h, e                                                  ; $1d1b : $63
	ld de, $b1e3                                                  ; $1d1c : $11, $e3, $b1
	dec bc                                                  ; $1d1f : $0b
	ret pe                                                  ; $1d20 : $e8

	rst $00                                                  ; $1d21 : $c7
	ex (sp), hl                                                  ; $1d22 : $e3
	ld l, b                                                  ; $1d23 : $68
	call pe, $0ae3                                                  ; $1d24 : $ec, $e3, $0a
	bit 6, d                                                  ; $1d27 : $cb, $72
	jp nc, $e17b                                                  ; $1d29 : $d2, $7b, $e1
	adc a, $e8                                                  ; $1d2c : $ce, $e8
	or c                                                  ; $1d2e : $b1
	sub b                                                  ; $1d2f : $90
	dec bc                                                  ; $1d30 : $0b
	jp pe, $e054                                                  ; $1d31 : $ea, $54, $e0
	ld l, (hl)                                                  ; $1d34 : $6e
	jp pe, Jump_04_0d51                                                  ; $1d35 : $ea, $51, $0d
	inc d                                                  ; $1d38 : $14
	sub b                                                  ; $1d39 : $90
	or e                                                  ; $1d3a : $b3
	ex de, hl                                                  ; $1d3b : $eb
	ld l, $7b                                                  ; $1d3c : $2e, $7b
	ld l, d                                                  ; $1d3e : $6a
	ld (hl), h                                                  ; $1d3f : $74
	pop hl                                                  ; $1d40 : $e1
	ld e, d                                                  ; $1d41 : $5a
	scf                                                  ; $1d42 : $37
	ld l, l                                                  ; $1d43 : $6d
	ld a, (bc)                                                  ; $1d44 : $0a
	rst $20                                                  ; $1d45 : $e7
	rla                                                  ; $1d46 : $17
	rst $20                                                  ; $1d47 : $e7
	sub $e9                                                  ; $1d48 : $d6, $e9
	sub $10                                                  ; $1d4a : $d6, $10
	and h                                                  ; $1d4c : $a4
	ret pe                                                  ; $1d4d : $e8

	and a                                                  ; $1d4e : $a7
	jp pe, $e850                                                  ; $1d4f : $ea, $50, $e8
	call nz, $7ba4                                                  ; $1d52 : $c4, $a4, $7b
	ld bc, $9b11                                                  ; $1d55 : $01, $11, $9b
	scf                                                  ; $1d58 : $37
	ld a, (de)                                                  ; $1d59 : $1a
	ret                                                  ; $1d5a : $c9


	dec bc                                                  ; $1d5b : $0b
	pop hl                                                  ; $1d5c : $e1
	call $53ea                                                  ; $1d5d : $cd, $ea, $53
	ret po                                                  ; $1d60 : $e0

	ld l, l                                                  ; $1d61 : $6d
	djnz br_04_1d70                                                  ; $1d62 : $10, $0c
	sbc a, a                                                  ; $1d64 : $9f
	push de                                                  ; $1d65 : $d5
	ld e, e                                                  ; $1d66 : $5b
	call pe, $ebfe                                                  ; $1d67 : $ec, $fe, $eb
	rra                                                  ; $1d6a : $1f
	ret pe                                                  ; $1d6b : $e8

	and a                                                  ; $1d6c : $a7
	call po, $e196                                                  ; $1d6d : $e4, $96, $e1

br_04_1d70:
	scf                                                  ; $1d70 : $37
	ld l, a                                                  ; $1d71 : $6f
	dec bc                                                  ; $1d72 : $0b
	call po, $e19c                                                  ; $1d73 : $e4, $9c, $e1
	xor d                                                  ; $1d76 : $aa
	ret pe                                                  ; $1d77 : $e8

Call_04_1d78:
	ld d, e                                                  ; $1d78 : $53
	inc c                                                  ; $1d79 : $0c
	jp z, $68e3                                                  ; $1d7a : $ca, $e3, $68
	ret po                                                  ; $1d7d : $e0

	cp $98                                                  ; $1d7e : $fe, $98
	call pe, $ec32                                                  ; $1d80 : $ec, $32, $ec
	ccf                                                  ; $1d83 : $3f
	cpl                                                  ; $1d84 : $2f
	dec bc                                                  ; $1d85 : $0b
	and $10                                                  ; $1d86 : $e6, $10
	call pe, $ec0d                                                  ; $1d88 : $ec, $0d, $ec
	dec (hl)                                                  ; $1d8b : $35
	call pe, Call_04_0a34                                                  ; $1d8c : $ec, $34, $0a
	rst $08                                                  ; $1d8f : $cf
	or h                                                  ; $1d90 : $b4
	jp po, $e9c0                                                  ; $1d91 : $e2, $c0, $e9
	ld (hl), h                                                  ; $1d94 : $74
	cp e                                                  ; $1d95 : $bb
	ex (sp), hl                                                  ; $1d96 : $e3
	call m, $e70b                                                  ; $1d97 : $fc, $0b, $e7
	add a, $ed                                                  ; $1d9a : $c6, $ed
	ld c, c                                                  ; $1d9c : $49
	rst $20                                                  ; $1d9d : $e7
	sbc a, c                                                  ; $1d9e : $99
	ld b, $61                                                  ; $1d9f : $06, $61
	pop hl                                                  ; $1da1 : $e1
	ld e, d                                                  ; $1da2 : $5a
	scf                                                  ; $1da3 : $37
	inc e                                                  ; $1da4 : $1c
	dec bc                                                  ; $1da5 : $0b
	rlca                                                  ; $1da6 : $07
	ex af, af'                                                  ; $1da7 : $08
	add hl, bc                                                  ; $1da8 : $09
	ex de, hl                                                  ; $1da9 : $eb
	ld a, ($d009)                                                  ; $1daa : $3a, $09, $d0
	inc c                                                  ; $1dad : $0c
	ex de, hl                                                  ; $1dae : $eb
	inc b                                                  ; $1daf : $04
	call pe, $ec20                                                  ; $1db0 : $ec, $20, $ec
	adc a, l                                                  ; $1db3 : $8d
	dec bc                                                  ; $1db4 : $0b
	pop hl                                                  ; $1db5 : $e1
	inc d                                                  ; $1db6 : $14
	ret po                                                  ; $1db7 : $e0

	call p, Call_04_3fe5                                                  ; $1db8 : $f4, $e5, $3f
	push hl                                                  ; $1dbb : $e5
	ld b, b                                                  ; $1dbc : $40
	rla                                                  ; $1dbd : $17
	ret                                                  ; $1dbe : $c9


	call po, $9269                                                  ; $1dbf : $e4, $69, $92
	rst $20                                                  ; $1dc2 : $e7
	add hl, hl                                                  ; $1dc3 : $29
	ld d, (hl)                                                  ; $1dc4 : $56
	jp (hl)                                                  ; $1dc5 : $e9


	dec e                                                  ; $1dc6 : $1d
	ret po                                                  ; $1dc7 : $e0

	adc a, a                                                  ; $1dc8 : $8f
	ccf                                                  ; $1dc9 : $3f
	.db $ed                                                  ; $1dca : $ed
	sbc a, (hl)                                                  ; $1dcb : $9e
	call po, $63c5                                                  ; $1dcc : $e4, $c5, $63
	rst $20                                                  ; $1dcf : $e7
	ld (bc), a                                                  ; $1dd0 : $02
	sub d                                                  ; $1dd1 : $92
	jp pe, Jump_04_0bad                                                  ; $1dd2 : $ea, $ad, $0b
	rst $20                                                  ; $1dd5 : $e7
	add hl, sp                                                  ; $1dd6 : $39
	jp pe, $e4ae                                                  ; $1dd7 : $ea, $ae, $e4
	ret m                                                  ; $1dda : $f8

	call po, Call_04_0bf7                                                  ; $1ddb : $e4, $f7, $0b
	or h                                                  ; $1dde : $b4
	ex de, hl                                                  ; $1ddf : $eb
	pop bc                                                  ; $1de0 : $c1
	sub e                                                  ; $1de1 : $93
	im 1                                                  ; $1de2 : $ed, $56
	sub d                                                  ; $1de4 : $92
	ex de, hl                                                  ; $1de5 : $eb
	xor c                                                  ; $1de6 : $a9
	ld l, a                                                  ; $1de7 : $6f
	dec bc                                                  ; $1de8 : $0b
	jp (hl)                                                  ; $1de9 : $e9


	ld l, b                                                  ; $1dea : $68
	rst $20                                                  ; $1deb : $e7
	ld e, b                                                  ; $1dec : $58
	push hl                                                  ; $1ded : $e5
	add hl, bc                                                  ; $1dee : $09
	inc c                                                  ; $1def : $0c
	call z, $dce9                                                  ; $1df0 : $cc, $e9, $dc
	jp nc, $ed0c                                                  ; $1df3 : $d2, $0c, $ed
	ld b, $e4                                                  ; $1df6 : $06, $e4
	.db $ed                                                  ; $1df8 : $ed
	.db $ed                                                  ; $1df9 : $ed
	ld d, l                                                  ; $1dfa : $55
	dec bc                                                  ; $1dfb : $0b
	.db $ed                                                  ; $1dfc : $ed
	rst $10                                                  ; $1dfd : $d7
	call pe, $eb28                                                  ; $1dfe : $ec, $28, $eb
	xor c                                                  ; $1e01 : $a9
	dec c                                                  ; $1e02 : $0d
	call po, $ed9f                                                  ; $1e03 : $e4, $9f, $ed
	ld d, a                                                  ; $1e06 : $57
	jp (hl)                                                  ; $1e07 : $e9


	in a, ($eb)                                                  ; $1e08 : $db, $eb
	xor c                                                  ; $1e0a : $a9
	rst $10                                                  ; $1e0b : $d7
	inc c                                                  ; $1e0c : $0c
	push hl                                                  ; $1e0d : $e5
	push hl                                                  ; $1e0e : $e5
	ld a, (bc)                                                  ; $1e0f : $0a
	ret pe                                                  ; $1e10 : $e8

	add a, h                                                  ; $1e11 : $84
	call po, $e907                                                  ; $1e12 : $e4, $07, $e9
	ld l, b                                                  ; $1e15 : $68
	inc c                                                  ; $1e16 : $0c
	call z, $a3e7                                                  ; $1e17 : $cc, $e7, $a3
	cpl                                                  ; $1e1a : $2f
	or e                                                  ; $1e1b : $b3
	ld b, a                                                  ; $1e1c : $47
	call pe, $b9e7                                                  ; $1e1d : $ec, $e7, $b9
	call po, $0b01                                                  ; $1e20 : $e4, $01, $0b
	rst $20                                                  ; $1e23 : $e7
	inc b                                                  ; $1e24 : $04
	rrca                                                  ; $1e25 : $0f
	jp po, Jump_04_08fb                                                  ; $1e26 : $e2, $fb, $08
	res 5, d                                                  ; $1e29 : $cb, $aa
	or e                                                  ; $1e2b : $b3
	ld e, e                                                  ; $1e2c : $5b
	ret pe                                                  ; $1e2d : $e8

	add a, b                                                  ; $1e2e : $80
	add a, d                                                  ; $1e2f : $82
	dec bc                                                  ; $1e30 : $0b
	rrca                                                  ; $1e31 : $0f
	push hl                                                  ; $1e32 : $e5
	cp $ed                                                  ; $1e33 : $fe, $ed
	add hl, sp                                                  ; $1e35 : $39
	rrca                                                  ; $1e36 : $0f
	pop de                                                  ; $1e37 : $d1
	or h                                                  ; $1e38 : $b4
	ex (sp), hl                                                  ; $1e39 : $e3
	ld sp, hl                                                  ; $1e3a : $f9
	.db $ed                                                  ; $1e3b : $ed
	ld d, l                                                  ; $1e3c : $55
	jp nc, $1eec                                                  ; $1e3d : $d2, $ec, $1e
	inc l                                                  ; $1e40 : $2c
	ex de, hl                                                  ; $1e41 : $eb
	xor c                                                  ; $1e42 : $a9
	.db $ed                                                  ; $1e43 : $ed
	sbc a, h                                                  ; $1e44 : $9c
	dec bc                                                  ; $1e45 : $0b
	ret pe                                                  ; $1e46 : $e8

	push hl                                                  ; $1e47 : $e5
	push hl                                                  ; $1e48 : $e5
	and (hl)                                                  ; $1e49 : $a6
	ex (sp), hl                                                  ; $1e4a : $e3
	jp m, $cc0c                                                  ; $1e4b : $fa, $0c, $cc
	ld h, e                                                  ; $1e4e : $63
	sub c                                                  ; $1e4f : $91
	push bc                                                  ; $1e50 : $c5
	cp d                                                  ; $1e51 : $ba
	and $c3                                                  ; $1e52 : $e6, $c3
	ld (hl), d                                                  ; $1e54 : $72
	ld d, (hl)                                                  ; $1e55 : $56
	push hl                                                  ; $1e56 : $e5
	rlca                                                  ; $1e57 : $07
	dec bc                                                  ; $1e58 : $0b
	jp pe, $eae7                                                  ; $1e59 : $ea, $e7, $ea
	or c                                                  ; $1e5c : $b1
	jp pe, Jump_04_0ede                                                  ; $1e5d : $ea, $de, $0e
	adc a, $e5                                                  ; $1e60 : $ce, $e5
	push hl                                                  ; $1e62 : $e5
	jp (hl)                                                  ; $1e63 : $e9


	adc a, (hl)                                                  ; $1e64 : $8e
	sbc a, d                                                  ; $1e65 : $9a
	call pe, $92c9                                                  ; $1e66 : $ec, $c9, $92
	inc c                                                  ; $1e69 : $0c
	.db $ed                                                  ; $1e6a : $ed
	sbc a, d                                                  ; $1e6b : $9a
	cpl                                                  ; $1e6c : $2f
	dec bc                                                  ; $1e6d : $0b
	call pe, $e1ff                                                  ; $1e6e : $ec, $ff, $e1
	rst $18                                                  ; $1e71 : $df
	ex (sp), hl                                                  ; $1e72 : $e3
	ccf                                                  ; $1e73 : $3f
	dec c                                                  ; $1e74 : $0d
	or h                                                  ; $1e75 : $b4
	ex (sp), hl                                                  ; $1e76 : $e3
	ld h, d                                                  ; $1e77 : $62
	jp pe, Jump_04_16a3                                                  ; $1e78 : $ea, $a3, $16
	call po, $9292                                                  ; $1e7b : $e4, $92, $92
	sub c                                                  ; $1e7e : $91
	push bc                                                  ; $1e7f : $c5
	ld l, (hl)                                                  ; $1e80 : $6e
	ld a, (bc)                                                  ; $1e81 : $0a
	.db $ed                                                  ; $1e82 : $ed
	sbc a, h                                                  ; $1e83 : $9c
	call pe, $ec3e                                                  ; $1e84 : $ec, $3e, $ec
	or d                                                  ; $1e87 : $b2
	call pe, $0bb1                                                  ; $1e88 : $ec, $b1, $0b
	sub c                                                  ; $1e8b : $91
	push bc                                                  ; $1e8c : $c5
	ret pe                                                  ; $1e8d : $e8

	add hl, hl                                                  ; $1e8e : $29

Jump_04_1e8f:
	ex (sp), hl                                                  ; $1e8f : $e3
	ld a, (de)                                                  ; $1e90 : $1a
	ld h, h                                                  ; $1e91 : $64
	jp (hl)                                                  ; $1e92 : $e9


	dec h                                                  ; $1e93 : $25
	ld l, (hl)                                                  ; $1e94 : $6e
	ld a, (bc)                                                  ; $1e95 : $0a
	call pe, $ed3e                                                  ; $1e96 : $ec, $3e, $ed
	sbc a, h                                                  ; $1e99 : $9c
	dec sp                                                  ; $1e9a : $3b
	ex (sp), hl                                                  ; $1e9b : $e3
	ld d, e                                                  ; $1e9c : $53
	ld c, $0c                                                  ; $1e9d : $0e, $0c
	ret pe                                                  ; $1e9f : $e8

	ld b, c                                                  ; $1ea0 : $41
	nop                                                  ; $1ea1 : $00
	ex (sp), hl                                                  ; $1ea2 : $e3
	ld a, h                                                  ; $1ea3 : $7c
	ex (sp), hl                                                  ; $1ea4 : $e3
	ld d, l                                                  ; $1ea5 : $55
	ld h, l                                                  ; $1ea6 : $65
	sub c                                                  ; $1ea7 : $91
	call po, $6ed7                                                  ; $1ea8 : $e4, $d7, $6e
	ld a, (bc)                                                  ; $1eab : $0a
	jp po, $ec30                                                  ; $1eac : $e2, $30, $ec
	rst $38                                                  ; $1eaf : $ff

br_04_1eb0:
	call pe, Call_04_07ee                                                  ; $1eb0 : $ec, $ee, $07
	call $47e8                                                  ; $1eb3 : $cd, $e8, $47
	rst $20                                                  ; $1eb6 : $e7
	ld (hl), e                                                  ; $1eb7 : $73
	cpl                                                  ; $1eb8 : $2f
	dec bc                                                  ; $1eb9 : $0b
	and $70                                                  ; $1eba : $e6, $70
	rst $20                                                  ; $1ebc : $e7
	jp z, $4ae7                                                  ; $1ebd : $ca, $e7, $4a
	ld a, (bc)                                                  ; $1ec0 : $0a
	or h                                                  ; $1ec1 : $b4
	call po, $923d                                                  ; $1ec2 : $e4, $3d, $92
	inc c                                                  ; $1ec5 : $0c
	rst $20                                                  ; $1ec6 : $e7
	ld (hl), e                                                  ; $1ec7 : $73
	ret po                                                  ; $1ec8 : $e0

	ei                                                  ; $1ec9 : $fb
	ld a, (bc)                                                  ; $1eca : $0a
	jp (hl)                                                  ; $1ecb : $e9


	xor h                                                  ; $1ecc : $ac
	pop hl                                                  ; $1ecd : $e1
	dec hl                                                  ; $1ece : $2b
	jp (hl)                                                  ; $1ecf : $e9


	sub l                                                  ; $1ed0 : $95
	dec bc                                                  ; $1ed1 : $0b
	adc a, $eb                                                  ; $1ed2 : $ce, $eb
	ld (bc), a                                                  ; $1ed4 : $02
	adc a, c                                                  ; $1ed5 : $89
	ld d, c                                                  ; $1ed6 : $51
	jr br_04_1eb0                                                  ; $1ed7 : $18, $d7

Jump_04_1ed9:
	inc c                                                  ; $1ed9 : $0c
	pop hl                                                  ; $1eda : $e1
	ld b, b                                                  ; $1edb : $40
	dec bc                                                  ; $1edc : $0b
	ex de, hl                                                  ; $1edd : $eb
	set 4, a                                                  ; $1ede : $cb, $e7
	add a, c                                                  ; $1ee0 : $81
	in d, (c)                                                  ; $1ee1 : $ed, $50
	ld r, a                                                  ; $1ee3 : $ed, $4f
	ld a, (de)                                                  ; $1ee5 : $1a
	res 6, h                                                  ; $1ee6 : $cb, $b4
	jp po, $92b6                                                  ; $1ee8 : $e2, $b6, $92
	jp po, Jump_04_18ce                                                  ; $1eeb : $e2, $ce, $18
	call pe, $1f26                                                  ; $1eee : $ec, $26, $1f
	push hl                                                  ; $1ef1 : $e5
	rrca                                                  ; $1ef2 : $0f
	ld d, $ec                                                  ; $1ef3 : $16, $ec
	cp (hl)                                                  ; $1ef5 : $be
	push de                                                  ; $1ef6 : $d5
	call po, Call_04_2591                                                  ; $1ef7 : $e4, $91, $25
	call po, $16ca                                                  ; $1efa : $e4, $ca, $16
	jp pe, Jump_04_0b72                                                  ; $1efd : $ea, $72, $0b
	rst $20                                                  ; $1f00 : $e7
	add a, c                                                  ; $1f01 : $81
	and $68                                                  ; $1f02 : $e6, $68
	ret po                                                  ; $1f04 : $e0

	cp a                                                  ; $1f05 : $bf
	ret po                                                  ; $1f06 : $e0

	cp (hl)                                                  ; $1f07 : $be
	rrca                                                  ; $1f08 : $0f
	cpdr                                                  ; $1f09 : $ed, $b9
	ret pe                                                  ; $1f0b : $e8

	out ($93), a                                                  ; $1f0c : $d3, $93
	call po, $b3ca                                                  ; $1f0e : $e4, $ca, $b3
	push hl                                                  ; $1f11 : $e5
	ld c, (hl)                                                  ; $1f12 : $4e
	ret pe                                                  ; $1f13 : $e8

Jump_04_1f14:
	rst $28                                                  ; $1f14 : $ef
	ld d, a                                                  ; $1f15 : $57
	push bc                                                  ; $1f16 : $c5
	dec bc                                                  ; $1f17 : $0b
	call po, $e8c3                                                  ; $1f18 : $e4, $c3, $e8
	inc hl                                                  ; $1f1b : $23
	push hl                                                  ; $1f1c : $e5
	ld d, h                                                  ; $1f1d : $54
	push hl                                                  ; $1f1e : $e5
	ld d, l                                                  ; $1f1f : $55
	rrca                                                  ; $1f20 : $0f
	rr b                                                  ; $1f21 : $cb, $18
	.db $ed                                                  ; $1f23 : $ed
	jp $ec27                                                  ; $1f24 : $c3, $27, $ec


	ld a, d                                                  ; $1f27 : $7a
	ld (hl), b                                                  ; $1f28 : $70
	jp pe, $1fe2                                                  ; $1f29 : $ea, $e2, $1f
	or (hl)                                                  ; $1f2c : $b6
	call po, Call_04_0b45                                                  ; $1f2d : $e4, $45, $0b
	.db $ed                                                  ; $1f30 : $ed
	adc a, c                                                  ; $1f31 : $89
	rst $20                                                  ; $1f32 : $e7
	add a, c                                                  ; $1f33 : $81
	jp po, $e2ce                                                  ; $1f34 : $e2, $ce, $e2
	call $c911                                                  ; $1f37 : $cd, $11, $c9
	jp po, $9258                                                  ; $1f3a : $e2, $58, $92
	in d, (c)                                                  ; $1f3d : $ed, $50
	and $3f                                                  ; $1f3f : $e6, $3f
	ret po                                                  ; $1f41 : $e0

	xor b                                                  ; $1f42 : $a8
	nop                                                  ; $1f43 : $00
	ex de, hl                                                  ; $1f44 : $eb
	adc a, (hl)                                                  ; $1f45 : $8e
	ld d, $ed                                                  ; $1f46 : $16, $ed
	add hl, bc                                                  ; $1f48 : $09
	dec bc                                                  ; $1f49 : $0b
	ret po                                                  ; $1f4a : $e0

	cp (hl)                                                  ; $1f4b : $be
	.db $ed                                                  ; $1f4c : $ed
	adc a, c                                                  ; $1f4d : $89
	jp pe, $ea72                                                  ; $1f4e : $ea, $72, $ea
	ld (hl), e                                                  ; $1f51 : $73
	ld (de), a                                                  ; $1f52 : $12
	or h                                                  ; $1f53 : $b4
	jp po, $567f                                                  ; $1f54 : $e2, $7f, $56
	call po, $ba15                                                  ; $1f57 : $e4, $15, $ba
	ret po                                                  ; $1f5a : $e0

	add a, (hl)                                                  ; $1f5b : $86
	or e                                                  ; $1f5c : $b3
	inc c                                                  ; $1f5d : $0c
	jp po, $ed0d                                                  ; $1f5e : $e2, $0d, $ed
	jr br_04_1fd1                                                  ; $1f61 : $18, $6e

	inc c                                                  ; $1f63 : $0c
	ld a, (bc)                                                  ; $1f64 : $0a
	rst $20                                                  ; $1f65 : $e7
	add a, e                                                  ; $1f66 : $83
	jp (hl)                                                  ; $1f67 : $e9


	ld d, (hl)                                                  ; $1f68 : $56
	rst $20                                                  ; $1f69 : $e7
	rl d                                                  ; $1f6a : $cb, $12
	call z, Call_04_2f72                                                  ; $1f6c : $cc, $72, $2f
	jp nc, $e718                                                  ; $1f6f : $d2, $18, $e7
	ld sp, $cfeb                                                  ; $1f72 : $31, $eb, $cf
	ld d, $e6                                                  ; $1f75 : $16, $e6
	sub l                                                  ; $1f77 : $95
	jp pe, Jump_04_275b                                                  ; $1f78 : $ea, $5b, $27
	jp (hl)                                                  ; $1f7b : $e9


	dec d                                                  ; $1f7c : $15
	dec bc                                                  ; $1f7d : $0b
	jp po, $e1be                                                  ; $1f7e : $e2, $be, $e1
	or h                                                  ; $1f81 : $b4
	jp pe, Jump_04_1558                                                  ; $1f82 : $ea, $58, $15
	jp nc, $e10c                                                  ; $1f85 : $d2, $0c, $e1
	ld (hl), l                                                  ; $1f88 : $75
	sbc a, d                                                  ; $1f89 : $9a
	inc c                                                  ; $1f8a : $0c
	ex de, hl                                                  ; $1f8b : $eb
	ld e, (hl)                                                  ; $1f8c : $5e
	ex de, hl                                                  ; $1f8d : $eb
	ld b, a                                                  ; $1f8e : $47
	ld (hl), h                                                  ; $1f8f : $74
	ret pe                                                  ; $1f90 : $e8

	call po, $78eb                                                  ; $1f91 : $e4, $eb, $78
	nop                                                  ; $1f94 : $00
	call z, $e372                                                  ; $1f95 : $cc, $72, $e3
	rst $08                                                  ; $1f98 : $cf
	dec bc                                                  ; $1f99 : $0b
	call po, $e3ac                                                  ; $1f9a : $e4, $ac, $e3
	jp p, $fde7                                                  ; $1f9d : $f2, $e7, $fd
	dec c                                                  ; $1fa0 : $0d
	call z, $2c80                                                  ; $1fa1 : $cc, $80, $2c
	jp po, $e0dd                                                  ; $1fa4 : $e2, $dd, $e0
	ld b, e                                                  ; $1fa7 : $43
	sbc a, d                                                  ; $1fa8 : $9a
	ret pe                                                  ; $1fa9 : $e8

	ld c, $e1                                                  ; $1faa : $0e, $e1
	inc h                                                  ; $1fac : $24
	dec bc                                                  ; $1fad : $0b
	jp po, $ecf0                                                  ; $1fae : $e2, $f0, $ec
	inc hl                                                  ; $1fb1 : $23
	rst $20                                                  ; $1fb2 : $e7
	ei                                                  ; $1fb3 : $fb
	ld (de), a                                                  ; $1fb4 : $12
	inc c                                                  ; $1fb5 : $0c
	call pe, $d423                                                  ; $1fb6 : $ec, $23, $d4
	jp po, Jump_04_242d                                                  ; $1fb9 : $e2, $2d, $24
	jp po, $6a7e                                                  ; $1fbc : $e2, $7e, $6a
	inc c                                                  ; $1fbf : $0c
	ex de, hl                                                  ; $1fc0 : $eb
	ld l, h                                                  ; $1fc1 : $6c
	call pe, $6e23                                                  ; $1fc2 : $ec, $23, $6e
	inc d                                                  ; $1fc5 : $14
	ld a, (bc)                                                  ; $1fc6 : $0a
	rst $20                                                  ; $1fc7 : $e7
	ld sp, hl                                                  ; $1fc8 : $f9
	rst $20                                                  ; $1fc9 : $e7
	or $e4                                                  ; $1fca : $f6, $e4
	ld ($820f), hl                                                  ; $1fcc : $22, $0f, $82
	or e                                                  ; $1fcf : $b3
	ld l, h                                                  ; $1fd0 : $6c

br_04_1fd1:
	add a, b                                                  ; $1fd1 : $80
	ret nz                                                  ; $1fd2 : $c0

	sub d                                                  ; $1fd3 : $92
	ret pe                                                  ; $1fd4 : $e8

	ld c, $ec                                                  ; $1fd5 : $0e, $ec
	add a, (hl)                                                  ; $1fd7 : $86
	sbc a, c                                                  ; $1fd8 : $99
	call po, $6f22                                                  ; $1fd9 : $e4, $22, $6f
	dec bc                                                  ; $1fdc : $0b
	call pe, $e123                                                  ; $1fdd : $ec, $23, $e1
	ld ($f0e2), hl                                                  ; $1fe0 : $22, $e2, $f0
	inc d                                                  ; $1fe3 : $14
	or h                                                  ; $1fe4 : $b4
	call po, $92ef                                                  ; $1fe5 : $e4, $ef, $92
	jp po, $653c                                                  ; $1fe8 : $e2, $3c, $65
	jp po, $eca0                                                  ; $1feb : $e2, $a0, $ec
	cp c                                                  ; $1fee : $b9
	sub d                                                  ; $1fef : $92
	jp (hl)                                                  ; $1ff0 : $e9


	ld a, d                                                  ; $1ff1 : $7a
	call po, $ba7f                                                  ; $1ff2 : $e4, $7f, $ba
	ld a, e                                                  ; $1ff5 : $7b
	ld l, (hl)                                                  ; $1ff6 : $6e
	ld a, (bc)                                                  ; $1ff7 : $0a
	rst $20                                                  ; $1ff8 : $e7
	set 4, d                                                  ; $1ff9 : $cb, $e2
	ret m                                                  ; $1ffb : $f8

	jp (hl)                                                  ; $1ffc : $e9


	ld d, (hl)                                                  ; $1ffd : $56
	rlca                                                  ; $1ffe : $07
	ld h, c                                                  ; $1fff : $61
	push hl                                                  ; $2000 : $e5
	ld (hl), l                                                  ; $2001 : $75
	dec de                                                  ; $2002 : $1b
	and $cf                                                  ; $2003 : $e6, $cf
	dec bc                                                  ; $2005 : $0b
	ret po                                                  ; $2006 : $e0

	ld e, c                                                  ; $2007 : $59
	ret po                                                  ; $2008 : $e0

	ld b, (hl)                                                  ; $2009 : $46
	ret po                                                  ; $200a : $e0

	dec de                                                  ; $200b : $1b
	ret pe                                                  ; $200c : $e8

	jp nz, $eb17                                                  ; $200d : $c2, $17, $eb
	ld de, $8ce3                                                  ; $2010 : $11, $e3, $8c
	sbc a, b                                                  ; $2013 : $98
	ex (sp), hl                                                  ; $2014 : $e3
	.db $fd                                                  ; $2015 : $fd
	ret pe                                                  ; $2016 : $e8

	ld h, $1e                                                  ; $2017 : $26, $1e
	or l                                                  ; $2019 : $b5
	ld d, $ed                                                  ; $201a : $16, $ed
	daa                                                  ; $201c : $27
	or h                                                  ; $201d : $b4
	call pe, $93b4                                                  ; $201e : $ec, $b4, $93
	ex (sp), hl                                                  ; $2021 : $e3
	call m, $7496                                                  ; $2022 : $fc, $96, $74
	ld a, (bc)                                                  ; $2025 : $0a
	rst $20                                                  ; $2026 : $e7
	rst $00                                                  ; $2027 : $c7
	call po, $e14a                                                  ; $2028 : $e4, $4a, $e1
	jr c, br_04_2039                                                  ; $202b : $38, $0c

	adc a, $e7                                                  ; $202d : $ce, $e7
	or b                                                  ; $202f : $b0
	sub d                                                  ; $2030 : $92
	rst $20                                                  ; $2031 : $e7
	and b                                                  ; $2032 : $a0
	jp (hl)                                                  ; $2033 : $e9


	scf                                                  ; $2034 : $37
	.db $ed                                                  ; $2035 : $ed
	halt                                                  ; $2036 : $76
	cpl                                                  ; $2037 : $2f
	dec bc                                                  ; $2038 : $0b

br_04_2039:
	.db $ed                                                  ; $2039 : $ed
	and h                                                  ; $203a : $a4
	call pe, $e399                                                  ; $203b : $ec, $99, $e3
	adc a, d                                                  ; $203e : $8a
	ld c, $ce                                                  ; $203f : $0e, $ce
	jp (hl)                                                  ; $2041 : $e9


	adc a, (hl)                                                  ; $2042 : $8e
	cpl                                                  ; $2043 : $2f
	jp nc, $eb0c                                                  ; $2044 : $d2, $0c, $eb
	sbc a, h                                                  ; $2047 : $9c
	.db $ed                                                  ; $2048 : $ed
	ex af, af'                                                  ; $2049 : $08
	ld l, d                                                  ; $204a : $6a
	inc c                                                  ; $204b : $0c
	ld a, l                                                  ; $204c : $7d
	dec bc                                                  ; $204d : $0b
	push hl                                                  ; $204e : $e5
	rlca                                                  ; $204f : $07
	call pe, $e7e2                                                  ; $2050 : $ec, $e2, $e7
	pop bc                                                  ; $2053 : $c1
	inc c                                                  ; $2054 : $0c
	call z, Call_04_2f72                                                  ; $2055 : $cc, $72, $2f
	jp nc, $7d0c                                                  ; $2058 : $d2, $0c, $7d
	.db $ed                                                  ; $205b : $ed
	ex af, af'                                                  ; $205c : $08
	ld l, d                                                  ; $205d : $6a
	inc c                                                  ; $205e : $0c
	ld e, b                                                  ; $205f : $58
	dec bc                                                  ; $2060 : $0b
	rst $20                                                  ; $2061 : $e7
	pop bc                                                  ; $2062 : $c1
	pop hl                                                  ; $2063 : $e1
	or a                                                  ; $2064 : $b7
	call po, Call_04_0b64                                                  ; $2065 : $e4, $64, $0b
	ret                                                  ; $2068 : $c9


	and $55                                                  ; $2069 : $e6, $55
	ld l, h                                                  ; $206b : $6c
	pop bc                                                  ; $206c : $c1
	rst $20                                                  ; $206d : $e7
	or b                                                  ; $206e : $b0
	rrca                                                  ; $206f : $0f
	jp (hl)                                                  ; $2070 : $e9


	cp a                                                  ; $2071 : $bf
	dec bc                                                  ; $2072 : $0b
	call pe, $ed95                                                  ; $2073 : $ec, $95, $ed
	ret c                                                  ; $2076 : $d8

	pop hl                                                  ; $2077 : $e1
	ld d, d                                                  ; $2078 : $52
	dec bc                                                  ; $2079 : $0b
	push bc                                                  ; $207a : $c5
	jp pe, $ba86                                                  ; $207b : $ea, $86, $ba
	call pe, $578d                                                  ; $207e : $ec, $8d, $57
	pop hl                                                  ; $2081 : $e1
	jr nz, br_04_20f3                                                  ; $2082 : $20, $6f

	dec bc                                                  ; $2084 : $0b
	.db $ed                                                  ; $2085 : $ed
	ccf                                                  ; $2086 : $3f
	and $1a                                                  ; $2087 : $e6, $1a
	jp (hl)                                                  ; $2089 : $e9


	or a                                                  ; $208a : $b7
	ld a, (bc)                                                  ; $208b : $0a
	res 6, h                                                  ; $208c : $cb, $b4
	call pe, $9221                                                  ; $208e : $ec, $21, $92
	jp pe, Jump_04_16b1                                                  ; $2091 : $ea, $b1, $16
	xor b                                                  ; $2094 : $a8
	dec bc                                                  ; $2095 : $0b
	push hl                                                  ; $2096 : $e5
	ld a, $e0                                                  ; $2097 : $3e, $e0
	exx                                                  ; $2099 : $d9
	push hl                                                  ; $209a : $e5
	ld b, c                                                  ; $209b : $41
	ex af, af'                                                  ; $209c : $08
	ld h, c                                                  ; $209d : $61
	pop hl                                                  ; $209e : $e1
	cp a                                                  ; $209f : $bf
	inc e                                                  ; $20a0 : $1c
	ld h, l                                                  ; $20a1 : $65
	ld h, d                                                  ; $20a2 : $62
	daa                                                  ; $20a3 : $27
	dec bc                                                  ; $20a4 : $0b
	cp $fe                                                  ; $20a5 : $fe, $fe
	ld sp, $3031                                                  ; $20a7 : $31, $31, $30
	rst $38                                                  ; $20aa : $ff
	cp $fe                                                  ; $20ab : $fe, $fe
	dec (hl)                                                  ; $20ad : $35
	ld sp, $ff32                                                  ; $20ae : $31, $32, $ff
	cp $fe                                                  ; $20b1 : $fe, $fe
	ld ($3630), a                                                  ; $20b3 : $32, $30, $36
	rst $38                                                  ; $20b6 : $ff
	inc c                                                  ; $20b7 : $0c
	adc a, $e7                                                  ; $20b8 : $ce, $e7
	call po, $e7b3                                                  ; $20ba : $e4, $b3, $e7
	ld a, h                                                  ; $20bd : $7c
	or h                                                  ; $20be : $b4
	pop hl                                                  ; $20bf : $e1
	cp a                                                  ; $20c0 : $bf

br_04_20c1:
	push hl                                                  ; $20c1 : $e5
	or e                                                  ; $20c2 : $b3
	dec bc                                                  ; $20c3 : $0b
	.db $ed                                                  ; $20c4 : $ed
	ld l, e                                                  ; $20c5 : $6b
	and $70                                                  ; $20c6 : $e6, $70
	jp po, $1217                                                  ; $20c8 : $e2, $17, $12
	jp z, $1cec                                                  ; $20cb : $ca, $ec, $1c
	call pe, $b3b9                                                  ; $20ce : $ec, $b9, $b3
	push hl                                                  ; $20d1 : $e5
	ret m                                                  ; $20d2 : $f8

	or h                                                  ; $20d3 : $b4
	pop hl                                                  ; $20d4 : $e1
	cp a                                                  ; $20d5 : $bf
	call pe, $e1c0                                                  ; $20d6 : $ec, $c0, $e1
	jr br_04_20c1                                                  ; $20d9 : $18, $e6

	xor l                                                  ; $20db : $ad
	dec bc                                                  ; $20dc : $0b
	call pe, $e87d                                                  ; $20dd : $ec, $7d, $e8
	inc sp                                                  ; $20e0 : $33
	rst $20                                                  ; $20e1 : $e7
	dec hl                                                  ; $20e2 : $2b
	rlca                                                  ; $20e3 : $07
	rst $08                                                  ; $20e4 : $cf
	or h                                                  ; $20e5 : $b4
	push hl                                                  ; $20e6 : $e5
	ret z                                                  ; $20e7 : $c8

	ret pe                                                  ; $20e8 : $e8

	ld ($ed0b), a                                                  ; $20e9 : $32, $0b, $ed
	ld (hl), a                                                  ; $20ec : $77
	and $69                                                  ; $20ed : $e6, $69
	jp po, $e240                                                  ; $20ef : $e2, $40, $e2
	ccf                                                  ; $20f2 : $3f

br_04_20f3:
	ld de, $e8ca                                                  ; $20f3 : $11, $ca, $e8
	inc sp                                                  ; $20f6 : $33
	cpl                                                  ; $20f7 : $2f
	or e                                                  ; $20f8 : $b3
	ld a, (de)                                                  ; $20f9 : $1a
	dec h                                                  ; $20fa : $25
	xor $1b                                                  ; $20fb : $ee, $1b
	ex de, hl                                                  ; $20fd : $eb
	ld a, c                                                  ; $20fe : $79
	ld d, $ee                                                  ; $20ff : $16, $ee
	dec de                                                  ; $2101 : $1b
	pop hl                                                  ; $2102 : $e1
	cp a                                                  ; $2103 : $bf
	dec bc                                                  ; $2104 : $0b
	call pe, $ec1c                                                  ; $2105 : $ec, $1c, $ec
	ld a, l                                                  ; $2108 : $7d
	ex de, hl                                                  ; $2109 : $eb
	halt                                                  ; $210a : $76
	ex de, hl                                                  ; $210b : $eb
	ld (hl), a                                                  ; $210c : $77
	ld a, (bc)                                                  ; $210d : $0a
	adc a, $e8                                                  ; $210e : $ce, $e8
	call po, Call_04_01e7                                                  ; $2110 : $e4, $e7, $01
	sub d                                                  ; $2113 : $92
	ex de, hl                                                  ; $2114 : $eb
	ld a, c                                                  ; $2115 : $79
	cpl                                                  ; $2116 : $2f
	dec bc                                                  ; $2117 : $0b
	ex (sp), hl                                                  ; $2118 : $e3
	inc sp                                                  ; $2119 : $33

br_04_211a:
	jp (hl)                                                  ; $211a : $e9


	and (hl)                                                  ; $211b : $a6
	call po, Call_04_0d47                                                  ; $211c : $e4, $47, $0d
	pop de                                                  ; $211f : $d1
	or h                                                  ; $2120 : $b4
	pop hl                                                  ; $2121 : $e1
	ret c                                                  ; $2122 : $d8

	ex (sp), hl                                                  ; $2123 : $e3
	inc e                                                  ; $2124 : $1c
	or h                                                  ; $2125 : $b4
	push hl                                                  ; $2126 : $e5
	ret                                                  ; $2127 : $c9


	ld d, $e1                                                  ; $2128 : $16, $e1
	pop hl                                                  ; $212a : $e1
	dec bc                                                  ; $212b : $0b
	jp po, $e871                                                  ; $212c : $e2, $71, $e8
	ld h, c                                                  ; $212f : $61
	rst $20                                                  ; $2130 : $e7
	cp d                                                  ; $2131 : $ba
	ld c, $d1                                                  ; $2132 : $0e, $d1
	or h                                                  ; $2134 : $b4
	pop hl                                                  ; $2135 : $e1
	ret c                                                  ; $2136 : $d8

	ex (sp), hl                                                  ; $2137 : $e3
	inc e                                                  ; $2138 : $1c
	ret pe                                                  ; $2139 : $e8

	jp po, $9dec                                                  ; $213a : $e2, $ec, $9d
	ld d, $e7                                                  ; $213d : $16, $e7
	call nz, $e70b                                                  ; $213f : $c4, $0b, $e7
	cp d                                                  ; $2142 : $ba
	jp po, $e270                                                  ; $2143 : $e2, $70, $e2
	ld (hl), c                                                  ; $2146 : $71
	djnz br_04_211a                                                  ; $2147 : $10, $d1
	or h                                                  ; $2149 : $b4
	pop hl                                                  ; $214a : $e1
	ret c                                                  ; $214b : $d8

	ex (sp), hl                                                  ; $214c : $e3
	inc e                                                  ; $214d : $1c
	ret pe                                                  ; $214e : $e8

	inc sp                                                  ; $214f : $33
	or e                                                  ; $2150 : $b3
	push hl                                                  ; $2151 : $e5
	pop de                                                  ; $2152 : $d1
	jp (hl)                                                  ; $2153 : $e9


	add a, b                                                  ; $2154 : $80
	ex de, hl                                                  ; $2155 : $eb
	pop de                                                  ; $2156 : $d1
	dec bc                                                  ; $2157 : $0b
	rst $20                                                  ; $2158 : $e7
	cp d                                                  ; $2159 : $ba
	jp po, $e271                                                  ; $215a : $e2, $71, $e2
	ld (hl), b                                                  ; $215d : $70
	add hl, bc                                                  ; $215e : $09
	ld b, a                                                  ; $215f : $47
	or e                                                  ; $2160 : $b3
	ret pe                                                  ; $2161 : $e8

	daa                                                  ; $2162 : $27
	cp c                                                  ; $2163 : $b9
	.db $ed                                                  ; $2164 : $ed
	ex (sp), hl                                                  ; $2165 : $e3
	ld l, (hl)                                                  ; $2166 : $6e
	ld a, (bc)                                                  ; $2167 : $0a
	ex de, hl                                                  ; $2168 : $eb
	xor $ed                                                  ; $2169 : $ee, $ed
	ld (hl), h                                                  ; $216b : $74

br_04_216c:
	dec sp                                                  ; $216c : $3b
	ld (de), a                                                  ; $216d : $12
	jp nc, $e8bc                                                  ; $216e : $d2, $bc, $e8
	and a                                                  ; $2171 : $a7
	ld a, (de)                                                  ; $2172 : $1a
	jp pe, $ecc2                                                  ; $2173 : $ea, $c2, $ec
	ret nz                                                  ; $2176 : $c0

	push hl                                                  ; $2177 : $e5
	jp z, $e96c                                                  ; $2178 : $ca, $6c, $e9
	call c, $ebe3                                                  ; $217b : $dc, $e3, $eb
	cp d                                                  ; $217e : $ba
	ld a, (bc)                                                  ; $217f : $0a
	ret pe                                                  ; $2180 : $e8

	add a, (hl)                                                  ; $2181 : $86
	ex de, hl                                                  ; $2182 : $eb
	ld a, (bc)                                                  ; $2183 : $0a
	push hl                                                  ; $2184 : $e5
	inc c                                                  ; $2185 : $0c
	dec bc                                                  ; $2186 : $0b
	adc a, $eb                                                  ; $2187 : $ce, $eb
	ld (bc), a                                                  ; $2189 : $02
	.db $ed                                                  ; $218a : $ed
	ld e, $92                                                  ; $218b : $1e, $92
	rst $20                                                  ; $218d : $e7
	or d                                                  ; $218e : $b2
	sub d                                                  ; $218f : $92
	ld d, e                                                  ; $2190 : $53
	dec bc                                                  ; $2191 : $0b
	jp (hl)                                                  ; $2192 : $e9


	or c                                                  ; $2193 : $b1
	push hl                                                  ; $2194 : $e5
	ld (hl), l                                                  ; $2195 : $75
	ret pe                                                  ; $2196 : $e8

	ld (hl), e                                                  ; $2197 : $73
	djnz br_04_216c                                                  ; $2198 : $10, $d2
	jp po, $ec72                                                  ; $219a : $e2, $72, $ec
	sbc a, h                                                  ; $219d : $9c
	ld a, (de)                                                  ; $219e : $1a
	jp pe, $ecc2                                                  ; $219f : $ea, $c2, $ec
	ret nz                                                  ; $21a2 : $c0

	or a                                                  ; $21a3 : $b7
	jp (hl)                                                  ; $21a4 : $e9


	in a, ($d0)                                                  ; $21a5 : $db, $d0
	ld b, a                                                  ; $21a7 : $47
	dec bc                                                  ; $21a8 : $0b
	dec sp                                                  ; $21a9 : $3b
	rst $20                                                  ; $21aa : $e7
	jp m, $edeb                                                  ; $21ab : $fa, $eb, $ed
	ex de, hl                                                  ; $21ae : $eb
	xor $10                                                  ; $21af : $ee, $10
	adc a, $ed                                                  ; $21b1 : $ce, $ed
	ld e, $e1                                                  ; $21b3 : $1e, $e1
	dec d                                                  ; $21b5 : $15
	.db $ed                                                  ; $21b6 : $ed
	ld sp, $e7ba                                                  ; $21b7 : $31, $ba, $e7
	or b                                                  ; $21ba : $b0
	ex (sp), hl                                                  ; $21bb : $e3
	cp l                                                  ; $21bc : $bd
	dec h                                                  ; $21bd : $25
	ex de, hl                                                  ; $21be : $eb
	jp (hl)                                                  ; $21bf : $e9


	dec bc                                                  ; $21c0 : $0b
	and $d0                                                  ; $21c1 : $e6, $d0
	pop hl                                                  ; $21c3 : $e1
	ld d, $e7                                                  ; $21c4 : $16, $e7
	dec l                                                  ; $21c6 : $2d
	rst $20                                                  ; $21c7 : $e7
	inc l                                                  ; $21c8 : $2c
	inc d                                                  ; $21c9 : $14
	ld h, c                                                  ; $21ca : $61
	rst $20                                                  ; $21cb : $e7
	ex de, hl                                                  ; $21cc : $eb
	ld b, b                                                  ; $21cd : $40
	ld (hl), d                                                  ; $21ce : $72
	call pe, $515d                                                  ; $21cf : $ec, $5d, $51
	ld a, e                                                  ; $21d2 : $7b
	ld d, (hl)                                                  ; $21d3 : $56
	ret pe                                                  ; $21d4 : $e8

	jp po, Jump_04_31ec                                                  ; $21d5 : $e2, $ec, $31
	cp d                                                  ; $21d8 : $ba
	jp pe, $e339                                                  ; $21d9 : $ea, $39, $e3
	call m, $e00b                                                  ; $21dc : $fc, $0b, $e0
	ld d, c                                                  ; $21df : $51
	cp $fe                                                  ; $21e0 : $fe, $fe
	ld sp, $3231                                                  ; $21e2 : $31, $31, $32
	rst $38                                                  ; $21e5 : $ff
	ret po                                                  ; $21e6 : $e0

	ld e, h                                                  ; $21e7 : $5c

Jump_04_21e8:
	call po, Call_04_0619                                                  ; $21e8 : $e4, $19, $06
	rst $08                                                  ; $21eb : $cf
	ret pe                                                  ; $21ec : $e8

	jp po, Jump_04_22e5                                                  ; $21ed : $e2, $e5, $22
	dec bc                                                  ; $21f0 : $0b
	ex de, hl                                                  ; $21f1 : $eb
	sbc a, c                                                  ; $21f2 : $99
	ex de, hl                                                  ; $21f3 : $eb
	jp po, $e0e7                                                  ; $21f4 : $e2, $e7, $e0
	dec c                                                  ; $21f7 : $0d
	call nc, Call_04_22e5                                                  ; $21f8 : $d4, $e5, $22
	ld l, (hl)                                                  ; $21fb : $6e
	or h                                                  ; $21fc : $b4
	.db $ed                                                  ; $21fd : $ed
	inc c                                                  ; $21fe : $0c
	push hl                                                  ; $21ff : $e5
	ld ($e793), hl                                                  ; $2200 : $22, $93, $e7
	ret po                                                  ; $2203 : $e0

	dec bc                                                  ; $2204 : $0b
	rst $20                                                  ; $2205 : $e7
	ld b, a                                                  ; $2206 : $47
	jp po, $e0c2                                                  ; $2207 : $e2, $c2, $e0
	call $cf06                                                  ; $220a : $cd, $06, $cf
	or h                                                  ; $220d : $b4
	adc a, (hl)                                                  ; $220e : $8e
	ex de, hl                                                  ; $220f : $eb
	ret po                                                  ; $2210 : $e0

	dec bc                                                  ; $2211 : $0b
	pop hl                                                  ; $2212 : $e1
	sub (hl)                                                  ; $2213 : $96
	jp pe, $e9f3                                                  ; $2214 : $ea, $f3, $e9
	sub e                                                  ; $2217 : $93
	ld de, $b1ed                                                  ; $2218 : $11, $ed, $b1
	adc a, c                                                  ; $221b : $89
	sub e                                                  ; $221c : $93
	inc b                                                  ; $221d : $04
	ex (sp), hl                                                  ; $221e : $e3
	ld de, $15b3                                                  ; $221f : $11, $b3, $15
	sbc a, (hl)                                                  ; $2222 : $9e
	.db $ed                                                  ; $2223 : $ed
	ld ($0c1f), a                                                  ; $2224 : $32, $1f, $0c
	jp po, Jump_04_0b1a                                                  ; $2227 : $e2, $1a, $0b
	rst $20                                                  ; $222a : $e7
	add hl, de                                                  ; $222b : $19
	ex de, hl                                                  ; $222c : $eb
	ex (sp), hl                                                  ; $222d : $e3
	xor $24                                                  ; $222e : $ee, $24
	ld a, (bc)                                                  ; $2230 : $0a
	rst $08                                                  ; $2231 : $cf
	ld c, b                                                  ; $2232 : $48
	jp nc, $a7e8                                                  ; $2233 : $d2, $e8, $a7
	ld a, (de)                                                  ; $2236 : $1a
	ld h, e                                                  ; $2237 : $63
	ret pe                                                  ; $2238 : $e8

	dec de                                                  ; $2239 : $1b
	dec bc                                                  ; $223a : $0b
	jp (hl)                                                  ; $223b : $e9


	xor a                                                  ; $223c : $af
	ld d, e                                                  ; $223d : $53
	and $d3                                                  ; $223e : $e6, $d3
	inc c                                                  ; $2240 : $0c
	pop de                                                  ; $2241 : $d1
	or h                                                  ; $2242 : $b4
	daa                                                  ; $2243 : $27
	call pe, $e40a                                                  ; $2244 : $ec, $0a, $e4
	add a, h                                                  ; $2247 : $84
	ld c, b                                                  ; $2248 : $48
	adc a, a                                                  ; $2249 : $8f
	.db $ed                                                  ; $224a : $ed
	ld ($e80b), a                                                  ; $224b : $32, $0b, $e8
	inc sp                                                  ; $224e : $33
	call pe, $e47d                                                  ; $224f : $ec, $7d, $e4
	and d                                                  ; $2252 : $a2
	dec c                                                  ; $2253 : $0d
	rst $08                                                  ; $2254 : $cf
	jp pe, $4823                                                  ; $2255 : $ea, $23, $48
	pop bc                                                  ; $2258 : $c1
	rst $20                                                  ; $2259 : $e7
	ld c, b                                                  ; $225a : $48
	jp (hl)                                                  ; $225b : $e9


	ld (hl), e                                                  ; $225c : $73
	ld h, l                                                  ; $225d : $65
	ex de, hl                                                  ; $225e : $eb
	ld a, h                                                  ; $225f : $7c
	dec bc                                                  ; $2260 : $0b
	xor $0a                                                  ; $2261 : $ee, $0a
	jp pe, $ea25                                                  ; $2263 : $ea, $25, $ea
	ld ($ce0a), hl                                                  ; $2266 : $22, $0a, $ce
	call pe, $eb9a                                                  ; $2269 : $ec, $9a, $eb
	ld c, d                                                  ; $226c : $4a
	sub d                                                  ; $226d : $92
	call pe, Call_04_2f8d                                                  ; $226e : $ec, $8d, $2f
	dec bc                                                  ; $2271 : $0b
	rst $20                                                  ; $2272 : $e7
	adc a, b                                                  ; $2273 : $88
	ex de, hl                                                  ; $2274 : $eb
	ld a, c                                                  ; $2275 : $79
	ex (sp), hl                                                  ; $2276 : $e3
	ld c, c                                                  ; $2277 : $49
	inc c                                                  ; $2278 : $0c
	call nc, $55e6                                                  ; $2279 : $d4, $e6, $55
	rst $20                                                  ; $227c : $e7
	or e                                                  ; $227d : $b3
	or h                                                  ; $227e : $b4
	jp (hl)                                                  ; $227f : $e9


	or e                                                  ; $2280 : $b3
	sub d                                                  ; $2281 : $92
	ex (sp), hl                                                  ; $2282 : $e3
	rst $38                                                  ; $2283 : $ff
	dec bc                                                  ; $2284 : $0b
	rld                                                  ; $2285 : $ed, $6f
	jp pe, $eb98                                                  ; $2287 : $ea, $98, $eb
	inc hl                                                  ; $228a : $23
	dec bc                                                  ; $228b : $0b
	.db $ed                                                  ; $228c : $ed
	xor a                                                  ; $228d : $af
	ex de, hl                                                  ; $228e : $eb
	dec b                                                  ; $228f : $05
	cpl                                                  ; $2290 : $2f
	push de                                                  ; $2291 : $d5
	call pe, $e921                                                  ; $2292 : $ec, $21, $e9
	ld a, d                                                  ; $2295 : $7a
	dec bc                                                  ; $2296 : $0b
	.db $ed                                                  ; $2297 : $ed
	ld d, h                                                  ; $2298 : $54
	push hl                                                  ; $2299 : $e5
	ld b, b                                                  ; $229a : $40
	pop hl                                                  ; $229b : $e1
	ret                                                  ; $229c : $c9


	pop hl                                                  ; $229d : $e1
	ret z                                                  ; $229e : $c8

	ld a, (bc)                                                  ; $229f : $0a
	ret                                                  ; $22a0 : $c9


	jp po, Jump_04_3f91                                                  ; $22a1 : $e2, $91, $3f
	ld de, $7ae9                                                  ; $22a4 : $11, $e9, $7a
	ex (sp), hl                                                  ; $22a7 : $e3
	inc de                                                  ; $22a8 : $13
	dec bc                                                  ; $22a9 : $0b
	rst $20                                                  ; $22aa : $e7
	dec bc                                                  ; $22ab : $0b
	ex de, hl                                                  ; $22ac : $eb
	ld e, $e2                                                  ; $22ad : $1e, $e2
	and b                                                  ; $22af : $a0
	ld de, $e2c9                                                  ; $22b0 : $11, $c9, $e2
	inc h                                                  ; $22b3 : $24
	ex (sp), ix                                                  ; $22b4 : $dd, $e3
	inc l                                                  ; $22b6 : $2c
	cp d                                                  ; $22b7 : $ba
	ex (sp), hl                                                  ; $22b8 : $e3
	sub l                                                  ; $22b9 : $95
	or h                                                  ; $22ba : $b4
	ret po                                                  ; $22bb : $e0

	adc a, (hl)                                                  ; $22bc : $8e
	sub d                                                  ; $22bd : $92
	inc c                                                  ; $22be : $0c
	call pe, Call_04_0beb                                                  ; $22bf : $ec, $eb, $0b
	pop hl                                                  ; $22c2 : $e1
	in a, ($e5)                                                  ; $22c3 : $db, $e5
	adc a, $ea                                                  ; $22c5 : $ce, $ea
	sbc a, (hl)                                                  ; $22c7 : $9e
	ld a, (bc)                                                  ; $22c8 : $0a
	call nc, $74e9                                                  ; $22c9 : $d4, $e9, $74
	ld l, h                                                  ; $22cc : $6c
	halt                                                  ; $22cd : $76
	ex (sp), hl                                                  ; $22ce : $e3
	.db $fd                                                  ; $22cf : $fd
	.db $ed                                                  ; $22d0 : $ed
	inc c                                                  ; $22d1 : $0c
	dec bc                                                  ; $22d2 : $0b
	rst $20                                                  ; $22d3 : $e7
	sbc a, c                                                  ; $22d4 : $99
	rst $20                                                  ; $22d5 : $e7
	add a, $ed                                                  ; $22d6 : $c6, $ed
	ld c, c                                                  ; $22d8 : $49
	add hl, bc                                                  ; $22d9 : $09
	xor $26                                                  ; $22da : $ee, $26
	ld a, (de)                                                  ; $22dc : $1a
	ex de, hl                                                  ; $22dd : $eb
	dec b                                                  ; $22de : $05
	push de                                                  ; $22df : $d5
	call pe, Call_04_0a21                                                  ; $22e0 : $ec, $21, $0a
	jp (hl)                                                  ; $22e3 : $e9


	ld a, d                                                  ; $22e4 : $7a

Call_04_22e5:
Jump_04_22e5:
	ex de, hl                                                  ; $22e5 : $eb
	jp (hl)                                                  ; $22e6 : $e9


	jr $17                                                  ; $22e7 : $18, $17

	ld c, $d2                                                  ; $22e9 : $0e, $d2
	inc d                                                  ; $22eb : $14
	sub b                                                  ; $22ec : $90
	ld l, h                                                  ; $22ed : $6c
	adc a, a                                                  ; $22ee : $8f
	ret pe                                                  ; $22ef : $e8

	add hl, hl                                                  ; $22f0 : $29
	nop                                                  ; $22f1 : $00
	ret nc                                                  ; $22f2 : $d0

	ld c, b                                                  ; $22f3 : $48
	ld b, b                                                  ; $22f4 : $40
	ld (hl), d                                                  ; $22f5 : $72
	ld e, h                                                  ; $22f6 : $5c
	dec bc                                                  ; $22f7 : $0b
	and $d3                                                  ; $22f8 : $e6, $d3
	ex de, hl                                                  ; $22fa : $eb
	ret p                                                  ; $22fb : $f0

	jp (hl)                                                  ; $22fc : $e9


	xor a                                                  ; $22fd : $af
	inc c                                                  ; $22fe : $0c
	call z, Call_04_2f72                                                  ; $22ff : $cc, $72, $2f
	jp nc, $9fe1                                                  ; $2302 : $d2, $e1, $9f
	rst $20                                                  ; $2305 : $e7
	ld d, a                                                  ; $2306 : $57
	or (hl)                                                  ; $2307 : $b6
	call po, Call_04_0ba7                                                  ; $2308 : $e4, $a7, $0b
	ex de, hl                                                  ; $230b : $eb
	ld a, d                                                  ; $230c : $7a
	ex de, hl                                                  ; $230d : $eb
	ld b, (hl)                                                  ; $230e : $46
	rst $20                                                  ; $230f : $e7
	.db $fd                                                  ; $2310 : $fd
	ld de, $eab4                                                  ; $2311 : $11, $b4, $ea
	rst $20                                                  ; $2314 : $e7
	nop                                                  ; $2315 : $00
	xor b                                                  ; $2316 : $a8
	ld d, $ec                                                  ; $2317 : $16, $ec
	inc b                                                  ; $2319 : $04
	ex (sp), hl                                                  ; $231a : $e3
	call po, $a22d                                                  ; $231b : $e4, $2d, $a2
	sub d                                                  ; $231e : $92
	call po, $6e52                                                  ; $231f : $e4, $52, $6e
	ld a, (bc)                                                  ; $2322 : $0a
	rst $20                                                  ; $2323 : $e7
	ld (bc), a                                                  ; $2324 : $02
	pop hl                                                  ; $2325 : $e1
	ld h, l                                                  ; $2326 : $65
	ex de, hl                                                  ; $2327 : $eb
	inc e                                                  ; $2328 : $1c
	dec c                                                  ; $2329 : $0d
	.db $ed                                                  ; $232a : $ed
	xor a                                                  ; $232b : $af
	ex de, hl                                                  ; $232c : $eb
	add a, e                                                  ; $232d : $83
	ret pe                                                  ; $232e : $e8

	add hl, hl                                                  ; $232f : $29
	rst $20                                                  ; $2330 : $e7
	and c                                                  ; $2331 : $a1
	sub d                                                  ; $2332 : $92
	and $28                                                  ; $2333 : $e6, $28
	cpl                                                  ; $2335 : $2f
	dec bc                                                  ; $2336 : $0b
	and $2c                                                  ; $2337 : $e6, $2c
	and $2b                                                  ; $2339 : $e6, $2b
	push hl                                                  ; $233b : $e5
	ld e, h                                                  ; $233c : $5c
	push hl                                                  ; $233d : $e5
	ld e, e                                                  ; $233e : $5b
	ld d, $cb                                                  ; $233f : $16, $cb
	ld (hl), d                                                  ; $2341 : $72
	jp nc, $9eed                                                  ; $2342 : $d2, $ed, $9e
	ld e, h                                                  ; $2345 : $5c
	sbc hl, de                                                  ; $2346 : $ed, $52
	rst $20                                                  ; $2348 : $e7
	ccf                                                  ; $2349 : $3f
	jp pe, $512c                                                  ; $234a : $ea, $2c, $51
	inc c                                                  ; $234d : $0c
	rst $20                                                  ; $234e : $e7
	ld c, h                                                  ; $234f : $4c
	jp (hl)                                                  ; $2350 : $e9


	dec sp                                                  ; $2351 : $3b
	sub d                                                  ; $2352 : $92
	call pe, Call_04_0bb5                                                  ; $2353 : $ec, $b5, $0b
	call po, $e395                                                  ; $2356 : $e4, $95, $e3
	sub c                                                  ; $2359 : $91
	ex (sp), hl                                                  ; $235a : $e3
	and $17                                                  ; $235b : $e6, $17
	call pe, $e79c                                                  ; $235d : $ec, $9c, $e7
	ld sp, $04e9                                                  ; $2360 : $31, $e9, $04
	ld d, $e2                                                  ; $2363 : $16, $e2
	ld a, $b3                                                  ; $2365 : $3e, $b3
	ex (sp), hl                                                  ; $2367 : $e3
	ld a, b                                                  ; $2368 : $78
	ld d, $e3                                                  ; $2369 : $16, $e3
	sub $e9                                                  ; $236b : $d6, $e9
	sbc a, c                                                  ; $236d : $99
	or h                                                  ; $236e : $b4
	call po, $e045                                                  ; $236f : $e4, $45, $e0
	call m, $7e0b                                                  ; $2372 : $fc, $0b, $7e
	ret pe                                                  ; $2375 : $e8

	ld b, a                                                  ; $2376 : $47
	pop hl                                                  ; $2377 : $e1
	sbc a, d                                                  ; $2378 : $9a
	rlca                                                  ; $2379 : $07
	ld h, c                                                  ; $237a : $61
	rst $20                                                  ; $237b : $e7
	jp po, $e71b                                                  ; $237c : $e2, $1b, $e7
	call Call_04_030b                                                  ; $237f : $cd, $0b, $03

br_04_2382:
	ld (bc), a                                                  ; $2382 : $02
	ret po                                                  ; $2383 : $e0

	dec de                                                  ; $2384 : $1b
	ret pe                                                  ; $2385 : $e8

	jp nz, $610c                                                  ; $2386 : $c2, $0c, $61
	rst $20                                                  ; $2389 : $e7
	sbc a, $e9                                                  ; $238a : $de, $e9
	scf                                                  ; $238c : $37
	ex de, hl                                                  ; $238d : $eb
	inc d                                                  ; $238e : $14
	ld b, b                                                  ; $238f : $40
	ld a, e                                                  ; $2390 : $7b
	call pe, Call_04_0be5                                                  ; $2391 : $ec, $e5, $0b
	ret po                                                  ; $2394 : $e0

	inc e                                                  ; $2395 : $1c
	ret po                                                  ; $2396 : $e0

	dec e                                                  ; $2397 : $1d
	ret po                                                  ; $2398 : $e0

	inc l                                                  ; $2399 : $2c
	dec c                                                  ; $239a : $0d
	adc a, $b2                                                  ; $239b : $ce, $b2
	ld d, d                                                  ; $239d : $52
	ex (sp), hl                                                  ; $239e : $e3
	cp l                                                  ; $239f : $bd
	or e                                                  ; $23a0 : $b3
	ld a, e                                                  ; $23a1 : $7b
	call pe, $64e7                                                  ; $23a2 : $ec, $e7, $64
	xor $13                                                  ; $23a5 : $ee, $13
	dec bc                                                  ; $23a7 : $0b
	ex de, hl                                                  ; $23a8 : $eb
	sbc a, d                                                  ; $23a9 : $9a
	ex de, hl                                                  ; $23aa : $eb
	jp nz, $2de7                                                  ; $23ab : $c2, $e7, $2d
	rst $20                                                  ; $23ae : $e7
	inc l                                                  ; $23af : $2c
	djnz br_04_2382                                                  ; $23b0 : $10, $d0
	ld b, a                                                  ; $23b2 : $47
	ld l, h                                                  ; $23b3 : $6c
	ex (sp), hl                                                  ; $23b4 : $e3
	inc a                                                  ; $23b5 : $3c
	inc l                                                  ; $23b6 : $2c
	jp pe, $e4c4                                                  ; $23b7 : $ea, $c4, $e4
	ld hl, $b0e8                                                  ; $23ba : $21, $e8, $b0
	sub d                                                  ; $23bd : $92
	rst $20                                                  ; $23be : $e7
	and e                                                  ; $23bf : $a3
	dec bc                                                  ; $23c0 : $0b
	ret po                                                  ; $23c1 : $e0

	ret nz                                                  ; $23c2 : $c0

	jp po, $eb84                                                  ; $23c3 : $e2, $84, $eb
	.db $ed                                                  ; $23c6 : $ed
	ex de, hl                                                  ; $23c7 : $eb
	xor $0b                                                  ; $23c8 : $ee, $0b
	adc a, $ed                                                  ; $23ca : $ce, $ed
	ld e, $b3                                                  ; $23cc : $1e, $b3
	rst $20                                                  ; $23ce : $e7
	or e                                                  ; $23cf : $b3
	call po, $e91f                                                  ; $23d0 : $e4, $1f, $e9
	or e                                                  ; $23d3 : $b3
	dec bc                                                  ; $23d4 : $0b
	.db $ed                                                  ; $23d5 : $ed
	ld (hl), l                                                  ; $23d6 : $75
	jp po, $ed84                                                  ; $23d7 : $e2, $84, $ed
	sbc a, c                                                  ; $23da : $99
	.db $ed                                                  ; $23db : $ed
	sbc a, b                                                  ; $23dc : $98
	rra                                                  ; $23dd : $1f
	ret                                                  ; $23de : $c9


	jp pe, $e3d2                                                  ; $23df : $ea, $d2, $e3
	sbc a, e                                                  ; $23e2 : $9b
	push hl                                                  ; $23e3 : $e5
	jp nc, $c0e9                                                  ; $23e4 : $d2, $e9, $c0
	call po, $63c9                                                  ; $23e7 : $e4, $c9, $63
	pop hl                                                  ; $23ea : $e1
	.db $fd                                                  ; $23eb : $fd
	inc l                                                  ; $23ec : $2c
	call pe, $b407                                                  ; $23ed : $ec, $07, $b4
	dec sp                                                  ; $23f0 : $3b
	pop hl                                                  ; $23f1 : $e1
	halt                                                  ; $23f2 : $76
	or h                                                  ; $23f3 : $b4
	.db $ed                                                  ; $23f4 : $ed
	ex (sp), hl                                                  ; $23f5 : $e3
	push hl                                                  ; $23f6 : $e5
	ld c, l                                                  ; $23f7 : $4d
	call pe, $e6c6                                                  ; $23f8 : $ec, $c6, $e6
	rrca                                                  ; $23fb : $0f
	dec bc                                                  ; $23fc : $0b
	jp (hl)                                                  ; $23fd : $e9


	add a, l                                                  ; $23fe : $85
	call po, $e5c8                                                  ; $23ff : $e4, $c8, $e5
	dec e                                                  ; $2402 : $1d
	push hl                                                  ; $2403 : $e5
	ld e, $08                                                  ; $2404 : $1e, $08
	bit 1, b                                                  ; $2406 : $cb, $48
	or e                                                  ; $2408 : $b3
	jp po, $56e0                                                  ; $2409 : $e2, $e0, $56
	or l                                                  ; $240c : $b5
	dec bc                                                  ; $240d : $0b
	ret pe                                                  ; $240e : $e8

	sbc a, a                                                  ; $240f : $9f
	push hl                                                  ; $2410 : $e5
	rra                                                  ; $2411 : $1f
	ex de, hl                                                  ; $2412 : $eb
	sbc a, b                                                  ; $2413 : $98
	dec c                                                  ; $2414 : $0d
	adc a, d                                                  ; $2415 : $8a
	ret pe                                                  ; $2416 : $e8

	sub $b3                                                  ; $2417 : $d6, $b3
	ld a, (de)                                                  ; $2419 : $1a
	ret pe                                                  ; $241a : $e8

	ld e, l                                                  ; $241b : $5d
	jp (hl)                                                  ; $241c : $e9


	ld (hl), a                                                  ; $241d : $77
	ret pe                                                  ; $241e : $e8

	adc a, e                                                  ; $241f : $8b
	rla                                                  ; $2420 : $17
	ld bc, $60e4                                                  ; $2421 : $01, $e4, $60

Jump_04_2424:
	ex de, hl                                                  ; $2424 : $eb
	cp l                                                  ; $2425 : $bd
	jp (hl)                                                  ; $2426 : $e9


	ret p                                                  ; $2427 : $f0

	jp (hl)                                                  ; $2428 : $e9


	rst $28                                                  ; $2429 : $ef
	dec c                                                  ; $242a : $0d
	.db $ed                                                  ; $242b : $ed
	xor a                                                  ; $242c : $af

Jump_04_242d:
	ret pe                                                  ; $242d : $e8

	jp $d5e7                                                  ; $242e : $c3, $e7, $d5


	or e                                                  ; $2431 : $b3
	ld e, h                                                  ; $2432 : $5c
	ret pe                                                  ; $2433 : $e8

	add a, b                                                  ; $2434 : $80
	ret pe                                                  ; $2435 : $e8

	and c                                                  ; $2436 : $a1
	dec bc                                                  ; $2437 : $0b
	.db $ed                                                  ; $2438 : $ed
	ld h, (hl)                                                  ; $2439 : $66
	push hl                                                  ; $243a : $e5
	ld a, (de)                                                  ; $243b : $1a
	pop hl                                                  ; $243c : $e1
	ld b, c                                                  ; $243d : $41
	inc c                                                  ; $243e : $0c
	call nc, $f3e9                                                  ; $243f : $d4, $e9, $f3
	ret pe                                                  ; $2442 : $e8

	daa                                                  ; $2443 : $27
	inc l                                                  ; $2444 : $2c
	jp po, $7480                                                  ; $2445 : $e2, $80, $74
	ex de, hl                                                  ; $2448 : $eb
	ld b, e                                                  ; $2449 : $43
	dec bc                                                  ; $244a : $0b
	push hl                                                  ; $244b : $e5
	ld a, (de)                                                  ; $244c : $1a
	jp (hl)                                                  ; $244d : $e9


	rlca                                                  ; $244e : $07
	ret po                                                  ; $244f : $e0

	cp d                                                  ; $2450 : $ba
	ret po                                                  ; $2451 : $e0

	cp e                                                  ; $2452 : $bb
	add hl, bc                                                  ; $2453 : $09
	adc a, $e3                                                  ; $2454 : $ce, $e3
	ld ($1492), hl                                                  ; $2456 : $22, $92, $14
	pop hl                                                  ; $2459 : $e1
	ld ($0b2f), hl                                                  ; $245a : $22, $2f, $0b
	call po, $e920                                                  ; $245d : $e4, $20, $e9
	pop af                                                  ; $2460 : $f1
	ret pe                                                  ; $2461 : $e8

	and d                                                  ; $2462 : $a2
	inc c                                                  ; $2463 : $0c
	ret                                                  ; $2464 : $c9


	call po, $4222                                                  ; $2465 : $e4, $22, $42
	rst $20                                                  ; $2468 : $e7
	dec e                                                  ; $2469 : $1d
	jp po, $ea0f                                                  ; $246a : $e2, $0f, $ea
	ld c, l                                                  ; $246d : $4d
	cp d                                                  ; $246e : $ba
	dec bc                                                  ; $246f : $0b
	jp po, $e39f                                                  ; $2470 : $e2, $9f, $e3
	ld hl, $3de2                                                  ; $2473 : $21, $e2, $3d
	inc c                                                  ; $2476 : $0c
	sub (hl)                                                  ; $2477 : $96
	inc c                                                  ; $2478 : $0c
	rst $20                                                  ; $2479 : $e7
	adc a, h                                                  ; $247a : $8c
	adc a, $e5                                                  ; $247b : $ce, $e5
	adc a, $93                                                  ; $247d : $ce, $93
	and $ee                                                  ; $247f : $e6, $ee
	cpl                                                  ; $2481 : $2f
	dec bc                                                  ; $2482 : $0b
	and $f7                                                  ; $2483 : $e6, $f7
	call pe, $e4ca                                                  ; $2485 : $ec, $ca, $e4
	ld h, $0e                                                  ; $2488 : $26, $0e
	call Call_04_0026                                                  ; $248a : $cd, $26, $00
	ex de, hl                                                  ; $248d : $eb
	dec e                                                  ; $248e : $1d
	jp pe, $b3ad                                                  ; $248f : $ea, $ad, $b3
	and $75                                                  ; $2492 : $e6, $75
	ld c, b                                                  ; $2494 : $48
	jp pe, Jump_04_0b7d                                                  ; $2495 : $ea, $7d, $0b
	ret pe                                                  ; $2498 : $e8

	add a, $95                                                  ; $2499 : $c6, $95
	jp po, Jump_04_09c5                                                  ; $249b : $e2, $c5, $09
	adc a, d                                                  ; $249e : $8a
	and d                                                  ; $249f : $a2
	ld d, c                                                  ; $24a0 : $51
	jp pe, $ec84                                                  ; $24a1 : $ea, $84, $ec
	ld a, (de)                                                  ; $24a4 : $1a
	ld (hl), a                                                  ; $24a5 : $77
	ld bc, $4fea                                                  ; $24a6 : $01, $ea, $4f
	and $c8                                                  ; $24a9 : $e6, $c8
	jp pe, Jump_04_0a46                                                  ; $24ab : $ea, $46, $0a
	ret                                                  ; $24ae : $c9


	and d                                                  ; $24af : $a2
	ld l, h                                                  ; $24b0 : $6c
	pop bc                                                  ; $24b1 : $c1
	ex de, hl                                                  ; $24b2 : $eb
	adc a, $14                                                  ; $24b3 : $ce, $14
	pop hl                                                  ; $24b5 : $e1
	ld ($e50b), hl                                                  ; $24b6 : $22, $0b, $e5
	rra                                                  ; $24b9 : $1f
	jp pe, $e424                                                  ; $24ba : $ea, $24, $e4
	rrc h                                                  ; $24bd : $cb, $0c
	ret                                                  ; $24bf : $c9


	and d                                                  ; $24c0 : $a2
	call pe, $e1de                                                  ; $24c1 : $ec, $de, $e1
	xor a                                                  ; $24c4 : $af
	ld d, (hl)                                                  ; $24c5 : $56

br_04_24c6:
	sbc a, c                                                  ; $24c6 : $99
	sbc a, a                                                  ; $24c7 : $9f
	cp d                                                  ; $24c8 : $ba
	add hl, de                                                  ; $24c9 : $19
	dec bc                                                  ; $24ca : $0b
	call po, $e96c                                                  ; $24cb : $e4, $6c, $e9

br_04_24ce:
	ld a, e                                                  ; $24ce : $7b
	call pe, Call_04_06e0                                                  ; $24cf : $ec, $e0, $06
	adc a, d                                                  ; $24d2 : $8a
	ld a, l                                                  ; $24d3 : $7d
	sbc a, l                                                  ; $24d4 : $9d
	pop hl                                                  ; $24d5 : $e1
	xor a                                                  ; $24d6 : $af
	ld bc, $66e2                                                  ; $24d7 : $01, $e2, $66
	jp (hl)                                                  ; $24da : $e9


	ld a, a                                                  ; $24db : $7f
	jp (hl)                                                  ; $24dc : $e9


	ld a, e                                                  ; $24dd : $7b
	ld a, (bc)                                                  ; $24de : $0a
	adc a, d                                                  ; $24df : $8a
	cp h                                                  ; $24e0 : $bc
	.db $ed                                                  ; $24e1 : $ed
	jr z, br_04_24c6                                                  ; $24e2 : $28, $e2

	ld a, b                                                  ; $24e4 : $78
	sub e                                                  ; $24e5 : $93
	push hl                                                  ; $24e6 : $e5
	ret z                                                  ; $24e7 : $c8

	ld bc, $31eb                                                  ; $24e8 : $01, $eb, $31
	in c, (c)                                                  ; $24eb : $ed, $48
	pop hl                                                  ; $24ed : $e1
	dec h                                                  ; $24ee : $25
	inc c                                                  ; $24ef : $0c
	adc a, $ea                                                  ; $24f0 : $ce, $ea
	sub e                                                  ; $24f2 : $93
	jp (hl)                                                  ; $24f3 : $e9


	cp a                                                  ; $24f4 : $bf
	sub e                                                  ; $24f5 : $93
	pop hl                                                  ; $24f6 : $e1
	xor a                                                  ; $24f7 : $af
	call po, Call_04_2fd9                                                  ; $24f8 : $e4, $d9, $2f
	dec bc                                                  ; $24fb : $0b
	jp po, $e2ac                                                  ; $24fc : $e2, $ac, $e2
	inc (hl)                                                  ; $24ff : $34
	jp (hl)                                                  ; $2500 : $e9


	rst $38                                                  ; $2501 : $ff
	djnz br_04_24ce                                                  ; $2502 : $10, $ca
	ret pe                                                  ; $2504 : $e8

	ccf                                                  ; $2505 : $3f
	sub d                                                  ; $2506 : $92
	.db $ed                                                  ; $2507 : $ed
	inc bc                                                  ; $2508 : $03
	or e                                                  ; $2509 : $b3
	ex (sp), hl                                                  ; $250a : $e3
	dec b                                                  ; $250b : $05
	push hl                                                  ; $250c : $e5
	ld e, l                                                  ; $250d : $5d
	cp d                                                  ; $250e : $ba
	sbc a, e                                                  ; $250f : $9b
	call pe, Call_04_0bb8                                                  ; $2510 : $ec, $b8, $0b
	ld ($acec), de                                                  ; $2513 : $ed, $53, $ec, $ac
	ex (sp), hl                                                  ; $2517 : $e3
	jp pe, $8913                                                  ; $2518 : $ea, $13, $89
	inc c                                                  ; $251b : $0c
	call po, $92ee                                                  ; $251c : $e4, $ee, $92
	call pe, $b32d                                                  ; $251f : $ec, $2d, $b3
	ld l, h                                                  ; $2522 : $6c
	call po, $52e3                                                  ; $2523 : $e4, $e3, $52
	jp po, $9266                                                  ; $2526 : $e2, $66, $92
	xor $1b                                                  ; $2529 : $ee, $1b
	daa                                                  ; $252b : $27
	ld bc, $58e6                                                  ; $252c : $01, $e6, $58
	ret po                                                  ; $252f : $e0

	add a, h                                                  ; $2530 : $84
	push hl                                                  ; $2531 : $e5
	ld h, c                                                  ; $2532 : $61
	dec c                                                  ; $2533 : $0d
	adc a, d                                                  ; $2534 : $8a
	call po, $b3dd                                                  ; $2535 : $e4, $dd, $b3
	call po, $e6f2                                                  ; $2538 : $e4, $f2, $e6
	ld d, h                                                  ; $253b : $54
	xor $1b                                                  ; $253c : $ee, $1b
	ret pe                                                  ; $253e : $e8

	inc hl                                                  ; $253f : $23
	ld bc, $46e4                                                  ; $2540 : $01, $e4, $46
	jp po, $ea92                                                  ; $2543 : $e2, $92, $ea
	call c, $d40d                                                  ; $2546 : $dc, $0d, $d4
	.db $ed                                                  ; $2549 : $ed

br_04_254a:
	ld (bc), a                                                  ; $254a : $02
	ex (sp), hl                                                  ; $254b : $e3
	add hl, bc                                                  ; $254c : $09
	or h                                                  ; $254d : $b4
	ret pe                                                  ; $254e : $e8

	inc hl                                                  ; $254f : $23
	rst $10                                                  ; $2550 : $d7
	or h                                                  ; $2551 : $b4
	call pe, Call_04_0b03                                                  ; $2552 : $ec, $03, $0b
	.db $ed                                                  ; $2555 : $ed
	exx                                                  ; $2556 : $d9
	jp po, $e434                                                  ; $2557 : $e2, $34, $e4
	ld d, a                                                  ; $255a : $57
	rrca                                                  ; $255b : $0f
	rrc h                                                  ; $255c : $cb, $0c
	ex de, hl                                                  ; $255e : $eb

Jump_04_255f:
	ret po                                                  ; $255f : $e0

	or e                                                  ; $2560 : $b3
	call po, Call_04_167a                                                  ; $2561 : $e4, $7a, $16
	pop hl                                                  ; $2564 : $e1
	ld l, a                                                  ; $2565 : $6f
	sbc hl, de                                                  ; $2566 : $ed, $52
	pop hl                                                  ; $2568 : $e1
	call po, $eb0b                                                  ; $2569 : $e4, $0b, $eb
	cp a                                                  ; $256c : $bf
	ret pe                                                  ; $256d : $e8

	ld d, l                                                  ; $256e : $55
	ret pe                                                  ; $256f : $e8

	sbc a, h                                                  ; $2570 : $9c
	ld c, $c9                                                  ; $2571 : $0e, $c9
	or d                                                  ; $2573 : $b2
	inc a                                                  ; $2574 : $3c
	ret pe                                                  ; $2575 : $e8

	and a                                                  ; $2576 : $a7
	or e                                                  ; $2577 : $b3
	ld a, (de)                                                  ; $2578 : $1a
	call po, $e5d6                                                  ; $2579 : $e4, $d6, $e5
	ld b, $63                                                  ; $257c : $06, $63
	xor d                                                  ; $257e : $aa
	dec bc                                                  ; $257f : $0b
	call pe, $eaa9                                                  ; $2580 : $ec, $a9, $ea
	pop af                                                  ; $2583 : $f1
	.db $ed                                                  ; $2584 : $ed
	and l                                                  ; $2585 : $a5
	ld de, $1ac9                                                  ; $2586 : $11, $c9, $1a
	jr br_04_25ba                                                  ; $2589 : $18, $2f

	push de                                                  ; $258b : $d5
	call po, $9b05                                                  ; $258c : $e4, $05, $9b
	ex (sp), hl                                                  ; $258f : $e3
	ld (hl), d                                                  ; $2590 : $72

Call_04_2591:
	jr br_04_254a                                                  ; $2591 : $18, $b7

	ld e, h                                                  ; $2593 : $5c
	adc a, a                                                  ; $2594 : $8f
	jp po, Jump_04_0b5b                                                  ; $2595 : $e2, $5b, $0b
	push hl                                                  ; $2598 : $e5
	jp $c7ed                                                  ; $2599 : $c3, $ed, $c7


	jp pe, $eafe                                                  ; $259c : $ea, $fe, $ea
	.db $fd                                                  ; $259f : $fd
	ld d, $ce                                                  ; $25a0 : $16, $ce
	call pe, $9221                                                  ; $25a2 : $ec, $21, $92
	ld h, b                                                  ; $25a5 : $60
	or h                                                  ; $25a6 : $b4
	ld a, (hl)                                                  ; $25a7 : $7e
	ld d, $b4                                                  ; $25a8 : $16, $b4
	ret pe                                                  ; $25aa : $e8

	adc a, c                                                  ; $25ab : $89
	jp (hl)                                                  ; $25ac : $e9


	dec d                                                  ; $25ad : $15
	sub e                                                  ; $25ae : $93
	call po, $e045                                                  ; $25af : $e4, $45, $e0
	adc a, d                                                  ; $25b2 : $8a
	ex (sp), hl                                                  ; $25b3 : $e3
	rst $30                                                  ; $25b4 : $f7
	sbc a, e                                                  ; $25b5 : $9b
	dec bc                                                  ; $25b6 : $0b
	push hl                                                  ; $25b7 : $e5
	ld b, c                                                  ; $25b8 : $41

Jump_04_25b9:
	pop hl                                                  ; $25b9 : $e1

br_04_25ba:
	sbc a, e                                                  ; $25ba : $9b
	call po, $0b0a                                                  ; $25bb : $e4, $0a, $0b

Call_04_25be:
	call nc, $d6e8                                                  ; $25be : $d4, $e8, $d6
	call po, $96ab                                                  ; $25c1 : $e4, $ab, $96
	sbc a, e                                                  ; $25c4 : $9b
	ld a, (hl)                                                  ; $25c5 : $7e
	ret pe                                                  ; $25c6 : $e8

	sub $0b                                                  ; $25c7 : $d6, $0b
	jp (hl)                                                  ; $25c9 : $e9


	cp b                                                  ; $25ca : $b8
	and $0e                                                  ; $25cb : $e6, $0e
	jp (hl)                                                  ; $25cd : $e9


	add hl, bc                                                  ; $25ce : $09
	jp (hl)                                                  ; $25cf : $e9


	ex af, af'                                                  ; $25d0 : $08
	add hl, bc                                                  ; $25d1 : $09
	jp z, $ace9                                                  ; $25d2 : $ca, $e9, $ac
	jp po, $9286                                                  ; $25d5 : $e2, $86, $92
	ld b, a                                                  ; $25d8 : $47
	cpl                                                  ; $25d9 : $2f
	dec bc                                                  ; $25da : $0b
	ret pe                                                  ; $25db : $e8

	ld h, (hl)                                                  ; $25dc : $66
	ex (sp), hl                                                  ; $25dd : $e3
	or a                                                  ; $25de : $b7
	jp (hl)                                                  ; $25df : $e9


	jp p, $f1e9                                                  ; $25e0 : $f2, $e9, $f1
	add hl, bc                                                  ; $25e3 : $09
	adc a, $ed                                                  ; $25e4 : $ce, $ed
	ld e, $92                                                  ; $25e6 : $1e, $92
	rst $20                                                  ; $25e8 : $e7
	or b                                                  ; $25e9 : $b0
	ld d, c                                                  ; $25ea : $51
	ld b, a                                                  ; $25eb : $47
	dec bc                                                  ; $25ec : $0b
	jp po, $e1ab                                                  ; $25ed : $e2, $ab, $e1
	inc h                                                  ; $25f0 : $24
	.db $ed                                                  ; $25f1 : $ed
	sbc a, c                                                  ; $25f2 : $99
	.db $ed                                                  ; $25f3 : $ed
	sbc a, b                                                  ; $25f4 : $98
	ld c, $8a                                                  ; $25f5 : $0e, $8a
	jp pe, $9ab4                                                  ; $25f7 : $ea, $b4, $9a
	.db $ed                                                  ; $25fa : $ed
	pop hl                                                  ; $25fb : $e1
	or e                                                  ; $25fc : $b3
	jp pe, $ea43                                                  ; $25fd : $ea, $43, $ea
	dec h                                                  ; $2600 : $25
	ex de, hl                                                  ; $2601 : $eb
	ld h, a                                                  ; $2602 : $67
	ld bc, $58ed                                                  ; $2603 : $01, $ed, $58
	jp pe, $e07c                                                  ; $2606 : $ea, $7c, $e0
	rst $10                                                  ; $2609 : $d7
	rla                                                  ; $260a : $17
	adc a, d                                                  ; $260b : $8a
	and d                                                  ; $260c : $a2
	sub d                                                  ; $260d : $92
	inc d                                                  ; $260e : $14
	ret pe                                                  ; $260f : $e8

	push de                                                  ; $2610 : $d5
	call nc, $aae0                                                  ; $2611 : $d4, $e0, $aa
	ld (hl), d                                                  ; $2614 : $72
	cp d                                                  ; $2615 : $ba
	jp (hl)                                                  ; $2616 : $e9


	in a, ($e8)                                                  ; $2617 : $db, $e8
	ld c, $92                                                  ; $2619 : $0e, $92
	and $7d                                                  ; $261b : $e6, $7d
	ret pe                                                  ; $261d : $e8

	call pe, $d2e6                                                  ; $261e : $ec, $e6, $d2
	ld bc, $58ea                                                  ; $2621 : $01, $ea, $58
	call po, $eab2                                                  ; $2624 : $e4, $b2, $ea
	ld (hl), b                                                  ; $2627 : $70
	dec c                                                  ; $2628 : $0d
	or h                                                  ; $2629 : $b4
	jp po, $92dc                                                  ; $262a : $e2, $dc, $92
	inc c                                                  ; $262d : $0c
	ex de, hl                                                  ; $262e : $eb
	push bc                                                  ; $262f : $c5
	ld d, $14                                                  ; $2630 : $16, $14
	call po, $6f15                                                  ; $2632 : $e4, $15, $6f
	dec bc                                                  ; $2635 : $0b
	jp pe, $e470                                                  ; $2636 : $ea, $70, $e4
	ld l, $e4                                                  ; $2639 : $2e, $e4
	or d                                                  ; $263b : $b2
	dec bc                                                  ; $263c : $0b
	adc a, d                                                  ; $263d : $8a
	and d                                                  ; $263e : $a2
	jp nc, $e299                                                  ; $263f : $d2, $99, $e2
	ld h, l                                                  ; $2642 : $65
	ex (sp), hl                                                  ; $2643 : $e3
	add a, $6a                                                  ; $2644 : $c6, $6a
	cp h                                                  ; $2646 : $bc
	ld bc, $bde7                                                  ; $2647 : $01, $e7, $bd
	jp pe, $e770                                                  ; $264a : $ea, $70, $e7
	pop af                                                  ; $264d : $f1
	ld de, $e9c9                                                  ; $264e : $11, $c9, $e9
	dec d                                                  ; $2651 : $15
	sub d                                                  ; $2652 : $92
	inc c                                                  ; $2653 : $0c
	jp po, $e3a6                                                  ; $2654 : $e2, $a6, $e3
	inc e                                                  ; $2657 : $1c
	or h                                                  ; $2658 : $b4
	call pe, $92da                                                  ; $2659 : $ec, $da, $92
	inc d                                                  ; $265c : $14
	ret pe                                                  ; $265d : $e8

	push de                                                  ; $265e : $d5
	dec bc                                                  ; $265f : $0b
	push hl                                                  ; $2660 : $e5
	ld (ix-$1b), $3a                                                  ; $2661 : $dd, $36, $e5, $3a
	push hl                                                  ; $2665 : $e5
	dec (hl)                                                  ; $2666 : $35
	ld de, $e5b4                                                  ; $2667 : $11, $b4, $e5
	dec (hl)                                                  ; $266a : $35
	or e                                                  ; $266b : $b3
	jp (hl)                                                  ; $266c : $e9


	pop bc                                                  ; $266d : $c1
	add hl, de                                                  ; $266e : $19
	push hl                                                  ; $266f : $e5
	dec (hl)                                                  ; $2670 : $35
	ld d, (hl)                                                  ; $2671 : $56
	pop hl                                                  ; $2672 : $e1
	ld (hl), b                                                  ; $2673 : $70
	inc c                                                  ; $2674 : $0c
	call pe, $6fd9                                                  ; $2675 : $ec, $d9, $6f
	dec bc                                                  ; $2678 : $0b
	jp pe, $e145                                                  ; $2679 : $ea, $45, $e1
	or $e3                                                  ; $267c : $f6, $e3
	jp nc, $c916                                                  ; $267e : $d2, $16, $c9
	jp pe, $d285                                                  ; $2681 : $ea, $85, $d2
	inc d                                                  ; $2684 : $14
	ret pe                                                  ; $2685 : $e8

	push de                                                  ; $2686 : $d5
	ld e, e                                                  ; $2687 : $5b
	pop hl                                                  ; $2688 : $e1
	jp z, $d2e3                                                  ; $2689 : $ca, $e3, $d2
	ld d, $ea                                                  ; $268c : $16, $ea
	ld b, l                                                  ; $268e : $45
	push hl                                                  ; $268f : $e5
	ld a, ($0c51)                                                  ; $2690 : $3a, $51, $0c
	call pe, $0bd9                                                  ; $2693 : $ec, $d9, $0b
	push hl                                                  ; $2696 : $e5
	.db $dd                                                  ; $2697 : $dd
	jp pe, $e658                                                  ; $2698 : $ea, $58, $e6
	ld hl, $c911                                                  ; $269b : $21, $11, $c9
	or d                                                  ; $269e : $b2
	inc a                                                  ; $269f : $3c
	or h                                                  ; $26a0 : $b4
	jp pe, $9266                                                  ; $26a1 : $ea, $66, $92
	xor b                                                  ; $26a4 : $a8
	inc l                                                  ; $26a5 : $2c
	.db $ed                                                  ; $26a6 : $ed
	rst $10                                                  ; $26a7 : $d7
	nop                                                  ; $26a8 : $00
	push bc                                                  ; $26a9 : $c5
	sbc a, d                                                  ; $26aa : $9a
	and $28                                                  ; $26ab : $e6, $28
	dec bc                                                  ; $26ad : $0b
	and $1c                                                  ; $26ae : $e6, $1c
	call pe, $e4cb                                                  ; $26b0 : $ec, $cb, $e4
	ld d, d                                                  ; $26b3 : $52
	ld d, $c9                                                  ; $26b4 : $16, $c9
	or c                                                  ; $26b6 : $b1
	ld l, h                                                  ; $26b7 : $6c
	pop bc                                                  ; $26b8 : $c1
	ret po                                                  ; $26b9 : $e0

	ld a, a                                                  ; $26ba : $7f
	push bc                                                  ; $26bb : $c5

br_04_26bc:
	cp e                                                  ; $26bc : $bb
	xor b                                                  ; $26bd : $a8
	out ($72), a                                                  ; $26be : $d3, $72
	ld l, h                                                  ; $26c0 : $6c
	call pe, $e3c6                                                  ; $26c1 : $ec, $c6, $e3
	ret pe                                                  ; $26c4 : $e8

	cp d                                                  ; $26c5 : $ba
	push hl                                                  ; $26c6 : $e5
	sub d                                                  ; $26c7 : $92
	ex (sp), hl                                                  ; $26c8 : $e3
	ld b, h                                                  ; $26c9 : $44
	dec bc                                                  ; $26ca : $0b
	call po, $e6b3                                                  ; $26cb : $e4, $b3, $e6
	inc e                                                  ; $26ce : $1c
	and $74                                                  ; $26cf : $e6, $74

br_04_26d1:
	ld c, $c9                                                  ; $26d1 : $0e, $c9
	ret pe                                                  ; $26d3 : $e8

	xor d                                                  ; $26d4 : $aa
	jp nc, Jump_04_3ae6                                                  ; $26d5 : $d2, $e6, $3a
	ld a, (de)                                                  ; $26d8 : $1a
	ret po                                                  ; $26d9 : $e0

	add a, b                                                  ; $26da : $80
	cp e                                                  ; $26db : $bb
	push bc                                                  ; $26dc : $c5
	sbc a, d                                                  ; $26dd : $9a
	rrca                                                  ; $26de : $0f
	dec bc                                                  ; $26df : $0b
	jp pe, $eb78                                                  ; $26e0 : $ea, $78, $eb
	ccf                                                  ; $26e3 : $3f
	jp (hl)                                                  ; $26e4 : $e9


	sbc a, d                                                  ; $26e5 : $9a
	djnz br_04_26bc                                                  ; $26e6 : $10, $d4

Call_04_26e8:
	jr br_04_26d1                                                  ; $26e8 : $18, $e7

	ld b, d                                                  ; $26ea : $42
	sbc a, l                                                  ; $26eb : $9d
	or (hl)                                                  ; $26ec : $b6
	rst $20                                                  ; $26ed : $e7
	add hl, hl                                                  ; $26ee : $29
	sub (hl)                                                  ; $26ef : $96
	ld (hl), a                                                  ; $26f0 : $77
	ld d, $e9                                                  ; $26f1 : $16, $e9
	ld de, $c565                                                  ; $26f3 : $11, $65, $c5
	dec bc                                                  ; $26f6 : $0b
	rst $20                                                  ; $26f7 : $e7
	add a, c                                                  ; $26f8 : $81
	and $68                                                  ; $26f9 : $e6, $68
	ret po                                                  ; $26fb : $e0

	cp a                                                  ; $26fc : $bf
	ret po                                                  ; $26fd : $e0

	cp (hl)                                                  ; $26fe : $be
	ld c, $c9                                                  ; $26ff : $0e, $c9
	ld a, (de)                                                  ; $2701 : $1a
	jp (hl)                                                  ; $2702 : $e9


	ld a, d                                                  ; $2703 : $7a
	cpl                                                  ; $2704 : $2f
	or e                                                  ; $2705 : $b3
	rst $20                                                  ; $2706 : $e7
	ld a, e                                                  ; $2707 : $7b
	ex de, hl                                                  ; $2708 : $eb
	ld e, $63                                                  ; $2709 : $1e, $63
	jp po, $0bfd                                                  ; $270b : $e2, $fd, $0b
	ret pe                                                  ; $270e : $e8

	ld b, $e4                                                  ; $270f : $06, $e4
	or c                                                  ; $2711 : $b1
	ex (sp), hl                                                  ; $2712 : $e3
	inc b                                                  ; $2713 : $04
	ex (sp), hl                                                  ; $2714 : $e3
	inc bc                                                  ; $2715 : $03
	inc de                                                  ; $2716 : $13
	adc a, d                                                  ; $2717 : $8a
	ex de, hl                                                  ; $2718 : $eb
	inc b                                                  ; $2719 : $04
	or e                                                  ; $271a : $b3
	call pe, $6020                                                  ; $271b : $ec, $20, $60
	ld a, (hl)                                                  ; $271e : $7e
	call pe, $e69c                                                  ; $271f : $ec, $9c, $e6
	ld c, l                                                  ; $2722 : $4d
	call pe, $56da                                                  ; $2723 : $ec, $da, $56
	or (hl)                                                  ; $2726 : $b6
	jp (hl)                                                  ; $2727 : $e9


	ld a, (bc)                                                  ; $2728 : $0a
	ld bc, $c8e1                                                  ; $2729 : $01, $e1, $c8
	push hl                                                  ; $272c : $e5
	ccf                                                  ; $272d : $3f
	push hl                                                  ; $272e : $e5
	dec sp                                                  ; $272f : $3b
	push hl                                                  ; $2730 : $e5
	inc a                                                  ; $2731 : $3c
	ld (de), a                                                  ; $2732 : $12
	adc a, d                                                  ; $2733 : $8a
	ex de, hl                                                  ; $2734 : $eb
	inc b                                                  ; $2735 : $04
	or e                                                  ; $2736 : $b3
	call pe, $e120                                                  ; $2737 : $ec, $20, $e1
	jp z, Jump_04_1682                                                  ; $273a : $ca, $82, $16
	ld c, b                                                  ; $273d : $48
	ld d, $60                                                  ; $273e : $16, $60
	or a                                                  ; $2740 : $b7
	ld a, (de)                                                  ; $2741 : $1a
	jp pe, Jump_04_015e                                                  ; $2742 : $ea, $5e, $01
	push hl                                                  ; $2745 : $e5
	ccf                                                  ; $2746 : $3f
	push hl                                                  ; $2747 : $e5
	dec sp                                                  ; $2748 : $3b
	jp (hl)                                                  ; $2749 : $e9


	ld e, b                                                  ; $274a : $58
	jp (hl)                                                  ; $274b : $e9


	ld e, c                                                  ; $274c : $59
	rrca                                                  ; $274d : $0f
	ret                                                  ; $274e : $c9


	ret c                                                  ; $274f : $d8

	inc a                                                  ; $2750 : $3c
	call pe, $b39c                                                  ; $2751 : $ec, $9c, $b3
	pop hl                                                  ; $2754 : $e1
	xor h                                                  ; $2755 : $ac
	ld de, $567b                                                  ; $2756 : $11, $7b, $56
	jp (hl)                                                  ; $2759 : $e9


	dec de                                                  ; $275a : $1b

Jump_04_275b:
	cp c                                                  ; $275b : $b9
	dec bc                                                  ; $275c : $0b
	call pe, $ece3                                                  ; $275d : $ec, $e3, $ec
	call po, $c7e8                                                  ; $2760 : $e4, $e8, $c7
	add hl, bc                                                  ; $2763 : $09
	adc a, $e2                                                  ; $2764 : $ce, $e2
	rst $10                                                  ; $2766 : $d7
	sbc a, l                                                  ; $2767 : $9d
	or h                                                  ; $2768 : $b4
	call po, Call_04_2f85                                                  ; $2769 : $e4, $85, $2f
	dec bc                                                  ; $276c : $0b
	ex (sp), hl                                                  ; $276d : $e3
	inc hl                                                  ; $276e : $23
	jp pe, $e600                                                  ; $276f : $ea, $00, $e6
	ld l, a                                                  ; $2772 : $6f
	djnz -$32                                                  ; $2773 : $10, $ce
	ex de, hl                                                  ; $2775 : $eb
	scf                                                  ; $2776 : $37
	sub d                                                  ; $2777 : $92
	ex (sp), hl                                                  ; $2778 : $e3
	or c                                                  ; $2779 : $b1
	cpl                                                  ; $277a : $2f
	or e                                                  ; $277b : $b3
	rst $20                                                  ; $277c : $e7
	ld a, h                                                  ; $277d : $7c
	inc c                                                  ; $277e : $0c
	jp po, $edf3                                                  ; $277f : $e2, $f3, $ed
	di                                                  ; $2782 : $f3
	dec bc                                                  ; $2783 : $0b
	ex (sp), hl                                                  ; $2784 : $e3
	cp d                                                  ; $2785 : $ba
	ex (sp), hl                                                  ; $2786 : $e3
	dec (hl)                                                  ; $2787 : $35
	jp (hl)                                                  ; $2788 : $e9


	ret po                                                  ; $2789 : $e0

	jp (hl)                                                  ; $278a : $e9


	pop hl                                                  ; $278b : $e1
	inc de                                                  ; $278c : $13
	ret                                                  ; $278d : $c9


br_04_278e:
	ld a, (de)                                                  ; $278e : $1a
	jp (hl)                                                  ; $278f : $e9


	ld l, a                                                  ; $2790 : $6f
	cpl                                                  ; $2791 : $2f
	out ($ed), a                                                  ; $2792 : $d3, $ed
	add hl, de                                                  ; $2794 : $19
	and $0f                                                  ; $2795 : $e6, $0f
	push bc                                                  ; $2797 : $c5
	jp po, $bbe0                                                  ; $2798 : $e2, $e0, $bb
	call pe, $e83f                                                  ; $279b : $ec, $3f, $e8
	ld c, c                                                  ; $279e : $49
	dec bc                                                  ; $279f : $0b
	.db $ed                                                  ; $27a0 : $ed
	ld (hl), b                                                  ; $27a1 : $70
	ex (sp), hl                                                  ; $27a2 : $e3
	rst $38                                                  ; $27a3 : $ff
	push hl                                                  ; $27a4 : $e5
	ld d, d                                                  ; $27a5 : $52
	push hl                                                  ; $27a6 : $e5
	ld d, c                                                  ; $27a7 : $51
	djnz br_04_278e                                                  ; $27a8 : $10, $e4
	rra                                                  ; $27aa : $1f
	jp po, $b3ab                                                  ; $27ab : $e2, $ab, $b3
	ld a, (de)                                                  ; $27ae : $1a
	ex (sp), hl                                                  ; $27af : $e3
	ld b, $99                                                  ; $27b0 : $06, $99
	ld c, $b4                                                  ; $27b2 : $0e, $b4
	sbc a, e                                                  ; $27b4 : $9b
	ret po                                                  ; $27b5 : $e0

	ei                                                  ; $27b6 : $fb
	ld h, e                                                  ; $27b7 : $63
	ld a, (bc)                                                  ; $27b8 : $0a
	jp (hl)                                                  ; $27b9 : $e9


	ld b, $e6                                                  ; $27ba : $06, $e6
	xor e                                                  ; $27bc : $ab
	ex de, hl                                                  ; $27bd : $eb
	inc sp                                                  ; $27be : $33

br_04_27bf:
	dec bc                                                  ; $27bf : $0b
	rst $20                                                  ; $27c0 : $e7
	and h                                                  ; $27c1 : $a4
	or e                                                  ; $27c2 : $b3
	ex (sp), hl                                                  ; $27c3 : $e3
	sub $e2                                                  ; $27c4 : $d6, $e2
	jp m, $e047                                                  ; $27c6 : $fa, $47, $e0
	call m, $e90b                                                  ; $27c9 : $fc, $0b, $e9
	ld a, h                                                  ; $27cc : $7c
	jp pe, $e6c3                                                  ; $27cd : $ea, $c3, $e6
	ld d, a                                                  ; $27d0 : $57
	and $56                                                  ; $27d1 : $e6, $56
	rrca                                                  ; $27d3 : $0f
	ld h, e                                                  ; $27d4 : $63
	ld b, a                                                  ; $27d5 : $47
	nop                                                  ; $27d6 : $00
	cp h                                                  ; $27d7 : $bc

br_04_27d8:
	jp (hl)                                                  ; $27d8 : $e9


	xor h                                                  ; $27d9 : $ac
	jp po, $ed86                                                  ; $27da : $e2, $86, $ed
	rst $38                                                  ; $27dd : $ff
	sbc a, $e3                                                  ; $27de : $de, $e3
	rst $30                                                  ; $27e0 : $f7

Jump_04_27e1:
	sbc a, e                                                  ; $27e1 : $9b
	ld bc, $2ae1                                                  ; $27e2 : $01, $e1, $2a
	and $aa                                                  ; $27e5 : $e6, $aa
	jp pe, Jump_04_1969                                                  ; $27e7 : $ea, $69, $19
	adc a, $e0                                                  ; $27ea : $ce, $e0
	call pe, $bde3                                                  ; $27ec : $ec, $e3, $bd
	ld h, e                                                  ; $27ef : $63
	rst $20                                                  ; $27f0 : $e7
	sbc a, $1e                                                  ; $27f1 : $de, $1e
	call pe, $e18d                                                  ; $27f3 : $ec, $8d, $e1
	jr -$1c                                                  ; $27f6 : $18, $e4

	ld c, d                                                  ; $27f8 : $4a
	dec bc                                                  ; $27f9 : $0b
	ret po                                                  ; $27fa : $e0

	ld c, e                                                  ; $27fb : $4b
	nop                                                  ; $27fc : $00
	ret po                                                  ; $27fd : $e0

	ld c, l                                                  ; $27fe : $4d
	sbc a, d                                                  ; $27ff : $9a
	ret po                                                  ; $2800 : $e0

	ld c, (hl)                                                  ; $2801 : $4e
	ld bc, $4de0                                                  ; $2802 : $01, $e0, $4d
	ret po                                                  ; $2805 : $e0

	ld c, (hl)                                                  ; $2806 : $4e
	ret po                                                  ; $2807 : $e0

	ld c, e                                                  ; $2808 : $4b
	djnz br_04_27bf                                                  ; $2809 : $10, $b4
	xor d                                                  ; $280b : $aa
	ld e, $0c                                                  ; $280c : $1e, $0c
	rst $20                                                  ; $280e : $e7
	ld (hl), e                                                  ; $280f : $73
	call nc, Call_04_2ce1                                                  ; $2810 : $d4, $e1, $2c
	and $70                                                  ; $2813 : $e6, $70
	ld d, $eb                                                  ; $2815 : $16, $eb
	or $6e                                                  ; $2817 : $f6, $6e
	ld a, (bc)                                                  ; $2819 : $0a
	jp po, $eb03                                                  ; $281a : $e2, $03, $eb
	jp po, $bae4                                                  ; $281d : $e2, $e4, $ba
	rst $20                                                  ; $2820 : $e7
	ld (hl), h                                                  ; $2821 : $74
	call po, Call_04_10e7                                                  ; $2822 : $e4, $e7, $10
	adc a, d                                                  ; $2825 : $8a
	ex de, hl                                                  ; $2826 : $eb
	ld (bc), a                                                  ; $2827 : $02
	call pe, $b321                                                  ; $2828 : $ec, $21, $b3
	ex (sp), hl                                                  ; $282b : $e3
	ld (hl), l                                                  ; $282c : $75
	rst $10                                                  ; $282d : $d7
	or h                                                  ; $282e : $b4
	call pe, $921f                                                  ; $282f : $ec, $1f, $92
	ret pe                                                  ; $2832 : $e8

	sub $01                                                  ; $2833 : $d6, $01
	jp (hl)                                                  ; $2835 : $e9


	ld sp, hl                                                  ; $2836 : $f9
	jp (hl)                                                  ; $2837 : $e9


	ld e, e                                                  ; $2838 : $5b
	ret po                                                  ; $2839 : $e0

	rst $00                                                  ; $283a : $c7
	ld c, $c5                                                  ; $283b : $0e, $c5
	ex (sp), hl                                                  ; $283d : $e3
	inc (hl)                                                  ; $283e : $34
	ret po                                                  ; $283f : $e0

	ld l, b                                                  ; $2840 : $68
	ret                                                  ; $2841 : $c9


	jp (hl)                                                  ; $2842 : $e9


	jr c, br_04_27d8                                                  ; $2843 : $38, $93

	ex (sp), hl                                                  ; $2845 : $e3
	.db $fd                                                  ; $2846 : $fd
	call pe, Call_04_0b3f                                                  ; $2847 : $ec, $3f, $0b
	ret po                                                  ; $284a : $e0

	ld c, h                                                  ; $284b : $4c
	ret po                                                  ; $284c : $e0

	ld e, b                                                  ; $284d : $58
	cp $fe                                                  ; $284e : $fe, $fe
	scf                                                  ; $2850 : $37
	dec (hl)                                                  ; $2851 : $35
	rst $38                                                  ; $2852 : $ff
	rrca                                                  ; $2853 : $0f
	or h                                                  ; $2854 : $b4
	call pe, $ea96                                                  ; $2855 : $ec, $96, $ea
	ld sp, hl                                                  ; $2858 : $f9
	or e                                                  ; $2859 : $b3
	ld e, e                                                  ; $285a : $5b
	xor $22                                                  ; $285b : $ee, $22
	jp pe, $e56e                                                  ; $285d : $ea, $6e, $e5
	rlca                                                  ; $2860 : $07
	ld l, (hl)                                                  ; $2861 : $6e
	ld a, (bc)                                                  ; $2862 : $0a
	call po, $e68c                                                  ; $2863 : $e4, $8c, $e6
	push bc                                                  ; $2866 : $c5
	jp po, Jump_04_116a                                                  ; $2867 : $e2, $6a, $11
	adc a, c                                                  ; $286a : $89
	or h                                                  ; $286b : $b4
	ld c, (hl)                                                  ; $286c : $4e
	ex de, hl                                                  ; $286d : $eb
	or (hl)                                                  ; $286e : $b6
	or e                                                  ; $286f : $b3
	ex (sp), hl                                                  ; $2870 : $e3
	dec hl                                                  ; $2871 : $2b
	inc h                                                  ; $2872 : $24
	jp pe, $5187                                                  ; $2873 : $ea, $87, $51
	call pe, $6af9                                                  ; $2876 : $ec, $f9, $6a
	xor d                                                  ; $2879 : $aa
	ld bc, $e1e0                                                  ; $287a : $01, $e0, $e1
	push hl                                                  ; $287d : $e5
	inc sp                                                  ; $287e : $33
	jp po, Jump_04_1376                                                  ; $287f : $e2, $76, $13
	ret                                                  ; $2882 : $c9


	ret c                                                  ; $2883 : $d8

	inc a                                                  ; $2884 : $3c
	or h                                                  ; $2885 : $b4
	call po, $53f6                                                  ; $2886 : $e4, $f6, $53
	or e                                                  ; $2889 : $b3
	ret po                                                  ; $288a : $e0

	xor d                                                  ; $288b : $aa
	inc c                                                  ; $288c : $0c
	jp pe, $baaf                                                  ; $288d : $ea, $af, $ba
	call pe, $e85d                                                  ; $2890 : $ec, $5d, $e8
	or b                                                  ; $2893 : $b0
	dec bc                                                  ; $2894 : $0b
	retn                                                  ; $2895 : $ed, $45
	push hl                                                  ; $2897 : $e5
	ld a, a                                                  ; $2898 : $7f
	call pe, Call_04_0ea9                                                  ; $2899 : $ec, $a9, $0e
	adc a, $89                                                  ; $289c : $ce, $89
	ld d, c                                                  ; $289e : $51
	inc d                                                  ; $289f : $14
	call po, $e540                                                  ; $28a0 : $e4, $40, $e5
	sub c                                                  ; $28a3 : $91
	sub d                                                  ; $28a4 : $92
	ex de, hl                                                  ; $28a5 : $eb
	jp (hl)                                                  ; $28a6 : $e9


	ld h, e                                                  ; $28a7 : $63
	xor d                                                  ; $28a8 : $aa
	dec bc                                                  ; $28a9 : $0b
	jp pe, $eb11                                                  ; $28aa : $ea, $11, $eb
	pop hl                                                  ; $28ad : $e1
	push hl                                                  ; $28ae : $e5
	ld ($ce0d), hl                                                  ; $28af : $22, $0d, $ce
	and d                                                  ; $28b2 : $a2
	sub d                                                  ; $28b3 : $92
	jp po, $567d                                                  ; $28b4 : $e2, $7d, $56
	inc c                                                  ; $28b7 : $0c
	ld e, b                                                  ; $28b8 : $58
	call pe, $7dbc                                                  ; $28b9 : $ec, $bc, $7d
	cpl                                                  ; $28bc : $2f
	dec bc                                                  ; $28bd : $0b
	in b, (c)                                                  ; $28be : $ed, $40
	ex de, hl                                                  ; $28c0 : $eb
	sbc a, l                                                  ; $28c1 : $9d
	jp po, Jump_04_12f8                                                  ; $28c2 : $e2, $f8, $12
	call z, $f0e4                                                  ; $28c5 : $cc, $e4, $f0
	jp nc, $eba6                                                  ; $28c8 : $d2, $a6, $eb
	inc e                                                  ; $28cb : $1c
	pop hl                                                  ; $28cc : $e1
	cp $c0                                                  ; $28cd : $fe, $c0
	pop hl                                                  ; $28cf : $e1
	jr -$18                                                  ; $28d0 : $18, $e8

	inc hl                                                  ; $28d2 : $23
	sub d                                                  ; $28d3 : $92
	inc c                                                  ; $28d4 : $0c
	and (hl)                                                  ; $28d5 : $a6
	dec bc                                                  ; $28d6 : $0b
	pop hl                                                  ; $28d7 : $e1
	ld e, e                                                  ; $28d8 : $5b
	call pe, $e347                                                  ; $28d9 : $ec, $47, $e3
	add a, l                                                  ; $28dc : $85
	inc d                                                  ; $28dd : $14
	adc a, $a2                                                  ; $28de : $ce, $a2
	sub d                                                  ; $28e0 : $92
	.db $ed                                                  ; $28e1 : $ed

Jump_04_28e2:
	inc (hl)                                                  ; $28e2 : $34
	ret pe                                                  ; $28e3 : $e8

	jp po, $47e8                                                  ; $28e4 : $e2, $e8, $47
	jp pe, $ed7e                                                  ; $28e7 : $ea, $7e, $ed
	push hl                                                  ; $28ea : $e5
	ld d, $8f                                                  ; $28eb : $16, $8f
	.db $ed                                                  ; $28ed : $ed
	sub h                                                  ; $28ee : $94
	call pe, Call_04_0b91                                                  ; $28ef : $ec, $91, $0b
	jp (hl)                                                  ; $28f2 : $e9


	halt                                                  ; $28f3 : $76
	call po, $e30a                                                  ; $28f4 : $e4, $0a, $e3
	ld c, $0d                                                  ; $28f7 : $0e, $0d
	ret                                                  ; $28f9 : $c9


	ex (sp), hl                                                  ; $28fa : $e3
	sbc a, e                                                  ; $28fb : $9b
	jp (hl)                                                  ; $28fc : $e9


	sbc a, $47                                                  ; $28fd : $de, $47
	ld d, a                                                  ; $28ff : $57
	ret pe                                                  ; $2900 : $e8

	dec de                                                  ; $2901 : $1b
	sub d                                                  ; $2902 : $92
	rst $20                                                  ; $2903 : $e7
	ld (hl), l                                                  ; $2904 : $75
	dec bc                                                  ; $2905 : $0b
	jp po, $e8ab                                                  ; $2906 : $e2, $ab, $e8
	inc e                                                  ; $2909 : $1c
	push hl                                                  ; $290a : $e5
	add hl, sp                                                  ; $290b : $39
	ld a, (bc)                                                  ; $290c : $0a
	out ($97), a                                                  ; $290d : $d3, $97
	rst $20                                                  ; $290f : $e7
	ld (hl), e                                                  ; $2910 : $73
	ld (hl), b                                                  ; $2911 : $70
	ld d, e                                                  ; $2912 : $53
	or h                                                  ; $2913 : $b4
	call pe, Call_04_0b1d                                                  ; $2914 : $ec, $1d, $0b
	call po, $84b8                                                  ; $2917 : $e4, $b8, $84
	jp (hl)                                                  ; $291a : $e9


	sub h                                                  ; $291b : $94
	ld c, $cb                                                  ; $291c : $0e, $cb
	inc d                                                  ; $291e : $14
	call po, Call_04_3b1f                                                  ; $291f : $e4, $1f, $3b
	or e                                                  ; $2922 : $b3
	call po, Call_04_0ce2                                                  ; $2923 : $e4, $e2, $0c
	jp po, $e9bf                                                  ; $2926 : $e2, $bf, $e9
	ld ($e20b), hl                                                  ; $2929 : $22, $0b, $e2
	add a, h                                                  ; $292c : $84
	call po, $e2b8                                                  ; $292d : $e4, $b8, $e2
	xor d                                                  ; $2930 : $aa
	dec d                                                  ; $2931 : $15
	ret pe                                                  ; $2932 : $e8

	ld (hl), h                                                  ; $2933 : $74
	ex de, hl                                                  ; $2934 : $eb
	inc d                                                  ; $2935 : $14
	and $fb                                                  ; $2936 : $e6, $fb
	jp pe, $b3f8                                                  ; $2938 : $ea, $f8, $b3
	rst $20                                                  ; $293b : $e7
	and b                                                  ; $293c : $a0
	call pe, $e0b6                                                  ; $293d : $ec, $b6, $e0
	ld (hl), d                                                  ; $2940 : $72
	ld l, h                                                  ; $2941 : $6c
	call po, $ba49                                                  ; $2942 : $e4, $49, $ba
	sbc a, $01                                                  ; $2945 : $de, $01
	.db $ed                                                  ; $2947 : $ed
	and h                                                  ; $2948 : $a4
	rst $20                                                  ; $2949 : $e7
	rst $38                                                  ; $294a : $ff
	ld d, e                                                  ; $294b : $53
	dec bc                                                  ; $294c : $0b
	adc a, $eb                                                  ; $294d : $ce, $eb
	ld (bc), a                                                  ; $294f : $02
	.db $ed                                                  ; $2950 : $ed
	ld e, $92                                                  ; $2951 : $1e, $92
	.db $ed                                                  ; $2953 : $ed
	and h                                                  ; $2954 : $a4
	rst $20                                                  ; $2955 : $e7
	or d                                                  ; $2956 : $b2
	dec bc                                                  ; $2957 : $0b
	rst $20                                                  ; $2958 : $e7
	and b                                                  ; $2959 : $a0
	ret pe                                                  ; $295a : $e8

	ld (hl), e                                                  ; $295b : $73
	and $cf                                                  ; $295c : $e6, $cf
	push hl                                                  ; $295e : $e5
	ld (hl), h                                                  ; $295f : $74
	djnz -$4c                                                  ; $2960 : $10, $b4
	ex (sp), hl                                                  ; $2962 : $e3
	adc a, d                                                  ; $2963 : $8a
	sub d                                                  ; $2964 : $92
	add a, d                                                  ; $2965 : $82
	ld l, h                                                  ; $2966 : $6c
	jp po, $2c18                                                  ; $2967 : $e2, $18, $2c
	ex (sp), hl                                                  ; $296a : $e3
	rst $00                                                  ; $296b : $c7
	rst $20                                                  ; $296c : $e7
	and b                                                  ; $296d : $a0
	inc l                                                  ; $296e : $2c
	ret                                                  ; $296f : $c9


	dec bc                                                  ; $2970 : $0b
	jp (hl)                                                  ; $2971 : $e9


	or c                                                  ; $2972 : $b1
	dec e                                                  ; $2973 : $1d
	.db $ed                                                  ; $2974 : $ed
	halt                                                  ; $2975 : $76
	dec bc                                                  ; $2976 : $0b
	adc a, $e8                                                  ; $2977 : $ce, $e8
	ld e, b                                                  ; $2979 : $58
	jp po, $e985                                                  ; $297a : $e2, $85, $e9
	inc de                                                  ; $297d : $13
	sub e                                                  ; $297e : $93
	pop hl                                                  ; $297f : $e1
	ld ($e90b), hl                                                  ; $2980 : $22, $0b, $e9
	pop af                                                  ; $2983 : $f1
	rst $20                                                  ; $2984 : $e7
	ei                                                  ; $2985 : $fb
	call po, Call_04_1920                                                  ; $2986 : $e4, $20, $19
	rst $20                                                  ; $2989 : $e7
	sub e                                                  ; $298a : $93
	ex (sp), hl                                                  ; $298b : $e3
	cp b                                                  ; $298c : $b8
	cp b                                                  ; $298d : $b8
	call po, $92f2                                                  ; $298e : $e4, $f2, $92
	jp pe, Jump_04_0124                                                  ; $2991 : $ea, $24, $01
	ret po                                                  ; $2994 : $e0

	xor h                                                  ; $2995 : $ac
	ld d, $e1                                                  ; $2996 : $16, $e1
	adc a, (hl)                                                  ; $2998 : $8e
	cpd                                                  ; $2999 : $ed, $a9
	ld c, (hl)                                                  ; $299b : $4e
	cp h                                                  ; $299c : $bc
	ld bc, $ec8a                                                  ; $299d : $01, $8a, $ec
	sbc a, (hl)                                                  ; $29a0 : $9e
	ld bc, $26ea                                                  ; $29a1 : $01, $ea, $26
	pop hl                                                  ; $29a4 : $e1
	inc hl                                                  ; $29a5 : $23
	push hl                                                  ; $29a6 : $e5
	daa                                                  ; $29a7 : $27
	ld (de), a                                                  ; $29a8 : $12
	ret                                                  ; $29a9 : $c9


	pop hl                                                  ; $29aa : $e1
	inc hl                                                  ; $29ab : $23
	jp (hl)                                                  ; $29ac : $e9


	inc de                                                  ; $29ad : $13
	sbc a, e                                                  ; $29ae : $9b
	call pe, $e986                                                  ; $29af : $ec, $86, $e9
	jp p, $656c                                                  ; $29b2 : $f2, $6c, $65
	ret pe                                                  ; $29b5 : $e8

	and d                                                  ; $29b6 : $a2
	sub d                                                  ; $29b7 : $92
	pop hl                                                  ; $29b8 : $e1
	inc h                                                  ; $29b9 : $24
	dec bc                                                  ; $29ba : $0b
	call po, $e720                                                  ; $29bb : $e4, $20, $e7
	ei                                                  ; $29be : $fb
	ret pe                                                  ; $29bf : $e8

	ld h, l                                                  ; $29c0 : $65
	rrca                                                  ; $29c1 : $0f
	adc a, $ec                                                  ; $29c2 : $ce, $ec
	ld e, b                                                  ; $29c4 : $58
	cpl                                                  ; $29c5 : $2f
	or e                                                  ; $29c6 : $b3
	ex de, hl                                                  ; $29c7 : $eb
	ld e, l                                                  ; $29c8 : $5d
	or h                                                  ; $29c9 : $b4
	jp pe, Jump_04_255f                                                  ; $29ca : $ea, $5f, $25
	or h                                                  ; $29cd : $b4
	call po, $0b24                                                  ; $29ce : $e4, $24, $0b
	jp po, $e491                                                  ; $29d1 : $e2, $91, $e4
	inc hl                                                  ; $29d4 : $23
	jp (hl)                                                  ; $29d5 : $e9


	inc a                                                  ; $29d6 : $3c
	dec c                                                  ; $29d7 : $0d
	inc c                                                  ; $29d8 : $0c
	jp po, $e291                                                  ; $29d9 : $e2, $91, $e2
	ld a, l                                                  ; $29dc : $7d
	or e                                                  ; $29dd : $b3
	jp pe, $e560                                                  ; $29de : $ea, $60, $e5
	jp z, $6f48                                                  ; $29e1 : $ca, $48, $6f
	dec bc                                                  ; $29e4 : $0b
	call pe, $e294                                                  ; $29e5 : $ec, $94, $e2
	ex af, af'                                                  ; $29e8 : $08
	call po, Call_04_1275                                                  ; $29e9 : $e4, $75, $12
	pop hl                                                  ; $29ec : $e1
	push de                                                  ; $29ed : $d5
	and $fb                                                  ; $29ee : $e6, $fb
	xor a                                                  ; $29f0 : $af
	or e                                                  ; $29f1 : $b3
	or h                                                  ; $29f2 : $b4
	.db $ed                                                  ; $29f3 : $ed
	halt                                                  ; $29f4 : $76
	sub d                                                  ; $29f5 : $92
	ld e, b                                                  ; $29f6 : $58
	sbc hl, bc                                                  ; $29f7 : $ed, $42
	and $67                                                  ; $29f9 : $e6, $67
	rst $10                                                  ; $29fb : $d7
	ret                                                  ; $29fc : $c9


	dec bc                                                  ; $29fd : $0b
	ret po                                                  ; $29fe : $e0

	cp h                                                  ; $29ff : $bc
	ex (sp), hl                                                  ; $2a00 : $e3
	adc a, d                                                  ; $2a01 : $8a
	jp (hl)                                                  ; $2a02 : $e9


	cp a                                                  ; $2a03 : $bf
	djnz -$2c                                                  ; $2a04 : $10, $d4
	ld e, d                                                  ; $2a06 : $5a
	ex de, hl                                                  ; $2a07 : $eb
	inc b                                                  ; $2a08 : $04
	ex de, hl                                                  ; $2a09 : $eb
	call pe, $8260                                                  ; $2a0a : $ec, $60, $82
	ex (sp), hl                                                  ; $2a0d : $e3
	dec hl                                                  ; $2a0e : $2b
	inc h                                                  ; $2a0f : $24
	call pe, $6adf                                                  ; $2a10 : $ec, $df, $6a
	ld c, b                                                  ; $2a13 : $48

br_04_2a14:
	dec bc                                                  ; $2a14 : $0b

br_04_2a15:
	ret pe                                                  ; $2a15 : $e8

	ld (hl), e                                                  ; $2a16 : $73
	pop hl                                                  ; $2a17 : $e1
	call nc, $1ce4                                                  ; $2a18 : $d4, $e4, $1c
	dec c                                                  ; $2a1b : $0d
	jp z, Jump_04_1be3                                                  ; $2a1c : $ca, $e3, $1b
	jp pe, $63b5                                                  ; $2a1f : $ea, $b5, $63
	ret pe                                                  ; $2a22 : $e8

	sbc a, a                                                  ; $2a23 : $9f
	jp pe, $803b                                                  ; $2a24 : $ea, $3b, $80
	ld d, (hl)                                                  ; $2a27 : $56
	dec bc                                                  ; $2a28 : $0b
	jp (hl)                                                  ; $2a29 : $e9


	adc a, c                                                  ; $2a2a : $89
	.db $ed                                                  ; $2a2b : $ed
	inc l                                                  ; $2a2c : $2c
	jp po, Jump_04_0b15                                                  ; $2a2d : $e2, $15, $0b
	rst $08                                                  ; $2a30 : $cf
	or h                                                  ; $2a31 : $b4
	and d                                                  ; $2a32 : $a2
	or l                                                  ; $2a33 : $b5
	.db $ed                                                  ; $2a34 : $ed
	inc sp                                                  ; $2a35 : $33
	cp d                                                  ; $2a36 : $ba
	push hl                                                  ; $2a37 : $e5
	scf                                                  ; $2a38 : $37
	ld c, b                                                  ; $2a39 : $48
	dec bc                                                  ; $2a3a : $0b
	call po, $eccb                                                  ; $2a3b : $e4, $cb, $ec
	push ix                                                  ; $2a3e : $dd, $e5
	rra                                                  ; $2a40 : $1f
	inc d                                                  ; $2a41 : $14
	ret pe                                                  ; $2a42 : $e8

	ld (hl), e                                                  ; $2a43 : $73
	ex (sp), hl                                                  ; $2a44 : $e3
	cp b                                                  ; $2a45 : $b8
	or e                                                  ; $2a46 : $b3
	or h                                                  ; $2a47 : $b4
	rst $20                                                  ; $2a48 : $e7
	and b                                                  ; $2a49 : $a0
	sub d                                                  ; $2a4a : $92
	inc d                                                  ; $2a4b : $14
	sub b                                                  ; $2a4c : $90
	call pe, $74b6                                                  ; $2a4d : $ec, $b6, $74
	ret po                                                  ; $2a50 : $e0

	ld (hl), d                                                  ; $2a51 : $72
	jp (hl)                                                  ; $2a52 : $e9


	call c, Call_04_0bc9                                                  ; $2a53 : $dc, $c9, $0b
	.db $ed                                                  ; $2a56 : $ed
	and h                                                  ; $2a57 : $a4
	jp (hl)                                                  ; $2a58 : $e9


	or e                                                  ; $2a59 : $b3
	ld d, e                                                  ; $2a5a : $53
	dec c                                                  ; $2a5b : $0d
	rst $20                                                  ; $2a5c : $e7
	and h                                                  ; $2a5d : $a4
	or e                                                  ; $2a5e : $b3
	jp po, $e44c                                                  ; $2a5f : $e2, $4c, $e4
	ld e, $3b                                                  ; $2a62 : $1e, $3b
	call po, $e001                                                  ; $2a64 : $e4, $01, $e0
	call m, $ed0b                                                  ; $2a67 : $fc, $0b, $ed
	.db $ed                                                  ; $2a6a : $ed
	and $57                                                  ; $2a6b : $e6, $57
	jp po, Jump_04_12fc                                                  ; $2a6d : $e2, $fc, $12
	ret                                                  ; $2a70 : $c9


	or d                                                  ; $2a71 : $b2
	rst $20                                                  ; $2a72 : $e7
	or e                                                  ; $2a73 : $b3
	or h                                                  ; $2a74 : $b4
	ret po                                                  ; $2a75 : $e0

	cp h                                                  ; $2a76 : $bc
	sub d                                                  ; $2a77 : $92
	ld b, a                                                  ; $2a78 : $47
	or e                                                  ; $2a79 : $b3
	jp (hl)                                                  ; $2a7a : $e9


	ld a, (de)                                                  ; $2a7b : $1a
	inc c                                                  ; $2a7c : $0c
	push hl                                                  ; $2a7d : $e5
	ld e, d                                                  ; $2a7e : $5a
	jp (hl)                                                  ; $2a7f : $e9


	adc a, (hl)                                                  ; $2a80 : $8e
	dec bc                                                  ; $2a81 : $0b
	ld ($98ed), sp                                                  ; $2a82 : $ed, $73, $ed, $98
	ret po                                                  ; $2a86 : $e0

	cp l                                                  ; $2a87 : $bd
	djnz br_04_2a14                                                  ; $2a88 : $10, $8a
	pop hl                                                  ; $2a8a : $e1
	jp c, $eb92                                                  ; $2a8b : $da, $92, $eb
	ld bc, $ecb3                                                  ; $2a8e : $01, $b3, $ec
	jr nz, br_04_2a15                                                  ; $2a91 : $20, $82

	ld d, $60                                                  ; $2a93 : $16, $60
	ld (hl), d                                                  ; $2a95 : $72
	jp po, Jump_04_017f                                                  ; $2a96 : $e2, $7f, $01
	pop hl                                                  ; $2a99 : $e1
	sbc a, e                                                  ; $2a9a : $9b
	jp (hl)                                                  ; $2a9b : $e9


	ld e, d                                                  ; $2a9c : $5a
	jp po, Jump_04_0d93                                                  ; $2a9d : $e2, $93, $0d
	.db $ed                                                  ; $2aa0 : $ed
	xor a                                                  ; $2aa1 : $af
	ld de, $e27e                                                  ; $2aa2 : $11, $7e, $e2
	pop af                                                  ; $2aa5 : $f1
	or e                                                  ; $2aa6 : $b3
	ex (sp), hl                                                  ; $2aa7 : $e3
	inc de                                                  ; $2aa8 : $13
	jp po, Jump_04_2f3d                                                  ; $2aa9 : $e2, $3d, $2f
	dec bc                                                  ; $2aac : $0b
	push hl                                                  ; $2aad : $e5
	ld a, h                                                  ; $2aae : $7c
	ret pe                                                  ; $2aaf : $e8

	ld b, a                                                  ; $2ab0 : $47
	ret pe                                                  ; $2ab1 : $e8

	call nc, $d418                                                  ; $2ab2 : $d4, $18, $d4
	and $52                                                  ; $2ab5 : $e6, $52
	jp po, $6cf0                                                  ; $2ab7 : $e2, $f0, $6c
	call po, $63fa                                                  ; $2aba : $e4, $fa, $63
	cp $fe                                                  ; $2abd : $fe, $fe
	ld (hl), $35                                                  ; $2abf : $36, $35
	dec l                                                  ; $2ac1 : $2d
	add hl, sp                                                  ; $2ac2 : $39
	dec (hl)                                                  ; $2ac3 : $35
	dec h                                                  ; $2ac4 : $25
	rst $38                                                  ; $2ac5 : $ff
	sub d                                                  ; $2ac6 : $92
	ld de, $e77e                                                  ; $2ac7 : $11, $7e, $e7
	and e                                                  ; $2aca : $a3
	dec bc                                                  ; $2acb : $0b
	ret pe                                                  ; $2acc : $e8

	rst $28                                                  ; $2acd : $ef
	call po, $c5e3                                                  ; $2ace : $e4, $e3, $c5
	dec c                                                  ; $2ad1 : $0d
	call nc, $79e0                                                  ; $2ad2 : $d4, $e0, $79
	ret po                                                  ; $2ad5 : $e0

	pop iy                                                  ; $2ad6 : $fd, $e1
	call m, $aee1                                                  ; $2ad8 : $fc, $e1, $ae
	sub d                                                  ; $2adb : $92
	jp (hl)                                                  ; $2adc : $e9


	call pe, $e50b                                                  ; $2add : $ec, $0b, $e5
	ld h, c                                                  ; $2ae0 : $61
	and $22                                                  ; $2ae1 : $e6, $22
	ret po                                                  ; $2ae3 : $e0

	cp c                                                  ; $2ae4 : $b9
	rrca                                                  ; $2ae5 : $0f
	jp z, $85eb                                                  ; $2ae6 : $ca, $eb, $85
	.db $ed                                                  ; $2ae9 : $ed
	ld ($e7b3), hl                                                  ; $2aea : $22, $b3, $e7
	ld a, e                                                  ; $2aed : $7b
	ret nz                                                  ; $2aee : $c0

	call po, $7e68                                                  ; $2aef : $e4, $68, $7e
	call pe, Call_04_0b9b                                                  ; $2af2 : $ec, $9b, $0b
	call po, $e721                                                  ; $2af5 : $e4, $21, $e7
	call m, $66e2                                                  ; $2af8 : $fc, $e2, $66
	add hl, bc                                                  ; $2afb : $09
	or h                                                  ; $2afc : $b4
	ld a, c                                                  ; $2afd : $79
	sbc a, l                                                  ; $2afe : $9d
	inc c                                                  ; $2aff : $0c
	ld a, (hl)                                                  ; $2b00 : $7e
	jp po, $6f65                                                  ; $2b01 : $e2, $65, $6f
	dec bc                                                  ; $2b04 : $0b
	ret pe                                                  ; $2b05 : $e8

	and d                                                  ; $2b06 : $a2
	rst $20                                                  ; $2b07 : $e7
	jp $59e3                                                  ; $2b08 : $c3, $e3, $59


	ld de, $e2cd                                                  ; $2b0b : $11, $cd, $e2
	ld h, l                                                  ; $2b0e : $65
	rst $20                                                  ; $2b0f : $e7
	jp $d22f                                                  ; $2b10 : $c3, $2f, $d2


	ld (hl), d                                                  ; $2b13 : $72
	ret po                                                  ; $2b14 : $e0

	xor d                                                  ; $2b15 : $aa
	rst $20                                                  ; $2b16 : $e7
	and h                                                  ; $2b17 : $a4
	cp d                                                  ; $2b18 : $ba
	jp (hl)                                                  ; $2b19 : $e9


	rla                                                  ; $2b1a : $17
	cp c                                                  ; $2b1b : $b9
	dec bc                                                  ; $2b1c : $0b
	call pe, $e3e4                                                  ; $2b1d : $ec, $e4, $e3
	xor b                                                  ; $2b20 : $a8
	jp (hl)                                                  ; $2b21 : $e9


	ld b, b                                                  ; $2b22 : $40
	djnz -$34                                                  ; $2b23 : $10, $cc
	ld (hl), d                                                  ; $2b25 : $72
	cpl                                                  ; $2b26 : $2f
	jp nc, $e3c5                                                  ; $2b27 : $d2, $c5, $e3
	xor c                                                  ; $2b2a : $a9
	cp c                                                  ; $2b2b : $b9
	inc c                                                  ; $2b2c : $0c
	ex de, hl                                                  ; $2b2d : $eb
	dec h                                                  ; $2b2e : $25
	jp po, $e765                                                  ; $2b2f : $e2, $65, $e7
	jp $ec0b                                                  ; $2b32 : $c3, $0b, $ec


	.db $dd                                                  ; $2b35 : $dd
	call po, $e86c                                                  ; $2b36 : $e4, $6c, $e8
	rst $18                                                  ; $2b39 : $df
	dec c                                                  ; $2b3a : $0d
	ldir                                                  ; $2b3b : $ed, $b0
	ld de, $7ae9                                                  ; $2b3d : $11, $e9, $7a
	ret pe                                                  ; $2b40 : $e8

	ld d, (hl)                                                  ; $2b41 : $56
	cp d                                                  ; $2b42 : $ba
	rst $20                                                  ; $2b43 : $e7
	ld a, e                                                  ; $2b44 : $7b
	jp po, $0ba0                                                  ; $2b45 : $e2, $a0, $0b
	push hl                                                  ; $2b48 : $e5
	jp z, $7bc5                                                  ; $2b49 : $ca, $c5, $7b
	inc c                                                  ; $2b4c : $0c
	adc a, d                                                  ; $2b4d : $8a
	ret pe                                                  ; $2b4e : $e8

	call po, $eae9                                                  ; $2b4f : $e4, $e9, $ea
	call pe, $92b8                                                  ; $2b52 : $ec, $b8, $92
	inc c                                                  ; $2b55 : $0c
	rst $20                                                  ; $2b56 : $e7
	ld b, $01                                                  ; $2b57 : $06, $01
	ex de, hl                                                  ; $2b59 : $eb
	ld a, c                                                  ; $2b5a : $79
	rst $20                                                  ; $2b5b : $e7
	jp $47e4                                                  ; $2b5c : $c3, $e4, $47


	inc c                                                  ; $2b5f : $0c
	adc a, $e6                                                  ; $2b60 : $ce, $e6
	ld e, e                                                  ; $2b62 : $5b
	call pe, $eb3b                                                  ; $2b63 : $ec, $3b, $eb
	ld a, b                                                  ; $2b66 : $78
	sub d                                                  ; $2b67 : $92
	in d, (c)                                                  ; $2b68 : $ed, $50
	cpl                                                  ; $2b6a : $2f
	dec bc                                                  ; $2b6b : $0b
	call po, $e674                                                  ; $2b6c : $e4, $74, $e6
	ld d, b                                                  ; $2b6f : $50
	call po, Call_04_0b3c                                                  ; $2b70 : $e4, $3c, $0b
	jp z, $c4e8                                                  ; $2b73 : $ca, $e8, $c4
	rst $20                                                  ; $2b76 : $e7
	add a, c                                                  ; $2b77 : $81
	or e                                                  ; $2b78 : $b3
	jp po, $e424                                                  ; $2b79 : $e2, $24, $e4

Call_04_2b7c:
	sbc a, $0b                                                  ; $2b7c : $de, $0b
	pop hl                                                  ; $2b7e : $e1
	sbc a, a                                                  ; $2b7f : $9f
	.db $ed                                                  ; $2b80 : $ed
	ld a, (hl)                                                  ; $2b81 : $7e
	pop hl                                                  ; $2b82 : $e1
	ld e, a                                                  ; $2b83 : $5f
	pop hl                                                  ; $2b84 : $e1
	ld e, l                                                  ; $2b85 : $5d
	ld (de), a                                                  ; $2b86 : $12
	call nc, $93b1                                                  ; $2b87 : $d4, $b1, $93
	ld h, d                                                  ; $2b8a : $62
	daa                                                  ; $2b8b : $27
	call po, $e56d                                                  ; $2b8c : $e4, $6d, $e5
	dec l                                                  ; $2b8f : $2d
	dec h                                                  ; $2b90 : $25
	ret pe                                                  ; $2b91 : $e8

	ret pe                                                  ; $2b92 : $e8

	ld d, $e6                                                  ; $2b93 : $16, $e6
	ld d, h                                                  ; $2b95 : $54
	or h                                                  ; $2b96 : $b4
	daa                                                  ; $2b97 : $27
	dec bc                                                  ; $2b98 : $0b
	call po, $e36f                                                  ; $2b99 : $e4, $6f, $e3
	xor e                                                  ; $2b9c : $ab
	jp pe, $ea80                                                  ; $2b9d : $ea, $80, $ea
	ld a, a                                                  ; $2ba0 : $7f
	ld a, (bc)                                                  ; $2ba1 : $0a
	call nc, $93b1                                                  ; $2ba2 : $d4, $b1, $93
	ld h, d                                                  ; $2ba5 : $62
	daa                                                  ; $2ba6 : $27
	call po, $ed28                                                  ; $2ba7 : $e4, $28, $ed
	sub e                                                  ; $2baa : $93
	dec bc                                                  ; $2bab : $0b
	ex (sp), hl                                                  ; $2bac : $e3
	xor e                                                  ; $2bad : $ab
	jp pe, $e471                                                  ; $2bae : $ea, $71, $e4
	ld l, a                                                  ; $2bb1 : $6f
	rla                                                  ; $2bb2 : $17
	call nc, $93a2                                                  ; $2bb3 : $d4, $a2, $93
	ld h, d                                                  ; $2bb6 : $62
	daa                                                  ; $2bb7 : $27
	pop hl                                                  ; $2bb8 : $e1
	ret po                                                  ; $2bb9 : $e0

	ex (sp), hl                                                  ; $2bba : $e3
	jp c, $e3e4                                                  ; $2bbb : $da, $e4, $e3
	ex de, hl                                                  ; $2bbe : $eb
	sub c                                                  ; $2bbf : $91
	ld (hl), d                                                  ; $2bc0 : $72
	jp po, Jump_04_2424                                                  ; $2bc1 : $e2, $24, $24
	.db $ed                                                  ; $2bc4 : $ed
	ld ($e22c), a                                                  ; $2bc5 : $32, $2c, $e2
	ld h, (hl)                                                  ; $2bc8 : $66
	dec bc                                                  ; $2bc9 : $0b
	jp po, $e491                                                  ; $2bca : $e2, $91, $e4
	ld l, (hl)                                                  ; $2bcd : $6e
	ex (sp), hl                                                  ; $2bce : $e3
	xor d                                                  ; $2bcf : $aa
	ex (sp), hl                                                  ; $2bd0 : $e3
	xor e                                                  ; $2bd1 : $ab
	dec bc                                                  ; $2bd2 : $0b
	bit 7, (hl)                                                  ; $2bd3 : $cb, $7e
	ret pe                                                  ; $2bd5 : $e8

	sub $16                                                  ; $2bd6 : $d6, $16
	or (hl)                                                  ; $2bd8 : $b6
	ret pe                                                  ; $2bd9 : $e8

	add a, a                                                  ; $2bda : $87
	call po, Call_04_0b45                                                  ; $2bdb : $e4, $45, $0b
	jp po, $ecba                                                  ; $2bde : $e2, $ba, $ec
	ld c, l                                                  ; $2be1 : $4d
	call po, Call_04_0e0c                                                  ; $2be2 : $e4, $0c, $0e
	ld h, e                                                  ; $2be5 : $63
	call nc, $21e1                                                  ; $2be6 : $d4, $e1, $21
	rst $20                                                  ; $2be9 : $e7
	ld bc, $e642                                                  ; $2bea : $01, $42, $e6
	jr c, -$18                                                  ; $2bed : $38, $e8

	pop af                                                  ; $2bef : $f1
	ret po                                                  ; $2bf0 : $e0

	and $0b                                                  ; $2bf1 : $e6, $0b
	call pe, $ecfd                                                  ; $2bf3 : $ec, $fd, $ec
	sub a                                                  ; $2bf6 : $97
	call pe, Call_04_1112                                                  ; $2bf7 : $ec, $12, $11

br_04_2bfa:
	rrc h                                                  ; $2bfa : $cb, $0c
	ld a, l                                                  ; $2bfc : $7d
	ex de, hl                                                  ; $2bfd : $eb
	and c                                                  ; $2bfe : $a1
	or e                                                  ; $2bff : $b3
	jp po, $e32d                                                  ; $2c00 : $e2, $2d, $e3
	cp h                                                  ; $2c03 : $bc
	ret po                                                  ; $2c04 : $e0

	.db $dd                                                  ; $2c05 : $dd
	ret pe                                                  ; $2c06 : $e8

	ld c, $eb                                                  ; $2c07 : $0e, $eb
	sbc a, (hl)                                                  ; $2c09 : $9e
	dec bc                                                  ; $2c0a : $0b
	call pe, $e537                                                  ; $2c0b : $ec, $37, $e5
	jr br_04_2bfa                                                  ; $2c0e : $18, $ea

	jp p, $cc10                                                  ; $2c10 : $f2, $10, $cc
	push bc                                                  ; $2c13 : $c5
	cpl                                                  ; $2c14 : $2f
	or e                                                  ; $2c15 : $b3

br_04_2c16:
	jp po, $65cf                                                  ; $2c16 : $e2, $cf, $65
	jp (hl)                                                  ; $2c19 : $e9


	ld b, b                                                  ; $2c1a : $40
	jp pe, $e1ad                                                  ; $2c1b : $ea, $ad, $e1
	add a, l                                                  ; $2c1e : $85
	or h                                                  ; $2c1f : $b4
	xor b                                                  ; $2c20 : $a8
	dec bc                                                  ; $2c21 : $0b
	ex de, hl                                                  ; $2c22 : $eb
	out ($e7), a                                                  ; $2c23 : $d3, $e7
	ld d, h                                                  ; $2c25 : $54
	push hl                                                  ; $2c26 : $e5
	sub b                                                  ; $2c27 : $90
	push hl                                                  ; $2c28 : $e5
	adc a, a                                                  ; $2c29 : $8f
	ld de, $87ce                                                  ; $2c2a : $11, $ce, $87
	jp (hl)                                                  ; $2c2d : $e9


	or l                                                  ; $2c2e : $b5
	rst $20                                                  ; $2c2f : $e7
	adc a, $92                                                  ; $2c30 : $ce, $92
	push hl                                                  ; $2c32 : $e5
	ld c, a                                                  ; $2c33 : $4f
	push hl                                                  ; $2c34 : $e5
	ld a, (bc)                                                  ; $2c35 : $0a
	push bc                                                  ; $2c36 : $c5
	ld d, (hl)                                                  ; $2c37 : $56
	jp pe, $c5de                                                  ; $2c38 : $ea, $de, $c5
	dec bc                                                  ; $2c3b : $0b
	push hl                                                  ; $2c3c : $e5
	call z, $f9e2                                                  ; $2c3d : $cc, $e2, $f9
	ex (sp), hl                                                  ; $2c40 : $e3
	cp a                                                  ; $2c41 : $bf
	ex (sp), hl                                                  ; $2c42 : $e3
	ret nz                                                  ; $2c43 : $c0

	djnz br_04_2c16                                                  ; $2c44 : $10, $d0
	ld c, b                                                  ; $2c46 : $48
	ld l, h                                                  ; $2c47 : $6c
	ex (sp), hl                                                  ; $2c48 : $e3
	inc a                                                  ; $2c49 : $3c
	inc l                                                  ; $2c4a : $2c
	push hl                                                  ; $2c4b : $e5
	set 5, e                                                  ; $2c4c : $cb, $eb
	di                                                  ; $2c4e : $f3
	jp pe, $57a3                                                  ; $2c4f : $ea, $a3, $57
	push hl                                                  ; $2c52 : $e5
	adc a, a                                                  ; $2c53 : $8f
	dec bc                                                  ; $2c54 : $0b
	ld e, b                                                  ; $2c55 : $58
	push hl                                                  ; $2c56 : $e5
	ld d, c                                                  ; $2c57 : $51
	push hl                                                  ; $2c58 : $e5
	ld b, a                                                  ; $2c59 : $47
	rrca                                                  ; $2c5a : $0f
	call nc, $f7e4                                                  ; $2c5b : $d4, $e4, $f7
	push hl                                                  ; $2c5e : $e5
	ld d, $3f                                                  ; $2c5f : $16, $3f
	.db $ed                                                  ; $2c61 : $ed
	sbc a, (hl)                                                  ; $2c62 : $9e
	ld e, h                                                  ; $2c63 : $5c
	ld h, l                                                  ; $2c64 : $65
	push hl                                                  ; $2c65 : $e5
	add a, e                                                  ; $2c66 : $83
	jp pe, Jump_04_0b0c                                                  ; $2c67 : $ea, $0c, $0b
	sub l                                                  ; $2c6a : $95
	ld e, b                                                  ; $2c6b : $58
	jp po, Jump_04_0dc5                                                  ; $2c6c : $e2, $c5, $0d
	ret                                                  ; $2c6f : $c9


	and $55                                                  ; $2c70 : $e6, $55
	ex de, hl                                                  ; $2c72 : $eb
	ld l, $7b                                                  ; $2c73 : $2e, $7b
	and $60                                                  ; $2c75 : $e6, $60
	ex de, hl                                                  ; $2c77 : $eb
	inc l                                                  ; $2c78 : $2c
	.db $ed                                                  ; $2c79 : $ed
	sbc a, e                                                  ; $2c7a : $9b
	dec bc                                                  ; $2c7b : $0b
	rst $20                                                  ; $2c7c : $e7
	rla                                                  ; $2c7d : $17
	jp pe, $eb22                                                  ; $2c7e : $ea, $22, $eb
	cp (hl)                                                  ; $2c81 : $be
	djnz br_04_2ce7                                                  ; $2c82 : $10, $63
	ld de, $91e2                                                  ; $2c84 : $11, $e2, $91
	jp pe, $823a                                                  ; $2c87 : $ea, $3a, $82
	ld l, h                                                  ; $2c8a : $6c
	ret pe                                                  ; $2c8b : $e8

	ld e, l                                                  ; $2c8c : $5d
	ex (sp), hl                                                  ; $2c8d : $e3
	inc a                                                  ; $2c8e : $3c
	ret pe                                                  ; $2c8f : $e8

	adc a, e                                                  ; $2c90 : $8b
	sbc a, $01                                                  ; $2c91 : $de, $01
	jp po, $e207                                                  ; $2c93 : $e2, $07, $e2
	ld a, (hl)                                                  ; $2c96 : $7e
	ex (sp), hl                                                  ; $2c97 : $e3
	sub d                                                  ; $2c98 : $92
	ld c, $8a                                                  ; $2c99 : $0e, $8a
	sbc a, l                                                  ; $2c9b : $9d
	or h                                                  ; $2c9c : $b4
	ret po                                                  ; $2c9d : $e0

	and h                                                  ; $2c9e : $a4
	jp po, $b327                                                  ; $2c9f : $e2, $27, $b3
	call po, $5782                                                  ; $2ca2 : $e4, $82, $57
	call pe, $0103                                                  ; $2ca5 : $ec, $03, $01
	call po, $ed57                                                  ; $2ca8 : $e4, $57, $ed
	exx                                                  ; $2cab : $d9
	and $5e                                                  ; $2cac : $e6, $5e
	ld a, (bc)                                                  ; $2cae : $0a
	push hl                                                  ; $2caf : $e5
	ld e, c                                                  ; $2cb0 : $59
	or h                                                  ; $2cb1 : $b4
	and $f6                                                  ; $2cb2 : $e6, $f6
	or d                                                  ; $2cb4 : $b2
	ld d, c                                                  ; $2cb5 : $51
	rst $20                                                  ; $2cb6 : $e7
	add a, a                                                  ; $2cb7 : $87
	ld bc, $98e3                                                  ; $2cb8 : $01, $e3, $98
	and $05                                                  ; $2cbb : $e6, $05
	and $04                                                  ; $2cbd : $e6, $04
	inc de                                                  ; $2cbf : $13
	ex (sp), hl                                                  ; $2cc0 : $e3
	call c, $d0ed                                                  ; $2cc1 : $dc, $ed, $d0
	ex de, hl                                                  ; $2cc4 : $eb
	ld e, d                                                  ; $2cc5 : $5a
	or e                                                  ; $2cc6 : $b3
	ret pe                                                  ; $2cc7 : $e8

	ld a, (hl)                                                  ; $2cc8 : $7e
	ret pe                                                  ; $2cc9 : $e8

	xor $e3                                                  ; $2cca : $ee, $e3
	dec hl                                                  ; $2ccc : $2b
	inc h                                                  ; $2ccd : $24
	.db $ed                                                  ; $2cce : $ed
	ld ($141f), a                                                  ; $2ccf : $32, $1f, $14
	ld a, (bc)                                                  ; $2cd2 : $0a
	ret po                                                  ; $2cd3 : $e0

	in a, ($e3)                                                  ; $2cd4 : $db, $e3
	ld d, c                                                  ; $2cd6 : $51
	ret po                                                  ; $2cd7 : $e0

	call nz, $e710                                                  ; $2cd8 : $c4, $10, $e7
	ld e, c                                                  ; $2cdb : $59
	jp (hl)                                                  ; $2cdc : $e9


	rra                                                  ; $2cdd : $1f
	ret po                                                  ; $2cde : $e0

	jp (hl)                                                  ; $2cdf : $e9


	or h                                                  ; $2ce0 : $b4

Call_04_2ce1:
	jp (hl)                                                  ; $2ce1 : $e9


	jp nc, $e692                                                  ; $2ce2 : $d2, $92, $e6
	ld (hl), $b9                                                  ; $2ce5 : $36, $b9

br_04_2ce7:
	call nc, Call_04_0ba2                                                  ; $2ce7 : $d4, $a2, $0b
	call pe, $e040                                                  ; $2cea : $ec, $40, $e0
	jp Jump_04_38ed                                                  ; $2ced : $c3, $ed, $38


	ld de, $84ed                                                  ; $2cf0 : $11, $ed, $84
	jp pe, $e94c                                                  ; $2cf3 : $ea, $4c, $e9
	call p, $eeb3                                                  ; $2cf6 : $f4, $b3, $ee
	inc d                                                  ; $2cf9 : $14
	call po, $c3b4                                                  ; $2cfa : $e4, $b4, $c3
	jp po, $2d4a                                                  ; $2cfd : $e2, $4a, $2d
	sbc a, $01                                                  ; $2d00 : $de, $01
	.db $ed                                                  ; $2d02 : $ed
	sub d                                                  ; $2d03 : $92
	call po, $e8de                                                  ; $2d04 : $e4, $de, $e8
	add hl, de                                                  ; $2d07 : $19
	rrca                                                  ; $2d08 : $0f
	or h                                                  ; $2d09 : $b4
	ex de, hl                                                  ; $2d0a : $eb
	ld bc, $e3b3                                                  ; $2d0b : $01, $b3, $e3
	ld (hl), l                                                  ; $2d0e : $75
	rst $10                                                  ; $2d0f : $d7
	or h                                                  ; $2d10 : $b4
	pop hl                                                  ; $2d11 : $e1
	jr nz, br_04_2d2a                                                  ; $2d12 : $20, $16

	cpi                                                  ; $2d14 : $ed, $a1
	ld l, h                                                  ; $2d16 : $6c
	ld a, (bc)                                                  ; $2d17 : $0a
	pop hl                                                  ; $2d18 : $e1
	inc de                                                  ; $2d19 : $13
	pop hl                                                  ; $2d1a : $e1
	sbc a, e                                                  ; $2d1b : $9b
	rst $20                                                  ; $2d1c : $e7
	call z, $8a0a                                                  ; $2d1d : $cc, $0a, $8a
	ex de, hl                                                  ; $2d20 : $eb
	ld l, l                                                  ; $2d21 : $6d
	ld d, $e7                                                  ; $2d22 : $16, $e7
	cpl                                                  ; $2d24 : $2f
	sub e                                                  ; $2d25 : $93
	call po, Call_04_0124                                                  ; $2d26 : $e4, $24, $01
	push hl                                                  ; $2d29 : $e5

br_04_2d2a:
	ret nc                                                  ; $2d2a : $d0

	pop hl                                                  ; $2d2b : $e1
	add a, $e6                                                  ; $2d2c : $c6, $e6
	inc hl                                                  ; $2d2e : $23
	inc d                                                  ; $2d2f : $14
	ret                                                  ; $2d30 : $c9


	ld (hl), $92                                                  ; $2d31 : $36, $92
	ret pe                                                  ; $2d33 : $e8

	and a                                                  ; $2d34 : $a7
	jp pe, $e850                                                  ; $2d35 : $ea, $50, $e8
	call nz, $7ba4                                                  ; $2d38 : $c4, $a4, $7b
	otdr                                                  ; $2d3b : $ed, $bb
	ld de, $379b                                                  ; $2d3d : $11, $9b, $37
	ld a, (de)                                                  ; $2d40 : $1a
	ret po                                                  ; $2d41 : $e0

	ld l, a                                                  ; $2d42 : $6f
	dec bc                                                  ; $2d43 : $0b
	push hl                                                  ; $2d44 : $e5
	add a, a                                                  ; $2d45 : $87
	pop hl                                                  ; $2d46 : $e1
	or b                                                  ; $2d47 : $b0
	and h                                                  ; $2d48 : $a4
	djnz br_04_2d5f                                                  ; $2d49 : $10, $14
	ret pe                                                  ; $2d4b : $e8

	xor $e3                                                  ; $2d4c : $ee, $e3
	inc d                                                  ; $2d4e : $14
	cp h                                                  ; $2d4f : $bc
	pop hl                                                  ; $2d50 : $e1
	inc h                                                  ; $2d51 : $24
	sub d                                                  ; $2d52 : $92
	ret pe                                                  ; $2d53 : $e8

	rst $28                                                  ; $2d54 : $ef
	ld h, l                                                  ; $2d55 : $65
	rst $20                                                  ; $2d56 : $e7
	ei                                                  ; $2d57 : $fb
	ld l, a                                                  ; $2d58 : $6f
	dec bc                                                  ; $2d59 : $0b
	call pe, $e8f4                                                  ; $2d5a : $ec, $f4, $e8
	.db $ed                                                  ; $2d5d : $ed
	ex (sp), hl                                                  ; $2d5e : $e3

br_04_2d5f:
	xor a                                                  ; $2d5f : $af
	ld de, $ecce                                                  ; $2d60 : $11, $ce, $ec
	inc hl                                                  ; $2d63 : $23
	or e                                                  ; $2d64 : $b3
	call po, $0cf2                                                  ; $2d65 : $e4, $f2, $0c
	call pe, $e79a                                                  ; $2d68 : $ec, $9a, $e7
	ld bc, $36e2                                                  ; $2d6b : $01, $e2, $36
	or h                                                  ; $2d6e : $b4
	call pe, Call_04_0b70                                                  ; $2d6f : $ec, $70, $0b
	push hl                                                  ; $2d72 : $e5
	sbc a, e                                                  ; $2d73 : $9b
	and $e6                                                  ; $2d74 : $e6, $e6
	call po, Call_04_0b36                                                  ; $2d76 : $e4, $36, $0b
	inc c                                                  ; $2d79 : $0c
	jp po, $637d                                                  ; $2d7a : $e2, $7d, $63
	push hl                                                  ; $2d7d : $e5
	call c, $a3e7                                                  ; $2d7e : $dc, $e7, $a3
	ld l, (hl)                                                  ; $2d81 : $6e
	inc c                                                  ; $2d82 : $0c
	ld a, (bc)                                                  ; $2d83 : $0a
	and $36                                                  ; $2d84 : $e6, $36
	call po, $e864                                                  ; $2d86 : $e4, $64, $e8
	add hl, sp                                                  ; $2d89 : $39
	rla                                                  ; $2d8a : $17
	adc a, d                                                  ; $2d8b : $8a
	jp po, $e4c1                                                  ; $2d8c : $e2, $c1, $e4
	xor $e5                                                  ; $2d8f : $ee, $e5
	pop bc                                                  ; $2d91 : $c1
	inc c                                                  ; $2d92 : $0c
	call po, $e1d1                                                  ; $2d93 : $e4, $d1, $e1
	ld d, a                                                  ; $2d96 : $57
	ld d, $e8                                                  ; $2d97 : $16, $e8
	or h                                                  ; $2d99 : $b4
	jp (hl)                                                  ; $2d9a : $e9


	ld h, e                                                  ; $2d9b : $63
	ret nz                                                  ; $2d9c : $c0

	rst $20                                                  ; $2d9d : $e7
	ld sp, $880c                                                  ; $2d9e : $31, $0c, $88
	ld bc, $55e8                                                  ; $2da1 : $01, $e8, $55
	call pe, $e3aa                                                  ; $2da4 : $ec, $aa, $e3
	ld c, (hl)                                                  ; $2da7 : $4e
	rlca                                                  ; $2da8 : $07
	push de                                                  ; $2da9 : $d5
	ld l, e                                                  ; $2daa : $6b
	or h                                                  ; $2dab : $b4
	ld c, (hl)                                                  ; $2dac : $4e
	rst $20                                                  ; $2dad : $e7
	sub $0b                                                  ; $2dae : $d6, $0b
	call pe, $e7a1                                                  ; $2db0 : $ec, $a1, $e7
	ld l, (hl)                                                  ; $2db3 : $6e
	jp pe, $e6aa                                                  ; $2db4 : $ea, $aa, $e6
	ex af, af'                                                  ; $2db7 : $08
	inc c                                                  ; $2db8 : $0c
	adc a, d                                                  ; $2db9 : $8a
	and d                                                  ; $2dba : $a2
	.db $ed                                                  ; $2dbb : $ed
	ld ($ecba), a                                                  ; $2dbc : $32, $ba, $ec
	ld d, h                                                  ; $2dbf : $54
	push hl                                                  ; $2dc0 : $e5
	ld hl, $dbe6                                                  ; $2dc1 : $21, $e6, $db
	ld bc, $78e4                                                  ; $2dc4 : $01, $e4, $78
	and $63                                                  ; $2dc7 : $e6, $63
	ex de, hl                                                  ; $2dc9 : $eb
	inc bc                                                  ; $2dca : $03
	ex de, hl                                                  ; $2dcb : $eb
	ld bc, $cb07                                                  ; $2dcc : $01, $07, $cb
	ret po                                                  ; $2dcf : $e0

	ld a, (ix-$1d)                                                  ; $2dd0 : $dd, $7e, $e3
	ld a, $0b                                                  ; $2dd3 : $3e, $0b
	rla                                                  ; $2dd5 : $17
	jp (hl)                                                  ; $2dd6 : $e9


	ld (hl), a                                                  ; $2dd7 : $77
	ret pe                                                  ; $2dd8 : $e8

	push de                                                  ; $2dd9 : $d5
	ret pe                                                  ; $2dda : $e8

	sub $16                                                  ; $2ddb : $d6, $16
	ret                                                  ; $2ddd : $c9


	jp pe, $bb4e                                                  ; $2dde : $ea, $4e, $bb
	and $59                                                  ; $2de1 : $e6, $59
	sub d                                                  ; $2de3 : $92
	ret pe                                                  ; $2de4 : $e8

	rst $28                                                  ; $2de5 : $ef

Call_04_2de6:
	ld d, $b4                                                  ; $2de6 : $16, $b4
	call po, $9281                                                  ; $2de8 : $e4, $81, $92
	jp po, $e33d                                                  ; $2deb : $e2, $3d, $e3
	xor a                                                  ; $2dee : $af
	ld h, e                                                  ; $2def : $63
	ret pe                                                  ; $2df0 : $e8

	sub $0b                                                  ; $2df1 : $d6, $0b
	ret pe                                                  ; $2df3 : $e8

	rst $18                                                  ; $2df4 : $df
	jp pe, $ea70                                                  ; $2df5 : $ea, $70, $ea
	ld a, a                                                  ; $2df8 : $7f
	rla                                                  ; $2df9 : $17
	ld h, e                                                  ; $2dfa : $63
	ex de, hl                                                  ; $2dfb : $eb
	ld (bc), a                                                  ; $2dfc : $02
	call po, Call_04_0078                                                  ; $2dfd : $e4, $78, $00
	adc a, $e9                                                  ; $2e00 : $ce, $e9
	rst $20                                                  ; $2e02 : $e7
	ex de, hl                                                  ; $2e03 : $eb
	and c                                                  ; $2e04 : $a1
	call pe, $e9bc                                                  ; $2e05 : $ec, $bc, $e9
	jp c, $59e1                                                  ; $2e08 : $da, $e1, $59
	sub (hl)                                                  ; $2e0b : $96
	jp (hl)                                                  ; $2e0c : $e9


	jp nz, $77e4                                                  ; $2e0d : $c2, $e4, $77
	dec bc                                                  ; $2e10 : $0b
	ret po                                                  ; $2e11 : $e0

	add a, $e9                                                  ; $2e12 : $c6, $e9
	and $e6                                                  ; $2e14 : $e6, $e6
	inc h                                                  ; $2e16 : $24
	ld c, $ce                                                  ; $2e17 : $0e, $ce
	ret po                                                  ; $2e19 : $e0

	ld d, a                                                  ; $2e1a : $57
	call pe, $e898                                                  ; $2e1b : $ec, $98, $e8
	call po, Call_04_01e7                                                  ; $2e1e : $e4, $e7, $01
	sub e                                                  ; $2e21 : $93
	ex (sp), hl                                                  ; $2e22 : $e3
	call m, Call_04_0b2f                                                  ; $2e23 : $fc, $2f, $0b
	rst $20                                                  ; $2e26 : $e7
	adc a, b                                                  ; $2e27 : $88
	ex (sp), hl                                                  ; $2e28 : $e3
	ld ($49e3), hl                                                  ; $2e29 : $22, $e3, $49
	jr -$37                                                  ; $2e2c : $18, $c9

	call po, $e21f                                                  ; $2e2e : $e4, $1f, $e2
	rst $28                                                  ; $2e31 : $ef
	.db $ed                                                  ; $2e32 : $ed
	push af                                                  ; $2e33 : $f5
	rst $20                                                  ; $2e34 : $e7
	ld sp, $ed0c                                                  ; $2e35 : $31, $0c, $ed
	add hl, sp                                                  ; $2e38 : $39
	.db $ed                                                  ; $2e39 : $ed
	ld (bc), a                                                  ; $2e3a : $02
	jp po, $ed0b                                                  ; $2e3b : $e2, $0b, $ed
	inc sp                                                  ; $2e3e : $33
	ret pe                                                  ; $2e3f : $e8

	dec l                                                  ; $2e40 : $2d
	rst $20                                                  ; $2e41 : $e7
	inc e                                                  ; $2e42 : $1c
	ld c, b                                                  ; $2e43 : $48
	dec bc                                                  ; $2e44 : $0b
	jp po, $ea31                                                  ; $2e45 : $e2, $31, $ea
	ld a, h                                                  ; $2e48 : $7c
	call pe, Call_04_14e1                                                  ; $2e49 : $ec, $e1, $14
	ret pe                                                  ; $2e4c : $e8

	ld (hl), h                                                  ; $2e4d : $74
	ex de, hl                                                  ; $2e4e : $eb
	inc d                                                  ; $2e4f : $14
	and $fb                                                  ; $2e50 : $e6, $fb
	jp pe, $b3f8                                                  ; $2e52 : $ea, $f8, $b3
	ld d, e                                                  ; $2e55 : $53
	ld l, h                                                  ; $2e56 : $6c
	call po, $ba49                                                  ; $2e57 : $e4, $49, $ba
	rst $20                                                  ; $2e5a : $e7
	and b                                                  ; $2e5b : $a0
	call pe, $c9b6                                                  ; $2e5c : $ec, $b6, $c9
	dec bc                                                  ; $2e5f : $0b
	.db $ed                                                  ; $2e60 : $ed
	and h                                                  ; $2e61 : $a4
	rst $20                                                  ; $2e62 : $e7
	rst $38                                                  ; $2e63 : $ff
	ret po                                                  ; $2e64 : $e0

	ld (hl), d                                                  ; $2e65 : $72
	ld a, (bc)                                                  ; $2e66 : $0a
	bit 1, b                                                  ; $2e67 : $cb, $48
	or e                                                  ; $2e69 : $b3
	ld l, h                                                  ; $2e6a : $6c
	push hl                                                  ; $2e6b : $e5
	jr c, br_04_2e9a                                                  ; $2e6c : $38, $2c

	push hl                                                  ; $2e6e : $e5
	jp z, $e90b                                                  ; $2e6f : $ca, $0b, $e9
	cp a                                                  ; $2e72 : $bf
	ex de, hl                                                  ; $2e73 : $eb
	sbc a, b                                                  ; $2e74 : $98
	call pe, Call_04_1393                                                  ; $2e75 : $ec, $93, $13
	jp nc, $e70c                                                  ; $2e78 : $d2, $0c, $e7
	and d                                                  ; $2e7b : $a2
	jp po, $0009                                                  ; $2e7c : $e2, $09, $00
	ret nc                                                  ; $2e7f : $d0

	ld c, b                                                  ; $2e80 : $48
	ld l, h                                                  ; $2e81 : $6c
	pop hl                                                  ; $2e82 : $e1
	ld a, d                                                  ; $2e83 : $7a
	ex (sp), hl                                                  ; $2e84 : $e3
	dec e                                                  ; $2e85 : $1d
	ld l, d                                                  ; $2e86 : $6a
	call pe, $4893                                                  ; $2e87 : $ec, $93, $48
	dec bc                                                  ; $2e8a : $0b
	and $d3                                                  ; $2e8b : $e6, $d3
	rst $20                                                  ; $2e8d : $e7
	or l                                                  ; $2e8e : $b5
	jp po, $1191                                                  ; $2e8f : $e2, $91, $11
	ret                                                  ; $2e92 : $c9


	call pe, $5b23                                                  ; $2e93 : $ec, $23, $5b
	inc c                                                  ; $2e96 : $0c
	rst $20                                                  ; $2e97 : $e7
	pop bc                                                  ; $2e98 : $c1
	jp (hl)                                                  ; $2e99 : $e9


br_04_2e9a:
	adc a, (hl)                                                  ; $2e9a : $8e
	sub d                                                  ; $2e9b : $92
	ret po                                                  ; $2e9c : $e0

	add hl, de                                                  ; $2e9d : $19
	ex (sp), hl                                                  ; $2e9e : $e3
	add a, d                                                  ; $2e9f : $82
	jp po, Jump_04_0b67                                                  ; $2ea0 : $e2, $67, $0b
	push hl                                                  ; $2ea3 : $e5
	ld l, $e5                                                  ; $2ea4 : $2e, $e5
	ld h, (hl)                                                  ; $2ea6 : $66
	push bc                                                  ; $2ea7 : $c5
	rlca                                                  ; $2ea8 : $07
	ld h, c                                                  ; $2ea9 : $61
	jp po, Jump_04_1b1e                                                  ; $2eaa : $e2, $1e, $1b
	and $ce                                                  ; $2ead : $e6, $ce
	dec bc                                                  ; $2eaf : $0b
	ld (bc), a                                                  ; $2eb0 : $02
	inc bc                                                  ; $2eb1 : $03
	ret po                                                  ; $2eb2 : $e0

	dec de                                                  ; $2eb3 : $1b
	ret pe                                                  ; $2eb4 : $e8

	jp nz, $d111                                                  ; $2eb5 : $c2, $11, $d1
	inc c                                                  ; $2eb8 : $0c
	call pe, $ed74                                                  ; $2eb9 : $ec, $74, $ed
	ld d, l                                                  ; $2ebc : $55
	cp d                                                  ; $2ebd : $ba
	ex (sp), hl                                                  ; $2ebe : $e3
	dec sp                                                  ; $2ebf : $3b
	or h                                                  ; $2ec0 : $b4
	jp (hl)                                                  ; $2ec1 : $e9


	dec h                                                  ; $2ec2 : $25
	sub d                                                  ; $2ec3 : $92
	call po, Call_04_3b1f                                                  ; $2ec4 : $e4, $1f, $3b
	dec bc                                                  ; $2ec7 : $0b
	jp pe, $e842                                                  ; $2ec8 : $ea, $42, $e8
	inc h                                                  ; $2ecb : $24
	ex (sp), hl                                                  ; $2ecc : $e3
	and c                                                  ; $2ecd : $a1
	nop                                                  ; $2ece : $00
	nop                                                  ; $2ecf : $00
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
	nop                                                  ; $2edd : $00
	nop                                                  ; $2ede : $00
	nop                                                  ; $2edf : $00
	nop                                                  ; $2ee0 : $00
	nop                                                  ; $2ee1 : $00
	nop                                                  ; $2ee2 : $00
	nop                                                  ; $2ee3 : $00
	nop                                                  ; $2ee4 : $00
	nop                                                  ; $2ee5 : $00
	nop                                                  ; $2ee6 : $00
	nop                                                  ; $2ee7 : $00
	nop                                                  ; $2ee8 : $00
	nop                                                  ; $2ee9 : $00
	nop                                                  ; $2eea : $00
	nop                                                  ; $2eeb : $00

Jump_04_2eec:
	nop                                                  ; $2eec : $00
	nop                                                  ; $2eed : $00
	nop                                                  ; $2eee : $00
	nop                                                  ; $2eef : $00
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
	nop                                                  ; $2efd : $00
	nop                                                  ; $2efe : $00
	nop                                                  ; $2eff : $00
	nop                                                  ; $2f00 : $00
	nop                                                  ; $2f01 : $00
	nop                                                  ; $2f02 : $00
	nop                                                  ; $2f03 : $00
	nop                                                  ; $2f04 : $00
	nop                                                  ; $2f05 : $00
	nop                                                  ; $2f06 : $00
	nop                                                  ; $2f07 : $00
	nop                                                  ; $2f08 : $00
	nop                                                  ; $2f09 : $00
	nop                                                  ; $2f0a : $00
	nop                                                  ; $2f0b : $00
	nop                                                  ; $2f0c : $00
	nop                                                  ; $2f0d : $00
	nop                                                  ; $2f0e : $00
	nop                                                  ; $2f0f : $00
	nop                                                  ; $2f10 : $00
	nop                                                  ; $2f11 : $00
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
	nop                                                  ; $2f1d : $00
	nop                                                  ; $2f1e : $00
	nop                                                  ; $2f1f : $00
	nop                                                  ; $2f20 : $00
	nop                                                  ; $2f21 : $00
	nop                                                  ; $2f22 : $00
	nop                                                  ; $2f23 : $00
	nop                                                  ; $2f24 : $00
	nop                                                  ; $2f25 : $00
	nop                                                  ; $2f26 : $00
	nop                                                  ; $2f27 : $00
	nop                                                  ; $2f28 : $00
	nop                                                  ; $2f29 : $00
	nop                                                  ; $2f2a : $00
	nop                                                  ; $2f2b : $00
	nop                                                  ; $2f2c : $00
	nop                                                  ; $2f2d : $00
	nop                                                  ; $2f2e : $00
	nop                                                  ; $2f2f : $00
	nop                                                  ; $2f30 : $00
	nop                                                  ; $2f31 : $00
	ld a, (de)                                                  ; $2f32 : $1a
	dec de                                                  ; $2f33 : $1b
	ret pe                                                  ; $2f34 : $e8

	jp nz, $d111                                                  ; $2f35 : $c2, $11, $d1
	inc c                                                  ; $2f38 : $0c
	call pe, $ed74                                                  ; $2f39 : $ec, $74, $ed
	ld d, l                                                  ; $2f3c : $55

Jump_04_2f3d:
	cp d                                                  ; $2f3d : $ba
	ex (sp), hl                                                  ; $2f3e : $e3

Call_04_2f3f:
	dec sp                                                  ; $2f3f : $3b
	or h                                                  ; $2f40 : $b4
	jp (hl)                                                  ; $2f41 : $e9


	dec h                                                  ; $2f42 : $25
	sub d                                                  ; $2f43 : $92
	call po, Call_04_3b1f                                                  ; $2f44 : $e4, $1f, $3b
	dec bc                                                  ; $2f47 : $0b
	jp pe, $e842                                                  ; $2f48 : $ea, $42, $e8
	inc h                                                  ; $2f4b : $24
	ex (sp), hl                                                  ; $2f4c : $e3
	and c                                                  ; $2f4d : $a1
	nop                                                  ; $2f4e : $00
	nop                                                  ; $2f4f : $00
	nop                                                  ; $2f50 : $00
	nop                                                  ; $2f51 : $00
	nop                                                  ; $2f52 : $00
	nop                                                  ; $2f53 : $00
	nop                                                  ; $2f54 : $00
	nop                                                  ; $2f55 : $00
	nop                                                  ; $2f56 : $00
	nop                                                  ; $2f57 : $00
	nop                                                  ; $2f58 : $00

Jump_04_2f59:
	nop                                                  ; $2f59 : $00
	nop                                                  ; $2f5a : $00
	nop                                                  ; $2f5b : $00
	nop                                                  ; $2f5c : $00
	nop                                                  ; $2f5d : $00
	nop                                                  ; $2f5e : $00
	nop                                                  ; $2f5f : $00
	nop                                                  ; $2f60 : $00
	nop                                                  ; $2f61 : $00
	nop                                                  ; $2f62 : $00
	nop                                                  ; $2f63 : $00
	nop                                                  ; $2f64 : $00
	nop                                                  ; $2f65 : $00
	nop                                                  ; $2f66 : $00
	nop                                                  ; $2f67 : $00
	nop                                                  ; $2f68 : $00
	nop                                                  ; $2f69 : $00
	nop                                                  ; $2f6a : $00
	nop                                                  ; $2f6b : $00
	nop                                                  ; $2f6c : $00
	nop                                                  ; $2f6d : $00
	nop                                                  ; $2f6e : $00
	nop                                                  ; $2f6f : $00
	nop                                                  ; $2f70 : $00
	nop                                                  ; $2f71 : $00

Call_04_2f72:
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
	nop                                                  ; $2f7d : $00
	nop                                                  ; $2f7e : $00
	nop                                                  ; $2f7f : $00
	nop                                                  ; $2f80 : $00
	nop                                                  ; $2f81 : $00
	nop                                                  ; $2f82 : $00
	nop                                                  ; $2f83 : $00
	nop                                                  ; $2f84 : $00

Call_04_2f85:
	nop                                                  ; $2f85 : $00
	nop                                                  ; $2f86 : $00
	nop                                                  ; $2f87 : $00
	nop                                                  ; $2f88 : $00
	nop                                                  ; $2f89 : $00
	nop                                                  ; $2f8a : $00
	nop                                                  ; $2f8b : $00
	nop                                                  ; $2f8c : $00

Call_04_2f8d:
	nop                                                  ; $2f8d : $00
	nop                                                  ; $2f8e : $00
	nop                                                  ; $2f8f : $00
	nop                                                  ; $2f90 : $00
	nop                                                  ; $2f91 : $00
	nop                                                  ; $2f92 : $00
	nop                                                  ; $2f93 : $00
	nop                                                  ; $2f94 : $00
	nop                                                  ; $2f95 : $00
	nop                                                  ; $2f96 : $00
	nop                                                  ; $2f97 : $00
	nop                                                  ; $2f98 : $00
	nop                                                  ; $2f99 : $00
	nop                                                  ; $2f9a : $00
	nop                                                  ; $2f9b : $00
	nop                                                  ; $2f9c : $00
	nop                                                  ; $2f9d : $00
	nop                                                  ; $2f9e : $00
	nop                                                  ; $2f9f : $00
	nop                                                  ; $2fa0 : $00
	nop                                                  ; $2fa1 : $00
	nop                                                  ; $2fa2 : $00
	nop                                                  ; $2fa3 : $00
	nop                                                  ; $2fa4 : $00
	nop                                                  ; $2fa5 : $00
	nop                                                  ; $2fa6 : $00
	nop                                                  ; $2fa7 : $00
	nop                                                  ; $2fa8 : $00
	nop                                                  ; $2fa9 : $00
	nop                                                  ; $2faa : $00
	nop                                                  ; $2fab : $00
	nop                                                  ; $2fac : $00
	nop                                                  ; $2fad : $00
	nop                                                  ; $2fae : $00
	nop                                                  ; $2faf : $00
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
	nop                                                  ; $2fbd : $00
	nop                                                  ; $2fbe : $00
	nop                                                  ; $2fbf : $00
	nop                                                  ; $2fc0 : $00
	nop                                                  ; $2fc1 : $00
	nop                                                  ; $2fc2 : $00
	nop                                                  ; $2fc3 : $00
	nop                                                  ; $2fc4 : $00
	nop                                                  ; $2fc5 : $00
	nop                                                  ; $2fc6 : $00
	nop                                                  ; $2fc7 : $00
	nop                                                  ; $2fc8 : $00
	nop                                                  ; $2fc9 : $00
	nop                                                  ; $2fca : $00
	nop                                                  ; $2fcb : $00
	nop                                                  ; $2fcc : $00
	nop                                                  ; $2fcd : $00
	nop                                                  ; $2fce : $00
	nop                                                  ; $2fcf : $00
	nop                                                  ; $2fd0 : $00
	nop                                                  ; $2fd1 : $00
	nop                                                  ; $2fd2 : $00
	nop                                                  ; $2fd3 : $00
	nop                                                  ; $2fd4 : $00
	nop                                                  ; $2fd5 : $00
	nop                                                  ; $2fd6 : $00
	nop                                                  ; $2fd7 : $00
	nop                                                  ; $2fd8 : $00

Call_04_2fd9:
	nop                                                  ; $2fd9 : $00
	nop                                                  ; $2fda : $00
	nop                                                  ; $2fdb : $00
	nop                                                  ; $2fdc : $00
	nop                                                  ; $2fdd : $00
	nop                                                  ; $2fde : $00
	nop                                                  ; $2fdf : $00
	nop                                                  ; $2fe0 : $00
	nop                                                  ; $2fe1 : $00
	nop                                                  ; $2fe2 : $00
	nop                                                  ; $2fe3 : $00

Call_04_2fe4:
	nop                                                  ; $2fe4 : $00
	nop                                                  ; $2fe5 : $00
	nop                                                  ; $2fe6 : $00
	nop                                                  ; $2fe7 : $00
	nop                                                  ; $2fe8 : $00

Call_04_2fe9:
	nop                                                  ; $2fe9 : $00
	nop                                                  ; $2fea : $00
	nop                                                  ; $2feb : $00
	nop                                                  ; $2fec : $00
	nop                                                  ; $2fed : $00
	nop                                                  ; $2fee : $00
	nop                                                  ; $2fef : $00
	nop                                                  ; $2ff0 : $00
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
	nop                                                  ; $2ffd : $00
	nop                                                  ; $2ffe : $00
	nop                                                  ; $2fff : $00
	rst $38                                                  ; $3000 : $ff
	rst $38                                                  ; $3001 : $ff
	rst $38                                                  ; $3002 : $ff
	rst $38                                                  ; $3003 : $ff

Call_04_3004:
	rst $38                                                  ; $3004 : $ff
	rst $38                                                  ; $3005 : $ff
	rst $38                                                  ; $3006 : $ff
	rst $38                                                  ; $3007 : $ff
	rst $38                                                  ; $3008 : $ff
	rst $38                                                  ; $3009 : $ff
	rst $38                                                  ; $300a : $ff
	rst $38                                                  ; $300b : $ff
	rst $38                                                  ; $300c : $ff
	rst $38                                                  ; $300d : $ff
	rst $38                                                  ; $300e : $ff
	rst $38                                                  ; $300f : $ff
	rst $38                                                  ; $3010 : $ff
	rst $38                                                  ; $3011 : $ff
	rst $38                                                  ; $3012 : $ff
	rst $38                                                  ; $3013 : $ff
	rst $38                                                  ; $3014 : $ff
	rst $38                                                  ; $3015 : $ff
	rst $38                                                  ; $3016 : $ff
	rst $38                                                  ; $3017 : $ff
	rst $38                                                  ; $3018 : $ff
	rst $38                                                  ; $3019 : $ff
	rst $38                                                  ; $301a : $ff
	rst $38                                                  ; $301b : $ff
	rst $38                                                  ; $301c : $ff
	rst $38                                                  ; $301d : $ff
	rst $38                                                  ; $301e : $ff
	rst $38                                                  ; $301f : $ff
	rst $38                                                  ; $3020 : $ff
	rst $38                                                  ; $3021 : $ff
	rst $38                                                  ; $3022 : $ff
	rst $38                                                  ; $3023 : $ff
	rst $38                                                  ; $3024 : $ff
	rst $38                                                  ; $3025 : $ff
	rst $38                                                  ; $3026 : $ff
	rst $38                                                  ; $3027 : $ff
	rst $38                                                  ; $3028 : $ff
	rst $38                                                  ; $3029 : $ff
	rst $38                                                  ; $302a : $ff
	rst $38                                                  ; $302b : $ff
	rst $38                                                  ; $302c : $ff
	rst $38                                                  ; $302d : $ff
	rst $38                                                  ; $302e : $ff
	rst $38                                                  ; $302f : $ff
	rst $38                                                  ; $3030 : $ff
	rst $38                                                  ; $3031 : $ff
	rst $38                                                  ; $3032 : $ff
	rst $38                                                  ; $3033 : $ff
	rst $38                                                  ; $3034 : $ff
	rst $38                                                  ; $3035 : $ff
	rst $38                                                  ; $3036 : $ff
	rst $38                                                  ; $3037 : $ff
	rst $38                                                  ; $3038 : $ff
	rst $38                                                  ; $3039 : $ff
	rst $38                                                  ; $303a : $ff
	rst $38                                                  ; $303b : $ff
	rst $38                                                  ; $303c : $ff
	rst $38                                                  ; $303d : $ff
	rst $38                                                  ; $303e : $ff
	rst $38                                                  ; $303f : $ff
	rst $38                                                  ; $3040 : $ff
	rst $38                                                  ; $3041 : $ff
	rst $38                                                  ; $3042 : $ff
	rst $38                                                  ; $3043 : $ff
	rst $38                                                  ; $3044 : $ff
	rst $38                                                  ; $3045 : $ff
	rst $38                                                  ; $3046 : $ff
	rst $38                                                  ; $3047 : $ff
	rst $38                                                  ; $3048 : $ff
	rst $38                                                  ; $3049 : $ff
	rst $38                                                  ; $304a : $ff
	rst $38                                                  ; $304b : $ff
	rst $38                                                  ; $304c : $ff
	rst $38                                                  ; $304d : $ff
	rst $38                                                  ; $304e : $ff
	rst $38                                                  ; $304f : $ff
	rst $38                                                  ; $3050 : $ff
	rst $38                                                  ; $3051 : $ff
	rst $38                                                  ; $3052 : $ff
	rst $38                                                  ; $3053 : $ff
	rst $38                                                  ; $3054 : $ff
	rst $38                                                  ; $3055 : $ff
	rst $38                                                  ; $3056 : $ff
	rst $38                                                  ; $3057 : $ff
	rst $38                                                  ; $3058 : $ff
	rst $38                                                  ; $3059 : $ff
	rst $38                                                  ; $305a : $ff
	rst $38                                                  ; $305b : $ff
	rst $38                                                  ; $305c : $ff
	rst $38                                                  ; $305d : $ff
	rst $38                                                  ; $305e : $ff
	rst $38                                                  ; $305f : $ff
	rst $38                                                  ; $3060 : $ff
	rst $38                                                  ; $3061 : $ff
	rst $38                                                  ; $3062 : $ff
	rst $38                                                  ; $3063 : $ff
	rst $38                                                  ; $3064 : $ff
	rst $38                                                  ; $3065 : $ff
	rst $38                                                  ; $3066 : $ff
	rst $38                                                  ; $3067 : $ff
	rst $38                                                  ; $3068 : $ff
	rst $38                                                  ; $3069 : $ff
	rst $38                                                  ; $306a : $ff
	rst $38                                                  ; $306b : $ff
	rst $38                                                  ; $306c : $ff
	rst $38                                                  ; $306d : $ff
	rst $38                                                  ; $306e : $ff
	rst $38                                                  ; $306f : $ff
	rst $38                                                  ; $3070 : $ff
	rst $38                                                  ; $3071 : $ff
	rst $38                                                  ; $3072 : $ff
	rst $38                                                  ; $3073 : $ff
	rst $38                                                  ; $3074 : $ff
	rst $38                                                  ; $3075 : $ff
	rst $38                                                  ; $3076 : $ff
	rst $38                                                  ; $3077 : $ff
	rst $38                                                  ; $3078 : $ff
	rst $38                                                  ; $3079 : $ff
	rst $38                                                  ; $307a : $ff
	rst $38                                                  ; $307b : $ff
	rst $38                                                  ; $307c : $ff
	rst $38                                                  ; $307d : $ff
	rst $38                                                  ; $307e : $ff
	rst $38                                                  ; $307f : $ff
	rst $38                                                  ; $3080 : $ff
	rst $38                                                  ; $3081 : $ff
	rst $38                                                  ; $3082 : $ff
	rst $38                                                  ; $3083 : $ff
	rst $38                                                  ; $3084 : $ff
	rst $38                                                  ; $3085 : $ff
	rst $38                                                  ; $3086 : $ff
	rst $38                                                  ; $3087 : $ff
	rst $38                                                  ; $3088 : $ff
	rst $38                                                  ; $3089 : $ff
	rst $38                                                  ; $308a : $ff
	rst $38                                                  ; $308b : $ff
	rst $38                                                  ; $308c : $ff
	rst $38                                                  ; $308d : $ff
	rst $38                                                  ; $308e : $ff
	rst $38                                                  ; $308f : $ff
	rst $38                                                  ; $3090 : $ff
	rst $38                                                  ; $3091 : $ff
	rst $38                                                  ; $3092 : $ff
	rst $38                                                  ; $3093 : $ff
	rst $38                                                  ; $3094 : $ff
	rst $38                                                  ; $3095 : $ff
	rst $38                                                  ; $3096 : $ff
	rst $38                                                  ; $3097 : $ff
	rst $38                                                  ; $3098 : $ff
	rst $38                                                  ; $3099 : $ff
	rst $38                                                  ; $309a : $ff
	rst $38                                                  ; $309b : $ff
	rst $38                                                  ; $309c : $ff
	rst $38                                                  ; $309d : $ff
	rst $38                                                  ; $309e : $ff
	rst $38                                                  ; $309f : $ff
	rst $38                                                  ; $30a0 : $ff
	rst $38                                                  ; $30a1 : $ff
	rst $38                                                  ; $30a2 : $ff
	rst $38                                                  ; $30a3 : $ff
	rst $38                                                  ; $30a4 : $ff
	rst $38                                                  ; $30a5 : $ff
	rst $38                                                  ; $30a6 : $ff
	rst $38                                                  ; $30a7 : $ff
	rst $38                                                  ; $30a8 : $ff
	rst $38                                                  ; $30a9 : $ff
	rst $38                                                  ; $30aa : $ff
	rst $38                                                  ; $30ab : $ff
	rst $38                                                  ; $30ac : $ff
	rst $38                                                  ; $30ad : $ff
	rst $38                                                  ; $30ae : $ff
	rst $38                                                  ; $30af : $ff
	rst $38                                                  ; $30b0 : $ff
	rst $38                                                  ; $30b1 : $ff
	rst $38                                                  ; $30b2 : $ff
	rst $38                                                  ; $30b3 : $ff
	rst $38                                                  ; $30b4 : $ff
	rst $38                                                  ; $30b5 : $ff
	rst $38                                                  ; $30b6 : $ff
	rst $38                                                  ; $30b7 : $ff
	rst $38                                                  ; $30b8 : $ff
	rst $38                                                  ; $30b9 : $ff
	rst $38                                                  ; $30ba : $ff
	rst $38                                                  ; $30bb : $ff
	rst $38                                                  ; $30bc : $ff
	rst $38                                                  ; $30bd : $ff
	rst $38                                                  ; $30be : $ff
	rst $38                                                  ; $30bf : $ff
	rst $38                                                  ; $30c0 : $ff
	rst $38                                                  ; $30c1 : $ff
	rst $38                                                  ; $30c2 : $ff
	rst $38                                                  ; $30c3 : $ff
	rst $38                                                  ; $30c4 : $ff
	rst $38                                                  ; $30c5 : $ff
	rst $38                                                  ; $30c6 : $ff
	rst $38                                                  ; $30c7 : $ff
	rst $38                                                  ; $30c8 : $ff
	rst $38                                                  ; $30c9 : $ff
	rst $38                                                  ; $30ca : $ff
	rst $38                                                  ; $30cb : $ff
	rst $38                                                  ; $30cc : $ff
	rst $38                                                  ; $30cd : $ff
	rst $38                                                  ; $30ce : $ff
	rst $38                                                  ; $30cf : $ff
	rst $38                                                  ; $30d0 : $ff
	rst $38                                                  ; $30d1 : $ff
	rst $38                                                  ; $30d2 : $ff
	rst $38                                                  ; $30d3 : $ff
	rst $38                                                  ; $30d4 : $ff
	rst $38                                                  ; $30d5 : $ff
	rst $38                                                  ; $30d6 : $ff

Call_04_30d7:
	rst $38                                                  ; $30d7 : $ff
	rst $38                                                  ; $30d8 : $ff
	rst $38                                                  ; $30d9 : $ff
	rst $38                                                  ; $30da : $ff
	rst $38                                                  ; $30db : $ff
	rst $38                                                  ; $30dc : $ff
	rst $38                                                  ; $30dd : $ff
	rst $38                                                  ; $30de : $ff
	rst $38                                                  ; $30df : $ff
	rst $38                                                  ; $30e0 : $ff
	rst $38                                                  ; $30e1 : $ff
	rst $38                                                  ; $30e2 : $ff
	rst $38                                                  ; $30e3 : $ff
	rst $38                                                  ; $30e4 : $ff
	rst $38                                                  ; $30e5 : $ff
	rst $38                                                  ; $30e6 : $ff
	rst $38                                                  ; $30e7 : $ff
	rst $38                                                  ; $30e8 : $ff
	rst $38                                                  ; $30e9 : $ff

Call_04_30ea:
	rst $38                                                  ; $30ea : $ff
	rst $38                                                  ; $30eb : $ff
	rst $38                                                  ; $30ec : $ff
	rst $38                                                  ; $30ed : $ff
	rst $38                                                  ; $30ee : $ff
	rst $38                                                  ; $30ef : $ff
	rst $38                                                  ; $30f0 : $ff
	rst $38                                                  ; $30f1 : $ff
	rst $38                                                  ; $30f2 : $ff
	rst $38                                                  ; $30f3 : $ff
	rst $38                                                  ; $30f4 : $ff
	rst $38                                                  ; $30f5 : $ff
	rst $38                                                  ; $30f6 : $ff
	rst $38                                                  ; $30f7 : $ff
	rst $38                                                  ; $30f8 : $ff
	rst $38                                                  ; $30f9 : $ff
	rst $38                                                  ; $30fa : $ff
	rst $38                                                  ; $30fb : $ff
	rst $38                                                  ; $30fc : $ff
	rst $38                                                  ; $30fd : $ff
	rst $38                                                  ; $30fe : $ff
	rst $38                                                  ; $30ff : $ff
	rst $38                                                  ; $3100 : $ff
	rst $38                                                  ; $3101 : $ff
	rst $38                                                  ; $3102 : $ff
	rst $38                                                  ; $3103 : $ff
	rst $38                                                  ; $3104 : $ff
	rst $38                                                  ; $3105 : $ff
	rst $38                                                  ; $3106 : $ff
	rst $38                                                  ; $3107 : $ff
	rst $38                                                  ; $3108 : $ff
	rst $38                                                  ; $3109 : $ff
	rst $38                                                  ; $310a : $ff
	rst $38                                                  ; $310b : $ff
	rst $38                                                  ; $310c : $ff
	rst $38                                                  ; $310d : $ff
	rst $38                                                  ; $310e : $ff
	rst $38                                                  ; $310f : $ff
	rst $38                                                  ; $3110 : $ff
	rst $38                                                  ; $3111 : $ff
	rst $38                                                  ; $3112 : $ff
	rst $38                                                  ; $3113 : $ff
	rst $38                                                  ; $3114 : $ff
	rst $38                                                  ; $3115 : $ff
	rst $38                                                  ; $3116 : $ff
	rst $38                                                  ; $3117 : $ff
	rst $38                                                  ; $3118 : $ff
	rst $38                                                  ; $3119 : $ff
	rst $38                                                  ; $311a : $ff
	rst $38                                                  ; $311b : $ff
	rst $38                                                  ; $311c : $ff
	rst $38                                                  ; $311d : $ff
	rst $38                                                  ; $311e : $ff
	rst $38                                                  ; $311f : $ff
	rst $38                                                  ; $3120 : $ff
	rst $38                                                  ; $3121 : $ff
	rst $38                                                  ; $3122 : $ff
	rst $38                                                  ; $3123 : $ff
	rst $38                                                  ; $3124 : $ff
	rst $38                                                  ; $3125 : $ff
	rst $38                                                  ; $3126 : $ff
	rst $38                                                  ; $3127 : $ff
	rst $38                                                  ; $3128 : $ff
	rst $38                                                  ; $3129 : $ff
	rst $38                                                  ; $312a : $ff
	rst $38                                                  ; $312b : $ff
	rst $38                                                  ; $312c : $ff
	rst $38                                                  ; $312d : $ff
	rst $38                                                  ; $312e : $ff
	rst $38                                                  ; $312f : $ff
	rst $38                                                  ; $3130 : $ff
	rst $38                                                  ; $3131 : $ff
	rst $38                                                  ; $3132 : $ff
	rst $38                                                  ; $3133 : $ff
	rst $38                                                  ; $3134 : $ff
	rst $38                                                  ; $3135 : $ff
	rst $38                                                  ; $3136 : $ff
	rst $38                                                  ; $3137 : $ff
	rst $38                                                  ; $3138 : $ff
	rst $38                                                  ; $3139 : $ff
	rst $38                                                  ; $313a : $ff
	rst $38                                                  ; $313b : $ff
	rst $38                                                  ; $313c : $ff
	rst $38                                                  ; $313d : $ff
	rst $38                                                  ; $313e : $ff
	rst $38                                                  ; $313f : $ff
	rst $38                                                  ; $3140 : $ff
	rst $38                                                  ; $3141 : $ff
	rst $38                                                  ; $3142 : $ff
	rst $38                                                  ; $3143 : $ff
	rst $38                                                  ; $3144 : $ff
	rst $38                                                  ; $3145 : $ff
	rst $38                                                  ; $3146 : $ff
	rst $38                                                  ; $3147 : $ff
	rst $38                                                  ; $3148 : $ff
	rst $38                                                  ; $3149 : $ff
	rst $38                                                  ; $314a : $ff
	rst $38                                                  ; $314b : $ff
	rst $38                                                  ; $314c : $ff
	rst $38                                                  ; $314d : $ff
	rst $38                                                  ; $314e : $ff
	rst $38                                                  ; $314f : $ff
	rst $38                                                  ; $3150 : $ff
	rst $38                                                  ; $3151 : $ff
	rst $38                                                  ; $3152 : $ff
	rst $38                                                  ; $3153 : $ff
	rst $38                                                  ; $3154 : $ff
	rst $38                                                  ; $3155 : $ff
	rst $38                                                  ; $3156 : $ff
	rst $38                                                  ; $3157 : $ff
	rst $38                                                  ; $3158 : $ff
	rst $38                                                  ; $3159 : $ff
	rst $38                                                  ; $315a : $ff
	rst $38                                                  ; $315b : $ff
	rst $38                                                  ; $315c : $ff
	rst $38                                                  ; $315d : $ff
	rst $38                                                  ; $315e : $ff
	rst $38                                                  ; $315f : $ff
	rst $38                                                  ; $3160 : $ff
	rst $38                                                  ; $3161 : $ff
	rst $38                                                  ; $3162 : $ff
	rst $38                                                  ; $3163 : $ff
	rst $38                                                  ; $3164 : $ff
	rst $38                                                  ; $3165 : $ff
	rst $38                                                  ; $3166 : $ff
	rst $38                                                  ; $3167 : $ff
	rst $38                                                  ; $3168 : $ff
	rst $38                                                  ; $3169 : $ff
	rst $38                                                  ; $316a : $ff
	rst $38                                                  ; $316b : $ff
	rst $38                                                  ; $316c : $ff
	rst $38                                                  ; $316d : $ff
	rst $38                                                  ; $316e : $ff
	rst $38                                                  ; $316f : $ff
	rst $38                                                  ; $3170 : $ff
	rst $38                                                  ; $3171 : $ff
	rst $38                                                  ; $3172 : $ff
	rst $38                                                  ; $3173 : $ff
	rst $38                                                  ; $3174 : $ff
	rst $38                                                  ; $3175 : $ff
	rst $38                                                  ; $3176 : $ff
	rst $38                                                  ; $3177 : $ff
	rst $38                                                  ; $3178 : $ff
	rst $38                                                  ; $3179 : $ff
	rst $38                                                  ; $317a : $ff
	rst $38                                                  ; $317b : $ff
	rst $38                                                  ; $317c : $ff
	rst $38                                                  ; $317d : $ff
	rst $38                                                  ; $317e : $ff
	rst $38                                                  ; $317f : $ff
	rst $38                                                  ; $3180 : $ff
	rst $38                                                  ; $3181 : $ff
	rst $38                                                  ; $3182 : $ff
	rst $38                                                  ; $3183 : $ff
	rst $38                                                  ; $3184 : $ff
	rst $38                                                  ; $3185 : $ff
	rst $38                                                  ; $3186 : $ff
	rst $38                                                  ; $3187 : $ff
	rst $38                                                  ; $3188 : $ff
	rst $38                                                  ; $3189 : $ff
	rst $38                                                  ; $318a : $ff
	rst $38                                                  ; $318b : $ff
	rst $38                                                  ; $318c : $ff
	rst $38                                                  ; $318d : $ff
	rst $38                                                  ; $318e : $ff
	rst $38                                                  ; $318f : $ff
	rst $38                                                  ; $3190 : $ff
	rst $38                                                  ; $3191 : $ff
	rst $38                                                  ; $3192 : $ff
	rst $38                                                  ; $3193 : $ff
	rst $38                                                  ; $3194 : $ff
	rst $38                                                  ; $3195 : $ff
	rst $38                                                  ; $3196 : $ff
	rst $38                                                  ; $3197 : $ff
	rst $38                                                  ; $3198 : $ff
	rst $38                                                  ; $3199 : $ff
	rst $38                                                  ; $319a : $ff
	rst $38                                                  ; $319b : $ff
	rst $38                                                  ; $319c : $ff
	rst $38                                                  ; $319d : $ff
	rst $38                                                  ; $319e : $ff
	rst $38                                                  ; $319f : $ff
	rst $38                                                  ; $31a0 : $ff
	rst $38                                                  ; $31a1 : $ff
	rst $38                                                  ; $31a2 : $ff
	rst $38                                                  ; $31a3 : $ff
	rst $38                                                  ; $31a4 : $ff
	rst $38                                                  ; $31a5 : $ff
	rst $38                                                  ; $31a6 : $ff
	rst $38                                                  ; $31a7 : $ff
	rst $38                                                  ; $31a8 : $ff
	rst $38                                                  ; $31a9 : $ff
	rst $38                                                  ; $31aa : $ff
	rst $38                                                  ; $31ab : $ff
	rst $38                                                  ; $31ac : $ff
	rst $38                                                  ; $31ad : $ff
	rst $38                                                  ; $31ae : $ff
	rst $38                                                  ; $31af : $ff
	rst $38                                                  ; $31b0 : $ff
	rst $38                                                  ; $31b1 : $ff
	rst $38                                                  ; $31b2 : $ff
	rst $38                                                  ; $31b3 : $ff
	rst $38                                                  ; $31b4 : $ff
	rst $38                                                  ; $31b5 : $ff
	rst $38                                                  ; $31b6 : $ff
	rst $38                                                  ; $31b7 : $ff
	rst $38                                                  ; $31b8 : $ff
	rst $38                                                  ; $31b9 : $ff
	rst $38                                                  ; $31ba : $ff
	rst $38                                                  ; $31bb : $ff
	rst $38                                                  ; $31bc : $ff
	rst $38                                                  ; $31bd : $ff
	rst $38                                                  ; $31be : $ff
	rst $38                                                  ; $31bf : $ff
	rst $38                                                  ; $31c0 : $ff
	rst $38                                                  ; $31c1 : $ff
	rst $38                                                  ; $31c2 : $ff
	rst $38                                                  ; $31c3 : $ff
	rst $38                                                  ; $31c4 : $ff
	rst $38                                                  ; $31c5 : $ff
	rst $38                                                  ; $31c6 : $ff
	rst $38                                                  ; $31c7 : $ff
	rst $38                                                  ; $31c8 : $ff
	rst $38                                                  ; $31c9 : $ff
	rst $38                                                  ; $31ca : $ff
	rst $38                                                  ; $31cb : $ff
	rst $38                                                  ; $31cc : $ff
	rst $38                                                  ; $31cd : $ff
	rst $38                                                  ; $31ce : $ff
	rst $38                                                  ; $31cf : $ff
	rst $38                                                  ; $31d0 : $ff
	rst $38                                                  ; $31d1 : $ff
	rst $38                                                  ; $31d2 : $ff
	rst $38                                                  ; $31d3 : $ff
	rst $38                                                  ; $31d4 : $ff
	rst $38                                                  ; $31d5 : $ff
	rst $38                                                  ; $31d6 : $ff
	rst $38                                                  ; $31d7 : $ff
	rst $38                                                  ; $31d8 : $ff
	rst $38                                                  ; $31d9 : $ff
	rst $38                                                  ; $31da : $ff
	rst $38                                                  ; $31db : $ff
	rst $38                                                  ; $31dc : $ff
	rst $38                                                  ; $31dd : $ff
	rst $38                                                  ; $31de : $ff
	rst $38                                                  ; $31df : $ff
	rst $38                                                  ; $31e0 : $ff
	rst $38                                                  ; $31e1 : $ff
	rst $38                                                  ; $31e2 : $ff
	rst $38                                                  ; $31e3 : $ff
	rst $38                                                  ; $31e4 : $ff
	rst $38                                                  ; $31e5 : $ff
	rst $38                                                  ; $31e6 : $ff
	rst $38                                                  ; $31e7 : $ff
	rst $38                                                  ; $31e8 : $ff
	rst $38                                                  ; $31e9 : $ff
	rst $38                                                  ; $31ea : $ff
	rst $38                                                  ; $31eb : $ff

Jump_04_31ec:
	rst $38                                                  ; $31ec : $ff
	rst $38                                                  ; $31ed : $ff
	rst $38                                                  ; $31ee : $ff
	rst $38                                                  ; $31ef : $ff
	rst $38                                                  ; $31f0 : $ff
	rst $38                                                  ; $31f1 : $ff
	rst $38                                                  ; $31f2 : $ff
	rst $38                                                  ; $31f3 : $ff
	rst $38                                                  ; $31f4 : $ff
	rst $38                                                  ; $31f5 : $ff
	rst $38                                                  ; $31f6 : $ff
	rst $38                                                  ; $31f7 : $ff
	rst $38                                                  ; $31f8 : $ff
	rst $38                                                  ; $31f9 : $ff
	rst $38                                                  ; $31fa : $ff
	rst $38                                                  ; $31fb : $ff
	rst $38                                                  ; $31fc : $ff
	rst $38                                                  ; $31fd : $ff
	rst $38                                                  ; $31fe : $ff
	rst $38                                                  ; $31ff : $ff
	rst $38                                                  ; $3200 : $ff
	rst $38                                                  ; $3201 : $ff
	rst $38                                                  ; $3202 : $ff
	rst $38                                                  ; $3203 : $ff
	rst $38                                                  ; $3204 : $ff
	rst $38                                                  ; $3205 : $ff
	rst $38                                                  ; $3206 : $ff
	rst $38                                                  ; $3207 : $ff
	rst $38                                                  ; $3208 : $ff
	rst $38                                                  ; $3209 : $ff
	rst $38                                                  ; $320a : $ff
	rst $38                                                  ; $320b : $ff
	rst $38                                                  ; $320c : $ff
	rst $38                                                  ; $320d : $ff
	rst $38                                                  ; $320e : $ff
	rst $38                                                  ; $320f : $ff
	rst $38                                                  ; $3210 : $ff
	rst $38                                                  ; $3211 : $ff
	rst $38                                                  ; $3212 : $ff
	rst $38                                                  ; $3213 : $ff
	rst $38                                                  ; $3214 : $ff
	rst $38                                                  ; $3215 : $ff
	rst $38                                                  ; $3216 : $ff
	rst $38                                                  ; $3217 : $ff
	rst $38                                                  ; $3218 : $ff
	rst $38                                                  ; $3219 : $ff
	rst $38                                                  ; $321a : $ff
	rst $38                                                  ; $321b : $ff
	rst $38                                                  ; $321c : $ff
	rst $38                                                  ; $321d : $ff
	rst $38                                                  ; $321e : $ff
	rst $38                                                  ; $321f : $ff
	rst $38                                                  ; $3220 : $ff
	rst $38                                                  ; $3221 : $ff
	rst $38                                                  ; $3222 : $ff
	rst $38                                                  ; $3223 : $ff
	rst $38                                                  ; $3224 : $ff
	rst $38                                                  ; $3225 : $ff
	rst $38                                                  ; $3226 : $ff
	rst $38                                                  ; $3227 : $ff
	rst $38                                                  ; $3228 : $ff
	rst $38                                                  ; $3229 : $ff
	rst $38                                                  ; $322a : $ff
	rst $38                                                  ; $322b : $ff
	rst $38                                                  ; $322c : $ff
	rst $38                                                  ; $322d : $ff
	rst $38                                                  ; $322e : $ff
	rst $38                                                  ; $322f : $ff
	rst $38                                                  ; $3230 : $ff
	rst $38                                                  ; $3231 : $ff
	rst $38                                                  ; $3232 : $ff
	rst $38                                                  ; $3233 : $ff
	rst $38                                                  ; $3234 : $ff
	rst $38                                                  ; $3235 : $ff
	rst $38                                                  ; $3236 : $ff
	rst $38                                                  ; $3237 : $ff
	rst $38                                                  ; $3238 : $ff
	rst $38                                                  ; $3239 : $ff
	rst $38                                                  ; $323a : $ff
	rst $38                                                  ; $323b : $ff
	rst $38                                                  ; $323c : $ff
	rst $38                                                  ; $323d : $ff
	rst $38                                                  ; $323e : $ff
	rst $38                                                  ; $323f : $ff
	rst $38                                                  ; $3240 : $ff
	rst $38                                                  ; $3241 : $ff
	rst $38                                                  ; $3242 : $ff
	rst $38                                                  ; $3243 : $ff
	rst $38                                                  ; $3244 : $ff
	rst $38                                                  ; $3245 : $ff
	rst $38                                                  ; $3246 : $ff
	rst $38                                                  ; $3247 : $ff
	rst $38                                                  ; $3248 : $ff
	rst $38                                                  ; $3249 : $ff
	rst $38                                                  ; $324a : $ff
	rst $38                                                  ; $324b : $ff
	rst $38                                                  ; $324c : $ff
	rst $38                                                  ; $324d : $ff
	rst $38                                                  ; $324e : $ff
	rst $38                                                  ; $324f : $ff
	rst $38                                                  ; $3250 : $ff
	rst $38                                                  ; $3251 : $ff
	rst $38                                                  ; $3252 : $ff
	rst $38                                                  ; $3253 : $ff
	rst $38                                                  ; $3254 : $ff
	rst $38                                                  ; $3255 : $ff
	rst $38                                                  ; $3256 : $ff
	rst $38                                                  ; $3257 : $ff
	rst $38                                                  ; $3258 : $ff
	rst $38                                                  ; $3259 : $ff
	rst $38                                                  ; $325a : $ff
	rst $38                                                  ; $325b : $ff
	rst $38                                                  ; $325c : $ff
	rst $38                                                  ; $325d : $ff
	rst $38                                                  ; $325e : $ff
	rst $38                                                  ; $325f : $ff
	rst $38                                                  ; $3260 : $ff
	rst $38                                                  ; $3261 : $ff
	rst $38                                                  ; $3262 : $ff
	rst $38                                                  ; $3263 : $ff
	rst $38                                                  ; $3264 : $ff
	rst $38                                                  ; $3265 : $ff
	rst $38                                                  ; $3266 : $ff
	rst $38                                                  ; $3267 : $ff
	rst $38                                                  ; $3268 : $ff
	rst $38                                                  ; $3269 : $ff
	rst $38                                                  ; $326a : $ff
	rst $38                                                  ; $326b : $ff
	rst $38                                                  ; $326c : $ff
	rst $38                                                  ; $326d : $ff
	rst $38                                                  ; $326e : $ff
	rst $38                                                  ; $326f : $ff
	rst $38                                                  ; $3270 : $ff
	rst $38                                                  ; $3271 : $ff
	rst $38                                                  ; $3272 : $ff
	rst $38                                                  ; $3273 : $ff
	rst $38                                                  ; $3274 : $ff
	rst $38                                                  ; $3275 : $ff
	rst $38                                                  ; $3276 : $ff
	rst $38                                                  ; $3277 : $ff
	rst $38                                                  ; $3278 : $ff
	rst $38                                                  ; $3279 : $ff
	rst $38                                                  ; $327a : $ff
	rst $38                                                  ; $327b : $ff
	rst $38                                                  ; $327c : $ff
	rst $38                                                  ; $327d : $ff
	rst $38                                                  ; $327e : $ff
	rst $38                                                  ; $327f : $ff
	rst $38                                                  ; $3280 : $ff
	rst $38                                                  ; $3281 : $ff
	rst $38                                                  ; $3282 : $ff
	rst $38                                                  ; $3283 : $ff
	rst $38                                                  ; $3284 : $ff
	rst $38                                                  ; $3285 : $ff
	rst $38                                                  ; $3286 : $ff
	rst $38                                                  ; $3287 : $ff
	rst $38                                                  ; $3288 : $ff
	rst $38                                                  ; $3289 : $ff
	rst $38                                                  ; $328a : $ff
	rst $38                                                  ; $328b : $ff
	rst $38                                                  ; $328c : $ff
	rst $38                                                  ; $328d : $ff
	rst $38                                                  ; $328e : $ff
	rst $38                                                  ; $328f : $ff
	rst $38                                                  ; $3290 : $ff
	rst $38                                                  ; $3291 : $ff
	rst $38                                                  ; $3292 : $ff
	rst $38                                                  ; $3293 : $ff
	rst $38                                                  ; $3294 : $ff
	rst $38                                                  ; $3295 : $ff
	rst $38                                                  ; $3296 : $ff
	rst $38                                                  ; $3297 : $ff
	rst $38                                                  ; $3298 : $ff
	rst $38                                                  ; $3299 : $ff
	rst $38                                                  ; $329a : $ff
	rst $38                                                  ; $329b : $ff
	rst $38                                                  ; $329c : $ff
	rst $38                                                  ; $329d : $ff
	rst $38                                                  ; $329e : $ff
	rst $38                                                  ; $329f : $ff
	rst $38                                                  ; $32a0 : $ff
	rst $38                                                  ; $32a1 : $ff
	rst $38                                                  ; $32a2 : $ff
	rst $38                                                  ; $32a3 : $ff
	rst $38                                                  ; $32a4 : $ff
	rst $38                                                  ; $32a5 : $ff
	rst $38                                                  ; $32a6 : $ff
	rst $38                                                  ; $32a7 : $ff
	rst $38                                                  ; $32a8 : $ff
	rst $38                                                  ; $32a9 : $ff
	rst $38                                                  ; $32aa : $ff
	rst $38                                                  ; $32ab : $ff
	rst $38                                                  ; $32ac : $ff
	rst $38                                                  ; $32ad : $ff
	rst $38                                                  ; $32ae : $ff
	rst $38                                                  ; $32af : $ff
	rst $38                                                  ; $32b0 : $ff
	rst $38                                                  ; $32b1 : $ff
	rst $38                                                  ; $32b2 : $ff
	rst $38                                                  ; $32b3 : $ff
	rst $38                                                  ; $32b4 : $ff
	rst $38                                                  ; $32b5 : $ff
	rst $38                                                  ; $32b6 : $ff
	rst $38                                                  ; $32b7 : $ff
	rst $38                                                  ; $32b8 : $ff
	rst $38                                                  ; $32b9 : $ff
	rst $38                                                  ; $32ba : $ff
	rst $38                                                  ; $32bb : $ff
	rst $38                                                  ; $32bc : $ff
	rst $38                                                  ; $32bd : $ff
	rst $38                                                  ; $32be : $ff
	rst $38                                                  ; $32bf : $ff
	rst $38                                                  ; $32c0 : $ff
	rst $38                                                  ; $32c1 : $ff
	rst $38                                                  ; $32c2 : $ff
	rst $38                                                  ; $32c3 : $ff
	rst $38                                                  ; $32c4 : $ff
	rst $38                                                  ; $32c5 : $ff
	rst $38                                                  ; $32c6 : $ff
	rst $38                                                  ; $32c7 : $ff
	rst $38                                                  ; $32c8 : $ff
	rst $38                                                  ; $32c9 : $ff
	rst $38                                                  ; $32ca : $ff
	rst $38                                                  ; $32cb : $ff
	rst $38                                                  ; $32cc : $ff
	rst $38                                                  ; $32cd : $ff
	rst $38                                                  ; $32ce : $ff
	rst $38                                                  ; $32cf : $ff
	rst $38                                                  ; $32d0 : $ff
	rst $38                                                  ; $32d1 : $ff
	rst $38                                                  ; $32d2 : $ff
	rst $38                                                  ; $32d3 : $ff
	rst $38                                                  ; $32d4 : $ff
	rst $38                                                  ; $32d5 : $ff
	rst $38                                                  ; $32d6 : $ff
	rst $38                                                  ; $32d7 : $ff
	rst $38                                                  ; $32d8 : $ff
	rst $38                                                  ; $32d9 : $ff
	rst $38                                                  ; $32da : $ff
	rst $38                                                  ; $32db : $ff
	rst $38                                                  ; $32dc : $ff
	rst $38                                                  ; $32dd : $ff
	rst $38                                                  ; $32de : $ff
	rst $38                                                  ; $32df : $ff
	rst $38                                                  ; $32e0 : $ff
	rst $38                                                  ; $32e1 : $ff
	rst $38                                                  ; $32e2 : $ff
	rst $38                                                  ; $32e3 : $ff
	rst $38                                                  ; $32e4 : $ff
	rst $38                                                  ; $32e5 : $ff

Jump_04_32e6:
	rst $38                                                  ; $32e6 : $ff
	rst $38                                                  ; $32e7 : $ff
	rst $38                                                  ; $32e8 : $ff

Call_04_32e9:
	rst $38                                                  ; $32e9 : $ff
	rst $38                                                  ; $32ea : $ff
	rst $38                                                  ; $32eb : $ff
	rst $38                                                  ; $32ec : $ff
	rst $38                                                  ; $32ed : $ff
	rst $38                                                  ; $32ee : $ff
	rst $38                                                  ; $32ef : $ff
	rst $38                                                  ; $32f0 : $ff
	rst $38                                                  ; $32f1 : $ff
	rst $38                                                  ; $32f2 : $ff
	rst $38                                                  ; $32f3 : $ff
	rst $38                                                  ; $32f4 : $ff
	rst $38                                                  ; $32f5 : $ff
	rst $38                                                  ; $32f6 : $ff
	rst $38                                                  ; $32f7 : $ff
	rst $38                                                  ; $32f8 : $ff
	rst $38                                                  ; $32f9 : $ff
	rst $38                                                  ; $32fa : $ff
	rst $38                                                  ; $32fb : $ff
	rst $38                                                  ; $32fc : $ff
	rst $38                                                  ; $32fd : $ff
	rst $38                                                  ; $32fe : $ff
	rst $38                                                  ; $32ff : $ff
	rst $38                                                  ; $3300 : $ff
	rst $38                                                  ; $3301 : $ff
	rst $38                                                  ; $3302 : $ff
	rst $38                                                  ; $3303 : $ff
	rst $38                                                  ; $3304 : $ff
	rst $38                                                  ; $3305 : $ff
	rst $38                                                  ; $3306 : $ff
	rst $38                                                  ; $3307 : $ff
	rst $38                                                  ; $3308 : $ff
	rst $38                                                  ; $3309 : $ff
	rst $38                                                  ; $330a : $ff
	rst $38                                                  ; $330b : $ff
	rst $38                                                  ; $330c : $ff
	rst $38                                                  ; $330d : $ff
	rst $38                                                  ; $330e : $ff
	rst $38                                                  ; $330f : $ff
	rst $38                                                  ; $3310 : $ff
	rst $38                                                  ; $3311 : $ff
	rst $38                                                  ; $3312 : $ff
	rst $38                                                  ; $3313 : $ff
	rst $38                                                  ; $3314 : $ff
	rst $38                                                  ; $3315 : $ff
	rst $38                                                  ; $3316 : $ff
	rst $38                                                  ; $3317 : $ff
	rst $38                                                  ; $3318 : $ff
	rst $38                                                  ; $3319 : $ff
	rst $38                                                  ; $331a : $ff
	rst $38                                                  ; $331b : $ff
	rst $38                                                  ; $331c : $ff
	rst $38                                                  ; $331d : $ff
	rst $38                                                  ; $331e : $ff
	rst $38                                                  ; $331f : $ff
	rst $38                                                  ; $3320 : $ff
	rst $38                                                  ; $3321 : $ff
	rst $38                                                  ; $3322 : $ff
	rst $38                                                  ; $3323 : $ff
	rst $38                                                  ; $3324 : $ff
	rst $38                                                  ; $3325 : $ff
	rst $38                                                  ; $3326 : $ff
	rst $38                                                  ; $3327 : $ff
	rst $38                                                  ; $3328 : $ff
	rst $38                                                  ; $3329 : $ff
	rst $38                                                  ; $332a : $ff
	rst $38                                                  ; $332b : $ff
	rst $38                                                  ; $332c : $ff
	rst $38                                                  ; $332d : $ff
	rst $38                                                  ; $332e : $ff
	rst $38                                                  ; $332f : $ff
	rst $38                                                  ; $3330 : $ff
	rst $38                                                  ; $3331 : $ff
	rst $38                                                  ; $3332 : $ff
	rst $38                                                  ; $3333 : $ff
	rst $38                                                  ; $3334 : $ff
	rst $38                                                  ; $3335 : $ff
	rst $38                                                  ; $3336 : $ff
	rst $38                                                  ; $3337 : $ff
	rst $38                                                  ; $3338 : $ff
	rst $38                                                  ; $3339 : $ff
	rst $38                                                  ; $333a : $ff
	rst $38                                                  ; $333b : $ff
	rst $38                                                  ; $333c : $ff
	rst $38                                                  ; $333d : $ff
	rst $38                                                  ; $333e : $ff
	rst $38                                                  ; $333f : $ff
	rst $38                                                  ; $3340 : $ff
	rst $38                                                  ; $3341 : $ff
	rst $38                                                  ; $3342 : $ff
	rst $38                                                  ; $3343 : $ff
	rst $38                                                  ; $3344 : $ff
	rst $38                                                  ; $3345 : $ff
	rst $38                                                  ; $3346 : $ff
	rst $38                                                  ; $3347 : $ff
	rst $38                                                  ; $3348 : $ff
	rst $38                                                  ; $3349 : $ff
	rst $38                                                  ; $334a : $ff
	rst $38                                                  ; $334b : $ff
	rst $38                                                  ; $334c : $ff
	rst $38                                                  ; $334d : $ff
	rst $38                                                  ; $334e : $ff
	rst $38                                                  ; $334f : $ff
	rst $38                                                  ; $3350 : $ff
	rst $38                                                  ; $3351 : $ff
	rst $38                                                  ; $3352 : $ff
	rst $38                                                  ; $3353 : $ff
	rst $38                                                  ; $3354 : $ff
	rst $38                                                  ; $3355 : $ff
	rst $38                                                  ; $3356 : $ff
	rst $38                                                  ; $3357 : $ff
	rst $38                                                  ; $3358 : $ff
	rst $38                                                  ; $3359 : $ff
	rst $38                                                  ; $335a : $ff
	rst $38                                                  ; $335b : $ff
	rst $38                                                  ; $335c : $ff
	rst $38                                                  ; $335d : $ff
	rst $38                                                  ; $335e : $ff
	rst $38                                                  ; $335f : $ff
	rst $38                                                  ; $3360 : $ff
	rst $38                                                  ; $3361 : $ff
	rst $38                                                  ; $3362 : $ff
	rst $38                                                  ; $3363 : $ff
	rst $38                                                  ; $3364 : $ff
	rst $38                                                  ; $3365 : $ff
	rst $38                                                  ; $3366 : $ff
	rst $38                                                  ; $3367 : $ff
	rst $38                                                  ; $3368 : $ff
	rst $38                                                  ; $3369 : $ff
	rst $38                                                  ; $336a : $ff
	rst $38                                                  ; $336b : $ff
	rst $38                                                  ; $336c : $ff
	rst $38                                                  ; $336d : $ff
	rst $38                                                  ; $336e : $ff
	rst $38                                                  ; $336f : $ff
	rst $38                                                  ; $3370 : $ff
	rst $38                                                  ; $3371 : $ff
	rst $38                                                  ; $3372 : $ff
	rst $38                                                  ; $3373 : $ff
	rst $38                                                  ; $3374 : $ff
	rst $38                                                  ; $3375 : $ff
	rst $38                                                  ; $3376 : $ff
	rst $38                                                  ; $3377 : $ff
	rst $38                                                  ; $3378 : $ff
	rst $38                                                  ; $3379 : $ff
	rst $38                                                  ; $337a : $ff
	rst $38                                                  ; $337b : $ff
	rst $38                                                  ; $337c : $ff
	rst $38                                                  ; $337d : $ff
	rst $38                                                  ; $337e : $ff
	rst $38                                                  ; $337f : $ff
	rst $38                                                  ; $3380 : $ff
	rst $38                                                  ; $3381 : $ff
	rst $38                                                  ; $3382 : $ff
	rst $38                                                  ; $3383 : $ff
	rst $38                                                  ; $3384 : $ff
	rst $38                                                  ; $3385 : $ff
	rst $38                                                  ; $3386 : $ff
	rst $38                                                  ; $3387 : $ff
	rst $38                                                  ; $3388 : $ff
	rst $38                                                  ; $3389 : $ff
	rst $38                                                  ; $338a : $ff
	rst $38                                                  ; $338b : $ff
	rst $38                                                  ; $338c : $ff
	rst $38                                                  ; $338d : $ff
	rst $38                                                  ; $338e : $ff
	rst $38                                                  ; $338f : $ff
	rst $38                                                  ; $3390 : $ff
	rst $38                                                  ; $3391 : $ff
	rst $38                                                  ; $3392 : $ff
	rst $38                                                  ; $3393 : $ff
	rst $38                                                  ; $3394 : $ff
	rst $38                                                  ; $3395 : $ff
	rst $38                                                  ; $3396 : $ff
	rst $38                                                  ; $3397 : $ff
	rst $38                                                  ; $3398 : $ff
	rst $38                                                  ; $3399 : $ff
	rst $38                                                  ; $339a : $ff
	rst $38                                                  ; $339b : $ff
	rst $38                                                  ; $339c : $ff
	rst $38                                                  ; $339d : $ff
	rst $38                                                  ; $339e : $ff
	rst $38                                                  ; $339f : $ff
	rst $38                                                  ; $33a0 : $ff
	rst $38                                                  ; $33a1 : $ff
	rst $38                                                  ; $33a2 : $ff
	rst $38                                                  ; $33a3 : $ff
	rst $38                                                  ; $33a4 : $ff
	rst $38                                                  ; $33a5 : $ff
	rst $38                                                  ; $33a6 : $ff
	rst $38                                                  ; $33a7 : $ff
	rst $38                                                  ; $33a8 : $ff
	rst $38                                                  ; $33a9 : $ff
	rst $38                                                  ; $33aa : $ff
	rst $38                                                  ; $33ab : $ff
	rst $38                                                  ; $33ac : $ff
	rst $38                                                  ; $33ad : $ff
	rst $38                                                  ; $33ae : $ff
	rst $38                                                  ; $33af : $ff
	rst $38                                                  ; $33b0 : $ff
	rst $38                                                  ; $33b1 : $ff
	rst $38                                                  ; $33b2 : $ff
	rst $38                                                  ; $33b3 : $ff
	rst $38                                                  ; $33b4 : $ff
	rst $38                                                  ; $33b5 : $ff
	rst $38                                                  ; $33b6 : $ff
	rst $38                                                  ; $33b7 : $ff
	rst $38                                                  ; $33b8 : $ff
	rst $38                                                  ; $33b9 : $ff
	rst $38                                                  ; $33ba : $ff
	rst $38                                                  ; $33bb : $ff
	rst $38                                                  ; $33bc : $ff
	rst $38                                                  ; $33bd : $ff
	rst $38                                                  ; $33be : $ff
	rst $38                                                  ; $33bf : $ff
	rst $38                                                  ; $33c0 : $ff
	rst $38                                                  ; $33c1 : $ff
	rst $38                                                  ; $33c2 : $ff
	rst $38                                                  ; $33c3 : $ff
	rst $38                                                  ; $33c4 : $ff
	rst $38                                                  ; $33c5 : $ff
	rst $38                                                  ; $33c6 : $ff
	rst $38                                                  ; $33c7 : $ff
	rst $38                                                  ; $33c8 : $ff
	rst $38                                                  ; $33c9 : $ff
	rst $38                                                  ; $33ca : $ff
	rst $38                                                  ; $33cb : $ff
	rst $38                                                  ; $33cc : $ff
	rst $38                                                  ; $33cd : $ff
	rst $38                                                  ; $33ce : $ff
	rst $38                                                  ; $33cf : $ff
	rst $38                                                  ; $33d0 : $ff
	rst $38                                                  ; $33d1 : $ff
	rst $38                                                  ; $33d2 : $ff
	rst $38                                                  ; $33d3 : $ff
	rst $38                                                  ; $33d4 : $ff
	rst $38                                                  ; $33d5 : $ff
	rst $38                                                  ; $33d6 : $ff
	rst $38                                                  ; $33d7 : $ff
	rst $38                                                  ; $33d8 : $ff
	rst $38                                                  ; $33d9 : $ff
	rst $38                                                  ; $33da : $ff
	rst $38                                                  ; $33db : $ff
	rst $38                                                  ; $33dc : $ff
	rst $38                                                  ; $33dd : $ff
	rst $38                                                  ; $33de : $ff
	rst $38                                                  ; $33df : $ff
	rst $38                                                  ; $33e0 : $ff
	rst $38                                                  ; $33e1 : $ff
	rst $38                                                  ; $33e2 : $ff
	rst $38                                                  ; $33e3 : $ff
	rst $38                                                  ; $33e4 : $ff
	rst $38                                                  ; $33e5 : $ff
	rst $38                                                  ; $33e6 : $ff
	rst $38                                                  ; $33e7 : $ff
	rst $38                                                  ; $33e8 : $ff
	rst $38                                                  ; $33e9 : $ff
	rst $38                                                  ; $33ea : $ff
	rst $38                                                  ; $33eb : $ff
	rst $38                                                  ; $33ec : $ff
	rst $38                                                  ; $33ed : $ff
	rst $38                                                  ; $33ee : $ff
	rst $38                                                  ; $33ef : $ff
	rst $38                                                  ; $33f0 : $ff
	rst $38                                                  ; $33f1 : $ff
	rst $38                                                  ; $33f2 : $ff
	rst $38                                                  ; $33f3 : $ff
	rst $38                                                  ; $33f4 : $ff
	rst $38                                                  ; $33f5 : $ff
	rst $38                                                  ; $33f6 : $ff
	rst $38                                                  ; $33f7 : $ff
	rst $38                                                  ; $33f8 : $ff
	rst $38                                                  ; $33f9 : $ff
	rst $38                                                  ; $33fa : $ff
	rst $38                                                  ; $33fb : $ff
	rst $38                                                  ; $33fc : $ff
	rst $38                                                  ; $33fd : $ff
	rst $38                                                  ; $33fe : $ff
	rst $38                                                  ; $33ff : $ff
	rst $38                                                  ; $3400 : $ff
	rst $38                                                  ; $3401 : $ff
	rst $38                                                  ; $3402 : $ff
	rst $38                                                  ; $3403 : $ff
	rst $38                                                  ; $3404 : $ff
	rst $38                                                  ; $3405 : $ff
	rst $38                                                  ; $3406 : $ff
	rst $38                                                  ; $3407 : $ff
	rst $38                                                  ; $3408 : $ff
	rst $38                                                  ; $3409 : $ff
	rst $38                                                  ; $340a : $ff
	rst $38                                                  ; $340b : $ff
	rst $38                                                  ; $340c : $ff
	rst $38                                                  ; $340d : $ff
	rst $38                                                  ; $340e : $ff
	rst $38                                                  ; $340f : $ff
	rst $38                                                  ; $3410 : $ff
	rst $38                                                  ; $3411 : $ff
	rst $38                                                  ; $3412 : $ff
	rst $38                                                  ; $3413 : $ff
	rst $38                                                  ; $3414 : $ff
	rst $38                                                  ; $3415 : $ff
	rst $38                                                  ; $3416 : $ff
	rst $38                                                  ; $3417 : $ff
	rst $38                                                  ; $3418 : $ff
	rst $38                                                  ; $3419 : $ff
	rst $38                                                  ; $341a : $ff
	rst $38                                                  ; $341b : $ff
	rst $38                                                  ; $341c : $ff
	rst $38                                                  ; $341d : $ff
	rst $38                                                  ; $341e : $ff
	rst $38                                                  ; $341f : $ff
	rst $38                                                  ; $3420 : $ff
	rst $38                                                  ; $3421 : $ff
	rst $38                                                  ; $3422 : $ff
	rst $38                                                  ; $3423 : $ff
	rst $38                                                  ; $3424 : $ff
	rst $38                                                  ; $3425 : $ff
	rst $38                                                  ; $3426 : $ff
	rst $38                                                  ; $3427 : $ff
	rst $38                                                  ; $3428 : $ff
	rst $38                                                  ; $3429 : $ff
	rst $38                                                  ; $342a : $ff
	rst $38                                                  ; $342b : $ff
	rst $38                                                  ; $342c : $ff
	rst $38                                                  ; $342d : $ff
	rst $38                                                  ; $342e : $ff
	rst $38                                                  ; $342f : $ff
	rst $38                                                  ; $3430 : $ff
	rst $38                                                  ; $3431 : $ff
	rst $38                                                  ; $3432 : $ff
	rst $38                                                  ; $3433 : $ff
	rst $38                                                  ; $3434 : $ff
	rst $38                                                  ; $3435 : $ff
	rst $38                                                  ; $3436 : $ff
	rst $38                                                  ; $3437 : $ff
	rst $38                                                  ; $3438 : $ff
	rst $38                                                  ; $3439 : $ff
	rst $38                                                  ; $343a : $ff
	rst $38                                                  ; $343b : $ff
	rst $38                                                  ; $343c : $ff
	rst $38                                                  ; $343d : $ff
	rst $38                                                  ; $343e : $ff
	rst $38                                                  ; $343f : $ff
	rst $38                                                  ; $3440 : $ff
	rst $38                                                  ; $3441 : $ff
	rst $38                                                  ; $3442 : $ff
	rst $38                                                  ; $3443 : $ff
	rst $38                                                  ; $3444 : $ff
	rst $38                                                  ; $3445 : $ff
	rst $38                                                  ; $3446 : $ff
	rst $38                                                  ; $3447 : $ff
	rst $38                                                  ; $3448 : $ff
	rst $38                                                  ; $3449 : $ff
	rst $38                                                  ; $344a : $ff
	rst $38                                                  ; $344b : $ff
	rst $38                                                  ; $344c : $ff
	rst $38                                                  ; $344d : $ff
	rst $38                                                  ; $344e : $ff
	rst $38                                                  ; $344f : $ff
	rst $38                                                  ; $3450 : $ff
	rst $38                                                  ; $3451 : $ff
	rst $38                                                  ; $3452 : $ff
	rst $38                                                  ; $3453 : $ff
	rst $38                                                  ; $3454 : $ff
	rst $38                                                  ; $3455 : $ff
	rst $38                                                  ; $3456 : $ff
	rst $38                                                  ; $3457 : $ff
	rst $38                                                  ; $3458 : $ff
	rst $38                                                  ; $3459 : $ff
	rst $38                                                  ; $345a : $ff
	rst $38                                                  ; $345b : $ff
	rst $38                                                  ; $345c : $ff
	rst $38                                                  ; $345d : $ff
	rst $38                                                  ; $345e : $ff
	rst $38                                                  ; $345f : $ff
	rst $38                                                  ; $3460 : $ff
	rst $38                                                  ; $3461 : $ff
	rst $38                                                  ; $3462 : $ff
	rst $38                                                  ; $3463 : $ff
	rst $38                                                  ; $3464 : $ff
	rst $38                                                  ; $3465 : $ff
	rst $38                                                  ; $3466 : $ff
	rst $38                                                  ; $3467 : $ff
	rst $38                                                  ; $3468 : $ff
	rst $38                                                  ; $3469 : $ff
	rst $38                                                  ; $346a : $ff
	rst $38                                                  ; $346b : $ff
	rst $38                                                  ; $346c : $ff
	rst $38                                                  ; $346d : $ff
	rst $38                                                  ; $346e : $ff
	rst $38                                                  ; $346f : $ff
	rst $38                                                  ; $3470 : $ff
	rst $38                                                  ; $3471 : $ff
	rst $38                                                  ; $3472 : $ff
	rst $38                                                  ; $3473 : $ff
	rst $38                                                  ; $3474 : $ff
	rst $38                                                  ; $3475 : $ff
	rst $38                                                  ; $3476 : $ff
	rst $38                                                  ; $3477 : $ff
	rst $38                                                  ; $3478 : $ff
	rst $38                                                  ; $3479 : $ff
	rst $38                                                  ; $347a : $ff
	rst $38                                                  ; $347b : $ff
	rst $38                                                  ; $347c : $ff
	rst $38                                                  ; $347d : $ff
	rst $38                                                  ; $347e : $ff
	rst $38                                                  ; $347f : $ff
	rst $38                                                  ; $3480 : $ff
	rst $38                                                  ; $3481 : $ff
	rst $38                                                  ; $3482 : $ff
	rst $38                                                  ; $3483 : $ff
	rst $38                                                  ; $3484 : $ff
	rst $38                                                  ; $3485 : $ff
	rst $38                                                  ; $3486 : $ff
	rst $38                                                  ; $3487 : $ff
	rst $38                                                  ; $3488 : $ff
	rst $38                                                  ; $3489 : $ff
	rst $38                                                  ; $348a : $ff
	rst $38                                                  ; $348b : $ff
	rst $38                                                  ; $348c : $ff
	rst $38                                                  ; $348d : $ff
	rst $38                                                  ; $348e : $ff
	rst $38                                                  ; $348f : $ff
	rst $38                                                  ; $3490 : $ff
	rst $38                                                  ; $3491 : $ff
	rst $38                                                  ; $3492 : $ff
	rst $38                                                  ; $3493 : $ff
	rst $38                                                  ; $3494 : $ff
	rst $38                                                  ; $3495 : $ff
	rst $38                                                  ; $3496 : $ff
	rst $38                                                  ; $3497 : $ff
	rst $38                                                  ; $3498 : $ff
	rst $38                                                  ; $3499 : $ff
	rst $38                                                  ; $349a : $ff
	rst $38                                                  ; $349b : $ff
	rst $38                                                  ; $349c : $ff
	rst $38                                                  ; $349d : $ff
	rst $38                                                  ; $349e : $ff
	rst $38                                                  ; $349f : $ff
	rst $38                                                  ; $34a0 : $ff
	rst $38                                                  ; $34a1 : $ff
	rst $38                                                  ; $34a2 : $ff
	rst $38                                                  ; $34a3 : $ff
	rst $38                                                  ; $34a4 : $ff
	rst $38                                                  ; $34a5 : $ff
	rst $38                                                  ; $34a6 : $ff
	rst $38                                                  ; $34a7 : $ff
	rst $38                                                  ; $34a8 : $ff
	rst $38                                                  ; $34a9 : $ff
	rst $38                                                  ; $34aa : $ff
	rst $38                                                  ; $34ab : $ff
	rst $38                                                  ; $34ac : $ff
	rst $38                                                  ; $34ad : $ff
	rst $38                                                  ; $34ae : $ff
	rst $38                                                  ; $34af : $ff
	rst $38                                                  ; $34b0 : $ff
	rst $38                                                  ; $34b1 : $ff
	rst $38                                                  ; $34b2 : $ff
	rst $38                                                  ; $34b3 : $ff
	rst $38                                                  ; $34b4 : $ff
	rst $38                                                  ; $34b5 : $ff
	rst $38                                                  ; $34b6 : $ff
	rst $38                                                  ; $34b7 : $ff
	rst $38                                                  ; $34b8 : $ff
	rst $38                                                  ; $34b9 : $ff
	rst $38                                                  ; $34ba : $ff
	rst $38                                                  ; $34bb : $ff
	rst $38                                                  ; $34bc : $ff
	rst $38                                                  ; $34bd : $ff
	rst $38                                                  ; $34be : $ff
	rst $38                                                  ; $34bf : $ff
	rst $38                                                  ; $34c0 : $ff
	rst $38                                                  ; $34c1 : $ff
	rst $38                                                  ; $34c2 : $ff
	rst $38                                                  ; $34c3 : $ff
	rst $38                                                  ; $34c4 : $ff
	rst $38                                                  ; $34c5 : $ff
	rst $38                                                  ; $34c6 : $ff
	rst $38                                                  ; $34c7 : $ff
	rst $38                                                  ; $34c8 : $ff
	rst $38                                                  ; $34c9 : $ff
	rst $38                                                  ; $34ca : $ff
	rst $38                                                  ; $34cb : $ff
	rst $38                                                  ; $34cc : $ff
	rst $38                                                  ; $34cd : $ff
	rst $38                                                  ; $34ce : $ff
	rst $38                                                  ; $34cf : $ff
	rst $38                                                  ; $34d0 : $ff
	rst $38                                                  ; $34d1 : $ff
	rst $38                                                  ; $34d2 : $ff
	rst $38                                                  ; $34d3 : $ff
	rst $38                                                  ; $34d4 : $ff
	rst $38                                                  ; $34d5 : $ff
	rst $38                                                  ; $34d6 : $ff
	rst $38                                                  ; $34d7 : $ff
	rst $38                                                  ; $34d8 : $ff
	rst $38                                                  ; $34d9 : $ff
	rst $38                                                  ; $34da : $ff
	rst $38                                                  ; $34db : $ff
	rst $38                                                  ; $34dc : $ff
	rst $38                                                  ; $34dd : $ff
	rst $38                                                  ; $34de : $ff
	rst $38                                                  ; $34df : $ff
	rst $38                                                  ; $34e0 : $ff
	rst $38                                                  ; $34e1 : $ff
	rst $38                                                  ; $34e2 : $ff
	rst $38                                                  ; $34e3 : $ff
	rst $38                                                  ; $34e4 : $ff
	rst $38                                                  ; $34e5 : $ff
	rst $38                                                  ; $34e6 : $ff
	rst $38                                                  ; $34e7 : $ff
	rst $38                                                  ; $34e8 : $ff
	rst $38                                                  ; $34e9 : $ff
	rst $38                                                  ; $34ea : $ff
	rst $38                                                  ; $34eb : $ff
	rst $38                                                  ; $34ec : $ff
	rst $38                                                  ; $34ed : $ff
	rst $38                                                  ; $34ee : $ff
	rst $38                                                  ; $34ef : $ff
	rst $38                                                  ; $34f0 : $ff
	rst $38                                                  ; $34f1 : $ff
	rst $38                                                  ; $34f2 : $ff
	rst $38                                                  ; $34f3 : $ff
	rst $38                                                  ; $34f4 : $ff
	rst $38                                                  ; $34f5 : $ff
	rst $38                                                  ; $34f6 : $ff
	rst $38                                                  ; $34f7 : $ff
	rst $38                                                  ; $34f8 : $ff
	rst $38                                                  ; $34f9 : $ff
	rst $38                                                  ; $34fa : $ff
	rst $38                                                  ; $34fb : $ff
	rst $38                                                  ; $34fc : $ff
	rst $38                                                  ; $34fd : $ff
	rst $38                                                  ; $34fe : $ff
	rst $38                                                  ; $34ff : $ff
	rst $38                                                  ; $3500 : $ff
	rst $38                                                  ; $3501 : $ff
	rst $38                                                  ; $3502 : $ff
	rst $38                                                  ; $3503 : $ff
	rst $38                                                  ; $3504 : $ff
	rst $38                                                  ; $3505 : $ff
	rst $38                                                  ; $3506 : $ff
	rst $38                                                  ; $3507 : $ff
	rst $38                                                  ; $3508 : $ff
	rst $38                                                  ; $3509 : $ff
	rst $38                                                  ; $350a : $ff
	rst $38                                                  ; $350b : $ff
	rst $38                                                  ; $350c : $ff
	rst $38                                                  ; $350d : $ff
	rst $38                                                  ; $350e : $ff
	rst $38                                                  ; $350f : $ff
	rst $38                                                  ; $3510 : $ff
	rst $38                                                  ; $3511 : $ff
	rst $38                                                  ; $3512 : $ff
	rst $38                                                  ; $3513 : $ff
	rst $38                                                  ; $3514 : $ff
	rst $38                                                  ; $3515 : $ff
	rst $38                                                  ; $3516 : $ff
	rst $38                                                  ; $3517 : $ff
	rst $38                                                  ; $3518 : $ff
	rst $38                                                  ; $3519 : $ff
	rst $38                                                  ; $351a : $ff
	rst $38                                                  ; $351b : $ff
	rst $38                                                  ; $351c : $ff
	rst $38                                                  ; $351d : $ff
	rst $38                                                  ; $351e : $ff
	rst $38                                                  ; $351f : $ff
	rst $38                                                  ; $3520 : $ff
	rst $38                                                  ; $3521 : $ff
	rst $38                                                  ; $3522 : $ff
	rst $38                                                  ; $3523 : $ff
	rst $38                                                  ; $3524 : $ff
	rst $38                                                  ; $3525 : $ff
	rst $38                                                  ; $3526 : $ff
	rst $38                                                  ; $3527 : $ff
	rst $38                                                  ; $3528 : $ff
	rst $38                                                  ; $3529 : $ff
	rst $38                                                  ; $352a : $ff
	rst $38                                                  ; $352b : $ff
	rst $38                                                  ; $352c : $ff
	rst $38                                                  ; $352d : $ff
	rst $38                                                  ; $352e : $ff
	rst $38                                                  ; $352f : $ff
	rst $38                                                  ; $3530 : $ff
	rst $38                                                  ; $3531 : $ff
	rst $38                                                  ; $3532 : $ff
	rst $38                                                  ; $3533 : $ff
	rst $38                                                  ; $3534 : $ff
	rst $38                                                  ; $3535 : $ff
	rst $38                                                  ; $3536 : $ff
	rst $38                                                  ; $3537 : $ff
	rst $38                                                  ; $3538 : $ff
	rst $38                                                  ; $3539 : $ff
	rst $38                                                  ; $353a : $ff
	rst $38                                                  ; $353b : $ff
	rst $38                                                  ; $353c : $ff
	rst $38                                                  ; $353d : $ff
	rst $38                                                  ; $353e : $ff
	rst $38                                                  ; $353f : $ff
	rst $38                                                  ; $3540 : $ff
	rst $38                                                  ; $3541 : $ff
	rst $38                                                  ; $3542 : $ff
	rst $38                                                  ; $3543 : $ff
	rst $38                                                  ; $3544 : $ff
	rst $38                                                  ; $3545 : $ff
	rst $38                                                  ; $3546 : $ff
	rst $38                                                  ; $3547 : $ff
	rst $38                                                  ; $3548 : $ff
	rst $38                                                  ; $3549 : $ff
	rst $38                                                  ; $354a : $ff
	rst $38                                                  ; $354b : $ff
	rst $38                                                  ; $354c : $ff
	rst $38                                                  ; $354d : $ff
	rst $38                                                  ; $354e : $ff
	rst $38                                                  ; $354f : $ff
	rst $38                                                  ; $3550 : $ff
	rst $38                                                  ; $3551 : $ff
	rst $38                                                  ; $3552 : $ff
	rst $38                                                  ; $3553 : $ff
	rst $38                                                  ; $3554 : $ff
	rst $38                                                  ; $3555 : $ff
	rst $38                                                  ; $3556 : $ff
	rst $38                                                  ; $3557 : $ff
	rst $38                                                  ; $3558 : $ff
	rst $38                                                  ; $3559 : $ff
	rst $38                                                  ; $355a : $ff
	rst $38                                                  ; $355b : $ff
	rst $38                                                  ; $355c : $ff
	rst $38                                                  ; $355d : $ff
	rst $38                                                  ; $355e : $ff
	rst $38                                                  ; $355f : $ff
	rst $38                                                  ; $3560 : $ff
	rst $38                                                  ; $3561 : $ff
	rst $38                                                  ; $3562 : $ff
	rst $38                                                  ; $3563 : $ff
	rst $38                                                  ; $3564 : $ff
	rst $38                                                  ; $3565 : $ff
	rst $38                                                  ; $3566 : $ff
	rst $38                                                  ; $3567 : $ff
	rst $38                                                  ; $3568 : $ff
	rst $38                                                  ; $3569 : $ff
	rst $38                                                  ; $356a : $ff
	rst $38                                                  ; $356b : $ff
	rst $38                                                  ; $356c : $ff
	rst $38                                                  ; $356d : $ff
	rst $38                                                  ; $356e : $ff
	rst $38                                                  ; $356f : $ff
	rst $38                                                  ; $3570 : $ff
	rst $38                                                  ; $3571 : $ff
	rst $38                                                  ; $3572 : $ff
	rst $38                                                  ; $3573 : $ff
	rst $38                                                  ; $3574 : $ff
	rst $38                                                  ; $3575 : $ff
	rst $38                                                  ; $3576 : $ff
	rst $38                                                  ; $3577 : $ff
	rst $38                                                  ; $3578 : $ff
	rst $38                                                  ; $3579 : $ff
	rst $38                                                  ; $357a : $ff
	rst $38                                                  ; $357b : $ff
	rst $38                                                  ; $357c : $ff
	rst $38                                                  ; $357d : $ff
	rst $38                                                  ; $357e : $ff
	rst $38                                                  ; $357f : $ff
	rst $38                                                  ; $3580 : $ff
	rst $38                                                  ; $3581 : $ff
	rst $38                                                  ; $3582 : $ff
	rst $38                                                  ; $3583 : $ff
	rst $38                                                  ; $3584 : $ff
	rst $38                                                  ; $3585 : $ff
	rst $38                                                  ; $3586 : $ff
	rst $38                                                  ; $3587 : $ff
	rst $38                                                  ; $3588 : $ff
	rst $38                                                  ; $3589 : $ff
	rst $38                                                  ; $358a : $ff
	rst $38                                                  ; $358b : $ff
	rst $38                                                  ; $358c : $ff
	rst $38                                                  ; $358d : $ff
	rst $38                                                  ; $358e : $ff
	rst $38                                                  ; $358f : $ff
	rst $38                                                  ; $3590 : $ff
	rst $38                                                  ; $3591 : $ff
	rst $38                                                  ; $3592 : $ff
	rst $38                                                  ; $3593 : $ff
	rst $38                                                  ; $3594 : $ff
	rst $38                                                  ; $3595 : $ff
	rst $38                                                  ; $3596 : $ff
	rst $38                                                  ; $3597 : $ff
	rst $38                                                  ; $3598 : $ff
	rst $38                                                  ; $3599 : $ff
	rst $38                                                  ; $359a : $ff
	rst $38                                                  ; $359b : $ff
	rst $38                                                  ; $359c : $ff
	rst $38                                                  ; $359d : $ff
	rst $38                                                  ; $359e : $ff
	rst $38                                                  ; $359f : $ff
	rst $38                                                  ; $35a0 : $ff
	rst $38                                                  ; $35a1 : $ff
	rst $38                                                  ; $35a2 : $ff
	rst $38                                                  ; $35a3 : $ff
	rst $38                                                  ; $35a4 : $ff
	rst $38                                                  ; $35a5 : $ff
	rst $38                                                  ; $35a6 : $ff
	rst $38                                                  ; $35a7 : $ff
	rst $38                                                  ; $35a8 : $ff
	rst $38                                                  ; $35a9 : $ff
	rst $38                                                  ; $35aa : $ff
	rst $38                                                  ; $35ab : $ff
	rst $38                                                  ; $35ac : $ff
	rst $38                                                  ; $35ad : $ff
	rst $38                                                  ; $35ae : $ff
	rst $38                                                  ; $35af : $ff
	rst $38                                                  ; $35b0 : $ff
	rst $38                                                  ; $35b1 : $ff
	rst $38                                                  ; $35b2 : $ff
	rst $38                                                  ; $35b3 : $ff
	rst $38                                                  ; $35b4 : $ff
	rst $38                                                  ; $35b5 : $ff
	rst $38                                                  ; $35b6 : $ff
	rst $38                                                  ; $35b7 : $ff
	rst $38                                                  ; $35b8 : $ff
	rst $38                                                  ; $35b9 : $ff
	rst $38                                                  ; $35ba : $ff
	rst $38                                                  ; $35bb : $ff
	rst $38                                                  ; $35bc : $ff
	rst $38                                                  ; $35bd : $ff
	rst $38                                                  ; $35be : $ff
	rst $38                                                  ; $35bf : $ff
	rst $38                                                  ; $35c0 : $ff
	rst $38                                                  ; $35c1 : $ff
	rst $38                                                  ; $35c2 : $ff
	rst $38                                                  ; $35c3 : $ff
	rst $38                                                  ; $35c4 : $ff
	rst $38                                                  ; $35c5 : $ff
	rst $38                                                  ; $35c6 : $ff
	rst $38                                                  ; $35c7 : $ff
	rst $38                                                  ; $35c8 : $ff
	rst $38                                                  ; $35c9 : $ff
	rst $38                                                  ; $35ca : $ff
	rst $38                                                  ; $35cb : $ff
	rst $38                                                  ; $35cc : $ff
	rst $38                                                  ; $35cd : $ff
	rst $38                                                  ; $35ce : $ff
	rst $38                                                  ; $35cf : $ff
	rst $38                                                  ; $35d0 : $ff
	rst $38                                                  ; $35d1 : $ff
	rst $38                                                  ; $35d2 : $ff
	rst $38                                                  ; $35d3 : $ff
	rst $38                                                  ; $35d4 : $ff
	rst $38                                                  ; $35d5 : $ff
	rst $38                                                  ; $35d6 : $ff
	rst $38                                                  ; $35d7 : $ff
	rst $38                                                  ; $35d8 : $ff
	rst $38                                                  ; $35d9 : $ff
	rst $38                                                  ; $35da : $ff
	rst $38                                                  ; $35db : $ff
	rst $38                                                  ; $35dc : $ff
	rst $38                                                  ; $35dd : $ff
	rst $38                                                  ; $35de : $ff
	rst $38                                                  ; $35df : $ff
	rst $38                                                  ; $35e0 : $ff
	rst $38                                                  ; $35e1 : $ff
	rst $38                                                  ; $35e2 : $ff
	rst $38                                                  ; $35e3 : $ff
	rst $38                                                  ; $35e4 : $ff
	rst $38                                                  ; $35e5 : $ff
	rst $38                                                  ; $35e6 : $ff
	rst $38                                                  ; $35e7 : $ff
	rst $38                                                  ; $35e8 : $ff
	rst $38                                                  ; $35e9 : $ff
	rst $38                                                  ; $35ea : $ff
	rst $38                                                  ; $35eb : $ff
	rst $38                                                  ; $35ec : $ff
	rst $38                                                  ; $35ed : $ff
	rst $38                                                  ; $35ee : $ff
	rst $38                                                  ; $35ef : $ff
	rst $38                                                  ; $35f0 : $ff
	rst $38                                                  ; $35f1 : $ff
	rst $38                                                  ; $35f2 : $ff
	rst $38                                                  ; $35f3 : $ff
	rst $38                                                  ; $35f4 : $ff
	rst $38                                                  ; $35f5 : $ff
	rst $38                                                  ; $35f6 : $ff
	rst $38                                                  ; $35f7 : $ff
	rst $38                                                  ; $35f8 : $ff
	rst $38                                                  ; $35f9 : $ff
	rst $38                                                  ; $35fa : $ff
	rst $38                                                  ; $35fb : $ff
	rst $38                                                  ; $35fc : $ff
	rst $38                                                  ; $35fd : $ff
	rst $38                                                  ; $35fe : $ff
	rst $38                                                  ; $35ff : $ff
	rst $38                                                  ; $3600 : $ff
	rst $38                                                  ; $3601 : $ff
	rst $38                                                  ; $3602 : $ff
	rst $38                                                  ; $3603 : $ff
	rst $38                                                  ; $3604 : $ff
	rst $38                                                  ; $3605 : $ff
	rst $38                                                  ; $3606 : $ff
	rst $38                                                  ; $3607 : $ff
	rst $38                                                  ; $3608 : $ff
	rst $38                                                  ; $3609 : $ff
	rst $38                                                  ; $360a : $ff
	rst $38                                                  ; $360b : $ff
	rst $38                                                  ; $360c : $ff
	rst $38                                                  ; $360d : $ff
	rst $38                                                  ; $360e : $ff
	rst $38                                                  ; $360f : $ff
	rst $38                                                  ; $3610 : $ff
	rst $38                                                  ; $3611 : $ff
	rst $38                                                  ; $3612 : $ff
	rst $38                                                  ; $3613 : $ff
	rst $38                                                  ; $3614 : $ff
	rst $38                                                  ; $3615 : $ff
	rst $38                                                  ; $3616 : $ff
	rst $38                                                  ; $3617 : $ff
	rst $38                                                  ; $3618 : $ff
	rst $38                                                  ; $3619 : $ff
	rst $38                                                  ; $361a : $ff
	rst $38                                                  ; $361b : $ff
	rst $38                                                  ; $361c : $ff
	rst $38                                                  ; $361d : $ff
	rst $38                                                  ; $361e : $ff
	rst $38                                                  ; $361f : $ff
	rst $38                                                  ; $3620 : $ff
	rst $38                                                  ; $3621 : $ff
	rst $38                                                  ; $3622 : $ff
	rst $38                                                  ; $3623 : $ff
	rst $38                                                  ; $3624 : $ff
	rst $38                                                  ; $3625 : $ff
	rst $38                                                  ; $3626 : $ff
	rst $38                                                  ; $3627 : $ff
	rst $38                                                  ; $3628 : $ff
	rst $38                                                  ; $3629 : $ff
	rst $38                                                  ; $362a : $ff
	rst $38                                                  ; $362b : $ff
	rst $38                                                  ; $362c : $ff
	rst $38                                                  ; $362d : $ff
	rst $38                                                  ; $362e : $ff
	rst $38                                                  ; $362f : $ff
	rst $38                                                  ; $3630 : $ff
	rst $38                                                  ; $3631 : $ff
	rst $38                                                  ; $3632 : $ff
	rst $38                                                  ; $3633 : $ff
	rst $38                                                  ; $3634 : $ff
	rst $38                                                  ; $3635 : $ff
	rst $38                                                  ; $3636 : $ff
	rst $38                                                  ; $3637 : $ff
	rst $38                                                  ; $3638 : $ff
	rst $38                                                  ; $3639 : $ff
	rst $38                                                  ; $363a : $ff
	rst $38                                                  ; $363b : $ff
	rst $38                                                  ; $363c : $ff
	rst $38                                                  ; $363d : $ff
	rst $38                                                  ; $363e : $ff
	rst $38                                                  ; $363f : $ff
	rst $38                                                  ; $3640 : $ff
	rst $38                                                  ; $3641 : $ff
	rst $38                                                  ; $3642 : $ff
	rst $38                                                  ; $3643 : $ff
	rst $38                                                  ; $3644 : $ff
	rst $38                                                  ; $3645 : $ff
	rst $38                                                  ; $3646 : $ff
	rst $38                                                  ; $3647 : $ff
	rst $38                                                  ; $3648 : $ff
	rst $38                                                  ; $3649 : $ff
	rst $38                                                  ; $364a : $ff
	rst $38                                                  ; $364b : $ff
	rst $38                                                  ; $364c : $ff
	rst $38                                                  ; $364d : $ff
	rst $38                                                  ; $364e : $ff
	rst $38                                                  ; $364f : $ff
	rst $38                                                  ; $3650 : $ff
	rst $38                                                  ; $3651 : $ff
	rst $38                                                  ; $3652 : $ff
	rst $38                                                  ; $3653 : $ff
	rst $38                                                  ; $3654 : $ff
	rst $38                                                  ; $3655 : $ff
	rst $38                                                  ; $3656 : $ff
	rst $38                                                  ; $3657 : $ff
	rst $38                                                  ; $3658 : $ff
	rst $38                                                  ; $3659 : $ff
	rst $38                                                  ; $365a : $ff
	rst $38                                                  ; $365b : $ff
	rst $38                                                  ; $365c : $ff
	rst $38                                                  ; $365d : $ff
	rst $38                                                  ; $365e : $ff
	rst $38                                                  ; $365f : $ff
	rst $38                                                  ; $3660 : $ff
	rst $38                                                  ; $3661 : $ff
	rst $38                                                  ; $3662 : $ff
	rst $38                                                  ; $3663 : $ff
	rst $38                                                  ; $3664 : $ff
	rst $38                                                  ; $3665 : $ff
	rst $38                                                  ; $3666 : $ff
	rst $38                                                  ; $3667 : $ff
	rst $38                                                  ; $3668 : $ff
	rst $38                                                  ; $3669 : $ff
	rst $38                                                  ; $366a : $ff
	rst $38                                                  ; $366b : $ff
	rst $38                                                  ; $366c : $ff
	rst $38                                                  ; $366d : $ff
	rst $38                                                  ; $366e : $ff
	rst $38                                                  ; $366f : $ff
	rst $38                                                  ; $3670 : $ff
	rst $38                                                  ; $3671 : $ff
	rst $38                                                  ; $3672 : $ff
	rst $38                                                  ; $3673 : $ff
	rst $38                                                  ; $3674 : $ff
	rst $38                                                  ; $3675 : $ff
	rst $38                                                  ; $3676 : $ff
	rst $38                                                  ; $3677 : $ff
	rst $38                                                  ; $3678 : $ff
	rst $38                                                  ; $3679 : $ff
	rst $38                                                  ; $367a : $ff
	rst $38                                                  ; $367b : $ff
	rst $38                                                  ; $367c : $ff
	rst $38                                                  ; $367d : $ff
	rst $38                                                  ; $367e : $ff
	rst $38                                                  ; $367f : $ff
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

Call_04_37e1:
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

Call_04_3844:
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

Jump_04_38ed:
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

Call_04_3904:
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

Call_04_394c:
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

Jump_04_3972:
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

Call_04_3ae1:
	rst $38                                                  ; $3ae1 : $ff
	rst $38                                                  ; $3ae2 : $ff
	rst $38                                                  ; $3ae3 : $ff
	rst $38                                                  ; $3ae4 : $ff
	rst $38                                                  ; $3ae5 : $ff

Jump_04_3ae6:
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

Call_04_3b1f:
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

Jump_04_3deb:
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

Jump_04_3e59:
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

Call_04_3ec2:
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

Jump_04_3ee8:
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

Jump_04_3f91:
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

Call_04_3fe5:
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