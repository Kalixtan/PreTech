.include "includes.s"
        
.bank $003 slot 3
.org $0

	ld (hl), $c7                                                  ; $0000 : $36, $c7
	ex af, af'                                                  ; $0002 : $08
	cpl                                                  ; $0003 : $2f
	ld a, c                                                  ; $0004 : $79
	adc a, (hl)                                                  ; $0005 : $8e
	rra                                                  ; $0006 : $1f
	ld a, $2e                                                  ; $0007 : $3e, $2e
	ld l, (hl)                                                  ; $0009 : $6e
	ld c, d                                                  ; $000a : $4a
	ld a, c                                                  ; $000b : $79
	adc a, (hl)                                                  ; $000c : $8e
	inc de                                                  ; $000d : $13
	cp a                                                  ; $000e : $bf
	ld a, c                                                  ; $000f : $79
	adc a, (hl)                                                  ; $0010 : $8e
	inc de                                                  ; $0011 : $13
	call $8e79                                                  ; $0012 : $cd, $79, $8e
	ld d, $de                                                  ; $0015 : $16, $de
	ld h, d                                                  ; $0017 : $62
	ccf                                                  ; $0018 : $3f
	ld a, c                                                  ; $0019 : $79
	adc a, (hl)                                                  ; $001a : $8e
	rla                                                  ; $001b : $17
	ld a, $1c                                                  ; $001c : $3e, $1c
	ld a, c                                                  ; $001e : $79
	sbc a, (hl)                                                  ; $001f : $9e
	ccf                                                  ; $0020 : $3f
	ld a, c                                                  ; $0021 : $79
	sbc a, h                                                  ; $0022 : $9c
	ccf                                                  ; $0023 : $3f
	ld a, c                                                  ; $0024 : $79
	or d                                                  ; $0025 : $b2
	di                                                  ; $0026 : $f3
	adc a, c                                                  ; $0027 : $89
	cp l                                                  ; $0028 : $bd
	ld e, a                                                  ; $0029 : $5f
	ld a, c                                                  ; $002a : $79
	rst $08                                                  ; $002b : $cf
	jr nc, -$72                                                  ; $002c : $30, $8e

	inc de                                                  ; $002e : $13
	ld (hl), e                                                  ; $002f : $73
	rst $08                                                  ; $0030 : $cf
	ld a, c                                                  ; $0031 : $79
	jp $e679                                                  ; $0032 : $c3, $79, $e6


	jr z, br_03_0073                                                  ; $0035 : $28, $3c

	rst $08                                                  ; $0037 : $cf
	ld a, c                                                  ; $0038 : $79
	and $6c                                                  ; $0039 : $e6, $6c
	ld a, c                                                  ; $003b : $79
	and $6c                                                  ; $003c : $e6, $6c
	di                                                  ; $003e : $f3
	jp (hl)                                                  ; $003f : $e9


	ld l, (hl)                                                  ; $0040 : $6e
	ld a, a                                                  ; $0041 : $7f
	ld a, c                                                  ; $0042 : $79
	and $6c                                                  ; $0043 : $e6, $6c
	ccf                                                  ; $0045 : $3f
	ld ($103e), a                                                  ; $0046 : $32, $3e, $10
	rst $08                                                  ; $0049 : $cf
	ld a, c                                                  ; $004a : $79
	and $6c                                                  ; $004b : $e6, $6c
	ld h, b                                                  ; $004d : $60
	add a, b                                                  ; $004e : $80
	ld a, c                                                  ; $004f : $79
	and $6c                                                  ; $0050 : $e6, $6c
	ld h, b                                                  ; $0052 : $60
	add a, b                                                  ; $0053 : $80
	di                                                  ; $0054 : $f3
	xor (hl)                                                  ; $0055 : $ae
	ld l, e                                                  ; $0056 : $6b
	dec d                                                  ; $0057 : $15
	inc c                                                  ; $0058 : $0c
	ccf                                                  ; $0059 : $3f
	ld a, c                                                  ; $005a : $79
	and $b2                                                  ; $005b : $e6, $b2
	inc a                                                  ; $005d : $3c
	ld a, c                                                  ; $005e : $79
	and $e7                                                  ; $005f : $e6, $e7
	or e                                                  ; $0061 : $b3
	ld a, c                                                  ; $0062 : $79
	rst $20                                                  ; $0063 : $e7
	inc a                                                  ; $0064 : $3c
	ld a, c                                                  ; $0065 : $79
	ret pe                                                  ; $0066 : $e8

	dec sp                                                  ; $0067 : $3b
	ld a, c                                                  ; $0068 : $79

br_03_0069:
	jp pe, $6c07                                                  ; $0069 : $ea, $07, $6c
	call c, $617e                                                  ; $006c : $dc, $7e, $61
	jp pe, $687e                                                  ; $006f : $ea, $7e, $68
	pop hl                                                  ; $0072 : $e1

br_03_0073:
	rst $08                                                  ; $0073 : $cf
	ld a, (hl)                                                  ; $0074 : $7e
	ld l, h                                                  ; $0075 : $6c
	ld l, l                                                  ; $0076 : $6d
	ex af, af'                                                  ; $0077 : $08
	ld h, b                                                  ; $0078 : $60
	ld a, (hl)                                                  ; $0079 : $7e
	ld l, l                                                  ; $007a : $6d
	ld d, e                                                  ; $007b : $53
	cp a                                                  ; $007c : $bf
	ld a, (hl)                                                  ; $007d : $7e
	ld l, (hl)                                                  ; $007e : $6e
	sub e                                                  ; $007f : $93
	call po, $9ee0                                                  ; $0080 : $e4, $e0, $9e
	ld l, e                                                  ; $0083 : $6b
	pop hl                                                  ; $0084 : $e1
	ld a, (hl)                                                  ; $0085 : $7e
	ld l, (hl)                                                  ; $0086 : $6e
	sub e                                                  ; $0087 : $93
	call po, $e6e0                                                  ; $0088 : $e4, $e0, $e6
	cp (hl)                                                  ; $008b : $be
	rra                                                  ; $008c : $1f
	ld a, (hl)                                                  ; $008d : $7e
	ld l, (hl)                                                  ; $008e : $6e
	sbc a, (hl)                                                  ; $008f : $9e
	ld l, e                                                  ; $0090 : $6b
	jp pe, $a87e                                                  ; $0091 : $ea, $7e, $a8
	add hl, hl                                                  ; $0094 : $29
	adc a, a                                                  ; $0095 : $8f
	ld a, $29                                                  ; $0096 : $3e, $29
	ld e, b                                                  ; $0098 : $58
	ret                                                  ; $0099 : $c9


	adc a, a                                                  ; $009a : $8f
	call po, Call_03_0e01                                                  ; $009b : $e4, $01, $0e
	ld l, a                                                  ; $009e : $6f
	call po, $5601                                                  ; $009f : $e4, $01, $56
	add a, e                                                  ; $00a2 : $83
	call po, $0e02                                                  ; $00a3 : $e4, $02, $0e
	djnz br_03_0069                                                  ; $00a6 : $10, $c1
	dec bc                                                  ; $00a8 : $0b
	call po, $0e02                                                  ; $00a9 : $e4, $02, $0e
	ld b, e                                                  ; $00ac : $43
	di                                                  ; $00ad : $f3
	ld e, $6b                                                  ; $00ae : $1e, $6b
	ld h, e                                                  ; $00b0 : $63
	call po, $b002                                                  ; $00b1 : $e4, $02, $b0
	rst $08                                                  ; $00b4 : $cf
	call po, $b602                                                  ; $00b5 : $e4, $02, $b6
	cpl                                                  ; $00b8 : $2f
	call po, $130e                                                  ; $00b9 : $e4, $0e, $13
	ld (hl), a                                                  ; $00bc : $77
	ex af, af'                                                  ; $00bd : $08
	call po, Call_03_160e                                                  ; $00be : $e4, $0e, $16
	rra                                                  ; $00c1 : $1f
	call po, Call_03_180e                                                  ; $00c2 : $e4, $0e, $18
	dec a                                                  ; $00c5 : $3d
	call po, Call_03_180e                                                  ; $00c6 : $e4, $0e, $18
	dec a                                                  ; $00c9 : $3d
	ld h, c                                                  ; $00ca : $61
	di                                                  ; $00cb : $f3
	ld b, (hl)                                                  ; $00cc : $46
	scf                                                  ; $00cd : $37
	cpl                                                  ; $00ce : $2f
	call po, Call_03_180e                                                  ; $00cf : $e4, $0e, $18
	dec a                                                  ; $00d2 : $3d
	rst $08                                                  ; $00d3 : $cf

Jump_03_00d4:
	call po, Call_03_2f06                                                  ; $00d4 : $e4, $06, $2f
	ld a, $40                                                  ; $00d7 : $3e, $40
	or (hl)                                                  ; $00d9 : $b6
	ex af, af'                                                  ; $00da : $08
	call po, $7f06                                                  ; $00db : $e4, $06, $7f
	call po, $7e06                                                  ; $00de : $e4, $06, $7e
	jp (hl)                                                  ; $00e1 : $e9


	or d                                                  ; $00e2 : $b2
	dec sp                                                  ; $00e3 : $3b
	call po, $8f06                                                  ; $00e4 : $e4, $06, $8f
	call po, $8306                                                  ; $00e7 : $e4, $06, $83
	call po, Call_03_330e                                                  ; $00ea : $e4, $0e, $33
	call po, Call_03_330e                                                  ; $00ed : $e4, $0e, $33
	rst $08                                                  ; $00f0 : $cf
	call po, $360e                                                  ; $00f1 : $e4, $0e, $36
	adc a, (hl)                                                  ; $00f4 : $8e
	rra                                                  ; $00f5 : $1f
	call po, $3f07                                                  ; $00f6 : $e4, $07, $3f
	call po, $7307                                                  ; $00f9 : $e4, $07, $73
	call c, Call_03_0ee4                                                  ; $00fc : $dc, $e4, $0e
	ld c, (hl)                                                  ; $00ff : $4e
	ld b, b                                                  ; $0100 : $40
	ld a, a                                                  ; $0101 : $7f
	call po, $4e0e                                                  ; $0102 : $e4, $0e, $4e
	ld b, b                                                  ; $0105 : $40
	ld a, h                                                  ; $0106 : $7c
	call po, $e408                                                  ; $0107 : $e4, $08, $e4
	ex af, af'                                                  ; $010a : $08
	ld h, $e0                                                  ; $010b : $26, $e0
	ld (hl), e                                                  ; $010d : $73
	call po, $5008                                                  ; $010e : $e4, $08, $50
	.db $dd                                                  ; $0111 : $dd
	ex af, af'                                                  ; $0112 : $08
	call po, $6708                                                  ; $0113 : $e4, $08, $67
	rrca                                                  ; $0116 : $0f
	call po, $6d08                                                  ; $0117 : $e4, $08, $6d
	sbc a, (hl)                                                  ; $011a : $9e
	nop                                                  ; $011b : $00
	call po, $e308                                                  ; $011c : $e4, $08, $e3
	ld l, b                                                  ; $011f : $68
	cpl                                                  ; $0120 : $2f
	call po, $d708                                                  ; $0121 : $e4, $08, $d7
	ccf                                                  ; $0124 : $3f
	call po, $e608                                                  ; $0125 : $e4, $08, $e6
	ld b, b                                                  ; $0128 : $40
	dec e                                                  ; $0129 : $1d
	and $b3                                                  ; $012a : $e6, $b3
	cpl                                                  ; $012c : $2f
	call po, $e608                                                  ; $012d : $e4, $08, $e6
	ld b, b                                                  ; $0130 : $40
	dec e                                                  ; $0131 : $1d
	and $b6                                                  ; $0132 : $e6, $b6
	adc a, (hl)                                                  ; $0134 : $8e
	rra                                                  ; $0135 : $1f
	call po, $ea08                                                  ; $0136 : $e4, $08, $ea
	call po, $e40a                                                  ; $0139 : $e4, $0a, $e4
	ld a, (bc)                                                  ; $013c : $0a
	ld (hl), e                                                  ; $013d : $73
	call po, Call_03_0d0b                                                  ; $013e : $e4, $0b, $0d
	ld e, c                                                  ; $0141 : $59
	adc a, a                                                  ; $0142 : $8f
	call po, $150b                                                  ; $0143 : $e4, $0b, $15
	call po, Call_03_190b                                                  ; $0146 : $e4, $0b, $19
	add a, (hl)                                                  ; $0149 : $86
	call po, Call_03_260b                                                  ; $014a : $e4, $0b, $26
	call po, $e10b                                                  ; $014d : $e4, $0b, $e1
	ld l, b                                                  ; $0150 : $68
	call po, $630b                                                  ; $0151 : $e4, $0b, $63
	di                                                  ; $0154 : $f3

Jump_03_0155:
	ld e, $6b                                                  ; $0155 : $1e, $6b
	ld h, e                                                  ; $0157 : $63
	call po, $6d0b                                                  ; $0158 : $e4, $0b, $6d
	ld l, (hl)                                                  ; $015b : $6e
	ld b, e                                                  ; $015c : $43
	di                                                  ; $015d : $f3
	xor e                                                  ; $015e : $ab
	sbc a, (hl)                                                  ; $015f : $9e
	halt                                                  ; $0160 : $76
	add a, c                                                  ; $0161 : $81
	inc a                                                  ; $0162 : $3c
	call po, $e30b                                                  ; $0163 : $e4, $0b, $e3
	ld ($0be4), a                                                  ; $0166 : $32, $e4, $0b
	push hl                                                  ; $0169 : $e5
	and $3d                                                  ; $016a : $e6, $3d
	out ($e4), a                                                  ; $016c : $d3, $e4
	dec bc                                                  ; $016e : $0b
	or (hl)                                                  ; $016f : $b6
	ld ($0be4), a                                                  ; $0170 : $32, $e4, $0b
	cp (hl)                                                  ; $0173 : $be
	xor a                                                  ; $0174 : $af
	call po, $cf0b                                                  ; $0175 : $e4, $0b, $cf
	call po, $d50b                                                  ; $0178 : $e4, $0b, $d5
	rrca                                                  ; $017b : $0f
	ld a, $80                                                  ; $017c : $3e, $80
	push bc                                                  ; $017e : $c5
	ld l, b                                                  ; $017f : $68
	pop hl                                                  ; $0180 : $e1
	exx                                                  ; $0181 : $d9
	adc a, a                                                  ; $0182 : $8f
	call po, $d60b                                                  ; $0183 : $e4, $0b, $d6
	adc a, a                                                  ; $0186 : $8f
	call po, $d60b                                                  ; $0187 : $e4, $0b, $d6
	adc a, a                                                  ; $018a : $8f
	scf                                                  ; $018b : $37
	and $d5                                                  ; $018c : $e6, $d5
	dec sp                                                  ; $018e : $3b
	di                                                  ; $018f : $f3
	ex (sp), hl                                                  ; $0190 : $e3
	ld l, b                                                  ; $0191 : $68
	pop hl                                                  ; $0192 : $e1
	.db $ed                                                  ; $0193 : $ed
	di                                                  ; $0194 : $f3
	jp po, $cfbe                                                  ; $0195 : $e2, $be, $cf

Call_03_0198:
	call po, $e90b                                                  ; $0198 : $e4, $0b, $e9
	call po, $ea0b                                                  ; $019b : $e4, $0b, $ea
	call po, $ea0b                                                  ; $019e : $e4, $0b, $ea
	ld (hl), b                                                  ; $01a1 : $70
	add a, d                                                  ; $01a2 : $82
	call po, $cf0c                                                  ; $01a3 : $e4, $0c, $cf
	call po, $c30c                                                  ; $01a6 : $e4, $0c, $c3
	rst $08                                                  ; $01a9 : $cf
	call po, Call_03_150d                                                  ; $01aa : $e4, $0d, $15
	call po, Call_03_3b0d                                                  ; $01ad : $e4, $0d, $3b
	ld h, b                                                  ; $01b0 : $60
	ld a, a                                                  ; $01b1 : $7f
	call po, Call_03_3b0d                                                  ; $01b2 : $e4, $0d, $3b
	ld h, b                                                  ; $01b5 : $60
	ld a, h                                                  ; $01b6 : $7c
	call po, $af0e                                                  ; $01b7 : $e4, $0e, $af
	call po, $ae0e                                                  ; $01ba : $e4, $0e, $ae
	rst $18                                                  ; $01bd : $df
	call po, $a00e                                                  ; $01be : $e4, $0e, $a0
	adc a, a                                                  ; $01c1 : $8f
	call po, $a40e                                                  ; $01c2 : $e4, $0e, $a4
	ld a, c                                                  ; $01c5 : $79
	ret pe                                                  ; $01c6 : $e8

	dec sp                                                  ; $01c7 : $3b
	call po, $b30e                                                  ; $01c8 : $e4, $0e, $b3
	call po, $9812                                                  ; $01cb : $e4, $12, $98
	rlca                                                  ; $01ce : $07
	cpl                                                  ; $01cf : $2f
	inc c                                                  ; $01d0 : $0c
	call po, Call_03_361e                                                  ; $01d1 : $e4, $1e, $36
	add a, a                                                  ; $01d4 : $87
	ld a, $af                                                  ; $01d5 : $3e, $af
	call po, $8630                                                  ; $01d7 : $e4, $30, $86
	adc a, (hl)                                                  ; $01da : $8e
	rra                                                  ; $01db : $1f
	call po, $8630                                                  ; $01dc : $e4, $30, $86
	adc a, (hl)                                                  ; $01df : $8e
	inc e                                                  ; $01e0 : $1c
	call po, $8c30                                                  ; $01e1 : $e4, $30, $8c
	call po, $8d30                                                  ; $01e4 : $e4, $30, $8d
	call po, $ce30                                                  ; $01e7 : $e4, $30, $ce

Jump_03_01ea:
	ld l, e                                                  ; $01ea : $6b
	ccf                                                  ; $01eb : $3f
	call po, $ce30                                                  ; $01ec : $e4, $30, $ce
	ld l, e                                                  ; $01ef : $6b
	ld ($30e4), a                                                  ; $01f0 : $32, $e4, $30
	adc a, $6b                                                  ; $01f3 : $ce, $6b
	ld a, $43                                                  ; $01f5 : $3e, $43
	adc a, l                                                  ; $01f7 : $8d
	call po, $ce30                                                  ; $01f8 : $e4, $30, $ce
	ld l, e                                                  ; $01fb : $6b
	inc a                                                  ; $01fc : $3c
	call po, $df30                                                  ; $01fd : $e4, $30, $df
	call po, $5031                                                  ; $0200 : $e4, $31, $50
	add a, (hl)                                                  ; $0203 : $86
	djnz $7f                                                  ; $0204 : $10, $7f
	call po, $0732                                                  ; $0206 : $e4, $32, $07
	call po, $0732                                                  ; $0209 : $e4, $32, $07
	rst $08                                                  ; $020c : $cf
	call po, $6332                                                  ; $020d : $e4, $32, $63
	rst $20                                                  ; $0210 : $e7
	rlca                                                  ; $0211 : $07
	call po, $6d32                                                  ; $0212 : $e4, $32, $6d
	dec sp                                                  ; $0215 : $3b
	or b                                                  ; $0216 : $b0
	add a, e                                                  ; $0217 : $83
	ex af, af'                                                  ; $0218 : $08
	call po, $e632                                                  ; $0219 : $e4, $32, $e6
	ld (hl), a                                                  ; $021c : $77
	rrca                                                  ; $021d : $0f
	call po, $df33                                                  ; $021e : $e4, $33, $df
	call po, $103e                                                  ; $0221 : $e4, $3e, $10
	ld a, c                                                  ; $0224 : $79
	xor c                                                  ; $0225 : $a9
	halt                                                  ; $0226 : $76
	rst $08                                                  ; $0227 : $cf
	call po, $9c36                                                  ; $0228 : $e4, $36, $9c
	ld l, h                                                  ; $022b : $6c
	call po, Call_03_393e                                                  ; $022c : $e4, $3e, $39
	adc a, (hl)                                                  ; $022f : $8e
	rra                                                  ; $0230 : $1f
	call po, Call_03_0837                                                  ; $0231 : $e4, $37, $08
	ld l, b                                                  ; $0234 : $68
	call po, $d337                                                  ; $0235 : $e4, $37, $d3
	cpl                                                  ; $0238 : $2f
	call po, $d637                                                  ; $0239 : $e4, $37, $d6
	adc a, (hl)                                                  ; $023c : $8e
	rra                                                  ; $023d : $1f
	call po, $4e3e                                                  ; $023e : $e4, $3e, $4e
	inc bc                                                  ; $0241 : $03
	cp a                                                  ; $0242 : $bf
	call po, $4e3e                                                  ; $0243 : $e4, $3e, $4e
	dec bc                                                  ; $0246 : $0b
	ex af, af'                                                  ; $0247 : $08
	ccf                                                  ; $0248 : $3f
	call po, $493e                                                  ; $0249 : $e4, $3e, $49
	cp (hl)                                                  ; $024c : $be
	xor a                                                  ; $024d : $af
	call po, $e438                                                  ; $024e : $e4, $38, $e4
	dec sp                                                  ; $0251 : $3b
	ld e, $6b                                                  ; $0252 : $1e, $6b
	jp pe, $3be4                                                  ; $0254 : $ea, $e4, $3b
	ld h, d                                                  ; $0257 : $62
	ld h, b                                                  ; $0258 : $60
	adc a, a                                                  ; $0259 : $8f
	call po, $b63b                                                  ; $025a : $e4, $3b, $b6
	call po, $e401                                                  ; $025d : $e4, $01, $e4
	dec a                                                  ; $0260 : $3d
	call po, Call_03_073d                                                  ; $0261 : $e4, $3d, $07
	call po, Call_03_0e3d                                                  ; $0264 : $e4, $3d, $0e
	ld c, c                                                  ; $0267 : $49
	cp d                                                  ; $0268 : $ba
	ld e, c                                                  ; $0269 : $59
	add a, $cf                                                  ; $026a : $c6, $cf
	call po, Call_03_393d                                                  ; $026c : $e4, $3d, $39
	cp c                                                  ; $026f : $b9
	ld a, c                                                  ; $0270 : $79
	pop hl                                                  ; $0271 : $e1
	jp pe, Jump_03_3de4                                                  ; $0272 : $ea, $e4, $3d
	dec sp                                                  ; $0275 : $3b
	call po, $593d                                                  ; $0276 : $e4, $3d, $59
	cpl                                                  ; $0279 : $2f
	call po, $963e                                                  ; $027a : $e4, $3e, $96
	djnz -$71                                                  ; $027d : $10, $8f
	call po, $963e                                                  ; $027f : $e4, $3e, $96
	djnz -$71                                                  ; $0282 : $10, $8f
	ld a, $80                                                  ; $0284 : $3e, $80
	cp a                                                  ; $0286 : $bf
	call po, $963e                                                  ; $0287 : $e4, $3e, $96
	add hl, de                                                  ; $028a : $19
	di                                                  ; $028b : $f3
	ld d, $de                                                  ; $028c : $16, $de
	xor a                                                  ; $028e : $af
	call po, $e460                                                  ; $028f : $e4, $60, $e4
	ld l, a                                                  ; $0292 : $6f
	call po, $5361                                                  ; $0293 : $e4, $61, $53
	ld (hl), b                                                  ; $0296 : $70
	adc a, (hl)                                                  ; $0297 : $8e
	inc de                                                  ; $0298 : $13
	ld a, c                                                  ; $0299 : $79
	call po, $5661                                                  ; $029a : $e4, $61, $56
	pop hl                                                  ; $029d : $e1
	ex af, af'                                                  ; $029e : $08
	call po, $b961                                                  ; $029f : $e4, $61, $b9
	ret po                                                  ; $02a2 : $e0

	inc a                                                  ; $02a3 : $3c
	call po, $b961                                                  ; $02a4 : $e4, $61, $b9
	pop bc                                                  ; $02a7 : $c1
	sbc a, d                                                  ; $02a8 : $9a
	ccf                                                  ; $02a9 : $3f
	call po, Call_03_2762                                                  ; $02aa : $e4, $62, $27
	ccf                                                  ; $02ad : $3f
	jr nc, -$1f                                                  ; $02ae : $30, $e1

	inc a                                                  ; $02b0 : $3c
	call po, $8662                                                  ; $02b1 : $e4, $62, $86
	pop hl                                                  ; $02b4 : $e1
	ld e, l                                                  ; $02b5 : $5d
	call po, $d962                                                  ; $02b6 : $e4, $62, $d9
	ret pe                                                  ; $02b9 : $e8

	adc a, a                                                  ; $02ba : $8f
	dec a                                                  ; $02bb : $3d
	sbc a, (hl)                                                  ; $02bc : $9e
	add a, e                                                  ; $02bd : $83
	cp h                                                  ; $02be : $bc
	call po, $e862                                                  ; $02bf : $e4, $62, $e8
	ld c, $af                                                  ; $02c2 : $0e, $af
	call po, $e862                                                  ; $02c4 : $e4, $62, $e8
	inc a                                                  ; $02c7 : $3c
	rst $18                                                  ; $02c8 : $df
	call po, Call_03_0867                                                  ; $02c9 : $e4, $67, $08
	sbc a, a                                                  ; $02cc : $9f
	call po, Call_03_3f67                                                  ; $02cd : $e4, $67, $3f
	call po, Call_03_3c67                                                  ; $02d0 : $e4, $67, $3c
	call po, $e367                                                  ; $02d3 : $e4, $67, $e3
	call po, $e367                                                  ; $02d6 : $e4, $67, $e3
	jp pe, $e8f3                                                  ; $02d9 : $ea, $f3, $e8
	ld c, $af                                                  ; $02dc : $0e, $af
	call po, $7667                                                  ; $02de : $e4, $67, $76
	halt                                                  ; $02e1 : $76
	out ($bc), a                                                  ; $02e2 : $d3, $bc
	call po, $7667                                                  ; $02e4 : $e4, $67, $76
	call po, Call_03_3b3d                                                  ; $02e7 : $e4, $3d, $3b
	rst $08                                                  ; $02ea : $cf
	call po, $e867                                                  ; $02eb : $e4, $67, $e8
	ld c, $6e                                                  ; $02ee : $0e, $6e
	inc sp                                                  ; $02f0 : $33
	ccf                                                  ; $02f1 : $3f
	call po, Call_03_3b68                                                  ; $02f2 : $e4, $68, $3b
	rlca                                                  ; $02f5 : $07
	call po, Call_03_3b68                                                  ; $02f6 : $e4, $68, $3b

br_03_02f9:
	rlca                                                  ; $02f9 : $07
	rst $08                                                  ; $02fa : $cf
	call po, Call_03_3c68                                                  ; $02fb : $e4, $68, $3c
	call po, $6e68                                                  ; $02fe : $e4, $68, $6e
	ld c, (hl)                                                  ; $0301 : $4e
	ld l, (hl)                                                  ; $0302 : $6e
	ld c, a                                                  ; $0303 : $4f
	call po, $6c68                                                  ; $0304 : $e4, $68, $6c
	out ($bf), a                                                  ; $0307 : $d3, $bf
	call po, $8368                                                  ; $0309 : $e4, $68, $83
	ret                                                  ; $030c : $c9


	ret nc                                                  ; $030d : $d0

	call po, $e668                                                  ; $030e : $e4, $68, $e6
	out ($e4), a                                                  ; $0311 : $d3, $e4
	jr c, br_03_02f9                                                  ; $0313 : $38, $e4

	ld l, b                                                  ; $0315 : $68
	and $d3                                                  ; $0316 : $e6, $d3
	rst $08                                                  ; $0318 : $cf
	call po, $c66c                                                  ; $0319 : $e4, $6c, $c6
	ld (hl), e                                                  ; $031c : $73
	rst $08                                                  ; $031d : $cf
	call po, $c66c                                                  ; $031e : $e4, $6c, $c6
	call z, $a66a                                                  ; $0321 : $cc, $6a, $a6
	call po, $c66c                                                  ; $0324 : $e4, $6c, $c6
	call z, $a66a                                                  ; $0327 : $cc, $6a, $a6
	di                                                  ; $032a : $f3
	or (hl)                                                  ; $032b : $b6
	rst $20                                                  ; $032c : $e7
	dec sp                                                  ; $032d : $3b
	call po, $c96c                                                  ; $032e : $e4, $6c, $c9
	and $b6                                                  ; $0331 : $e6, $b6
	di                                                  ; $0333 : $f3
	or (hl)                                                  ; $0334 : $b6
	rst $20                                                  ; $0335 : $e7
	dec sp                                                  ; $0336 : $3b
	call po, $d76c                                                  ; $0337 : $e4, $6c, $d7
	dec a                                                  ; $033a : $3d
	sub e                                                  ; $033b : $93
	call po, $9c6d                                                  ; $033c : $e4, $6d, $9c
	ld l, h                                                  ; $033f : $6c
	call po, $936e                                                  ; $0340 : $e4, $6e, $93
	rst $08                                                  ; $0343 : $cf
	call po, $9d6e                                                  ; $0344 : $e4, $6e, $9d
	and $b3                                                  ; $0347 : $e6, $b3
	call po, $9d6e                                                  ; $0349 : $e4, $6e, $9d
	and $b3                                                  ; $034c : $e6, $b3
	rst $08                                                  ; $034e : $cf
	call po, $3b92                                                  ; $034f : $e4, $92, $3b
	adc a, a                                                  ; $0352 : $8f
	call po, $e692                                                  ; $0353 : $e4, $92, $e6
	ld (hl), e                                                  ; $0356 : $73
	call po, Call_03_0e95                                                  ; $0357 : $e4, $95, $0e
	ld (hl), e                                                  ; $035a : $73
	call po, $cd96                                                  ; $035b : $e4, $96, $cd
	and $b3                                                  ; $035e : $e6, $b3
	call po, Call_03_3f97                                                  ; $0360 : $e4, $97, $3f

Jump_03_0363:
	call po, Call_03_3197                                                  ; $0363 : $e4, $97, $31
	and $70                                                  ; $0366 : $e6, $70
	cp a                                                  ; $0368 : $bf

br_03_0369:
	call po, Call_03_3197                                                  ; $0369 : $e4, $97, $31
	and $73                                                  ; $036c : $e6, $73
	call po, Call_03_3197                                                  ; $036e : $e4, $97, $31
	and $73                                                  ; $0371 : $e6, $73
	rst $08                                                  ; $0373 : $cf
	call po, $d697                                                  ; $0374 : $e4, $97, $d6
	adc a, (hl)                                                  ; $0377 : $8e
	rra                                                  ; $0378 : $1f
	call po, $439e                                                  ; $0379 : $e4, $9e, $43
	adc a, l                                                  ; $037c : $8d
	ret p                                                  ; $037d : $f0

	rst $08                                                  ; $037e : $cf
	call po, $439e                                                  ; $037f : $e4, $9e, $43
	adc a, l                                                  ; $0382 : $8d
	and $e4                                                  ; $0383 : $e6, $e4
	call po, Call_03_0198                                                  ; $0385 : $e4, $98, $01
	sbc a, a                                                  ; $0388 : $9f
	call po, Call_03_0b98                                                  ; $0389 : $e4, $98, $0b
	dec d                                                  ; $038c : $15
	call po, Call_03_3e98                                                  ; $038d : $e4, $98, $3e
	xor a                                                  ; $0390 : $af
	call po, $e198                                                  ; $0391 : $e4, $98, $e1
	sub a                                                  ; $0394 : $97
	ld h, b                                                  ; $0395 : $60
	call po, $e198                                                  ; $0396 : $e4, $98, $e1
	sub a                                                  ; $0399 : $97
	ld h, b                                                  ; $039a : $60
	adc a, a                                                  ; $039b : $8f
	call po, $6d98                                                  ; $039c : $e4, $98, $6d
	sbc a, e                                                  ; $039f : $9b
	call po, $9198                                                  ; $03a0 : $e4, $98, $91
	sbc a, l                                                  ; $03a3 : $9d
	rst $08                                                  ; $03a4 : $cf
	call po, $9a98                                                  ; $03a5 : $e4, $98, $9a
	sub a                                                  ; $03a8 : $97
	ld l, (hl)                                                  ; $03a9 : $6e
	or e                                                  ; $03aa : $b3
	call po, $d098                                                  ; $03ab : $e4, $98, $d0
	add a, b                                                  ; $03ae : $80
	call po, $d398                                                  ; $03af : $e4, $98, $d3
	ex de, hl                                                  ; $03b2 : $eb
	and $e4                                                  ; $03b3 : $e6, $e4
	rrca                                                  ; $03b5 : $0f
	call po, $de98                                                  ; $03b6 : $e4, $98, $de
	add hl, de                                                  ; $03b9 : $19
	call po, $ea3b                                                  ; $03ba : $e4, $3b, $ea
	di                                                  ; $03bd : $f3
	ret pe                                                  ; $03be : $e8

	dec bc                                                  ; $03bf : $0b
	inc l                                                  ; $03c0 : $2c
	call po, $d598                                                  ; $03c1 : $e4, $98, $d5
	call po, $db98                                                  ; $03c4 : $e4, $98, $db
	jr nc, $7f                                                  ; $03c7 : $30, $7f

	call po, $8f99                                                  ; $03c9 : $e4, $99, $8f
	inc c                                                  ; $03cc : $0c
	call po, Call_03_3f9b                                                  ; $03cd : $e4, $9b, $3f
	call po, $e49b                                                  ; $03d0 : $e4, $9b, $e4
	sbc a, b                                                  ; $03d3 : $98
	rst $08                                                  ; $03d4 : $cf
	call po, $919b                                                  ; $03d5 : $e4, $9b, $91
	djnz br_03_0369                                                  ; $03d8 : $10, $8f
	call po, $919b                                                  ; $03da : $e4, $9b, $91
	add hl, de                                                  ; $03dd : $19
	call po, $b09b                                                  ; $03de : $e4, $9b, $b0
	ld l, b                                                  ; $03e1 : $68
	inc a                                                  ; $03e2 : $3c
	call po, $b99b                                                  ; $03e3 : $e4, $9b, $b9
	call po, Call_03_069c                                                  ; $03e6 : $e4, $9c, $06
	rra                                                  ; $03e9 : $1f
	call po, Call_03_199c                                                  ; $03ea : $e4, $9c, $19
	ret pe                                                  ; $03ed : $e8

	call po, Call_03_3c9c                                                  ; $03ee : $e4, $9c, $3c
	call po, $739c                                                  ; $03f1 : $e4, $9c, $73
	call po, $e4cf                                                  ; $03f4 : $e4, $cf, $e4
	sbc a, h                                                  ; $03f7 : $9c
	push hl                                                  ; $03f8 : $e5
	and $3f                                                  ; $03f9 : $e6, $3f
	call po, $e59c                                                  ; $03fb : $e4, $9c, $e5
	and $6d                                                  ; $03fe : $e6, $6d
	sbc a, a                                                  ; $0400 : $9f
	call po, $d79c                                                  ; $0401 : $e4, $9c, $d7
	jp pe, $9de4                                                  ; $0404 : $ea, $e4, $9d
	ld l, c                                                  ; $0407 : $69
	adc a, a                                                  ; $0408 : $8f
	call po, $9b9d                                                  ; $0409 : $e4, $9d, $9b
	call po, $9b9d                                                  ; $040c : $e4, $9d, $9b
	xor $2b                                                  ; $040f : $ee, $2b
	ld l, (hl)                                                  ; $0411 : $6e
	ld (hl), e                                                  ; $0412 : $73
	adc a, a                                                  ; $0413 : $8f
	call po, $689e                                                  ; $0414 : $e4, $9e, $68
	cpl                                                  ; $0417 : $2f
	call po, $689e                                                  ; $0418 : $e4, $9e, $68
	rst $18                                                  ; $041b : $df
	call po, $689e                                                  ; $041c : $e4, $9e, $68
	ret nc                                                  ; $041f : $d0

	ld l, b                                                  ; $0420 : $68
	sbc a, (hl)                                                  ; $0421 : $9e
	ld l, h                                                  ; $0422 : $6c
	call po, $689e                                                  ; $0423 : $e4, $9e, $68
	ret nc                                                  ; $0426 : $d0

	ld l, b                                                  ; $0427 : $68
	rst $08                                                  ; $0428 : $cf
	call po, $6b9e                                                  ; $0429 : $e4, $9e, $6b
	add a, (hl)                                                  ; $042c : $86
	adc a, (hl)                                                  ; $042d : $8e
	rra                                                  ; $042e : $1f
	call po, $6d9e                                                  ; $042f : $e4, $9e, $6d
	ld e, a                                                  ; $0432 : $5f
	call po, $6d9e                                                  ; $0433 : $e4, $9e, $6d
	ld e, d                                                  ; $0436 : $5a
	ld h, e                                                  ; $0437 : $63
	inc de                                                  ; $0438 : $13
	call po, $739e                                                  ; $0439 : $e4, $9e, $73
	call po, $739e                                                  ; $043c : $e4, $9e, $73
	call po, $df38                                                  ; $043f : $e4, $38, $df
	call po, $739e                                                  ; $0442 : $e4, $9e, $73
	rst $08                                                  ; $0445 : $cf
	call po, $769e                                                  ; $0446 : $e4, $9e, $76
	ccf                                                  ; $0449 : $3f
	call po, $769e                                                  ; $044a : $e4, $9e, $76
	adc a, (hl)                                                  ; $044d : $8e
	rra                                                  ; $044e : $1f
	call po, $839e                                                  ; $044f : $e4, $9e, $83
	cp a                                                  ; $0452 : $bf
	call po, $cfde                                                  ; $0453 : $e4, $de, $cf
	inc sp                                                  ; $0456 : $33
	rst $20                                                  ; $0457 : $e7
	dec sp                                                  ; $0458 : $3b
	inc a                                                  ; $0459 : $3c
	rst $18                                                  ; $045a : $df
	call po, $cfde                                                  ; $045b : $e4, $de, $cf
	dec sp                                                  ; $045e : $3b
	and $c5                                                  ; $045f : $e6, $c5
	call po, Call_03_3f9b                                                  ; $0461 : $e4, $9b, $3f
	call po, Call_03_15e6                                                  ; $0464 : $e4, $e6, $15
	call po, $7ee6                                                  ; $0467 : $e4, $e6, $7e
	inc bc                                                  ; $046a : $03
	cp e                                                  ; $046b : $bb
	jp pe, $e6e4                                                  ; $046c : $ea, $e4, $e6
	ld (hl), e                                                  ; $046f : $73
	call po, $e4e6                                                  ; $0470 : $e4, $e6, $e4
	call po, $cf63                                                  ; $0473 : $e4, $63, $cf
	call po, $b2e6                                                  ; $0476 : $e4, $e6, $b2
	dec sp                                                  ; $0479 : $3b
	call po, $c1e6                                                  ; $047a : $e4, $e6, $c1
	ld (hl), e                                                  ; $047d : $73
	call po, $c1e6                                                  ; $047e : $e4, $e6, $c1
	ld (hl), e                                                  ; $0481 : $73
	rst $08                                                  ; $0482 : $cf
	call po, $c6e6                                                  ; $0483 : $e4, $e6, $c6
	rra                                                  ; $0486 : $1f
	call po, $c7e6                                                  ; $0487 : $e4, $e6, $c7
	ld l, (hl)                                                  ; $048a : $6e
	ld c, a                                                  ; $048b : $4f
	call po, $c7e6                                                  ; $048c : $e4, $e6, $c7
	ld l, (hl)                                                  ; $048f : $6e
	ld c, h                                                  ; $0490 : $4c
	call po, $cce6                                                  ; $0491 : $e4, $e6, $cc
	sub a                                                  ; $0494 : $97
	ld l, b                                                  ; $0495 : $68
	ld l, a                                                  ; $0496 : $6f
	call po, $cde6                                                  ; $0497 : $e4, $e6, $cd
	call po, $d0e6                                                  ; $049a : $e4, $e6, $d0
	sub $98                                                  ; $049d : $d6, $98
	call po, $f3ea                                                  ; $049f : $e4, $ea, $f3
	ld b, b                                                  ; $04a2 : $40
	rst $20                                                  ; $04a3 : $e7
	sbc a, e                                                  ; $04a4 : $9b
	ld l, l                                                  ; $04a5 : $6d
	ccf                                                  ; $04a6 : $3f
	ld a, $40                                                  ; $04a7 : $3e, $40
	cp l                                                  ; $04a9 : $bd
	ld h, b                                                  ; $04aa : $60
	adc a, a                                                  ; $04ab : $8f
	call po, $d5ea                                                  ; $04ac : $e4, $ea, $d5
	sub a                                                  ; $04af : $97
	sbc a, (hl)                                                  ; $04b0 : $9e
	ld e, $af                                                  ; $04b1 : $1e, $af
	adc a, (hl)                                                  ; $04b3 : $8e
	pop bc                                                  ; $04b4 : $c1
	call pe, $e180                                                  ; $04b5 : $ec, $80, $e1
	inc c                                                  ; $04b8 : $0c
	ld c, $36                                                  ; $04b9 : $0e, $36
	add a, b                                                  ; $04bb : $80
	call po, $8032                                                  ; $04bc : $e4, $32, $80
	call po, $803c                                                  ; $04bf : $e4, $3c, $80
	xor c                                                  ; $04c2 : $a9
	ld (hl), e                                                  ; $04c3 : $73
	sbc a, b                                                  ; $04c4 : $98
	add a, b                                                  ; $04c5 : $80
	cp e                                                  ; $04c6 : $bb
	sbc a, (hl)                                                  ; $04c7 : $9e
	adc a, a                                                  ; $04c8 : $8f
	add a, b                                                  ; $04c9 : $80
	cp (hl)                                                  ; $04ca : $be
	ld (hl), b                                                  ; $04cb : $70
	ld a, $bf                                                  ; $04cc : $3e, $bf
	add a, b                                                  ; $04ce : $80
	sub $98                                                  ; $04cf : $d6, $98
	rlca                                                  ; $04d1 : $07
	add a, b                                                  ; $04d2 : $80
	sub $98                                                  ; $04d3 : $d6, $98
	rlca                                                  ; $04d5 : $07
	ld l, l                                                  ; $04d6 : $6d
	jp pe, $d680                                                  ; $04d7 : $ea, $80, $d6
	sbc a, b                                                  ; $04da : $98

Jump_03_04db:
	rst $08                                                  ; $04db : $cf
	add a, b                                                  ; $04dc : $80
	exx                                                  ; $04dd : $d9
	add a, b                                                  ; $04de : $80
	sbc a, $6b                                                  ; $04df : $de, $6b
	rlca                                                  ; $04e1 : $07
	add a, b                                                  ; $04e2 : $80
	sbc a, $6b                                                  ; $04e3 : $de, $6b
	rlca                                                  ; $04e5 : $07
	ld l, (hl)                                                  ; $04e6 : $6e
	or b                                                  ; $04e7 : $b0
	sub $98                                                  ; $04e8 : $d6, $98
	add a, b                                                  ; $04ea : $80
	sbc a, $6b                                                  ; $04eb : $de, $6b
	rlca                                                  ; $04ed : $07
	ld a, (hl)                                                  ; $04ee : $7e
	xor a                                                  ; $04ef : $af
	add a, b                                                  ; $04f0 : $80
	rst $20                                                  ; $04f1 : $e7
	rlca                                                  ; $04f2 : $07
	add a, b                                                  ; $04f3 : $80
	rst $20                                                  ; $04f4 : $e7
	ld l, (hl)                                                  ; $04f5 : $6e
	djnz -$20                                                  ; $04f6 : $10, $e0
	ld (hl), e                                                  ; $04f8 : $73
	add a, b                                                  ; $04f9 : $80
	rst $20                                                  ; $04fa : $e7
	ld l, (hl)                                                  ; $04fb : $6e
	djnz -$2a                                                  ; $04fc : $10, $d6
	sbc a, b                                                  ; $04fe : $98
	add a, b                                                  ; $04ff : $80
	rst $20                                                  ; $0500 : $e7
	jp pe, $eb80                                                  ; $0501 : $ea, $80, $eb
	dec bc                                                  ; $0504 : $0b
	dec a                                                  ; $0505 : $3d
	ld e, a                                                  ; $0506 : $5f
	add a, b                                                  ; $0507 : $80
	ex de, hl                                                  ; $0508 : $eb
	ld l, a                                                  ; $0509 : $6f
	add a, b                                                  ; $050a : $80
	ex de, hl                                                  ; $050b : $eb
	ld l, h                                                  ; $050c : $6c
	add a, e                                                  ; $050d : $83
	dec bc                                                  ; $050e : $0b
	add a, e                                                  ; $050f : $83
	dec bc                                                  ; $0510 : $0b
	inc a                                                  ; $0511 : $3c
	rst $18                                                  ; $0512 : $df
	add a, e                                                  ; $0513 : $83

br_03_0514:
	dec bc                                                  ; $0514 : $0b
	add a, $e1                                                  ; $0515 : $c6, $e1
	ld e, l                                                  ; $0517 : $5d
	ld ($e083), a                                                  ; $0518 : $32, $83, $e0
	or b                                                  ; $051b : $b0
	adc a, $30                                                  ; $051c : $ce, $30
	add a, e                                                  ; $051e : $83
	ret po                                                  ; $051f : $e0

	and $70                                                  ; $0520 : $e6, $70
	add a, e                                                  ; $0522 : $83
	ld ($3283), a                                                  ; $0523 : $32, $83, $32
	ld (hl), e                                                  ; $0526 : $73
	rst $08                                                  ; $0527 : $cf
	add a, e                                                  ; $0528 : $83
	pop hl                                                  ; $0529 : $e1
	dec c                                                  ; $052a : $0d
	ld l, (hl)                                                  ; $052b : $6e
	ld (hl), e                                                  ; $052c : $73
	ld a, (hl)                                                  ; $052d : $7e
	xor a                                                  ; $052e : $af
	add a, e                                                  ; $052f : $83
	ld e, e                                                  ; $0530 : $5b
	and $83                                                  ; $0531 : $e6, $83
	ld l, (hl)                                                  ; $0533 : $6e
	dec d                                                  ; $0534 : $15
	ret po                                                  ; $0535 : $e0

	sbc a, e                                                  ; $0536 : $9b
	add a, e                                                  ; $0537 : $83
	ld h, a                                                  ; $0538 : $67
	add a, e                                                  ; $0539 : $83
	ld h, a                                                  ; $053a : $67
	di                                                  ; $053b : $f3
	dec bc                                                  ; $053c : $0b
	call po, $b9cd                                                  ; $053d : $e4, $cd, $b9
	adc a, (hl)                                                  ; $0540 : $8e
	rra                                                  ; $0541 : $1f
	add a, e                                                  ; $0542 : $83
	ld l, l                                                  ; $0543 : $6d
	ld d, e                                                  ; $0544 : $53
	cp a                                                  ; $0545 : $bf
	add a, e                                                  ; $0546 : $83
	and b                                                  ; $0547 : $a0
	ld a, a                                                  ; $0548 : $7f
	add a, e                                                  ; $0549 : $83
	xor l                                                  ; $054a : $ad
	and $83                                                  ; $054b : $e6, $83
	add a, e                                                  ; $054d : $83
	cp (hl)                                                  ; $054e : $be
	ld (hl), e                                                  ; $054f : $73
	add a, e                                                  ; $0550 : $83
	cp (hl)                                                  ; $0551 : $be
	ld (hl), e                                                  ; $0552 : $73
	rst $08                                                  ; $0553 : $cf
	add a, e                                                  ; $0554 : $83
	push de                                                  ; $0555 : $d5
	dec sp                                                  ; $0556 : $3b
	ld (hl), b                                                  ; $0557 : $70
	add a, d                                                  ; $0558 : $82
	rst $08                                                  ; $0559 : $cf
	add a, e                                                  ; $055a : $83
	and $db                                                  ; $055b : $e6, $db
	rlca                                                  ; $055d : $07
	add a, e                                                  ; $055e : $83
	and $db                                                  ; $055f : $e6, $db
	rlca                                                  ; $0561 : $07
	rst $08                                                  ; $0562 : $cf
	add a, e                                                  ; $0563 : $83
	and $db                                                  ; $0564 : $e6, $db
	sbc a, b                                                  ; $0566 : $98
	add a, e                                                  ; $0567 : $83

br_03_0568:
	and $db                                                  ; $0568 : $e6, $db
	sbc a, b                                                  ; $056a : $98
	rst $08                                                  ; $056b : $cf
	add a, e                                                  ; $056c : $83
	rst $20                                                  ; $056d : $e7
	ld (bc), a                                                  ; $056e : $02
	rrca                                                  ; $056f : $0f
	add a, e                                                  ; $0570 : $83
	rst $20                                                  ; $0571 : $e7
	dec sp                                                  ; $0572 : $3b
	add a, e                                                  ; $0573 : $83
	ret pe                                                  ; $0574 : $e8

	di                                                  ; $0575 : $f3
	ld c, $4c                                                  ; $0576 : $0e, $4c
	out ($b2), a                                                  ; $0578 : $d3, $b2
	ld c, $4f                                                  ; $057a : $0e, $4f
	add a, e                                                  ; $057c : $83
	ret pe                                                  ; $057d : $e8

	di                                                  ; $057e : $f3
	inc hl                                                  ; $057f : $23
	ld (hl), l                                                  ; $0580 : $75
	ld l, a                                                  ; $0581 : $6f
	add a, e                                                  ; $0582 : $83
	ret pe                                                  ; $0583 : $e8

	di                                                  ; $0584 : $f3
	jr c, br_03_0568                                                  ; $0585 : $38, $e1

br_03_0587:
	ld (hl), b                                                  ; $0587 : $70
	add a, d                                                  ; $0588 : $82
	add a, e                                                  ; $0589 : $83
	ret pe                                                  ; $058a : $e8

	di                                                  ; $058b : $f3
	pop hl                                                  ; $058c : $e1
	and $68                                                  ; $058d : $e6, $68
	jr nc, br_03_0514                                                  ; $058f : $30, $83

	ret pe                                                  ; $0591 : $e8

	di                                                  ; $0592 : $f3
	jp po, $c33b                                                  ; $0593 : $e2, $3b, $c3
	jp pe, $e883                                                  ; $0596 : $ea, $83, $e8
	di                                                  ; $0599 : $f3
	call po, $963e                                                  ; $059a : $e4, $3e, $96
	add hl, de                                                  ; $059d : $19
	add a, e                                                  ; $059e : $83
	ret pe                                                  ; $059f : $e8

	di                                                  ; $05a0 : $f3
	sbc a, e                                                  ; $05a1 : $9b
	ld (hl), e                                                  ; $05a2 : $73
	ex af, af'                                                  ; $05a3 : $08
	rst $08                                                  ; $05a4 : $cf
	add a, e                                                  ; $05a5 : $83
	ret pe                                                  ; $05a6 : $e8

	di                                                  ; $05a7 : $f3
	jp pe, $bf30                                                  ; $05a8 : $ea, $30, $bf
	add a, e                                                  ; $05ab : $83
	ret pe                                                  ; $05ac : $e8

	di                                                  ; $05ad : $f3
	jp pe, $e39b                                                  ; $05ae : $ea, $9b, $e3
	di                                                  ; $05b1 : $f3
	ld d, $de                                                  ; $05b2 : $16, $de
	xor a                                                  ; $05b4 : $af
	add a, e                                                  ; $05b5 : $83
	ret pe                                                  ; $05b6 : $e8

	di                                                  ; $05b7 : $f3
	ex de, hl                                                  ; $05b8 : $eb
	jr nc, br_03_062b                                                  ; $05b9 : $30, $70

	add a, d                                                  ; $05bb : $82
	add a, e                                                  ; $05bc : $83
	ret pe                                                  ; $05bd : $e8

	exx                                                  ; $05be : $d9
	adc a, a                                                  ; $05bf : $8f
	add a, e                                                  ; $05c0 : $83
	ret pe                                                  ; $05c1 : $e8

	exx                                                  ; $05c2 : $d9
	adc a, a                                                  ; $05c3 : $8f
	inc c                                                  ; $05c4 : $0c
	add a, e                                                  ; $05c5 : $83
	jp (hl)                                                  ; $05c6 : $e9


	rst $18                                                  ; $05c7 : $df
	add a, (hl)                                                  ; $05c8 : $86
	ld c, $10                                                  ; $05c9 : $0e, $10

br_03_05cb:
	or b                                                  ; $05cb : $b0
	add a, (hl)                                                  ; $05cc : $86
	ld c, $10                                                  ; $05cd : $0e, $10
	or b                                                  ; $05cf : $b0
	di                                                  ; $05d0 : $f3
	ld b, b                                                  ; $05d1 : $40
	ld (hl), a                                                  ; $05d2 : $77
	rst $08                                                  ; $05d3 : $cf
	add a, (hl)                                                  ; $05d4 : $86
	djnz br_03_0587                                                  ; $05d5 : $10, $b0
	pop hl                                                  ; $05d7 : $e1
	and $0f                                                  ; $05d8 : $e6, $0f
	add a, (hl)                                                  ; $05da : $86
	ld e, $33                                                  ; $05db : $1e, $33
	ld a, h                                                  ; $05dd : $7c
	add a, (hl)                                                  ; $05de : $86
	pop hl                                                  ; $05df : $e1
	ld e, l                                                  ; $05e0 : $5d
	add a, (hl)                                                  ; $05e1 : $86
	ld (hl), e                                                  ; $05e2 : $73
	add a, (hl)                                                  ; $05e3 : $86
	ld (hl), e                                                  ; $05e4 : $73
	di                                                  ; $05e5 : $f3
	or (hl)                                                  ; $05e6 : $b6
	rst $20                                                  ; $05e7 : $e7
	dec sp                                                  ; $05e8 : $3b
	add a, (hl)                                                  ; $05e9 : $86
	in a, ($9e)                                                  ; $05ea : $db, $9e
	inc de                                                  ; $05ec : $13
	adc a, a                                                  ; $05ed : $8f
	add a, (hl)                                                  ; $05ee : $86
	in a, ($9e)                                                  ; $05ef : $db, $9e
	ld l, h                                                  ; $05f1 : $6c
	add a, (hl)                                                  ; $05f2 : $86
	jp (hl)                                                  ; $05f3 : $e9


	sbc a, b                                                  ; $05f4 : $98
	adc a, c                                                  ; $05f5 : $89
	adc a, c                                                  ; $05f6 : $89
	dec b                                                  ; $05f7 : $05
	adc a, c                                                  ; $05f8 : $89
	ret po                                                  ; $05f9 : $e0

	scf                                                  ; $05fa : $37
	adc a, c                                                  ; $05fb : $89
	ret po                                                  ; $05fc : $e0

	ld (hl), e                                                  ; $05fd : $73
	call po, $8908                                                  ; $05fe : $e4, $08, $89
	ld l, h                                                  ; $0601 : $6c
	ccf                                                  ; $0602 : $3f
	adc a, c                                                  ; $0603 : $89
	call po, $893f                                                  ; $0604 : $e4, $3f, $89
	adc a, (hl)                                                  ; $0607 : $8e
	call po, Call_03_1db6                                                  ; $0608 : $e4, $b6, $1d

Call_03_060b:
	ld l, c                                                  ; $060b : $69
	adc a, a                                                  ; $060c : $8f
	adc a, c                                                  ; $060d : $89
	adc a, (hl)                                                  ; $060e : $8e
	rst $20                                                  ; $060f : $e7
	ld l, (hl)                                                  ; $0610 : $6e
	halt                                                  ; $0611 : $76
	adc a, (hl)                                                  ; $0612 : $8e
	rra                                                  ; $0613 : $1f
	adc a, c                                                  ; $0614 : $89
	add a, e                                                  ; $0615 : $83
	adc a, c                                                  ; $0616 : $89
	add a, a                                                  ; $0617 : $87
	ld l, (hl)                                                  ; $0618 : $6e
	halt                                                  ; $0619 : $76
	adc a, (hl)                                                  ; $061a : $8e
	rra                                                  ; $061b : $1f
	adc a, c                                                  ; $061c : $89
	sbc a, b                                                  ; $061d : $98
	adc a, c                                                  ; $061e : $89
	cp a                                                  ; $061f : $bf
	adc a, c                                                  ; $0620 : $89
	cp l                                                  ; $0621 : $bd
	ld e, a                                                  ; $0622 : $5f
	jr nc, -$1c                                                  ; $0623 : $30, $e4

	dec sp                                                  ; $0625 : $3b
	ld h, c                                                  ; $0626 : $61
	rrca                                                  ; $0627 : $0f
	adc a, c                                                  ; $0628 : $89
	cp l                                                  ; $0629 : $bd
	ld e, a                                                  ; $062a : $5f

br_03_062b:
	ld ($390e), a                                                  ; $062b : $32, $0e, $39
	ret nc                                                  ; $062e : $d0

	adc a, c                                                  ; $062f : $89
	cp l                                                  ; $0630 : $bd
	ld e, a                                                  ; $0631 : $5f
	ld a, $39                                                  ; $0632 : $3e, $39
	or e                                                  ; $0634 : $b3
	rrca                                                  ; $0635 : $0f
	adc a, c                                                  ; $0636 : $89
	cp l                                                  ; $0637 : $bd
	ld e, a                                                  ; $0638 : $5f
	ld a, ($3f97)                                                  ; $0639 : $3a, $97, $3f
	adc a, c                                                  ; $063c : $89

br_03_063d:
	cp l                                                  ; $063d : $bd
	ld e, a                                                  ; $063e : $5f
	inc a                                                  ; $063f : $3c
	jr nc, br_03_05cb                                                  ; $0640 : $30, $89

	cp l                                                  ; $0642 : $bd
	ld d, e                                                  ; $0643 : $53
	inc c                                                  ; $0644 : $0c
	rst $18                                                  ; $0645 : $df
	adc a, c                                                  ; $0646 : $89
	cp l                                                  ; $0647 : $bd
	ld d, e                                                  ; $0648 : $53
	cp b                                                  ; $0649 : $b8
	adc a, c                                                  ; $064a : $89
	cp l                                                  ; $064b : $bd
	ld e, (hl)                                                  ; $064c : $5e
	add a, e                                                  ; $064d : $83
	call $bd89                                                  ; $064e : $cd, $89, $bd
	ld e, (hl)                                                  ; $0651 : $5e
	add a, e                                                  ; $0652 : $83
	call $8f3b                                                  ; $0653 : $cd, $3b, $8f
	adc a, c                                                  ; $0656 : $89
	cp (hl)                                                  ; $0657 : $be
	add a, b                                                  ; $0658 : $80
	jp pe, $be89                                                  ; $0659 : $ea, $89, $be
	add a, b                                                  ; $065c : $80
	jp pe, $cff0                                                  ; $065d : $ea, $f0, $cf
	adc a, c                                                  ; $0660 : $89
	jp $d689                                                  ; $0661 : $c3, $89, $d6


	inc de                                                  ; $0664 : $13
	adc a, c                                                  ; $0665 : $89
	and $8f                                                  ; $0666 : $e6, $8f
	adc a, c                                                  ; $0668 : $89
	and $8c                                                  ; $0669 : $e6, $8c
	adc a, c                                                  ; $066b : $89
	and $b6                                                  ; $066c : $e6, $b6
	push bc                                                  ; $066e : $c5
	adc a, c                                                  ; $066f : $89
	rst $20                                                  ; $0670 : $e7
	rrca                                                  ; $0671 : $0f
	adc a, c                                                  ; $0672 : $89
	rst $20                                                  ; $0673 : $e7
	ld a, $4e                                                  ; $0674 : $3e, $4e
	inc bc                                                  ; $0676 : $03
	cp a                                                  ; $0677 : $bf
	adc a, c                                                  ; $0678 : $89
	ret pe                                                  ; $0679 : $e8

	adc a, (hl)                                                  ; $067a : $8e
	ld h, c                                                  ; $067b : $61
	ld (hl), e                                                  ; $067c : $73
	dec bc                                                  ; $067d : $0b
	adc a, (hl)                                                  ; $067e : $8e
	ld h, c                                                  ; $067f : $61
	ld (hl), e                                                  ; $0680 : $73
	dec bc                                                  ; $0681 : $0b
	di                                                  ; $0682 : $f3
	xor c                                                  ; $0683 : $a9
	ret pe                                                  ; $0684 : $e8

	dec sp                                                  ; $0685 : $3b
	adc a, (hl)                                                  ; $0686 : $8e
	ld h, c                                                  ; $0687 : $61
	ld (hl), e                                                  ; $0688 : $73
	ld l, a                                                  ; $0689 : $6f
	adc a, (hl)                                                  ; $068a : $8e
	ld h, c                                                  ; $068b : $61
	ld (hl), e                                                  ; $068c : $73
	and $cf                                                  ; $068d : $e6, $cf
	adc a, (hl)                                                  ; $068f : $8e
	ld l, (hl)                                                  ; $0690 : $6e
	ld c, (hl)                                                  ; $0691 : $4e
	inc bc                                                  ; $0692 : $03
	cp a                                                  ; $0693 : $bf
	adc a, (hl)                                                  ; $0694 : $8e
	xor a                                                  ; $0695 : $af
	sub b                                                  ; $0696 : $90
	ld e, (hl)                                                  ; $0697 : $5e
	ld l, a                                                  ; $0698 : $6f
	sbc a, (hl)                                                  ; $0699 : $9e
	inc bc                                                  ; $069a : $03
	halt                                                  ; $069b : $76

Call_03_069c:
	adc a, $3f                                                  ; $069c : $ce, $3f
	sbc a, (hl)                                                  ; $069e : $9e
	ld c, $23                                                  ; $069f : $0e, $23
	dec e                                                  ; $06a1 : $1d
	rst $08                                                  ; $06a2 : $cf
	sub c                                                  ; $06a3 : $91
	ld e, $6a                                                  ; $06a4 : $1e, $6a
	jp pe, Jump_03_1e91                                                  ; $06a6 : $ea, $91, $1e
	ld l, e                                                  ; $06a9 : $6b
	sub c                                                  ; $06aa : $91
	ld e, $6b                                                  ; $06ab : $1e, $6b
	rst $08                                                  ; $06ad : $cf
	sub c                                                  ; $06ae : $91
	jr nc, br_03_063d                                                  ; $06af : $30, $8c

	sub c                                                  ; $06b1 : $91
	ret nc                                                  ; $06b2 : $d0

	pop hl                                                  ; $06b3 : $e1
	sbc a, b                                                  ; $06b4 : $98
	sub c                                                  ; $06b5 : $91
	ret nc                                                  ; $06b6 : $d0

	rst $20                                                  ; $06b7 : $e7
	ccf                                                  ; $06b8 : $3f
	sub d                                                  ; $06b9 : $92
	ld h, e                                                  ; $06ba : $63
	sub h                                                  ; $06bb : $94
	di                                                  ; $06bc : $f3
	ret pe                                                  ; $06bd : $e8

	ld d, (hl)                                                  ; $06be : $56
	dec d                                                  ; $06bf : $15
	sub h                                                  ; $06c0 : $94

br_03_06c1:
	ld c, a                                                  ; $06c1 : $4f
	sub h                                                  ; $06c2 : $94
	ld c, a                                                  ; $06c3 : $4f
	jr nc, -$71                                                  ; $06c4 : $30, $8f

	sub h                                                  ; $06c6 : $94
	ld b, (hl)                                                  ; $06c7 : $46
	inc de                                                  ; $06c8 : $13
	sub h                                                  ; $06c9 : $94
	ld b, (hl)                                                  ; $06ca : $46
	ld d, $07                                                  ; $06cb : $16, $07
	sub h                                                  ; $06cd : $94
	out ($8f), a                                                  ; $06ce : $d3, $8f
	sbc a, (hl)                                                  ; $06d0 : $9e
	rla                                                  ; $06d1 : $17
	dec a                                                  ; $06d2 : $3d
	ld e, c                                                  ; $06d3 : $59
	cp d                                                  ; $06d4 : $ba
	ccf                                                  ; $06d5 : $3f
	sub l                                                  ; $06d6 : $95
	ld l, c                                                  ; $06d7 : $69
	sbc a, (hl)                                                  ; $06d8 : $9e
	scf                                                  ; $06d9 : $37
	dec b                                                  ; $06da : $05
	sbc a, (hl)                                                  ; $06db : $9e
	ld b, b                                                  ; $06dc : $40
	sub a                                                  ; $06dd : $97
	cpl                                                  ; $06de : $2f
	sub a                                                  ; $06df : $97
	inc hl                                                  ; $06e0 : $23
	call $4097                                                  ; $06e1 : $cd, $97, $40
	dec e                                                  ; $06e4 : $1d
	sbc a, e                                                  ; $06e5 : $9b
	jp pe, $ea97                                                  ; $06e6 : $ea, $97, $ea
	call po, Call_03_0fa6                                                  ; $06e9 : $e4, $a6, $0f
	sub a                                                  ; $06ec : $97
	jp pe, $a6e4                                                  ; $06ed : $ea, $e4, $a6
	rra                                                  ; $06f0 : $1f
	sub a                                                  ; $06f1 : $97
	jp pe, $a6e4                                                  ; $06f2 : $ea, $e4, $a6
	inc e                                                  ; $06f5 : $1c
	sbc a, b                                                  ; $06f6 : $98
	di                                                  ; $06f7 : $f3
	ret pe                                                  ; $06f8 : $e8

	ld d, b                                                  ; $06f9 : $50
	rst $18                                                  ; $06fa : $df
	sbc a, b                                                  ; $06fb : $98
	di                                                  ; $06fc : $f3

Call_03_06fd:
	ret pe                                                  ; $06fd : $e8

	ld d, (hl)                                                  ; $06fe : $56
	dec d                                                  ; $06ff : $15
	sbc a, b                                                  ; $0700 : $98
	inc de                                                  ; $0701 : $13
	sbc a, b                                                  ; $0702 : $98
	ccf                                                  ; $0703 : $3f
	dec (hl)                                                  ; $0704 : $35
	and $82                                                  ; $0705 : $e6, $82
	or e                                                  ; $0707 : $b3
	cpl                                                  ; $0708 : $2f
	sbc a, b                                                  ; $0709 : $98
	ccf                                                  ; $070a : $3f
	dec a                                                  ; $070b : $3d
	ld e, c                                                  ; $070c : $59
	and $c0                                                  ; $070d : $e6, $c0
	add a, d                                                  ; $070f : $82
	sbc a, b                                                  ; $0710 : $98
	ld a, $e1                                                  ; $0711 : $3e, $e1
	scf                                                  ; $0713 : $37
	ld (hl), e                                                  ; $0714 : $73
	cpl                                                  ; $0715 : $2f
	sbc a, b                                                  ; $0716 : $98
	ld a, (hl)                                                  ; $0717 : $7e
	xor a                                                  ; $0718 : $af
	sbc a, b                                                  ; $0719 : $98
	ret nc                                                  ; $071a : $d0

	or (hl)                                                  ; $071b : $b6
	sbc a, a                                                  ; $071c : $9f
	sbc a, b                                                  ; $071d : $98
	jp pe, $9ae9                                                  ; $071e : $ea, $e9, $9a
	ld c, $5e                                                  ; $0721 : $0e, $5e
	ld h, e                                                  ; $0723 : $63
	sbc a, d                                                  ; $0724 : $9a
	jr c, br_03_06c1                                                  ; $0725 : $38, $9a

	jr c, br_03_075b                                                  ; $0727 : $38, $32

	sbc a, d                                                  ; $0729 : $9a
	xor c                                                  ; $072a : $a9
	add a, e                                                  ; $072b : $83
	adc a, l                                                  ; $072c : $8d
	ret p                                                  ; $072d : $f0

	rst $08                                                  ; $072e : $cf
	sbc a, d                                                  ; $072f : $9a
	xor c                                                  ; $0730 : $a9
	add a, $d3                                                  ; $0731 : $c6, $d3
	sbc a, e                                                  ; $0733 : $9b
	ex af, af'                                                  ; $0734 : $08
	sbc a, e                                                  ; $0735 : $9b
	ex af, af'                                                  ; $0736 : $08
	pop hl                                                  ; $0737 : $e1
	ccf                                                  ; $0738 : $3f
	sbc a, e                                                  ; $0739 : $9b
	ex af, af'                                                  ; $073a : $08
	pop hl                                                  ; $073b : $e1
	inc a                                                  ; $073c : $3c

Call_03_073d:
	sbc a, e                                                  ; $073d : $9b
	ret po                                                  ; $073e : $e0

	ld l, l                                                  ; $073f : $6d
	sbc a, e                                                  ; $0740 : $9b
	dec d                                                  ; $0741 : $15
	inc a                                                  ; $0742 : $3c
	in a, ($0f)                                                  ; $0743 : $db, $0f
	sbc a, e                                                  ; $0745 : $9b
	ld a, $19                                                  ; $0746 : $3e, $19
	adc a, a                                                  ; $0748 : $8f
	sbc a, e                                                  ; $0749 : $9b
	ld a, $19                                                  ; $074a : $3e, $19
	adc a, a                                                  ; $074c : $8f
	dec a                                                  ; $074d : $3d
	or b                                                  ; $074e : $b0
	ld h, a                                                  ; $074f : $67
	sbc a, e                                                  ; $0750 : $9b
	pop hl                                                  ; $0751 : $e1
	ex af, af'                                                  ; $0752 : $08
	sbc a, e                                                  ; $0753 : $9b
	pop hl                                                  ; $0754 : $e1
	ex af, af'                                                  ; $0755 : $08
	ld h, c                                                  ; $0756 : $61
	sbc a, e                                                  ; $0757 : $9b
	pop hl                                                  ; $0758 : $e1
	ex af, af'                                                  ; $0759 : $08
	ld l, h                                                  ; $075a : $6c

br_03_075b:
	call po, $e19b                                                  ; $075b : $e4, $9b, $e1

br_03_075e:
	ex af, af'                                                  ; $075e : $08
	ld l, h                                                  ; $075f : $6c
	call po, $9bcf                                                  ; $0760 : $e4, $cf, $9b
	pop hl                                                  ; $0763 : $e1
	ex af, af'                                                  ; $0764 : $08
	ld l, (hl)                                                  ; $0765 : $6e
	or b                                                  ; $0766 : $b0
	sub $98                                                  ; $0767 : $d6, $98
	sbc a, e                                                  ; $0769 : $9b
	ld l, (hl)                                                  ; $076a : $6e
	ld d, $80                                                  ; $076b : $16, $80
	ld a, a                                                  ; $076d : $7f
	sbc a, e                                                  ; $076e : $9b
	ld l, (hl)                                                  ; $076f : $6e
	ld d, $80                                                  ; $0770 : $16, $80
	out ($9b), a                                                  ; $0772 : $d3, $9b
	ex (sp), hl                                                  ; $0774 : $e3
	add a, e                                                  ; $0775 : $83
	jp pe, $a59b                                                  ; $0776 : $ea, $9b, $a5
	ex af, af'                                                  ; $0779 : $08
	di                                                  ; $077a : $f3
	ex af, af'                                                  ; $077b : $08
	add a, (hl)                                                  ; $077c : $86
	ccf                                                  ; $077d : $3f
	inc c                                                  ; $077e : $0c

br_03_077f:
	sbc a, h                                                  ; $077f : $9c
	ld c, $30                                                  ; $0780 : $0e, $30
	sbc a, h                                                  ; $0782 : $9c
	djnz -$41                                                  ; $0783 : $10, $bf
	sbc a, h                                                  ; $0785 : $9c
	ld a, c                                                  ; $0786 : $79
	sbc a, h                                                  ; $0787 : $9c
	call po, $6c9c                                                  ; $0788 : $e4, $9c, $6c
	sbc a, l                                                  ; $078b : $9d
	ld d, e                                                  ; $078c : $53
	cp h                                                  ; $078d : $bc
	sbc a, l                                                  ; $078e : $9d
	ret nc                                                  ; $078f : $d0

	ret pe                                                  ; $0790 : $e8

	rrca                                                  ; $0791 : $0f
	sbc a, (hl)                                                  ; $0792 : $9e
	ld l, e                                                  ; $0793 : $6b
	sbc a, (hl)                                                  ; $0794 : $9e
	ld l, l                                                  ; $0795 : $6d
	sbc a, (hl)                                                  ; $0796 : $9e
	ld l, l                                                  ; $0797 : $6d
	dec sp                                                  ; $0798 : $3b
	sbc a, (hl)                                                  ; $0799 : $9e
	ld l, l                                                  ; $079a : $6d
	dec sp                                                  ; $079b : $3b
	di                                                  ; $079c : $f3
	jr nc, br_03_075e                                                  ; $079d : $30, $bf

	sbc a, (hl)                                                  ; $079f : $9e
	ld l, l                                                  ; $07a0 : $6d
	ld (hl), b                                                  ; $07a1 : $70
	ret pe                                                  ; $07a2 : $e8

	sbc a, (hl)                                                  ; $07a3 : $9e
	ld l, l                                                  ; $07a4 : $6d
	rst $08                                                  ; $07a5 : $cf
	sbc a, (hl)                                                  ; $07a6 : $9e
	ld l, l                                                  ; $07a7 : $6d
	add a, $23                                                  ; $07a8 : $c6, $23
	sbc a, (hl)                                                  ; $07aa : $9e
	ld (hl), e                                                  ; $07ab : $73
	cp a                                                  ; $07ac : $bf
	sbc a, (hl)                                                  ; $07ad : $9e
	ld (hl), e                                                  ; $07ae : $73
	cp l                                                  ; $07af : $bd
	ld e, e                                                  ; $07b0 : $5b
	sbc a, (hl)                                                  ; $07b1 : $9e
	adc a, b                                                  ; $07b2 : $88
	sbc a, (hl)                                                  ; $07b3 : $9e
	add a, e                                                  ; $07b4 : $83
	adc a, h                                                  ; $07b5 : $8c
	sbc a, (hl)                                                  ; $07b6 : $9e
	adc a, b                                                  ; $07b7 : $88
	sbc a, (hl)                                                  ; $07b8 : $9e
	sub (hl)                                                  ; $07b9 : $96
	jr nz, br_03_077f                                                  ; $07ba : $20, $c3

	sbc a, (hl)                                                  ; $07bc : $9e
	sub (hl)                                                  ; $07bd : $96
	inc hl                                                  ; $07be : $23
	sbc a, (hl)                                                  ; $07bf : $9e
	sbc a, (hl)                                                  ; $07c0 : $9e
	xor (hl)                                                  ; $07c1 : $ae
	inc de                                                  ; $07c2 : $13
	adc a, a                                                  ; $07c3 : $8f
	sbc a, (hl)                                                  ; $07c4 : $9e
	xor h                                                  ; $07c5 : $ac
	out ($bf), a                                                  ; $07c6 : $d3, $bf
	sbc a, (hl)                                                  ; $07c8 : $9e
	cp c                                                  ; $07c9 : $b9
	add a, e                                                  ; $07ca : $83
	xor a                                                  ; $07cb : $af
	xor (hl)                                                  ; $07cc : $ae
	adc a, $4e                                                  ; $07cd : $ce, $4e
	rst $08                                                  ; $07cf : $cf
	and b                                                  ; $07d0 : $a0
	ld d, $46                                                  ; $07d1 : $16, $46
	rra                                                  ; $07d3 : $1f
	ld sp, $cd90                                                  ; $07d4 : $31, $90, $cd
	and b                                                  ; $07d7 : $a0
	ld d, $46                                                  ; $07d8 : $16, $46
	rra                                                  ; $07da : $1f
	ld sp, $cdb3                                                  ; $07db : $31, $b3, $cd
	and b                                                  ; $07de : $a0
	ld d, $46                                                  ; $07df : $16, $46
	rra                                                  ; $07e1 : $1f
	add hl, sp                                                  ; $07e2 : $39
	inc de                                                  ; $07e3 : $13
	ex af, af'                                                  ; $07e4 : $08
	and b                                                  ; $07e5 : $a0
	ld l, b                                                  ; $07e6 : $68

Call_03_07e7:
Jump_03_07e7:
	ccf                                                  ; $07e7 : $3f
	and b                                                  ; $07e8 : $a0
	ld l, b                                                  ; $07e9 : $68
	out ($2f), a                                                  ; $07ea : $d3, $2f
	and b                                                  ; $07ec : $a0
	ex (sp), hl                                                  ; $07ed : $e3
	ld l, h                                                  ; $07ee : $6c
	ret nc                                                  ; $07ef : $d0

Call_03_07f0:
	adc a, a                                                  ; $07f0 : $8f

br_03_07f1:
	and b                                                  ; $07f1 : $a0
	ld (hl), b                                                  ; $07f2 : $70
	inc de                                                  ; $07f3 : $13
	and b                                                  ; $07f4 : $a0
	ld (hl), e                                                  ; $07f5 : $73
	sbc a, b                                                  ; $07f6 : $98
	exx                                                  ; $07f7 : $d9

br_03_07f8:
	ld a, c                                                  ; $07f8 : $79
	pop hl                                                  ; $07f9 : $e1
	ld l, h                                                  ; $07fa : $6c
	call c, $7ea0                                                  ; $07fb : $dc, $a0, $7e
	ld b, e                                                  ; $07fe : $43
	cp h                                                  ; $07ff : $bc
	exx                                                  ; $0800 : $d9
	adc a, a                                                  ; $0801 : $8f
	and b                                                  ; $0802 : $a0
	call po, $73a5                                                  ; $0803 : $e4, $a5, $73
	rst $18                                                  ; $0806 : $df
	and b                                                  ; $0807 : $a0
	adc a, a                                                  ; $0808 : $8f
	and b                                                  ; $0809 : $a0
	adc a, a                                                  ; $080a : $8f
	jr nc, br_03_07f1                                                  ; $080b : $30, $e4

	dec sp                                                  ; $080d : $3b
	ld h, c                                                  ; $080e : $61
	ex af, af'                                                  ; $080f : $08
	and b                                                  ; $0810 : $a0
	adc a, a                                                  ; $0811 : $8f
	jr nc, br_03_07f8                                                  ; $0812 : $30, $e4

	dec sp                                                  ; $0814 : $3b
	ld h, c                                                  ; $0815 : $61
	ex af, af'                                                  ; $0816 : $08
	di                                                  ; $0817 : $f3
	pop hl                                                  ; $0818 : $e1
	ld c, $43                                                  ; $0819 : $0e, $43
	rst $08                                                  ; $081b : $cf
	and b                                                  ; $081c : $a0
	add a, b                                                  ; $081d : $80
	call po, $a00f                                                  ; $081e : $e4, $0f, $a0
	add a, b                                                  ; $0821 : $80
	call po, Call_03_310f                                                  ; $0822 : $e4, $0f, $31
	ex af, af'                                                  ; $0825 : $08
	rlca                                                  ; $0826 : $07
	and b                                                  ; $0827 : $a0
	adc a, l                                                  ; $0828 : $8d
	ld d, e                                                  ; $0829 : $53
	cp a                                                  ; $082a : $bf
	and b                                                  ; $082b : $a0
	and e                                                  ; $082c : $a3
	cp a                                                  ; $082d : $bf
	and b                                                  ; $082e : $a0
	or b                                                  ; $082f : $b0
	pop hl                                                  ; $0830 : $e1
	and $0e                                                  ; $0831 : $e6, $0e
	xor a                                                  ; $0833 : $af
	and b                                                  ; $0834 : $a0
	or b                                                  ; $0835 : $b0
	ld (hl), a                                                  ; $0836 : $77

Call_03_0837:
	scf                                                  ; $0837 : $37
	and b                                                  ; $0838 : $a0
	or b                                                  ; $0839 : $b0
	call po, $6e31                                                  ; $083a : $e4, $31, $6e
	ld l, (hl)                                                  ; $083d : $6e
	ld c, a                                                  ; $083e : $4f
	and b                                                  ; $083f : $a0
	or b                                                  ; $0840 : $b0
	add a, $d3                                                  ; $0841 : $c6, $d3
	and b                                                  ; $0843 : $a0
	or b                                                  ; $0844 : $b0
	add a, $d3                                                  ; $0845 : $c6, $d3
	rst $08                                                  ; $0847 : $cf
	and b                                                  ; $0848 : $a0
	or e                                                  ; $0849 : $b3
	adc a, l                                                  ; $084a : $8d
	rst $08                                                  ; $084b : $cf
	and b                                                  ; $084c : $a0
	or (hl)                                                  ; $084d : $b6
	rst $08                                                  ; $084e : $cf
	and b                                                  ; $084f : $a0
	cp (hl)                                                  ; $0850 : $be
	ccf                                                  ; $0851 : $3f
	and b                                                  ; $0852 : $a0
	cp (hl)                                                  ; $0853 : $be
	ccf                                                  ; $0854 : $3f
	ld a, ($1370)                                                  ; $0855 : $3a, $70, $13
	and b                                                  ; $0858 : $a0
	or a                                                  ; $0859 : $b7
	ld h, b                                                  ; $085a : $60
	call po, $df38                                                  ; $085b : $e4, $38, $df
	and b                                                  ; $085e : $a0
	or a                                                  ; $085f : $b7
	ld h, b                                                  ; $0860 : $60
	call po, $d038                                                  ; $0861 : $e4, $38, $d0
	cp (hl)                                                  ; $0864 : $be
	xor a                                                  ; $0865 : $af
	and b                                                  ; $0866 : $a0

Call_03_0867:
	cp h                                                  ; $0867 : $bc
	ld (hl), e                                                  ; $0868 : $73
	jp pe, $bda0                                                  ; $0869 : $ea, $a0, $bd
	and b                                                  ; $086c : $a0
	cp l                                                  ; $086d : $bd
	ld d, (hl)                                                  ; $086e : $56
	ex af, af'                                                  ; $086f : $08
	rst $08                                                  ; $0870 : $cf
	and b                                                  ; $0871 : $a0
	cp l                                                  ; $0872 : $bd
	ld h, c                                                  ; $0873 : $61
	ld (hl), e                                                  ; $0874 : $73
	and b                                                  ; $0875 : $a0
	cp l                                                  ; $0876 : $bd
	ld h, c                                                  ; $0877 : $61
	ld (hl), e                                                  ; $0878 : $73
	rst $08                                                  ; $0879 : $cf
	and b                                                  ; $087a : $a0
	cp l                                                  ; $087b : $bd
	rst $08                                                  ; $087c : $cf
	and b                                                  ; $087d : $a0
	cp l                                                  ; $087e : $bd
	jp pe, $cca0                                                  ; $087f : $ea, $a0, $cc
	and b                                                  ; $0882 : $a0
	call z, $130e                                                  ; $0883 : $cc, $0e, $13
	and b                                                  ; $0886 : $a0
	call z, $a032                                                  ; $0887 : $cc, $32, $a0
	call z, $a03c                                                  ; $088a : $cc, $3c, $a0
	call z, $e168                                                  ; $088d : $cc, $68, $e1
	and b                                                  ; $0890 : $a0
	call z, $739e                                                  ; $0891 : $cc, $9e, $73
	cp a                                                  ; $0894 : $bf
	and b                                                  ; $0895 : $a0

Jump_03_0896:
	call $cda0                                                  ; $0896 : $cd, $a0, $cd
	rrca                                                  ; $0899 : $0f
	and b                                                  ; $089a : $a0
	call $6b3e                                                  ; $089b : $cd, $3e, $6b
	and b                                                  ; $089e : $a0
	ret nc                                                  ; $089f : $d0

	pop hl                                                  ; $08a0 : $e1
	sbc a, b                                                  ; $08a1 : $98
	ld h, b                                                  ; $08a2 : $60
	and b                                                  ; $08a3 : $a0
	out ($8d), a                                                  ; $08a4 : $d3, $8d
	rst $08                                                  ; $08a6 : $cf
	and b                                                  ; $08a7 : $a0
	push de                                                  ; $08a8 : $d5
	and b                                                  ; $08a9 : $a0
	in a, ($61)                                                  ; $08aa : $db, $61
	ex (sp), hl                                                  ; $08ac : $e3
	and b                                                  ; $08ad : $a0
	in a, ($69)                                                  ; $08ae : $db, $69
	rst $18                                                  ; $08b0 : $df
	and b                                                  ; $08b1 : $a0
	.db $dd                                                  ; $08b2 : $dd
	dec sp                                                  ; $08b3 : $3b
	adc a, a                                                  ; $08b4 : $8f
	and b                                                  ; $08b5 : $a0
	and $7f                                                  ; $08b6 : $e6, $7f
	and b                                                  ; $08b8 : $a0
	and $7f                                                  ; $08b9 : $e6, $7f
	dec sp                                                  ; $08bb : $3b
	ld a, $73                                                  ; $08bc : $3e, $73
	or e                                                  ; $08be : $b3
	and e                                                  ; $08bf : $a3
	ld bc, $a33f                                                  ; $08c0 : $01, $3f, $a3
	ld bc, $a35f                                                  ; $08c3 : $01, $5f, $a3
	ex af, af'                                                  ; $08c6 : $08
	and $df                                                  ; $08c7 : $e6, $df
	and e                                                  ; $08c9 : $a3
	dec bc                                                  ; $08ca : $0b
	and e                                                  ; $08cb : $a3
	dec bc                                                  ; $08cc : $0b
	ld a, a                                                  ; $08cd : $7f
	and e                                                  ; $08ce : $a3
	dec bc                                                  ; $08cf : $0b
	ld a, a                                                  ; $08d0 : $7f
	dec (hl)                                                  ; $08d1 : $35
	dec bc                                                  ; $08d2 : $0b
	ret po                                                  ; $08d3 : $e0

	sbc a, e                                                  ; $08d4 : $9b
	and e                                                  ; $08d5 : $a3
	inc c                                                  ; $08d6 : $0c
	ex af, af'                                                  ; $08d7 : $08
	rst $18                                                  ; $08d8 : $df
	and e                                                  ; $08d9 : $a3
	ld a, (hl)                                                  ; $08da : $7e

Jump_03_08db:
	halt                                                  ; $08db : $76
	rst $08                                                  ; $08dc : $cf
	and e                                                  ; $08dd : $a3
	add a, (hl)                                                  ; $08de : $86
	adc a, h                                                  ; $08df : $8c
	and $70                                                  ; $08e0 : $e6, $70
	and e                                                  ; $08e2 : $a3

br_03_08e3:
	adc a, b                                                  ; $08e3 : $88
	ret p                                                  ; $08e4 : $f0

	rst $08                                                  ; $08e5 : $cf
	and e                                                  ; $08e6 : $a3
	adc a, b                                                  ; $08e7 : $88
	adc a, $a7                                                  ; $08e8 : $ce, $a7
	rst $20                                                  ; $08ea : $e7
	ex af, af'                                                  ; $08eb : $08
	ld h, b                                                  ; $08ec : $60
	and e                                                  ; $08ed : $a3
	adc a, b                                                  ; $08ee : $88
	jp pe, $8da3                                                  ; $08ef : $ea, $a3, $8d
	ld c, $19                                                  ; $08f2 : $0e, $19
	adc a, a                                                  ; $08f4 : $8f
	and e                                                  ; $08f5 : $a3
	sbc a, d                                                  ; $08f6 : $9a
	ld (hl), e                                                  ; $08f7 : $73
	ret p                                                  ; $08f8 : $f0

	rst $08                                                  ; $08f9 : $cf
	and e                                                  ; $08fa : $a3
	sbc a, d                                                  ; $08fb : $9a
	ld (hl), e                                                  ; $08fc : $73
	rst $08                                                  ; $08fd : $cf
	and e                                                  ; $08fe : $a3
	cp a                                                  ; $08ff : $bf
	and e                                                  ; $0900 : $a3
	or c                                                  ; $0901 : $b1
	jr c, br_03_08e3                                                  ; $0902 : $38, $df

	and e                                                  ; $0904 : $a3
	or c                                                  ; $0905 : $b1
	and $cc                                                  ; $0906 : $e6, $cc
	ld l, c                                                  ; $0908 : $69
	adc a, a                                                  ; $0909 : $8f
	and e                                                  ; $090a : $a3
	or h                                                  ; $090b : $b4
	ld sp, $a3df                                                  ; $090c : $31, $df, $a3
	or (hl)                                                  ; $090f : $b6
	sub d                                                  ; $0910 : $92
	and e                                                  ; $0911 : $a3
	or (hl)                                                  ; $0912 : $b6
	sub d                                                  ; $0913 : $92
	ld h, c                                                  ; $0914 : $61
	and e                                                  ; $0915 : $a3
	or (hl)                                                  ; $0916 : $b6
	pop bc                                                  ; $0917 : $c1
	sbc a, d                                                  ; $0918 : $9a
	ccf                                                  ; $0919 : $3f
	and e                                                  ; $091a : $a3
	cp (hl)                                                  ; $091b : $be
	ld b, b                                                  ; $091c : $40
	ld c, e                                                  ; $091d : $4b
	sbc a, h                                                  ; $091e : $9c
	rst $18                                                  ; $091f : $df
	and e                                                  ; $0920 : $a3
	cp (hl)                                                  ; $0921 : $be
	ld b, b                                                  ; $0922 : $40
	add a, e                                                  ; $0923 : $83
	adc a, l                                                  ; $0924 : $8d
	and e                                                  ; $0925 : $a3
	cp (hl)                                                  ; $0926 : $be
	ld b, e                                                  ; $0927 : $43
	ld c, $07                                                  ; $0928 : $0e, $07
	ccf                                                  ; $092a : $3f
	and e                                                  ; $092b : $a3
	cp d                                                  ; $092c : $ba
	jr c, $26                                                  ; $092d : $38, $26

	ld e, $67                                                  ; $092f : $1e, $67
	dec bc                                                  ; $0931 : $0b
	and e                                                  ; $0932 : $a3
	cp e                                                  ; $0933 : $bb
	jp pe, $bca3                                                  ; $0934 : $ea, $a3, $bc
	ld sp, $d6e6                                                  ; $0937 : $31, $e6, $d6
	sbc a, b                                                  ; $093a : $98

Call_03_093b:
	and e                                                  ; $093b : $a3
	cp h                                                  ; $093c : $bc
	ld h, b                                                  ; $093d : $60
	adc a, a                                                  ; $093e : $8f
	and e                                                  ; $093f : $a3
	cp h                                                  ; $0940 : $bc
	ld h, b                                                  ; $0941 : $60
	adc a, a                                                  ; $0942 : $8f
	ld a, $1e                                                  ; $0943 : $3e, $1e
	ld h, a                                                  ; $0945 : $67
	ld c, a                                                  ; $0946 : $4f
	and e                                                  ; $0947 : $a3
	cp h                                                  ; $0948 : $bc
	sbc a, b                                                  ; $0949 : $98
	ret p                                                  ; $094a : $f0

	rst $08                                                  ; $094b : $cf
	and e                                                  ; $094c : $a3
	cp h                                                  ; $094d : $bc
	sbc a, b                                                  ; $094e : $98
	rst $08                                                  ; $094f : $cf
	and e                                                  ; $0950 : $a3
	cp (hl)                                                  ; $0951 : $be
	ld l, a                                                  ; $0952 : $6f
	and e                                                  ; $0953 : $a3
	call $6261                                                  ; $0954 : $cd, $61, $62
	inc a                                                  ; $0957 : $3c
	and e                                                  ; $0958 : $a3

Jump_03_0959:
	rst $18                                                  ; $0959 : $df
	and e                                                  ; $095a : $a3
	in a, ($97)                                                  ; $095b : $db, $97
	ld a, $6e                                                  ; $095d : $3e, $6e
	ld c, a                                                  ; $095f : $4f
	and l                                                  ; $0960 : $a5
	dec bc                                                  ; $0961 : $0b
	add hl, bc                                                  ; $0962 : $09
	ld e, h                                                  ; $0963 : $5c
	and l                                                  ; $0964 : $a5
	dec bc                                                  ; $0965 : $0b
	sbc a, h                                                  ; $0966 : $9c
	di                                                  ; $0967 : $f3
	halt                                                  ; $0968 : $76
	pop hl                                                  ; $0969 : $e1
	ld e, l                                                  ; $096a : $5d
	ld e, c                                                  ; $096b : $59
	and $c3                                                  ; $096c : $e6, $c3
	and l                                                  ; $096e : $a5
	ld h, a                                                  ; $096f : $67
	ld (bc), a                                                  ; $0970 : $02
	scf                                                  ; $0971 : $37
	and l                                                  ; $0972 : $a5
	ld h, b                                                  ; $0973 : $60
	and l                                                  ; $0974 : $a5
	ld h, a                                                  ; $0975 : $67
	ld l, d                                                  ; $0976 : $6a
	and l                                                  ; $0977 : $a5
	ld h, a                                                  ; $0978 : $67
	ld l, d                                                  ; $0979 : $6a
	and (hl)                                                  ; $097a : $a6
	and l                                                  ; $097b : $a5
	ld h, a                                                  ; $097c : $67
	ld l, d                                                  ; $097d : $6a
	and (hl)                                                  ; $097e : $a6

Call_03_097f:
	add a, e                                                  ; $097f : $83
	and l                                                  ; $0980 : $a5
	ld h, a                                                  ; $0981 : $67
	ld l, d                                                  ; $0982 : $6a
	and (hl)                                                  ; $0983 : $a6
	add a, e                                                  ; $0984 : $83
	rst $08                                                  ; $0985 : $cf
	and l                                                  ; $0986 : $a5
	adc a, c                                                  ; $0987 : $89
	call po, $a3f3                                                  ; $0988 : $e4, $f3, $a3
	add a, l                                                  ; $098b : $85
	and l                                                  ; $098c : $a5
	sbc a, b                                                  ; $098d : $98
	ccf                                                  ; $098e : $3f
	and l                                                  ; $098f : $a5
	sbc a, b                                                  ; $0990 : $98
	sbc a, (hl)                                                  ; $0991 : $9e
	dec de                                                  ; $0992 : $1b
	ld a, (bc)                                                  ; $0993 : $0a
	ld e, a                                                  ; $0994 : $5f
	and l                                                  ; $0995 : $a5
	sbc a, l                                                  ; $0996 : $9d
	sbc a, h                                                  ; $0997 : $9c
	jp pe, $538d                                                  ; $0998 : $ea, $8d, $53
	add a, $cf                                                  ; $099b : $c6, $cf
	and l                                                  ; $099d : $a5
	or b                                                  ; $099e : $b0

Call_03_099f:
	jp $eaa5                                                  ; $099f : $c3, $a5, $ea


	add a, $16                                                  ; $09a2 : $c6, $16
	call $eaa5                                                  ; $09a4 : $cd, $a5, $ea
	add a, $16                                                  ; $09a7 : $c6, $16

Call_03_09a9:
	call $a5cf                                                  ; $09a9 : $cd, $cf, $a5
	jp pe, Jump_03_1cc6                                                  ; $09ac : $ea, $c6, $1c
	and l                                                  ; $09af : $a5
	jp pe, $97c6                                                  ; $09b0 : $ea, $c6, $97
	sbc a, (hl)                                                  ; $09b3 : $9e
	ld e, $af                                                  ; $09b4 : $1e, $af
	and (hl)                                                  ; $09b6 : $a6
	ex af, af'                                                  ; $09b7 : $08
	sbc a, a                                                  ; $09b8 : $9f
	and (hl)                                                  ; $09b9 : $a6
	dec e                                                  ; $09ba : $1d
	sub h                                                  ; $09bb : $94
	sbc a, e                                                  ; $09bc : $9b

Call_03_09bd:
	call po, $1da6                                                  ; $09bd : $e4, $a6, $1d
	and $b3                                                  ; $09c0 : $e6, $b3
	and (hl)                                                  ; $09c2 : $a6
	ld sp, $a63c                                                  ; $09c3 : $31, $3c, $a6
	pop hl                                                  ; $09c6 : $e1
	ret p                                                  ; $09c7 : $f0

	rst $08                                                  ; $09c8 : $cf
	and (hl)                                                  ; $09c9 : $a6
	pop hl                                                  ; $09ca : $e1
	call po, $df38                                                  ; $09cb : $e4, $38, $df
	and (hl)                                                  ; $09ce : $a6
	ex (sp), hl                                                  ; $09cf : $e3
	ccf                                                  ; $09d0 : $3f
	inc c                                                  ; $09d1 : $0c
	di                                                  ; $09d2 : $f3
	and e                                                  ; $09d3 : $a3
	ld c, $3f                                                  ; $09d4 : $0e, $3f
	and (hl)                                                  ; $09d6 : $a6
	ld (hl), e                                                  ; $09d7 : $73
	cpl                                                  ; $09d8 : $2f
	and (hl)                                                  ; $09d9 : $a6
	ld a, (hl)                                                  ; $09da : $7e
	dec de                                                  ; $09db : $1b
	ld l, (hl)                                                  ; $09dc : $6e
	ld c, h                                                  ; $09dd : $4c
	and (hl)                                                  ; $09de : $a6
	add a, b                                                  ; $09df : $80
	ret nc                                                  ; $09e0 : $d0

	and (hl)                                                  ; $09e1 : $a6
	sbc a, b                                                  ; $09e2 : $98
	inc sp                                                  ; $09e3 : $33
	cp h                                                  ; $09e4 : $bc
	and (hl)                                                  ; $09e5 : $a6
	ret nz                                                  ; $09e6 : $c0

	and (hl)                                                  ; $09e7 : $a6
	pop de                                                  ; $09e8 : $d1
	ld e, a                                                  ; $09e9 : $5f
	and (hl)                                                  ; $09ea : $a6
	and (ix-$15)                                                  ; $09eb : $dd, $a6, $eb
	dec bc                                                  ; $09ee : $0b
	cp c                                                  ; $09ef : $b9
	and (hl)                                                  ; $09f0 : $a6
	ex de, hl                                                  ; $09f1 : $eb
	ex de, hl                                                  ; $09f2 : $eb
	rrca                                                  ; $09f3 : $0f
	and (hl)                                                  ; $09f4 : $a6
	ex de, hl                                                  ; $09f5 : $eb
	ex de, hl                                                  ; $09f6 : $eb
	rrca                                                  ; $09f7 : $0f
	dec (hl)                                                  ; $09f8 : $35
	and $df                                                  ; $09f9 : $e6, $df
	and a                                                  ; $09fb : $a7
	ld bc, $a73f                                                  ; $09fc : $01, $3f, $a7
	ld bc, $a732                                                  ; $09ff : $01, $32, $a7
	ld bc, $a73c                                                  ; $0a02 : $01, $3c, $a7
	ld c, $1e                                                  ; $0a05 : $0e, $1e
	ld h, e                                                  ; $0a07 : $63
	and a                                                  ; $0a08 : $a7
	ld b, $8c                                                  ; $0a09 : $06, $8c
	and a                                                  ; $0a0b : $a7
	ex af, af'                                                  ; $0a0c : $08
	and a                                                  ; $0a0d : $a7
	ex af, af'                                                  ; $0a0e : $08
	inc a                                                  ; $0a0f : $3c
	and a                                                  ; $0a10 : $a7
	ex af, af'                                                  ; $0a11 : $08
	dec a                                                  ; $0a12 : $3d
	and a                                                  ; $0a13 : $a7
	ex af, af'                                                  ; $0a14 : $08
	dec a                                                  ; $0a15 : $3d
	rst $08                                                  ; $0a16 : $cf
	and a                                                  ; $0a17 : $a7
	ex af, af'                                                  ; $0a18 : $08
	add a, (hl)                                                  ; $0a19 : $86
	adc a, (hl)                                                  ; $0a1a : $8e
	rra                                                  ; $0a1b : $1f
	and a                                                  ; $0a1c : $a7
	ex af, af'                                                  ; $0a1d : $08
	rst $18                                                  ; $0a1e : $df
	and a                                                  ; $0a1f : $a7
	ex af, af'                                                  ; $0a20 : $08
	ret nc                                                  ; $0a21 : $d0

br_03_0a22:
	sub $98                                                  ; $0a22 : $d6, $98
	and a                                                  ; $0a24 : $a7

Call_03_0a25:
	ex af, af'                                                  ; $0a25 : $08
	ret nc                                                  ; $0a26 : $d0

	sub $98                                                  ; $0a27 : $d6, $98
	rst $08                                                  ; $0a29 : $cf
	and a                                                  ; $0a2a : $a7
	ex af, af'                                                  ; $0a2b : $08
	call c, $0ca7                                                  ; $0a2c : $dc, $a7, $0c

Jump_03_0a2f:
	call po, $a70f                                                  ; $0a2f : $e4, $0f, $a7
	inc c                                                  ; $0a32 : $0c
	sub $1f                                                  ; $0a33 : $d6, $1f
	and a                                                  ; $0a35 : $a7
	dec c                                                  ; $0a36 : $0d
	ccf                                                  ; $0a37 : $3f
	and a                                                  ; $0a38 : $a7
	dec c                                                  ; $0a39 : $0d
	jr nc, br_03_0a22                                                  ; $0a3a : $30, $e6

	and a                                                  ; $0a3c : $a7
	dec c                                                  ; $0a3d : $0d
	scf                                                  ; $0a3e : $37
	dec a                                                  ; $0a3f : $3d
	rst $08                                                  ; $0a40 : $cf
	and a                                                  ; $0a41 : $a7
	ld c, $af                                                  ; $0a42 : $0e, $af
	and a                                                  ; $0a44 : $a7
	ld c, $a3                                                  ; $0a45 : $0e, $a3
	cpl                                                  ; $0a47 : $2f
	and a                                                  ; $0a48 : $a7
	ld c, $a3                                                  ; $0a49 : $0e, $a3
	cp a                                                  ; $0a4b : $bf
	and a                                                  ; $0a4c : $a7
	ld c, $a3                                                  ; $0a4d : $0e, $a3
	cp h                                                  ; $0a4f : $bc
	and a                                                  ; $0a50 : $a7
	ld ($3fe1), a                                                  ; $0a51 : $32, $e1, $3f
	and a                                                  ; $0a54 : $a7
	and $e1                                                  ; $0a55 : $e6, $e1
	and a                                                  ; $0a57 : $a7
	and $e4                                                  ; $0a58 : $e6, $e4
	and a                                                  ; $0a5a : $a7
	and $e4                                                  ; $0a5b : $e6, $e4
	rst $08                                                  ; $0a5d : $cf
	and a                                                  ; $0a5e : $a7
	and $d9                                                  ; $0a5f : $e6, $d9
	and a                                                  ; $0a61 : $a7
	and $d9                                                  ; $0a62 : $e6, $d9
	add a, (hl)                                                  ; $0a64 : $86
	and $e4                                                  ; $0a65 : $e6, $e4
	and a                                                  ; $0a67 : $a7
	jp pe, $9ee4                                                  ; $0a68 : $ea, $e4, $9e
	ld l, l                                                  ; $0a6b : $6d
	ld e, a                                                  ; $0a6c : $5f
	and a                                                  ; $0a6d : $a7
	jp pe, $9ee4                                                  ; $0a6e : $ea, $e4, $9e
	ld l, l                                                  ; $0a71 : $6d
	ld e, a                                                  ; $0a72 : $5f
	dec sp                                                  ; $0a73 : $3b
	sub c                                                  ; $0a74 : $91
	ex (sp), hl                                                  ; $0a75 : $e3
	xor c                                                  ; $0a76 : $a9
	xor c                                                  ; $0a77 : $a9
	cpl                                                  ; $0a78 : $2f
	xor c                                                  ; $0a79 : $a9
	ld l, b                                                  ; $0a7a : $68
	rst $18                                                  ; $0a7b : $df

Call_03_0a7c:
	xor c                                                  ; $0a7c : $a9
	ld l, b                                                  ; $0a7d : $68
	call c, $6ca9                                                  ; $0a7e : $dc, $a9, $6c
	ld (hl), $29                                                  ; $0a81 : $36, $29
	adc a, a                                                  ; $0a83 : $8f
	xor c                                                  ; $0a84 : $a9
	ld (hl), b                                                  ; $0a85 : $70
	add a, d                                                  ; $0a86 : $82
	xor c                                                  ; $0a87 : $a9
	ld (hl), b                                                  ; $0a88 : $70
	cp a                                                  ; $0a89 : $bf
	xor c                                                  ; $0a8a : $a9
	ld (hl), b                                                  ; $0a8b : $70

Call_03_0a8c:
	or (hl)                                                  ; $0a8c : $b6
	rst $08                                                  ; $0a8d : $cf
	xor c                                                  ; $0a8e : $a9
	ld (hl), e                                                  ; $0a8f : $73
	xor c                                                  ; $0a90 : $a9
	ld (hl), e                                                  ; $0a91 : $73
	rst $08                                                  ; $0a92 : $cf

Jump_03_0a93:
	xor c                                                  ; $0a93 : $a9
	halt                                                  ; $0a94 : $76
	ld e, $af                                                  ; $0a95 : $1e, $af
	xor c                                                  ; $0a97 : $a9

Jump_03_0a98:
	halt                                                  ; $0a98 : $76
	sub $10                                                  ; $0a99 : $d6, $10
	ld a, a                                                  ; $0a9b : $7f

Jump_03_0a9c:
	xor c                                                  ; $0a9c : $a9
	ld (hl), a                                                  ; $0a9d : $77
	xor $d0                                                  ; $0a9e : $ee, $d0
	jp (hl)                                                  ; $0aa0 : $e9


	xor c                                                  ; $0aa1 : $a9
	ld (hl), a                                                  ; $0aa2 : $77
	and $d3                                                  ; $0aa3 : $e6, $d3
	xor c                                                  ; $0aa5 : $a9

Call_03_0aa6:
	ld (hl), a                                                  ; $0aa6 : $77
	and $d6                                                  ; $0aa7 : $e6, $d6
	sbc a, b                                                  ; $0aa9 : $98
	xor c                                                  ; $0aaa : $a9
	ld a, c                                                  ; $0aab : $79
	xor c                                                  ; $0aac : $a9
	call po, $66a3                                                  ; $0aad : $e4, $a3, $66
	xor c                                                  ; $0ab0 : $a9
	add a, c                                                  ; $0ab1 : $81
	ccf                                                  ; $0ab2 : $3f
	ld ($373f), a                                                  ; $0ab3 : $32, $3f, $37
	add hl, sp                                                  ; $0ab6 : $39
	adc a, a                                                  ; $0ab7 : $8f
	xor c                                                  ; $0ab8 : $a9
	adc a, (hl)                                                  ; $0ab9 : $8e
	xor a                                                  ; $0aba : $af
	xor c                                                  ; $0abb : $a9
	sub a                                                  ; $0abc : $97
	xor c                                                  ; $0abd : $a9
	xor d                                                  ; $0abe : $aa
	ld h, e                                                  ; $0abf : $63
	rst $08                                                  ; $0ac0 : $cf
	xor c                                                  ; $0ac1 : $a9
	xor (hl)                                                  ; $0ac2 : $ae
	ld h, a                                                  ; $0ac3 : $67
	dec bc                                                  ; $0ac4 : $0b
	xor c                                                  ; $0ac5 : $a9
	xor (hl)                                                  ; $0ac6 : $ae
	ld h, a                                                  ; $0ac7 : $67
	dec c                                                  ; $0ac8 : $0d
	ld ($aea9), a                                                  ; $0ac9 : $32, $a9, $ae
	ld h, a                                                  ; $0acc : $67
	ld l, h                                                  ; $0acd : $6c
	rst $18                                                  ; $0ace : $df
	xor c                                                  ; $0acf : $a9
	xor (hl)                                                  ; $0ad0 : $ae
	ld h, a                                                  ; $0ad1 : $67

Call_03_0ad2:
	sbc a, (hl)                                                  ; $0ad2 : $9e
	ld l, h                                                  ; $0ad3 : $6c
	xor c                                                  ; $0ad4 : $a9
	or c                                                  ; $0ad5 : $b1
	and $a6                                                  ; $0ad6 : $e6, $a6
	add a, e                                                  ; $0ad8 : $83
	xor c                                                  ; $0ad9 : $a9
	or e                                                  ; $0ada : $b3
	rst $08                                                  ; $0adb : $cf
	xor c                                                  ; $0adc : $a9
	cp l                                                  ; $0add : $bd
	xor c                                                  ; $0ade : $a9
	cp l                                                  ; $0adf : $bd
	or b                                                  ; $0ae0 : $b0
	ld l, l                                                  ; $0ae1 : $6d
	xor c                                                  ; $0ae2 : $a9
	cp l                                                  ; $0ae3 : $bd
	and $e1                                                  ; $0ae4 : $e6, $e1
	rlca                                                  ; $0ae6 : $07
	xor c                                                  ; $0ae7 : $a9
	cp l                                                  ; $0ae8 : $bd
	and $e1                                                  ; $0ae9 : $e6, $e1
	and $3c                                                  ; $0aeb : $e6, $3c
	ccf                                                  ; $0aed : $3f
	xor c                                                  ; $0aee : $a9
	add a, $d6                                                  ; $0aef : $c6, $d6
	sbc a, b                                                  ; $0af1 : $98
	xor c                                                  ; $0af2 : $a9
	add a, $d6                                                  ; $0af3 : $c6, $d6
	rst $20                                                  ; $0af5 : $e7
	ccf                                                  ; $0af6 : $3f

Jump_03_0af7:
	xor c                                                  ; $0af7 : $a9
	call z, $c63c                                                  ; $0af8 : $cc, $3c, $c6
	sbc a, b                                                  ; $0afb : $98
	xor c                                                  ; $0afc : $a9
	rst $18                                                  ; $0afd : $df
	xor c                                                  ; $0afe : $a9
	out ($8d), a                                                  ; $0aff : $d3, $8d
	ld h, b                                                  ; $0b01 : $60
	ld a, a                                                  ; $0b02 : $7f

Call_03_0b03:
	xor c                                                  ; $0b03 : $a9
	exx                                                  ; $0b04 : $d9
	call po, $a901                                                  ; $0b05 : $e4, $01, $a9
	and $82                                                  ; $0b08 : $e6, $82
	rst $08                                                  ; $0b0a : $cf
	xor c                                                  ; $0b0b : $a9
	and $bc                                                  ; $0b0c : $e6, $bc
	xor c                                                  ; $0b0e : $a9

Jump_03_0b0f:
	ret pe                                                  ; $0b0f : $e8

	dec sp                                                  ; $0b10 : $3b
	xor c                                                  ; $0b11 : $a9
	ret pe                                                  ; $0b12 : $e8

	dec sp                                                  ; $0b13 : $3b

br_03_0b14:
	rst $08                                                  ; $0b14 : $cf

Call_03_0b15:
	xor e                                                  ; $0b15 : $ab

br_03_0b16:
	ld bc, $10d6                                                  ; $0b16 : $01, $d6, $10
	ld a, a                                                  ; $0b19 : $7f
	xor e                                                  ; $0b1a : $ab
	ld bc, $13d6                                                  ; $0b1b : $01, $d6, $13
	rst $08                                                  ; $0b1e : $cf
	xor e                                                  ; $0b1f : $ab
	ld sp, $6d6a                                                  ; $0b20 : $31, $6a, $6d
	dec c                                                  ; $0b23 : $0d
	ld l, c                                                  ; $0b24 : $69
	adc a, a                                                  ; $0b25 : $8f
	xor e                                                  ; $0b26 : $ab
	ld ($9b0d), a                                                  ; $0b27 : $32, $0d, $9b
	rst $08                                                  ; $0b2a : $cf
	xor e                                                  ; $0b2b : $ab
	inc a                                                  ; $0b2c : $3c

Jump_03_0b2d:
	ret po                                                  ; $0b2d : $e0

Call_03_0b2e:
	jp pe, $bfd3                                                  ; $0b2e : $ea, $d3, $bf
	xor e                                                  ; $0b31 : $ab
	inc a                                                  ; $0b32 : $3c
	jr c, br_03_0b14                                                  ; $0b33 : $38, $df

	xor e                                                  ; $0b35 : $ab
	inc a                                                  ; $0b36 : $3c

Call_03_0b37:
	ld h, d                                                  ; $0b37 : $62
	jr c, br_03_0b16                                                  ; $0b38 : $38, $dc

	xor e                                                  ; $0b3a : $ab
	inc a                                                  ; $0b3b : $3c
	ld h, d                                                  ; $0b3c : $62
	inc a                                                  ; $0b3d : $3c

Call_03_0b3e:
	xor e                                                  ; $0b3e : $ab

Jump_03_0b3f:
	inc a                                                  ; $0b3f : $3c
	ld (hl), e                                                  ; $0b40 : $73
	jp pe, Jump_03_3cab                                                  ; $0b41 : $ea, $ab, $3c
	rst $08                                                  ; $0b44 : $cf
	xor e                                                  ; $0b45 : $ab
	inc a                                                  ; $0b46 : $3c
	adc a, $6b                                                  ; $0b47 : $ce, $6b
	ccf                                                  ; $0b49 : $3f
	xor e                                                  ; $0b4a : $ab
	ld a, $73                                                  ; $0b4b : $3e, $73

Jump_03_0b4d:
	adc a, l                                                  ; $0b4d : $8d

Call_03_0b4e:
	xor e                                                  ; $0b4e : $ab
	ld a, $73                                                  ; $0b4f : $3e, $73

Call_03_0b51:
	adc a, l                                                  ; $0b51 : $8d
	rst $08                                                  ; $0b52 : $cf
	xor e                                                  ; $0b53 : $ab
	ld a, $76                                                  ; $0b54 : $3e, $76
	sbc a, (hl)                                                  ; $0b56 : $9e
	ld l, h                                                  ; $0b57 : $6c

Call_03_0b58:
	xor e                                                  ; $0b58 : $ab

Call_03_0b59:
	ld h, c                                                  ; $0b59 : $61
	ccf                                                  ; $0b5a : $3f
	xor e                                                  ; $0b5b : $ab
	ld h, c                                                  ; $0b5c : $61
	inc a                                                  ; $0b5d : $3c
	xor e                                                  ; $0b5e : $ab
	ld l, (hl)                                                  ; $0b5f : $6e
	ld b, b                                                  ; $0b60 : $40
	cp (hl)                                                  ; $0b61 : $be

Jump_03_0b62:
	xor a                                                  ; $0b62 : $af
	xor e                                                  ; $0b63 : $ab
	ld l, (hl)                                                  ; $0b64 : $6e

Call_03_0b65:
	ld b, e                                                  ; $0b65 : $43
	xor e                                                  ; $0b66 : $ab
	ld l, (hl)                                                  ; $0b67 : $6e
	ld b, e                                                  ; $0b68 : $43
	di                                                  ; $0b69 : $f3

Call_03_0b6a:
	call po, $623b                                                  ; $0b6a : $e4, $3b, $62
	ld h, b                                                  ; $0b6d : $60

Jump_03_0b6e:
	adc a, a                                                  ; $0b6e : $8f

Jump_03_0b6f:
	xor e                                                  ; $0b6f : $ab
	ld l, (hl)                                                  ; $0b70 : $6e
	ld b, e                                                  ; $0b71 : $43

Call_03_0b72:
	di                                                  ; $0b72 : $f3
	call po, $6c68                                                  ; $0b73 : $e4, $68, $6c
	out ($bf), a                                                  ; $0b76 : $d3, $bf
	xor e                                                  ; $0b78 : $ab
	ld l, (hl)                                                  ; $0b79 : $6e
	ld b, e                                                  ; $0b7a : $43
	di                                                  ; $0b7b : $f3
	call po, $6c68                                                  ; $0b7c : $e4, $68, $6c
	out ($bf), a                                                  ; $0b7f : $d3, $bf
	dec (hl)                                                  ; $0b81 : $35

Call_03_0b82:
	ld c, $8e                                                  ; $0b82 : $0e, $8e
	inc sp                                                  ; $0b84 : $33
	xor e                                                  ; $0b85 : $ab
	ld l, (hl)                                                  ; $0b86 : $6e
	ld b, e                                                  ; $0b87 : $43
	di                                                  ; $0b88 : $f3

Call_03_0b89:
	call po, $6c68                                                  ; $0b89 : $e4, $68, $6c
	out ($bf), a                                                  ; $0b8c : $d3, $bf
	dec a                                                  ; $0b8e : $3d
	ld d, b                                                  ; $0b8f : $50

Jump_03_0b90:
	pop de                                                  ; $0b90 : $d1
	ld d, e                                                  ; $0b91 : $53
	cp a                                                  ; $0b92 : $bf
	xor e                                                  ; $0b93 : $ab
	ld l, (hl)                                                  ; $0b94 : $6e

Call_03_0b95:
	ld b, (hl)                                                  ; $0b95 : $46

Jump_03_0b96:
	sub $e7                                                  ; $0b96 : $d6, $e7

Call_03_0b98:
	ccf                                                  ; $0b98 : $3f
	xor e                                                  ; $0b99 : $ab
	ld l, b                                                  ; $0b9a : $68
	inc de                                                  ; $0b9b : $13

Jump_03_0b9c:
	xor e                                                  ; $0b9c : $ab
	ld l, b                                                  ; $0b9d : $68
	inc de                                                  ; $0b9e : $13
	di                                                  ; $0b9f : $f3
	ld d, e                                                  ; $0ba0 : $53

Call_03_0ba1:
	adc a, e                                                  ; $0ba1 : $8b
	jp pe, $68ab                                                  ; $0ba2 : $ea, $ab, $68
	inc de                                                  ; $0ba5 : $13
	di                                                  ; $0ba6 : $f3
	jp po, $8f95                                                  ; $0ba7 : $e2, $95, $8f
	xor e                                                  ; $0baa : $ab

Call_03_0bab:
	ld l, b                                                  ; $0bab : $68
	inc de                                                  ; $0bac : $13
	call z, $68ab                                                  ; $0bad : $cc, $ab, $68
	inc de                                                  ; $0bb0 : $13
	call z, Call_03_26f3                                                  ; $0bb1 : $cc, $f3, $26
	ex af, af'                                                  ; $0bb4 : $08
	rrca                                                  ; $0bb5 : $0f

Call_03_0bb6:
	xor e                                                  ; $0bb6 : $ab
	ld l, b                                                  ; $0bb7 : $68

Jump_03_0bb8:
	inc de                                                  ; $0bb8 : $13

Jump_03_0bb9:
	exx                                                  ; $0bb9 : $d9
	adc a, a                                                  ; $0bba : $8f

Jump_03_0bbb:
	xor e                                                  ; $0bbb : $ab
	ld l, b                                                  ; $0bbc : $68
	ld d, $a7                                                  ; $0bbd : $16, $a7
	ccf                                                  ; $0bbf : $3f
	xor e                                                  ; $0bc0 : $ab
	ld l, b                                                  ; $0bc1 : $68
	out ($2f), a                                                  ; $0bc2 : $d3, $2f
	xor e                                                  ; $0bc4 : $ab
	ld l, b                                                  ; $0bc5 : $68
	out ($bc), a                                                  ; $0bc6 : $d3, $bc
	xor e                                                  ; $0bc8 : $ab
	ld l, b                                                  ; $0bc9 : $68
	sub $8e                                                  ; $0bca : $d6, $8e
	rra                                                  ; $0bcc : $1f

Jump_03_0bcd:
	xor e                                                  ; $0bcd : $ab

Call_03_0bce:
	ld l, h                                                  ; $0bce : $6c

Call_03_0bcf:
	call po, $6cab                                                  ; $0bcf : $e4, $ab, $6c
	sbc a, b                                                  ; $0bd2 : $98
	dec sp                                                  ; $0bd3 : $3b
	xor e                                                  ; $0bd4 : $ab
	ld l, h                                                  ; $0bd5 : $6c
	sbc a, b                                                  ; $0bd6 : $98
	dec sp                                                  ; $0bd7 : $3b
	rst $08                                                  ; $0bd8 : $cf
	xor e                                                  ; $0bd9 : $ab
	ld l, (hl)                                                  ; $0bda : $6e
	or e                                                  ; $0bdb : $b3
	xor e                                                  ; $0bdc : $ab
	sbc a, (hl)                                                  ; $0bdd : $9e

Jump_03_0bde:
	rlca                                                  ; $0bde : $07
	ld a, $4f                                                  ; $0bdf : $3e, $4f
	xor e                                                  ; $0be1 : $ab
	sub d                                                  ; $0be2 : $92

Call_03_0be3:
	and $13                                                  ; $0be3 : $e6, $13

Call_03_0be5:
	xor e                                                  ; $0be5 : $ab

Call_03_0be6:
	sub d                                                  ; $0be6 : $92
	and $13                                                  ; $0be7 : $e6, $13
	cpl                                                  ; $0be9 : $2f
	xor e                                                  ; $0bea : $ab
	sub d                                                  ; $0beb : $92
	and $13                                                  ; $0bec : $e6, $13
	cp a                                                  ; $0bee : $bf
	xor e                                                  ; $0bef : $ab
	sub d                                                  ; $0bf0 : $92

Call_03_0bf1:
	and $13                                                  ; $0bf1 : $e6, $13
	rst $08                                                  ; $0bf3 : $cf
	xor e                                                  ; $0bf4 : $ab
	sub d                                                  ; $0bf5 : $92

Call_03_0bf6:
	and $1d                                                  ; $0bf6 : $e6, $1d
	xor e                                                  ; $0bf8 : $ab

Call_03_0bf9:
	sbc a, (hl)                                                  ; $0bf9 : $9e
	dec de                                                  ; $0bfa : $1b
	ld c, $4f                                                  ; $0bfb : $0e, $4f
	xor e                                                  ; $0bfd : $ab

Jump_03_0bfe:
	sbc a, (hl)                                                  ; $0bfe : $9e
	dec de                                                  ; $0bff : $1b
	ld c, $4c                                                  ; $0c00 : $0e, $4c
	xor e                                                  ; $0c02 : $ab
	sub l                                                  ; $0c03 : $95

Call_03_0c04:
	ld l, (hl)                                                  ; $0c04 : $6e

Jump_03_0c05:
	ld b, $df                                                  ; $0c05 : $06, $df
	xor e                                                  ; $0c07 : $ab
	sub a                                                  ; $0c08 : $97
	dec a                                                  ; $0c09 : $3d
	dec bc                                                  ; $0c0a : $0b
	ld h, b                                                  ; $0c0b : $60
	rst $18                                                  ; $0c0c : $df
	xor e                                                  ; $0c0d : $ab

Jump_03_0c0e:
	sub a                                                  ; $0c0e : $97

Jump_03_0c0f:
	sbc a, (hl)                                                  ; $0c0f : $9e
	ld e, $63                                                  ; $0c10 : $1e, $63
	xor e                                                  ; $0c12 : $ab
	sbc a, b                                                  ; $0c13 : $98
	sbc a, (hl)                                                  ; $0c14 : $9e
	ld l, b                                                  ; $0c15 : $68
	xor e                                                  ; $0c16 : $ab
	sbc a, d                                                  ; $0c17 : $9a
	sbc a, h                                                  ; $0c18 : $9c
	rlca                                                  ; $0c19 : $07
	xor e                                                  ; $0c1a : $ab
	sbc a, d                                                  ; $0c1b : $9a

Jump_03_0c1c:
	sbc a, h                                                  ; $0c1c : $9c
	ld ($9dab), a                                                  ; $0c1d : $32, $ab, $9d
	ld sp, $abdf                                                  ; $0c20 : $31, $df, $ab
	sbc a, l                                                  ; $0c23 : $9d
	ld sp, $98d6                                                  ; $0c24 : $31, $d6, $98
	xor e                                                  ; $0c27 : $ab
	sbc a, l                                                  ; $0c28 : $9d
	ld sp, $e7d6                                                  ; $0c29 : $31, $d6, $e7

Call_03_0c2c:
	ccf                                                  ; $0c2c : $3f
	xor e                                                  ; $0c2d : $ab
	sbc a, l                                                  ; $0c2e : $9d
	ld (hl), $8f                                                  ; $0c2f : $36, $8f
	xor e                                                  ; $0c31 : $ab
	sbc a, l                                                  ; $0c32 : $9d
	ld (hl), $8c                                                  ; $0c33 : $36, $8c
	xor e                                                  ; $0c35 : $ab
	sbc a, l                                                  ; $0c36 : $9d

Jump_03_0c37:
	inc a                                                  ; $0c37 : $3c
	rst $18                                                  ; $0c38 : $df
	xor e                                                  ; $0c39 : $ab

Call_03_0c3a:
	sbc a, l                                                  ; $0c3a : $9d
	inc a                                                  ; $0c3b : $3c
	ret nc                                                  ; $0c3c : $d0

	adc a, l                                                  ; $0c3d : $8d
	di                                                  ; $0c3e : $f3
	or e                                                  ; $0c3f : $b3
	ld c, c                                                  ; $0c40 : $49
	cp (hl)                                                  ; $0c41 : $be
	ld b, b                                                  ; $0c42 : $40
	sub $98                                                  ; $0c43 : $d6, $98
	xor e                                                  ; $0c45 : $ab
	sbc a, l                                                  ; $0c46 : $9d
	ld l, h                                                  ; $0c47 : $6c
	rst $18                                                  ; $0c48 : $df
	xor e                                                  ; $0c49 : $ab
	sbc a, l                                                  ; $0c4a : $9d
	ld l, h                                                  ; $0c4b : $6c
	call c, $9dab                                                  ; $0c4c : $dc, $ab, $9d
	sbc a, b                                                  ; $0c4f : $98
	xor e                                                  ; $0c50 : $ab
	sbc a, l                                                  ; $0c51 : $9d
	sbc a, b                                                  ; $0c52 : $98
	rst $08                                                  ; $0c53 : $cf
	xor e                                                  ; $0c54 : $ab
	sbc a, l                                                  ; $0c55 : $9d
	sbc a, (hl)                                                  ; $0c56 : $9e
	cp c                                                  ; $0c57 : $b9
	rrca                                                  ; $0c58 : $0f
	xor e                                                  ; $0c59 : $ab
	sbc a, (hl)                                                  ; $0c5a : $9e
	ld (hl), e                                                  ; $0c5b : $73

Jump_03_0c5c:
	cpl                                                  ; $0c5c : $2f
	xor e                                                  ; $0c5d : $ab
	sbc a, (hl)                                                  ; $0c5e : $9e
	halt                                                  ; $0c5f : $76
	add a, c                                                  ; $0c60 : $81

Call_03_0c61:
	ccf                                                  ; $0c61 : $3f
	xor e                                                  ; $0c62 : $ab
	sbc a, (hl)                                                  ; $0c63 : $9e
	halt                                                  ; $0c64 : $76
	add a, c                                                  ; $0c65 : $81
	inc a                                                  ; $0c66 : $3c
	xor e                                                  ; $0c67 : $ab
	sbc a, (hl)                                                  ; $0c68 : $9e
	halt                                                  ; $0c69 : $76

Jump_03_0c6a:
	add a, c                                                  ; $0c6a : $81
	dec a                                                  ; $0c6b : $3d
	sbc a, (hl)                                                  ; $0c6c : $9e
	adc a, b                                                  ; $0c6d : $88
	xor e                                                  ; $0c6e : $ab
	and $83                                                  ; $0c6f : $e6, $83
	rst $08                                                  ; $0c71 : $cf
	xor h                                                  ; $0c72 : $ac
	jp pe, $9715                                                  ; $0c73 : $ea, $15, $97
	sbc a, (hl)                                                  ; $0c76 : $9e
	ld e, $af                                                  ; $0c77 : $1e, $af
	xor l                                                  ; $0c79 : $ad
	call pe, $e0f3                                                  ; $0c7a : $ec, $f3, $e0
	dec bc                                                  ; $0c7d : $0b
	cp c                                                  ; $0c7e : $b9
	ret pe                                                  ; $0c7f : $e8

	xor (hl)                                                  ; $0c80 : $ae
	ld l, (hl)                                                  ; $0c81 : $6e
	rlca                                                  ; $0c82 : $07
	ld l, h                                                  ; $0c83 : $6c
	ld d, e                                                  ; $0c84 : $53
	cpl                                                  ; $0c85 : $2f
	xor (hl)                                                  ; $0c86 : $ae
	ld l, (hl)                                                  ; $0c87 : $6e
	rlca                                                  ; $0c88 : $07
	ld l, h                                                  ; $0c89 : $6c
	ld d, e                                                  ; $0c8a : $53
	cp a                                                  ; $0c8b : $bf
	xor (hl)                                                  ; $0c8c : $ae
	ld h, e                                                  ; $0c8d : $63
	cp l                                                  ; $0c8e : $bd
	sbc a, a                                                  ; $0c8f : $9f
	dec sp                                                  ; $0c90 : $3b
	ld h, c                                                  ; $0c91 : $61
	sbc a, a                                                  ; $0c92 : $9f
	xor (hl)                                                  ; $0c93 : $ae
	ld h, a                                                  ; $0c94 : $67
	ld (hl), e                                                  ; $0c95 : $73
	jp pe, $67ae                                                  ; $0c96 : $ea, $ae, $67
	jp $6aae                                                  ; $0c99 : $c3, $ae, $6a


	ld h, a                                                  ; $0c9c : $67
	xor (hl)                                                  ; $0c9d : $ae
	ld l, e                                                  ; $0c9e : $6b
	dec d                                                  ; $0c9f : $15
	inc c                                                  ; $0ca0 : $0c
	ccf                                                  ; $0ca1 : $3f
	xor (hl)                                                  ; $0ca2 : $ae
	ld l, e                                                  ; $0ca3 : $6b
	dec d                                                  ; $0ca4 : $15
	inc c                                                  ; $0ca5 : $0c
	ld ($6bae), a                                                  ; $0ca6 : $32, $ae, $6b
	ld l, (hl)                                                  ; $0ca9 : $6e
	ld c, a                                                  ; $0caa : $4f
	xor (hl)                                                  ; $0cab : $ae
	ld l, e                                                  ; $0cac : $6b
	and a                                                  ; $0cad : $a7
	ccf                                                  ; $0cae : $3f
	xor (hl)                                                  ; $0caf : $ae
	ld l, l                                                  ; $0cb0 : $6d
	xor (hl)                                                  ; $0cb1 : $ae
	ld l, l                                                  ; $0cb2 : $6d
	sub $8e                                                  ; $0cb3 : $d6, $8e
	rra                                                  ; $0cb5 : $1f
	xor (hl)                                                  ; $0cb6 : $ae
	xor e                                                  ; $0cb7 : $ab
	ld c, $46                                                  ; $0cb8 : $0e, $46

Jump_03_0cba:
	cpl                                                  ; $0cba : $2f
	add hl, sp                                                  ; $0cbb : $39
	ld c, a                                                  ; $0cbc : $4f
	ld sp, $9a53                                                  ; $0cbd : $31, $53, $9a
	rst $08                                                  ; $0cc0 : $cf
	xor (hl)                                                  ; $0cc1 : $ae

Call_03_0cc2:
	xor e                                                  ; $0cc2 : $ab
	ld c, $46                                                  ; $0cc3 : $0e, $46

Call_03_0cc5:
	inc l                                                  ; $0cc5 : $2c
	xor (hl)                                                  ; $0cc6 : $ae
	xor e                                                  ; $0cc7 : $ab
	jr c, br_03_0cfd                                                  ; $0cc8 : $38, $33

	rst $08                                                  ; $0cca : $cf
	push hl                                                  ; $0ccb : $e5
	push hl                                                  ; $0ccc : $e5
	and $0e                                                  ; $0ccd : $e6, $0e
	inc sp                                                  ; $0ccf : $33
	cp h                                                  ; $0cd0 : $bc
	push hl                                                  ; $0cd1 : $e5
	and $08                                                  ; $0cd2 : $e6, $08
	sub $de                                                  ; $0cd4 : $d6, $de
	xor a                                                  ; $0cd6 : $af
	push hl                                                  ; $0cd7 : $e5
	and $0b                                                  ; $0cd8 : $e6, $0b
	out ($bf), a                                                  ; $0cda : $d3, $bf
	push hl                                                  ; $0cdc : $e5
	and $0b                                                  ; $0cdd : $e6, $0b
	out ($be), a                                                  ; $0cdf : $d3, $be
	nop                                                  ; $0ce1 : $00
	ld e, $3f                                                  ; $0ce2 : $1e, $3f
	push hl                                                  ; $0ce4 : $e5
	and $0b                                                  ; $0ce5 : $e6, $0b
	call c, $e6e5                                                  ; $0ce7 : $dc, $e5, $e6
	dec bc                                                  ; $0cea : $0b
	sbc a, $bf                                                  ; $0ceb : $de, $bf
	push hl                                                  ; $0ced : $e5
	and $0c                                                  ; $0cee : $e6, $0c
	dec bc                                                  ; $0cf0 : $0b
	push hl                                                  ; $0cf1 : $e5
	and $3e                                                  ; $0cf2 : $e6, $3e
	inc bc                                                  ; $0cf4 : $03
	rra                                                  ; $0cf5 : $1f
	push hl                                                  ; $0cf6 : $e5
	and $33                                                  ; $0cf7 : $e6, $33
	adc a, a                                                  ; $0cf9 : $8f
	push hl                                                  ; $0cfa : $e5
	and $33                                                  ; $0cfb : $e6, $33

br_03_0cfd:
	adc a, a                                                  ; $0cfd : $8f
	inc sp                                                  ; $0cfe : $33
	halt                                                  ; $0cff : $76
	ex de, hl                                                  ; $0d00 : $eb
	ld c, $03                                                  ; $0d01 : $0e, $03
	push de                                                  ; $0d03 : $d5
	push hl                                                  ; $0d04 : $e5
	and $33                                                  ; $0d05 : $e6, $33
	adc a, a                                                  ; $0d07 : $8f
	inc sp                                                  ; $0d08 : $33
	halt                                                  ; $0d09 : $76
	ex de, hl                                                  ; $0d0a : $eb

Call_03_0d0b:
	ld c, $03                                                  ; $0d0b : $0e, $03
	push de                                                  ; $0d0d : $d5
	di                                                  ; $0d0e : $f3
	ld h, (hl)                                                  ; $0d0f : $66
	push hl                                                  ; $0d10 : $e5
	and $33                                                  ; $0d11 : $e6, $33
	adc a, a                                                  ; $0d13 : $8f
	inc sp                                                  ; $0d14 : $33
	halt                                                  ; $0d15 : $76
	ex de, hl                                                  ; $0d16 : $eb
	ld c, $03                                                  ; $0d17 : $0e, $03
	push de                                                  ; $0d19 : $d5
	ld h, (hl)                                                  ; $0d1a : $66
	push hl                                                  ; $0d1b : $e5
	and $33                                                  ; $0d1c : $e6, $33
	adc a, a                                                  ; $0d1e : $8f
	ld a, $40                                                  ; $0d1f : $3e, $40
	cp (hl)                                                  ; $0d21 : $be
	xor a                                                  ; $0d22 : $af
	push hl                                                  ; $0d23 : $e5
	and $33                                                  ; $0d24 : $e6, $33
	adc a, a                                                  ; $0d26 : $8f
	inc c                                                  ; $0d27 : $0c
	push hl                                                  ; $0d28 : $e5
	and $67                                                  ; $0d29 : $e6, $67
	ld a, a                                                  ; $0d2b : $7f
	push hl                                                  ; $0d2c : $e5
	and $67                                                  ; $0d2d : $e6, $67
	ld a, h                                                  ; $0d2f : $7c
	cp a                                                  ; $0d30 : $bf
	cp (hl)                                                  ; $0d31 : $be
	rst $08                                                  ; $0d32 : $cf
	dec (hl)                                                  ; $0d33 : $35
	ld h, a                                                  ; $0d34 : $67
	ld a, a                                                  ; $0d35 : $7f
	cp (hl)                                                  ; $0d36 : $be
	rst $08                                                  ; $0d37 : $cf
	jr c, br_03_0da8                                                  ; $0d38 : $38, $6e

	sbc a, c                                                  ; $0d3a : $99
	adc a, a                                                  ; $0d3b : $8f
	cp a                                                  ; $0d3c : $bf
	ld h, d                                                  ; $0d3d : $62
	or $f0                                                  ; $0d3e : $f6, $f0
	rst $08                                                  ; $0d40 : $cf
	or b                                                  ; $0d41 : $b0
	ret po                                                  ; $0d42 : $e0

	dec c                                                  ; $0d43 : $0d
	or b                                                  ; $0d44 : $b0
	inc de                                                  ; $0d45 : $13
	or b                                                  ; $0d46 : $b0
	ld d, $8e                                                  ; $0d47 : $16, $8e
	rra                                                  ; $0d49 : $1f
	or b                                                  ; $0d4a : $b0
	jr nz, -$41                                                  ; $0d4b : $20, $bf

	or b                                                  ; $0d4d : $b0
	ld h, $08                                                  ; $0d4e : $26, $08

br_03_0d50:
	rst $18                                                  ; $0d50 : $df
	or b                                                  ; $0d51 : $b0
	ld h, $0d                                                  ; $0d52 : $26, $0d
	ld l, c                                                  ; $0d54 : $69
	adc a, a                                                  ; $0d55 : $8f
	or b                                                  ; $0d56 : $b0
	ld h, $9f                                                  ; $0d57 : $26, $9f
	or b                                                  ; $0d59 : $b0
	ld h, $90                                                  ; $0d5a : $26, $90
	dec e                                                  ; $0d5c : $1d
	ld l, (hl)                                                  ; $0d5d : $6e
	ld (hl), e                                                  ; $0d5e : $73
	or b                                                  ; $0d5f : $b0
	ld h, $e6                                                  ; $0d60 : $26, $e6
	rst $08                                                  ; $0d62 : $cf
	or b                                                  ; $0d63 : $b0
	pop hl                                                  ; $0d64 : $e1
	sub $e4                                                  ; $0d65 : $d6, $e4
	ccf                                                  ; $0d67 : $3f
	or b                                                  ; $0d68 : $b0
	ld h, a                                                  ; $0d69 : $67
	cp c                                                  ; $0d6a : $b9

Jump_03_0d6b:
	ld (bc), a                                                  ; $0d6b : $02
	or b                                                  ; $0d6c : $b0
	ld h, a                                                  ; $0d6d : $67
	cp c                                                  ; $0d6e : $b9
	ld (bc), a                                                  ; $0d6f : $02
	rst $08                                                  ; $0d70 : $cf
	or b                                                  ; $0d71 : $b0
	ld h, a                                                  ; $0d72 : $67
	ret pe                                                  ; $0d73 : $e8

	ld c, $af                                                  ; $0d74 : $0e, $af
	or b                                                  ; $0d76 : $b0
	ld l, b                                                  ; $0d77 : $68
	or b                                                  ; $0d78 : $b0
	ld l, b                                                  ; $0d79 : $68
	ret po                                                  ; $0d7a : $e0

	sbc a, (hl)                                                  ; $0d7b : $9e
	adc a, a                                                  ; $0d7c : $8f
	or b                                                  ; $0d7d : $b0
	ld l, b                                                  ; $0d7e : $68
	ret po                                                  ; $0d7f : $e0

	sbc a, (hl)                                                  ; $0d80 : $9e
	adc a, a                                                  ; $0d81 : $8f
	ld a, $0b                                                  ; $0d82 : $3e, $0b
	ld l, (hl)                                                  ; $0d84 : $6e
	dec d                                                  ; $0d85 : $15
	rst $18                                                  ; $0d86 : $df
	or b                                                  ; $0d87 : $b0
	ld l, b                                                  ; $0d88 : $68
	jp pe, $6cb0                                                  ; $0d89 : $ea, $b0, $6c
	ld ($6cb0), a                                                  ; $0d8c : $32, $b0, $6c
	inc a                                                  ; $0d8f : $3c
	or b                                                  ; $0d90 : $b0
	ld l, h                                                  ; $0d91 : $6c
	ld l, b                                                  ; $0d92 : $68
	rst $08                                                  ; $0d93 : $cf
	or b                                                  ; $0d94 : $b0
	ld (hl), e                                                  ; $0d95 : $73
	ld l, (hl)                                                  ; $0d96 : $6e
	dec d                                                  ; $0d97 : $15
	or b                                                  ; $0d98 : $b0
	add a, c                                                  ; $0d99 : $81
	ld d, e                                                  ; $0d9a : $53
	rst $08                                                  ; $0d9b : $cf
	or b                                                  ; $0d9c : $b0
	add a, c                                                  ; $0d9d : $81
	sbc a, e                                                  ; $0d9e : $9b

Call_03_0d9f:
	or b                                                  ; $0d9f : $b0
	or (hl)                                                  ; $0da0 : $b6
	ret nc                                                  ; $0da1 : $d0

	adc a, a                                                  ; $0da2 : $8f
	or b                                                  ; $0da3 : $b0
	sub $4e                                                  ; $0da4 : $d6, $4e
	xor a                                                  ; $0da6 : $af
	or b                                                  ; $0da7 : $b0

br_03_0da8:
	sub $98                                                  ; $0da8 : $d6, $98
	ld l, b                                                  ; $0daa : $68
	pop hl                                                  ; $0dab : $e1
	or e                                                  ; $0dac : $b3
	ld bc, $b35f                                                  ; $0dad : $01, $5f, $b3
	ld bc, $98d6                                                  ; $0db0 : $01, $d6, $98
	rst $08                                                  ; $0db3 : $cf
	or e                                                  ; $0db4 : $b3
	ld bc, $bcd9                                                  ; $0db5 : $01, $d9, $bc

Jump_03_0db8:
	or e                                                  ; $0db8 : $b3
	ld (bc), a                                                  ; $0db9 : $02
	or e                                                  ; $0dba : $b3
	ld (bc), a                                                  ; $0dbb : $02
	jp pe, $0eb3                                                  ; $0dbc : $ea, $b3, $0e
	djnz br_03_0d50                                                  ; $0dbf : $10, $8f
	or e                                                  ; $0dc1 : $b3
	ret po                                                  ; $0dc2 : $e0

	ld l, e                                                  ; $0dc3 : $6b
	push de                                                  ; $0dc4 : $d5
	or e                                                  ; $0dc5 : $b3
	djnz -$53                                                  ; $0dc6 : $10, $ad
	and $b3                                                  ; $0dc8 : $e6, $b3
	or e                                                  ; $0dca : $b3

Call_03_0dcb:
	inc de                                                  ; $0dcb : $13
	ld l, (hl)                                                  ; $0dcc : $6e

Jump_03_0dcd:
	ld (hl), e                                                  ; $0dcd : $73
	or e                                                  ; $0dce : $b3
	inc de                                                  ; $0dcf : $13
	ld l, (hl)                                                  ; $0dd0 : $6e
	ld (hl), e                                                  ; $0dd1 : $73
	cp a                                                  ; $0dd2 : $bf
	or e                                                  ; $0dd3 : $b3
	inc de                                                  ; $0dd4 : $13
	ld l, (hl)                                                  ; $0dd5 : $6e
	ld (hl), e                                                  ; $0dd6 : $73
	rst $08                                                  ; $0dd7 : $cf
	or e                                                  ; $0dd8 : $b3
	inc de                                                  ; $0dd9 : $13
	call z, $8f69                                                  ; $0dda : $cc, $69, $8f
	or e                                                  ; $0ddd : $b3
	inc de                                                  ; $0dde : $13
	call z, $736e                                                  ; $0ddf : $cc, $6e, $73
	or e                                                  ; $0de2 : $b3
	rla                                                  ; $0de3 : $17
	ld c, $40                                                  ; $0de4 : $0e, $40
	sub $98                                                  ; $0de6 : $d6, $98
	or e                                                  ; $0de8 : $b3
	add hl, de                                                  ; $0de9 : $19
	pop hl                                                  ; $0dea : $e1
	add a, (hl)                                                  ; $0deb : $86
	ex de, hl                                                  ; $0dec : $eb
	ld ($19b3), a                                                  ; $0ded : $32, $b3, $19
	adc a, h                                                  ; $0df0 : $8c
	in a, ($e6)                                                  ; $0df1 : $db, $e6
	dec e                                                  ; $0df3 : $1d
	ld l, c                                                  ; $0df4 : $69
	adc a, a                                                  ; $0df5 : $8f
	or e                                                  ; $0df6 : $b3
	add hl, de                                                  ; $0df7 : $19
	or d                                                  ; $0df8 : $b2
	or e                                                  ; $0df9 : $b3
	add hl, de                                                  ; $0dfa : $19
	rst $20                                                  ; $0dfb : $e7
	dec sp                                                  ; $0dfc : $3b
	jp pe, $2eb3                                                  ; $0dfd : $ea, $b3, $2e
	ld h, c                                                  ; $0e00 : $61

Call_03_0e01:
	ld ($32b3), a                                                  ; $0e01 : $32, $b3, $32
	or e                                                  ; $0e04 : $b3
	ld b, e                                                  ; $0e05 : $43
	cp a                                                  ; $0e06 : $bf
	or e                                                  ; $0e07 : $b3
	ld b, e                                                  ; $0e08 : $43
	cp h                                                  ; $0e09 : $bc

Jump_03_0e0a:
	or e                                                  ; $0e0a : $b3
	ld b, (hl)                                                  ; $0e0b : $46
	add a, (hl)                                                  ; $0e0c : $86

Jump_03_0e0d:
	adc a, (hl)                                                  ; $0e0d : $8e
	rra                                                  ; $0e0e : $1f
	or e                                                  ; $0e0f : $b3
	ld b, a                                                  ; $0e10 : $47
	ld sp, $b3df                                                  ; $0e11 : $31, $df, $b3
	ld b, a                                                  ; $0e14 : $47
	ld sp, $98d6                                                  ; $0e15 : $31, $d6, $98
	or e                                                  ; $0e18 : $b3

Call_03_0e19:
	ld c, c                                                  ; $0e19 : $49
	cp (hl)                                                  ; $0e1a : $be
	ld b, b                                                  ; $0e1b : $40
	sub $98                                                  ; $0e1c : $d6, $98
	or e                                                  ; $0e1e : $b3
	ld c, e                                                  ; $0e1f : $4b
	ld bc, $2fd3                                                  ; $0e20 : $01, $d3, $2f
	or e                                                  ; $0e23 : $b3
	ld c, e                                                  ; $0e24 : $4b
	ld bc, $98d6                                                  ; $0e25 : $01, $d6, $98
	or e                                                  ; $0e28 : $b3
	ld c, (hl)                                                  ; $0e29 : $4e
	ld h, e                                                  ; $0e2a : $63
	halt                                                  ; $0e2b : $76
	adc a, (hl)                                                  ; $0e2c : $8e
	rra                                                  ; $0e2d : $1f
	or e                                                  ; $0e2e : $b3
	ld c, (hl)                                                  ; $0e2f : $4e
	ld l, h                                                  ; $0e30 : $6c
	ccf                                                  ; $0e31 : $3f
	or e                                                  ; $0e32 : $b3
	ld c, (hl)                                                  ; $0e33 : $4e
	ld l, h                                                  ; $0e34 : $6c
	inc a                                                  ; $0e35 : $3c
	or e                                                  ; $0e36 : $b3
	pop hl                                                  ; $0e37 : $e1
	jr c, $3b                                                  ; $0e38 : $38, $3b

	dec c                                                  ; $0e3a : $0d
	ld l, c                                                  ; $0e3b : $69
	adc a, a                                                  ; $0e3c : $8f

Call_03_0e3d:
	or e                                                  ; $0e3d : $b3
	pop hl                                                  ; $0e3e : $e1
	ld l, c                                                  ; $0e3f : $69
	adc a, a                                                  ; $0e40 : $8f
	or e                                                  ; $0e41 : $b3
	pop hl                                                  ; $0e42 : $e1
	ld l, c                                                  ; $0e43 : $69
	adc a, h                                                  ; $0e44 : $8c
	or e                                                  ; $0e45 : $b3
	pop hl                                                  ; $0e46 : $e1
	cp c                                                  ; $0e47 : $b9
	ret pe                                                  ; $0e48 : $e8

	or e                                                  ; $0e49 : $b3
	pop hl                                                  ; $0e4a : $e1
	and $70                                                  ; $0e4b : $e6, $70
	out ($b3), a                                                  ; $0e4d : $d3, $b3
	jp po, $df31                                                  ; $0e4f : $e2, $31, $df
	or e                                                  ; $0e52 : $b3
	ld (hl), b                                                  ; $0e53 : $70
	out ($2f), a                                                  ; $0e54 : $d3, $2f
	or e                                                  ; $0e56 : $b3
	ld (hl), b                                                  ; $0e57 : $70
	sub $98                                                  ; $0e58 : $d6, $98
	push bc                                                  ; $0e5a : $c5
	ld l, d                                                  ; $0e5b : $6a
	or e                                                  ; $0e5c : $b3
	ld (hl), e                                                  ; $0e5d : $73
	inc c                                                  ; $0e5e : $0c
	inc a                                                  ; $0e5f : $3c
	or e                                                  ; $0e60 : $b3
	halt                                                  ; $0e61 : $76
	inc (hl)                                                  ; $0e62 : $34
	or e                                                  ; $0e63 : $b3
	halt                                                  ; $0e64 : $76
	pop hl                                                  ; $0e65 : $e1
	ld l, c                                                  ; $0e66 : $69
	adc a, a                                                  ; $0e67 : $8f

br_03_0e68:
	or e                                                  ; $0e68 : $b3
	halt                                                  ; $0e69 : $76
	pop hl                                                  ; $0e6a : $e1
	ld l, c                                                  ; $0e6b : $69
	and $cf                                                  ; $0e6c : $e6, $cf
	or e                                                  ; $0e6e : $b3
	call po, $8306                                                  ; $0e6f : $e4, $06, $83

br_03_0e72:
	cpl                                                  ; $0e72 : $2f
	or e                                                  ; $0e73 : $b3
	call po, $8c06                                                  ; $0e74 : $e4, $06, $8c

Jump_03_0e77:
	or e                                                  ; $0e77 : $b3
	call po, $709e                                                  ; $0e78 : $e4, $9e, $70
	ld a, a                                                  ; $0e7b : $7f
	or e                                                  ; $0e7c : $b3
	call po, $739e                                                  ; $0e7d : $e4, $9e, $73
	cpl                                                  ; $0e80 : $2f
	or e                                                  ; $0e81 : $b3
	add a, b                                                  ; $0e82 : $80
	ld l, h                                                  ; $0e83 : $6c
	ret nz                                                  ; $0e84 : $c0

	add a, c                                                  ; $0e85 : $81
	ccf                                                  ; $0e86 : $3f
	or e                                                  ; $0e87 : $b3
	and e                                                  ; $0e88 : $a3
	ld a, a                                                  ; $0e89 : $7f
	or e                                                  ; $0e8a : $b3

br_03_0e8b:
	and a                                                  ; $0e8b : $a7
	ld bc, $b33f                                                  ; $0e8c : $01, $3f, $b3
	xor e                                                  ; $0e8f : $ab
	inc a                                                  ; $0e90 : $3c
	jr c, br_03_0e72                                                  ; $0e91 : $38, $df

	or e                                                  ; $0e93 : $b3
	xor e                                                  ; $0e94 : $ab

Call_03_0e95:
	inc a                                                  ; $0e95 : $3c
	jr c, br_03_0e68                                                  ; $0e96 : $38, $d0

	sub $e7                                                  ; $0e98 : $d6, $e7
	ccf                                                  ; $0e9a : $3f
	or e                                                  ; $0e9b : $b3
	xor e                                                  ; $0e9c : $ab
	inc a                                                  ; $0e9d : $3c
	jr c, -$30                                                  ; $0e9e : $38, $d0

	sub $e7                                                  ; $0ea0 : $d6, $e7
	inc a                                                  ; $0ea2 : $3c

Call_03_0ea3:
	or e                                                  ; $0ea3 : $b3
	xor e                                                  ; $0ea4 : $ab
	inc a                                                  ; $0ea5 : $3c
	jr c, -$2a                                                  ; $0ea6 : $38, $d6

	adc a, (hl)                                                  ; $0ea8 : $8e
	rra                                                  ; $0ea9 : $1f
	or e                                                  ; $0eaa : $b3
	xor e                                                  ; $0eab : $ab
	inc a                                                  ; $0eac : $3c
	jr c, br_03_0e8b                                                  ; $0ead : $38, $dc

	or e                                                  ; $0eaf : $b3
	xor e                                                  ; $0eb0 : $ab
	sub d                                                  ; $0eb1 : $92
	and $1d                                                  ; $0eb2 : $e6, $1d
	ld l, c                                                  ; $0eb4 : $69
	adc a, a                                                  ; $0eb5 : $8f
	or e                                                  ; $0eb6 : $b3
	xor e                                                  ; $0eb7 : $ab
	sub d                                                  ; $0eb8 : $92
	and $1d                                                  ; $0eb9 : $e6, $1d
	ld l, (hl)                                                  ; $0ebb : $6e
	ld (hl), e                                                  ; $0ebc : $73
	or e                                                  ; $0ebd : $b3
	xor l                                                  ; $0ebe : $ad
	ld h, a                                                  ; $0ebf : $67
	ccf                                                  ; $0ec0 : $3f
	or e                                                  ; $0ec1 : $b3
	xor l                                                  ; $0ec2 : $ad
	ld h, a                                                  ; $0ec3 : $67
	inc a                                                  ; $0ec4 : $3c
	or e                                                  ; $0ec5 : $b3
	xor (hl)                                                  ; $0ec6 : $ae
	ld l, (hl)                                                  ; $0ec7 : $6e
	rlca                                                  ; $0ec8 : $07
	ld h, c                                                  ; $0ec9 : $61
	or e                                                  ; $0eca : $b3
	xor (hl)                                                  ; $0ecb : $ae
	ld l, (hl)                                                  ; $0ecc : $6e
	rlca                                                  ; $0ecd : $07
	ld h, c                                                  ; $0ece : $61
	rst $08                                                  ; $0ecf : $cf
	or e                                                  ; $0ed0 : $b3
	push hl                                                  ; $0ed1 : $e5
	and $6b                                                  ; $0ed2 : $e6, $6b
	ld ($c3b3), a                                                  ; $0ed4 : $32, $b3, $c3
	cp (hl)                                                  ; $0ed7 : $be
	ld (hl), b                                                  ; $0ed8 : $70
	sub $98                                                  ; $0ed9 : $d6, $98

Call_03_0edb:
	rst $08                                                  ; $0edb : $cf
	or e                                                  ; $0edc : $b3
	jp $79be                                                  ; $0edd : $c3, $be, $79


	ld l, e                                                  ; $0ee0 : $6b
	or e                                                  ; $0ee1 : $b3
	add a, $23                                                  ; $0ee2 : $c6, $23

Call_03_0ee4:
	adc a, l                                                  ; $0ee4 : $8d
	rst $08                                                  ; $0ee5 : $cf
	or e                                                  ; $0ee6 : $b3
	add a, $e1                                                  ; $0ee7 : $c6, $e1
	adc a, a                                                  ; $0ee9 : $8f
	or e                                                  ; $0eea : $b3
	add a, $cd                                                  ; $0eeb : $c6, $cd
	ex af, af'                                                  ; $0eed : $08
	inc de                                                  ; $0eee : $13
	or e                                                  ; $0eef : $b3
	add a, $cd                                                  ; $0ef0 : $c6, $cd
	sbc a, e                                                  ; $0ef2 : $9b

Call_03_0ef3:
	or e                                                  ; $0ef3 : $b3
	ret                                                  ; $0ef4 : $c9


	and $b1                                                  ; $0ef5 : $e6, $b1
	ccf                                                  ; $0ef7 : $3f
	or e                                                  ; $0ef8 : $b3
	ret                                                  ; $0ef9 : $c9


	and $b1                                                  ; $0efa : $e6, $b1
	inc a                                                  ; $0efc : $3c
	or e                                                  ; $0efd : $b3
	jp z, Jump_03_0d6b                                                  ; $0efe : $ca, $6b, $0d
	ld l, c                                                  ; $0f01 : $69

Call_03_0f02:
	adc a, a                                                  ; $0f02 : $8f
	or e                                                  ; $0f03 : $b3
	jp z, Jump_03_0d6b                                                  ; $0f04 : $ca, $6b, $0d
	sbc a, e                                                  ; $0f07 : $9b
	jp pe, $cab3                                                  ; $0f08 : $ea, $b3, $ca
	sbc a, b                                                  ; $0f0b : $98
	inc l                                                  ; $0f0c : $2c
	or e                                                  ; $0f0d : $b3
	jp z, $c698                                                  ; $0f0e : $ca, $98, $c6
	ret po                                                  ; $0f11 : $e0

	ld (hl), e                                                  ; $0f12 : $73
	or e                                                  ; $0f13 : $b3
	call $6b0e                                                  ; $0f14 : $cd, $0e, $6b
	ex af, af'                                                  ; $0f17 : $08
	rst $18                                                  ; $0f18 : $df
	or e                                                  ; $0f19 : $b3
	call $689b                                                  ; $0f1a : $cd, $9b, $68
	pop hl                                                  ; $0f1d : $e1
	or e                                                  ; $0f1e : $b3
	adc a, $67                                                  ; $0f1f : $ce, $67
	call c, $deb3                                                  ; $0f21 : $dc, $b3, $de
	ld l, e                                                  ; $0f24 : $6b
	add a, (hl)                                                  ; $0f25 : $86
	adc a, (hl)                                                  ; $0f26 : $8e
	rra                                                  ; $0f27 : $1f
	or e                                                  ; $0f28 : $b3
	and $c3                                                  ; $0f29 : $e6, $c3
	cpl                                                  ; $0f2b : $2f
	or e                                                  ; $0f2c : $b3
	rst $20                                                  ; $0f2d : $e7
	call pe, Call_03_0ef3                                                  ; $0f2e : $ec, $f3, $0e
	inc bc                                                  ; $0f31 : $03

br_03_0f32:
	cp b                                                  ; $0f32 : $b8
	dec c                                                  ; $0f33 : $0d
	ld e, (hl)                                                  ; $0f34 : $5e
	xor a                                                  ; $0f35 : $af
	or e                                                  ; $0f36 : $b3
	rst $20                                                  ; $0f37 : $e7
	dec sp                                                  ; $0f38 : $3b
	ccf                                                  ; $0f39 : $3f
	or e                                                  ; $0f3a : $b3
	rst $20                                                  ; $0f3b : $e7
	ld l, (hl)                                                  ; $0f3c : $6e
	ld (hl), b                                                  ; $0f3d : $70
	ld a, a                                                  ; $0f3e : $7f
	or e                                                  ; $0f3f : $b3
	rst $20                                                  ; $0f40 : $e7
	sub a                                                  ; $0f41 : $97
	and $d6                                                  ; $0f42 : $e6, $d6
	sbc a, b                                                  ; $0f44 : $98
	or e                                                  ; $0f45 : $b3
	rst $20                                                  ; $0f46 : $e7
	sub a                                                  ; $0f47 : $97

Jump_03_0f48:
	and $d6                                                  ; $0f48 : $e6, $d6
	sbc a, b                                                  ; $0f4a : $98
	dec bc                                                  ; $0f4b : $0b
	jp pe, $e7b3                                                  ; $0f4c : $ea, $b3, $e7
	sub a                                                  ; $0f4f : $97

Call_03_0f50:
	and $d6                                                  ; $0f50 : $e6, $d6
	sbc a, b                                                  ; $0f52 : $98
	dec bc                                                  ; $0f53 : $0b
	jp pe, $e8f3                                                  ; $0f54 : $ea, $f3, $e8
	dec bc                                                  ; $0f57 : $0b
	or e                                                  ; $0f58 : $b3
	rst $20                                                  ; $0f59 : $e7
	sub a                                                  ; $0f5a : $97
	and $d6                                                  ; $0f5b : $e6, $d6

Call_03_0f5d:
	sbc a, b                                                  ; $0f5d : $98
	rst $08                                                  ; $0f5e : $cf
	or e                                                  ; $0f5f : $b3
	rst $20                                                  ; $0f60 : $e7
	sub a                                                  ; $0f61 : $97
	rst $20                                                  ; $0f62 : $e7

Jump_03_0f63:
	ccf                                                  ; $0f63 : $3f
	or e                                                  ; $0f64 : $b3
	jp (hl)                                                  ; $0f65 : $e9


	or l                                                  ; $0f66 : $b5
	sub d                                                  ; $0f67 : $92
	ccf                                                  ; $0f68 : $3f
	ld (hl), $c7                                                  ; $0f69 : $36, $c7
	ex af, af'                                                  ; $0f6b : $08
	cpl                                                  ; $0f6c : $2f
	or l                                                  ; $0f6d : $b5
	sub d                                                  ; $0f6e : $92
	inc a                                                  ; $0f6f : $3c
	ld h, b                                                  ; $0f70 : $60
	or l                                                  ; $0f71 : $b5
	jp pe, $e4d5                                                  ; $0f72 : $ea, $d5, $e4
	ld h, c                                                  ; $0f75 : $61
	or (hl)                                                  ; $0f76 : $b6
	ret po                                                  ; $0f77 : $e0

	rst $08                                                  ; $0f78 : $cf
	or (hl)                                                  ; $0f79 : $b6
	dec d                                                  ; $0f7a : $15
	dec bc                                                  ; $0f7b : $0b
	cpl                                                  ; $0f7c : $2f
	ld a, $0e                                                  ; $0f7d : $3e, $0e
	xor e                                                  ; $0f7f : $ab
	cpl                                                  ; $0f80 : $2f
	or (hl)                                                  ; $0f81 : $b6
	dec d                                                  ; $0f82 : $15
	dec bc                                                  ; $0f83 : $0b
	cpl                                                  ; $0f84 : $2f
	jr c, $6e                                                  ; $0f85 : $38, $6e

	sbc a, c                                                  ; $0f87 : $99
	adc a, a                                                  ; $0f88 : $8f
	or (hl)                                                  ; $0f89 : $b6
	dec d                                                  ; $0f8a : $15
	call po, Call_03_2f98                                                  ; $0f8b : $e4, $98, $2f
	or (hl)                                                  ; $0f8e : $b6
	dec d                                                  ; $0f8f : $15
	out ($bf), a                                                  ; $0f90 : $d3, $bf
	inc a                                                  ; $0f92 : $3c
	djnz br_03_1008                                                  ; $0f93 : $10, $73
	or (hl)                                                  ; $0f95 : $b6
	inc hl                                                  ; $0f96 : $23
	or (hl)                                                  ; $0f97 : $b6
	ld l, $13                                                  ; $0f98 : $2e, $13
	or (hl)                                                  ; $0f9a : $b6
	ld l, $13                                                  ; $0f9b : $2e, $13
	rst $08                                                  ; $0f9d : $cf
	or (hl)                                                  ; $0f9e : $b6
	pop hl                                                  ; $0f9f : $e1
	ld e, l                                                  ; $0fa0 : $5d
	or (hl)                                                  ; $0fa1 : $b6

Call_03_0fa2:
	pop hl                                                  ; $0fa2 : $e1
	ld e, l                                                  ; $0fa3 : $5d
	rst $08                                                  ; $0fa4 : $cf
	or (hl)                                                  ; $0fa5 : $b6

Call_03_0fa6:
	adc a, (hl)                                                  ; $0fa6 : $8e
	inc e                                                  ; $0fa7 : $1c
	or (hl)                                                  ; $0fa8 : $b6
	sbc a, a                                                  ; $0fa9 : $9f
	ld ($3e3f), a                                                  ; $0faa : $32, $3f, $3e
	jr nz, br_03_0f32                                                  ; $0fad : $20, $83

	ld l, c                                                  ; $0faf : $69
	or (hl)                                                  ; $0fb0 : $b6
	sbc a, a                                                  ; $0fb1 : $9f
	ld a, $1b                                                  ; $0fb2 : $3e, $1b
	ex af, af'                                                  ; $0fb4 : $08
	inc hl                                                  ; $0fb5 : $23
	or (hl)                                                  ; $0fb6 : $b6
	sbc a, l                                                  ; $0fb7 : $9d
	or (hl)                                                  ; $0fb8 : $b6
	jp $c6b6                                                  ; $0fb9 : $c3, $b6, $c6


	adc a, (hl)                                                  ; $0fbc : $8e
	rra                                                  ; $0fbd : $1f
	or (hl)                                                  ; $0fbe : $b6
	rst $20                                                  ; $0fbf : $e7
	ld h, e                                                  ; $0fc0 : $63
	or b                                                  ; $0fc1 : $b0
	cp c                                                  ; $0fc2 : $b9
	ld (bc), a                                                  ; $0fc3 : $02
	cp c                                                  ; $0fc4 : $b9
	ex af, af'                                                  ; $0fc5 : $08
	sbc a, (hl)                                                  ; $0fc6 : $9e
	inc sp                                                  ; $0fc7 : $33
	cp c                                                  ; $0fc8 : $b9
	ret po                                                  ; $0fc9 : $e0

	dec sp                                                  ; $0fca : $3b
	rst $18                                                  ; $0fcb : $df
	cp c                                                  ; $0fcc : $b9
	ret po                                                  ; $0fcd : $e0

	dec sp                                                  ; $0fce : $3b
	rst $18                                                  ; $0fcf : $df
	inc sp                                                  ; $0fd0 : $33
	call pe, $73f3                                                  ; $0fd1 : $ec, $f3, $73
	ccf                                                  ; $0fd4 : $3f
	cp c                                                  ; $0fd5 : $b9
	ret po                                                  ; $0fd6 : $e0

	dec sp                                                  ; $0fd7 : $3b
	rst $18                                                  ; $0fd8 : $df
	inc (hl)                                                  ; $0fd9 : $34
	and $7d                                                  ; $0fda : $e6, $7d
	sbc a, b                                                  ; $0fdc : $98
	cp c                                                  ; $0fdd : $b9
	ret po                                                  ; $0fde : $e0

	dec sp                                                  ; $0fdf : $3b
	rst $18                                                  ; $0fe0 : $df
	dec (hl)                                                  ; $0fe1 : $35
	sbc a, c                                                  ; $0fe2 : $99
	ex (sp), hl                                                  ; $0fe3 : $e3
	ccf                                                  ; $0fe4 : $3f
	cp c                                                  ; $0fe5 : $b9
	ret po                                                  ; $0fe6 : $e0

	ld l, b                                                  ; $0fe7 : $68
	cp c                                                  ; $0fe8 : $b9
	ret po                                                  ; $0fe9 : $e0

	ld l, b                                                  ; $0fea : $68
	di                                                  ; $0feb : $f3
	ld e, c                                                  ; $0fec : $59
	sub d                                                  ; $0fed : $92
	cp c                                                  ; $0fee : $b9
	ld e, $3f                                                  ; $0fef : $1e, $3f
	cp c                                                  ; $0ff1 : $b9
	ld e, $3f                                                  ; $0ff2 : $1e, $3f
	ld a, ($8d06)                                                  ; $0ff4 : $3a, $06, $8d
	ld l, b                                                  ; $0ff7 : $68
	pop hl                                                  ; $0ff8 : $e1
	rst $08                                                  ; $0ff9 : $cf
	cp c                                                  ; $0ffa : $b9
	ld e, $33                                                  ; $0ffb : $1e, $33
	rst $18                                                  ; $0ffd : $df
	cp c                                                  ; $0ffe : $b9
	ld e, $36                                                  ; $0fff : $1e, $36
	inc a                                                  ; $1001 : $3c
	cp c                                                  ; $1002 : $b9
	ld e, $3c                                                  ; $1003 : $1e, $3c
	cp c                                                  ; $1005 : $b9
	ld e, $3e                                                  ; $1006 : $1e, $3e

br_03_1008:
	xor a                                                  ; $1008 : $af
	cp c                                                  ; $1009 : $b9
	ld e, $3e                                                  ; $100a : $1e, $3e
	xor a                                                  ; $100c : $af
	ld a, $49                                                  ; $100d : $3e, $49
	and $8d                                                  ; $100f : $e6, $8d
	ld b, $8c                                                  ; $1011 : $06, $8c
	cp c                                                  ; $1013 : $b9
	cpl                                                  ; $1014 : $2f
	cp c                                                  ; $1015 : $b9
	inc l                                                  ; $1016 : $2c
	cp c                                                  ; $1017 : $b9
	ld (hl), e                                                  ; $1018 : $73

Jump_03_1019:
	jp (hl)                                                  ; $1019 : $e9


	cp c                                                  ; $101a : $b9
	call po, $b908                                                  ; $101b : $e4, $08, $b9
	call po, $9e08                                                  ; $101e : $e4, $08, $9e
	ld a, h                                                  ; $1021 : $7c
	cp c                                                  ; $1022 : $b9
	call po, $b93f                                                  ; $1023 : $e4, $3f, $b9
	sbc a, h                                                  ; $1026 : $9c
	ld a, $73                                                  ; $1027 : $3e, $73
	ld a, l                                                  ; $1029 : $7d
	cp c                                                  ; $102a : $b9
	sbc a, h                                                  ; $102b : $9c
	ld a, $73                                                  ; $102c : $3e, $73
	ld a, l                                                  ; $102e : $7d
	ret p                                                  ; $102f : $f0

	rst $08                                                  ; $1030 : $cf
	cp c                                                  ; $1031 : $b9
	and e                                                  ; $1032 : $a3
	cp c                                                  ; $1033 : $b9
	jp $0be4                                                  ; $1034 : $c3, $e4, $0b


	jp pe, $c3b9                                                  ; $1037 : $ea, $b9, $c3
	rst $08                                                  ; $103a : $cf
	cp c                                                  ; $103b : $b9
	call z, $d0b9                                                  ; $103c : $cc, $b9, $d0
	or (hl)                                                  ; $103f : $b6
	ex af, af'                                                  ; $1040 : $08
	cp c                                                  ; $1041 : $b9
	ret pe                                                  ; $1042 : $e8

	ld (hl), b                                                  ; $1043 : $70
	add a, d                                                  ; $1044 : $82
	di                                                  ; $1045 : $f3
	ld d, (hl)                                                  ; $1046 : $56
	ld (hl), a                                                  ; $1047 : $77
	cp (hl)                                                  ; $1048 : $be
	ld l, (hl)                                                  ; $1049 : $6e
	ld c, $03                                                  ; $104a : $0e, $03
	cpl                                                  ; $104c : $2f
	cp (hl)                                                  ; $104d : $be
	ld l, (hl)                                                  ; $104e : $6e
	ld c, $03                                                  ; $104f : $0e, $03
	cp a                                                  ; $1051 : $bf
	cp (hl)                                                  ; $1052 : $be
	ld l, (hl)                                                  ; $1053 : $6e
	ld c, $06                                                  ; $1054 : $0e, $06
	adc a, (hl)                                                  ; $1056 : $8e
	rra                                                  ; $1057 : $1f
	cp (hl)                                                  ; $1058 : $be
	ld l, (hl)                                                  ; $1059 : $6e
	ld c, $af                                                  ; $105a : $0e, $af
	cp (hl)                                                  ; $105c : $be
	ld l, (hl)                                                  ; $105d : $6e
	ld e, $0e                                                  ; $105e : $1e, $0e
	xor a                                                  ; $1060 : $af
	cp (hl)                                                  ; $1061 : $be
	ld h, a                                                  ; $1062 : $67
	dec sp                                                  ; $1063 : $3b
	cp (hl)                                                  ; $1064 : $be
	ld l, (hl)                                                  ; $1065 : $6e
	ld b, b                                                  ; $1066 : $40
	add a, (hl)                                                  ; $1067 : $86
	rrca                                                  ; $1068 : $0f
	cp (hl)                                                  ; $1069 : $be
	ld l, (hl)                                                  ; $106a : $6e
	ld b, (hl)                                                  ; $106b : $46
	add a, b                                                  ; $106c : $80
	out ($be), a                                                  ; $106d : $d3, $be
	ld l, b                                                  ; $106f : $68
	cp (hl)                                                  ; $1070 : $be
	ld l, b                                                  ; $1071 : $68
	ld c, $80                                                  ; $1072 : $0e, $80
	jp pe, $68be                                                  ; $1074 : $ea, $be, $68
	rst $08                                                  ; $1077 : $cf
	cp (hl)                                                  ; $1078 : $be
	ld l, h                                                  ; $1079 : $6c
	ld d, e                                                  ; $107a : $53
	rst $08                                                  ; $107b : $cf
	cp (hl)                                                  ; $107c : $be
	ld l, h                                                  ; $107d : $6c
	add a, $08                                                  ; $107e : $c6, $08
	adc a, $cf                                                  ; $1080 : $ce, $cf
	ld a, $49                                                  ; $1082 : $3e, $49
	adc a, l                                                  ; $1084 : $8d
	or e                                                  ; $1085 : $b3
	rlca                                                  ; $1086 : $07
	ret nz                                                  ; $1087 : $c0

	ld c, $0f                                                  ; $1088 : $0e, $0f
	ret nz                                                  ; $108a : $c0

	ld b, e                                                  ; $108b : $43
	ret nz                                                  ; $108c : $c0

	ld b, e                                                  ; $108d : $43
	sbc a, $af                                                  ; $108e : $de, $af
	ret nz                                                  ; $1090 : $c0

	pop hl                                                  ; $1091 : $e1
	inc c                                                  ; $1092 : $0c
	ret nz                                                  ; $1093 : $c0

	pop hl                                                  ; $1094 : $e1
	ccf                                                  ; $1095 : $3f
	ret nz                                                  ; $1096 : $c0

	ld d, b                                                  ; $1097 : $50
	or b                                                  ; $1098 : $b0
	ret nz                                                  ; $1099 : $c0

	ld d, e                                                  ; $109a : $53
	ld a, a                                                  ; $109b : $7f
	ret nz                                                  ; $109c : $c0

	ld h, d                                                  ; $109d : $62
	ret nz                                                  ; $109e : $c0

	ld l, (hl)                                                  ; $109f : $6e
	add hl, de                                                  ; $10a0 : $19
	adc a, a                                                  ; $10a1 : $8f
	ret nz                                                  ; $10a2 : $c0

	ld h, a                                                  ; $10a3 : $67
	ret nz                                                  ; $10a4 : $c0

	ld h, a                                                  ; $10a5 : $67
	ld ($73c0), a                                                  ; $10a6 : $32, $c0, $73
	ret nz                                                  ; $10a9 : $c0

	halt                                                  ; $10aa : $76
	rst $20                                                  ; $10ab : $e7
	rrca                                                  ; $10ac : $0f
	ret nz                                                  ; $10ad : $c0

	ld (hl), a                                                  ; $10ae : $77
	jp pe, $b6f3                                                  ; $10af : $ea, $f3, $b6
	inc hl                                                  ; $10b2 : $23
	ret nz                                                  ; $10b3 : $c0

	ld a, l                                                  ; $10b4 : $7d
	ret nz                                                  ; $10b5 : $c0

	ld a, l                                                  ; $10b6 : $7d
	di                                                  ; $10b7 : $f3
	ld (hl), b                                                  ; $10b8 : $70
	ex (sp), hl                                                  ; $10b9 : $e3
	ccf                                                  ; $10ba : $3f
	ld sp, $ea6d                                                  ; $10bb : $31, $6d, $ea
	ret nz                                                  ; $10be : $c0

	ld a, l                                                  ; $10bf : $7d
	jp pe, $7ec0                                                  ; $10c0 : $ea, $c0, $7e
	ld l, l                                                  ; $10c3 : $6d
	dec c                                                  ; $10c4 : $0d
	sbc a, e                                                  ; $10c5 : $9b
	ld h, b                                                  ; $10c6 : $60
	adc a, a                                                  ; $10c7 : $8f
	ret nz                                                  ; $10c8 : $c0

	call po, $c03f                                                  ; $10c9 : $e4, $3f, $c0
	adc a, a                                                  ; $10cc : $8f
	ld ($e163), a                                                  ; $10cd : $32, $63, $e1
	sbc a, a                                                  ; $10d0 : $9f
	ret nz                                                  ; $10d1 : $c0

	adc a, a                                                  ; $10d2 : $8f
	inc (hl)                                                  ; $10d3 : $34
	or b                                                  ; $10d4 : $b0
	add a, c                                                  ; $10d5 : $81
	ld l, h                                                  ; $10d6 : $6c
	add hl, de                                                  ; $10d7 : $19
	ret nz                                                  ; $10d8 : $c0

	adc a, a                                                  ; $10d9 : $8f
	inc (hl)                                                  ; $10da : $34
	or b                                                  ; $10db : $b0
	add a, c                                                  ; $10dc : $81
	ld l, h                                                  ; $10dd : $6c
	add hl, de                                                  ; $10de : $19
	di                                                  ; $10df : $f3
	ret po                                                  ; $10e0 : $e0

	ld c, $af                                                  ; $10e1 : $0e, $af
	ret nz                                                  ; $10e3 : $c0

	adc a, a                                                  ; $10e4 : $8f
	ld a, $40                                                  ; $10e5 : $3e, $40
	or (hl)                                                  ; $10e7 : $b6
	adc a, c                                                  ; $10e8 : $89
	ret nz                                                  ; $10e9 : $c0

	add a, d                                                  ; $10ea : $82
	ret nz                                                  ; $10eb : $c0

	add a, d                                                  ; $10ec : $82
	ld d, (hl)                                                  ; $10ed : $56
	ret nz                                                  ; $10ee : $c0

	add a, d                                                  ; $10ef : $82
	jp pe, $8cc0                                                  ; $10f0 : $ea, $c0, $8c
	ex (sp), hl                                                  ; $10f3 : $e3
	or (hl)                                                  ; $10f4 : $b6
	rst $18                                                  ; $10f5 : $df
	ret nz                                                  ; $10f6 : $c0

	adc a, l                                                  ; $10f7 : $8d
	rrca                                                  ; $10f8 : $0f
	inc (hl)                                                  ; $10f9 : $34
	ccf                                                  ; $10fa : $3f
	ret nz                                                  ; $10fb : $c0

	sbc a, a                                                  ; $10fc : $9f
	ld a, ($670e)                                                  ; $10fd : $3a, $0e, $67
	sbc a, a                                                  ; $1100 : $9f
	ret nz                                                  ; $1101 : $c0

	or b                                                  ; $1102 : $b0
	ret nz                                                  ; $1103 : $c0

	or b                                                  ; $1104 : $b0
	exx                                                  ; $1105 : $d9
	pop hl                                                  ; $1106 : $e1
	rrca                                                  ; $1107 : $0f
	ret nz                                                  ; $1108 : $c0

	cp c                                                  ; $1109 : $b9
	adc a, (hl)                                                  ; $110a : $8e
	rra                                                  ; $110b : $1f
	ret nz                                                  ; $110c : $c0

	adc a, $30                                                  ; $110d : $ce, $30
	pop de                                                  ; $110f : $d1
	ld d, e                                                  ; $1110 : $53
	ret pe                                                  ; $1111 : $e8

	ex af, af'                                                  ; $1112 : $08
	ret nz                                                  ; $1113 : $c0

	out ($77), a                                                  ; $1114 : $d3, $77
	ld l, l                                                  ; $1116 : $6d
	ccf                                                  ; $1117 : $3f
	ret nz                                                  ; $1118 : $c0

	sbc a, $6b                                                  ; $1119 : $de, $6b
	dec c                                                  ; $111b : $0d
	ld ($dec0), a                                                  ; $111c : $32, $c0, $de
	ld l, e                                                  ; $111f : $6b
	adc a, a                                                  ; $1120 : $8f
	ret nz                                                  ; $1121 : $c0

	and $26                                                  ; $1122 : $e6, $26
	ret nz                                                  ; $1124 : $c0

	and $26                                                  ; $1125 : $e6, $26
	di                                                  ; $1127 : $f3
	dec bc                                                  ; $1128 : $0b
	ld c, $06                                                  ; $1129 : $0e, $06
	rrca                                                  ; $112b : $0f
	ret nz                                                  ; $112c : $c0

	rst $20                                                  ; $112d : $e7
	ccf                                                  ; $112e : $3f
	ret nz                                                  ; $112f : $c0

	jp pe, $eac0                                                  ; $1130 : $ea, $c0, $ea
	rst $08                                                  ; $1133 : $cf
	pop bc                                                  ; $1134 : $c1
	rlca                                                  ; $1135 : $07
	ccf                                                  ; $1136 : $3f
	pop bc                                                  ; $1137 : $c1
	ex af, af'                                                  ; $1138 : $08
	ld h, $80                                                  ; $1139 : $26, $80
	rst $20                                                  ; $113b : $e7
	ld h, b                                                  ; $113c : $60
	pop bc                                                  ; $113d : $c1
	ex af, af'                                                  ; $113e : $08
	ld h, $80                                                  ; $113f : $26, $80
	rst $20                                                  ; $1141 : $e7
	ld h, b                                                  ; $1142 : $60
	adc a, a                                                  ; $1143 : $8f
	pop bc                                                  ; $1144 : $c1
	dec c                                                  ; $1145 : $0d
	out ($bc), a                                                  ; $1146 : $d3, $bc
	pop bc                                                  ; $1148 : $c1
	ld c, $73                                                  ; $1149 : $0e, $73
	adc a, (hl)                                                  ; $114b : $8e
	inc de                                                  ; $114c : $13
	cp a                                                  ; $114d : $bf
	pop bc                                                  ; $114e : $c1
	ld c, $73                                                  ; $114f : $0e, $73
	adc a, (hl)                                                  ; $1151 : $8e
	inc de                                                  ; $1152 : $13
	cp h                                                  ; $1153 : $bc
	pop bc                                                  ; $1154 : $c1
	ld e, c                                                  ; $1155 : $59
	sub a                                                  ; $1156 : $97
	pop bc                                                  ; $1157 : $c1
	ld e, c                                                  ; $1158 : $59
	sub a                                                  ; $1159 : $97
	rst $08                                                  ; $115a : $cf
	pop bc                                                  ; $115b : $c1
	ld h, e                                                  ; $115c : $63
	add a, c                                                  ; $115d : $81
	ccf                                                  ; $115e : $3f
	pop bc                                                  ; $115f : $c1
	ld h, e                                                  ; $1160 : $63
	adc a, l                                                  ; $1161 : $8d
	ld h, h                                                  ; $1162 : $64
	ld h, c                                                  ; $1163 : $61
	pop bc                                                  ; $1164 : $c1
	ld h, e                                                  ; $1165 : $63
	adc a, l                                                  ; $1166 : $8d
	ld h, h                                                  ; $1167 : $64
	ld h, c                                                  ; $1168 : $61
	di                                                  ; $1169 : $f3
	call po, $593d                                                  ; $116a : $e4, $3d, $59
	cpl                                                  ; $116d : $2f
	pop bc                                                  ; $116e : $c1
	ld h, e                                                  ; $116f : $63
	adc a, l                                                  ; $1170 : $8d
	ld l, h                                                  ; $1171 : $6c
	rst $18                                                  ; $1172 : $df
	pop bc                                                  ; $1173 : $c1
	ld h, e                                                  ; $1174 : $63
	adc a, l                                                  ; $1175 : $8d

Jump_03_1176:
	ld l, h                                                  ; $1176 : $6c
	call c, $9bc1                                                  ; $1177 : $dc, $c1, $9b
	ccf                                                  ; $117a : $3f
	pop bc                                                  ; $117b : $c1
	sbc a, e                                                  ; $117c : $9b
	ld a, $09                                                  ; $117d : $3e, $09
	dec bc                                                  ; $117f : $0b
	cpl                                                  ; $1180 : $2f
	pop bc                                                  ; $1181 : $c1
	sbc a, l                                                  ; $1182 : $9d

Call_03_1183:
	ld (hl), b                                                  ; $1183 : $70
	add a, d                                                  ; $1184 : $82
	pop bc                                                  ; $1185 : $c1
	sbc a, l                                                  ; $1186 : $9d
	rst $08                                                  ; $1187 : $cf
	pop bc                                                  ; $1188 : $c1
	or b                                                  ; $1189 : $b0
	and e                                                  ; $118a : $a3
	rst $08                                                  ; $118b : $cf
	jp $c30f                                                  ; $118c : $c3, $0f, $c3


	rrca                                                  ; $118f : $0f
	scf                                                  ; $1190 : $37
	ld a, $73                                                  ; $1191 : $3e, $73
	ld a, a                                                  ; $1193 : $7f
	jp $9001                                                  ; $1194 : $c3, $01, $90


	call $0bc3                                                  ; $1197 : $cd, $c3, $0b
	dec d                                                  ; $119a : $15
	ld ($0bc3), a                                                  ; $119b : $32, $c3, $0b
	rst $08                                                  ; $119e : $cf
	jp $c30c                                                  ; $119f : $c3, $0c, $c3


	inc c                                                  ; $11a2 : $0c
	sbc a, b                                                  ; $11a3 : $98
	rst $08                                                  ; $11a4 : $cf
	jp $c30d                                                  ; $11a5 : $c3, $0d, $c3


	inc de                                                  ; $11a8 : $13
	inc hl                                                  ; $11a9 : $23
	cpl                                                  ; $11aa : $2f
	jp $8219                                                  ; $11ab : $c3, $19, $82


	jp $8219                                                  ; $11ae : $c3, $19, $82


	dec bc                                                  ; $11b1 : $0b
	jp pe, Jump_03_1bc3                                                  ; $11b2 : $ea, $c3, $1b
	dec a                                                  ; $11b5 : $3d
	dec bc                                                  ; $11b6 : $0b

br_03_11b7:
	ld h, e                                                  ; $11b7 : $63
	rst $08                                                  ; $11b8 : $cf
	jp Jump_03_3d1b                                                  ; $11b9 : $c3, $1b, $3d


	dec bc                                                  ; $11bc : $0b
	jp pe, Jump_03_1bc3                                                  ; $11bd : $ea, $c3, $1b
	dec a                                                  ; $11c0 : $3d

br_03_11c1:
	dec bc                                                  ; $11c1 : $0b
	jp pe, $94f3                                                  ; $11c2 : $ea, $f3, $94
	di                                                  ; $11c5 : $f3
	inc hl                                                  ; $11c6 : $23
	ld b, e                                                  ; $11c7 : $43
	adc a, h                                                  ; $11c8 : $8c
	ccf                                                  ; $11c9 : $3f
	jp Jump_03_3d1b                                                  ; $11ca : $c3, $1b, $3d


	dec bc                                                  ; $11cd : $0b
	jp pe, $94f3                                                  ; $11ce : $ea, $f3, $94
	di                                                  ; $11d1 : $f3
	call Call_03_3f0d                                                  ; $11d2 : $cd, $0d, $3f
	jp $691d                                                  ; $11d5 : $c3, $1d, $69


	adc a, a                                                  ; $11d8 : $8f
	jp $691d                                                  ; $11d9 : $c3, $1d, $69


	adc a, h                                                  ; $11dc : $8c
	jp $e426                                                  ; $11dd : $c3, $26, $e4


	jr c, br_03_11c1                                                  ; $11e0 : $38, $df

Jump_03_11e2:
	jp $e426                                                  ; $11e2 : $c3, $26, $e4


	jr c, br_03_11b7                                                  ; $11e5 : $38, $d0

	cp (hl)                                                  ; $11e7 : $be
	xor a                                                  ; $11e8 : $af

Jump_03_11e9:
	jp $cf32                                                  ; $11e9 : $c3, $32, $cf


	jp $8e36                                                  ; $11ec : $c3, $36, $8e


	rra                                                  ; $11ef : $1f
	jp Jump_03_363e                                                  ; $11f0 : $c3, $3e, $36


	adc a, (hl)                                                  ; $11f3 : $8e
	rra                                                  ; $11f4 : $1f
	jp $b3e1                                                  ; $11f5 : $c3, $e1, $b3


	pop hl                                                  ; $11f8 : $e1
	dec c                                                  ; $11f9 : $0d
	ld l, c                                                  ; $11fa : $69
	adc a, a                                                  ; $11fb : $8f
	jp $3f68                                                  ; $11fc : $c3, $68, $3f


	jp $e46c                                                  ; $11ff : $c3, $6c, $e4


	sbc a, (hl)                                                  ; $1202 : $9e
	dec de                                                  ; $1203 : $1b
	ld a, (bc)                                                  ; $1204 : $0a
	ld e, a                                                  ; $1205 : $5f
	jp $c377                                                  ; $1206 : $c3, $77, $c3


	call po, $ea6e                                                  ; $1209 : $e4, $6e, $ea
	dec sp                                                  ; $120c : $3b
	call po, $e030                                                  ; $120d : $e4, $30, $e0

Call_03_1210:
	ld (hl), e                                                  ; $1210 : $73
	jp $d380                                                  ; $1211 : $c3, $80, $d3


	jp $d980                                                  ; $1214 : $c3, $80, $d9


	cp a                                                  ; $1217 : $bf
	jp $d980                                                  ; $1218 : $c3, $80, $d9


	cp h                                                  ; $121b : $bc
	jp Jump_03_3f8c                                                  ; $121c : $c3, $8c, $3f


	jp Jump_03_3c8c                                                  ; $121f : $c3, $8c, $3c


	jp $c38d                                                  ; $1222 : $c3, $8d, $c3


	and b                                                  ; $1225 : $a0
	or b                                                  ; $1226 : $b0
	out ($c3), a                                                  ; $1227 : $d3, $c3
	and b                                                  ; $1229 : $a0
	or b                                                  ; $122a : $b0
	out ($2f), a                                                  ; $122b : $d3, $2f
	jp $b0a0                                                  ; $122d : $c3, $a0, $b0


	out ($cf), a                                                  ; $1230 : $d3, $cf
	jp $b0a0                                                  ; $1232 : $c3, $a0, $b0


	sub $98                                                  ; $1235 : $d6, $98
	jp $3ead                                                  ; $1237 : $c3, $ad, $3e


	ld c, (hl)                                                  ; $123a : $4e
	inc bc                                                  ; $123b : $03
	cp a                                                  ; $123c : $bf
	jp $e6ad                                                  ; $123d : $c3, $ad, $e6


	call po, $e5c3                                                  ; $1240 : $e4, $c3, $e5
	and $96                                                  ; $1243 : $e6, $96
	rrca                                                  ; $1245 : $0f
	jp Jump_03_3cb6                                                  ; $1246 : $c3, $b6, $3c


	jp $73be                                                  ; $1249 : $c3, $be, $73


	cpl                                                  ; $124c : $2f
	jp $76be                                                  ; $124d : $c3, $be, $76


	inc de                                                  ; $1250 : $13
	jp $e4c0                                                  ; $1251 : $c3, $c0, $e4


	ccf                                                  ; $1254 : $3f
	jp $c3df                                                  ; $1255 : $c3, $df, $c3


	ld (ix-$3d), e                                                  ; $1258 : $dd, $73, $c3
	ld (ix-$44), e                                                  ; $125b : $dd, $73, $bc
	jp $38e7                                                  ; $125e : $c3, $e7, $38


	jp $38e7                                                  ; $1261 : $c3, $e7, $38


	out ($38), a                                                  ; $1264 : $d3, $38
	push de                                                  ; $1266 : $d5
	jp $3be7                                                  ; $1267 : $c3, $e7, $3b


	rlca                                                  ; $126a : $07
	jp $3be7                                                  ; $126b : $c3, $e7, $3b


	scf                                                  ; $126e : $37
	jp pe, $e8c3                                                  ; $126f : $ea, $c3, $e8
	jp $0ee8                                                  ; $1272 : $c3, $e8, $0e


	inc de                                                  ; $1275 : $13
	push bc                                                  ; $1276 : $c5
	ld c, $33                                                  ; $1277 : $0e, $33
	jp z, $b330                                                  ; $1279 : $ca, $30, $b3
	push bc                                                  ; $127c : $c5
	ld c, $4b                                                  ; $127d : $0e, $4b
	sub c                                                  ; $127f : $91
	ex (sp), hl                                                  ; $1280 : $e3
	push bc                                                  ; $1281 : $c5
	ex af, af'                                                  ; $1282 : $08
	pop hl                                                  ; $1283 : $e1
	ld d, b                                                  ; $1284 : $50
	ld l, a                                                  ; $1285 : $6f
	push bc                                                  ; $1286 : $c5
	ld a, (bc)                                                  ; $1287 : $0a
	ccf                                                  ; $1288 : $3f

Jump_03_1289:
	push bc                                                  ; $1289 : $c5
	dec bc                                                  ; $128a : $0b
	ccf                                                  ; $128b : $3f
	push bc                                                  ; $128c : $c5
	dec bc                                                  ; $128d : $0b
	inc a                                                  ; $128e : $3c
	push bc                                                  ; $128f : $c5
	ld ($8e26), a                                                  ; $1290 : $32, $26, $8e
	rra                                                  ; $1293 : $1f
	push bc                                                  ; $1294 : $c5
	ld ($c5cf), a                                                  ; $1295 : $32, $cf, $c5
	inc sp                                                  ; $1298 : $33
	xor a                                                  ; $1299 : $af
	push bc                                                  ; $129a : $c5
	inc sp                                                  ; $129b : $33
	call c, Call_03_37c5                                                  ; $129c : $dc, $c5, $37
	ld a, a                                                  ; $129f : $7f
	push bc                                                  ; $12a0 : $c5
	scf                                                  ; $12a1 : $37
	ld a, h                                                  ; $12a2 : $7c
	push bc                                                  ; $12a3 : $c5
	ld a, ($2f0b)                                                  ; $12a4 : $3a, $0b, $2f
	push bc                                                  ; $12a7 : $c5
	dec sp                                                  ; $12a8 : $3b
	call po, $c508                                                  ; $12a9 : $e4, $08, $c5
	dec sp                                                  ; $12ac : $3b
	ret pe                                                  ; $12ad : $e8

	sbc a, c                                                  ; $12ae : $99
	cpl                                                  ; $12af : $2f
	push bc                                                  ; $12b0 : $c5
	ld l, b                                                  ; $12b1 : $68
	exx                                                  ; $12b2 : $d9
	push bc                                                  ; $12b3 : $c5
	ld l, d                                                  ; $12b4 : $6a
	push bc                                                  ; $12b5 : $c5
	ld l, d                                                  ; $12b6 : $6a
	rst $08                                                  ; $12b7 : $cf
	push bc                                                  ; $12b8 : $c5
	ld l, e                                                  ; $12b9 : $6b
	ld (hl), e                                                  ; $12ba : $73
	jp pe, $15f3                                                  ; $12bb : $ea, $f3, $15
	ld l, h                                                  ; $12be : $6c
	ld e, c                                                  ; $12bf : $59
	ld a, (hl)                                                  ; $12c0 : $7e
	ld c, a                                                  ; $12c1 : $4f
	push bc                                                  ; $12c2 : $c5
	sbc a, e                                                  ; $12c3 : $9b
	ccf                                                  ; $12c4 : $3f
	push bc                                                  ; $12c5 : $c5
	sbc a, e                                                  ; $12c6 : $9b
	out ($cd), a                                                  ; $12c7 : $d3, $cd
	push bc                                                  ; $12c9 : $c5
	sbc a, e                                                  ; $12ca : $9b
	call c, $afd9                                                  ; $12cb : $dc, $d9, $af
	push bc                                                  ; $12ce : $c5
	sbc a, l                                                  ; $12cf : $9d
	push bc                                                  ; $12d0 : $c5
	sbc a, (hl)                                                  ; $12d1 : $9e
	ld h, a                                                  ; $12d2 : $67
	cpl                                                  ; $12d3 : $2f
	push bc                                                  ; $12d4 : $c5
	sbc a, (hl)                                                  ; $12d5 : $9e
	ld (hl), e                                                  ; $12d6 : $73
	ld a, a                                                  ; $12d7 : $7f

br_03_12d8:
	push bc                                                  ; $12d8 : $c5
	sbc a, (hl)                                                  ; $12d9 : $9e
	adc a, a                                                  ; $12da : $8f
	push bc                                                  ; $12db : $c5
	sbc a, (hl)                                                  ; $12dc : $9e
	add a, e                                                  ; $12dd : $83
	cpl                                                  ; $12de : $2f
	push bc                                                  ; $12df : $c5
	sbc a, (hl)                                                  ; $12e0 : $9e
	add a, (hl)                                                  ; $12e1 : $86

Call_03_12e2:
	adc a, (hl)                                                  ; $12e2 : $8e
	rra                                                  ; $12e3 : $1f
	push bc                                                  ; $12e4 : $c5
	sbc a, (hl)                                                  ; $12e5 : $9e
	adc a, b                                                  ; $12e6 : $88
	push bc                                                  ; $12e7 : $c5
	sbc a, (hl)                                                  ; $12e8 : $9e
	adc a, h                                                  ; $12e9 : $8c
	push bc                                                  ; $12ea : $c5
	or (hl)                                                  ; $12eb : $b6
	call po, $c5af                                                  ; $12ec : $e4, $af, $c5
	and $44                                                  ; $12ef : $e6, $44
	ld (hl), e                                                  ; $12f1 : $73
	ret po                                                  ; $12f2 : $e0

	sub b                                                  ; $12f3 : $90
	or d                                                  ; $12f4 : $b2
	push bc                                                  ; $12f5 : $c5
	and $dd                                                  ; $12f6 : $e6, $dd
	ld (hl), e                                                  ; $12f8 : $73
	add a, $e0                                                  ; $12f9 : $c6, $e0
	dec sp                                                  ; $12fb : $3b
	ld h, b                                                  ; $12fc : $60
	add a, $16                                                  ; $12fd : $c6, $16
	ld a, (hl)                                                  ; $12ff : $7e
	xor a                                                  ; $1300 : $af
	add a, $23                                                  ; $1301 : $c6, $23
	add a, $23                                                  ; $1303 : $c6, $23
	rst $08                                                  ; $1305 : $cf
	add a, $3b                                                  ; $1306 : $c6, $3b
	or b                                                  ; $1308 : $b0
	rst $08                                                  ; $1309 : $cf
	add a, $e1                                                  ; $130a : $c6, $e1
	adc a, a                                                  ; $130c : $8f
	add a, $e1                                                  ; $130d : $c6, $e1
	add a, b                                                  ; $130f : $80
	ld a, h                                                  ; $1310 : $7c
	add a, $e1                                                  ; $1311 : $c6, $e1
	add a, e                                                  ; $1313 : $83
	cpl                                                  ; $1314 : $2f
	add a, $e1                                                  ; $1315 : $c6, $e1
	add a, (hl)                                                  ; $1317 : $86
	adc a, (hl)                                                  ; $1318 : $8e
	rra                                                  ; $1319 : $1f
	add a, $7e                                                  ; $131a : $c6, $7e
	ld (hl), e                                                  ; $131c : $73
	cp a                                                  ; $131d : $bf
	add a, $e4                                                  ; $131e : $c6, $e4
	and a                                                  ; $1320 : $a7
	ccf                                                  ; $1321 : $3f
	add a, $e4                                                  ; $1322 : $c6, $e4
	and a                                                  ; $1324 : $a7
	dec sp                                                  ; $1325 : $3b
	add a, $e4                                                  ; $1326 : $c6, $e4
	and a                                                  ; $1328 : $a7
	inc a                                                  ; $1329 : $3c
	rst $18                                                  ; $132a : $df
	add a, $8e                                                  ; $132b : $c6, $8e
	djnz br_03_12d8                                                  ; $132d : $10, $a9
	or e                                                  ; $132f : $b3
	add a, $8e                                                  ; $1330 : $c6, $8e
	ccf                                                  ; $1332 : $3f
	add a, $9e                                                  ; $1333 : $c6, $9e
	ld l, (hl)                                                  ; $1335 : $6e
	sbc a, a                                                  ; $1336 : $9f
	add a, $cd                                                  ; $1337 : $c6, $cd
	ld l, b                                                  ; $1339 : $68
	ccf                                                  ; $133a : $3f
	add a, $dd                                                  ; $133b : $c6, $dd
	ld l, b                                                  ; $133d : $68
	pop hl                                                  ; $133e : $e1
	add a, $de                                                  ; $133f : $c6, $de
	ld h, b                                                  ; $1341 : $60
	sub $98                                                  ; $1342 : $d6, $98
	add a, $e9                                                  ; $1344 : $c6, $e9
	add a, $eb                                                  ; $1346 : $c6, $eb
	ccf                                                  ; $1348 : $3f
	adc a, $33                                                  ; $1349 : $ce, $33
	ld (hl), e                                                  ; $134b : $73
	ret nc                                                  ; $134c : $d0

	ld a, a                                                  ; $134d : $7f
	adc a, $33                                                  ; $134e : $ce, $33
	ld (hl), e                                                  ; $1350 : $73
	ret nc                                                  ; $1351 : $d0

	ld a, a                                                  ; $1352 : $7f
	ld a, $4e                                                  ; $1353 : $3e, $4e
	ld l, h                                                  ; $1355 : $6c
	rla                                                  ; $1356 : $17
	inc a                                                  ; $1357 : $3c
	adc a, $33                                                  ; $1358 : $ce, $33
	ld (hl), e                                                  ; $135a : $73
	exx                                                  ; $135b : $d9
	adc a, a                                                  ; $135c : $8f
	adc a, $36                                                  ; $135d : $ce, $36
	adc a, a                                                  ; $135f : $8f
	adc a, $36                                                  ; $1360 : $ce, $36
	adc a, b                                                  ; $1362 : $88
	ld l, b                                                  ; $1363 : $68
	pop hl                                                  ; $1364 : $e1
	adc a, $36                                                  ; $1365 : $ce, $36
	adc a, h                                                  ; $1367 : $8c
	adc a, $3e                                                  ; $1368 : $ce, $3e
	xor a                                                  ; $136a : $af
	adc a, $3e                                                  ; $136b : $ce, $3e
	and a                                                  ; $136d : $a7
	ld c, $0f                                                  ; $136e : $0e, $0f
	adc a, $3e                                                  ; $1370 : $ce, $3e
	xor h                                                  ; $1372 : $ac
	dec de                                                  ; $1373 : $1b
	ld a, (bc)                                                  ; $1374 : $0a
	dec sp                                                  ; $1375 : $3b
	rst $00                                                  ; $1376 : $c7
	ld c, $73                                                  ; $1377 : $0e, $73
	cp (hl)                                                  ; $1379 : $be
	xor a                                                  ; $137a : $af
	rst $00                                                  ; $137b : $c7
	ld c, $73                                                  ; $137c : $0e, $73
	rst $08                                                  ; $137e : $cf
	rst $00                                                  ; $137f : $c7
	inc sp                                                  ; $1380 : $33
	xor a                                                  ; $1381 : $af
	rst $00                                                  ; $1382 : $c7
	ld h, d                                                  ; $1383 : $62
	ld l, b                                                  ; $1384 : $68
	pop hl                                                  ; $1385 : $e1
	rst $00                                                  ; $1386 : $c7
	sbc a, (hl)                                                  ; $1387 : $9e
	adc a, a                                                  ; $1388 : $8f
	rst $00                                                  ; $1389 : $c7
	sbc a, (hl)                                                  ; $138a : $9e
	add a, a                                                  ; $138b : $87
	jp pe, $40ce                                                  ; $138c : $ea, $ce, $40
	ld (hl), a                                                  ; $138f : $77
	adc a, $40                                                  ; $1390 : $ce, $40
	ld (hl), a                                                  ; $1392 : $77
	dec sp                                                  ; $1393 : $3b
	adc a, $40                                                  ; $1394 : $ce, $40
	ld (hl), a                                                  ; $1396 : $77
	inc a                                                  ; $1397 : $3c
	rst $18                                                  ; $1398 : $df
	adc a, $43                                                  ; $1399 : $ce, $43
	ld (hl), a                                                  ; $139b : $77
	adc a, $46                                                  ; $139c : $ce, $46
	push de                                                  ; $139e : $d5
	di                                                  ; $139f : $f3
	ret po                                                  ; $13a0 : $e0

	cp c                                                  ; $13a1 : $b9
	push de                                                  ; $13a2 : $d5
	dec sp                                                  ; $13a3 : $3b
	rst $08                                                  ; $13a4 : $cf
	adc a, $49                                                  ; $13a5 : $ce, $49
	pop hl                                                  ; $13a7 : $e1
	adc a, $49                                                  ; $13a8 : $ce, $49
	ex (sp), hl                                                  ; $13aa : $e3
	ccf                                                  ; $13ab : $3f
	adc a, $4e                                                  ; $13ac : $ce, $4e
	ld l, e                                                  ; $13ae : $6b
	ld c, h                                                  ; $13af : $4c
	ret z                                                  ; $13b0 : $c8

	ld c, $33                                                  ; $13b1 : $0e, $33
	ret z                                                  ; $13b3 : $c8

	ld c, $33                                                  ; $13b4 : $0e, $33
	rst $08                                                  ; $13b6 : $cf
	ret z                                                  ; $13b7 : $c8

	sbc a, c                                                  ; $13b8 : $99
	xor (hl)                                                  ; $13b9 : $ae
	xor a                                                  ; $13ba : $af
	ret z                                                  ; $13bb : $c8

	sbc a, (hl)                                                  ; $13bc : $9e
	adc a, a                                                  ; $13bd : $8f
	ret                                                  ; $13be : $c9


	ret                                                  ; $13bf : $c9


	ld de, $c93b                                                  ; $13c0 : $11, $3b, $c9
	ld d, $07                                                  ; $13c3 : $16, $07
	ld l, (hl)                                                  ; $13c5 : $6e
	or b                                                  ; $13c6 : $b0
	sub $98                                                  ; $13c7 : $d6, $98
	ret                                                  ; $13c9 : $c9


	ld d, $3d                                                  ; $13ca : $16, $3d
	jp pe, Jump_03_16c9                                                  ; $13cc : $ea, $c9, $16
	sub a                                                  ; $13cf : $97
	sbc a, (hl)                                                  ; $13d0 : $9e
	ld d, $cd                                                  ; $13d1 : $16, $cd
	ret                                                  ; $13d3 : $c9


	ld b, (hl)                                                  ; $13d4 : $46
	rrca                                                  ; $13d5 : $0f
	ret                                                  ; $13d6 : $c9


	ld c, l                                                  ; $13d7 : $4d
	ret po                                                  ; $13d8 : $e0

	rlca                                                  ; $13d9 : $07
	ld a, a                                                  ; $13da : $7f
	ret                                                  ; $13db : $c9


	ld (hl), b                                                  ; $13dc : $70
	cp a                                                  ; $13dd : $bf
	ret                                                  ; $13de : $c9


	ld (hl), b                                                  ; $13df : $70
	cp a                                                  ; $13e0 : $bf
	inc a                                                  ; $13e1 : $3c
	jp pe, Jump_03_3ecd                                                  ; $13e2 : $ea, $cd, $3e

Call_03_13e5:
	ld c, a                                                  ; $13e5 : $4f
	ret                                                  ; $13e6 : $c9


	ld (hl), b                                                  ; $13e7 : $70
	cp a                                                  ; $13e8 : $bf
	ld a, $68                                                  ; $13e9 : $3e, $68
	ld l, l                                                  ; $13eb : $6d
	ret                                                  ; $13ec : $c9


	ld (hl), d                                                  ; $13ed : $72
	ret                                                  ; $13ee : $c9


	halt                                                  ; $13ef : $76
	cpl                                                  ; $13f0 : $2f

Call_03_13f1:
	ret                                                  ; $13f1 : $c9


	halt                                                  ; $13f2 : $76
	ld h, $4e                                                  ; $13f3 : $26, $4e
	xor a                                                  ; $13f5 : $af
	ret                                                  ; $13f6 : $c9


	halt                                                  ; $13f7 : $76
	inc l                                                  ; $13f8 : $2c
	ret                                                  ; $13f9 : $c9


	ld a, c                                                  ; $13fa : $79
	ret                                                  ; $13fb : $c9


	ld a, h                                                  ; $13fc : $7c

br_03_13fd:
	sub $13                                                  ; $13fd : $d6, $13
	ret                                                  ; $13ff : $c9


	ld a, (hl)                                                  ; $1400 : $7e
	ld l, l                                                  ; $1401 : $6d
	ld l, c                                                  ; $1402 : $69
	adc a, a                                                  ; $1403 : $8f
	ret                                                  ; $1404 : $c9


br_03_1405:
	call po, $6007                                                  ; $1405 : $e4, $07, $60
	ret                                                  ; $1408 : $c9


	call po, $b3e0                                                  ; $1409 : $e4, $e0, $b3
	cp c                                                  ; $140c : $b9
	ret                                                  ; $140d : $c9


	call po, $c93f                                                  ; $140e : $e4, $3f, $c9
	call po, $563d                                                  ; $1411 : $e4, $3d, $56
	adc a, (hl)                                                  ; $1414 : $8e
	rra                                                  ; $1415 : $1f
	ret                                                  ; $1416 : $c9


	call po, $6e3d                                                  ; $1417 : $e4, $3d, $6e
	ld b, e                                                  ; $141a : $43

br_03_141b:
	rst $08                                                  ; $141b : $cf
	ret                                                  ; $141c : $c9


	adc a, a                                                  ; $141d : $8f
	ret                                                  ; $141e : $c9


	adc a, (hl)                                                  ; $141f : $8e
	inc e                                                  ; $1420 : $1c
	ret                                                  ; $1421 : $c9


	and $82                                                  ; $1422 : $e6, $82

br_03_1424:
	ret                                                  ; $1424 : $c9


	and $82                                                  ; $1425 : $e6, $82
	rst $08                                                  ; $1427 : $cf
	ret                                                  ; $1428 : $c9


	and $b1                                                  ; $1429 : $e6, $b1
	ccf                                                  ; $142b : $3f
	ret                                                  ; $142c : $c9


	and $d5                                                  ; $142d : $e6, $d5
	di                                                  ; $142f : $f3
	inc b                                                  ; $1430 : $04
	or (hl)                                                  ; $1431 : $b6
	djnz br_03_13fd                                                  ; $1432 : $10, $c9
	and $d5                                                  ; $1434 : $e6, $d5
	di                                                  ; $1436 : $f3
	ld c, $43                                                  ; $1437 : $0e, $43
	or (hl)                                                  ; $1439 : $b6
	djnz br_03_1405                                                  ; $143a : $10, $c9
	and $d5                                                  ; $143c : $e6, $d5
	di                                                  ; $143e : $f3
	jr nz, br_03_1424                                                  ; $143f : $20, $e3

	sbc a, l                                                  ; $1441 : $9d
	rrca                                                  ; $1442 : $0f
	ret                                                  ; $1443 : $c9


	and $d5                                                  ; $1444 : $e6, $d5
	di                                                  ; $1446 : $f3
	xor c                                                  ; $1447 : $a9
	ld (hl), e                                                  ; $1448 : $73
	ret                                                  ; $1449 : $c9


	and $d5                                                  ; $144a : $e6, $d5
	jr nc, br_03_141b                                                  ; $144c : $30, $cd

	ret                                                  ; $144e : $c9


	and $d5                                                  ; $144f : $e6, $d5
	dec sp                                                  ; $1451 : $3b
	adc a, a                                                  ; $1452 : $8f
	ret                                                  ; $1453 : $c9


	and $d5                                                  ; $1454 : $e6, $d5
	ret pe                                                  ; $1456 : $e8

	inc a                                                  ; $1457 : $3c
	rst $18                                                  ; $1458 : $df
	ret                                                  ; $1459 : $c9


	rst $20                                                  ; $145a : $e7
	ld h, e                                                  ; $145b : $63
	rst $18                                                  ; $145c : $df
	ret                                                  ; $145d : $c9


	rst $20                                                  ; $145e : $e7
	ld h, e                                                  ; $145f : $63
	rst $18                                                  ; $1460 : $df
	ld a, $68                                                  ; $1461 : $3e, $68
	ld l, c                                                  ; $1463 : $69
	adc a, a                                                  ; $1464 : $8f
	ret                                                  ; $1465 : $c9


	jp pe, $ebe6                                                  ; $1466 : $ea, $e6, $eb
	jp z, Jump_03_3101                                                  ; $1469 : $ca, $01, $31
	or b                                                  ; $146c : $b0
	ld c, l                                                  ; $146d : $4d
	jp z, $150e                                                  ; $146e : $ca, $0e, $15
	dec a                                                  ; $1471 : $3d
	sub $ca                                                  ; $1472 : $d6, $ca
	ex af, af'                                                  ; $1474 : $08
	ld l, h                                                  ; $1475 : $6c
	ld e, (hl)                                                  ; $1476 : $5e
	call pe, Call_03_0ea3                                                  ; $1477 : $ec, $a3, $0e
	ld (hl), $8e                                                  ; $147a : $36, $8e
	rra                                                  ; $147c : $1f
	jp z, Jump_03_3c0b                                                  ; $147d : $ca, $0b, $3c
	jp z, $e30b                                                  ; $1480 : $ca, $0b, $e3
	rst $08                                                  ; $1483 : $cf
	jp z, $e30b                                                  ; $1484 : $ca, $0b, $e3
	jp pe, Jump_03_30ca                                                  ; $1487 : $ea, $ca, $30
	ex (sp), hl                                                  ; $148a : $e3
	jp z, $6331                                                  ; $148b : $ca, $31, $63
	rst $08                                                  ; $148e : $cf
	jp z, $db31                                                  ; $148f : $ca, $31, $db
	sbc a, h                                                  ; $1492 : $9c
	add hl, de                                                  ; $1493 : $19
	and e                                                  ; $1494 : $a3
	jp z, $db31                                                  ; $1495 : $ca, $31, $db
	and $e4                                                  ; $1498 : $e6, $e4
	jp z, $e631                                                  ; $149a : $ca, $31, $e6
	ld (hl), b                                                  ; $149d : $70
	exx                                                  ; $149e : $d9
	cp h                                                  ; $149f : $bc
	jp z, Jump_03_2f33                                                  ; $14a0 : $ca, $33, $2f
	jp z, Jump_03_2f33                                                  ; $14a3 : $ca, $33, $2f
	add hl, sp                                                  ; $14a6 : $39
	ld c, a                                                  ; $14a7 : $4f
	scf                                                  ; $14a8 : $37
	ld l, (hl)                                                  ; $14a9 : $6e
	dec d                                                  ; $14aa : $15
	rst $18                                                  ; $14ab : $df
	jp z, $1338                                                  ; $14ac : $ca, $38, $13
	cp a                                                  ; $14af : $bf
	jp z, Jump_03_2f38                                                  ; $14b0 : $ca, $38, $2f
	jp z, $e43b                                                  ; $14b3 : $ca, $3b, $e4
	jp z, $8e56                                                  ; $14b6 : $ca, $56, $8e
	sbc a, a                                                  ; $14b9 : $9f
	jp z, $3c61                                                  ; $14ba : $ca, $61, $3c
	jp z, Jump_03_3b62                                                  ; $14bd : $ca, $62, $3b
	jp z, Jump_03_3b62                                                  ; $14c0 : $ca, $62, $3b
	call po, $ca08                                                  ; $14c3 : $e4, $08, $ca
	ld l, b                                                  ; $14c6 : $68
	ld bc, $ca5f                                                  ; $14c7 : $01, $5f, $ca
	ld l, b                                                  ; $14ca : $68
	rlca                                                  ; $14cb : $07
	jp z, $3f68                                                  ; $14cc : $ca, $68, $3f
	jp z, $6d6b                                                  ; $14cf : $ca, $6b, $6d
	and $07                                                  ; $14d2 : $e6, $07
	jp z, $df76                                                  ; $14d4 : $ca, $76, $df
	jp z, $e198                                                  ; $14d7 : $ca, $98, $e1
	inc a                                                  ; $14da : $3c
	jp z, $d69b                                                  ; $14db : $ca, $9b, $d6
	adc a, (hl)                                                  ; $14de : $8e
	rra                                                  ; $14df : $1f
	jp z, $dc9b                                                  ; $14e0 : $ca, $9b, $dc
	jp z, $dfb0                                                  ; $14e3 : $ca, $b0, $df
	inc c                                                  ; $14e6 : $0c
	jp z, $8eb6                                                  ; $14e7 : $ca, $b6, $8e
	rra                                                  ; $14ea : $1f
	jp z, $bde6                                                  ; $14eb : $ca, $e6, $bd
	rst $08                                                  ; $14ee : $cf
	jp z, $d8e6                                                  ; $14ef : $ca, $e6, $d8
	ld l, (hl)                                                  ; $14f2 : $6e
	ccf                                                  ; $14f3 : $3f
	adc a, $5e                                                  ; $14f4 : $ce, $5e
	ld h, b                                                  ; $14f6 : $60
	or e                                                  ; $14f7 : $b3
	adc a, $5e                                                  ; $14f8 : $ce, $5e
	ld h, b                                                  ; $14fa : $60
	push bc                                                  ; $14fb : $c5
	bit 5, a                                                  ; $14fc : $cb, $6f
	scf                                                  ; $14fe : $37
	ex af, af'                                                  ; $14ff : $08
	ex (sp), hl                                                  ; $1500 : $e3
	rrca                                                  ; $1501 : $0f
	call $cdec                                                  ; $1502 : $cd, $ec, $cd
	call pe, $79f3                                                  ; $1505 : $ec, $f3, $79
	and $6c                                                  ; $1508 : $e6, $6c

Jump_03_150a:
	call Call_03_1f0e                                                  ; $150a : $cd, $0e, $1f

Call_03_150d:
	call $6807                                                  ; $150d : $cd, $07, $68
	call $4a0e                                                  ; $1510 : $cd, $0e, $4a
	call Call_03_2f08                                                  ; $1513 : $cd, $08, $2f
	call $7308                                                  ; $1516 : $cd, $08, $73
	jp pe, Jump_03_0bcd                                                  ; $1519 : $ea, $cd, $0b
	call $f30b                                                  ; $151c : $cd, $0b, $f3
	ret po                                                  ; $151f : $e0

	scf                                                  ; $1520 : $37
	rst $18                                                  ; $1521 : $df
	call $f30b                                                  ; $1522 : $cd, $0b, $f3
	ld b, (hl)                                                  ; $1525 : $46
	scf                                                  ; $1526 : $37
	cpl                                                  ; $1527 : $2f
	call $f30b                                                  ; $1528 : $cd, $0b, $f3
	ld b, (hl)                                                  ; $152b : $46
	scf                                                  ; $152c : $37

Call_03_152d:
	inc l                                                  ; $152d : $2c
	call $f30b                                                  ; $152e : $cd, $0b, $f3
	pop hl                                                  ; $1531 : $e1
	ld c, $b6                                                  ; $1532 : $0e, $b6
	adc a, (hl)                                                  ; $1534 : $8e
	rra                                                  ; $1535 : $1f
	call $f30b                                                  ; $1536 : $cd, $0b, $f3
	in a, ($3e)                                                  ; $1539 : $db, $3e
	ccf                                                  ; $153b : $3f
	call $f30b                                                  ; $153c : $cd, $0b, $f3
	ret pe                                                  ; $153f : $e8

	dec bc                                                  ; $1540 : $0b
	rst $08                                                  ; $1541 : $cf
	call $f00b                                                  ; $1542 : $cd, $0b, $f0
	rst $08                                                  ; $1545 : $cf
	call $150b                                                  ; $1546 : $cd, $0b, $15
	inc a                                                  ; $1549 : $3c
	call $cf0b                                                  ; $154a : $cd, $0b, $cf
	call $c50b                                                  ; $154d : $cd, $0b, $c5
	ld l, d                                                  ; $1550 : $6a
	call $df0b                                                  ; $1551 : $cd, $0b, $df
	call Call_03_320d                                                  ; $1554 : $cd, $0d, $32
	call $610d                                                  ; $1557 : $cd, $0d, $61
	call $610d                                                  ; $155a : $cd, $0d, $61
	di                                                  ; $155d : $f3
	scf                                                  ; $155e : $37

br_03_155f:
	ld sp, $61db                                                  ; $155f : $31, $db, $61
	ld l, l                                                  ; $1562 : $6d
	jp pe, Jump_03_0dcd                                                  ; $1563 : $ea, $cd, $0d
	ld l, c                                                  ; $1566 : $69
	adc a, a                                                  ; $1567 : $8f
	call $690d                                                  ; $1568 : $cd, $0d, $69
	add a, b                                                  ; $156b : $80
	cp (hl)                                                  ; $156c : $be
	xor a                                                  ; $156d : $af
	call $e60d                                                  ; $156e : $cd, $0d, $e6
	ccf                                                  ; $1571 : $3f
	call $7f30                                                  ; $1572 : $cd, $30, $7f
	call $e430                                                  ; $1575 : $cd, $30, $e4
	call $e430                                                  ; $1578 : $cd, $30, $e4
	di                                                  ; $157b : $f3
	jr c, br_03_155f                                                  ; $157c : $38, $e1

	ld l, b                                                  ; $157e : $68
	ccf                                                  ; $157f : $3f
	call $e430                                                  ; $1580 : $cd, $30, $e4
	ret po                                                  ; $1583 : $e0

	sub b                                                  ; $1584 : $90
	rst $18                                                  ; $1585 : $df
	call $7f33                                                  ; $1586 : $cd, $33, $7f
	call $7f33                                                  ; $1589 : $cd, $33, $7f
	ld a, ($e879)                                                  ; $158c : $3a, $79, $e8
	call $af33                                                  ; $158f : $cd, $33, $af
	call $ae33                                                  ; $1592 : $cd, $33, $ae
	call pe, Call_03_3262                                                  ; $1595 : $ec, $62, $32
	call $bf33                                                  ; $1598 : $cd, $33, $bf
	call $cd3a                                                  ; $159b : $cd, $3a, $cd
	ld a, ($cfa3)                                                  ; $159e : $3a, $a3, $cf
	call $e361                                                  ; $15a1 : $cd, $61, $e3
	call $e361                                                  ; $15a4 : $cd, $61, $e3
	dec sp                                                  ; $15a7 : $3b
	rst $08                                                  ; $15a8 : $cf
	call $7f67                                                  ; $15a9 : $cd, $67, $7f
	call $e391                                                  ; $15ac : $cd, $91, $e3
	call $e391                                                  ; $15af : $cd, $91, $e3
	ld e, c                                                  ; $15b2 : $59
	ld a, (hl)                                                  ; $15b3 : $7e
	ld c, a                                                  ; $15b4 : $4f
	call $e391                                                  ; $15b5 : $cd, $91, $e3
	rst $08                                                  ; $15b8 : $cf
	call $409e                                                  ; $15b9 : $cd, $9e, $40
	dec d                                                  ; $15bc : $15
	call Call_03_3c98                                                  ; $15bd : $cd, $98, $3c
	call Call_03_2f99                                                  ; $15c0 : $cd, $99, $2f
	call $cd9a                                                  ; $15c3 : $cd, $9a, $cd
	sbc a, d                                                  ; $15c6 : $9a
	and (hl)                                                  ; $15c7 : $a6
	adc a, (hl)                                                  ; $15c8 : $8e
	rra                                                  ; $15c9 : $1f
	call Call_03_3f9b                                                  ; $15ca : $cd, $9b, $3f
	call Call_03_329b                                                  ; $15cd : $cd, $9b, $32
	call $3c9b                                                  ; $15d0 : $cd, $9b, $3c
	call $e49b                                                  ; $15d3 : $cd, $9b, $e4
	call $e49b                                                  ; $15d6 : $cd, $9b, $e4
	ld l, b                                                  ; $15d9 : $68
	pop hl                                                  ; $15da : $e1
	call $e49b                                                  ; $15db : $cd, $9b, $e4
	rst $08                                                  ; $15de : $cf
	call $ea9b                                                  ; $15df : $cd, $9b, $ea
	call Call_03_22b0                                                  ; $15e2 : $cd, $b0, $22

br_03_15e5:
	ld (hl), e                                                  ; $15e5 : $73

Call_03_15e6:
	rst $08                                                  ; $15e6 : $cf
	call $6eb0                                                  ; $15e7 : $cd, $b0, $6e
	dec d                                                  ; $15ea : $15
	rst $18                                                  ; $15eb : $df
	call $6db0                                                  ; $15ec : $cd, $b0, $6d
	call $d9b0                                                  ; $15ef : $cd, $b0, $d9
	jp z, $b353                                                  ; $15f2 : $ca, $53, $b3
	call $0eb3                                                  ; $15f5 : $cd, $b3, $0e
	ld c, a                                                  ; $15f8 : $4f
	call $0eb3                                                  ; $15f9 : $cd, $b3, $0e
	ld c, h                                                  ; $15fc : $4c
	call Call_03_3db3                                                  ; $15fd : $cd, $b3, $3d
	ret p                                                  ; $1600 : $f0

	rst $08                                                  ; $1601 : $cf
	call $e3b6                                                  ; $1602 : $cd, $b6, $e3
	inc a                                                  ; $1605 : $3c
	call $8eb6                                                  ; $1606 : $cd, $b6, $8e
	rra                                                  ; $1609 : $1f
	call $8eb6                                                  ; $160a : $cd, $b6, $8e
	inc e                                                  ; $160d : $1c

Call_03_160e:
	call $afb6                                                  ; $160e : $cd, $b6, $af
	call $aeb6                                                  ; $1611 : $cd, $b6, $ae
	xor $46                                                  ; $1614 : $ee, $46
	add a, e                                                  ; $1616 : $83
	cpl                                                  ; $1617 : $2f
	call $a3b6                                                  ; $1618 : $cd, $b6, $a3
	rst $08                                                  ; $161b : $cf
	call $8eb9                                                  ; $161c : $cd, $b9, $8e
	rra                                                  ; $161f : $1f
	call $8eb9                                                  ; $1620 : $cd, $b9, $8e
	inc de                                                  ; $1623 : $13
	call $becd                                                  ; $1624 : $cd, $cd, $be
	ld h, c                                                  ; $1627 : $61

Jump_03_1628:
	ex (sp), hl                                                  ; $1628 : $e3
	call $61be                                                  ; $1629 : $cd, $be, $61
	sbc a, $6b                                                  ; $162c : $de, $6b

br_03_162e:
	ccf                                                  ; $162e : $3f

br_03_162f:
	call $26e6                                                  ; $162f : $cd, $e6, $26
	inc a                                                  ; $1632 : $3c
	call $2ee6                                                  ; $1633 : $cd, $e6, $2e
	xor a                                                  ; $1636 : $af
	adc a, $6e                                                  ; $1637 : $ce, $6e
	ld c, $40                                                  ; $1639 : $0e, $40
	or (hl)                                                  ; $163b : $b6

Jump_03_163c:
	add a, e                                                  ; $163c : $83
	adc a, $6e                                                  ; $163d : $ce, $6e
	inc c                                                  ; $163f : $0c
	ret nc                                                  ; $1640 : $d0

	add a, c                                                  ; $1641 : $81
	ccf                                                  ; $1642 : $3f
	adc a, $6e                                                  ; $1643 : $ce, $6e
	ld c, $80                                                  ; $1645 : $0e, $80
	jp pe, $61ce                                                  ; $1647 : $ea, $ce, $61
	inc de                                                  ; $164a : $13
	call z, $674e                                                  ; $164b : $cc, $4e, $67
	adc a, $61                                                  ; $164e : $ce, $61
	ld e, a                                                  ; $1650 : $5f
	adc a, $61                                                  ; $1651 : $ce, $61
	cp c                                                  ; $1653 : $b9
	jp $61ce                                                  ; $1654 : $c3, $ce, $61


	sub $98                                                  ; $1657 : $d6, $98
	adc a, $62                                                  ; $1659 : $ce, $62
	ex af, af'                                                  ; $165b : $08
	adc a, $63                                                  ; $165c : $ce, $63
	ex de, hl                                                  ; $165e : $eb
	adc a, $63                                                  ; $165f : $ce, $63
	ex de, hl                                                  ; $1661 : $eb
	di                                                  ; $1662 : $f3
	djnz br_03_15e5                                                  ; $1663 : $10, $80
	ld a, a                                                  ; $1665 : $7f
	adc a, $64                                                  ; $1666 : $ce, $64
	ld c, e                                                  ; $1668 : $4b

Jump_03_1669:
	ld c, $13                                                  ; $1669 : $0e, $13
	adc a, $6e                                                  ; $166b : $ce, $6e
	djnz br_03_162e                                                  ; $166d : $10, $bf
	adc a, $6e                                                  ; $166f : $ce, $6e
	djnz br_03_162f                                                  ; $1671 : $10, $bc
	adc a, $6e                                                  ; $1673 : $ce, $6e
	ld c, (hl)                                                  ; $1675 : $4e
	ld b, e                                                  ; $1676 : $43
	cp a                                                  ; $1677 : $bf
	adc a, $6e                                                  ; $1678 : $ce, $6e
	ld c, (hl)                                                  ; $167a : $4e
	ld b, e                                                  ; $167b : $43
	cp a                                                  ; $167c : $bf
	add hl, sp                                                  ; $167d : $39
	ld a, (hl)                                                  ; $167e : $7e
	xor (hl)                                                  ; $167f : $ae
	ld c, d                                                  ; $1680 : $4a
	ld h, c                                                  ; $1681 : $61
	rst $08                                                  ; $1682 : $cf
	adc a, $68                                                  ; $1683 : $ce, $68
	adc a, $68                                                  ; $1685 : $ce, $68
	ret p                                                  ; $1687 : $f0

	rst $08                                                  ; $1688 : $cf
	adc a, $68                                                  ; $1689 : $ce, $68
	halt                                                  ; $168b : $76
	pop hl                                                  ; $168c : $e1
	ld e, l                                                  ; $168d : $5d
	adc a, $68                                                  ; $168e : $ce, $68
	jp z, $ce9d                                                  ; $1690 : $ca, $9d, $ce
	ld l, b                                                  ; $1693 : $68
	jp z, $cf9d                                                  ; $1694 : $ca, $9d, $cf
	adc a, $6a                                                  ; $1697 : $ce, $6a
	dec sp                                                  ; $1699 : $3b
	ret po                                                  ; $169a : $e0

	sbc a, (hl)                                                  ; $169b : $9e
	add a, a                                                  ; $169c : $87
	adc a, $6a                                                  ; $169d : $ce, $6a
	dec sp                                                  ; $169f : $3b
	ld d, e                                                  ; $16a0 : $53
	dec c                                                  ; $16a1 : $0d

Jump_03_16a2:
	ld ($6ace), a                                                  ; $16a2 : $32, $ce, $6a
	dec sp                                                  ; $16a5 : $3b
	ld d, e                                                  ; $16a6 : $53
	cp c                                                  ; $16a7 : $b9
	adc a, $6a                                                  ; $16a8 : $ce, $6a
	dec sp                                                  ; $16aa : $3b
	ld l, c                                                  ; $16ab : $69
	cp a                                                  ; $16ac : $bf
	adc a, $6a                                                  ; $16ad : $ce, $6a
	dec sp                                                  ; $16af : $3b
	call po, $ce08                                                  ; $16b0 : $e4, $08, $ce
	ld l, d                                                  ; $16b3 : $6a
	xor c                                                  ; $16b4 : $a9
	cp l                                                  ; $16b5 : $bd
	adc a, $6a                                                  ; $16b6 : $ce, $6a
	or e                                                  ; $16b8 : $b3
	call po, $ce3f                                                  ; $16b9 : $e4, $3f, $ce
	ld l, d                                                  ; $16bc : $6a

Jump_03_16bd:
	or e                                                  ; $16bd : $b3
	call po, Call_03_313f                                                  ; $16be : $e4, $3f, $31
	sbc a, (hl)                                                  ; $16c1 : $9e
	ld l, e                                                  ; $16c2 : $6b
	rst $18                                                  ; $16c3 : $df
	adc a, $6b                                                  ; $16c4 : $ce, $6b
	ld c, a                                                  ; $16c6 : $4f
	adc a, $6b                                                  ; $16c7 : $ce, $6b

Jump_03_16c9:
	ld b, b                                                  ; $16c9 : $40
	inc de                                                  ; $16ca : $13
	adc a, $6b                                                  ; $16cb : $ce, $6b
	pop hl                                                  ; $16cd : $e1
	dec sp                                                  ; $16ce : $3b
	jp pe, $6bce                                                  ; $16cf : $ea, $ce, $6b
	xor e                                                  ; $16d2 : $ab
	ld l, h                                                  ; $16d3 : $6c
	ccf                                                  ; $16d4 : $3f
	adc a, $6b                                                  ; $16d5 : $ce, $6b
	or e                                                  ; $16d7 : $b3
	add a, d                                                  ; $16d8 : $82
	dec sp                                                  ; $16d9 : $3b
	adc a, $6b                                                  ; $16da : $ce, $6b
	cp c                                                  ; $16dc : $b9
	and $82                                                  ; $16dd : $e6, $82
	ld ($6bce), a                                                  ; $16df : $32, $ce, $6b
	cp c                                                  ; $16e2 : $b9
	and $82                                                  ; $16e3 : $e6, $82
	rst $08                                                  ; $16e5 : $cf
	adc a, $6b                                                  ; $16e6 : $ce, $6b
	rst $20                                                  ; $16e8 : $e7
	ld l, (hl)                                                  ; $16e9 : $6e
	ld (hl), b                                                  ; $16ea : $70
	ld a, a                                                  ; $16eb : $7f
	adc a, $6c                                                  ; $16ec : $ce, $6c
	ex af, af'                                                  ; $16ee : $08
	di                                                  ; $16ef : $f3
	ret po                                                  ; $16f0 : $e0

	call pe, $08f3                                                  ; $16f1 : $ec, $f3, $08
	push de                                                  ; $16f4 : $d5
	sbc a, b                                                  ; $16f5 : $98
	jp pe, $80ce                                                  ; $16f6 : $ea, $ce, $80
	call po, $ceaf                                                  ; $16f9 : $e4, $af, $ce
	add a, b                                                  ; $16fc : $80
	adc a, a                                                  ; $16fd : $8f
	adc a, $80                                                  ; $16fe : $ce, $80
	add a, a                                                  ; $1700 : $87
	dec a                                                  ; $1701 : $3d
	adc a, $83                                                  ; $1702 : $ce, $83
	xor l                                                  ; $1704 : $ad
	adc a, $86                                                  ; $1705 : $ce, $86
	call po, $86ce                                                  ; $1707 : $e4, $ce, $86
	sbc a, $b3                                                  ; $170a : $de, $b3
	or a                                                  ; $170c : $b7
	ex af, af'                                                  ; $170d : $08
	cpl                                                  ; $170e : $2f
	adc a, $ae                                                  ; $170f : $ce, $ae
	ld c, (hl)                                                  ; $1711 : $4e
	ld b, $9d                                                  ; $1712 : $06, $9d
	ld h, c                                                  ; $1714 : $61
	adc a, $ae                                                  ; $1715 : $ce, $ae

Jump_03_1717:
	ld c, (hl)                                                  ; $1717 : $4e
	add hl, bc                                                  ; $1718 : $09
	ld a, a                                                  ; $1719 : $7f
	adc a, $ae                                                  ; $171a : $ce, $ae
	ld c, (hl)                                                  ; $171c : $4e
	add hl, bc                                                  ; $171d : $09
	halt                                                  ; $171e : $76
	ex de, hl                                                  ; $171f : $eb
	ccf                                                  ; $1720 : $3f
	adc a, $a8                                                  ; $1721 : $ce, $a8
	sbc a, b                                                  ; $1723 : $98
	jp pe, $cfe4                                                  ; $1724 : $ea, $e4, $cf
	adc a, $a8                                                  ; $1727 : $ce, $a8
	ret nc                                                  ; $1729 : $d0

	jp (hl)                                                  ; $172a : $e9


	adc a, $ab                                                  ; $172b : $ce, $ab
	ld bc, $c3e6                                                  ; $172d : $01, $e6, $c3
	adc a, $ab                                                  ; $1730 : $ce, $ab
	ld h, b                                                  ; $1732 : $60
	adc a, $ac                                                  ; $1733 : $ce, $ac
	out ($e4), a                                                  ; $1735 : $d3, $e4
	dec c                                                  ; $1737 : $0d
	ld h, c                                                  ; $1738 : $61
	rlca                                                  ; $1739 : $07
	ld a, (hl)                                                  ; $173a : $7e
	xor a                                                  ; $173b : $af
	adc a, $ac                                                  ; $173c : $ce, $ac
	out ($e4), a                                                  ; $173e : $d3, $e4
	rst $08                                                  ; $1740 : $cf
	sbc a, $cf                                                  ; $1741 : $de, $cf
	dec sp                                                  ; $1743 : $3b
	sbc a, c                                                  ; $1744 : $99
	jp Jump_03_37e7                                                  ; $1745 : $c3, $e7, $37


	rst $18                                                  ; $1748 : $df
	sbc a, $ce                                                  ; $1749 : $de, $ce
	ld a, (hl)                                                  ; $174b : $7e
	rst $08                                                  ; $174c : $cf
	ret nc                                                  ; $174d : $d0

	ret po                                                  ; $174e : $e0

	ld (hl), e                                                  ; $174f : $73
	ret nc                                                  ; $1750 : $d0

	ret po                                                  ; $1751 : $e0

	ld (hl), e                                                  ; $1752 : $73
	jp z, $8f99                                                  ; $1753 : $ca, $99, $8f
	ret nc                                                  ; $1756 : $d0

	ld e, $37                                                  ; $1757 : $1e, $37
	ccf                                                  ; $1759 : $3f
	ret nc                                                  ; $175a : $d0

	ld e, c                                                  ; $175b : $59
	ccf                                                  ; $175c : $3f
	ret nc                                                  ; $175d : $d0

	ld l, (hl)                                                  ; $175e : $6e
	add a, b                                                  ; $175f : $80
	adc a, a                                                  ; $1760 : $8f
	ret nc                                                  ; $1761 : $d0

	ex (sp), hl                                                  ; $1762 : $e3
	ccf                                                  ; $1763 : $3f
	ret nc                                                  ; $1764 : $d0

	ex (sp), hl                                                  ; $1765 : $e3
	inc a                                                  ; $1766 : $3c
	ret nc                                                  ; $1767 : $d0

	ex (sp), hl                                                  ; $1768 : $e3
	ld l, b                                                  ; $1769 : $68
	pop hl                                                  ; $176a : $e1
	ret nc                                                  ; $176b : $d0

	ld (hl), a                                                  ; $176c : $77
	inc a                                                  ; $176d : $3c
	rst $18                                                  ; $176e : $df
	ret nc                                                  ; $176f : $d0

	adc a, (hl)                                                  ; $1770 : $8e
	inc sp                                                  ; $1771 : $33
	cp h                                                  ; $1772 : $bc
	ret nc                                                  ; $1773 : $d0

	xor l                                                  ; $1774 : $ad
	ld l, a                                                  ; $1775 : $6f
	ret nc                                                  ; $1776 : $d0

	or (hl)                                                  ; $1777 : $b6
	ld b, h                                                  ; $1778 : $44
	ret nc                                                  ; $1779 : $d0

	exx                                                  ; $177a : $d9
	sub (hl)                                                  ; $177b : $96
	add a, e                                                  ; $177c : $83
	ret nc                                                  ; $177d : $d0

	jp (hl)                                                  ; $177e : $e9


	ret nc                                                  ; $177f : $d0

	jp (hl)                                                  ; $1780 : $e9


	dec c                                                  ; $1781 : $0d
	ld l, c                                                  ; $1782 : $69
	adc a, a                                                  ; $1783 : $8f
	ret nc                                                  ; $1784 : $d0

	jp (hl)                                                  ; $1785 : $e9


	inc a                                                  ; $1786 : $3c
	out ($0f), a                                                  ; $1787 : $d3, $0f
	out ($0e), a                                                  ; $1789 : $d3, $0e
	ccf                                                  ; $178b : $3f
	out ($0e), a                                                  ; $178c : $d3, $0e
	ld c, a                                                  ; $178e : $4f
	out ($0e), a                                                  ; $178f : $d3, $0e
	ld c, h                                                  ; $1791 : $4c
	out ($0c), a                                                  ; $1792 : $d3, $0c
	xor c                                                  ; $1794 : $a9
	sbc a, b                                                  ; $1795 : $98
	rst $08                                                  ; $1796 : $cf
	out ($15), a                                                  ; $1797 : $d3, $15
	adc a, c                                                  ; $1799 : $89
	ld a, c                                                  ; $179a : $79
	pop hl                                                  ; $179b : $e1
	jp pe, Jump_03_22d3                                                  ; $179c : $ea, $d3, $22
	jp pe, Jump_03_22d3                                                  ; $179f : $ea, $d3, $22
	jp pe, $b9f3                                                  ; $17a2 : $ea, $f3, $b9
	sbc a, h                                                  ; $17a5 : $9c
	ld a, $73                                                  ; $17a6 : $3e, $73
	ld a, l                                                  ; $17a8 : $7d
	out ($3d), a                                                  ; $17a9 : $d3, $3d
	ld e, a                                                  ; $17ab : $5f
	out ($e1), a                                                  ; $17ac : $d3, $e1
	and $16                                                  ; $17ae : $e6, $16
	pop hl                                                  ; $17b0 : $e1
	rlca                                                  ; $17b1 : $07
	and b                                                  ; $17b2 : $a0
	out ($50), a                                                  ; $17b3 : $d3, $50
	dec d                                                  ; $17b5 : $15
	ld a, (bc)                                                  ; $17b6 : $0a
	ld l, a                                                  ; $17b7 : $6f
	out ($7f), a                                                  ; $17b8 : $d3, $7f
	jr nc, -$19                                                  ; $17ba : $30, $e7

	ld l, (hl)                                                  ; $17bc : $6e
	ld a, a                                                  ; $17bd : $7f
	out ($73), a                                                  ; $17be : $d3, $73
	and l                                                  ; $17c0 : $a5
	sbc a, b                                                  ; $17c1 : $98
	ccf                                                  ; $17c2 : $3f
	out ($73), a                                                  ; $17c3 : $d3, $73
	and l                                                  ; $17c5 : $a5
	sbc a, b                                                  ; $17c6 : $98
	inc a                                                  ; $17c7 : $3c
	out ($73), a                                                  ; $17c8 : $d3, $73
	pop bc                                                  ; $17ca : $c1
	sbc a, d                                                  ; $17cb : $9a
	ccf                                                  ; $17cc : $3f
	out ($73), a                                                  ; $17cd : $d3, $73
	rst $20                                                  ; $17cf : $e7
	ld l, h                                                  ; $17d0 : $6c
	ld l, c                                                  ; $17d1 : $69
	adc a, a                                                  ; $17d2 : $8f
	out ($73), a                                                  ; $17d3 : $d3, $73
	rst $20                                                  ; $17d5 : $e7
	ld l, h                                                  ; $17d6 : $6c
	ld l, c                                                  ; $17d7 : $69
	adc a, h                                                  ; $17d8 : $8c
	out ($e4), a                                                  ; $17d9 : $d3, $e4
	and e                                                  ; $17db : $a3
	or b                                                  ; $17dc : $b0
	out ($d3), a                                                  ; $17dd : $d3, $d3
	call po, $b0a3                                                  ; $17df : $e4, $a3, $b0
	sbc a, $6b                                                  ; $17e2 : $de, $6b
	ccf                                                  ; $17e4 : $3f
	out ($e4), a                                                  ; $17e5 : $d3, $e4
	and a                                                  ; $17e7 : $a7
	dec a                                                  ; $17e8 : $3d
	sbc a, b                                                  ; $17e9 : $98
	out ($8f), a                                                  ; $17ea : $d3, $8f
	out ($82), a                                                  ; $17ec : $d3, $82
	sbc a, b                                                  ; $17ee : $98
	rst $08                                                  ; $17ef : $cf
	out ($88), a                                                  ; $17f0 : $d3, $88
	inc a                                                  ; $17f2 : $3c
	jp $d33f                                                  ; $17f3 : $c3, $3f, $d3


	adc a, b                                                  ; $17f6 : $88
	ld l, h                                                  ; $17f7 : $6c
	out ($be), a                                                  ; $17f8 : $d3, $be
	ld b, (hl)                                                  ; $17fa : $46
	add a, b                                                  ; $17fb : $80
	ld a, a                                                  ; $17fc : $7f
	out ($bb), a                                                  ; $17fd : $d3, $bb
	ld l, l                                                  ; $17ff : $6d
	sbc a, e                                                  ; $1800 : $9b
	jp pe, $cdd3                                                  ; $1801 : $ea, $d3, $cd
	ld c, $43                                                  ; $1804 : $0e, $43
	adc a, l                                                  ; $1806 : $8d
	out ($e9), a                                                  ; $1807 : $d3, $e9
	inc c                                                  ; $1809 : $0c
	push de                                                  ; $180a : $d5
	ld b, $70                                                  ; $180b : $06, $70
	add a, d                                                  ; $180d : $82

Call_03_180e:
	push de                                                  ; $180e : $d5
	ld c, $43                                                  ; $180f : $0e, $43
	rst $08                                                  ; $1811 : $cf
	push de                                                  ; $1812 : $d5
	ex af, af'                                                  ; $1813 : $08
	push de                                                  ; $1814 : $d5

br_03_1815:
	ex af, af'                                                  ; $1815 : $08
	ex (sp), hl                                                  ; $1816 : $e3
	adc a, $16                                                  ; $1817 : $ce, $16
	rst $20                                                  ; $1819 : $e7
	ld l, b                                                  ; $181a : $68
	pop hl                                                  ; $181b : $e1
	push de                                                  ; $181c : $d5
	dec bc                                                  ; $181d : $0b
	push de                                                  ; $181e : $d5
	ld c, $8c                                                  ; $181f : $0e, $8c
	push de                                                  ; $1821 : $d5
	ccf                                                  ; $1822 : $3f
	jr nc, br_03_1890                                                  ; $1823 : $30, $6b

	push de                                                  ; $1825 : $d5
	ccf                                                  ; $1826 : $3f
	jr nc, br_03_18a3                                                  ; $1827 : $30, $7a

	rst $08                                                  ; $1829 : $cf
	push de                                                  ; $182a : $d5
	ccf                                                  ; $182b : $3f
	ld a, $06                                                  ; $182c : $3e, $06
	ret po                                                  ; $182e : $e0

	ld (hl), e                                                  ; $182f : $73
	push de                                                  ; $1830 : $d5
	ccf                                                  ; $1831 : $3f
	inc sp                                                  ; $1832 : $33
	dec bc                                                  ; $1833 : $0b
	push de                                                  ; $1834 : $d5
	push de                                                  ; $1835 : $d5
	ccf                                                  ; $1836 : $3f
	inc (hl)                                                  ; $1837 : $34
	ld (hl), b                                                  ; $1838 : $70
	pop hl                                                  ; $1839 : $e1
	push de                                                  ; $183a : $d5
	ccf                                                  ; $183b : $3f
	ld a, $49                                                  ; $183c : $3e, $49
	sbc a, b                                                  ; $183e : $98
	push de                                                  ; $183f : $d5
	jr nc, br_03_1815                                                  ; $1840 : $30, $d3

	cp a                                                  ; $1842 : $bf
	push de                                                  ; $1843 : $d5
	ld a, $4f                                                  ; $1844 : $3e, $4f
	push de                                                  ; $1846 : $d5
	dec sp                                                  ; $1847 : $3b
	ccf                                                  ; $1848 : $3f
	push de                                                  ; $1849 : $d5
	dec sp                                                  ; $184a : $3b
	call po, $d507                                                  ; $184b : $e4, $07, $d5
	dec sp                                                  ; $184e : $3b
	call po, $d561                                                  ; $184f : $e4, $61, $d5
	dec sp                                                  ; $1852 : $3b
	call po, $439e                                                  ; $1853 : $e4, $9e, $43
	out ($bf), a                                                  ; $1856 : $d3, $bf
	push de                                                  ; $1858 : $d5
	dec sp                                                  ; $1859 : $3b
	call po, $439e                                                  ; $185a : $e4, $9e, $43
	in a, ($61)                                                  ; $185d : $db, $61
	push de                                                  ; $185f : $d5
	dec sp                                                  ; $1860 : $3b
	call po, $a59c                                                  ; $1861 : $e4, $9c, $a5
	dec sp                                                  ; $1864 : $3b
	ccf                                                  ; $1865 : $3f
	push de                                                  ; $1866 : $d5
	ld h, c                                                  ; $1867 : $61
	ex (sp), hl                                                  ; $1868 : $e3
	push de                                                  ; $1869 : $d5
	ld h, c                                                  ; $186a : $61
	ex (sp), hl                                                  ; $186b : $e3
	add a, e                                                  ; $186c : $83
	call z, $68d5                                                  ; $186d : $cc, $d5, $68
	push de                                                  ; $1870 : $d5
	ld l, b                                                  ; $1871 : $68
	pop hl                                                  ; $1872 : $e1
	push de                                                  ; $1873 : $d5
	ld l, b                                                  ; $1874 : $68
	pop hl                                                  ; $1875 : $e1
	rst $08                                                  ; $1876 : $cf
	push de                                                  ; $1877 : $d5
	ld l, b                                                  ; $1878 : $68
	ex (sp), hl                                                  ; $1879 : $e3
	ld l, b                                                  ; $187a : $68
	pop hl                                                  ; $187b : $e1
	push de                                                  ; $187c : $d5
	ld l, e                                                  ; $187d : $6b
	cpl                                                  ; $187e : $2f
	push de                                                  ; $187f : $d5
	ld l, e                                                  ; $1880 : $6b
	out ($38), a                                                  ; $1881 : $d3, $38
	push de                                                  ; $1883 : $d5
	ld l, e                                                  ; $1884 : $6b
	out ($38), a                                                  ; $1885 : $d3, $38
	push de                                                  ; $1887 : $d5
	push de                                                  ; $1888 : $d5
	sbc a, (hl)                                                  ; $1889 : $9e
	ld b, b                                                  ; $188a : $40
	rst $08                                                  ; $188b : $cf
	inc sp                                                  ; $188c : $33
	ld h, $c9                                                  ; $188d : $26, $c9
	adc a, a                                                  ; $188f : $8f

br_03_1890:
	push de                                                  ; $1890 : $d5
	sbc a, (hl)                                                  ; $1891 : $9e
	ld b, b                                                  ; $1892 : $40
	rst $08                                                  ; $1893 : $cf
	ld a, ($8306)                                                  ; $1894 : $3a, $06, $83
	push de                                                  ; $1897 : $d5
	sbc a, e                                                  ; $1898 : $9b
	and e                                                  ; $1899 : $a3
	push de                                                  ; $189a : $d5
	sbc a, h                                                  ; $189b : $9c
	ccf                                                  ; $189c : $3f
	push de                                                  ; $189d : $d5
	sbc a, (hl)                                                  ; $189e : $9e
	ld l, h                                                  ; $189f : $6c
	ex af, af'                                                  ; $18a0 : $08
	inc l                                                  ; $18a1 : $2c
	push de                                                  ; $18a2 : $d5

br_03_18a3:
	or (hl)                                                  ; $18a3 : $b6
	rst $20                                                  ; $18a4 : $e7
	inc a                                                  ; $18a5 : $3c
	push de                                                  ; $18a6 : $d5
	cp c                                                  ; $18a7 : $b9
	dec c                                                  ; $18a8 : $0d
	push de                                                  ; $18a9 : $d5
	cp c                                                  ; $18aa : $b9
	ret pe                                                  ; $18ab : $e8

	adc a, a                                                  ; $18ac : $8f
	push de                                                  ; $18ad : $d5
	cp (hl)                                                  ; $18ae : $be
	ld l, h                                                  ; $18af : $6c
	rst $18                                                  ; $18b0 : $df
	push de                                                  ; $18b1 : $d5
	and $82                                                  ; $18b2 : $e6, $82
	dec sp                                                  ; $18b4 : $3b
	push de                                                  ; $18b5 : $d5
	jp pe, $3fe4                                                  ; $18b6 : $ea, $e4, $3f
	push de                                                  ; $18b9 : $d5
	jp pe, $62b9                                                  ; $18ba : $ea, $b9, $62
	rst $08                                                  ; $18bd : $cf
	sub $e0                                                  ; $18be : $d6, $e0
	dec a                                                  ; $18c0 : $3d
	ex af, af'                                                  ; $18c1 : $08
	sub $1e                                                  ; $18c2 : $d6, $1e
	.db $ed                                                  ; $18c4 : $ed
	ld bc, $d9ee                                                  ; $18c5 : $01, $ee, $d9
	ccf                                                  ; $18c8 : $3f
	sub $1e                                                  ; $18c9 : $d6, $1e
	inc sp                                                  ; $18cb : $33
	call c, $20d6                                                  ; $18cc : $dc, $d6, $20
	ld a, a                                                  ; $18cf : $7f
	ld a, $80                                                  ; $18d0 : $3e, $80
	rst $20                                                  ; $18d2 : $e7
	ccf                                                  ; $18d3 : $3f
	sub $23                                                  ; $18d4 : $d6, $23
	sub $23                                                  ; $18d6 : $d6, $23
	rst $08                                                  ; $18d8 : $cf
	sub $e1                                                  ; $18d9 : $d6, $e1
	or (hl)                                                  ; $18db : $b6
	rst $08                                                  ; $18dc : $cf
	sub $7d                                                  ; $18dd : $d6, $7d
	sub $e4                                                  ; $18df : $d6, $e4
	ccf                                                  ; $18e1 : $3f
	sub $e4                                                  ; $18e2 : $d6, $e4
	inc a                                                  ; $18e4 : $3c
	sub $8e                                                  ; $18e5 : $d6, $8e
	xor a                                                  ; $18e7 : $af
	sub $cc                                                  ; $18e8 : $d6, $cc
	and $3f                                                  ; $18ea : $e6, $3f
	sub $cc                                                  ; $18ec : $d6, $cc
	and $3c                                                  ; $18ee : $e6, $3c
	sub $d0                                                  ; $18f0 : $d6, $d0
	add a, (hl)                                                  ; $18f2 : $86
	rra                                                  ; $18f3 : $1f
	sub $d7                                                  ; $18f4 : $d6, $d7
	ccf                                                  ; $18f6 : $3f
	exx                                                  ; $18f7 : $d9
	di                                                  ; $18f8 : $f3
	rrca                                                  ; $18f9 : $0f
	exx                                                  ; $18fa : $d9
	ld (bc), a                                                  ; $18fb : $02
	exx                                                  ; $18fc : $d9
	ld (bc), a                                                  ; $18fd : $02
	rst $08                                                  ; $18fe : $cf
	exx                                                  ; $18ff : $d9
	ret po                                                  ; $1900 : $e0

	ld bc, $d919                                                  ; $1901 : $01, $19, $d9
	pop hl                                                  ; $1904 : $e1
	dec a                                                  ; $1905 : $3d
	ld d, e                                                  ; $1906 : $53
	cp a                                                  ; $1907 : $bf
	exx                                                  ; $1908 : $d9
	pop hl                                                  ; $1909 : $e1
	sbc a, a                                                  ; $190a : $9f

Call_03_190b:
	exx                                                  ; $190b : $d9
	ex (sp), hl                                                  ; $190c : $e3
	jp pe, $d99f                                                  ; $190d : $ea, $9f, $d9
	call po, $8fd9                                                  ; $1910 : $e4, $d9, $8f
	exx                                                  ; $1913 : $d9
	adc a, h                                                  ; $1914 : $8c
	ld h, a                                                  ; $1915 : $67
	rst $08                                                  ; $1916 : $cf
	exx                                                  ; $1917 : $d9
	sbc a, a                                                  ; $1918 : $9f
	exx                                                  ; $1919 : $d9
	sbc a, (hl)                                                  ; $191a : $9e
	ccf                                                  ; $191b : $3f
	exx                                                  ; $191c : $d9
	sub a                                                  ; $191d : $97
	exx                                                  ; $191e : $d9
	xor a                                                  ; $191f : $af
	exx                                                  ; $1920 : $d9
	xor c                                                  ; $1921 : $a9
	pop hl                                                  ; $1922 : $e1
	or b                                                  ; $1923 : $b0
	and l                                                  ; $1924 : $a5
	jp pe, $b8d9                                                  ; $1925 : $ea, $d9, $b8
	ld (bc), a                                                  ; $1928 : $02
	sbc a, a                                                  ; $1929 : $9f
	exx                                                  ; $192a : $d9
	cp c                                                  ; $192b : $b9
	adc a, l                                                  ; $192c : $8d
	sbc a, a                                                  ; $192d : $9f
	exx                                                  ; $192e : $d9
	call Call_03_0f02                                                  ; $192f : $cd, $02, $0f
	exx                                                  ; $1932 : $d9
	and $b6                                                  ; $1933 : $e6, $b6
	adc a, $4f                                                  ; $1935 : $ce, $4f
	exx                                                  ; $1937 : $d9
	ret pe                                                  ; $1938 : $e8

	dec sp                                                  ; $1939 : $3b
	in a, ($01)                                                  ; $193a : $db, $01
	ccf                                                  ; $193c : $3f
	in a, ($01)                                                  ; $193d : $db, $01
	exx                                                  ; $193f : $d9
	cp a                                                  ; $1940 : $bf
	in a, ($02)                                                  ; $1941 : $db, $02
	ccf                                                  ; $1943 : $3f
	in a, ($02)                                                  ; $1944 : $db, $02
	ld l, b                                                  ; $1946 : $68
	pop hl                                                  ; $1947 : $e1
	in a, ($02)                                                  ; $1948 : $db, $02
	ld l, l                                                  ; $194a : $6d
	ld l, c                                                  ; $194b : $69
	add a, b                                                  ; $194c : $80
	ld (hl), a                                                  ; $194d : $77
	jp pe, Jump_03_04db                                                  ; $194e : $ea, $db, $04
	rlca                                                  ; $1951 : $07
	pop hl                                                  ; $1952 : $e1
	dec bc                                                  ; $1953 : $0b
	in a, ($06)                                                  ; $1954 : $db, $06
	ld a, a                                                  ; $1956 : $7f
	in a, ($06)                                                  ; $1957 : $db, $06
	ld a, h                                                  ; $1959 : $7c
	in a, ($06)                                                  ; $195a : $db, $06
	adc a, h                                                  ; $195c : $8c
	in a, ($06)                                                  ; $195d : $db, $06
	rst $18                                                  ; $195f : $df
	in a, ($06)                                                  ; $1960 : $db, $06
	call c, Call_03_0edb                                                  ; $1962 : $dc, $db, $0e
	inc hl                                                  ; $1965 : $23
	dec e                                                  ; $1966 : $1d
	sbc a, e                                                  ; $1967 : $9b
	jp pe, Jump_03_08db                                                  ; $1968 : $ea, $db, $08
	pop bc                                                  ; $196b : $c1
	sbc a, b                                                  ; $196c : $98
	sub $83                                                  ; $196d : $d6, $83
	adc a, l                                                  ; $196f : $8d
	rlca                                                  ; $1970 : $07
	in a, ($08)                                                  ; $1971 : $db, $08
	call nz, $db3b                                                  ; $1973 : $c4, $3b, $db
	ex af, af'                                                  ; $1976 : $08
	call nz, $cf3b                                                  ; $1977 : $c4, $3b, $cf
	in a, ($08)                                                  ; $197a : $db, $08
	call nz, $e49b                                                  ; $197c : $c4, $9b, $e4
	ld ($08db), a                                                  ; $197f : $32, $db, $08

br_03_1982:
	call nz, $c6e6                                                  ; $1982 : $c4, $e6, $c6
	sbc a, b                                                  ; $1985 : $98
	in a, ($08)                                                  ; $1986 : $db, $08
	add a, $cd                                                  ; $1988 : $c6, $cd
	sbc a, e                                                  ; $198a : $9b
	in a, ($08)                                                  ; $198b : $db, $08
	add a, $d6                                                  ; $198d : $c6, $d6
	sbc a, b                                                  ; $198f : $98
	in a, ($08)                                                  ; $1990 : $db, $08
	rst $00                                                  ; $1992 : $c7
	and $13                                                  ; $1993 : $e6, $13
	adc a, l                                                  ; $1995 : $8d
	in a, ($08)                                                  ; $1996 : $db, $08
	jp z, Jump_03_380b                                                  ; $1998 : $ca, $0b, $38
	rst $18                                                  ; $199b : $df

Call_03_199c:
	in a, ($0e)                                                  ; $199c : $db, $0e
	ld (hl), e                                                  ; $199e : $73
	ld a, a                                                  ; $199f : $7f
	in a, ($0e)                                                  ; $19a0 : $db, $0e
	ld (hl), e                                                  ; $19a2 : $73
	ld (hl), a                                                  ; $19a3 : $77
	ld ($0edb), a                                                  ; $19a4 : $32, $db, $0e
	ld (hl), e                                                  ; $19a7 : $73
	ld a, h                                                  ; $19a8 : $7c
	in a, ($0e)                                                  ; $19a9 : $db, $0e
	add a, a                                                  ; $19ab : $87
	dec sp                                                  ; $19ac : $3b
	in a, ($30)                                                  ; $19ad : $db, $30
	adc a, $6b                                                  ; $19af : $ce, $6b
	ccf                                                  ; $19b1 : $3f
	in a, ($30)                                                  ; $19b2 : $db, $30
	sbc a, $af                                                  ; $19b4 : $de, $af
	in a, ($33)                                                  ; $19b6 : $db, $33
	in a, ($33)                                                  ; $19b8 : $db, $33
	ld (hl), e                                                  ; $19ba : $73
	call z, $33db                                                  ; $19bb : $cc, $db, $33
	rst $08                                                  ; $19be : $cf
	in a, ($38)                                                  ; $19bf : $db, $38
	dec d                                                  ; $19c1 : $15
	in a, ($38)                                                  ; $19c2 : $db, $38
	exx                                                  ; $19c4 : $d9
	adc a, a                                                  ; $19c5 : $8f
	in a, ($60)                                                  ; $19c6 : $db, $60
	adc a, (hl)                                                  ; $19c8 : $8e
	rla                                                  ; $19c9 : $17
	ccf                                                  ; $19ca : $3f
	in a, ($60)                                                  ; $19cb : $db, $60
	adc a, (hl)                                                  ; $19cd : $8e
	rla                                                  ; $19ce : $17
	inc a                                                  ; $19cf : $3c
	in a, ($6e)                                                  ; $19d0 : $db, $6e
	inc bc                                                  ; $19d2 : $03
	rst $08                                                  ; $19d3 : $cf
	in a, ($6e)                                                  ; $19d4 : $db, $6e
	ld c, $6d                                                  ; $19d6 : $0e, $6d
	dec bc                                                  ; $19d8 : $0b
	jp pe, $61db                                                  ; $19d9 : $ea, $db, $61
	ld d, a                                                  ; $19dc : $57
	sbc a, e                                                  ; $19dd : $9b
	ld h, d                                                  ; $19de : $62
	ccf                                                  ; $19df : $3f
	in a, ($63)                                                  ; $19e0 : $db, $63
	cpl                                                  ; $19e2 : $2f
	in a, ($68)                                                  ; $19e3 : $db, $68
	ld h, d                                                  ; $19e5 : $62
	ld (bc), a                                                  ; $19e6 : $02
	in a, ($68)                                                  ; $19e7 : $db, $68
	ld l, l                                                  ; $19e9 : $6d
	jp pe, $6adb                                                  ; $19ea : $ea, $db, $6a
	ld (hl), e                                                  ; $19ed : $73
	di                                                  ; $19ee : $f3
	jp po, $e4e6                                                  ; $19ef : $e2, $e6, $e4
	xor a                                                  ; $19f2 : $af
	in a, ($6a)                                                  ; $19f3 : $db, $6a
	rst $08                                                  ; $19f5 : $cf
	in a, ($99)                                                  ; $19f6 : $db, $99
	xor h                                                  ; $19f8 : $ac
	in a, ($9a)                                                  ; $19f9 : $db, $9a
	ld h, c                                                  ; $19fb : $61
	di                                                  ; $19fc : $f3
	sub h                                                  ; $19fd : $94
	di                                                  ; $19fe : $f3
	djnz br_03_1982                                                  ; $19ff : $10, $81
	dec sp                                                  ; $1a01 : $3b
	in a, ($9a)                                                  ; $1a02 : $db, $9a
	ld h, c                                                  ; $1a04 : $61
	rlca                                                  ; $1a05 : $07
	in a, ($9a)                                                  ; $1a06 : $db, $9a
	sbc a, h                                                  ; $1a08 : $9c
	and l                                                  ; $1a09 : $a5
	dec sp                                                  ; $1a0a : $3b
	ccf                                                  ; $1a0b : $3f
	in a, ($9e)                                                  ; $1a0c : $db, $9e
	ld l, (hl)                                                  ; $1a0e : $6e
	rlca                                                  ; $1a0f : $07
	ccf                                                  ; $1a10 : $3f
	in a, ($9e)                                                  ; $1a11 : $db, $9e
	ld l, (hl)                                                  ; $1a13 : $6e
	dec d                                                  ; $1a14 : $15
	in a, ($e6)                                                  ; $1a15 : $db, $e6
	call po, $db08                                                  ; $1a17 : $e4, $08, $db
	and $d5                                                  ; $1a1a : $e6, $d5
	sbc a, $6e                                                  ; $1a1c : $de, $6e
	inc bc                                                  ; $1a1e : $03
	sbc a, $6e                                                  ; $1a1f : $de, $6e
	inc bc                                                  ; $1a21 : $03
	rst $08                                                  ; $1a22 : $cf
	sbc a, $6e                                                  ; $1a23 : $de, $6e
	inc e                                                  ; $1a25 : $1c
	sbc a, $68                                                  ; $1a26 : $de, $68
	dec hl                                                  ; $1a28 : $2b
	rrca                                                  ; $1a29 : $0f
	sbc a, $68                                                  ; $1a2a : $de, $68
	ld l, b                                                  ; $1a2c : $68
	pop hl                                                  ; $1a2d : $e1
	sbc a, $6b                                                  ; $1a2e : $de, $6b
	ex (sp), hl                                                  ; $1a30 : $e3
	ld a, $af                                                  ; $1a31 : $3e, $af
	sbc a, $6b                                                  ; $1a33 : $de, $6b
	adc a, h                                                  ; $1a35 : $8c
	sbc a, $6b                                                  ; $1a36 : $de, $6b
	rst $10                                                  ; $1a38 : $d7
	inc a                                                  ; $1a39 : $3c
	sbc a, $83                                                  ; $1a3a : $de, $83
	adc a, l                                                  ; $1a3c : $8d
	jp pe, $86de                                                  ; $1a3d : $ea, $de, $86
	pop hl                                                  ; $1a40 : $e1
	sbc a, $86                                                  ; $1a41 : $de, $86
	adc a, a                                                  ; $1a43 : $8f
	sbc a, $89                                                  ; $1a44 : $de, $89
	di                                                  ; $1a46 : $f3
	push de                                                  ; $1a47 : $d5
	sbc a, (hl)                                                  ; $1a48 : $9e
	ld l, h                                                  ; $1a49 : $6c
	ex af, af'                                                  ; $1a4a : $08
	cpl                                                  ; $1a4b : $2f
	sbc a, $aa                                                  ; $1a4c : $de, $aa
	ccf                                                  ; $1a4e : $3f
	sbc a, $aa                                                  ; $1a4f : $de, $aa
	ld a, $8b                                                  ; $1a51 : $3e, $8b
	ld l, l                                                  ; $1a53 : $6d
	dec sp                                                  ; $1a54 : $3b
	sbc a, $aa                                                  ; $1a55 : $de, $aa
	ld e, c                                                  ; $1a57 : $59
	sbc a, b                                                  ; $1a58 : $98
	and $ec                                                  ; $1a59 : $e6, $ec
	ex (sp), hl                                                  ; $1a5b : $e3
	call pe, $ece6                                                  ; $1a5c : $ec, $e6, $ec
	adc a, $cf                                                  ; $1a5f : $ce, $cf
	ld a, $1b                                                  ; $1a61 : $3e, $1b
	ex af, af'                                                  ; $1a63 : $08
	rst $18                                                  ; $1a64 : $df
	and $ec                                                  ; $1a65 : $e6, $ec
	adc a, $cc                                                  ; $1a67 : $ce, $cc
	call pe, $cfbe                                                  ; $1a69 : $ec, $be, $cf
	and $e3                                                  ; $1a6c : $e6, $e3
	and $7e                                                  ; $1a6e : $e6, $7e
	xor h                                                  ; $1a70 : $ac
	jp Jump_03_3ccf                                                  ; $1a71 : $c3, $cf, $3c


	call pe, $e1f3                                                  ; $1a74 : $ec, $f3, $e1
	or b                                                  ; $1a77 : $b0
	adc a, l                                                  ; $1a78 : $8d
	and $8f                                                  ; $1a79 : $e6, $8f
	and $82                                                  ; $1a7b : $e6, $82
	dec sp                                                  ; $1a7d : $3b
	and $82                                                  ; $1a7e : $e6, $82
	dec sp                                                  ; $1a80 : $3b
	pop hl                                                  ; $1a81 : $e1
	sub e                                                  ; $1a82 : $93
	rst $08                                                  ; $1a83 : $cf
	and $82                                                  ; $1a84 : $e6, $82
	dec sp                                                  ; $1a86 : $3b
	pop hl                                                  ; $1a87 : $e1

Call_03_1a88:
	cp c                                                  ; $1a88 : $b9
	and $82                                                  ; $1a89 : $e6, $82
	and $82                                                  ; $1a8b : $e6, $82
	dec sp                                                  ; $1a8d : $3b
	ret pe                                                  ; $1a8e : $e8

	dec c                                                  ; $1a8f : $0d
	dec sp                                                  ; $1a90 : $3b
	and $8e                                                  ; $1a91 : $e6, $8e
	ld e, $60                                                  ; $1a93 : $1e, $60
	or d                                                  ; $1a95 : $b2
	ld ($86e6), a                                                  ; $1a96 : $32, $e6, $86
	sbc a, b                                                  ; $1a99 : $98
	and $86                                                  ; $1a9a : $e6, $86
	sbc a, b                                                  ; $1a9c : $98
	rst $08                                                  ; $1a9d : $cf
	and $86                                                  ; $1a9e : $e6, $86
	rst $18                                                  ; $1aa0 : $df
	and $86                                                  ; $1aa1 : $e6, $86
	out ($2f), a                                                  ; $1aa3 : $d3, $2f
	and $86                                                  ; $1aa5 : $e6, $86
	out ($2f), a                                                  ; $1aa7 : $d3, $2f
	jr nc, br_03_1b16                                                  ; $1aa9 : $30, $6b

	halt                                                  ; $1aab : $76
	add a, e                                                  ; $1aac : $83
	rst $08                                                  ; $1aad : $cf
	and $86                                                  ; $1aae : $e6, $86
	out ($2f), a                                                  ; $1ab0 : $d3, $2f
	ld a, $36                                                  ; $1ab2 : $3e, $36
	adc a, (hl)                                                  ; $1ab4 : $8e
	ld (de), a                                                  ; $1ab5 : $12
	sbc a, (hl)                                                  ; $1ab6 : $9e
	ld c, a                                                  ; $1ab7 : $4f
	and $86                                                  ; $1ab8 : $e6, $86
	call c, $86e6                                                  ; $1aba : $dc, $e6, $86
	sbc a, $af                                                  ; $1abd : $de, $af
	and $86                                                  ; $1abf : $e6, $86
	rst $20                                                  ; $1ac1 : $e7
	dec sp                                                  ; $1ac2 : $3b
	add a, $de                                                  ; $1ac3 : $c6, $de
	xor a                                                  ; $1ac5 : $af
	and $8a                                                  ; $1ac6 : $e6, $8a
	sbc a, d                                                  ; $1ac8 : $9a
	and $70                                                  ; $1ac9 : $e6, $70
	out ($2f), a                                                  ; $1acb : $d3, $2f
	and $8d                                                  ; $1acd : $e6, $8d
	ld h, a                                                  ; $1acf : $67
	and $a9                                                  ; $1ad0 : $e6, $a9
	adc a, a                                                  ; $1ad2 : $8f
	and $aa                                                  ; $1ad3 : $e6, $aa
	dec sp                                                  ; $1ad5 : $3b
	and $aa                                                  ; $1ad6 : $e6, $aa
	dec sp                                                  ; $1ad8 : $3b
	di                                                  ; $1ad9 : $f3
	add a, $e9                                                  ; $1ada : $c6, $e9
	and $b0                                                  ; $1adc : $e6, $b0
	ld a, a                                                  ; $1ade : $7f
	and $b0                                                  ; $1adf : $e6, $b0
	ld a, h                                                  ; $1ae1 : $7c
	and $b0                                                  ; $1ae2 : $e6, $b0
	add a, (hl)                                                  ; $1ae4 : $86
	and $e4                                                  ; $1ae5 : $e6, $e4
	and $be                                                  ; $1ae7 : $e6, $be
	nop                                                  ; $1ae9 : $00
	adc a, a                                                  ; $1aea : $8f
	and $be                                                  ; $1aeb : $e6, $be
	nop                                                  ; $1aed : $00
	add a, (hl)                                                  ; $1aee : $86
	ex de, hl                                                  ; $1aef : $eb
	dec c                                                  ; $1af0 : $0d
	ld l, c                                                  ; $1af1 : $69
	adc a, a                                                  ; $1af2 : $8f
	and $be                                                  ; $1af3 : $e6, $be
	ld l, (hl)                                                  ; $1af5 : $6e
	ld e, $60                                                  ; $1af6 : $1e, $60
	jp pe, $c0e6                                                  ; $1af8 : $ea, $e6, $c0
	and $c3                                                  ; $1afb : $e6, $c3
	and $c3                                                  ; $1afd : $e6, $c3
	cpl                                                  ; $1aff : $2f
	and $c3                                                  ; $1b00 : $e6, $c3
	rst $08                                                  ; $1b02 : $cf
	and $c6                                                  ; $1b03 : $e6, $c6
	adc a, (hl)                                                  ; $1b05 : $8e
	rra                                                  ; $1b06 : $1f
	and $cc                                                  ; $1b07 : $e6, $cc
	cp a                                                  ; $1b09 : $bf
	and $ce                                                  ; $1b0a : $e6, $ce
	ld h, b                                                  ; $1b0c : $60
	ld (hl), a                                                  ; $1b0d : $77
	jp pe, $d0e6                                                  ; $1b0e : $ea, $e6, $d0
	ld e, a                                                  ; $1b11 : $5f
	rst $20                                                  ; $1b12 : $e7
	ld bc, $8016                                                  ; $1b13 : $01, $16, $80

br_03_1b16:
	sub $98                                                  ; $1b16 : $d6, $98
	rst $20                                                  ; $1b18 : $e7
	ld bc, $e6e6                                                  ; $1b19 : $01, $e6, $e6
	call po, Call_03_07e7                                                  ; $1b1c : $e4, $e7, $07
	ld ($d961), a                                                  ; $1b1f : $32, $61, $d9
	or (hl)                                                  ; $1b22 : $b6
	ex af, af'                                                  ; $1b23 : $08
	rst $20                                                  ; $1b24 : $e7
	rlca                                                  ; $1b25 : $07
	ld (hl), e                                                  ; $1b26 : $73
	jp pe, Jump_03_07e7                                                  ; $1b27 : $ea, $e7, $07
	ld (hl), e                                                  ; $1b2a : $73
	jp pe, $49f3                                                  ; $1b2b : $ea, $f3, $49
	cp (hl)                                                  ; $1b2e : $be
	inc de                                                  ; $1b2f : $13
	rst $20                                                  ; $1b30 : $e7
	rlca                                                  ; $1b31 : $07
	and $3f                                                  ; $1b32 : $e6, $3f
	rst $20                                                  ; $1b34 : $e7
	ex af, af'                                                  ; $1b35 : $08
	add hl, de                                                  ; $1b36 : $19
	and $e7                                                  ; $1b37 : $e6, $e7
	dec sp                                                  ; $1b39 : $3b
	rst $20                                                  ; $1b3a : $e7
	ld a, (bc)                                                  ; $1b3b : $0a
	sbc a, e                                                  ; $1b3c : $9b
	rst $20                                                  ; $1b3d : $e7
	ld a, (bc)                                                  ; $1b3e : $0a
	sbc a, e                                                  ; $1b3f : $9b
	ld l, (hl)                                                  ; $1b40 : $6e
	or b                                                  ; $1b41 : $b0
	sub $98                                                  ; $1b42 : $d6, $98
	rst $20                                                  ; $1b44 : $e7

br_03_1b45:
	ld a, (bc)                                                  ; $1b45 : $0a
	sbc a, e                                                  ; $1b46 : $9b
	ld l, (hl)                                                  ; $1b47 : $6e
	or e                                                  ; $1b48 : $b3
	rst $20                                                  ; $1b49 : $e7
	dec bc                                                  ; $1b4a : $0b
	ld h, e                                                  ; $1b4b : $63
	rst $08                                                  ; $1b4c : $cf
	rst $20                                                  ; $1b4d : $e7
	dec c                                                  ; $1b4e : $0d
	ld h, c                                                  ; $1b4f : $61
	ex af, af'                                                  ; $1b50 : $08
	rst $20                                                  ; $1b51 : $e7
	ld a, $13                                                  ; $1b52 : $3e, $13
	ret nc                                                  ; $1b54 : $d0

	ret po                                                  ; $1b55 : $e0

br_03_1b56:
	ld (hl), e                                                  ; $1b56 : $73
	rst $08                                                  ; $1b57 : $cf
	rst $20                                                  ; $1b58 : $e7
	scf                                                  ; $1b59 : $37
	sub c                                                  ; $1b5a : $91
	ld l, l                                                  ; $1b5b : $6d
	jp pe, $38e7                                                  ; $1b5c : $ea, $e7, $38
	ld a, $be                                                  ; $1b5f : $3e, $be
	ld h, e                                                  ; $1b61 : $63
	ld (hl), b                                                  ; $1b62 : $70
	rst $20                                                  ; $1b63 : $e7
	jr c, br_03_1bc7                                                  ; $1b64 : $38, $61

	ccf                                                  ; $1b66 : $3f
	rst $20                                                  ; $1b67 : $e7
	jr c, br_03_1b45                                                  ; $1b68 : $38, $db

	ld h, c                                                  ; $1b6a : $61
	ld (hl), e                                                  ; $1b6b : $73
	rst $08                                                  ; $1b6c : $cf
	rst $20                                                  ; $1b6d : $e7
	jr c, br_03_1b56                                                  ; $1b6e : $38, $e6

	rst $08                                                  ; $1b70 : $cf
	rst $20                                                  ; $1b71 : $e7
	dec sp                                                  ; $1b72 : $3b
	ld bc, $6ebe                                                  ; $1b73 : $01, $be, $6e
	cp a                                                  ; $1b76 : $bf
	rst $20                                                  ; $1b77 : $e7
	dec sp                                                  ; $1b78 : $3b
	ret po                                                  ; $1b79 : $e0

	rst $20                                                  ; $1b7a : $e7
	dec sp                                                  ; $1b7b : $3b
	ret po                                                  ; $1b7c : $e0

	rst $08                                                  ; $1b7d : $cf
	rst $20                                                  ; $1b7e : $e7
	dec sp                                                  ; $1b7f : $3b
	call po, $df98                                                  ; $1b80 : $e4, $98, $df
	rst $20                                                  ; $1b83 : $e7
	dec sp                                                  ; $1b84 : $3b
	ret nz                                                  ; $1b85 : $c0

	ld h, a                                                  ; $1b86 : $67
	ld (hl), e                                                  ; $1b87 : $73
	rst $08                                                  ; $1b88 : $cf
	rst $20                                                  ; $1b89 : $e7
	dec sp                                                  ; $1b8a : $3b
	out ($e0), a                                                  ; $1b8b : $d3, $e0
	or b                                                  ; $1b8d : $b0
	out ($e7), a                                                  ; $1b8e : $d3, $e7
	dec sp                                                  ; $1b90 : $3b
	out ($e0), a                                                  ; $1b91 : $d3, $e0
	or b                                                  ; $1b93 : $b0
	out ($cf), a                                                  ; $1b94 : $d3, $cf
	rst $20                                                  ; $1b96 : $e7
	dec sp                                                  ; $1b97 : $3b
	sub $10                                                  ; $1b98 : $d6, $10
	ld a, a                                                  ; $1b9a : $7f
	rst $20                                                  ; $1b9b : $e7
	dec sp                                                  ; $1b9c : $3b
	jp pe, Jump_03_3ce7                                                  ; $1b9d : $ea, $e7, $3c
	jp $e77c                                                  ; $1ba0 : $c3, $7c, $e7


	dec a                                                  ; $1ba3 : $3d
	dec sp                                                  ; $1ba4 : $3b
	ld l, b                                                  ; $1ba5 : $68
	dec bc                                                  ; $1ba6 : $0b
	ld h, b                                                  ; $1ba7 : $60
	adc a, h                                                  ; $1ba8 : $8c
	rst $20                                                  ; $1ba9 : $e7
	ld l, (hl)                                                  ; $1baa : $6e
	dec bc                                                  ; $1bab : $0b
	dec c                                                  ; $1bac : $0d
	inc a                                                  ; $1bad : $3c
	rst $20                                                  ; $1bae : $e7
	ld l, (hl)                                                  ; $1baf : $6e
	dec bc                                                  ; $1bb0 : $0b
	dec c                                                  ; $1bb1 : $0d
	ld l, c                                                  ; $1bb2 : $69
	adc a, a                                                  ; $1bb3 : $8f
	rst $20                                                  ; $1bb4 : $e7
	ld l, (hl)                                                  ; $1bb5 : $6e

br_03_1bb6:
	dec bc                                                  ; $1bb6 : $0b
	dec c                                                  ; $1bb7 : $0d
	ld l, c                                                  ; $1bb8 : $69
	adc a, h                                                  ; $1bb9 : $8c

br_03_1bba:
	rst $20                                                  ; $1bba : $e7
	ld l, (hl)                                                  ; $1bbb : $6e
	dec bc                                                  ; $1bbc : $0b
	dec c                                                  ; $1bbd : $0d
	sbc a, e                                                  ; $1bbe : $9b
	rst $20                                                  ; $1bbf : $e7
	ld h, c                                                  ; $1bc0 : $61

br_03_1bc1:
	ld a, $ea                                                  ; $1bc1 : $3e, $ea

Jump_03_1bc3:
	or e                                                  ; $1bc3 : $b3
	add a, $23                                                  ; $1bc4 : $c6, $23
	adc a, l                                                  ; $1bc6 : $8d

br_03_1bc7:
	rst $20                                                  ; $1bc7 : $e7
	ld h, c                                                  ; $1bc8 : $61
	exx                                                  ; $1bc9 : $d9
	or (hl)                                                  ; $1bca : $b6
	rrca                                                  ; $1bcb : $0f
	rst $20                                                  ; $1bcc : $e7
	ld h, c                                                  ; $1bcd : $61
	exx                                                  ; $1bce : $d9
	cp (hl)                                                  ; $1bcf : $be
	xor a                                                  ; $1bd0 : $af
	rst $20                                                  ; $1bd1 : $e7
	ld h, e                                                  ; $1bd2 : $63
	adc a, b                                                  ; $1bd3 : $88
	rrca                                                  ; $1bd4 : $0f
	rst $20                                                  ; $1bd5 : $e7
	ld h, e                                                  ; $1bd6 : $63
	ret c                                                  ; $1bd7 : $d8

	ld c, $4f                                                  ; $1bd8 : $0e, $4f
	rst $20                                                  ; $1bda : $e7
	ld l, (hl)                                                  ; $1bdb : $6e
	ld (hl), $8e                                                  ; $1bdc : $36, $8e
	rra                                                  ; $1bde : $1f
	rst $20                                                  ; $1bdf : $e7
	ld l, (hl)                                                  ; $1be0 : $6e
	ld (hl), $8e                                                  ; $1be1 : $36, $8e
	inc e                                                  ; $1be3 : $1c
	rst $20                                                  ; $1be4 : $e7
	ld h, a                                                  ; $1be5 : $67
	ld (hl), b                                                  ; $1be6 : $70
	pop hl                                                  ; $1be7 : $e1
	ccf                                                  ; $1be8 : $3f
	rst $20                                                  ; $1be9 : $e7

Jump_03_1bea:
	ld l, b                                                  ; $1bea : $68
	ccf                                                  ; $1beb : $3f
	rst $20                                                  ; $1bec : $e7
	ld l, c                                                  ; $1bed : $69

Jump_03_1bee:
	ld (hl), e                                                  ; $1bee : $73
	add a, c                                                  ; $1bef : $81
	ccf                                                  ; $1bf0 : $3f
	rst $20                                                  ; $1bf1 : $e7
	ld l, e                                                  ; $1bf2 : $6b
	pop hl                                                  ; $1bf3 : $e1
	ld l, b                                                  ; $1bf4 : $68
	rst $20                                                  ; $1bf5 : $e7
	ld l, e                                                  ; $1bf6 : $6b
	pop hl                                                  ; $1bf7 : $e1
	ld l, b                                                  ; $1bf8 : $68
	ld h, b                                                  ; $1bf9 : $60
	rst $20                                                  ; $1bfa : $e7
	ld l, e                                                  ; $1bfb : $6b
	pop hl                                                  ; $1bfc : $e1
	ld l, b                                                  ; $1bfd : $68
	ld h, b                                                  ; $1bfe : $60
	adc a, h                                                  ; $1bff : $8c
	rst $20                                                  ; $1c00 : $e7
	ld l, e                                                  ; $1c01 : $6b
	and $cf                                                  ; $1c02 : $e6, $cf
	rst $20                                                  ; $1c04 : $e7
	ld l, h                                                  ; $1c05 : $6c
	ld l, (hl)                                                  ; $1c06 : $6e
	rlca                                                  ; $1c07 : $07
	ccf                                                  ; $1c08 : $3f
	rst $20                                                  ; $1c09 : $e7
	ld l, h                                                  ; $1c0a : $6c
	ld l, l                                                  ; $1c0b : $6d
	rst $20                                                  ; $1c0c : $e7
	ld l, l                                                  ; $1c0d : $6d
	ld c, $46                                                  ; $1c0e : $0e, $46
	adc a, a                                                  ; $1c10 : $8f
	rst $20                                                  ; $1c11 : $e7
	ld l, l                                                  ; $1c12 : $6d
	ld c, $46                                                  ; $1c13 : $0e, $46
	adc a, a                                                  ; $1c15 : $8f
	ld sp, $6de7                                                  ; $1c16 : $31, $e7, $6d
	ld c, $46                                                  ; $1c19 : $0e, $46
	adc a, h                                                  ; $1c1b : $8c
	rst $20                                                  ; $1c1c : $e7
	sub c                                                  ; $1c1d : $91
	rlca                                                  ; $1c1e : $07
	di                                                  ; $1c1f : $f3
	add hl, de                                                  ; $1c20 : $19
	or d                                                  ; $1c21 : $b2
	rst $20                                                  ; $1c22 : $e7
	sub c                                                  ; $1c23 : $91
	rlca                                                  ; $1c24 : $07
	di                                                  ; $1c25 : $f3
	add hl, de                                                  ; $1c26 : $19
	or d                                                  ; $1c27 : $b2
	rst $08                                                  ; $1c28 : $cf
	rst $20                                                  ; $1c29 : $e7
	sub a                                                  ; $1c2a : $97
	djnz br_03_1bb6                                                  ; $1c2b : $10, $89
	rst $20                                                  ; $1c2d : $e7
	sub a                                                  ; $1c2e : $97
	djnz br_03_1bba                                                  ; $1c2f : $10, $89
	call po, Call_03_3b3d                                                  ; $1c31 : $e4, $3d, $3b
	rst $20                                                  ; $1c34 : $e7
	sub a                                                  ; $1c35 : $97
	djnz br_03_1bc1                                                  ; $1c36 : $10, $89
	rst $08                                                  ; $1c38 : $cf
	rst $20                                                  ; $1c39 : $e7
	sub a                                                  ; $1c3a : $97
	pop hl                                                  ; $1c3b : $e1
	rrca                                                  ; $1c3c : $0f
	rst $20                                                  ; $1c3d : $e7
	sub a                                                  ; $1c3e : $97
	ld (hl), e                                                  ; $1c3f : $73
	jp pe, $07e0                                                  ; $1c40 : $ea, $e0, $07
	ld a, a                                                  ; $1c43 : $7f
	rst $20                                                  ; $1c44 : $e7
	sub a                                                  ; $1c45 : $97
	rst $18                                                  ; $1c46 : $df
	rst $20                                                  ; $1c47 : $e7
	sub a                                                  ; $1c48 : $97
	ret nc                                                  ; $1c49 : $d0

	pop hl                                                  ; $1c4a : $e1
	ccf                                                  ; $1c4b : $3f
	rst $20                                                  ; $1c4c : $e7
	sub a                                                  ; $1c4d : $97
	call c, $97e7                                                  ; $1c4e : $dc, $e7, $97
	and $e4                                                  ; $1c51 : $e6, $e4
	ccf                                                  ; $1c53 : $3f
	rst $20                                                  ; $1c54 : $e7
	sub a                                                  ; $1c55 : $97
	and $8d                                                  ; $1c56 : $e6, $8d
	dec bc                                                  ; $1c58 : $0b
	jp pe, $97e7                                                  ; $1c59 : $ea, $e7, $97
	rst $20                                                  ; $1c5c : $e7
	sbc a, a                                                  ; $1c5d : $9f
	rst $20                                                  ; $1c5e : $e7
	sbc a, c                                                  ; $1c5f : $99
	add hl, hl                                                  ; $1c60 : $29
	sbc a, a                                                  ; $1c61 : $9f
	rst $20                                                  ; $1c62 : $e7
	sbc a, l                                                  ; $1c63 : $9d
	ccf                                                  ; $1c64 : $3f
	rst $20                                                  ; $1c65 : $e7
	sbc a, l                                                  ; $1c66 : $9d
	ld l, b                                                  ; $1c67 : $68
	pop hl                                                  ; $1c68 : $e1
	rst $20                                                  ; $1c69 : $e7
	sbc a, (hl)                                                  ; $1c6a : $9e
	add a, e                                                  ; $1c6b : $83

Call_03_1c6c:
	ld a, h                                                  ; $1c6c : $7c
	rst $20                                                  ; $1c6d : $e7
	sbc a, (hl)                                                  ; $1c6e : $9e
	and b                                                  ; $1c6f : $a0
	pop hl                                                  ; $1c70 : $e1
	dec sp                                                  ; $1c71 : $3b
	rst $20                                                  ; $1c72 : $e7
	and $7d                                                  ; $1c73 : $e6, $7d
	and $b3                                                  ; $1c75 : $e6, $b3
	rst $08                                                  ; $1c77 : $cf
	ret pe                                                  ; $1c78 : $e8

	ld c, $19                                                  ; $1c79 : $0e, $19
	adc a, a                                                  ; $1c7b : $8f
	ret pe                                                  ; $1c7c : $e8

	rlca                                                  ; $1c7d : $07
	inc a                                                  ; $1c7e : $3c
	ret pe                                                  ; $1c7f : $e8

	rlca                                                  ; $1c80 : $07
	ex (sp), hl                                                  ; $1c81 : $e3
	ret pe                                                  ; $1c82 : $e8

	rlca                                                  ; $1c83 : $07
	ld a, a                                                  ; $1c84 : $7f
	ret pe                                                  ; $1c85 : $e8

	rlca                                                  ; $1c86 : $07
	ld a, h                                                  ; $1c87 : $7c
	ret pe                                                  ; $1c88 : $e8

	rlca                                                  ; $1c89 : $07
	out ($bf), a                                                  ; $1c8a : $d3, $bf
	ret pe                                                  ; $1c8c : $e8

	rlca                                                  ; $1c8d : $07
	out ($bf), a                                                  ; $1c8e : $d3, $bf
	dec sp                                                  ; $1c90 : $3b
	rlca                                                  ; $1c91 : $07
	ld (hl), $e1                                                  ; $1c92 : $36, $e1
	ld e, a                                                  ; $1c94 : $5f
	ret pe                                                  ; $1c95 : $e8

	ex af, af'                                                  ; $1c96 : $08
	out ($2f), a                                                  ; $1c97 : $d3, $2f
	ret pe                                                  ; $1c99 : $e8

	dec bc                                                  ; $1c9a : $0b
	inc l                                                  ; $1c9b : $2c
	ret pe                                                  ; $1c9c : $e8

	dec bc                                                  ; $1c9d : $0b
	call po, $0be8                                                  ; $1c9e : $e4, $e8, $0b
	call po, $e0ee                                                  ; $1ca1 : $e4, $ee, $e0
	ld a, c                                                  ; $1ca4 : $79
	sub d                                                  ; $1ca5 : $92
	ld ($0be8), a                                                  ; $1ca6 : $32, $e8, $0b
	adc a, a                                                  ; $1ca9 : $8f
	ret pe                                                  ; $1caa : $e8

	dec bc                                                  ; $1cab : $0b
	add a, (hl)                                                  ; $1cac : $86
	adc a, (hl)                                                  ; $1cad : $8e

Call_03_1cae:
	rra                                                  ; $1cae : $1f
	ret pe                                                  ; $1caf : $e8

br_03_1cb0:
	dec bc                                                  ; $1cb0 : $0b
	or e                                                  ; $1cb1 : $b3
	adc a, a                                                  ; $1cb2 : $8f
	ld a, $0e                                                  ; $1cb3 : $3e, $0e
	ld l, e                                                  ; $1cb5 : $6b
	pop hl                                                  ; $1cb6 : $e1
	dec sp                                                  ; $1cb7 : $3b
	ret pe                                                  ; $1cb8 : $e8

	dec bc                                                  ; $1cb9 : $0b
	or (hl)                                                  ; $1cba : $b6
	sbc a, e                                                  ; $1cbb : $9b
	ret pe                                                  ; $1cbc : $e8

	dec bc                                                  ; $1cbd : $0b
	rst $08                                                  ; $1cbe : $cf
	ret pe                                                  ; $1cbf : $e8

	inc c                                                  ; $1cc0 : $0c
	di                                                  ; $1cc1 : $f3
	rrca                                                  ; $1cc2 : $0f
	ret pe                                                  ; $1cc3 : $e8

	inc c                                                  ; $1cc4 : $0c
	di                                                  ; $1cc5 : $f3

Jump_03_1cc6:
	djnz br_03_1d3f                                                  ; $1cc6 : $10, $77
	ld ($0ce8), a                                                  ; $1cc8 : $32, $e8, $0c
	ld d, (hl)                                                  ; $1ccb : $56
	adc a, (hl)                                                  ; $1ccc : $8e
	dec e                                                  ; $1ccd : $1d
	sbc a, b                                                  ; $1cce : $98
	ret pe                                                  ; $1ccf : $e8

	inc c                                                  ; $1cd0 : $0c
	xor a                                                  ; $1cd1 : $af
	ret pe                                                  ; $1cd2 : $e8

	inc c                                                  ; $1cd3 : $0c
	out ($e8), a                                                  ; $1cd4 : $d3, $e8
	inc c                                                  ; $1cd6 : $0c
	sub $8e                                                  ; $1cd7 : $d6, $8e
	rra                                                  ; $1cd9 : $1f
	ret pe                                                  ; $1cda : $e8

	dec c                                                  ; $1cdb : $0d
	dec d                                                  ; $1cdc : $15
	ld l, b                                                  ; $1cdd : $68
	pop hl                                                  ; $1cde : $e1
	ret pe                                                  ; $1cdf : $e8

	dec c                                                  ; $1ce0 : $0d
	dec sp                                                  ; $1ce1 : $3b
	pop hl                                                  ; $1ce2 : $e1

br_03_1ce3:
	dec c                                                  ; $1ce3 : $0d
	ccf                                                  ; $1ce4 : $3f
	ret pe                                                  ; $1ce5 : $e8

	dec c                                                  ; $1ce6 : $0d
	dec sp                                                  ; $1ce7 : $3b
	ret pe                                                  ; $1ce8 : $e8

	ld c, $af                                                  ; $1ce9 : $0e, $af
	ret pe                                                  ; $1ceb : $e8

	dec c                                                  ; $1cec : $0d
	rst $18                                                  ; $1ced : $df
	ret pe                                                  ; $1cee : $e8

	dec c                                                  ; $1cef : $0d
	call c, $0ee8                                                  ; $1cf0 : $dc, $e8, $0e
	ld (hl), e                                                  ; $1cf3 : $73
	ret pe                                                  ; $1cf4 : $e8

	ld c, $73                                                  ; $1cf5 : $0e, $73
	ld (hl), e                                                  ; $1cf7 : $73
	adc a, (hl)                                                  ; $1cf8 : $8e
	dec e                                                  ; $1cf9 : $1d
	ld e, h                                                  ; $1cfa : $5c
	ret pe                                                  ; $1cfb : $e8

	ld c, $73                                                  ; $1cfc : $0e, $73
	rst $08                                                  ; $1cfe : $cf
	ret pe                                                  ; $1cff : $e8

	ld c, $af                                                  ; $1d00 : $0e, $af
	ret pe                                                  ; $1d02 : $e8

	ccf                                                  ; $1d03 : $3f
	ret pe                                                  ; $1d04 : $e8

	jr nc, br_03_1cb0                                                  ; $1d05 : $30, $a9

	adc a, h                                                  ; $1d07 : $8c
	ret pe                                                  ; $1d08 : $e8

	jr nc, -$41                                                  ; $1d09 : $30, $bf

	ret pe                                                  ; $1d0b : $e8

	jr nc, br_03_1ce3                                                  ; $1d0c : $30, $d5

	dec sp                                                  ; $1d0e : $3b
	ret pe                                                  ; $1d0f : $e8

	ld a, $0f                                                  ; $1d10 : $3e, $0f
	ret pe                                                  ; $1d12 : $e8

	ld ($3fe1), a                                                  ; $1d13 : $32, $e1, $3f
	ret pe                                                  ; $1d16 : $e8

	ld (hl), $e1                                                  ; $1d17 : $36, $e1
	ld e, l                                                  ; $1d19 : $5d
	ret pe                                                  ; $1d1a : $e8

	ld (hl), $e1                                                  ; $1d1b : $36, $e1
	ld e, l                                                  ; $1d1d : $5d
	ld (hl), e                                                  ; $1d1e : $73
	call z, Call_03_37e8                                                  ; $1d1f : $cc, $e8, $37
	ld a, (hl)                                                  ; $1d22 : $7e
	xor $38                                                  ; $1d23 : $ee, $38
	sbc a, (hl)                                                  ; $1d25 : $9e
	adc a, b                                                  ; $1d26 : $88
	ret pe                                                  ; $1d27 : $e8

	scf                                                  ; $1d28 : $37
	push bc                                                  ; $1d29 : $c5
	ret pe                                                  ; $1d2a : $e8

	jr c, $2e                                                  ; $1d2b : $38, $2e

	xor a                                                  ; $1d2d : $af
	inc c                                                  ; $1d2e : $0c
	ret pe                                                  ; $1d2f : $e8

	dec sp                                                  ; $1d30 : $3b
	ccf                                                  ; $1d31 : $3f
	dec a                                                  ; $1d32 : $3d
	ld d, e                                                  ; $1d33 : $53
	ret pe                                                  ; $1d34 : $e8

	inc a                                                  ; $1d35 : $3c
	rst $18                                                  ; $1d36 : $df
	ld a, $13                                                  ; $1d37 : $3e, $13
	cp (hl)                                                  ; $1d39 : $be
	ld b, b                                                  ; $1d3a : $40
	adc a, (hl)                                                  ; $1d3b : $8e
	xor a                                                  ; $1d3c : $af
	ret pe                                                  ; $1d3d : $e8

	inc a                                                  ; $1d3e : $3c

br_03_1d3f:
	rst $18                                                  ; $1d3f : $df
	ld (hl), $82                                                  ; $1d40 : $36, $82
	ld h, e                                                  ; $1d42 : $63
	rst $08                                                  ; $1d43 : $cf
	ret pe                                                  ; $1d44 : $e8

	inc a                                                  ; $1d45 : $3c
	sub $8e                                                  ; $1d46 : $d6, $8e
	dec d                                                  ; $1d48 : $15
	sbc a, (hl)                                                  ; $1d49 : $9e
	ld l, h                                                  ; $1d4a : $6c
	ccf                                                  ; $1d4b : $3f
	ret pe                                                  ; $1d4c : $e8

	dec a                                                  ; $1d4d : $3d
	ret pe                                                  ; $1d4e : $e8

	ld d, b                                                  ; $1d4f : $50
	ld (hl), e                                                  ; $1d50 : $73
	rst $08                                                  ; $1d51 : $cf
	ret pe                                                  ; $1d52 : $e8

	ld d, b                                                  ; $1d53 : $50
	rst $18                                                  ; $1d54 : $df
	jr nc, -$4d                                                  ; $1d55 : $30, $b3

	ret pe                                                  ; $1d57 : $e8

	ld d, b                                                  ; $1d58 : $50
	rst $18                                                  ; $1d59 : $df
	ld ($e89f), a                                                  ; $1d5a : $32, $9f, $e8
	ld d, b                                                  ; $1d5d : $50
	rst $18                                                  ; $1d5e : $df
	ld a, $80                                                  ; $1d5f : $3e, $80
	rst $08                                                  ; $1d61 : $cf
	dec a                                                  ; $1d62 : $3d
	ld d, e                                                  ; $1d63 : $53
	ret pe                                                  ; $1d64 : $e8

	ld d, b                                                  ; $1d65 : $50
	rst $18                                                  ; $1d66 : $df
	ld a, $83                                                  ; $1d67 : $3e, $83
	or e                                                  ; $1d69 : $b3
	di                                                  ; $1d6a : $f3
	push de                                                  ; $1d6b : $d5
	ccf                                                  ; $1d6c : $3f
	ret pe                                                  ; $1d6d : $e8

	ld d, b                                                  ; $1d6e : $50
	rst $18                                                  ; $1d6f : $df
	inc c                                                  ; $1d70 : $0c
	ret pe                                                  ; $1d71 : $e8

	ld d, b                                                  ; $1d72 : $50
	rst $18                                                  ; $1d73 : $df
	inc c                                                  ; $1d74 : $0c
	di                                                  ; $1d75 : $f3
	push de                                                  ; $1d76 : $d5
	ccf                                                  ; $1d77 : $3f
	ret pe                                                  ; $1d78 : $e8

	ld d, e                                                  ; $1d79 : $53
	dec c                                                  ; $1d7a : $0d
	ret pe                                                  ; $1d7b : $e8

	ld d, e                                                  ; $1d7c : $53
	scf                                                  ; $1d7d : $37
	ret pe                                                  ; $1d7e : $e8

	ld d, e                                                  ; $1d7f : $53
	adc a, a                                                  ; $1d80 : $8f
	dec a                                                  ; $1d81 : $3d
	ld d, e                                                  ; $1d82 : $53
	ret pe                                                  ; $1d83 : $e8

	ld d, (hl)                                                  ; $1d84 : $56
	dec d                                                  ; $1d85 : $15
	di                                                  ; $1d86 : $f3
	add hl, de                                                  ; $1d87 : $19
	and $8d                                                  ; $1d88 : $e6, $8d
	cp (hl)                                                  ; $1d8a : $be
	xor a                                                  ; $1d8b : $af
	ret pe                                                  ; $1d8c : $e8

	ld d, (hl)                                                  ; $1d8d : $56
	dec d                                                  ; $1d8e : $15
	di                                                  ; $1d8f : $f3
	ld l, h                                                  ; $1d90 : $6c
	di                                                  ; $1d91 : $f3
	push de                                                  ; $1d92 : $d5
	ccf                                                  ; $1d93 : $3f
	ret pe                                                  ; $1d94 : $e8

	ld d, (hl)                                                  ; $1d95 : $56
	pop hl                                                  ; $1d96 : $e1
	rst $08                                                  ; $1d97 : $cf
	ret pe                                                  ; $1d98 : $e8

	ld d, (hl)                                                  ; $1d99 : $56
	ld (hl), e                                                  ; $1d9a : $73
	ret pe                                                  ; $1d9b : $e8

	ld d, (hl)                                                  ; $1d9c : $56
	or a                                                  ; $1d9d : $b7
	ld l, b                                                  ; $1d9e : $68
	pop hl                                                  ; $1d9f : $e1
	ret pe                                                  ; $1da0 : $e8

	ld d, (hl)                                                  ; $1da1 : $56
	out ($e8), a                                                  ; $1da2 : $d3, $e8
	ld d, (hl)                                                  ; $1da4 : $56
	out ($f3), a                                                  ; $1da5 : $d3, $f3
	ld e, c                                                  ; $1da7 : $59
	and $c3                                                  ; $1da8 : $e6, $c3
	ret pe                                                  ; $1daa : $e8

	ld d, (hl)                                                  ; $1dab : $56
	ret c                                                  ; $1dac : $d8

	ld a, $af                                                  ; $1dad : $3e, $af
	ret pe                                                  ; $1daf : $e8

	ld e, c                                                  ; $1db0 : $59
	di                                                  ; $1db1 : $f3
	ld l, h                                                  ; $1db2 : $6c
	ret pe                                                  ; $1db3 : $e8

	ld e, c                                                  ; $1db4 : $59
	di                                                  ; $1db5 : $f3

Call_03_1db6:
	ret pe                                                  ; $1db6 : $e8

	inc c                                                  ; $1db7 : $0c
	ret pe                                                  ; $1db8 : $e8

	ld e, c                                                  ; $1db9 : $59
	call po, $59e8                                                  ; $1dba : $e4, $e8, $59
	jp $6ee8                                                  ; $1dbd : $c3, $e8, $6e


	rra                                                  ; $1dc0 : $1f
	ret pe                                                  ; $1dc1 : $e8

	ld h, a                                                  ; $1dc2 : $67
	ret po                                                  ; $1dc3 : $e0

	and $bf                                                  ; $1dc4 : $e6, $bf
	ret pe                                                  ; $1dc6 : $e8

	ld h, a                                                  ; $1dc7 : $67
	inc hl                                                  ; $1dc8 : $23
	cp b                                                  ; $1dc9 : $b8
	inc a                                                  ; $1dca : $3c
	rst $08                                                  ; $1dcb : $cf
	ret pe                                                  ; $1dcc : $e8

	ld h, a                                                  ; $1dcd : $67
	daa                                                  ; $1dce : $27
	ld h, h                                                  ; $1dcf : $64
	ccf                                                  ; $1dd0 : $3f
	ret pe                                                  ; $1dd1 : $e8

	ld h, a                                                  ; $1dd2 : $67
	ex (sp), hl                                                  ; $1dd3 : $e3
	inc a                                                  ; $1dd4 : $3c
	di                                                  ; $1dd5 : $f3
	ret po                                                  ; $1dd6 : $e0

	sbc a, c                                                  ; $1dd7 : $99
	push de                                                  ; $1dd8 : $d5
	ret pe                                                  ; $1dd9 : $e8

	ld h, a                                                  ; $1dda : $67
	ld a, a                                                  ; $1ddb : $7f
	ret pe                                                  ; $1ddc : $e8

	ld h, a                                                  ; $1ddd : $67
	ld (hl), b                                                  ; $1dde : $70
	call po, $d33d                                                  ; $1ddf : $e4, $3d, $d3
	ret pe                                                  ; $1de2 : $e8

	ld h, a                                                  ; $1de3 : $67
	halt                                                  ; $1de4 : $76
	ld c, $4f                                                  ; $1de5 : $0e, $4f
	ret pe                                                  ; $1de7 : $e8

	ld h, a                                                  ; $1de8 : $67
	halt                                                  ; $1de9 : $76
	ld c, $4f                                                  ; $1dea : $0e, $4f
	inc a                                                  ; $1dec : $3c
	ld d, b                                                  ; $1ded : $50
	ex (sp), hl                                                  ; $1dee : $e3
	inc a                                                  ; $1def : $3c
	and e                                                  ; $1df0 : $a3
	dec bc                                                  ; $1df1 : $0b
	ccf                                                  ; $1df2 : $3f
	ret pe                                                  ; $1df3 : $e8

	ld h, a                                                  ; $1df4 : $67
	halt                                                  ; $1df5 : $76
	ld c, $4f                                                  ; $1df6 : $0e, $4f
	inc a                                                  ; $1df8 : $3c
	ld d, e                                                  ; $1df9 : $53
	cp (hl)                                                  ; $1dfa : $be
	ld b, b                                                  ; $1dfb : $40
	adc a, a                                                  ; $1dfc : $8f
	ret pe                                                  ; $1dfd : $e8

	ld h, a                                                  ; $1dfe : $67
	halt                                                  ; $1dff : $76
	ccf                                                  ; $1e00 : $3f
	ret pe                                                  ; $1e01 : $e8

	ld h, a                                                  ; $1e02 : $67
	halt                                                  ; $1e03 : $76
	rst $08                                                  ; $1e04 : $cf
	ret pe                                                  ; $1e05 : $e8

	ld h, a                                                  ; $1e06 : $67
	ld a, h                                                  ; $1e07 : $7c
	ret pe                                                  ; $1e08 : $e8

	ld h, a                                                  ; $1e09 : $67
	ret                                                  ; $1e0a : $c9


	adc a, a                                                  ; $1e0b : $8f
	ret pe                                                  ; $1e0c : $e8

	ld l, (hl)                                                  ; $1e0d : $6e
	ld c, (hl)                                                  ; $1e0e : $4e
	rlca                                                  ; $1e0f : $07
	ld ($e898), a                                                  ; $1e10 : $32, $98, $e8
	ld l, (hl)                                                  ; $1e13 : $6e
	ld c, d                                                  ; $1e14 : $4a
	ld a, $af                                                  ; $1e15 : $3e, $af
	ret pe                                                  ; $1e17 : $e8

	ld l, (hl)                                                  ; $1e18 : $6e
	ld c, d                                                  ; $1e19 : $4a
	jp pe, $68e8                                                  ; $1e1a : $ea, $e8, $68
	ret pe                                                  ; $1e1d : $e8

	ld l, b                                                  ; $1e1e : $68
	dec d                                                  ; $1e1f : $15
	ret pe                                                  ; $1e20 : $e8

	ld l, b                                                  ; $1e21 : $68
	cpl                                                  ; $1e22 : $2f
	ret pe                                                  ; $1e23 : $e8

	ld l, b                                                  ; $1e24 : $68
	cpl                                                  ; $1e25 : $2f
	ld a, $10                                                  ; $1e26 : $3e, $10
	and $e1                                                  ; $1e28 : $e6, $e1
	ccf                                                  ; $1e2a : $3f
	ret pe                                                  ; $1e2b : $e8

	ld l, b                                                  ; $1e2c : $68
	ld hl, ($3f6a)                                                  ; $1e2d : $2a, $6a, $3f
	ret pe                                                  ; $1e30 : $e8

	ld l, b                                                  ; $1e31 : $68
	inc l                                                  ; $1e32 : $2c
	ret pe                                                  ; $1e33 : $e8

	ld l, b                                                  ; $1e34 : $68
	inc l                                                  ; $1e35 : $2c
	sbc a, e                                                  ; $1e36 : $9b
	rst $08                                                  ; $1e37 : $cf
	ret pe                                                  ; $1e38 : $e8

	ld l, b                                                  ; $1e39 : $68
	pop hl                                                  ; $1e3a : $e1
	rst $08                                                  ; $1e3b : $cf
	ret pe                                                  ; $1e3c : $e8

	ld l, b                                                  ; $1e3d : $68
	add a, e                                                  ; $1e3e : $83
	ret po                                                  ; $1e3f : $e0

	ld c, $19                                                  ; $1e40 : $0e, $19
	ret pe                                                  ; $1e42 : $e8

	ld l, b                                                  ; $1e43 : $68
	call $f398                                                  ; $1e44 : $cd, $98, $f3
	dec d                                                  ; $1e47 : $15
	and $b1                                                  ; $1e48 : $e6, $b1
	ld d, (hl)                                                  ; $1e4a : $56
	ld (hl), a                                                  ; $1e4b : $77
	ret pe                                                  ; $1e4c : $e8

	ld l, b                                                  ; $1e4d : $68
	out ($bf), a                                                  ; $1e4e : $d3, $bf
	ret pe                                                  ; $1e50 : $e8

	ld l, b                                                  ; $1e51 : $68
	out ($bf), a                                                  ; $1e52 : $d3, $bf
	ld a, ($0107)                                                  ; $1e54 : $3a, $07, $01
	ccf                                                  ; $1e57 : $3f
	ret pe                                                  ; $1e58 : $e8

	ld l, e                                                  ; $1e59 : $6b
	ccf                                                  ; $1e5a : $3f
	ret pe                                                  ; $1e5b : $e8

	ld l, e                                                  ; $1e5c : $6b
	scf                                                  ; $1e5d : $37
	inc a                                                  ; $1e5e : $3c
	rst $08                                                  ; $1e5f : $cf
	ret pe                                                  ; $1e60 : $e8

	ld l, e                                                  ; $1e61 : $6b
	inc a                                                  ; $1e62 : $3c
	ret pe                                                  ; $1e63 : $e8

	ld l, h                                                  ; $1e64 : $6c
	add hl, de                                                  ; $1e65 : $19
	adc a, h                                                  ; $1e66 : $8c
	ld l, b                                                  ; $1e67 : $68
	ret pe                                                  ; $1e68 : $e8

	ld l, h                                                  ; $1e69 : $6c
	scf                                                  ; $1e6a : $37
	jp pe, $6de8                                                  ; $1e6b : $ea, $e8, $6d
	ld e, c                                                  ; $1e6e : $59
	and $df                                                  ; $1e6f : $e6, $df
	ret pe                                                  ; $1e71 : $e8

	ld l, (hl)                                                  ; $1e72 : $6e
	ld (hl), e                                                  ; $1e73 : $73
	rst $08                                                  ; $1e74 : $cf
	ret pe                                                  ; $1e75 : $e8

	sbc a, (hl)                                                  ; $1e76 : $9e
	ld b, b                                                  ; $1e77 : $40
	adc a, a                                                  ; $1e78 : $8f
	ret pe                                                  ; $1e79 : $e8

	sbc a, (hl)                                                  ; $1e7a : $9e
	ld b, e                                                  ; $1e7b : $43
	adc a, a                                                  ; $1e7c : $8f
	inc c                                                  ; $1e7d : $0c
	ret pe                                                  ; $1e7e : $e8

	sbc a, b                                                  ; $1e7f : $98
	ret pe                                                  ; $1e80 : $e8

	sbc a, b                                                  ; $1e81 : $98
	inc hl                                                  ; $1e82 : $23
	cp h                                                  ; $1e83 : $bc
	ret pe                                                  ; $1e84 : $e8

	sbc a, b                                                  ; $1e85 : $98
	ex (sp), hl                                                  ; $1e86 : $e3
	rrca                                                  ; $1e87 : $0f
	ret pe                                                  ; $1e88 : $e8

	sbc a, c                                                  ; $1e89 : $99
	cpl                                                  ; $1e8a : $2f
	ret pe                                                  ; $1e8b : $e8

	sbc a, c                                                  ; $1e8c : $99
	inc hl                                                  ; $1e8d : $23
	adc a, a                                                  ; $1e8e : $8f
	ret pe                                                  ; $1e8f : $e8

	sbc a, c                                                  ; $1e90 : $99

Jump_03_1e91:
	inc l                                                  ; $1e91 : $2c
	exx                                                  ; $1e92 : $d9
	ld e, $3f                                                  ; $1e93 : $1e, $3f
	ret pe                                                  ; $1e95 : $e8

	sbc a, c                                                  ; $1e96 : $99
	ld l, $86                                                  ; $1e97 : $2e, $86
	add a, d                                                  ; $1e99 : $82
	ret pe                                                  ; $1e9a : $e8

	sbc a, c                                                  ; $1e9b : $99
	ld a, h                                                  ; $1e9c : $7c
	ld a, $af                                                  ; $1e9d : $3e, $af
	ret pe                                                  ; $1e9f : $e8

	sbc a, e                                                  ; $1ea0 : $9b
	inc l                                                  ; $1ea1 : $2c
	ret pe                                                  ; $1ea2 : $e8

	sbc a, e                                                  ; $1ea3 : $9b
	ex (sp), hl                                                  ; $1ea4 : $e3
	ret pe                                                  ; $1ea5 : $e8

	sbc a, e                                                  ; $1ea6 : $9b
	ex (sp), hl                                                  ; $1ea7 : $e3
	dec sp                                                  ; $1ea8 : $3b
	ret pe                                                  ; $1ea9 : $e8

	sbc a, e                                                  ; $1eaa : $9b
	ex (sp), hl                                                  ; $1eab : $e3
	rst $08                                                  ; $1eac : $cf
	ret pe                                                  ; $1ead : $e8

	sbc a, e                                                  ; $1eae : $9b
	ld (hl), d                                                  ; $1eaf : $72
	di                                                  ; $1eb0 : $f3
	ld e, $6a                                                  ; $1eb1 : $1e, $6a
	ret pe                                                  ; $1eb3 : $e8

	sbc a, e                                                  ; $1eb4 : $9b
	ld (hl), d                                                  ; $1eb5 : $72
	di                                                  ; $1eb6 : $f3
	pop hl                                                  ; $1eb7 : $e1
	ld c, $43                                                  ; $1eb8 : $0e, $43
	rst $08                                                  ; $1eba : $cf
	ret pe                                                  ; $1ebb : $e8

	sbc a, e                                                  ; $1ebc : $9b
	ld (hl), d                                                  ; $1ebd : $72
	di                                                  ; $1ebe : $f3
	jp Jump_03_3cb6                                                  ; $1ebf : $c3, $b6, $3c


	ret pe                                                  ; $1ec2 : $e8

	sbc a, e                                                  ; $1ec3 : $9b
	ld (hl), d                                                  ; $1ec4 : $72
	di                                                  ; $1ec5 : $f3
	ret pe                                                  ; $1ec6 : $e8

	dec bc                                                  ; $1ec7 : $0b
	di                                                  ; $1ec8 : $f3
	ld l, a                                                  ; $1ec9 : $6f
	ret pe                                                  ; $1eca : $e8

	sbc a, e                                                  ; $1ecb : $9b
	ld (hl), d                                                  ; $1ecc : $72
	di                                                  ; $1ecd : $f3
	ret pe                                                  ; $1ece : $e8

	dec bc                                                  ; $1ecf : $0b
	di                                                  ; $1ed0 : $f3
	ld h, (hl)                                                  ; $1ed1 : $66
	ret pe                                                  ; $1ed2 : $e8

	sbc a, e                                                  ; $1ed3 : $9b

Call_03_1ed4:
	ld (hl), d                                                  ; $1ed4 : $72
	ret pe                                                  ; $1ed5 : $e8

	ld h, d                                                  ; $1ed6 : $62
	ccf                                                  ; $1ed7 : $3f
	ret pe                                                  ; $1ed8 : $e8

	sbc a, e                                                  ; $1ed9 : $9b
	adc a, a                                                  ; $1eda : $8f
	ret pe                                                  ; $1edb : $e8

	sbc a, e                                                  ; $1edc : $9b
	push bc                                                  ; $1edd : $c5
	ld l, d                                                  ; $1ede : $6a
	ret pe                                                  ; $1edf : $e8

	sbc a, e                                                  ; $1ee0 : $9b
	push de                                                  ; $1ee1 : $d5
	ret pe                                                  ; $1ee2 : $e8

	sbc a, (hl)                                                  ; $1ee3 : $9e
	ld h, a                                                  ; $1ee4 : $67
	cpl                                                  ; $1ee5 : $2f
	ret pe                                                  ; $1ee6 : $e8

	sbc a, (hl)                                                  ; $1ee7 : $9e
	ld l, b                                                  ; $1ee8 : $68
	inc hl                                                  ; $1ee9 : $23
	cpl                                                  ; $1eea : $2f
	ret pe                                                  ; $1eeb : $e8

	or (hl)                                                  ; $1eec : $b6
	pop hl                                                  ; $1eed : $e1
	ld e, l                                                  ; $1eee : $5d
	di                                                  ; $1eef : $f3
	ret po                                                  ; $1ef0 : $e0

	cp c                                                  ; $1ef1 : $b9
	push de                                                  ; $1ef2 : $d5
	dec sp                                                  ; $1ef3 : $3b
	rst $08                                                  ; $1ef4 : $cf
	ret pe                                                  ; $1ef5 : $e8

	or (hl)                                                  ; $1ef6 : $b6
	pop hl                                                  ; $1ef7 : $e1
	ld e, l                                                  ; $1ef8 : $5d
	rst $08                                                  ; $1ef9 : $cf
	ret pe                                                  ; $1efa : $e8

	or (hl)                                                  ; $1efb : $b6
	out ($e8), a                                                  ; $1efc : $d3, $e8
	or (hl)                                                  ; $1efe : $b6
	out ($bf), a                                                  ; $1eff : $d3, $bf
	ret pe                                                  ; $1f01 : $e8

	or (hl)                                                  ; $1f02 : $b6
	out ($cf), a                                                  ; $1f03 : $d3, $cf
	ret pe                                                  ; $1f05 : $e8

	or (hl)                                                  ; $1f06 : $b6
	sub $8e                                                  ; $1f07 : $d6, $8e
	rra                                                  ; $1f09 : $1f
	ret pe                                                  ; $1f0a : $e8

	cp c                                                  ; $1f0b : $b9
	out ($e8), a                                                  ; $1f0c : $d3, $e8

Call_03_1f0e:
	ret pe                                                  ; $1f0e : $e8

	ld l, a                                                  ; $1f0f : $6f
	ret pe                                                  ; $1f10 : $e8

	jp pe, $469e                                                  ; $1f11 : $ea, $9e, $46
	adc a, (hl)                                                  ; $1f14 : $8e
	rra                                                  ; $1f15 : $1f
	jp (hl)                                                  ; $1f16 : $e9


	xor $b0                                                  ; $1f17 : $ee, $b0
	jp pe, Jump_03_01ea                                                  ; $1f19 : $ea, $ea, $01
	ld e, l                                                  ; $1f1c : $5d
	jp pe, $3f0e                                                  ; $1f1d : $ea, $0e, $3f
	jp pe, $3e0e                                                  ; $1f20 : $ea, $0e, $3e
	ld l, l                                                  ; $1f23 : $6d
	adc a, $3f                                                  ; $1f24 : $ce, $3f
	jp pe, $3f07                                                  ; $1f26 : $ea, $07, $3f
	jp pe, $e108                                                  ; $1f29 : $ea, $08, $e1
	sbc a, $b3                                                  ; $1f2c : $de, $b3
	jp pe, $e308                                                  ; $1f2e : $ea, $08, $e3
	inc sp                                                  ; $1f31 : $33
	jp pe, $e308                                                  ; $1f32 : $ea, $08, $e3
	inc sp                                                  ; $1f35 : $33
	rst $08                                                  ; $1f36 : $cf
	jp pe, $870e                                                  ; $1f37 : $ea, $0e, $87
	rst $08                                                  ; $1f3a : $cf
	jp pe, $bf30                                                  ; $1f3b : $ea, $30, $bf
	jp pe, $7937                                                  ; $1f3e : $ea, $37, $79
	ret pe                                                  ; $1f41 : $e8

	jp pe, $7937                                                  ; $1f42 : $ea, $37, $79
	ret pe                                                  ; $1f45 : $e8

	call Call_03_3f98                                                  ; $1f46 : $cd, $98, $3f
	jp pe, $ea38                                                  ; $1f49 : $ea, $38, $ea
	sub a                                                  ; $1f4c : $97
	ex (sp), hl                                                  ; $1f4d : $e3
	jp pe, $e39b                                                  ; $1f4e : $ea, $9b, $e3
	exx                                                  ; $1f51 : $d9
	adc a, a                                                  ; $1f52 : $8f
	jp pe, $e39b                                                  ; $1f53 : $ea, $9b, $e3
	exx                                                  ; $1f56 : $d9
	ret pe                                                  ; $1f57 : $e8

	adc a, a                                                  ; $1f58 : $8f
	jp pe, $689e                                                  ; $1f59 : $ea, $9e, $68
	pop hl                                                  ; $1f5c : $e1
	jp pe, $6b9e                                                  ; $1f5d : $ea, $9e, $6b
	jp pe, $6d9e                                                  ; $1f60 : $ea, $9e, $6d
	ld e, a                                                  ; $1f63 : $5f
	jp pe, $e1e6                                                  ; $1f64 : $ea, $e6, $e1
	sbc a, h                                                  ; $1f67 : $9c
	ld (hl), b                                                  ; $1f68 : $70
	rst $20                                                  ; $1f69 : $e7
	ld h, b                                                  ; $1f6a : $60
	jp pe, $bde6                                                  ; $1f6b : $ea, $e6, $bd
	ex de, hl                                                  ; $1f6e : $eb
	ld c, $4e                                                  ; $1f6f : $0e, $4e
	add hl, bc                                                  ; $1f71 : $09
	ex af, af'                                                  ; $1f72 : $08
	pop hl                                                  ; $1f73 : $e1
	rrca                                                  ; $1f74 : $0f
	ex de, hl                                                  ; $1f75 : $eb
	add hl, bc                                                  ; $1f76 : $09
	ex de, hl                                                  ; $1f77 : $eb
	ld a, ($76a3)                                                  ; $1f78 : $3a, $a3, $76
	adc a, a                                                  ; $1f7b : $8f
	ex de, hl                                                  ; $1f7c : $eb
	dec sp                                                  ; $1f7d : $3b
	sbc a, a                                                  ; $1f7e : $9f
	ex de, hl                                                  ; $1f7f : $eb
	ld l, (hl)                                                  ; $1f80 : $6e
	ld c, (hl)                                                  ; $1f81 : $4e
	nop                                                  ; $1f82 : $00
	ret po                                                  ; $1f83 : $e0

	ret pe                                                  ; $1f84 : $e8

	ccf                                                  ; $1f85 : $3f
	ex de, hl                                                  ; $1f86 : $eb
	sub d                                                  ; $1f87 : $92
	ld h, b                                                  ; $1f88 : $60
	rra                                                  ; $1f89 : $1f
	ex de, hl                                                  ; $1f8a : $eb
	sbc a, b                                                  ; $1f8b : $98
	inc a                                                  ; $1f8c : $3c
	ex de, hl                                                  ; $1f8d : $eb
	sbc a, c                                                  ; $1f8e : $99
	ld a, c                                                  ; $1f8f : $79
	pop hl                                                  ; $1f90 : $e1
	ld l, h                                                  ; $1f91 : $6c
	call c, $e6eb                                                  ; $1f92 : $dc, $eb, $e6
	or (hl)                                                  ; $1f95 : $b6
	dec d                                                  ; $1f96 : $15
	rrca                                                  ; $1f97 : $0f
	call nc, $e539                                                  ; $1f98 : $d4, $39, $e5
	cp d                                                  ; $1f9b : $ba
	rst $20                                                  ; $1f9c : $e7
	adc a, l                                                  ; $1f9d : $8d
	rst $20                                                  ; $1f9e : $e7
	ld b, $1f                                                  ; $1f9f : $06, $1f
	ld (hl), h                                                  ; $1fa1 : $74
	ret pe                                                  ; $1fa2 : $e8

	ld b, e                                                  ; $1fa3 : $43
	call pe, Call_03_0b4e                                                  ; $1fa4 : $ec, $4e, $0b
	ld d, h                                                  ; $1fa7 : $54
	.db $ed                                                  ; $1fa8 : $ed
	inc de                                                  ; $1fa9 : $13
	jr nc, br_03_1fb5                                                  ; $1faa : $30, $09

	ld h, c                                                  ; $1fac : $61
	call pe, $1a1b                                                  ; $1fad : $ec, $1b, $1a
	ld h, l                                                  ; $1fb0 : $65
	inc de                                                  ; $1fb1 : $13
	call po, Call_03_0bce                                                  ; $1fb2 : $e4, $ce, $0b

br_03_1fb5:
	inc b                                                  ; $1fb5 : $04
	ex af, af'                                                  ; $1fb6 : $08
	ret po                                                  ; $1fb7 : $e0

	rra                                                  ; $1fb8 : $1f
	call pe, $159f                                                  ; $1fb9 : $ec, $9f, $15
	ex de, hl                                                  ; $1fbc : $eb
	add a, l                                                  ; $1fbd : $85
	jp (hl)                                                  ; $1fbe : $e9


	ld e, a                                                  ; $1fbf : $5f
	sub d                                                  ; $1fc0 : $92
	rst $20                                                  ; $1fc1 : $e7
	and e                                                  ; $1fc2 : $a3
	jp pe, $ec05                                                  ; $1fc3 : $ea, $05, $ec
	ret nz                                                  ; $1fc6 : $c0

	ld h, h                                                  ; $1fc7 : $64
	ex (sp), hl                                                  ; $1fc8 : $e3
	dec a                                                  ; $1fc9 : $3d
	.db $ed                                                  ; $1fca : $ed
	sbc a, l                                                  ; $1fcb : $9d
	ld l, h                                                  ; $1fcc : $6c
	ret nc                                                  ; $1fcd : $d0

	pop hl                                                  ; $1fce : $e1
	inc c                                                  ; $1fcf : $0c
	dec bc                                                  ; $1fd0 : $0b
	jp (hl)                                                  ; $1fd1 : $e9


	xor b                                                  ; $1fd2 : $a8
	rst $20                                                  ; $1fd3 : $e7
	xor c                                                  ; $1fd4 : $a9
	ret pe                                                  ; $1fd5 : $e8

	inc d                                                  ; $1fd6 : $14
	ld a, (bc)                                                  ; $1fd7 : $0a
	or h                                                  ; $1fd8 : $b4
	sbc a, a                                                  ; $1fd9 : $9f
	push de                                                  ; $1fda : $d5
	xor $05                                                  ; $1fdb : $ee, $05
	inc c                                                  ; $1fdd : $0c
	pop hl                                                  ; $1fde : $e1
	ret nz                                                  ; $1fdf : $c0

	ld (hl), b                                                  ; $1fe0 : $70
	ld a, (bc)                                                  ; $1fe1 : $0a
	call po, $e911                                                  ; $1fe2 : $e4, $11, $e9
	call m, $2fe1                                                  ; $1fe5 : $fc, $e1, $2f
	ld a, (bc)                                                  ; $1fe8 : $0a
	inc c                                                  ; $1fe9 : $0c
	jp (hl)                                                  ; $1fea : $e9


	push hl                                                  ; $1feb : $e5
	ld l, l                                                  ; $1fec : $6d
	ret c                                                  ; $1fed : $d8

	pop bc                                                  ; $1fee : $c1
	jp pe, Jump_03_0c6a                                                  ; $1fef : $ea, $6a, $0c
	ld a, (bc)                                                  ; $1ff2 : $0a
	ld bc, ($81e0)                                                  ; $1ff3 : $ed, $4b, $e0, $81
	ret pe                                                  ; $1ff7 : $e8

	sbc a, c                                                  ; $1ff8 : $99
	dec c                                                  ; $1ff9 : $0d
	inc c                                                  ; $1ffa : $0c
	ret c                                                  ; $1ffb : $d8

	or e                                                  ; $1ffc : $b3
	ex de, hl                                                  ; $1ffd : $eb
	ld e, l                                                  ; $1ffe : $5d
	ret po                                                  ; $1fff : $e0

	ld a, h                                                  ; $2000 : $7c
	sbc a, d                                                  ; $2001 : $9a
	pop hl                                                  ; $2002 : $e1
	ld a, d                                                  ; $2003 : $7a
	ld l, (hl)                                                  ; $2004 : $6e
	inc c                                                  ; $2005 : $0c
	ld a, (bc)                                                  ; $2006 : $0a
	ret pe                                                  ; $2007 : $e8

	sbc a, c                                                  ; $2008 : $99
	jp (hl)                                                  ; $2009 : $e9


	push hl                                                  ; $200a : $e5
	ld bc, ($ce08)                                                  ; $200b : $ed, $4b, $08, $ce
	ret pe                                                  ; $200f : $e8

	ld b, e                                                  ; $2010 : $43
	pop hl                                                  ; $2011 : $e1
	sbc a, l                                                  ; $2012 : $9d
	sub e                                                  ; $2013 : $93
	cp l                                                  ; $2014 : $bd
	dec bc                                                  ; $2015 : $0b
	call po, $ea90                                                  ; $2016 : $e4, $90, $ea
	xor e                                                  ; $2019 : $ab
	ex (sp), hl                                                  ; $201a : $e3
	ret m                                                  ; $201b : $f8

	pop hl                                                  ; $201c : $e1
	ld c, b                                                  ; $201d : $48
	ld de, $ebc9                                                  ; $201e : $11, $c9, $eb
	ld h, e                                                  ; $2021 : $63
	sub e                                                  ; $2022 : $93
	jp pe, $eba5                                                  ; $2023 : $ea, $a5, $eb
	ld d, a                                                  ; $2026 : $57
	.db $dd                                                  ; $2027 : $dd
	jp pe, $ee99                                                  ; $2028 : $ea, $99, $ee
	dec de                                                  ; $202b : $1b
	pop hl                                                  ; $202c : $e1
	sub a                                                  ; $202d : $97
	sub (hl)                                                  ; $202e : $96
	dec bc                                                  ; $202f : $0b
	rst $20                                                  ; $2030 : $e7
	rrca                                                  ; $2031 : $0f
	add a, h                                                  ; $2032 : $84
	jp pe, Jump_03_0a9c                                                  ; $2033 : $ea, $9c, $0a
	or h                                                  ; $2036 : $b4
	ex de, hl                                                  ; $2037 : $eb
	and a                                                  ; $2038 : $a7
	sub d                                                  ; $2039 : $92
	inc c                                                  ; $203a : $0c
	and $d4                                                  ; $203b : $e6, $d4
	ld l, (hl)                                                  ; $203d : $6e
	inc c                                                  ; $203e : $0c
	ld a, (bc)                                                  ; $203f : $0a
	jp (hl)                                                  ; $2040 : $e9


	rst $08                                                  ; $2041 : $cf
	ex (sp), hl                                                  ; $2042 : $e3
	.db $ed                                                  ; $2043 : $ed
	jp (hl)                                                  ; $2044 : $e9


	call z, $6108                                                  ; $2045 : $cc, $08, $61
	ret pe                                                  ; $2048 : $e8

	ld a, c                                                  ; $2049 : $79
	dec de                                                  ; $204a : $1b
	cp l                                                  ; $204b : $bd
	ex (sp), hl                                                  ; $204c : $e3
	ret nc                                                  ; $204d : $d0

	dec bc                                                  ; $204e : $0b
	ld (bc), a                                                  ; $204f : $02
	ret po                                                  ; $2050 : $e0

	ld c, h                                                  ; $2051 : $4c
	ret po                                                  ; $2052 : $e0

	ld b, h                                                  ; $2053 : $44
	.db $ed                                                  ; $2054 : $ed
	ld a, (bc)                                                  ; $2055 : $0a
	inc c                                                  ; $2056 : $0c
	rst $08                                                  ; $2057 : $cf
	or h                                                  ; $2058 : $b4
	cp l                                                  ; $2059 : $bd
	jp po, $edca                                                  ; $205a : $e2, $ca, $ed
	cp $e0                                                  ; $205d : $fe, $e0
	ld c, h                                                  ; $205f : $4c
	jp po, Jump_03_0b6e                                                  ; $2060 : $e2, $6e, $0b
	ex (sp), hl                                                  ; $2063 : $e3
	xor (hl)                                                  ; $2064 : $ae
	push hl                                                  ; $2065 : $e5
	and d                                                  ; $2066 : $a2
	jp pe, Jump_03_0e0d                                                  ; $2067 : $ea, $0d, $0e
	ld h, c                                                  ; $206a : $61
	jp (hl)                                                  ; $206b : $e9


	add a, e                                                  ; $206c : $83
	ld a, (de)                                                  ; $206d : $1a
	ret po                                                  ; $206e : $e0

	xor c                                                  ; $206f : $a9
	sbc a, b                                                  ; $2070 : $98
	call po, $63b8                                                  ; $2071 : $e4, $b8, $63
	inc de                                                  ; $2074 : $13
	call po, Call_03_0be6                                                  ; $2075 : $e4, $e6, $0b
	ret po                                                  ; $2078 : $e0

	ld e, $e0                                                  ; $2079 : $1e, $e0
	ld c, d                                                  ; $207b : $4a
	ret po                                                  ; $207c : $e0

	ld c, c                                                  ; $207d : $49
	dec bc                                                  ; $207e : $0b
	or h                                                  ; $207f : $b4
	adc a, l                                                  ; $2080 : $8d
	xor $11                                                  ; $2081 : $ee, $11
	ld a, (de)                                                  ; $2083 : $1a
	ret nc                                                  ; $2084 : $d0

	ex de, hl                                                  ; $2085 : $eb
	pop de                                                  ; $2086 : $d1
	call pe, Call_03_0b6a                                                  ; $2087 : $ec, $6a, $0b
	call po, $ebe6                                                  ; $208a : $e4, $e6, $eb
	sub d                                                  ; $208d : $92
	pop hl                                                  ; $208e : $e1
	ld e, b                                                  ; $208f : $58
	ld a, (bc)                                                  ; $2090 : $0a
	call nc, $e04d                                                  ; $2091 : $d4, $4d, $e0
	and e                                                  ; $2094 : $a3
	.db $ed                                                  ; $2095 : $ed
	add a, (hl)                                                  ; $2096 : $86
	cp d                                                  ; $2097 : $ba
	ret po                                                  ; $2098 : $e0

	dec c                                                  ; $2099 : $0d
	dec bc                                                  ; $209a : $0b
	ex (sp), hl                                                  ; $209b : $e3
	sbc a, $e2                                                  ; $209c : $de, $e2
	sub (hl)                                                  ; $209e : $96
	ex (sp), hl                                                  ; $209f : $e3
	or $e4                                                  ; $20a0 : $f6, $e4
	ld e, h                                                  ; $20a2 : $5c
	ex af, af'                                                  ; $20a3 : $08
	rst $08                                                  ; $20a4 : $cf
	jp po, $e18a                                                  ; $20a5 : $e2, $8a, $e1
	.db $ed                                                  ; $20a8 : $ed
	ex (sp), hl                                                  ; $20a9 : $e3
	adc a, $0b                                                  ; $20aa : $ce, $0b
	rst $20                                                  ; $20ac : $e7
	ld a, ($efed)                                                  ; $20ad : $3a, $ed, $ef
	ex de, hl                                                  ; $20b0 : $eb
	adc a, a                                                  ; $20b1 : $8f
	dec bc                                                  ; $20b2 : $0b
	jp po, $70a3                                                  ; $20b3 : $e2, $a3, $70
	jp po, $9264                                                  ; $20b6 : $e2, $64, $92
	.db $ed                                                  ; $20b9 : $ed
	jp $a0e1                                                  ; $20ba : $c3, $e1, $a0


	dec bc                                                  ; $20bd : $0b
	rst $20                                                  ; $20be : $e7
	sbc a, (hl)                                                  ; $20bf : $9e
	ret po                                                  ; $20c0 : $e0

	ld l, d                                                  ; $20c1 : $6a
	and $9a                                                  ; $20c2 : $e6, $9a
	dec c                                                  ; $20c4 : $0d
	adc a, $e6                                                  ; $20c5 : $ce, $e6
	sbc a, e                                                  ; $20c7 : $9b
	push hl                                                  ; $20c8 : $e5
	call m, $e8b3                                                  ; $20c9 : $fc, $b3, $e8
	xor d                                                  ; $20cc : $aa
	ret pe                                                  ; $20cd : $e8

	ld d, c                                                  ; $20ce : $51
	call po, Call_03_0b03                                                  ; $20cf : $e4, $03, $0b
	push hl                                                  ; $20d2 : $e5
	xor (hl)                                                  ; $20d3 : $ae
	jp pe, $e903                                                  ; $20d4 : $ea, $03, $e9
	inc e                                                  ; $20d7 : $1c
	ld a, (bc)                                                  ; $20d8 : $0a
	adc a, $eb                                                  ; $20d9 : $ce, $eb
	ld b, e                                                  ; $20db : $43
	sub d                                                  ; $20dc : $92
	inc c                                                  ; $20dd : $0c
	.db $ed                                                  ; $20de : $ed
	adc a, e                                                  ; $20df : $8b
	ex de, hl                                                  ; $20e0 : $eb
	ld h, (hl)                                                  ; $20e1 : $66
	dec bc                                                  ; $20e2 : $0b
	ex de, hl                                                  ; $20e3 : $eb
	sub $e9                                                  ; $20e4 : $d6, $e9
	inc (hl)                                                  ; $20e6 : $34
	call pe, Call_03_07f0                                                  ; $20e7 : $ec, $f0, $07
	ld h, c                                                  ; $20ea : $61
	rst $20                                                  ; $20eb : $e7
	pop hl                                                  ; $20ec : $e1
	dec de                                                  ; $20ed : $1b
	rst $20                                                  ; $20ee : $e7
	inc a                                                  ; $20ef : $3c
	dec bc                                                  ; $20f0 : $0b
	inc bc                                                  ; $20f1 : $03
	ld (bc), a                                                  ; $20f2 : $02
	ret po                                                  ; $20f3 : $e0

	dec de                                                  ; $20f4 : $1b
	ret pe                                                  ; $20f5 : $e8

	jp nz, $c911                                                  ; $20f6 : $c2, $11, $c9
	ex de, hl                                                  ; $20f9 : $eb
	inc sp                                                  ; $20fa : $33
	sub d                                                  ; $20fb : $92
	pop hl                                                  ; $20fc : $e1
	ld a, (de)                                                  ; $20fd : $1a
	push hl                                                  ; $20fe : $e5
	ld h, $c3                                                  ; $20ff : $26, $c3
	ld c, (hl)                                                  ; $2101 : $4e
	push hl                                                  ; $2102 : $e5
	rst $08                                                  ; $2103 : $cf
	ld h, e                                                  ; $2104 : $63
	dec d                                                  ; $2105 : $15
	push hl                                                  ; $2106 : $e5
	add a, l                                                  ; $2107 : $85
	dec bc                                                  ; $2108 : $0b
	.db $ed                                                  ; $2109 : $ed
	or $ed                                                  ; $210a : $f6, $ed
	ret m                                                  ; $210c : $f8

	ret pe                                                  ; $210d : $e8

	cp l                                                  ; $210e : $bd
	dec bc                                                  ; $210f : $0b
	ret pe                                                  ; $2110 : $e8

	adc a, $1a                                                  ; $2111 : $ce, $1a
	inc c                                                  ; $2113 : $0c
	ex de, hl                                                  ; $2114 : $eb
	xor e                                                  ; $2115 : $ab
	ret pe                                                  ; $2116 : $e8

	xor a                                                  ; $2117 : $af
	out (c), l                                                  ; $2118 : $ed, $69
	dec bc                                                  ; $211a : $0b
	pop hl                                                  ; $211b : $e1
	dec a                                                  ; $211c : $3d
	ex (sp), hl                                                  ; $211d : $e3
	ld e, h                                                  ; $211e : $5c
	jp po, Jump_03_0c0f                                                  ; $211f : $e2, $0f, $0c
	ld h, (hl)                                                  ; $2122 : $66
	xor l                                                  ; $2123 : $ad
	ccf                                                  ; $2124 : $3f
	.db $dd                                                  ; $2125 : $dd
	ex de, hl                                                  ; $2126 : $eb
	ld b, $ec                                                  ; $2127 : $06, $ec
	ld d, $16                                                  ; $2129 : $16, $16
	ex de, hl                                                  ; $212b : $eb
	cp c                                                  ; $212c : $b9
	dec bc                                                  ; $212d : $0b
	pop hl                                                  ; $212e : $e1
	ld e, b                                                  ; $212f : $58
	jp pe, $e1c6                                                  ; $2130 : $ea, $c6, $e1
	pop de                                                  ; $2133 : $d1
	ld a, (bc)                                                  ; $2134 : $0a
	adc a, $87                                                  ; $2135 : $ce, $87
	jp po, Jump_03_36e4                                                  ; $2137 : $e2, $e4, $36
	sub (hl)                                                  ; $213a : $96
	exx                                                  ; $213b : $d9
	call po, Call_03_0bcf                                                  ; $213c : $e4, $cf, $0b
	pop hl                                                  ; $213f : $e1
	or b                                                  ; $2140 : $b0
	.db $ed                                                  ; $2141 : $ed
	cp l                                                  ; $2142 : $bd
	and h                                                  ; $2143 : $a4
	dec bc                                                  ; $2144 : $0b
	push hl                                                  ; $2145 : $e5
	push de                                                  ; $2146 : $d5
	call po, $80e9                                                  ; $2147 : $e4, $e9, $80
	inc c                                                  ; $214a : $0c
	call po, $e7f3                                                  ; $214b : $e4, $f3, $e7
	adc a, d                                                  ; $214e : $8a
	ld a, (bc)                                                  ; $214f : $0a
	call pe, $ec75                                                  ; $2150 : $ec, $75, $ec
	ld a, b                                                  ; $2153 : $78
	jp po, $e14d                                                  ; $2154 : $e2, $4d, $e1
	inc sp                                                  ; $2157 : $33
	rrca                                                  ; $2158 : $0f
	ret                                                  ; $2159 : $c9


	jp po, $e251                                                  ; $215a : $e2, $51, $e2
	add a, e                                                  ; $215d : $83
	ld a, (de)                                                  ; $215e : $1a
	rst $20                                                  ; $215f : $e7
	ccf                                                  ; $2160 : $3f
	pop hl                                                  ; $2161 : $e1
	or b                                                  ; $2162 : $b0
	call po, $e3ec                                                  ; $2163 : $e4, $ec, $e3
	pop af                                                  ; $2166 : $f1
	dec bc                                                  ; $2167 : $0b
	jp pe, $e42e                                                  ; $2168 : $ea, $2e, $e4
	ld l, d                                                  ; $216b : $6a
	ex de, hl                                                  ; $216c : $eb
	adc a, h                                                  ; $216d : $8c
	add hl, bc                                                  ; $216e : $09
	ret                                                  ; $216f : $c9


	inc (hl)                                                  ; $2170 : $34
	ld (hl), b                                                  ; $2171 : $70
	ret pe                                                  ; $2172 : $e8

	jr z, $31                                                  ; $2173 : $28, $31

	sub e                                                  ; $2175 : $93
	cp l                                                  ; $2176 : $bd
	dec bc                                                  ; $2177 : $0b
	adc a, l                                                  ; $2178 : $8d
	rst $20                                                  ; $2179 : $e7

Call_03_217a:
	jp nc, $ffe5                                                  ; $217a : $d2, $e5, $ff
	dec c                                                  ; $217d : $0d
	ld h, c                                                  ; $217e : $61
	ex de, hl                                                  ; $217f : $eb
	jp (hl)                                                  ; $2180 : $e9


	add a, $ec                                                  ; $2181 : $c6, $ec
	sub d                                                  ; $2183 : $92
	ld h, l                                                  ; $2184 : $65
	ret pe                                                  ; $2185 : $e8

	ret c                                                  ; $2186 : $d8

	cp l                                                  ; $2187 : $bd
	call po, Call_03_0bce                                                  ; $2188 : $e4, $ce, $0b
	add hl, bc                                                  ; $218b : $09
	ret po                                                  ; $218c : $e0

	inc h                                                  ; $218d : $24
	ret po                                                  ; $218e : $e0

	rra                                                  ; $218f : $1f
	call pe, Call_03_099f                                                  ; $2190 : $ec, $9f, $09
	cp d                                                  ; $2193 : $ba
	push hl                                                  ; $2194 : $e5
	cpl                                                  ; $2195 : $2f
	ld h, l                                                  ; $2196 : $65
	ex (sp), hl                                                  ; $2197 : $e3
	ld b, e                                                  ; $2198 : $43
	ld l, h                                                  ; $2199 : $6c
	cp d                                                  ; $219a : $ba
	ld a, (bc)                                                  ; $219b : $0a
	jp (hl)                                                  ; $219c : $e9


	ld (hl), a                                                  ; $219d : $77
	ex de, hl                                                  ; $219e : $eb
	inc h                                                  ; $219f : $24
	push hl                                                  ; $21a0 : $e5
	cp c                                                  ; $21a1 : $b9
	rlca                                                  ; $21a2 : $07
	ld h, c                                                  ; $21a3 : $61
	rst $20                                                  ; $21a4 : $e7
	jp po, $e21b                                                  ; $21a5 : $e2, $1b, $e2
	ld l, e                                                  ; $21a8 : $6b
	dec bc                                                  ; $21a9 : $0b
	inc bc                                                  ; $21aa : $03
	ret po                                                  ; $21ab : $e0

	dec de                                                  ; $21ac : $1b
	ld (bc), a                                                  ; $21ad : $02
	call pe, Call_03_0a7c                                                  ; $21ae : $ec, $7c, $0a
	ret                                                  ; $21b1 : $c9


	ld (hl), $6c                                                  ; $21b2 : $36, $6c
	ex de, hl                                                  ; $21b4 : $eb
	ld (hl), $ec                                                  ; $21b5 : $36, $ec
	dec d                                                  ; $21b7 : $15
	ret pe                                                  ; $21b8 : $e8

	.db $dd                                                  ; $21b9 : $dd
	dec bc                                                  ; $21ba : $0b
	jp pe, $e104                                                  ; $21bb : $ea, $04, $e1

Call_03_21be:
	call pe, $87e5                                                  ; $21be : $ec, $e5, $87
	rrca                                                  ; $21c1 : $0f
	or h                                                  ; $21c2 : $b4
	rst $20                                                  ; $21c3 : $e7
	ld de, $e6e8                                                  ; $21c4 : $11, $e8, $e6
	push de                                                  ; $21c7 : $d5
	rst $20                                                  ; $21c8 : $e7
	ld b, h                                                  ; $21c9 : $44
	ld h, e                                                  ; $21ca : $63
	ex de, hl                                                  ; $21cb : $eb
	ld c, (hl)                                                  ; $21cc : $4e
	call po, $c3ec                                                  ; $21cd : $e4, $ec, $c3
	ld a, (bc)                                                  ; $21d0 : $0a
	rst $20                                                  ; $21d1 : $e7
	halt                                                  ; $21d2 : $76

Call_03_21d3:
	jp (hl)                                                  ; $21d3 : $e9


	adc a, $ea                                                  ; $21d4 : $ce, $ea
	xor h                                                  ; $21d6 : $ac
	inc c                                                  ; $21d7 : $0c
	otir                                                  ; $21d8 : $ed, $b3
	or h                                                  ; $21da : $b4
	jp (hl)                                                  ; $21db : $e9


	ld h, b                                                  ; $21dc : $60
	adc a, c                                                  ; $21dd : $89
	ld h, e                                                  ; $21de : $63
	jp po, $ed8b                                                  ; $21df : $e2, $8b, $ed
	and d                                                  ; $21e2 : $a2
	dec bc                                                  ; $21e3 : $0b
	call pe, $ed7b                                                  ; $21e4 : $ec, $7b, $ed
	set 5, l                                                  ; $21e7 : $cb, $ed
	push bc                                                  ; $21e9 : $c5
	ld c, $ed                                                  ; $21ea : $0e, $ed
	pop bc                                                  ; $21ec : $c1
	jp pe, $e01e                                                  ; $21ed : $ea, $1e, $e0
	call z, $eae2                                                  ; $21f0 : $cc, $e2, $ea
	ld h, e                                                  ; $21f3 : $63
	ex de, hl                                                  ; $21f4 : $eb
	ret po                                                  ; $21f5 : $e0

	.db $ed                                                  ; $21f6 : $ed
	adc a, (hl)                                                  ; $21f7 : $8e
	dec bc                                                  ; $21f8 : $0b
	jp po, $e396                                                  ; $21f9 : $e2, $96, $e3
	jp po, Jump_03_11e2                                                  ; $21fc : $e2, $e2, $11
	rlca                                                  ; $21ff : $07
	ld h, c                                                  ; $2200 : $61
	ex (sp), hl                                                  ; $2201 : $e3
	add a, d                                                  ; $2202 : $82
	dec de                                                  ; $2203 : $1b
	jp po, $0ba9                                                  ; $2204 : $e2, $a9, $0b
	cp $fe                                                  ; $2207 : $fe, $fe
	add hl, sp                                                  ; $2209 : $39
	jr nc, -$01                                                  ; $220a : $30, $ff

	inc bc                                                  ; $220c : $03
	ret po                                                  ; $220d : $e0

	ld d, d                                                  ; $220e : $52
	dec bc                                                  ; $220f : $0b
	ret nc                                                  ; $2210 : $d0

	call po, Call_03_3d8b                                                  ; $2211 : $e4, $8b, $3d
	.db $ed                                                  ; $2214 : $ed
	adc a, $ed                                                  ; $2215 : $ce, $ed
	call pe, $ece8                                                  ; $2217 : $ec, $e8, $ec
	dec bc                                                  ; $221a : $0b
	and $29                                                  ; $221b : $e6, $29
	jp po, $e23a                                                  ; $221d : $e2, $3a, $e2
	and c                                                  ; $2220 : $a1
	dec c                                                  ; $2221 : $0d
	ldir                                                  ; $2222 : $ed, $b0
	.db $dd                                                  ; $2224 : $dd
	jp po, $b41c                                                  ; $2225 : $e2, $1c, $b4
	xor $14                                                  ; $2228 : $ee, $14
	sbc a, l                                                  ; $222a : $9d
	inc d                                                  ; $222b : $14
	call po, Call_03_0b15                                                  ; $222c : $e4, $15, $0b
	add a, h                                                  ; $222f : $84
	ret po                                                  ; $2230 : $e0

	sbc a, d                                                  ; $2231 : $9a
	xor $17                                                  ; $2232 : $ee, $17
	ld a, (bc)                                                  ; $2234 : $0a
	ld h, (hl)                                                  ; $2235 : $66
	xor l                                                  ; $2236 : $ad
	ccf                                                  ; $2237 : $3f
	push ix                                                  ; $2238 : $dd, $e5
	ld c, l                                                  ; $223a : $4d
	inc c                                                  ; $223b : $0c
	ret po                                                  ; $223c : $e0

	ld (bc), a                                                  ; $223d : $02
	dec bc                                                  ; $223e : $0b
	jp pe, $e4c6                                                  ; $223f : $ea, $c6, $e4
	cp c                                                  ; $2242 : $b9
	ex de, hl                                                  ; $2243 : $eb
	sub d                                                  ; $2244 : $92
	rlca                                                  ; $2245 : $07
	ld h, c                                                  ; $2246 : $61
	call c, $641c                                                  ; $2247 : $dc, $1c, $64
	jp po, Jump_03_0b6f                                                  ; $224a : $e2, $6f, $0b
	ld (bc), a                                                  ; $224d : $02
	ret po                                                  ; $224e : $e0

	dec de                                                  ; $224f : $1b
	inc bc                                                  ; $2250 : $03
	ret pe                                                  ; $2251 : $e8

	pop bc                                                  ; $2252 : $c1
	ex af, af'                                                  ; $2253 : $08
	inc c                                                  ; $2254 : $0c
	call pe, $6cc4                                                  ; $2255 : $ec, $c4, $6c
	ld h, c                                                  ; $2258 : $61
	jp (hl)                                                  ; $2259 : $e9


	or c                                                  ; $225a : $b1
	dec bc                                                  ; $225b : $0b
	cp $fe                                                  ; $225c : $fe, $fe
	ld sp, $3035                                                  ; $225e : $31, $35, $30
	jr nc, -$01                                                  ; $2261 : $30, $ff

	cp $fe                                                  ; $2263 : $fe, $fe
	inc sp                                                  ; $2265 : $33
	jr nc, br_03_2298                                                  ; $2266 : $30, $30

	jr nc, -$01                                                  ; $2268 : $30, $ff

	ret po                                                  ; $226a : $e0

	ld b, (hl)                                                  ; $226b : $46
	.db $ed                                                  ; $226c : $ed
	dec c                                                  ; $226d : $0d
	ld b, $cc                                                  ; $226e : $06, $cc
	jp po, $808f                                                  ; $2270 : $e2, $8f, $80
	ld d, (hl)                                                  ; $2273 : $56
	dec bc                                                  ; $2274 : $0b
	jp po, $e40c                                                  ; $2275 : $e2, $0c, $e4
	ld d, $e7                                                  ; $2278 : $16, $e7
	rst $18                                                  ; $227a : $df
	dec b                                                  ; $227b : $05
	adc a, $ec                                                  ; $227c : $ce, $ec
	ld h, b                                                  ; $227e : $60
	rla                                                  ; $227f : $17
	dec bc                                                  ; $2280 : $0b
	call po, $e025                                                  ; $2281 : $e4, $25, $e0
	sub $e5                                                  ; $2284 : $d6, $e5
	ld d, a                                                  ; $2286 : $57
	dec c                                                  ; $2287 : $0d
	ld h, c                                                  ; $2288 : $61
	ret pe                                                  ; $2289 : $e8

	rst $20                                                  ; $228a : $e7
	jp (hl)                                                  ; $228b : $e9


	scf                                                  ; $228c : $37
	and $51                                                  ; $228d : $e6, $51
	ld h, h                                                  ; $228f : $64
	pop hl                                                  ; $2290 : $e1
	ld e, b                                                  ; $2291 : $58
	push hl                                                  ; $2292 : $e5
	dec h                                                  ; $2293 : $25
	dec bc                                                  ; $2294 : $0b
	dec b                                                  ; $2295 : $05
	ret po                                                  ; $2296 : $e0

	ld e, (hl)                                                  ; $2297 : $5e

br_03_2298:
	ex af, af'                                                  ; $2298 : $08
	ex de, hl                                                  ; $2299 : $eb
	ld (hl), h                                                  ; $229a : $74
	ex af, af'                                                  ; $229b : $08
	ld h, c                                                  ; $229c : $61
	call po, Call_03_1cae                                                  ; $229d : $e4, $ae, $1c
	ld h, h                                                  ; $22a0 : $64
	rst $20                                                  ; $22a1 : $e7
	.db $dd                                                  ; $22a2 : $dd
	dec bc                                                  ; $22a3 : $0b
	cp $fe                                                  ; $22a4 : $fe, $fe
	ld (hl), $30                                                  ; $22a6 : $36, $30
	jr nc, br_03_22da                                                  ; $22a8 : $30, $30

	rst $38                                                  ; $22aa : $ff
	cp $fe                                                  ; $22ab : $fe, $fe
	inc (hl)                                                  ; $22ad : $34
	jr c, $30                                                  ; $22ae : $38, $30

Call_03_22b0:
	jr nc, -$01                                                  ; $22b0 : $30, $ff

	cp $fe                                                  ; $22b2 : $fe, $fe
	dec (hl)                                                  ; $22b4 : $35
	ld ($3038), a                                                  ; $22b5 : $32, $38, $30
	rst $38                                                  ; $22b8 : $ff
	ex af, af'                                                  ; $22b9 : $08
	or h                                                  ; $22ba : $b4
	rst $20                                                  ; $22bb : $e7
	ld e, $e0                                                  ; $22bc : $1e, $e0
	nop                                                  ; $22be : $00
	ret po                                                  ; $22bf : $e0

	call m, $ed0b                                                  ; $22c0 : $fc, $0b, $ed
	ld c, h                                                  ; $22c3 : $4c
	ret pe                                                  ; $22c4 : $e8

	sbc a, d                                                  ; $22c5 : $9a
	.db $ed                                                  ; $22c6 : $ed
	ld a, h                                                  ; $22c7 : $7c
	ld b, $cd                                                  ; $22c8 : $06, $cd
	ex (sp), hl                                                  ; $22ca : $e3
	ld h, c                                                  ; $22cb : $61
	rst $20                                                  ; $22cc : $e7
	ld d, d                                                  ; $22cd : $52
	dec bc                                                  ; $22ce : $0b
	call po, $e1de                                                  ; $22cf : $e4, $de, $e1
	ld (hl), l                                                  ; $22d2 : $75

Jump_03_22d3:
	ex de, hl                                                  ; $22d3 : $eb
	ret z                                                  ; $22d4 : $c8

	ex af, af'                                                  ; $22d5 : $08
	jp z, $57e8                                                  ; $22d6 : $ca, $e8, $57
	sub a                                                  ; $22d9 : $97

br_03_22da:
	jp (hl)                                                  ; $22da : $e9


	and l                                                  ; $22db : $a5
	cpl                                                  ; $22dc : $2f
	dec bc                                                  ; $22dd : $0b
	ex de, hl                                                  ; $22de : $eb
	cp $e9                                                  ; $22df : $fe, $e9
	adc a, a                                                  ; $22e1 : $8f
	jp pe, $ea1a                                                  ; $22e2 : $ea, $1a, $ea
	add hl, de                                                  ; $22e5 : $19
	ld a, (bc)                                                  ; $22e6 : $0a
	ex (sp), hl                                                  ; $22e7 : $e3
	.db $fd                                                  ; $22e8 : $fd
	call pe, $e33f                                                  ; $22e9 : $ec, $3f, $e3
	rrca                                                  ; $22ec : $0f
	ret pe                                                  ; $22ed : $e8

	ld a, (de)                                                  ; $22ee : $1a
	sub d                                                  ; $22ef : $92
	ld a, (bc)                                                  ; $22f0 : $0a
	jp pe, $a8e7                                                  ; $22f1 : $ea, $e7, $a8
	push bc                                                  ; $22f4 : $c5
	dec bc                                                  ; $22f5 : $0b
	jp z, $b337                                                  ; $22f6 : $ca, $37, $b3
	ld a, (de)                                                  ; $22f9 : $1a
	adc a, a                                                  ; $22fa : $8f
	rst $20                                                  ; $22fb : $e7
	call p, $9b92                                                  ; $22fc : $f4, $92, $9b
	scf                                                  ; $22ff : $37
	dec bc                                                  ; $2300 : $0b
	ex (sp), hl                                                  ; $2301 : $e3
	ld e, $e8                                                  ; $2302 : $1e, $e8
	ld h, e                                                  ; $2304 : $63
	jp (hl)                                                  ; $2305 : $e9


	push bc                                                  ; $2306 : $c5
	inc c                                                  ; $2307 : $0c
	jp nc, Jump_03_1bee                                                  ; $2308 : $d2, $ee, $1b
	call pe, $6c7a                                                  ; $230b : $ec, $7a, $6c
	push hl                                                  ; $230e : $e5
	push hl                                                  ; $230f : $e5
	.db $dd                                                  ; $2310 : $dd
	ld e, h                                                  ; $2311 : $5c
	inc c                                                  ; $2312 : $0c
	ld a, (bc)                                                  ; $2313 : $0a
	jp po, $e5cc                                                  ; $2314 : $e2, $cc, $e5
	add a, $e4                                                  ; $2317 : $c6, $e4
	or h                                                  ; $2319 : $b4
	ld (de), a                                                  ; $231a : $12
	ld h, l                                                  ; $231b : $65
	pop hl                                                  ; $231c : $e1
	sub c                                                  ; $231d : $91
	nop                                                  ; $231e : $00
	push de                                                  ; $231f : $d5
	jp $11e1                                                  ; $2320 : $c3, $e1, $11


	inc l                                                  ; $2323 : $2c
	push hl                                                  ; $2324 : $e5
	ld h, l                                                  ; $2325 : $65
	cp d                                                  ; $2326 : $ba
	pop hl                                                  ; $2327 : $e1
	ei                                                  ; $2328 : $fb
	or h                                                  ; $2329 : $b4
	pop hl                                                  ; $232a : $e1
	ld (bc), a                                                  ; $232b : $02
	dec bc                                                  ; $232c : $0b
	ret pe                                                  ; $232d : $e8

	ld d, $e6                                                  ; $232e : $16, $e6
	or c                                                  ; $2330 : $b1
	ret pe                                                  ; $2331 : $e8

	add a, c                                                  ; $2332 : $81
	djnz br_03_2396                                                  ; $2333 : $10, $61
	rst $20                                                  ; $2335 : $e7
	add hl, sp                                                  ; $2336 : $39
	ld a, (de)                                                  ; $2337 : $1a
	ex (sp), hl                                                  ; $2338 : $e3
	ret po                                                  ; $2339 : $e0

	cp d                                                  ; $233a : $ba
	jp (hl)                                                  ; $233b : $e9


	add a, b                                                  ; $233c : $80
	inc c                                                  ; $233d : $0c
	push hl                                                  ; $233e : $e5
	dec h                                                  ; $233f : $25
	sub d                                                  ; $2340 : $92
	call pe, $0bae                                                  ; $2341 : $ec, $ae, $0b
	ex af, af'                                                  ; $2344 : $08
	ret po                                                  ; $2345 : $e0

	ld e, (hl)                                                  ; $2346 : $5e
	ld b, $e4                                                  ; $2347 : $06, $e4
	.db $fd                                                  ; $2349 : $fd
	dec c                                                  ; $234a : $0d
	ret                                                  ; $234b : $c9


	.db $ed                                                  ; $234c : $ed
	ld c, $92                                                  ; $234d : $0e, $92
	rla                                                  ; $234f : $17
	ld l, h                                                  ; $2350 : $6c
	push hl                                                  ; $2351 : $e5
	inc l                                                  ; $2352 : $2c
	push hl                                                  ; $2353 : $e5
	dec c                                                  ; $2354 : $0d
	ret pe                                                  ; $2355 : $e8

	xor (hl)                                                  ; $2356 : $ae
	dec bc                                                  ; $2357 : $0b
	jp po, $e356                                                  ; $2358 : $e2, $56, $e3
	jp (hl)                                                  ; $235b : $e9


	ex (sp), hl                                                  ; $235c : $e3
	adc a, $07                                                  ; $235d : $ce, $07
	ret                                                  ; $235f : $c9


	ld (hl), $1a                                                  ; $2360 : $36, $1a
	or h                                                  ; $2362 : $b4
	ex de, hl                                                  ; $2363 : $eb
	adc a, h                                                  ; $2364 : $8c
	dec bc                                                  ; $2365 : $0b
	ret pe                                                  ; $2366 : $e8

	call $87e5                                                  ; $2367 : $cd, $e5, $87
	pop hl                                                  ; $236a : $e1
	or b                                                  ; $236b : $b0
	add hl, bc                                                  ; $236c : $09
	adc a, $eb                                                  ; $236d : $ce, $eb
	dec sp                                                  ; $236f : $3b
	rst $20                                                  ; $2370 : $e7
	dec e                                                  ; $2371 : $1d
	sub e                                                  ; $2372 : $93
	ret po                                                  ; $2373 : $e0

	xor l                                                  ; $2374 : $ad
	dec bc                                                  ; $2375 : $0b
	ret pe                                                  ; $2376 : $e8

	jp p, Jump_03_1bea                                                  ; $2377 : $f2, $ea, $1b
	jp pe, Jump_03_150a                                                  ; $237a : $ea, $0a, $15
	call nc, Call_03_13e5                                                  ; $237d : $d4, $e5, $13
	ex (sp), hl                                                  ; $2380 : $e3
	dec d                                                  ; $2381 : $15
	ret pe                                                  ; $2382 : $e8

	ld c, $ed                                                  ; $2383 : $0e, $ed
	ld l, c                                                  ; $2385 : $69
	jp po, Jump_03_0b0f                                                  ; $2386 : $e2, $0f, $0b
	ret po                                                  ; $2389 : $e0

	rst $20                                                  ; $238a : $e7
	nop                                                  ; $238b : $00
	ret pe                                                  ; $238c : $e8

	call $e99a                                                  ; $238d : $cd, $9a, $e9
	dec hl                                                  ; $2390 : $2b
	dec bc                                                  ; $2391 : $0b
	ret po                                                  ; $2392 : $e0

	rst $20                                                  ; $2393 : $e7
	jp (hl)                                                  ; $2394 : $e9


	dec hl                                                  ; $2395 : $2b

br_03_2396:
	ret pe                                                  ; $2396 : $e8

br_03_2397:
	call $d412                                                  ; $2397 : $cd, $12, $d4
	push hl                                                  ; $239a : $e5
	inc de                                                  ; $239b : $13
	push hl                                                  ; $239c : $e5
	sub h                                                  ; $239d : $94
	sub a                                                  ; $239e : $97
	out (c), h                                                  ; $239f : $ed, $61
	dec bc                                                  ; $23a1 : $0b
	push hl                                                  ; $23a2 : $e5
	ld a, d                                                  ; $23a3 : $7a
	nop                                                  ; $23a4 : $00
	push hl                                                  ; $23a5 : $e5
	ld a, c                                                  ; $23a6 : $79
	sbc a, d                                                  ; $23a7 : $9a
	pop hl                                                  ; $23a8 : $e1
	ld c, e                                                  ; $23a9 : $4b
	dec bc                                                  ; $23aa : $0b
	push hl                                                  ; $23ab : $e5
	ld a, d                                                  ; $23ac : $7a
	pop hl                                                  ; $23ad : $e1
	ld c, e                                                  ; $23ae : $4b
	push hl                                                  ; $23af : $e5
	ld a, c                                                  ; $23b0 : $79
	inc d                                                  ; $23b1 : $14
	call nc, $e493                                                  ; $23b2 : $d4, $93, $e4
	pop hl                                                  ; $23b5 : $e1
	ld b, b                                                  ; $23b6 : $40
	adc a, a                                                  ; $23b7 : $8f
	push hl                                                  ; $23b8 : $e5
	sub d                                                  ; $23b9 : $92
	.db $ed                                                  ; $23ba : $ed
	add hl, de                                                  ; $23bb : $19
	dec bc                                                  ; $23bc : $0b
	jp (hl)                                                  ; $23bd : $e9


	ld hl, ($e200)                                                  ; $23be : $2a, $00, $e2
	ld c, e                                                  ; $23c1 : $4b
	nop                                                  ; $23c2 : $00
	ex (sp), hl                                                  ; $23c3 : $e3
	ld c, e                                                  ; $23c4 : $4b
	dec bc                                                  ; $23c5 : $0b
	jp (hl)                                                  ; $23c6 : $e9


	ld hl, ($4be2)                                                  ; $23c7 : $2a, $e2, $4b
	ex (sp), hl                                                  ; $23ca : $e3
	ld c, e                                                  ; $23cb : $4b
	djnz br_03_2397                                                  ; $23cc : $10, $c9
	sub b                                                  ; $23ce : $90
	ccf                                                  ; $23cf : $3f
	jp (ix)                                                  ; $23d0 : $dd, $e9


	add a, h                                                  ; $23d2 : $84
	ret po                                                  ; $23d3 : $e0

	and l                                                  ; $23d4 : $a5
	cp d                                                  ; $23d5 : $ba
	ld h, l                                                  ; $23d6 : $65
	jp (hl)                                                  ; $23d7 : $e9


	add a, h                                                  ; $23d8 : $84
	sub d                                                  ; $23d9 : $92
	ret po                                                  ; $23da : $e0

	and l                                                  ; $23db : $a5
	dec bc                                                  ; $23dc : $0b
	xor (hl)                                                  ; $23dd : $ae
	rst $20                                                  ; $23de : $e7
	inc h                                                  ; $23df : $24
	call po, $ecce                                                  ; $23e0 : $e4, $ce, $ec
	adc a, (hl)                                                  ; $23e3 : $8e
	rlca                                                  ; $23e4 : $07
	call z, $ebb4                                                  ; $23e5 : $cc, $b4, $eb
	sub $92                                                  ; $23e8 : $d6, $92
	ld c, a                                                  ; $23ea : $4f
	dec bc                                                  ; $23eb : $0b
	ret po                                                  ; $23ec : $e0

	ld b, h                                                  ; $23ed : $44

Jump_03_23ee:
	cp $fe                                                  ; $23ee : $fe, $fe
	inc sp                                                  ; $23f0 : $33
	ld (hl), $ff                                                  ; $23f1 : $36, $ff
	ret po                                                  ; $23f3 : $e0

	ld c, h                                                  ; $23f4 : $4c
	dec d                                                  ; $23f5 : $15
	ret                                                  ; $23f6 : $c9


	ld e, e                                                  ; $23f7 : $5b
	inc c                                                  ; $23f8 : $0c
	ex (sp), hl                                                  ; $23f9 : $e3
	dec (hl)                                                  ; $23fa : $35
	nop                                                  ; $23fb : $00
	rst $20                                                  ; $23fc : $e7
	call nz, $e800                                                  ; $23fd : $c4, $00, $e8
	dec b                                                  ; $2400 : $05
	nop                                                  ; $2401 : $00
	and $c9                                                  ; $2402 : $e6, $c9
	ld d, $0c                                                  ; $2404 : $16, $0c
	ex (sp), hl                                                  ; $2406 : $e3
	cp d                                                  ; $2407 : $ba
	ex (sp), hl                                                  ; $2408 : $e3
	pop hl                                                  ; $2409 : $e1
	dec bc                                                  ; $240a : $0b
	.db $ed                                                  ; $240b : $ed
	rrca                                                  ; $240c : $0f
	ex de, hl                                                  ; $240d : $eb
	rlca                                                  ; $240e : $07
	jp po, $e6f3                                                  ; $240f : $e2, $f3, $e6
	inc bc                                                  ; $2412 : $03
	dec c                                                  ; $2413 : $0d
	ret                                                  ; $2414 : $c9


	dec a                                                  ; $2415 : $3d
	xor $10                                                  ; $2416 : $ee, $10
	ex (sp), hl                                                  ; $2418 : $e3
	ret c                                                  ; $2419 : $d8

	ex de, hl                                                  ; $241a : $eb
	.db $fd                                                  ; $241b : $fd
	ld h, e                                                  ; $241c : $63
	ld e, a                                                  ; $241d : $5f
	push hl                                                  ; $241e : $e5
	cp h                                                  ; $241f : $bc
	dec bc                                                  ; $2420 : $0b
	push hl                                                  ; $2421 : $e5
	cp l                                                  ; $2422 : $bd
	pop hl                                                  ; $2423 : $e1
	ld b, d                                                  ; $2424 : $42
	call po, Call_03_0aa6                                                  ; $2425 : $e4, $a6, $0a
	ret                                                  ; $2428 : $c9


	jp (hl)                                                  ; $2429 : $e9


	ld (hl), h                                                  ; $242a : $74
	ccf                                                  ; $242b : $3f

br_03_242c:
	call po, $e76a                                                  ; $242c : $e4, $6a, $e7
	ld b, d                                                  ; $242f : $42
	sub (hl)                                                  ; $2430 : $96
	dec bc                                                  ; $2431 : $0b
	call pe, $ea64                                                  ; $2432 : $ec, $64, $ea
	dec (hl)                                                  ; $2435 : $35
	call po, Call_03_093b                                                  ; $2436 : $e4, $3b, $09
	adc a, $eb                                                  ; $2439 : $ce, $eb
	ld d, h                                                  ; $243b : $54
	ret pe                                                  ; $243c : $e8

	dec bc                                                  ; $243d : $0b
	sub e                                                  ; $243e : $93
	xor $13                                                  ; $243f : $ee, $13
	dec bc                                                  ; $2441 : $0b
	ex de, hl                                                  ; $2442 : $eb
	jr nc, br_03_242c                                                  ; $2443 : $30, $e7

	adc a, a                                                  ; $2445 : $8f
	call po, Call_03_09a9                                                  ; $2446 : $e4, $a9, $09
	ld h, c                                                  ; $2449 : $61
	call po, $970f                                                  ; $244a : $e4, $0f, $97
	call pe, $eb06                                                  ; $244d : $ec, $06, $eb
	ld h, (hl)                                                  ; $2450 : $66
	dec bc                                                  ; $2451 : $0b
	ex af, af'                                                  ; $2452 : $08
	ld (bc), a                                                  ; $2453 : $02
	ret po                                                  ; $2454 : $e0

	ld e, h                                                  ; $2455 : $5c
	call po, Call_03_0e19                                                  ; $2456 : $e4, $19, $0e
	jp nc, $89e4                                                  ; $2459 : $d2, $e4, $89
	rst $00                                                  ; $245c : $c7
	call nc, $b0e3                                                  ; $245d : $d4, $e3, $b0
	ld l, h                                                  ; $2460 : $6c
	cp d                                                  ; $2461 : $ba
	xor $1b                                                  ; $2462 : $ee, $1b
	jp pe, Jump_03_0b9c                                                  ; $2464 : $ea, $9c, $0b
	xor c                                                  ; $2467 : $a9
	ret pe                                                  ; $2468 : $e8

	sub e                                                  ; $2469 : $93
	adc a, (hl)                                                  ; $246a : $8e
	dec bc                                                  ; $246b : $0b
	ld h, c                                                  ; $246c : $61
	call pe, $eeb5                                                  ; $246d : $ec, $b5, $ee
	dec h                                                  ; $2470 : $25
	inc e                                                  ; $2471 : $1c
	ld h, l                                                  ; $2472 : $65
	ex (sp), hl                                                  ; $2473 : $e3
	ld d, $bd                                                  ; $2474 : $16, $bd
	dec bc                                                  ; $2476 : $0b
	dec b                                                  ; $2477 : $05
	rlca                                                  ; $2478 : $07
	ld b, $e4                                                  ; $2479 : $06, $e4
	.db $fd                                                  ; $247b : $fd
	rlca                                                  ; $247c : $07
	rst $08                                                  ; $247d : $cf
	or h                                                  ; $247e : $b4
	and $8f                                                  ; $247f : $e6, $8f
	ex (sp), hl                                                  ; $2481 : $e3
	ld d, d                                                  ; $2482 : $52
	dec bc                                                  ; $2483 : $0b
	ex (sp), hl                                                  ; $2484 : $e3
	ret nc                                                  ; $2485 : $d0

	ex (sp), hl                                                  ; $2486 : $e3
	rst $10                                                  ; $2487 : $d7
	xor $16                                                  ; $2488 : $ee, $16
	ld c, $d5                                                  ; $248a : $0e, $d5
	jp po, $e063                                                  ; $248c : $e2, $63, $e0
	ld e, b                                                  ; $248f : $58
	call c, $b41f                                                  ; $2490 : $dc, $1f, $b4
	ret po                                                  ; $2493 : $e0

	add hl, bc                                                  ; $2494 : $09
	ld h, e                                                  ; $2495 : $63
	ret po                                                  ; $2496 : $e0

	ccf                                                  ; $2497 : $3f
	dec bc                                                  ; $2498 : $0b
	jp po, $e144                                                  ; $2499 : $e2, $44, $e1
	ld e, (hl)                                                  ; $249c : $5e
	call pe, Call_03_0c3a                                                  ; $249d : $ec, $3a, $0c
	ret                                                  ; $24a0 : $c9


	ld c, l                                                  ; $24a1 : $4d
	ex de, hl                                                  ; $24a2 : $eb
	pop af                                                  ; $24a3 : $f1
	jp po, Jump_03_0363                                                  ; $24a4 : $e2, $63, $03
	call c, $e063                                                  ; $24a7 : $dc, $63, $e0
	ld a, $0b                                                  ; $24aa : $3e, $0b
	ld a, h                                                  ; $24ac : $7c
	call pe, $e7d5                                                  ; $24ad : $ec, $d5, $e7
	inc hl                                                  ; $24b0 : $23
	ld (de), a                                                  ; $24b1 : $12
	ld h, (hl)                                                  ; $24b2 : $66
	xor l                                                  ; $24b3 : $ad
	jp po, $dd24                                                  ; $24b4 : $e2, $24, $dd
	ex de, hl                                                  ; $24b7 : $eb
	ld b, $0c                                                  ; $24b8 : $06, $0c
	pop hl                                                  ; $24ba : $e1
	sbc a, (hl)                                                  ; $24bb : $9e
	nop                                                  ; $24bc : $00
	ex (sp), hl                                                  ; $24bd : $e3
	ret m                                                  ; $24be : $f8

	sbc a, d                                                  ; $24bf : $9a
	inc c                                                  ; $24c0 : $0c
	pop hl                                                  ; $24c1 : $e1
	or (hl)                                                  ; $24c2 : $b6
	dec bc                                                  ; $24c3 : $0b
	pop hl                                                  ; $24c4 : $e1
	ld b, e                                                  ; $24c5 : $43
	ex de, hl                                                  ; $24c6 : $eb
	rst $10                                                  ; $24c7 : $d7
	push hl                                                  ; $24c8 : $e5
	ld l, c                                                  ; $24c9 : $69
	add hl, bc                                                  ; $24ca : $09
	ret                                                  ; $24cb : $c9


	xor l                                                  ; $24cc : $ad
	ld l, h                                                  ; $24cd : $6c
	jp (hl)                                                  ; $24ce : $e9


	add a, c                                                  ; $24cf : $81
	ld hl, $d2ed                                                  ; $24d0 : $21, $ed, $d2
	dec bc                                                  ; $24d3 : $0b
	push hl                                                  ; $24d4 : $e5
	ld l, c                                                  ; $24d5 : $69
	and $fd                                                  ; $24d6 : $e6, $fd
	call pe, Call_03_097f                                                  ; $24d8 : $ec, $7f, $09
	jp po, $e2a1                                                  ; $24db : $e2, $a1, $e2
	ret po                                                  ; $24de : $e0

	ld d, (hl)                                                  ; $24df : $56
	call nc, $66e1                                                  ; $24e0 : $d4, $e1, $66
	dec bc                                                  ; $24e3 : $0b
	jp po, $e5c9                                                  ; $24e4 : $e2, $c9, $e5
	add a, a                                                  ; $24e7 : $87
	jp po, $0bc7                                                  ; $24e8 : $e2, $c7, $0b
	ld h, a                                                  ; $24eb : $67
	xor l                                                  ; $24ec : $ad
	ld l, h                                                  ; $24ed : $6c
	ret po                                                  ; $24ee : $e0

	ld d, b                                                  ; $24ef : $50
	inc c                                                  ; $24f0 : $0c
	jp (hl)                                                  ; $24f1 : $e9


	ld a, ($25e5)                                                  ; $24f2 : $3a, $e5, $25
	dec bc                                                  ; $24f5 : $0b
	call po, $e6b0                                                  ; $24f6 : $e4, $b0, $e6
	rst $20                                                  ; $24f9 : $e7
	pop hl                                                  ; $24fa : $e1
	pop de                                                  ; $24fb : $d1
	ld (de), a                                                  ; $24fc : $12
	sub $eb                                                  ; $24fd : $d6, $eb
	ret po                                                  ; $24ff : $e0

	sub e                                                  ; $2500 : $93
	rst $20                                                  ; $2501 : $e7
	dec b                                                  ; $2502 : $05
	call po, $ec94                                                  ; $2503 : $e4, $94, $ec
	ld d, a                                                  ; $2506 : $57
	jp po, $ebdf                                                  ; $2507 : $e2, $df, $eb
	ld e, c                                                  ; $250a : $59
	ld h, e                                                  ; $250b : $63
	ret po                                                  ; $250c : $e0

	ld a, $0b                                                  ; $250d : $3e, $0b
	call po, $edfe                                                  ; $250f : $e4, $fe, $ed
	rst $08                                                  ; $2512 : $cf
	ex (sp), hl                                                  ; $2513 : $e3
	jr z, br_03_251e                                                  ; $2514 : $28, $08

	ret                                                  ; $2516 : $c9


	xor (hl)                                                  ; $2517 : $ae
	push hl                                                  ; $2518 : $e5
	cp d                                                  ; $2519 : $ba
	push hl                                                  ; $251a : $e5
	add a, e                                                  ; $251b : $83
	and b                                                  ; $251c : $a0
	dec bc                                                  ; $251d : $0b

br_03_251e:
	adc a, l                                                  ; $251e : $8d
	and $33                                                  ; $251f : $e6, $33
	ld l, $10                                                  ; $2521 : $2e, $10
	ret                                                  ; $2523 : $c9


	ld c, l                                                  ; $2524 : $4d
	cp l                                                  ; $2525 : $bd
	pop hl                                                  ; $2526 : $e1
	ex (sp), hl                                                  ; $2527 : $e3
	jp po, $7463                                                  ; $2528 : $e2, $63, $74
	ret po                                                  ; $252b : $e0

	ld e, b                                                  ; $252c : $58
	ret po                                                  ; $252d : $e0

	jp nc, $e063                                                  ; $252e : $d2, $63, $e0
	ccf                                                  ; $2531 : $3f
	dec bc                                                  ; $2532 : $0b
	pop hl                                                  ; $2533 : $e1
	ret pe                                                  ; $2534 : $e8

	rst $20                                                  ; $2535 : $e7
	ret z                                                  ; $2536 : $c8

	push hl                                                  ; $2537 : $e5
	ld l, b                                                  ; $2538 : $68
	ld c, $c9                                                  ; $2539 : $0e, $c9
	or d                                                  ; $253b : $b2
	inc a                                                  ; $253c : $3c
	call pe, $ecd3                                                  ; $253d : $ec, $d3, $ec
	sbc a, h                                                  ; $2540 : $9c
	.db $ed                                                  ; $2541 : $ed
	and $ed                                                  ; $2542 : $e6, $ed
	inc (hl)                                                  ; $2544 : $34
	ret pe                                                  ; $2545 : $e8

	ld (bc), a                                                  ; $2546 : $02
	dec bc                                                  ; $2547 : $0b
	jp po, $eb35                                                  ; $2548 : $e2, $35, $eb
	dec (hl)                                                  ; $254b : $35
	pop hl                                                  ; $254c : $e1
	ld d, (hl)                                                  ; $254d : $56
	inc d                                                  ; $254e : $14
	jp nc, $6c72                                                  ; $254f : $d2, $72, $6c
	ret pe                                                  ; $2552 : $e8

	adc a, d                                                  ; $2553 : $8a
	ld h, e                                                  ; $2554 : $63
	ld ($c900), a                                                  ; $2555 : $32, $00, $c9
	call pe, $6cb5                                                  ; $2558 : $ec, $b5, $6c
	ld (hl), d                                                  ; $255b : $72
	ld h, e                                                  ; $255c : $63
	rst $20                                                  ; $255d : $e7
	ld d, (hl)                                                  ; $255e : $56
	dec bc                                                  ; $255f : $0b
	sbc a, $e0                                                  ; $2560 : $de, $e0
	ld h, e                                                  ; $2562 : $63
	ret po                                                  ; $2563 : $e0

	ld b, e                                                  ; $2564 : $43
	rlca                                                  ; $2565 : $07
	ld (bc), a                                                  ; $2566 : $02
	inc de                                                  ; $2567 : $13
	pop hl                                                  ; $2568 : $e1
	ld l, l                                                  ; $2569 : $6d
	sub d                                                  ; $256a : $92
	jp pe, $e163                                                  ; $256b : $ea, $63, $e1
	ld a, l                                                  ; $256e : $7d
	nop                                                  ; $256f : $00
	add a, a                                                  ; $2570 : $87
	jp pe, $9279                                                  ; $2571 : $ea, $79, $92
	ld l, b                                                  ; $2574 : $68
	ccf                                                  ; $2575 : $3f
	adc a, a                                                  ; $2576 : $8f
	call po, $c905                                                  ; $2577 : $e4, $05, $c9
	dec bc                                                  ; $257a : $0b
	neg                                                  ; $257b : $ed, $44
	call po, $e7ca                                                  ; $257d : $e4, $ca, $e7
	or h                                                  ; $2580 : $b4
	ld a, (bc)                                                  ; $2581 : $0a
	out ($3f), a                                                  ; $2582 : $d3, $3f
	add a, a                                                  ; $2584 : $87
	sub e                                                  ; $2585 : $93
	sbc a, (hl)                                                  ; $2586 : $9e
	ld h, e                                                  ; $2587 : $63
	inc sp                                                  ; $2588 : $33
	.db $ed                                                  ; $2589 : $ed
	di                                                  ; $258a : $f3
	dec bc                                                  ; $258b : $0b
	call po, $e78a                                                  ; $258c : $e4, $8a, $e7
	and $e4                                                  ; $258f : $e6, $e4
	sbc a, e                                                  ; $2591 : $9b
	ld a, (bc)                                                  ; $2592 : $0a
	or h                                                  ; $2593 : $b4
	call po, $92ee                                                  ; $2594 : $e4, $ee, $92
	push hl                                                  ; $2597 : $e5
	ld l, (hl)                                                  ; $2598 : $6e
	ld h, l                                                  ; $2599 : $65
	cp l                                                  ; $259a : $bd
	ld l, a                                                  ; $259b : $6f
	dec bc                                                  ; $259c : $0b
	jp po, $e935                                                  ; $259d : $e2, $35, $e9
	rrca                                                  ; $25a0 : $0f
	ex (sp), hl                                                  ; $25a1 : $e3
	add a, (hl)                                                  ; $25a2 : $86
	dec c                                                  ; $25a3 : $0d
	sub (hl)                                                  ; $25a4 : $96
	ret nc                                                  ; $25a5 : $d0

	ex de, hl                                                  ; $25a6 : $eb
	ld d, b                                                  ; $25a7 : $50
	.db $ed                                                  ; $25a8 : $ed
	rst $38                                                  ; $25a9 : $ff
	.db $dd                                                  ; $25aa : $dd
	call po, Call_03_0cc5                                                  ; $25ab : $e4, $c5, $0c
	jp (hl)                                                  ; $25ae : $e9


	dec a                                                  ; $25af : $3d
	dec bc                                                  ; $25b0 : $0b
	ex (sp), hl                                                  ; $25b1 : $e3
	sub e                                                  ; $25b2 : $93
	call pe, $ece8                                                  ; $25b3 : $ec, $e8, $ec
	ld ($ed09), hl                                                  ; $25b6 : $22, $09, $ed
	or e                                                  ; $25b9 : $b3
	or h                                                  ; $25ba : $b4
	ex de, hl                                                  ; $25bb : $eb
	sub $92                                                  ; $25bc : $d6, $92
	ex de, hl                                                  ; $25be : $eb
	ld a, ($fe0b)                                                  ; $25bf : $3a, $0b, $fe
	cp $34                                                  ; $25c2 : $fe, $34
	ld ($feff), a                                                  ; $25c4 : $32, $ff, $fe
	cp $36                                                  ; $25c7 : $fe, $36
	inc (hl)                                                  ; $25c9 : $34
	rst $38                                                  ; $25ca : $ff
	cp $fe                                                  ; $25cb : $fe, $fe
	inc (hl)                                                  ; $25cd : $34
	add hl, sp                                                  ; $25ce : $39
	rst $38                                                  ; $25cf : $ff
	ld a, (bc)                                                  ; $25d0 : $0a
	ret                                                  ; $25d1 : $c9


	jp $4ae2                                                  ; $25d2 : $c3, $e2, $4a


	sbc a, b                                                  ; $25d5 : $98
	jp (hl)                                                  ; $25d6 : $e9


	sbc a, (hl)                                                  ; $25d7 : $9e
	call po, $0b80                                                  ; $25d8 : $e4, $80, $0b
	ret pe                                                  ; $25db : $e8

	ld (bc), a                                                  ; $25dc : $02
	push hl                                                  ; $25dd : $e5
	ld h, (hl)                                                  ; $25de : $66
	rst $20                                                  ; $25df : $e7
	ld (hl), a                                                  ; $25e0 : $77
	ex af, af'                                                  ; $25e1 : $08
	call z, $8919                                                  ; $25e2 : $cc, $19, $89
	ld d, d                                                  ; $25e5 : $52

Jump_03_25e6:
	rla                                                  ; $25e6 : $17
	pop hl                                                  ; $25e7 : $e1
	and l                                                  ; $25e8 : $a5
	dec bc                                                  ; $25e9 : $0b
	rst $20                                                  ; $25ea : $e7
	dec sp                                                  ; $25eb : $3b
	ret po                                                  ; $25ec : $e0

	sub $e1                                                  ; $25ed : $d6, $e1
	ld sp, hl                                                  ; $25ef : $f9
	rlca                                                  ; $25f0 : $07
	rst $08                                                  ; $25f1 : $cf
	inc c                                                  ; $25f2 : $0c
	push hl                                                  ; $25f3 : $e5
	xor h                                                  ; $25f4 : $ac
	pop hl                                                  ; $25f5 : $e1
	ld (hl), c                                                  ; $25f6 : $71
	dec bc                                                  ; $25f7 : $0b
	jp po, $ea02                                                  ; $25f8 : $e2, $02, $ea
	rst $28                                                  ; $25fb : $ef
	push hl                                                  ; $25fc : $e5
	and a                                                  ; $25fd : $a7
	add hl, bc                                                  ; $25fe : $09
	ret                                                  ; $25ff : $c9


	ld l, h                                                  ; $2600 : $6c
	push hl                                                  ; $2601 : $e5
	inc l                                                  ; $2602 : $2c
	call po, $e4a4                                                  ; $2603 : $e4, $a4, $e4
	ex (sp), hl                                                  ; $2606 : $e3
	dec bc                                                  ; $2607 : $0b
	ex de, hl                                                  ; $2608 : $eb
	or a                                                  ; $2609 : $b7
	jp (hl)                                                  ; $260a : $e9


Call_03_260b:
	ld l, e                                                  ; $260b : $6b
	and $f2                                                  ; $260c : $e6, $f2
	dec c                                                  ; $260e : $0d
	ret                                                  ; $260f : $c9


	call pe, $eb57                                                  ; $2610 : $ec, $57, $eb
	ld e, c                                                  ; $2613 : $59
	call po, $b4a8                                                  ; $2614 : $e4, $a8, $b4
	ex de, hl                                                  ; $2617 : $eb
	jp pe, $43e4                                                  ; $2618 : $ea, $e4, $43
	dec bc                                                  ; $261b : $0b
	ret pe                                                  ; $261c : $e8

	ld a, ($e6eb)                                                  ; $261d : $3a, $eb, $e6
	ex de, hl                                                  ; $2620 : $eb
	push hl                                                  ; $2621 : $e5
	inc c                                                  ; $2622 : $0c
	rst $20                                                  ; $2623 : $e7
	push bc                                                  ; $2624 : $c5
	sub d                                                  ; $2625 : $92
	call nc, $44e8                                                  ; $2626 : $d4, $e8, $44
	ldi                                                  ; $2629 : $ed, $a0
	inc c                                                  ; $262b : $0c
	and $d1                                                  ; $262c : $e6, $d1
	dec bc                                                  ; $262e : $0b
	ex (sp), hl                                                  ; $262f : $e3
	rst $28                                                  ; $2630 : $ef
	.db $ed                                                  ; $2631 : $ed
	and a                                                  ; $2632 : $a7
	ex de, hl                                                  ; $2633 : $eb
	add hl, bc                                                  ; $2634 : $09
	rlca                                                  ; $2635 : $07
	ld h, (hl)                                                  ; $2636 : $66
	ccf                                                  ; $2637 : $3f
	push hl                                                  ; $2638 : $e5
	push af                                                  ; $2639 : $f5
	rst $20                                                  ; $263a : $e7
	ld b, d                                                  ; $263b : $42
	dec bc                                                  ; $263c : $0b
	call pe, $e6ed                                                  ; $263d : $ec, $ed, $e6
	dec d                                                  ; $2640 : $15
	jp po, Jump_03_0e0a                                                  ; $2641 : $e2, $0a, $0e
	ld h, e                                                  ; $2644 : $63
	ret po                                                  ; $2645 : $e0

	dec d                                                  ; $2646 : $15
	nop                                                  ; $2647 : $00
	ret                                                  ; $2648 : $c9


	ld b, b                                                  ; $2649 : $40
	call pe, $e7bd                                                  ; $264a : $ec, $bd, $e7
	ld sp, $e3ba                                                  ; $264d : $31, $ba, $e3
	pop hl                                                  ; $2650 : $e1
	dec bc                                                  ; $2651 : $0b
	pop hl                                                  ; $2652 : $e1
	or d                                                  ; $2653 : $b2
	jp po, $e249                                                  ; $2654 : $e2, $49, $e2
	ld c, l                                                  ; $2657 : $4d
	dec bc                                                  ; $2658 : $0b
	ret                                                  ; $2659 : $c9


	add hl, sp                                                  ; $265a : $39
	dec a                                                  ; $265b : $3d
	.db $ed                                                  ; $265c : $ed
	set 5, e                                                  ; $265d : $cb, $eb
	ld b, b                                                  ; $265f : $40
	rst $20                                                  ; $2660 : $e7
	ld b, d                                                  ; $2661 : $42
	ld h, e                                                  ; $2662 : $63
	dec bc                                                  ; $2663 : $0b
	ld e, c                                                  ; $2664 : $59
	cp l                                                  ; $2665 : $bd
	ld c, c                                                  ; $2666 : $49
	rlca                                                  ; $2667 : $07
	rst $08                                                  ; $2668 : $cf
	inc c                                                  ; $2669 : $0c
	call po, $e3af                                                  ; $266a : $e4, $af, $e3
	ld a, l                                                  ; $266d : $7d
	dec bc                                                  ; $266e : $0b
	pop hl                                                  ; $266f : $e1
	ret p                                                  ; $2670 : $f0

	ex de, hl                                                  ; $2671 : $eb
	in a, ($e3)                                                  ; $2672 : $db, $e3
	call $d409                                                  ; $2674 : $cd, $09, $d4
	ld (hl), a                                                  ; $2677 : $77
	rla                                                  ; $2678 : $17
	jp pe, $b4cc                                                  ; $2679 : $ea, $cc, $b4
	call po, Call_03_0ba1                                                  ; $267c : $e4, $a1, $0b
	and $86                                                  ; $267f : $e6, $86
	jp (hl)                                                  ; $2681 : $e9


	inc bc                                                  ; $2682 : $03
	jp po, Jump_03_0b90                                                  ; $2683 : $e2, $90, $0b
	inc c                                                  ; $2686 : $0c
	jp po, $e621                                                  ; $2687 : $e2, $21, $e6
	dec de                                                  ; $268a : $1b
	ld l, h                                                  ; $268b : $6c
	pop bc                                                  ; $268c : $c1
	call pe, $c908                                                  ; $268d : $ec, $08, $c9
	dec bc                                                  ; $2690 : $0b
	push bc                                                  ; $2691 : $c5
	rst $20                                                  ; $2692 : $e7
	or h                                                  ; $2693 : $b4
	call po, Call_03_0fa2                                                  ; $2694 : $e4, $a2, $0f
	or h                                                  ; $2697 : $b4
	jp (hl)                                                  ; $2698 : $e9


	or e                                                  ; $2699 : $b3
	jp (hl)                                                  ; $269a : $e9


	ld (hl), a                                                  ; $269b : $77
	ld hl, $76e8                                                  ; $269c : $21, $e8, $76
	call po, $e993                                                  ; $269f : $e4, $93, $e9
	sbc a, $d0                                                  ; $26a2 : $de, $d0
	ld c, b                                                  ; $26a4 : $48
	dec bc                                                  ; $26a5 : $0b
	push hl                                                  ; $26a6 : $e5
	jp z, $477b                                                  ; $26a7 : $ca, $7b, $47
	inc c                                                  ; $26aa : $0c
	adc a, $e8                                                  ; $26ab : $ce, $e8
	call nz, $82e7                                                  ; $26ad : $c4, $e7, $82
	add a, b                                                  ; $26b0 : $80
	sub b                                                  ; $26b1 : $90
	rrd                                                  ; $26b2 : $ed, $67
	ld d, a                                                  ; $26b4 : $57
	add a, (hl)                                                  ; $26b5 : $86
	dec bc                                                  ; $26b6 : $0b
	adc a, l                                                  ; $26b7 : $8d
	jp (hl)                                                  ; $26b8 : $e9


	dec bc                                                  ; $26b9 : $0b
	push hl                                                  ; $26ba : $e5
	add a, d                                                  ; $26bb : $82
	ex af, af'                                                  ; $26bc : $08
	rst $08                                                  ; $26bd : $cf
	rst $20                                                  ; $26be : $e7
	ccf                                                  ; $26bf : $3f
	ret pe                                                  ; $26c0 : $e8

	in a, ($e3)                                                  ; $26c1 : $db, $e3
	adc a, $0b                                                  ; $26c3 : $ce, $0b
	jp pe, $e690                                                  ; $26c5 : $ea, $90, $e6
	di                                                  ; $26c8 : $f3
	jp pe, Jump_03_11e9                                                  ; $26c9 : $ea, $e9, $11
	adc a, d                                                  ; $26cc : $8a
	add hl, sp                                                  ; $26cd : $39
	or e                                                  ; $26ce : $b3
	.db $ed                                                  ; $26cf : $ed
	inc sp                                                  ; $26d0 : $33
	or h                                                  ; $26d1 : $b4
	jp pe, $eca3                                                  ; $26d2 : $ea, $a3, $ec
	ld sp, $741f                                                  ; $26d5 : $31, $1f, $74
	ret pe                                                  ; $26d8 : $e8

	ld b, e                                                  ; $26d9 : $43
	call pe, $014e                                                  ; $26da : $ec, $4e, $01
	ld d, h                                                  ; $26dd : $54
	ld (hl), e                                                  ; $26de : $73
	ld (hl), l                                                  ; $26df : $75
	ld c, $0c                                                  ; $26e0 : $0e, $0c
	ex (sp), hl                                                  ; $26e2 : $e3
	ld h, d                                                  ; $26e3 : $62
	jp pe, $9249                                                  ; $26e4 : $ea, $49, $92
	inc c                                                  ; $26e7 : $0c
	jp (hl)                                                  ; $26e8 : $e9


	ld b, (hl)                                                  ; $26e9 : $46
	rst $20                                                  ; $26ea : $e7
	add hl, hl                                                  ; $26eb : $29
	ld l, (hl)                                                  ; $26ec : $6e
	inc c                                                  ; $26ed : $0c
	ld a, (bc)                                                  ; $26ee : $0a
	call pe, $e10e                                                  ; $26ef : $ec, $0e, $e1
	and c                                                  ; $26f2 : $a1

Call_03_26f3:
	ex (sp), hl                                                  ; $26f3 : $e3
	and d                                                  ; $26f4 : $a2
	rrca                                                  ; $26f5 : $0f
	set 4, a                                                  ; $26f6 : $cb, $e7
	ret nz                                                  ; $26f8 : $c0

	jp pe, $b3ad                                                  ; $26f9 : $ea, $ad, $b3
	jp (hl)                                                  ; $26fc : $e9


	or d                                                  ; $26fd : $b2
	ld d, (hl)                                                  ; $26fe : $56
	inc d                                                  ; $26ff : $14
	call po, $ed53                                                  ; $2700 : $e4, $53, $ed
	ld l, (hl)                                                  ; $2703 : $6e
	dec bc                                                  ; $2704 : $0b
	ex de, hl                                                  ; $2705 : $eb
	di                                                  ; $2706 : $f3
	jp pe, $e6e7                                                  ; $2707 : $ea, $e7, $e6
	jp m, Jump_03_0c0e                                                  ; $270a : $fa, $0e, $0c
	rst $20                                                  ; $270d : $e7
	inc de                                                  ; $270e : $13
	ld l, l                                                  ; $270f : $6d
	push hl                                                  ; $2710 : $e5
	sub c                                                  ; $2711 : $91
	sub d                                                  ; $2712 : $92
	sbc a, (hl)                                                  ; $2713 : $9e
	jp pe, $5182                                                  ; $2714 : $ea, $82, $51
	rst $20                                                  ; $2717 : $e7
	ld a, l                                                  ; $2718 : $7d
	ld a, (bc)                                                  ; $2719 : $0a
	jp (hl)                                                  ; $271a : $e9


	ld hl, $96e9                                                  ; $271b : $21, $e9, $96
	and $ff                                                  ; $271e : $e6, $ff
	ld de, $e40c                                                  ; $2720 : $11, $0c, $e4
	and $e9                                                  ; $2723 : $e6, $e9
	add a, d                                                  ; $2725 : $82
	push de                                                  ; $2726 : $d5
	jp po, $b41d                                                  ; $2727 : $e2, $1d, $b4
	ex de, hl                                                  ; $272a : $eb
	ld h, a                                                  ; $272b : $67
	ld d, c                                                  ; $272c : $51
	ld e, a                                                  ; $272d : $5f
	call pe, $706a                                                  ; $272e : $ec, $6a, $70
	ld a, (bc)                                                  ; $2731 : $0a
	ex de, hl                                                  ; $2732 : $eb
	ld d, l                                                  ; $2733 : $55
	call pe, $ea5a                                                  ; $2734 : $ec, $5a, $ea
	ld c, $08                                                  ; $2737 : $0e, $08

br_03_2739:
	inc sp                                                  ; $2739 : $33
	ld (hl), b                                                  ; $273a : $70
	ld a, c                                                  ; $273b : $79
	add hl, sp                                                  ; $273c : $39
	ret pe                                                  ; $273d : $e8

	cp a                                                  ; $273e : $bf
	jr c, br_03_274c                                                  ; $273f : $38, $0b

	dec c                                                  ; $2741 : $0d
	ret po                                                  ; $2742 : $e0

	call nc, $0720                                                  ; $2743 : $d4, $20, $07
	ret                                                  ; $2746 : $c9


	sub b                                                  ; $2747 : $90
	ld e, e                                                  ; $2748 : $5b
	ld c, a                                                  ; $2749 : $4f
	ex de, hl                                                  ; $274a : $eb
	ld h, h                                                  ; $274b : $64

br_03_274c:
	dec bc                                                  ; $274c : $0b
	ret pe                                                  ; $274d : $e8

	xor h                                                  ; $274e : $ac
	ret pe                                                  ; $274f : $e8

	xor l                                                  ; $2750 : $ad
	jp (hl)                                                  ; $2751 : $e9


	inc (hl)                                                  ; $2752 : $34
	djnz br_03_2739                                                  ; $2753 : $10, $e4
	pop iy                                                  ; $2755 : $fd, $e1
	sub $56                                                  ; $2757 : $d6, $56
	rst $20                                                  ; $2759 : $e7
	ld b, l                                                  ; $275a : $45
	.db $ed                                                  ; $275b : $ed
	jp Jump_03_34e8                                                  ; $275c : $c3, $e8, $34


	call pe, $b44a                                                  ; $275f : $ec, $4a, $b4

Call_03_2762:
	exx                                                  ; $2762 : $d9
	ld a, (bc)                                                  ; $2763 : $0a
	.db $ed                                                  ; $2764 : $ed
	ld bc, $69e1                                                  ; $2765 : $01, $e1, $69
	pop hl                                                  ; $2768 : $e1
	ld l, d                                                  ; $2769 : $6a
	rrca                                                  ; $276a : $0f
	inc d                                                  ; $276b : $14
	call po, $e656                                                  ; $276c : $e4, $56, $e6
	ld (bc), a                                                  ; $276f : $02
	add a, b                                                  ; $2770 : $80
	sub d                                                  ; $2771 : $92
	ex de, hl                                                  ; $2772 : $eb
	sub b                                                  ; $2773 : $90
	ld d, $e6                                                  ; $2774 : $16, $e6
	jr z, br_03_27e6                                                  ; $2776 : $28, $6e

	inc d                                                  ; $2778 : $14
	ld a, (bc)                                                  ; $2779 : $0a
	push hl                                                  ; $277a : $e5
	rst $30                                                  ; $277b : $f7
	xor $1e                                                  ; $277c : $ee, $1e
	and $31                                                  ; $277e : $e6, $31
	ld a, (bc)                                                  ; $2780 : $0a
	or h                                                  ; $2781 : $b4
	ex de, hl                                                  ; $2782 : $eb
	or c                                                  ; $2783 : $b1
	add a, a                                                  ; $2784 : $87
	jr c, -$68                                                  ; $2785 : $38, $98

	push hl                                                  ; $2787 : $e5
	ld h, b                                                  ; $2788 : $60
	ld l, h                                                  ; $2789 : $6c
	ld a, (bc)                                                  ; $278a : $0a
	jr nz, br_03_27d8                                                  ; $278b : $20, $4b

	ret po                                                  ; $278d : $e0

	push de                                                  ; $278e : $d5
	dec c                                                  ; $278f : $0d
	inc c                                                  ; $2790 : $0c
	daa                                                  ; $2791 : $27
	sub d                                                  ; $2792 : $92
	ld (hl), a                                                  ; $2793 : $77
	jp po, $eced                                                  ; $2794 : $e2, $ed, $ec
	ld b, e                                                  ; $2797 : $43
	inc l                                                  ; $2798 : $2c
	push bc                                                  ; $2799 : $c5
	and $75                                                  ; $279a : $e6, $75
	ld a, (bc)                                                  ; $279c : $0a
	and $7c                                                  ; $279d : $e6, $7c
	jp (hl)                                                  ; $279f : $e9


	jr nc, $71                                                  ; $27a0 : $30, $71

	dec bc                                                  ; $27a2 : $0b
	or h                                                  ; $27a3 : $b4
	in a, ($ec)                                                  ; $27a4 : $db, $ec
	ld h, b                                                  ; $27a6 : $60
	pop hl                                                  ; $27a7 : $e1
	call m, $7f6c                                                  ; $27a8 : $fc, $6c, $7f
	ld h, a                                                  ; $27ab : $67
	inc (hl)                                                  ; $27ac : $34
	dec bc                                                  ; $27ad : $0b
	jp (hl)                                                  ; $27ae : $e9


	dec bc                                                  ; $27af : $0b
	adc a, l                                                  ; $27b0 : $8d
	ld ($ce0c), a                                                  ; $27b1 : $32, $0c, $ce
	ret c                                                  ; $27b4 : $d8

	or e                                                  ; $27b5 : $b3
	rst $20                                                  ; $27b6 : $e7
	xor (hl)                                                  ; $27b7 : $ae
	inc b                                                  ; $27b8 : $04
	ex (sp), hl                                                  ; $27b9 : $e3
	in a, ($92)                                                  ; $27ba : $db, $92
	ex de, hl                                                  ; $27bc : $eb
	and l                                                  ; $27bd : $a5
	dec bc                                                  ; $27be : $0b
	pop hl                                                  ; $27bf : $e1
	ld b, a                                                  ; $27c0 : $47
	call pe, $e5c4                                                  ; $27c1 : $ec, $c4, $e5
	adc a, (hl)                                                  ; $27c4 : $8e
	ex af, af'                                                  ; $27c5 : $08
	add hl, de                                                  ; $27c6 : $19
	ret c                                                  ; $27c7 : $d8

	ld d, c                                                  ; $27c8 : $51
	inc c                                                  ; $27c9 : $0c
	ret po                                                  ; $27ca : $e0

	ld bc, $0a6c                                                  ; $27cb : $01, $6c, $0a
	jp pe, $e96c                                                  ; $27ce : $ea, $6c, $e9
	.db $dd                                                  ; $27d1 : $dd
	ret po                                                  ; $27d2 : $e0

	out ($09), a                                                  ; $27d3 : $d3, $09
	ex de, hl                                                  ; $27d5 : $eb
	ld d, c                                                  ; $27d6 : $51
	or e                                                  ; $27d7 : $b3

br_03_27d8:
	jp po, $954c                                                  ; $27d8 : $e2, $4c, $95
	ld a, (de)                                                  ; $27db : $1a
	cpl                                                  ; $27dc : $2f
	ld a, (bc)                                                  ; $27dd : $0a
	.db $ed                                                  ; $27de : $ed
	inc b                                                  ; $27df : $04
	xor $12                                                  ; $27e0 : $ee, $12
	call pe, Call_03_0c61                                                  ; $27e2 : $ec, $61, $0c
	ret                                                  ; $27e5 : $c9


br_03_27e6:
	inc de                                                  ; $27e6 : $13
	xor l                                                  ; $27e7 : $ad
	ld e, e                                                  ; $27e8 : $5b
	inc c                                                  ; $27e9 : $0c
	ret pe                                                  ; $27ea : $e8

	ld e, $16                                                  ; $27eb : $1e, $16
	inc c                                                  ; $27ed : $0c
	jp (hl)                                                  ; $27ee : $e9


	ld a, l                                                  ; $27ef : $7d
	dec bc                                                  ; $27f0 : $0b
	push hl                                                  ; $27f1 : $e5
	ld c, $e6                                                  ; $27f2 : $0e, $e6
	rst $20                                                  ; $27f4 : $e7
	pop hl                                                  ; $27f5 : $e1
	ld e, b                                                  ; $27f6 : $58
	ex de, hl                                                  ; $27f7 : $eb
	sub a                                                  ; $27f8 : $97
	rrca                                                  ; $27f9 : $0f
	ld h, c                                                  ; $27fa : $61
	call po, Call_03_1a88                                                  ; $27fb : $e4, $88, $1a
	jp po, $9852                                                  ; $27fe : $e2, $52, $98
	jp pe, $e4b2                                                  ; $2801 : $ea, $b2, $e4
	add a, a                                                  ; $2804 : $87
	sub d                                                  ; $2805 : $92
	ret pe                                                  ; $2806 : $e8

	inc l                                                  ; $2807 : $2c
	dec bc                                                  ; $2808 : $0b
	cp b                                                  ; $2809 : $b8
	ld c, a                                                  ; $280a : $4f
	call po, Call_03_06fd                                                  ; $280b : $e4, $fd, $06
	dec bc                                                  ; $280e : $0b
	adc a, $e4                                                  ; $280f : $ce, $e4
	adc a, h                                                  ; $2811 : $8c
	call pe, Call_03_217a                                                  ; $2812 : $ec, $7a, $21
	call nc, $e1c5                                                  ; $2815 : $d4, $c5, $e1
	cp b                                                  ; $2818 : $b8
	dec bc                                                  ; $2819 : $0b
	inc bc                                                  ; $281a : $03
	ret po                                                  ; $281b : $e0

	ld d, c                                                  ; $281c : $51
	ret po                                                  ; $281d : $e0

	ld c, b                                                  ; $281e : $48
	inc c                                                  ; $281f : $0c
	call nc, $e76c                                                  ; $2820 : $d4, $6c, $e7
	ld c, a                                                  ; $2823 : $4f
	inc c                                                  ; $2824 : $0c
	rst $20                                                  ; $2825 : $e7
	.db $dd                                                  ; $2826 : $dd
	sbc a, d                                                  ; $2827 : $9a
	inc c                                                  ; $2828 : $0c
	and $d0                                                  ; $2829 : $e6, $d0
	dec bc                                                  ; $282b : $0b
	and $d0                                                  ; $282c : $e6, $d0
	ret pe                                                  ; $282e : $e8

	ld e, l                                                  ; $282f : $5d
	rst $20                                                  ; $2830 : $e7
	.db $dd                                                  ; $2831 : $dd
	inc de                                                  ; $2832 : $13
	ret                                                  ; $2833 : $c9


	jp po, $e251                                                  ; $2834 : $e2, $51, $e2
	add a, d                                                  ; $2837 : $82
	rst $20                                                  ; $2838 : $e7
	ld h, b                                                  ; $2839 : $60
	push hl                                                  ; $283a : $e5
	and l                                                  ; $283b : $a5
	otdr                                                  ; $283c : $ed, $bb
	ld e, a                                                  ; $283e : $5f
	push hl                                                  ; $283f : $e5
	dec c                                                  ; $2840 : $0d
	rst $20                                                  ; $2841 : $e7
	ld ($caeb), a                                                  ; $2842 : $32, $eb, $ca
	dec bc                                                  ; $2845 : $0b
	pop hl                                                  ; $2846 : $e1
	xor $e5                                                  ; $2847 : $ee, $e5
	ld l, h                                                  ; $2849 : $6c
	.db $ed                                                  ; $284a : $ed
	out ($ed), a                                                  ; $284b : $d3, $ed
	call nc, $6108                                                  ; $284d : $d4, $08, $61
	ex (sp), hl                                                  ; $2850 : $e3
	ld l, (hl)                                                  ; $2851 : $6e
	inc e                                                  ; $2852 : $1c
	ld h, h                                                  ; $2853 : $64
	rst $20                                                  ; $2854 : $e7
	add hl, bc                                                  ; $2855 : $09
	dec bc                                                  ; $2856 : $0b
	ret po                                                  ; $2857 : $e0

	ld d, d                                                  ; $2858 : $52
	ret po                                                  ; $2859 : $e0

	ld d, e                                                  ; $285a : $53
	ret po                                                  ; $285b : $e0

	ld d, h                                                  ; $285c : $54
	dec d                                                  ; $285d : $15
	ld (hl), b                                                  ; $285e : $70
	call po, $ec86                                                  ; $285f : $e4, $86, $ec
	jp $56e2                                                  ; $2862 : $c3, $e2, $56


	.db $ed                                                  ; $2865 : $ed
	ld ($e02d), a                                                  ; $2866 : $32, $2d, $e0
	sub c                                                  ; $2869 : $91
	nop                                                  ; $286a : $00
	or h                                                  ; $286b : $b4
	pop hl                                                  ; $286c : $e1
	ld a, (bc)                                                  ; $286d : $0a
	sbc a, d                                                  ; $286e : $9a
	or h                                                  ; $286f : $b4
	ret pe                                                  ; $2870 : $e8

	ld c, l                                                  ; $2871 : $4d
	dec bc                                                  ; $2872 : $0b
	ret po                                                  ; $2873 : $e0

	sub c                                                  ; $2874 : $91
	pop hl                                                  ; $2875 : $e1
	ld a, (bc)                                                  ; $2876 : $0a
	ret pe                                                  ; $2877 : $e8

	ld c, l                                                  ; $2878 : $4d
	djnz -$37                                                  ; $2879 : $10, $c9
	and $14                                                  ; $287b : $e6, $14
	jp (hl)                                                  ; $287d : $e9


	ld c, d                                                  ; $287e : $4a
	ld l, h                                                  ; $287f : $6c
	ld h, l                                                  ; $2880 : $65
	jp pe, $e4e2                                                  ; $2881 : $ea, $e2, $e4
	sub h                                                  ; $2884 : $94
	rra                                                  ; $2885 : $1f
	inc c                                                  ; $2886 : $0c
	rst $20                                                  ; $2887 : $e7
	dec sp                                                  ; $2888 : $3b
	dec bc                                                  ; $2889 : $0b
	push hl                                                  ; $288a : $e5
	ld c, d                                                  ; $288b : $4a
	push hl                                                  ; $288c : $e5
	xor c                                                  ; $288d : $a9
	jp po, $0a56                                                  ; $288e : $e2, $56, $0a
	ret                                                  ; $2891 : $c9


	add hl, sp                                                  ; $2892 : $39
	ld b, d                                                  ; $2893 : $42
	ret c                                                  ; $2894 : $d8

	jp (hl)                                                  ; $2895 : $e9


	ld e, $e2                                                  ; $2896 : $1e, $e2
	sbc a, $56                                                  ; $2898 : $de, $56
	dec bc                                                  ; $289a : $0b
	xor e                                                  ; $289b : $ab
	push hl                                                  ; $289c : $e5
	add a, l                                                  ; $289d : $85
	ld (hl), e                                                  ; $289e : $73
	add hl, bc                                                  ; $289f : $09
	ret                                                  ; $28a0 : $c9


	push hl                                                  ; $28a1 : $e5
	inc de                                                  ; $28a2 : $13
	ld a, (de)                                                  ; $28a3 : $1a
	jp pe, $8032                                                  ; $28a4 : $ea, $32, $80
	ld d, (hl)                                                  ; $28a7 : $56
	dec bc                                                  ; $28a8 : $0b
	jp (hl)                                                  ; $28a9 : $e9


	add a, a                                                  ; $28aa : $87
	jp (hl)                                                  ; $28ab : $e9


	ret m                                                  ; $28ac : $f8

	push hl                                                  ; $28ad : $e5
	ld a, e                                                  ; $28ae : $7b
	dec c                                                  ; $28af : $0d
	scf                                                  ; $28b0 : $37
	ret pe                                                  ; $28b1 : $e8

	set 4, e                                                  ; $28b2 : $cb, $e3
	rst $30                                                  ; $28b4 : $f7
	sbc a, e                                                  ; $28b5 : $9b
	sbc a, b                                                  ; $28b6 : $98
	ld (hl), $ed                                                  ; $28b7 : $36, $ed
	or (hl)                                                  ; $28b9 : $b6
	ret po                                                  ; $28ba : $e0

	call m, $ed0b                                                  ; $28bb : $fc, $0b, $ed
	adc a, b                                                  ; $28be : $88
	jp (hl)                                                  ; $28bf : $e9


	push bc                                                  ; $28c0 : $c5
	jp po, $09ec                                                  ; $28c1 : $e2, $ec, $09
	.db $ed                                                  ; $28c4 : $ed
	pop bc                                                  ; $28c5 : $c1
	ld b, (hl)                                                  ; $28c6 : $46
	cp l                                                  ; $28c7 : $bd
	and c                                                  ; $28c8 : $a1
	ld h, e                                                  ; $28c9 : $63
	ret po                                                  ; $28ca : $e0

	inc a                                                  ; $28cb : $3c
	dec bc                                                  ; $28cc : $0b
	jp pe, $e63e                                                  ; $28cd : $ea, $3e, $e6
	add a, $e2                                                  ; $28d0 : $c6, $e2
	ld c, (hl)                                                  ; $28d2 : $4e
	ld b, $61                                                  ; $28d3 : $06, $61
	xor a                                                  ; $28d5 : $af
	pop hl                                                  ; $28d6 : $e1
	call nz, Call_03_0b2e                                                  ; $28d7 : $c4, $2e, $0b
	ret po                                                  ; $28da : $e0

	ld b, e                                                  ; $28db : $43
	ex af, af'                                                  ; $28dc : $08
	dec b                                                  ; $28dd : $05
	cp b                                                  ; $28de : $b8
	add hl, bc                                                  ; $28df : $09
	otir                                                  ; $28e0 : $ed, $b3
	or h                                                  ; $28e2 : $b4
	ld a, c                                                  ; $28e3 : $79
	jp pe, $e283                                                  ; $28e4 : $ea, $83, $e2
	ld (hl), h                                                  ; $28e7 : $74
	dec bc                                                  ; $28e8 : $0b
	ldd                                                  ; $28e9 : $ed, $a8
	jp (hl)                                                  ; $28eb : $e9


	ld l, h                                                  ; $28ec : $6c
	rst $20                                                  ; $28ed : $e7
	xor d                                                  ; $28ee : $aa
	dec c                                                  ; $28ef : $0d
	ret                                                  ; $28f0 : $c9


	call pe, $c338                                                  ; $28f1 : $ec, $38, $c3
	pop hl                                                  ; $28f4 : $e1
	and (hl)                                                  ; $28f5 : $a6
	inc l                                                  ; $28f6 : $2c
	inc c                                                  ; $28f7 : $0c
	jp pe, $e026                                                  ; $28f8 : $ea, $26, $e0
	ret p                                                  ; $28fb : $f0

	dec bc                                                  ; $28fc : $0b
	pop hl                                                  ; $28fd : $e1
	ld e, (hl)                                                  ; $28fe : $5e
	call pe, $eb3a                                                  ; $28ff : $ec, $3a, $eb
	ret                                                  ; $2902 : $c9


	add hl, bc                                                  ; $2903 : $09
	ld h, (hl)                                                  ; $2904 : $66
	inc (hl)                                                  ; $2905 : $34
	call nz, $ec4e                                                  ; $2906 : $c4, $4e, $ec
	inc h                                                  ; $2909 : $24
	ret pe                                                  ; $290a : $e8

	ret                                                  ; $290b : $c9


	dec bc                                                  ; $290c : $0b
	adc a, l                                                  ; $290d : $8d
	jp (hl)                                                  ; $290e : $e9


	dec bc                                                  ; $290f : $0b
	rst $20                                                  ; $2910 : $e7
	ld c, e                                                  ; $2911 : $4b
	rrca                                                  ; $2912 : $0f
	ret                                                  ; $2913 : $c9


	push hl                                                  ; $2914 : $e5
	call m, $e0e2                                                  ; $2915 : $fc, $e2, $e0
	dec b                                                  ; $2918 : $05
	ex (sp), hl                                                  ; $2919 : $e3
	ld l, (hl)                                                  ; $291a : $6e
	ld c, $b4                                                  ; $291b : $0e, $b4
	.db $ed                                                  ; $291d : $ed
	rst $18                                                  ; $291e : $df
	ex de, hl                                                  ; $291f : $eb
	and b                                                  ; $2920 : $a0
	dec bc                                                  ; $2921 : $0b
	ret pe                                                  ; $2922 : $e8

	ld (hl), b                                                  ; $2923 : $70
	call po, $e203                                                  ; $2924 : $e4, $03, $e2
	and e                                                  ; $2927 : $a3
	ex af, af'                                                  ; $2928 : $08
	ld h, c                                                  ; $2929 : $61
	jp pe, $630f                                                  ; $292a : $ea, $0f, $63
	inc c                                                  ; $292d : $0c
	rst $20                                                  ; $292e : $e7
	inc a                                                  ; $292f : $3c
	dec bc                                                  ; $2930 : $0b
	cp $fe                                                  ; $2931 : $fe, $fe
	jr nc, $2e                                                  ; $2933 : $30, $2e

	add hl, sp                                                  ; $2935 : $39
	ld ($feff), a                                                  ; $2936 : $32, $ff, $fe
	cp $31                                                  ; $2939 : $fe, $31
	ld l, $35                                                  ; $293b : $2e, $35
	rst $38                                                  ; $293d : $ff
	cp $fe                                                  ; $293e : $fe, $fe
	ld sp, $312e                                                  ; $2940 : $31, $2e, $31
	jr nc, br_03_2976                                                  ; $2943 : $30, $31

	rst $38                                                  ; $2945 : $ff
	cp $fe                                                  ; $2946 : $fe, $fe
	ld sp, $312e                                                  ; $2948 : $31, $2e, $31
	jr nc, -$01                                                  ; $294b : $30, $ff

	cp $fe                                                  ; $294d : $fe, $fe
	ld sp, $312e                                                  ; $294f : $31, $2e, $31
	rst $38                                                  ; $2952 : $ff
	djnz br_03_29b6                                                  ; $2953 : $10, $61
	rst $20                                                  ; $2955 : $e7
	pop hl                                                  ; $2956 : $e1
	ld h, h                                                  ; $2957 : $64
	inc b                                                  ; $2958 : $04
	cp $fe                                                  ; $2959 : $fe, $fe
	ld c, a                                                  ; $295b : $4f
	ld e, d                                                  ; $295c : $5a
	rst $38                                                  ; $295d : $ff
	jp po, $9224                                                  ; $295e : $e2, $24, $92
	jp po, $0bcb                                                  ; $2961 : $e2, $cb, $0b
	ret po                                                  ; $2964 : $e0

	ld d, b                                                  ; $2965 : $50
	cp $fe                                                  ; $2966 : $fe, $fe
	inc (hl)                                                  ; $2968 : $34
	jr nc, $30                                                  ; $2969 : $30, $30

	rst $38                                                  ; $296b : $ff
	cp $fe                                                  ; $296c : $fe, $fe
	inc sp                                                  ; $296e : $33
	dec (hl)                                                  ; $296f : $35
	dec (hl)                                                  ; $2970 : $35
	rst $38                                                  ; $2971 : $ff
	ld (de), a                                                  ; $2972 : $12
	call nc, $f5e2                                                  ; $2973 : $d4, $e2, $f5

br_03_2976:
	ld h, e                                                  ; $2976 : $63
	rst $20                                                  ; $2977 : $e7
	ld c, e                                                  ; $2978 : $4b
	jp pe, $e830                                                  ; $2979 : $ea, $30, $e8
	ld (bc), a                                                  ; $297c : $02
	ld d, c                                                  ; $297d : $51
	call po, $ea95                                                  ; $297e : $e4, $95, $ea
	ld h, c                                                  ; $2981 : $61
	ld h, e                                                  ; $2982 : $63
	dec c                                                  ; $2983 : $0d
	dec bc                                                  ; $2984 : $0b
	rst $20                                                  ; $2985 : $e7
	ld b, e                                                  ; $2986 : $43
	call po, $e199                                                  ; $2987 : $e4, $99, $e1
	ld c, h                                                  ; $298a : $4c
	dec bc                                                  ; $298b : $0b
	ld h, (hl)                                                  ; $298c : $66
	xor $13                                                  ; $298d : $ee, $13
	ld a, $ec                                                  ; $298f : $3e, $ec
	ld (hl), $eb                                                  ; $2991 : $36, $eb
	inc sp                                                  ; $2993 : $33
	pop hl                                                  ; $2994 : $e1
	ld a, b                                                  ; $2995 : $78
	dec bc                                                  ; $2996 : $0b
	cp $fe                                                  ; $2997 : $fe, $fe
	ld sp, $3639                                                  ; $2999 : $31, $39, $36
	jr nc, -$01                                                  ; $299c : $30, $ff

	cp $fe                                                  ; $299e : $fe, $fe
	ld sp, $3739                                                  ; $29a0 : $31, $39, $37
	ld sp, $e0ff                                                  ; $29a3 : $31, $ff, $e0
	ld (hl), $08                                                  ; $29a6 : $36, $08
	adc a, $e4                                                  ; $29a8 : $ce, $e4
	and c                                                  ; $29aa : $a1
	jp po, $e0e3                                                  ; $29ab : $e2, $e3, $e0
	sub d                                                  ; $29ae : $92
	dec bc                                                  ; $29af : $0b
	cp $fe                                                  ; $29b0 : $fe, $fe
	scf                                                  ; $29b2 : $37
	inc (hl)                                                  ; $29b3 : $34
	scf                                                  ; $29b4 : $37
	rst $38                                                  ; $29b5 : $ff

br_03_29b6:
	pop hl                                                  ; $29b6 : $e1
	or l                                                  ; $29b7 : $b5
	jp po, Jump_03_0af7                                                  ; $29b8 : $e2, $f7, $0a
	call nc, $4e8b                                                  ; $29bb : $d4, $8b, $4e
	.db $ed                                                  ; $29be : $ed
	ld ($04e9), a                                                  ; $29bf : $32, $e9, $04
	ret pe                                                  ; $29c2 : $e8

	ld (bc), a                                                  ; $29c3 : $02
	dec bc                                                  ; $29c4 : $0b
	or b                                                  ; $29c5 : $b0
	ld l, b                                                  ; $29c6 : $68
	inc sp                                                  ; $29c7 : $33
	add hl, bc                                                  ; $29c8 : $09
	ld h, (hl)                                                  ; $29c9 : $66
	add hl, sp                                                  ; $29ca : $39
	ld (hl), b                                                  ; $29cb : $70
	call pe, $e22a                                                  ; $29cc : $ec, $2a, $e2
	daa                                                  ; $29cf : $27

br_03_29d0:
	ld a, a                                                  ; $29d0 : $7f
	dec bc                                                  ; $29d1 : $0b
	jp (hl)                                                  ; $29d2 : $e9


	ld bc, $b0e6                                                  ; $29d3 : $01, $e6, $b0
	ld b, l                                                  ; $29d6 : $45
	inc c                                                  ; $29d7 : $0c
	rst $08                                                  ; $29d8 : $cf
	or h                                                  ; $29d9 : $b4
	or c                                                  ; $29da : $b1
	sub d                                                  ; $29db : $92
	jp pe, $eb20                                                  ; $29dc : $ea, $20, $eb
	cpl                                                  ; $29df : $2f
	ld h, e                                                  ; $29e0 : $63
	xor c                                                  ; $29e1 : $a9
	dec c                                                  ; $29e2 : $0d
	dec bc                                                  ; $29e3 : $0b
	ex de, hl                                                  ; $29e4 : $eb
	ld hl, $55e2                                                  ; $29e5 : $21, $e2, $55
	ret po                                                  ; $29e8 : $e0

	rst $18                                                  ; $29e9 : $df

Call_03_29ea:
	add hl, bc                                                  ; $29ea : $09
	rst $08                                                  ; $29eb : $cf
	or h                                                  ; $29ec : $b4
	in a, ($4e)                                                  ; $29ed : $db, $4e
	pop hl                                                  ; $29ef : $e1
	ld c, $ea                                                  ; $29f0 : $0e, $ea

br_03_29f2:
	pop af                                                  ; $29f2 : $f1
	dec bc                                                  ; $29f3 : $0b
	call po, $ed08                                                  ; $29f4 : $e4, $08, $ed
	ld a, l                                                  ; $29f7 : $7d
	ex de, hl                                                  ; $29f8 : $eb
	push de                                                  ; $29f9 : $d5
	djnz br_03_29d0                                                  ; $29fa : $10, $d4
	inc de                                                  ; $29fc : $13
	dec (hl)                                                  ; $29fd : $35
	jp pe, $7a9d                                                  ; $29fe : $ea, $9d, $7a
	.db $ed                                                  ; $2a01 : $ed
	jp pe, $e8b4                                                  ; $2a02 : $ea, $b4, $e8
	add a, d                                                  ; $2a05 : $82
	jp (hl)                                                  ; $2a06 : $e9


	jr z, br_03_29f2                                                  ; $2a07 : $28, $e9

	exx                                                  ; $2a09 : $d9
	dec bc                                                  ; $2a0a : $0b
	jp pe, $e688                                                  ; $2a0b : $ea, $88, $e6
	or l                                                  ; $2a0e : $b5

br_03_2a0f:
	rst $20                                                  ; $2a0f : $e7
	sbc a, h                                                  ; $2a10 : $9c
	and $d4                                                  ; $2a11 : $e6, $d4
	add hl, bc                                                  ; $2a13 : $09
	ret                                                  ; $2a14 : $c9


	xor (hl)                                                  ; $2a15 : $ae
	ld l, h                                                  ; $2a16 : $6c
	halt                                                  ; $2a17 : $76
	or h                                                  ; $2a18 : $b4
	push hl                                                  ; $2a19 : $e5
	ld hl, ($0bae)                                                  ; $2a1a : $2a, $ae, $0b
	push hl                                                  ; $2a1d : $e5
	ld b, (hl)                                                  ; $2a1e : $46
	ld l, $e8                                                  ; $2a1f : $2e, $e8
	ld l, l                                                  ; $2a21 : $6d
	dec c                                                  ; $2a22 : $0d
	ret                                                  ; $2a23 : $c9


	inc de                                                  ; $2a24 : $13
	inc (hl)                                                  ; $2a25 : $34
	ld l, h                                                  ; $2a26 : $6c
	add a, a                                                  ; $2a27 : $87
	ld c, l                                                  ; $2a28 : $4d
	ld d, c                                                  ; $2a29 : $51
	ld (hl), h                                                  ; $2a2a : $74
	rst $20                                                  ; $2a2b : $e7
	sub c                                                  ; $2a2c : $91
	push hl                                                  ; $2a2d : $e5
	ld a, l                                                  ; $2a2e : $7d
	dec bc                                                  ; $2a2f : $0b
	adc a, l                                                  ; $2a30 : $8d
	jp pe, $e8e4                                                  ; $2a31 : $ea, $e4, $e8
	ld l, a                                                  ; $2a34 : $6f
	inc c                                                  ; $2a35 : $0c
	ret                                                  ; $2a36 : $c9


	or d                                                  ; $2a37 : $b2
	and l                                                  ; $2a38 : $a5
	jr br_03_2a0f                                                  ; $2a39 : $18, $d4

	ret pe                                                  ; $2a3b : $e8

	add a, b                                                  ; $2a3c : $80
	rst $20                                                  ; $2a3d : $e7
	ld c, a                                                  ; $2a3e : $4f
	call po, Call_03_0b72                                                  ; $2a3f : $e4, $72, $0b
	jp (hl)                                                  ; $2a42 : $e9


	set 4, h                                                  ; $2a43 : $cb, $e4
	add hl, sp                                                  ; $2a45 : $39
	call po, $0d83                                                  ; $2a46 : $e4, $83, $0d
	ret                                                  ; $2a49 : $c9


	or d                                                  ; $2a4a : $b2
	and l                                                  ; $2a4b : $a5
	inc c                                                  ; $2a4c : $0c
	rst $20                                                  ; $2a4d : $e7
	di                                                  ; $2a4e : $f3
	sub d                                                  ; $2a4f : $92
	call po, $16e0                                                  ; $2a50 : $e4, $e0, $16
	ex de, hl                                                  ; $2a53 : $eb
	adc a, e                                                  ; $2a54 : $8b
	dec bc                                                  ; $2a55 : $0b
	ret po                                                  ; $2a56 : $e0

	ld a, b                                                  ; $2a57 : $78
	jp po, $ebc1                                                  ; $2a58 : $e2, $c1, $eb
	adc a, d                                                  ; $2a5b : $8a
	ld c, $b4                                                  ; $2a5c : $0e, $b4
	sbc a, l                                                  ; $2a5e : $9d
	or h                                                  ; $2a5f : $b4
	ex (sp), hl                                                  ; $2a60 : $e3
	.db $fd                                                  ; $2a61 : $fd
	call po, $d345                                                  ; $2a62 : $e4, $45, $d3
	rst $20                                                  ; $2a65 : $e7
	add hl, hl                                                  ; $2a66 : $29
	call po, $6f73                                                  ; $2a67 : $e4, $73, $6f
	dec bc                                                  ; $2a6a : $0b
	pop hl                                                  ; $2a6b : $e1
	jr nz, -$14                                                  ; $2a6c : $20, $ec

	ld a, c                                                  ; $2a6e : $79
	pop hl                                                  ; $2a6f : $e1
	sbc a, h                                                  ; $2a70 : $9c
	ld de, $b2c9                                                  ; $2a71 : $11, $c9, $b2
	inc a                                                  ; $2a74 : $3c
	sbc a, c                                                  ; $2a75 : $99
	push de                                                  ; $2a76 : $d5
	call pe, $a020                                                  ; $2a77 : $ec, $20, $a0
	ex de, hl                                                  ; $2a7a : $eb
	ld (hl), l                                                  ; $2a7b : $75
	nop                                                  ; $2a7c : $00
	ex (sp), hl                                                  ; $2a7d : $e3
	adc a, d                                                  ; $2a7e : $8a
	ld d, $e5                                                  ; $2a7f : $16, $e5
	sub l                                                  ; $2a81 : $95
	dec bc                                                  ; $2a82 : $0b
	jp po, $eb50                                                  ; $2a83 : $e2, $50, $eb
	sub l                                                  ; $2a86 : $95
	ex (sp), hl                                                  ; $2a87 : $e3
	add a, a                                                  ; $2a88 : $87
	dec bc                                                  ; $2a89 : $0b
	push de                                                  ; $2a8a : $d5
	ld l, e                                                  ; $2a8b : $6b
	or h                                                  ; $2a8c : $b4
	ld c, (hl)                                                  ; $2a8d : $4e
	rst $20                                                  ; $2a8e : $e7
	push af                                                  ; $2a8f : $f5
	ex de, hl                                                  ; $2a90 : $eb
	di                                                  ; $2a91 : $f3
	call po, Call_03_0b3e                                                  ; $2a92 : $e4, $3e, $0b
	call po, $ea27                                                  ; $2a95 : $e4, $27, $ea
	xor c                                                  ; $2a98 : $a9
	and $8c                                                  ; $2a99 : $e6, $8c
	ld c, $8a                                                  ; $2a9b : $0e, $8a

Jump_03_2a9d:
	or d                                                  ; $2a9d : $b2
	or e                                                  ; $2a9e : $b3
	and l                                                  ; $2a9f : $a5
	or h                                                  ; $2aa0 : $b4
	ret po                                                  ; $2aa1 : $e0

	ld h, (hl)                                                  ; $2aa2 : $66
	cp d                                                  ; $2aa3 : $ba
	jp pe, Jump_03_163c                                                  ; $2aa4 : $ea, $3c, $16
	xor $03                                                  ; $2aa7 : $ee, $03
	ld bc, $5ae6                                                  ; $2aa9 : $01, $e6, $5a
	rst $20                                                  ; $2aac : $e7
	ld a, $e7                                                  ; $2aad : $3e, $e7
	dec a                                                  ; $2aaf : $3d
	ld (de), a                                                  ; $2ab0 : $12
	sub $eb                                                  ; $2ab1 : $d6, $eb
	call $927a                                                  ; $2ab3 : $cd, $7a, $92
	and $44                                                  ; $2ab6 : $e6, $44
	and $42                                                  ; $2ab8 : $e6, $42
	ld h, e                                                  ; $2aba : $63
	cp $fe                                                  ; $2abb : $fe, $fe
	ld sp, $3439                                                  ; $2abd : $31, $39, $34
	scf                                                  ; $2ac0 : $37
	rst $38                                                  ; $2ac1 : $ff
	dec bc                                                  ; $2ac2 : $0b
	ret pe                                                  ; $2ac3 : $e8

	ld e, c                                                  ; $2ac4 : $59
	pop hl                                                  ; $2ac5 : $e1
	di                                                  ; $2ac6 : $f3
	push hl                                                  ; $2ac7 : $e5
	jr z, br_03_2ada                                                  ; $2ac8 : $28, $10

	adc a, $89                                                  ; $2aca : $ce, $89
	ld d, d                                                  ; $2acc : $52
	rst $20                                                  ; $2acd : $e7
	and e                                                  ; $2ace : $a3
	or e                                                  ; $2acf : $b3
	and $39                                                  ; $2ad0 : $e6, $39
	or h                                                  ; $2ad2 : $b4
	xor b                                                  ; $2ad3 : $a8
	ld d, c                                                  ; $2ad4 : $51
	push hl                                                  ; $2ad5 : $e5
	sub e                                                  ; $2ad6 : $93
	ex (sp), hl                                                  ; $2ad7 : $e3
	ld b, h                                                  ; $2ad8 : $44
	dec bc                                                  ; $2ad9 : $0b

br_03_2ada:
	rst $20                                                  ; $2ada : $e7
	push hl                                                  ; $2adb : $e5
	jp (hl)                                                  ; $2adc : $e9


	ld c, c                                                  ; $2add : $49
	call po, $0bb3                                                  ; $2ade : $e4, $b3, $0b
	ex (sp), hl                                                  ; $2ae1 : $e3
	ld l, $b4                                                  ; $2ae2 : $2e, $b4
	ret pe                                                  ; $2ae4 : $e8

	and e                                                  ; $2ae5 : $a3
	sub d                                                  ; $2ae6 : $92
	sbc a, (hl)                                                  ; $2ae7 : $9e
	ld h, h                                                  ; $2ae8 : $64
	add hl, sp                                                  ; $2ae9 : $39
	ld l, a                                                  ; $2aea : $6f
	dec bc                                                  ; $2aeb : $0b
	and b                                                  ; $2aec : $a0
	call pe, $e266                                                  ; $2aed : $ec, $66, $e2
	ld l, b                                                  ; $2af0 : $68
	ld de, $e0d5                                                  ; $2af1 : $11, $d5, $e0
	or e                                                  ; $2af4 : $b3
	push hl                                                  ; $2af5 : $e5
	ld sp, hl                                                  ; $2af6 : $f9
	or h                                                  ; $2af7 : $b4
	call po, $51e6                                                  ; $2af8 : $e4, $e6, $51
	jp po, $e18a                                                  ; $2afb : $e2, $8a, $e1
	call pe, $e6ba                                                  ; $2afe : $ec, $ba, $e6
	rrc e                                                  ; $2b01 : $cb, $0b
	rst $20                                                  ; $2b03 : $e7
	ld a, ($8feb)                                                  ; $2b04 : $3a, $eb, $8f
	rst $20                                                  ; $2b07 : $e7
	ld h, e                                                  ; $2b08 : $63
	rlca                                                  ; $2b09 : $07
	call Call_03_3ee1                                                  ; $2b0a : $cd, $e1, $3e
	call pe, $2f48                                                  ; $2b0d : $ec, $48, $2f
	dec bc                                                  ; $2b10 : $0b
	push hl                                                  ; $2b11 : $e5
	ld l, l                                                  ; $2b12 : $6d
	call pe, $e349                                                  ; $2b13 : $ec, $49, $e3
	ld e, b                                                  ; $2b16 : $58
	ex af, af'                                                  ; $2b17 : $08
	ld h, c                                                  ; $2b18 : $61
	and $ca                                                  ; $2b19 : $e6, $ca
	ld b, c                                                  ; $2b1b : $41
	jp (hl)                                                  ; $2b1c : $e9


	ld e, h                                                  ; $2b1d : $5c
	ld e, h                                                  ; $2b1e : $5c
	dec bc                                                  ; $2b1f : $0b
	cp $fe                                                  ; $2b20 : $fe, $fe
	ld sp, $3131                                                  ; $2b22 : $31, $31, $31
	rst $38                                                  ; $2b25 : $ff
	ret po                                                  ; $2b26 : $e0

	ld e, e                                                  ; $2b27 : $5b
	cp $fe                                                  ; $2b28 : $fe, $fe
	jr c, $38                                                  ; $2b2a : $38, $38

	rst $38                                                  ; $2b2c : $ff
	rlca                                                  ; $2b2d : $07
	adc a, $e8                                                  ; $2b2e : $ce, $e8
	res 2, d                                                  ; $2b30 : $cb, $92
	and $0b                                                  ; $2b32 : $e6, $0b
	dec bc                                                  ; $2b34 : $0b
	jp (hl)                                                  ; $2b35 : $e9


	ld b, c                                                  ; $2b36 : $41
	call pe, $ed10                                                  ; $2b37 : $ec, $10, $ed
	ld d, c                                                  ; $2b3a : $51
	add hl, bc                                                  ; $2b3b : $09
	ld h, c                                                  ; $2b3c : $61
	ex (sp), hl                                                  ; $2b3d : $e3
	exx                                                  ; $2b3e : $d9
	inc e                                                  ; $2b3f : $1c
	sub (hl)                                                  ; $2b40 : $96
	sbc a, c                                                  ; $2b41 : $99
	ex (sp), hl                                                  ; $2b42 : $e3
	and (hl)                                                  ; $2b43 : $a6
	dec bc                                                  ; $2b44 : $0b
	ex af, af'                                                  ; $2b45 : $08
	inc b                                                  ; $2b46 : $04
	ret po                                                  ; $2b47 : $e0

	ld b, a                                                  ; $2b48 : $47
	ex af, af'                                                  ; $2b49 : $08
	ld h, c                                                  ; $2b4a : $61
	call pe, Call_03_1c6c                                                  ; $2b4b : $ec, $6c, $1c
	ld h, h                                                  ; $2b4e : $64
	call pe, Call_03_0b59                                                  ; $2b4f : $ec, $59, $0b
	ret po                                                  ; $2b52 : $e0

	ld b, e                                                  ; $2b53 : $43
	ld b, $05                                                  ; $2b54 : $06, $05
	cp b                                                  ; $2b56 : $b8
	inc d                                                  ; $2b57 : $14
	ret                                                  ; $2b58 : $c9


	call pe, $6cb5                                                  ; $2b59 : $ec, $b5, $6c
	ld (hl), d                                                  ; $2b5c : $72
	ld hl, $fefe                                                  ; $2b5d : $21, $fe, $fe
	ld sp, $3a37                                                  ; $2b60 : $31, $37, $3a
	jr nc, $30                                                  ; $2b63 : $30, $30

	rst $38                                                  ; $2b65 : $ff
	and $11                                                  ; $2b66 : $e6, $11
	dec bc                                                  ; $2b68 : $0b
	sbc a, $e8                                                  ; $2b69 : $de, $e8
	di                                                  ; $2b6b : $f3
	add hl, bc                                                  ; $2b6c : $09
	ret po                                                  ; $2b6d : $e0

	ld a, (de)                                                  ; $2b6e : $1a
	rlca                                                  ; $2b6f : $07
	dec bc                                                  ; $2b70 : $0b
	ldir                                                  ; $2b71 : $ed, $b0
	.db $dd                                                  ; $2b73 : $dd
	jp po, Jump_03_0c1c                                                  ; $2b74 : $e2, $1c, $0c
	rst $20                                                  ; $2b77 : $e7
	rst $08                                                  ; $2b78 : $cf
	push hl                                                  ; $2b79 : $e5
	cp h                                                  ; $2b7a : $bc
	dec bc                                                  ; $2b7b : $0b
	jp (hl)                                                  ; $2b7c : $e9


	ld h, l                                                  ; $2b7d : $65
	call pe, $ebcd                                                  ; $2b7e : $ec, $cd, $eb
	and e                                                  ; $2b81 : $a3
	dec bc                                                  ; $2b82 : $0b
	adc a, $e0                                                  ; $2b83 : $ce, $e0
	ld h, l                                                  ; $2b85 : $65
	ld d, d                                                  ; $2b86 : $52
	and $f6                                                  ; $2b87 : $e6, $f6
	jp (hl)                                                  ; $2b89 : $e9


	ld d, a                                                  ; $2b8a : $57
	ret po                                                  ; $2b8b : $e0

	inc bc                                                  ; $2b8c : $03
	dec bc                                                  ; $2b8d : $0b
	and $7e                                                  ; $2b8e : $e6, $7e
	call po, $e414                                                  ; $2b90 : $e4, $14, $e4
	ld e, (hl)                                                  ; $2b93 : $5e
	call po, Call_03_0f5d                                                  ; $2b94 : $e4, $5d, $0f
	ret                                                  ; $2b97 : $c9


	xor l                                                  ; $2b98 : $ad
	ld a, (de)                                                  ; $2b99 : $1a
	.db $dd                                                  ; $2b9a : $dd
	.db $ed                                                  ; $2b9b : $ed
	sub l                                                  ; $2b9c : $95
	and $30                                                  ; $2b9d : $e6, $30
	or h                                                  ; $2b9f : $b4
	ex de, hl                                                  ; $2ba0 : $eb
	ld b, $6c                                                  ; $2ba1 : $06, $6c
	ex (sp), hl                                                  ; $2ba3 : $e3
	sub a                                                  ; $2ba4 : $97
	dec bc                                                  ; $2ba5 : $0b
	ex de, hl                                                  ; $2ba6 : $eb
	rst $10                                                  ; $2ba7 : $d7
	sbc hl, sp                                                  ; $2ba8 : $ed, $72
	call pe, Call_03_097f                                                  ; $2baa : $ec, $7f, $09
	ld d, (hl)                                                  ; $2bad : $56
	ret                                                  ; $2bae : $c9


	jp (hl)                                                  ; $2baf : $e9


	ld (hl), a                                                  ; $2bb0 : $77
	ld l, h                                                  ; $2bb1 : $6c
	rst $20                                                  ; $2bb2 : $e7
	scf                                                  ; $2bb3 : $37
	add a, b                                                  ; $2bb4 : $80
	dec bc                                                  ; $2bb5 : $0b
	ex (sp), hl                                                  ; $2bb6 : $e3
	ld hl, ($2ee8)                                                  ; $2bb7 : $2a, $e8, $2e
	call po, Call_03_0ad2                                                  ; $2bba : $e4, $d2, $0a
	push de                                                  ; $2bbd : $d5
	ld (hl), b                                                  ; $2bbe : $70
	jp pe, $e5b7                                                  ; $2bbf : $ea, $b7, $e5
	ld h, l                                                  ; $2bc2 : $65
	sub e                                                  ; $2bc3 : $93
	ex de, hl                                                  ; $2bc4 : $eb
	dec bc                                                  ; $2bc5 : $0b
	dec bc                                                  ; $2bc6 : $0b
	jp (hl)                                                  ; $2bc7 : $e9


	sub b                                                  ; $2bc8 : $90
	push hl                                                  ; $2bc9 : $e5
	jp c, $5fe8                                                  ; $2bca : $da, $e8, $5f
	ld c, $ed                                                  ; $2bcd : $0e, $ed
	xor a                                                  ; $2bcf : $af
	jp (hl)                                                  ; $2bd0 : $e9


	djnz br_03_2bd3                                                  ; $2bd1 : $10, $00

br_03_2bd3:
	jp pe, Jump_03_00d4                                                  ; $2bd3 : $ea, $d4, $00
	jp pe, Jump_03_16bd                                                  ; $2bd6 : $ea, $bd, $16
	call pe, Call_03_0bab                                                  ; $2bd9 : $ec, $ab, $0b
	neg                                                  ; $2bdc : $ed, $44
	ex de, hl                                                  ; $2bde : $eb
	xor b                                                  ; $2bdf : $a8
	ex de, hl                                                  ; $2be0 : $eb
	rst $00                                                  ; $2be1 : $c7
	inc de                                                  ; $2be2 : $13
	ldir                                                  ; $2be3 : $ed, $b0
	.db $dd                                                  ; $2be5 : $dd
	jp po, Jump_03_0c1c                                                  ; $2be6 : $e2, $1c, $0c
	ld a, b                                                  ; $2be9 : $78
	daa                                                  ; $2bea : $27
	sub d                                                  ; $2beb : $92
	and $28                                                  ; $2bec : $e6, $28
	or e                                                  ; $2bee : $b3
	ret pe                                                  ; $2bef : $e8

	daa                                                  ; $2bf0 : $27
	ex de, hl                                                  ; $2bf1 : $eb
	add a, h                                                  ; $2bf2 : $84
	call po, Call_03_0bf6                                                  ; $2bf3 : $e4, $f6, $0b
	and $fa                                                  ; $2bf6 : $e6, $fa
	pop hl                                                  ; $2bf8 : $e1
	inc (hl)                                                  ; $2bf9 : $34
	push hl                                                  ; $2bfa : $e5
	ld e, e                                                  ; $2bfb : $5b
	dec c                                                  ; $2bfc : $0d
	call nc, $63eb                                                  ; $2bfd : $d4, $eb, $63
	ld (hl), b                                                  ; $2c00 : $70
	jp (hl)                                                  ; $2c01 : $e9


	and a                                                  ; $2c02 : $a7
	ex de, hl                                                  ; $2c03 : $eb
	ld h, e                                                  ; $2c04 : $63
	sub d                                                  ; $2c05 : $92
	inc c                                                  ; $2c06 : $0c
	ex de, hl                                                  ; $2c07 : $eb
	ld d, b                                                  ; $2c08 : $50
	dec bc                                                  ; $2c09 : $0b
	jp pe, $e29c                                                  ; $2c0a : $ea, $9c, $e2
	ld l, c                                                  ; $2c0d : $69
	rst $20                                                  ; $2c0e : $e7
	rrca                                                  ; $2c0f : $0f
	ld (de), a                                                  ; $2c10 : $12
	rst $20                                                  ; $2c11 : $e7
	djnz br_03_2c6f                                                  ; $2c12 : $10, $5b
	ld (hl), d                                                  ; $2c14 : $72
	or e                                                  ; $2c15 : $b3
	ex de, hl                                                  ; $2c16 : $eb
	exx                                                  ; $2c17 : $d9
	jp (hl)                                                  ; $2c18 : $e9


	inc hl                                                  ; $2c19 : $23
	ex (sp), hl                                                  ; $2c1a : $e3
	rst $20                                                  ; $2c1b : $e7
	ld de, $8eeb                                                  ; $2c1c : $11, $eb, $8e
	ld d, (hl)                                                  ; $2c1f : $56
	call nc, $0b39                                                  ; $2c20 : $d4, $39, $0b
	ld c, c                                                  ; $2c23 : $49
	.db $ed                                                  ; $2c24 : $ed
	add a, b                                                  ; $2c25 : $80
	and $6e                                                  ; $2c26 : $e6, $6e
	ld de, $4db4                                                  ; $2c28 : $11, $b4, $4d
	pop hl                                                  ; $2c2b : $e1
	inc c                                                  ; $2c2c : $0c
	push hl                                                  ; $2c2d : $e5
	inc h                                                  ; $2c2e : $24
	ld h, e                                                  ; $2c2f : $63
	jp (hl)                                                  ; $2c30 : $e9


	dec bc                                                  ; $2c31 : $0b
	or e                                                  ; $2c32 : $b3
	and $15                                                  ; $2c33 : $e6, $15
	or h                                                  ; $2c35 : $b4
	ret po                                                  ; $2c36 : $e0

	dec bc                                                  ; $2c37 : $0b
	ld (hl), b                                                  ; $2c38 : $70
	ld a, (bc)                                                  ; $2c39 : $0a
	jp po, $e6c3                                                  ; $2c3a : $e2, $c3, $e6
	push af                                                  ; $2c3d : $f5
	rst $20                                                  ; $2c3e : $e7
	ld e, a                                                  ; $2c3f : $5f
	ex af, af'                                                  ; $2c40 : $08
	inc c                                                  ; $2c41 : $0c
	ret pe                                                  ; $2c42 : $e8

	add a, e                                                  ; $2c43 : $83
	ld l, l                                                  ; $2c44 : $6d
	rst $20                                                  ; $2c45 : $e7
	jp nz, Jump_03_0a93                                                  ; $2c46 : $c2, $93, $0a
	jp (hl)                                                  ; $2c49 : $e9


	ld c, $e9                                                  ; $2c4a : $0e, $e9
	ex (sp), hl                                                  ; $2c4c : $e3
	pop hl                                                  ; $2c4d : $e1
	nop                                                  ; $2c4e : $00
	djnz $0c                                                  ; $2c4f : $10, $0c
	push hl                                                  ; $2c51 : $e5
	ld h, (hl)                                                  ; $2c52 : $66
	rst $20                                                  ; $2c53 : $e7
	or (hl)                                                  ; $2c54 : $b6
	ld (hl), b                                                  ; $2c55 : $70
	ld e, (hl)                                                  ; $2c56 : $5e
	pop hl                                                  ; $2c57 : $e1
	ld (hl), $e5                                                  ; $2c58 : $36, $e5
	ld e, d                                                  ; $2c5a : $5a
	ld hl, $e5d4                                                  ; $2c5b : $21, $d4, $e5
	ld h, $0b                                                  ; $2c5e : $26, $0b
	.db $ed                                                  ; $2c60 : $ed
	ret m                                                  ; $2c61 : $f8

	pop hl                                                  ; $2c62 : $e1
	rst $00                                                  ; $2c63 : $c7
	ret pe                                                  ; $2c64 : $e8

	cp l                                                  ; $2c65 : $bd
	djnz -$2c                                                  ; $2c66 : $10, $d4
	push hl                                                  ; $2c68 : $e5
	inc (hl)                                                  ; $2c69 : $34
	ld l, h                                                  ; $2c6a : $6c
	ex de, hl                                                  ; $2c6b : $eb
	sub c                                                  ; $2c6c : $91
	push hl                                                  ; $2c6d : $e5
	or e                                                  ; $2c6e : $b3

br_03_2c6f:
	ld (hl), d                                                  ; $2c6f : $72
	jp po, $e324                                                  ; $2c70 : $e2, $24, $e3
	ld d, l                                                  ; $2c73 : $55

br_03_2c74:
	push hl                                                  ; $2c74 : $e5
	ld e, (hl)                                                  ; $2c75 : $5e
	dec bc                                                  ; $2c76 : $0b
	jp pe, $e4c5                                                  ; $2c77 : $ea, $c5, $e4
	cpl                                                  ; $2c7a : $2f
	ex (sp), hl                                                  ; $2c7b : $e3
	sbc a, (hl)                                                  ; $2c7c : $9e
	djnz br_03_2c8b                                                  ; $2c7d : $10, $0c
	ex (sp), hl                                                  ; $2c7f : $e3
	sub h                                                  ; $2c80 : $94
	.db $ed                                                  ; $2c81 : $ed
	cp h                                                  ; $2c82 : $bc
	.db $ed                                                  ; $2c83 : $ed
	rst $10                                                  ; $2c84 : $d7
	ld h, l                                                  ; $2c85 : $65
	ex de, hl                                                  ; $2c86 : $eb
	ld b, e                                                  ; $2c87 : $43
	sub d                                                  ; $2c88 : $92
	inc c                                                  ; $2c89 : $0c
	push hl                                                  ; $2c8a : $e5

br_03_2c8b:
	dec de                                                  ; $2c8b : $1b
	ld l, l                                                  ; $2c8c : $6d
	ld a, (bc)                                                  ; $2c8d : $0a
	.db $ed                                                  ; $2c8e : $ed
	djnz br_03_2c74                                                  ; $2c8f : $10, $e3
	ld d, a                                                  ; $2c91 : $57
	call pe, Call_03_0dcb                                                  ; $2c92 : $ec, $cb, $0d
	adc a, $e4                                                  ; $2c95 : $ce, $e4
	sub h                                                  ; $2c97 : $94
	sub d                                                  ; $2c98 : $92
	jp (hl)                                                  ; $2c99 : $e9


	ld a, d                                                  ; $2c9a : $7a
	or e                                                  ; $2c9b : $b3

br_03_2c9c:
	call pe, $65a6                                                  ; $2c9c : $ec, $a6, $65
	ex (sp), hl                                                  ; $2c9f : $e3
	sub c                                                  ; $2ca0 : $91
	dec bc                                                  ; $2ca1 : $0b
	jp po, $e279                                                  ; $2ca2 : $e2, $79, $e2
	ld d, $e2                                                  ; $2ca5 : $16, $e2
	inc d                                                  ; $2ca7 : $14
	inc c                                                  ; $2ca8 : $0c
	ret                                                  ; $2ca9 : $c9


	inc (hl)                                                  ; $2caa : $34
	ld h, e                                                  ; $2cab : $63
	ld l, b                                                  ; $2cac : $68
	ld l, h                                                  ; $2cad : $6c
	ld c, l                                                  ; $2cae : $4d
	ld d, c                                                  ; $2caf : $51
	inc c                                                  ; $2cb0 : $0c
	ld h, $e5                                                  ; $2cb1 : $26, $e5
	jp m, $e80b                                                  ; $2cb3 : $fa, $0b, $e8
	ld l, d                                                  ; $2cb6 : $6a
	rst $20                                                  ; $2cb7 : $e7
	ld l, a                                                  ; $2cb8 : $6f
	jp po, Jump_03_1019                                                  ; $2cb9 : $e2, $19, $10
	ret                                                  ; $2cbc : $c9


	call pe, $e023                                                  ; $2cbd : $ec, $23, $e0
	halt                                                  ; $2cc0 : $76
	ld d, c                                                  ; $2cc1 : $51
	ret po                                                  ; $2cc2 : $e0

	ld e, l                                                  ; $2cc3 : $5d
	sub e                                                  ; $2cc4 : $93
	.db $ed                                                  ; $2cc5 : $ed
	and h                                                  ; $2cc6 : $a4
	sub e                                                  ; $2cc7 : $93
	ld h, d                                                  ; $2cc8 : $62
	pop hl                                                  ; $2cc9 : $e1
	ret c                                                  ; $2cca : $d8

	dec bc                                                  ; $2ccb : $0b
	pop hl                                                  ; $2ccc : $e1
	xor a                                                  ; $2ccd : $af
	call pe, $c5b8                                                  ; $2cce : $ec, $b8, $c5
	djnz br_03_2c9c                                                  ; $2cd1 : $10, $c9
	push hl                                                  ; $2cd3 : $e5
	dec h                                                  ; $2cd4 : $25
	ld e, e                                                  ; $2cd5 : $5b
	cp h                                                  ; $2cd6 : $bc
	jp (hl)                                                  ; $2cd7 : $e9


	add a, e                                                  ; $2cd8 : $83
	ex de, hl                                                  ; $2cd9 : $eb
	add a, d                                                  ; $2cda : $82
	ex (sp), hl                                                  ; $2cdb : $e3
	cp c                                                  ; $2cdc : $b9
	dec h                                                  ; $2cdd : $25
	cp h                                                  ; $2cde : $bc
	call pe, Call_03_0bf1                                                  ; $2cdf : $ec, $f1, $0b
	ex (sp), hl                                                  ; $2ce2 : $e3
	ld b, c                                                  ; $2ce3 : $41
	jp (hl)                                                  ; $2ce4 : $e9


	sbc a, e                                                  ; $2ce5 : $9b
	ex de, hl                                                  ; $2ce6 : $eb
	ld e, a                                                  ; $2ce7 : $5f
	rla                                                  ; $2ce8 : $17
	ret                                                  ; $2ce9 : $c9


	ld b, c                                                  ; $2cea : $41
	jp po, $e995                                                  ; $2ceb : $e2, $95, $e9
	add a, d                                                  ; $2cee : $82
	jp pe, $d2f7                                                  ; $2cef : $ea, $f7, $d2
	sbc a, c                                                  ; $2cf2 : $99
	sub d                                                  ; $2cf3 : $92
	ld e, a                                                  ; $2cf4 : $5f
	jp (hl)                                                  ; $2cf5 : $e9


	ld e, a                                                  ; $2cf6 : $5f
	ld l, h                                                  ; $2cf7 : $6c
	pop hl                                                  ; $2cf8 : $e1
	jr z, $5f                                                  ; $2cf9 : $28, $5f

	ret pe                                                  ; $2cfb : $e8

	jp z, $d4e6                                                  ; $2cfc : $ca, $e6, $d4
	dec bc                                                  ; $2cff : $0b
	jp (hl)                                                  ; $2d00 : $e9


	rla                                                  ; $2d01 : $17

Jump_03_2d02:
	jp po, $e28e                                                  ; $2d02 : $e2, $8e, $e2
	adc a, l                                                  ; $2d05 : $8d
	inc c                                                  ; $2d06 : $0c
	ret                                                  ; $2d07 : $c9


	add hl, sp                                                  ; $2d08 : $39
	jp (hl)                                                  ; $2d09 : $e9


	sbc a, $ed                                                  ; $2d0a : $de, $ed
	ld a, b                                                  ; $2d0c : $78
	ld d, $ea                                                  ; $2d0d : $16, $ea
	ret nc                                                  ; $2d0f : $d0

	jp po, Jump_03_0b4d                                                  ; $2d10 : $e2, $4d, $0b
	ld (hl), e                                                  ; $2d13 : $73
	ret pe                                                  ; $2d14 : $e8

	sub l                                                  ; $2d15 : $95
	or b                                                  ; $2d16 : $b0
	add hl, bc                                                  ; $2d17 : $09
	ld h, c                                                  ; $2d18 : $61
	pop hl                                                  ; $2d19 : $e1
	ld c, l                                                  ; $2d1a : $4d
	sub d                                                  ; $2d1b : $92
	scf                                                  ; $2d1c : $37
	dec de                                                  ; $2d1d : $1b
	jp pe, Jump_03_0b2d                                                  ; $2d1e : $ea, $2d, $0b
	inc b                                                  ; $2d21 : $04
	ld (bc), a                                                  ; $2d22 : $02
	add hl, bc                                                  ; $2d23 : $09
	ex de, hl                                                  ; $2d24 : $eb
	ld a, ($c90f)                                                  ; $2d25 : $3a, $0f, $c9
	ret po                                                  ; $2d28 : $e0

	ld a, l                                                  ; $2d29 : $7d
	call pe, $ecd4                                                  ; $2d2a : $ec, $d4, $ec
	ld e, (hl)                                                  ; $2d2d : $5e
	jp (hl)                                                  ; $2d2e : $e9


	ld l, l                                                  ; $2d2f : $6d
	.db $ed                                                  ; $2d30 : $ed
	rla                                                  ; $2d31 : $17
	inc c                                                  ; $2d32 : $0c
	rst $20                                                  ; $2d33 : $e7
	ret p                                                  ; $2d34 : $f0

	dec bc                                                  ; $2d35 : $0b
	and $18                                                  ; $2d36 : $e6, $18
	call po, $e606                                                  ; $2d38 : $e4, $06, $e6
	rst $10                                                  ; $2d3b : $d7
	ex af, af'                                                  ; $2d3c : $08
	call z, $8fe2                                                  ; $2d3d : $cc, $e2, $8f
	add a, b                                                  ; $2d40 : $80
	ret pe                                                  ; $2d41 : $e8

	ex (sp), hl                                                  ; $2d42 : $e3
	sub d                                                  ; $2d43 : $92
	dec bc                                                  ; $2d44 : $0b
	call po, $e316                                                  ; $2d45 : $e4, $16, $e3
	ld a, ($dfe7)                                                  ; $2d48 : $3a, $e7, $df
	ld de, $e3ce                                                  ; $2d4b : $11, $ce, $e3
	cp l                                                  ; $2d4e : $bd
	dec h                                                  ; $2d4f : $25
	or h                                                  ; $2d50 : $b4
	jp po, Jump_03_1669                                                  ; $2d51 : $e2, $69, $16
	or h                                                  ; $2d54 : $b4
	call po, $920e                                                  ; $2d55 : $e4, $0e, $92
	inc c                                                  ; $2d58 : $0c
	jp po, Jump_03_2fa9                                                  ; $2d59 : $e2, $a9, $2f
	dec bc                                                  ; $2d5c : $0b
	ex (sp), hl                                                  ; $2d5d : $e3
	sbc a, l                                                  ; $2d5e : $9d
	call po, $ea4b                                                  ; $2d5f : $e4, $4b, $ea
	daa                                                  ; $2d62 : $27
	rrca                                                  ; $2d63 : $0f
	ret                                                  ; $2d64 : $c9


	inc (hl)                                                  ; $2d65 : $34
	ld l, h                                                  ; $2d66 : $6c
	and $01                                                  ; $2d67 : $e6, $01
	cp d                                                  ; $2d69 : $ba
	and $9c                                                  ; $2d6a : $e6, $9c
	nop                                                  ; $2d6c : $00
	jp po, Jump_03_16a2                                                  ; $2d6d : $e2, $a2, $16
	ret pe                                                  ; $2d70 : $e8

	rla                                                  ; $2d71 : $17
	dec bc                                                  ; $2d72 : $0b
	ret pe                                                  ; $2d73 : $e8

	ld c, (hl)                                                  ; $2d74 : $4e
	jp pe, $e6b9                                                  ; $2d75 : $ea, $b9, $e6
	sbc a, b                                                  ; $2d78 : $98
	dec bc                                                  ; $2d79 : $0b
	inir                                                  ; $2d7a : $ed, $b2
	call po, Call_03_152d                                                  ; $2d7c : $e4, $2d, $15
	call po, $e117                                                  ; $2d7f : $e4, $17, $e1
	or e                                                  ; $2d82 : $b3
	cpl                                                  ; $2d83 : $2f
	dec bc                                                  ; $2d84 : $0b
	ex de, hl                                                  ; $2d85 : $eb
	add a, $e3                                                  ; $2d86 : $c6, $e3
	dec h                                                  ; $2d88 : $25
	ret pe                                                  ; $2d89 : $e8

	jr nc, br_03_2d95                                                  ; $2d8a : $30, $09

	push de                                                  ; $2d8c : $d5
	ld l, e                                                  ; $2d8d : $6b
	or h                                                  ; $2d8e : $b4
	jp (hl)                                                  ; $2d8f : $e9


	ld d, l                                                  ; $2d90 : $55
	ld h, e                                                  ; $2d91 : $63
	ret po                                                  ; $2d92 : $e0

	dec l                                                  ; $2d93 : $2d
	dec bc                                                  ; $2d94 : $0b

br_03_2d95:
	and $a7                                                  ; $2d95 : $e6, $a7
	ret po                                                  ; $2d97 : $e0

	and d                                                  ; $2d98 : $a2
	call pe, $e4a1                                                  ; $2d99 : $ec, $a1, $e4
	djnz br_03_2da9                                                  ; $2d9c : $10, $0b
	ret                                                  ; $2d9e : $c9


	out (c), l                                                  ; $2d9f : $ed, $69
	ld l, h                                                  ; $2da1 : $6c
	ex de, hl                                                  ; $2da2 : $eb
	and (hl)                                                  ; $2da3 : $a6
	cpl                                                  ; $2da4 : $2f
	or h                                                  ; $2da5 : $b4
	ret po                                                  ; $2da6 : $e0

	inc de                                                  ; $2da7 : $13
	dec bc                                                  ; $2da8 : $0b

br_03_2da9:
	inc c                                                  ; $2da9 : $0c
	pop hl                                                  ; $2daa : $e1
	dec sp                                                  ; $2dab : $3b
	jp po, $ed0f                                                  ; $2dac : $e2, $0f, $ed
	ld l, d                                                  ; $2daf : $6a
	dec c                                                  ; $2db0 : $0d
	call nc, $e939                                                  ; $2db1 : $d4, $39, $e9
	sbc a, $b4                                                  ; $2db4 : $de, $b4
	add a, a                                                  ; $2db6 : $87
	pop hl                                                  ; $2db7 : $e1
	inc sp                                                  ; $2db8 : $33
	jp (hl)                                                  ; $2db9 : $e9


	scf                                                  ; $2dba : $37
	xor $13                                                  ; $2dbb : $ee, $13
	dec bc                                                  ; $2dbd : $0b
	cp (hl)                                                  ; $2dbe : $be
	ld e, c                                                  ; $2dbf : $59
	ld (hl), l                                                  ; $2dc0 : $75
	inc d                                                  ; $2dc1 : $14
	ret                                                  ; $2dc2 : $c9


	call pe, $6cb5                                                  ; $2dc3 : $ec, $b5, $6c
	ld (hl), d                                                  ; $2dc6 : $72
	ld hl, $fefe                                                  ; $2dc7 : $21, $fe, $fe
	ld sp, $3a39                                                  ; $2dca : $31, $39, $3a
	jr nc, br_03_2dff                                                  ; $2dcd : $30, $30

	rst $38                                                  ; $2dcf : $ff
	and $11                                                  ; $2dd0 : $e6, $11
	dec bc                                                  ; $2dd2 : $0b
	sbc a, $e8                                                  ; $2dd3 : $de, $e8
	di                                                  ; $2dd5 : $f3
	ret po                                                  ; $2dd6 : $e0

	ld e, (hl)                                                  ; $2dd7 : $5e
	dec b                                                  ; $2dd8 : $05
	add hl, bc                                                  ; $2dd9 : $09
	ex af, af'                                                  ; $2dda : $08
	adc a, $e6                                                  ; $2ddb : $ce, $e6
	ld c, b                                                  ; $2ddd : $48
	jp pe, $9262                                                  ; $2dde : $ea, $62, $92
	ld (hl), l                                                  ; $2de1 : $75
	dec bc                                                  ; $2de2 : $0b
	pop hl                                                  ; $2de3 : $e1
	call p, $eee5                                                  ; $2de4 : $f4, $e5, $ee
	ex de, hl                                                  ; $2de7 : $eb
	ld c, a                                                  ; $2de8 : $4f
	dec c                                                  ; $2de9 : $0d
	ld h, (hl)                                                  ; $2dea : $66
	xor l                                                  ; $2deb : $ad
	ld b, d                                                  ; $2dec : $42
	jp po, $ea7a                                                  ; $2ded : $e2, $7a, $ea
	ld b, c                                                  ; $2df0 : $41
	or h                                                  ; $2df1 : $b4
	ex de, hl                                                  ; $2df2 : $eb
	rst $18                                                  ; $2df3 : $df
	ex (sp), hl                                                  ; $2df4 : $e3
	ld d, b                                                  ; $2df5 : $50
	dec bc                                                  ; $2df6 : $0b
	ex de, hl                                                  ; $2df7 : $eb
	sub d                                                  ; $2df8 : $92
	jp pe, $e521                                                  ; $2df9 : $ea, $21, $e5
	or $13                                                  ; $2dfc : $f6, $13
	ret                                                  ; $2dfe : $c9


br_03_2dff:
	.db $ed                                                  ; $2dff : $ed
	jp (hl)                                                  ; $2e00 : $e9


	call po, $c365                                                  ; $2e01 : $e4, $65, $c3
	ret po                                                  ; $2e04 : $e0

	add a, b                                                  ; $2e05 : $80
	cp e                                                  ; $2e06 : $bb
	cp $fe                                                  ; $2e07 : $fe, $fe
	ld sp, $3839                                                  ; $2e09 : $31, $39, $38
	inc (hl)                                                  ; $2e0c : $34
	rst $38                                                  ; $2e0d : $ff
	ret pe                                                  ; $2e0e : $e8

	cp l                                                  ; $2e0f : $bd
	dec bc                                                  ; $2e10 : $0b
	cp $fe                                                  ; $2e11 : $fe, $fe
	inc sp                                                  ; $2e13 : $33
	jr nc, $30                                                  ; $2e14 : $30, $30

	jr nc, br_03_2e38                                                  ; $2e16 : $30, $20

	ld c, l                                                  ; $2e18 : $4d
	ld l, $ff                                                  ; $2e19 : $2e, $ff
	cp $fe                                                  ; $2e1b : $fe, $fe
	dec (hl)                                                  ; $2e1d : $35
	jr nc, br_03_2e50                                                  ; $2e1e : $30, $30

	jr nc, $20                                                  ; $2e20 : $30, $20

	ld c, l                                                  ; $2e22 : $4d
	ld l, $ff                                                  ; $2e23 : $2e, $ff
	rst $20                                                  ; $2e25 : $e7
	adc a, (hl)                                                  ; $2e26 : $8e
	ld a, (bc)                                                  ; $2e27 : $0a
	ld h, (hl)                                                  ; $2e28 : $66
	add hl, sp                                                  ; $2e29 : $39
	ld a, $e6                                                  ; $2e2a : $3e, $e6
	exx                                                  ; $2e2c : $d9
	push hl                                                  ; $2e2d : $e5
	inc de                                                  ; $2e2e : $13
	ret pe                                                  ; $2e2f : $e8

	exx                                                  ; $2e30 : $d9
	dec bc                                                  ; $2e31 : $0b
	inc hl                                                  ; $2e32 : $23
	call po, $e8c1                                                  ; $2e33 : $e4, $c1, $e8
	ld (hl), d                                                  ; $2e36 : $72
	inc de                                                  ; $2e37 : $13

br_03_2e38:
	ret                                                  ; $2e38 : $c9


	dec a                                                  ; $2e39 : $3d
	jp pe, $e3a7                                                  ; $2e3a : $ea, $a7, $e3
	call p, $42e9                                                  ; $2e3d : $f4, $e9, $42
	jp pe, $6339                                                  ; $2e40 : $ea, $39, $63
	cp $fe                                                  ; $2e43 : $fe, $fe
	ld sp, $3039                                                  ; $2e45 : $31, $39, $30
	add hl, sp                                                  ; $2e48 : $39
	rst $38                                                  ; $2e49 : $ff
	dec bc                                                  ; $2e4a : $0b
	ex de, hl                                                  ; $2e4b : $eb
	xor a                                                  ; $2e4c : $af
	call po, $e867                                                  ; $2e4d : $e4, $67, $e8

br_03_2e50:
	adc a, a                                                  ; $2e50 : $8f
	ex af, af'                                                  ; $2e51 : $08
	ret pe                                                  ; $2e52 : $e8

	cp (hl)                                                  ; $2e53 : $be
	jr c, br_03_2ec6                                                  ; $2e54 : $38, $70

	ex de, hl                                                  ; $2e56 : $eb
	xor a                                                  ; $2e57 : $af
	ld a, a                                                  ; $2e58 : $7f
	dec bc                                                  ; $2e59 : $0b
	ex de, hl                                                  ; $2e5a : $eb
	xor l                                                  ; $2e5b : $ad
	dec c                                                  ; $2e5c : $0d
	ret po                                                  ; $2e5d : $e0

	push de                                                  ; $2e5e : $d5
	dec bc                                                  ; $2e5f : $0b
	adc a, $e7                                                  ; $2e60 : $ce, $e7
	ld a, c                                                  ; $2e62 : $79
	jp (hl)                                                  ; $2e63 : $e9


	ld h, c                                                  ; $2e64 : $61
	ld h, e                                                  ; $2e65 : $63
	ld h, d                                                  ; $2e66 : $62
	ex de, hl                                                  ; $2e67 : $eb
	ld a, c                                                  ; $2e68 : $79
	cpl                                                  ; $2e69 : $2f
	dec bc                                                  ; $2e6a : $0b
	push hl                                                  ; $2e6b : $e5
	call nc, $47e2                                                  ; $2e6c : $d4, $e2, $47
	rst $20                                                  ; $2e6f : $e7
	cp a                                                  ; $2e70 : $bf
	ex af, af'                                                  ; $2e71 : $08
	adc a, $e7                                                  ; $2e72 : $ce, $e7
	xor h                                                  ; $2e74 : $ac
	sub e                                                  ; $2e75 : $93
	ret c                                                  ; $2e76 : $d8

	ret po                                                  ; $2e77 : $e0

	ld c, $0b                                                  ; $2e78 : $0e, $0b
	ret po                                                  ; $2e7a : $e0

	rst $30                                                  ; $2e7b : $f7
	ex (sp), hl                                                  ; $2e7c : $e3
	or l                                                  ; $2e7d : $b5
	jp pe, Jump_03_0b3f                                                  ; $2e7e : $ea, $3f, $0b
	jp nc, $e7c4                                                  ; $2e81 : $d2, $c4, $e7
	push af                                                  ; $2e84 : $f5
	adc a, e                                                  ; $2e85 : $8b
	sub d                                                  ; $2e86 : $92
	and $7b                                                  ; $2e87 : $e6, $7b
	call po, Call_03_0b58                                                  ; $2e89 : $e4, $58, $0b
	ret po                                                  ; $2e8c : $e0

	inc a                                                  ; $2e8d : $3c
	cp $fe                                                  ; $2e8e : $fe, $fe
	ld sp, $3139                                                  ; $2e90 : $31, $39, $31
	inc sp                                                  ; $2e93 : $33
	rst $38                                                  ; $2e94 : $ff
	cp $fe                                                  ; $2e95 : $fe, $fe
	ld sp, $3439                                                  ; $2e97 : $31, $39, $34
	jr c, -$01                                                  ; $2e9a : $38, $ff

	inc c                                                  ; $2e9c : $0c
	ret                                                  ; $2e9d : $c9


	or d                                                  ; $2e9e : $b2
	and l                                                  ; $2e9f : $a5
	push hl                                                  ; $2ea0 : $e5
	ld (de), a                                                  ; $2ea1 : $12
	xor b                                                  ; $2ea2 : $a8
	or e                                                  ; $2ea3 : $b3
	ret pe                                                  ; $2ea4 : $e8

	ld l, b                                                  ; $2ea5 : $68
	call pe, Call_03_0b89                                                  ; $2ea6 : $ec, $89, $0b
	.db $ed                                                  ; $2ea9 : $ed
	dec b                                                  ; $2eaa : $05
	and $2a                                                  ; $2eab : $e6, $2a
	jp (hl)                                                  ; $2ead : $e9


	ld a, $08                                                  ; $2eae : $3e, $08
	ld h, c                                                  ; $2eb0 : $61
	jp pe, $1a75                                                  ; $2eb1 : $ea, $75, $1a
	ld h, l                                                  ; $2eb4 : $65
	.db $ed                                                  ; $2eb5 : $ed
	inc de                                                  ; $2eb6 : $13
	dec bc                                                  ; $2eb7 : $0b
	dec b                                                  ; $2eb8 : $05
	inc b                                                  ; $2eb9 : $04
	ret po                                                  ; $2eba : $e0

	ld ($bbe4), hl                                                  ; $2ebb : $22, $e4, $bb
	add hl, bc                                                  ; $2ebe : $09
	adc a, $e8                                                  ; $2ebf : $ce, $e8
	or e                                                  ; $2ec1 : $b3
	and $ef                                                  ; $2ec2 : $e6, $ef
	sub d                                                  ; $2ec4 : $92
	pop hl                                                  ; $2ec5 : $e1

br_03_2ec6:
	.db $dd                                                  ; $2ec6 : $dd
	dec bc                                                  ; $2ec7 : $0b
	xor h                                                  ; $2ec8 : $ac
	pop hl                                                  ; $2ec9 : $e1
	sbc a, $e9                                                  ; $2eca : $de, $e9
	xor d                                                  ; $2ecc : $aa
	inc c                                                  ; $2ecd : $0c
	call z, Call_03_2f72                                                  ; $2ece : $cc, $72, $2f
	jp nc, $e89e                                                  ; $2ed1 : $d2, $9e, $e8
	dec h                                                  ; $2ed4 : $25
	and $5f                                                  ; $2ed5 : $e6, $5f
	adc a, h                                                  ; $2ed7 : $8c
	add hl, sp                                                  ; $2ed8 : $39
	dec bc                                                  ; $2ed9 : $0b
	call po, $e832                                                  ; $2eda : $e4, $32, $e8
	ld c, b                                                  ; $2edd : $48
	and $35                                                  ; $2ede : $e6, $35
	ld de, $72cc                                                  ; $2ee0 : $11, $cc, $72
	cpl                                                  ; $2ee3 : $2f
	jp nc, $e20c                                                  ; $2ee4 : $d2, $0c, $e2

br_03_2ee7:
	xor a                                                  ; $2ee7 : $af
	sub d                                                  ; $2ee8 : $92
	add hl, de                                                  ; $2ee9 : $19
	add hl, sp                                                  ; $2eea : $39
	pop hl                                                  ; $2eeb : $e1
	ld l, a                                                  ; $2eec : $6f
	inc c                                                  ; $2eed : $0c
	cp l                                                  ; $2eee : $bd
	jp po, $0baf                                                  ; $2eef : $e2, $af, $0b
	and $35                                                  ; $2ef2 : $e6, $35
	call pe, $e8ce                                                  ; $2ef4 : $ec, $ce, $e8
	ld c, b                                                  ; $2ef7 : $48
	ld a, (bc)                                                  ; $2ef8 : $0a
	ret                                                  ; $2ef9 : $c9


	.db $ed                                                  ; $2efa : $ed
	xor $90                                                  ; $2efb : $ee, $90
	ld l, h                                                  ; $2efd : $6c
	call pe, $63a8                                                  ; $2efe : $ec, $a8, $63
	inc hl                                                  ; $2f01 : $23
	dec bc                                                  ; $2f02 : $0b
	push hl                                                  ; $2f03 : $e5
	ld c, $e6                                                  ; $2f04 : $0e, $e6

Call_03_2f06:
	pop ix                                                  ; $2f06 : $dd, $e1

Call_03_2f08:
	jp $c90c                                                  ; $2f08 : $c3, $0c, $c9


	push hl                                                  ; $2f0b : $e5
	ld ($e46c), a                                                  ; $2f0c : $32, $6c, $e4
	jp m, $e863                                                  ; $2f0f : $fa, $63, $e8
	ret p                                                  ; $2f12 : $f0

	ex de, hl                                                  ; $2f13 : $eb
	ld c, e                                                  ; $2f14 : $4b
	dec bc                                                  ; $2f15 : $0b
	ex (sp), hl                                                  ; $2f16 : $e3
	sbc a, (hl)                                                  ; $2f17 : $9e
	jp pe, $e910                                                  ; $2f18 : $ea, $10, $e9
	inc l                                                  ; $2f1b : $2c
	djnz br_03_2ee7                                                  ; $2f1c : $10, $c9
	ld c, l                                                  ; $2f1e : $4d
	jp po, $e281                                                  ; $2f1f : $e2, $81, $e2
	ld h, c                                                  ; $2f22 : $61
	ld h, e                                                  ; $2f23 : $63
	jp pe, $c3b9                                                  ; $2f24 : $ea, $b9, $c3
	ret pe                                                  ; $2f27 : $e8

	ret m                                                  ; $2f28 : $f8

	inc l                                                  ; $2f29 : $2c
	rst $20                                                  ; $2f2a : $e7
	out ($0b), a                                                  ; $2f2b : $d3, $0b
	call pe, $e3f7                                                  ; $2f2d : $ec, $f7, $e3
	djnz -$15                                                  ; $2f30 : $10, $eb
	ld (hl), c                                                  ; $2f32 : $71

Jump_03_2f33:
	ld a, (bc)                                                  ; $2f33 : $0a
	ret                                                  ; $2f34 : $c9


	call pe, $706d                                                  ; $2f35 : $ec, $6d, $70

Jump_03_2f38:
	ret pe                                                  ; $2f38 : $e8

	res 2, d                                                  ; $2f39 : $cb, $92
	ret po                                                  ; $2f3b : $e0

	push bc                                                  ; $2f3c : $c5
	dec bc                                                  ; $2f3d : $0b
	call po, $e948                                                  ; $2f3e : $e4, $48, $e9
	call po, $ace3                                                  ; $2f41 : $e4, $e3, $ac
	dec bc                                                  ; $2f44 : $0b
	ret                                                  ; $2f45 : $c9


	call po, $e5db                                                  ; $2f46 : $e4, $db, $e5
	sub d                                                  ; $2f49 : $92
	ld h, e                                                  ; $2f4a : $63
	call po, $e4d0                                                  ; $2f4b : $e4, $d0, $e4
	cp b                                                  ; $2f4e : $b8
	dec bc                                                  ; $2f4f : $0b
	jp po, $ea43                                                  ; $2f50 : $e2, $43, $ea
	cp (hl)                                                  ; $2f53 : $be
	jp (hl)                                                  ; $2f54 : $e9


	and b                                                  ; $2f55 : $a0
	ld de, $ecd5                                                  ; $2f56 : $11, $d5, $ec
	add hl, bc                                                  ; $2f59 : $09
	push hl                                                  ; $2f5a : $e5
	ld (hl), e                                                  ; $2f5b : $73
	ld h, e                                                  ; $2f5c : $63
	dec d                                                  ; $2f5d : $15
	call pe, $bab6                                                  ; $2f5e : $ec, $b6, $ba
	jp pe, $45f6                                                  ; $2f61 : $ea, $f6, $45
	ld d, (hl)                                                  ; $2f64 : $56
	call po, Call_03_0b95                                                  ; $2f65 : $e4, $95, $0b
	and $76                                                  ; $2f68 : $e6, $76
	ret pe                                                  ; $2f6a : $e8

	ld d, $e6                                                  ; $2f6b : $16, $e6
	or c                                                  ; $2f6d : $b1
	ld a, (bc)                                                  ; $2f6e : $0a
	ret                                                  ; $2f6f : $c9


	ld e, b                                                  ; $2f70 : $58
	ld l, h                                                  ; $2f71 : $6c

Call_03_2f72:
	pop bc                                                  ; $2f72 : $c1
	call po, Call_03_0cc2                                                  ; $2f73 : $e4, $c2, $0c
	xor $21                                                  ; $2f76 : $ee, $21
	dec bc                                                  ; $2f78 : $0b
	and $23                                                  ; $2f79 : $e6, $23
	ret pe                                                  ; $2f7b : $e8

	rst $28                                                  ; $2f7c : $ef
	push hl                                                  ; $2f7d : $e5
	ret nc                                                  ; $2f7e : $d0

	inc de                                                  ; $2f7f : $13
	otir                                                  ; $2f80 : $ed, $b3
	add hl, de                                                  ; $2f82 : $19
	adc a, c                                                  ; $2f83 : $89
	ld d, d                                                  ; $2f84 : $52
	and $0a                                                  ; $2f85 : $e6, $0a
	nop                                                  ; $2f87 : $00
	ex de, hl                                                  ; $2f88 : $eb
	ei                                                  ; $2f89 : $fb
	nop                                                  ; $2f8a : $00
	and $b8                                                  ; $2f8b : $e6, $b8
	call po, $6365                                                  ; $2f8d : $e4, $65, $63
	ex de, hl                                                  ; $2f90 : $eb
	pop de                                                  ; $2f91 : $d1
	dec bc                                                  ; $2f92 : $0b
	rst $20                                                  ; $2f93 : $e7
	ld c, (hl)                                                  ; $2f94 : $4e
	push hl                                                  ; $2f95 : $e5
	and $ec                                                  ; $2f96 : $e6, $ec

Call_03_2f98:
	ret m                                                  ; $2f98 : $f8

Call_03_2f99:
	ex af, af'                                                  ; $2f99 : $08
	sub $4e                                                  ; $2f9a : $d6, $4e
	inc de                                                  ; $2f9c : $13
	call po, $63af                                                  ; $2f9d : $e4, $af, $63
	xor d                                                  ; $2fa0 : $aa
	dec bc                                                  ; $2fa1 : $0b
	ret po                                                  ; $2fa2 : $e0

	or l                                                  ; $2fa3 : $b5
	push hl                                                  ; $2fa4 : $e5
	ld c, c                                                  ; $2fa5 : $49
	jp pe, $eadd                                                  ; $2fa6 : $ea, $dd, $ea

Jump_03_2fa9:
	sbc a, c                                                  ; $2fa9 : $99
	inc c                                                  ; $2faa : $0c
	ret                                                  ; $2fab : $c9


	jp pe, $ebad                                                  ; $2fac : $ea, $ad, $eb
	rst $20                                                  ; $2faf : $e7
	and $02                                                  ; $2fb0 : $e6, $02
	jp $e576                                                  ; $2fb2 : $c3, $76, $e5


	ld (hl), b                                                  ; $2fb5 : $70
	dec bc                                                  ; $2fb6 : $0b
	pop hl                                                  ; $2fb7 : $e1

br_03_2fb8:
	rst $30                                                  ; $2fb8 : $f7
	and $97                                                  ; $2fb9 : $e6, $97
	call po, $e92c                                                  ; $2fbb : $e4, $2c, $e9
	cp l                                                  ; $2fbe : $bd
	add hl, bc                                                  ; $2fbf : $09
	ld h, c                                                  ; $2fc0 : $61
	pop hl                                                  ; $2fc1 : $e1
	pop bc                                                  ; $2fc2 : $c1
	ld a, (de)                                                  ; $2fc3 : $1a
	ld h, l                                                  ; $2fc4 : $65
	adc a, h                                                  ; $2fc5 : $8c
	call pe, Call_03_0b82                                                  ; $2fc6 : $ec, $82, $0b
	ret po                                                  ; $2fc9 : $e0

	ld e, e                                                  ; $2fca : $5b
	ret po                                                  ; $2fcb : $e0

br_03_2fcc:
	jr nz, br_03_2fcc                                                  ; $2fcc : $20, $fe

	cp $32                                                  ; $2fce : $fe, $32
	scf                                                  ; $2fd0 : $37
	rst $38                                                  ; $2fd1 : $ff
	djnz br_03_2fb8                                                  ; $2fd2 : $10, $e4
	jp z, $4bec                                                  ; $2fd4 : $ca, $ec, $4b
	ld h, e                                                  ; $2fd7 : $63
	ex de, hl                                                  ; $2fd8 : $eb
	nop                                                  ; $2fd9 : $00
	ld bc, $b0ed                                                  ; $2fda : $01, $ed, $b0
	.db $ed                                                  ; $2fdd : $ed
	xor (hl)                                                  ; $2fde : $ae
	call pe, $634b                                                  ; $2fdf : $ec, $4b, $63
	dec bc                                                  ; $2fe2 : $0b
	push hl                                                  ; $2fe3 : $e5
	in a, ($e9)                                                  ; $2fe4 : $db, $e9
	sbc a, a                                                  ; $2fe6 : $9f
	jp (hl)                                                  ; $2fe7 : $e9


	adc a, l                                                  ; $2fe8 : $8d
	ld d, $d4                                                  ; $2fe9 : $16, $d4
	add hl, sp                                                  ; $2feb : $39
	.db $ed                                                  ; $2fec : $ed
	inc sp                                                  ; $2fed : $33
	or h                                                  ; $2fee : $b4
	ex (sp), hl                                                  ; $2fef : $e3
	ld b, (hl)                                                  ; $2ff0 : $46
	sub d                                                  ; $2ff1 : $92
	ex de, hl                                                  ; $2ff2 : $eb
	exx                                                  ; $2ff3 : $d9
	push hl                                                  ; $2ff4 : $e5
	ld b, d                                                  ; $2ff5 : $42
	ld d, $eb                                                  ; $2ff6 : $16, $eb
	exx                                                  ; $2ff8 : $d9
	ret po                                                  ; $2ff9 : $e0

	jp z, $7496                                                  ; $2ffa : $ca, $96, $74
	call po, Call_03_0bce                                                  ; $2ffd : $e4, $ce, $0b
	.db $ed                                                  ; $3000 : $ed
	add a, b                                                  ; $3001 : $80
	ret pe                                                  ; $3002 : $e8

	ld h, d                                                  ; $3003 : $62
	push hl                                                  ; $3004 : $e5
	add a, b                                                  ; $3005 : $80
	jr br_03_3014                                                  ; $3006 : $18, $0c

	push hl                                                  ; $3008 : $e5
	ld l, (hl)                                                  ; $3009 : $6e
	sbc a, d                                                  ; $300a : $9a
	add hl, sp                                                  ; $300b : $39
	out ($e0), a                                                  ; $300c : $d3, $e0
	ld l, h                                                  ; $300e : $6c
	jp (hl)                                                  ; $300f : $e9


	or e                                                  ; $3010 : $b3
	ld l, h                                                  ; $3011 : $6c
	push hl                                                  ; $3012 : $e5
	rst $08                                                  ; $3013 : $cf

br_03_3014:
	inc l                                                  ; $3014 : $2c
	sbc a, c                                                  ; $3015 : $99
	sbc a, a                                                  ; $3016 : $9f
	sbc a, d                                                  ; $3017 : $9a
	inc c                                                  ; $3018 : $0c
	ex de, hl                                                  ; $3019 : $eb
	add a, l                                                  ; $301a : $85
	push hl                                                  ; $301b : $e5
	sub c                                                  ; $301c : $91
	ld l, l                                                  ; $301d : $6d
	ld a, (bc)                                                  ; $301e : $0a
	ex (sp), hl                                                  ; $301f : $e3
	add a, (hl)                                                  ; $3020 : $86
	pop hl                                                  ; $3021 : $e1
	nop                                                  ; $3022 : $00
	ex (sp), hl                                                  ; $3023 : $e3
	and h                                                  ; $3024 : $a4
	ex (sp), hl                                                  ; $3025 : $e3
	and e                                                  ; $3026 : $a3
	rla                                                  ; $3027 : $17
	or h                                                  ; $3028 : $b4
	cp h                                                  ; $3029 : $bc

br_03_302a:
	ex (sp), hl                                                  ; $302a : $e3
	cpl                                                  ; $302b : $2f
	or e                                                  ; $302c : $b3
	rst $20                                                  ; $302d : $e7
	ld a, e                                                  ; $302e : $7b
	ret nz                                                  ; $302f : $c0

	or h                                                  ; $3030 : $b4
	jp po, $7141                                                  ; $3031 : $e2, $41, $71
	sub d                                                  ; $3034 : $92
	push hl                                                  ; $3035 : $e5
	pop af                                                  ; $3036 : $f1
	ret po                                                  ; $3037 : $e0

	ex (sp), iy                                                  ; $3038 : $fd, $e3
	push de                                                  ; $303a : $d5
	jp pe, $1674                                                  ; $303b : $ea, $74, $16
	ld a, (bc)                                                  ; $303e : $0a
	call pe, $3af6                                                  ; $303f : $ec, $f6, $3a
	push hl                                                  ; $3042 : $e5
	and b                                                  ; $3043 : $a0
	ld a, (bc)                                                  ; $3044 : $0a
	adc a, d                                                  ; $3045 : $8a
	add a, a                                                  ; $3046 : $87
	ld c, l                                                  ; $3047 : $4d
	xor $04                                                  ; $3048 : $ee, $04
	ld h, l                                                  ; $304a : $65
	ld c, d                                                  ; $304b : $4a
	and $ef                                                  ; $304c : $e6, $ef
	ld bc, $b2e6                                                  ; $304e : $01, $e6, $b2
	and $82                                                  ; $3051 : $e6, $82
	.db $ed                                                  ; $3053 : $ed
	call z, $40eb                                                  ; $3054 : $cc, $eb, $40
	ld c, $b4                                                  ; $3057 : $0e, $b4
	ex de, hl                                                  ; $3059 : $eb
	ld b, c                                                  ; $305a : $41
	ld l, l                                                  ; $305b : $6d
	jp (hl)                                                  ; $305c : $e9


	ld (hl), a                                                  ; $305d : $77
	ret pe                                                  ; $305e : $e8

	or h                                                  ; $305f : $b4
	pop hl                                                  ; $3060 : $e1
	ld (de), a                                                  ; $3061 : $12
	rst $10                                                  ; $3062 : $d7
	call nc, $0b39                                                  ; $3063 : $d4, $39, $0b
	ld b, l                                                  ; $3066 : $45
	or b                                                  ; $3067 : $b0
	and $6e                                                  ; $3068 : $e6, $6e
	ld c, $e6                                                  ; $306a : $0e, $e6
	jr nc, br_03_302a                                                  ; $306c : $30, $bc

	.db $ed                                                  ; $306e : $ed
	jp p, $c0e5                                                  ; $306f : $f2, $e5, $c0
	jp pe, $e7e2                                                  ; $3072 : $ea, $e2, $e7
	xor h                                                  ; $3075 : $ac
	or a                                                  ; $3076 : $b7
	ld a, (de)                                                  ; $3077 : $1a
	ld a, (bc)                                                  ; $3078 : $0a
	ret po                                                  ; $3079 : $e0

	jp c, $dce0                                                  ; $307a : $da, $e0, $dc
	call pe, Call_03_0f50                                                  ; $307d : $ec, $50, $0f
	or h                                                  ; $3080 : $b4
	sbc a, a                                                  ; $3081 : $9f
	push de                                                  ; $3082 : $d5
	push hl                                                  ; $3083 : $e5
	ld (hl), c                                                  ; $3084 : $71
	pop hl                                                  ; $3085 : $e1
	jr -$1b                                                  ; $3086 : $18, $e5

	push bc                                                  ; $3088 : $c5
	sub d                                                  ; $3089 : $92
	or (hl)                                                  ; $308a : $b6
	jp po, $70b6                                                  ; $308b : $e2, $b6, $70
	ld a, (bc)                                                  ; $308e : $0a
	jp pe, $eae1                                                  ; $308f : $ea, $e1, $ea
	ret nz                                                  ; $3092 : $c0

	.db $ed                                                  ; $3093 : $ed
	ld a, ($c91c)                                                  ; $3094 : $3a, $1c, $c9
	push hl                                                  ; $3097 : $e5
	dec h                                                  ; $3098 : $25
	ld l, h                                                  ; $3099 : $6c
	jp (hl)                                                  ; $309a : $e9


	add a, c                                                  ; $309b : $81
	rst $10                                                  ; $309c : $d7
	cp h                                                  ; $309d : $bc
	call pe, $966b                                                  ; $309e : $ec, $6b, $96
	and $0d                                                  ; $30a1 : $e6, $0d
	.db $ed                                                  ; $30a3 : $ed
	inc (hl)                                                  ; $30a4 : $34
	rst $20                                                  ; $30a5 : $e7
	ld c, h                                                  ; $30a6 : $4c
	rst $20                                                  ; $30a7 : $e7
	ld a, a                                                  ; $30a8 : $7f
	cp d                                                  ; $30a9 : $ba
	push hl                                                  ; $30aa : $e5
	jp p, $ed0c                                                  ; $30ab : $f2, $0c, $ed
	xor $e1                                                  ; $30ae : $ee, $e1
	ld c, c                                                  ; $30b0 : $49
	dec bc                                                  ; $30b1 : $0b
	and $e7                                                  ; $30b2 : $e6, $e7
	and $87                                                  ; $30b4 : $e6, $87
	jp (hl)                                                  ; $30b6 : $e9


	sbc a, e                                                  ; $30b7 : $9b
	ld de, $e08a                                                  ; $30b8 : $11, $8a, $e0
	sub d                                                  ; $30bb : $92
	or e                                                  ; $30bc : $b3
	call po, Call_03_1ed4                                                  ; $30bd : $e4, $d4, $1e
	or h                                                  ; $30c0 : $b4
	exx                                                  ; $30c1 : $d9
	.db $ed                                                  ; $30c2 : $ed
	and $ec                                                  ; $30c3 : $e6, $ec
	rlca                                                  ; $30c5 : $07
	sbc a, d                                                  ; $30c6 : $9a
	jp pe, Jump_03_0155                                                  ; $30c7 : $ea, $55, $01

Jump_03_30ca:
	ret po                                                  ; $30ca : $e0

	pop hl                                                  ; $30cb : $e1
	call po, $ed43                                                  ; $30cc : $e4, $43, $ed
	ld a, l                                                  ; $30cf : $7d
	add hl, bc                                                  ; $30d0 : $09
	and $77                                                  ; $30d1 : $e6, $77
	ld (hl), b                                                  ; $30d3 : $70
	jp pe, $e463                                                  ; $30d4 : $ea, $63, $e4
	adc a, a                                                  ; $30d7 : $8f
	sub e                                                  ; $30d8 : $93
	ld a, (bc)                                                  ; $30d9 : $0a
	and $9c                                                  ; $30da : $e6, $9c
	pop hl                                                  ; $30dc : $e1
	push af                                                  ; $30dd : $f5
	ret pe                                                  ; $30de : $e8

	ld (hl), $e8                                                  ; $30df : $36, $e8
	dec (hl)                                                  ; $30e1 : $35
	ld de, $ea0c                                                  ; $30e2 : $11, $0c, $ea
	ld h, d                                                  ; $30e5 : $62
	ex (sp), hl                                                  ; $30e6 : $e3
	adc a, (hl)                                                  ; $30e7 : $8e
	ld d, (hl)                                                  ; $30e8 : $56
	ret po                                                  ; $30e9 : $e0

	adc a, h                                                  ; $30ea : $8c
	ret po                                                  ; $30eb : $e0

	ret z                                                  ; $30ec : $c8

	.db $ed                                                  ; $30ed : $ed
	.db $fd                                                  ; $30ee : $fd
	ld d, $e7                                                  ; $30ef : $16, $e7
	ld (hl), d                                                  ; $30f1 : $72
	ld l, h                                                  ; $30f2 : $6c
	ld a, (bc)                                                  ; $30f3 : $0a
	push hl                                                  ; $30f4 : $e5
	xor $eb                                                  ; $30f5 : $ee, $eb
	ld c, a                                                  ; $30f7 : $4f
	out (c), a                                                  ; $30f8 : $ed, $79
	inc c                                                  ; $30fa : $0c
	adc a, d                                                  ; $30fb : $8a
	ret pe                                                  ; $30fc : $e8

	inc (hl)                                                  ; $30fd : $34
	ex (sp), hl                                                  ; $30fe : $e3
	sbc a, c                                                  ; $30ff : $99
	ld d, (hl)                                                  ; $3100 : $56

Jump_03_3101:
	jp pe, Jump_03_1628                                                  ; $3101 : $ea, $28, $16
	pop hl                                                  ; $3104 : $e1
	or c                                                  ; $3105 : $b1
	ld bc, $e239                                                  ; $3106 : $01, $39, $e2
	or a                                                  ; $3109 : $b7
	and $90                                                  ; $310a : $e6, $90
	add hl, bc                                                  ; $310c : $09
	or h                                                  ; $310d : $b4
	ret pe                                                  ; $310e : $e8

Call_03_310f:
	cp c                                                  ; $310f : $b9
	.db $ed                                                  ; $3110 : $ed
	inc h                                                  ; $3111 : $24
	ld h, l                                                  ; $3112 : $65
	cp l                                                  ; $3113 : $bd
	ld l, h                                                  ; $3114 : $6c
	ld a, (bc)                                                  ; $3115 : $0a
	xor $0e                                                  ; $3116 : $ee, $0e
	jp (hl)                                                  ; $3118 : $e9


	pop de                                                  ; $3119 : $d1
	push hl                                                  ; $311a : $e5
	cp b                                                  ; $311b : $b8
	ld (de), a                                                  ; $311c : $12
	inc c                                                  ; $311d : $0c
	call pe, $e3fc                                                  ; $311e : $ec, $fc, $e3
	ld d, a                                                  ; $3121 : $57
	rst $10                                                  ; $3122 : $d7
	call pe, $ed1c                                                  ; $3123 : $ec, $1c, $ed
	jp c, $ea00                                                  ; $3126 : $da, $00, $ea
	inc l                                                  ; $3129 : $2c
	nop                                                  ; $312a : $00
	call po, $6d5e                                                  ; $312b : $e4, $5e, $6d
	ld a, (bc)                                                  ; $312e : $0a
	call pe, $e1cb                                                  ; $312f : $ec, $cb, $e1
	xor e                                                  ; $3132 : $ab

br_03_3133:
	and $20                                                  ; $3133 : $e6, $20
	.db $ed                                                  ; $3135 : $ed
	djnz br_03_3147                                                  ; $3136 : $10, $0f
	res 6, h                                                  ; $3138 : $cb, $b4
	pop hl                                                  ; $313a : $e1
	call m, $70b3                                                  ; $313b : $fc, $b3, $70
	ret pe                                                  ; $313e : $e8

Call_03_313f:
	or e                                                  ; $313f : $b3
	ex de, hl                                                  ; $3140 : $eb
	ld (de), a                                                  ; $3141 : $12
	sub d                                                  ; $3142 : $92
	inc c                                                  ; $3143 : $0c
	pop hl                                                  ; $3144 : $e1
	and h                                                  ; $3145 : $a4
	dec bc                                                  ; $3146 : $0b

br_03_3147:
	ret pe                                                  ; $3147 : $e8

	jr br_03_3133                                                  ; $3148 : $18, $e9

	cp c                                                  ; $314a : $b9
	jp po, Jump_03_0959                                                  ; $314b : $e2, $59, $09
	or h                                                  ; $314e : $b4
	add a, a                                                  ; $314f : $87
	ld c, l                                                  ; $3150 : $4d
	jp po, $65bd                                                  ; $3151 : $e2, $bd, $65
	exx                                                  ; $3154 : $d9
	ld l, h                                                  ; $3155 : $6c
	ld a, (bc)                                                  ; $3156 : $0a
	jp pe, $e3b6                                                  ; $3157 : $ea, $b6, $e3
	ld c, d                                                  ; $315a : $4a
	pop hl                                                  ; $315b : $e1
	sub l                                                  ; $315c : $95
	ld a, (bc)                                                  ; $315d : $0a
	inc c                                                  ; $315e : $0c
	or c                                                  ; $315f : $b1
	sub d                                                  ; $3160 : $92
	xor $06                                                  ; $3161 : $ee, $06
	ld d, d                                                  ; $3163 : $52
	pop hl                                                  ; $3164 : $e1
	xor d                                                  ; $3165 : $aa
	ld l, (hl)                                                  ; $3166 : $6e
	ld a, (bc)                                                  ; $3167 : $0a
	jp pe, $eae8                                                  ; $3168 : $ea, $e8, $ea
	jp pe, $d7e1                                                  ; $316b : $ea, $e1, $d7
	dec c                                                  ; $316e : $0d
	or h                                                  ; $316f : $b4
	ld e, (hl)                                                  ; $3170 : $5e
	jp (hl)                                                  ; $3171 : $e9


	sub a                                                  ; $3172 : $97
	jp (hl)                                                  ; $3173 : $e9


	xor e                                                  ; $3174 : $ab
	ld h, e                                                  ; $3175 : $63
	jr nc, br_03_31e8                                                  ; $3176 : $30, $70

	ret pe                                                  ; $3178 : $e8

	or d                                                  ; $3179 : $b2
	sub d                                                  ; $317a : $92
	ld a, (bc)                                                  ; $317b : $0a
	ret pe                                                  ; $317c : $e8

	ld bc, $7ce2                                                  ; $317d : $01, $e2, $7c
	jp (hl)                                                  ; $3180 : $e9


	ret z                                                  ; $3181 : $c8

	inc c                                                  ; $3182 : $0c
	jp nc, $edbc                                                  ; $3183 : $d2, $bc, $ed
	jp p, $e85c                                                  ; $3186 : $f2, $5c, $e8
	set 4, a                                                  ; $3189 : $cb, $e7
	xor l                                                  ; $318b : $ad
	or a                                                  ; $318c : $b7
	ld a, (de)                                                  ; $318d : $1a
	ld a, (bc)                                                  ; $318e : $0a
	call pe, $ec51                                                  ; $318f : $ec, $51, $ec
	ld d, b                                                  ; $3192 : $50
	ret po                                                  ; $3193 : $e0

	call c, $c90e                                                  ; $3194 : $dc, $0e, $c9

Call_03_3197:
	ex de, hl                                                  ; $3197 : $eb
	add a, l                                                  ; $3198 : $85
	jp po, $e60b                                                  ; $3199 : $e2, $0b, $e6
	ld b, e                                                  ; $319c : $43
	xor (hl)                                                  ; $319d : $ae
	ld l, h                                                  ; $319e : $6c
	ld a, a                                                  ; $319f : $7f
	ld h, e                                                  ; $31a0 : $63
	jp pe, Jump_03_0bb9                                                  ; $31a1 : $ea, $b9, $0b
	ret pe                                                  ; $31a4 : $e8

	nop                                                  ; $31a5 : $00
	jp pe, $ede6                                                  ; $31a6 : $ea, $e6, $ed
	ld b, e                                                  ; $31a9 : $43
	ld (de), a                                                  ; $31aa : $12
	or h                                                  ; $31ab : $b4
	call po, $e256                                                  ; $31ac : $e4, $56, $e2
	ld l, $80                                                  ; $31af : $2e, $80
	sub d                                                  ; $31b1 : $92
	inc c                                                  ; $31b2 : $0c
	push hl                                                  ; $31b3 : $e5
	nop                                                  ; $31b4 : $00
	ex (sp), hl                                                  ; $31b5 : $e3
	ld ($ebd7), a                                                  ; $31b6 : $32, $d7, $eb
	ld a, e                                                  ; $31b9 : $7b
	ld l, (hl)                                                  ; $31ba : $6e
	inc c                                                  ; $31bb : $0c
	ld a, (bc)                                                  ; $31bc : $0a
	xor $0b                                                  ; $31bd : $ee, $0b
	xor $0c                                                  ; $31bf : $ee, $0c
	and $c2                                                  ; $31c1 : $e6, $c2
	inc c                                                  ; $31c3 : $0c
	inc c                                                  ; $31c4 : $0c
	rst $20                                                  ; $31c5 : $e7
	cp b                                                  ; $31c6 : $b8
	.db $ed                                                  ; $31c7 : $ed
	adc a, l                                                  ; $31c8 : $8d
	ld h, e                                                  ; $31c9 : $63
	pop hl                                                  ; $31ca : $e1
	rlca                                                  ; $31cb : $07
	.db $ed                                                  ; $31cc : $ed
	sub b                                                  ; $31cd : $90
	inc c                                                  ; $31ce : $0c
	ld a, (bc)                                                  ; $31cf : $0a
	jp (hl)                                                  ; $31d0 : $e9


	ld l, $e4                                                  ; $31d1 : $2e, $e4
	or a                                                  ; $31d3 : $b7
	and $da                                                  ; $31d4 : $e6, $da
	ld c, $c9                                                  ; $31d6 : $0e, $c9
	jp (hl)                                                  ; $31d8 : $e9


	ld (hl), a                                                  ; $31d9 : $77
	ld l, h                                                  ; $31da : $6c
	.db $ed                                                  ; $31db : $ed
	ld ($e763), a                                                  ; $31dc : $32, $63, $e7
	ld a, l                                                  ; $31df : $7d
	jp po, $e597                                                  ; $31e0 : $e2, $97, $e5
	sbc a, d                                                  ; $31e3 : $9a
	dec bc                                                  ; $31e4 : $0b
	jp po, $e2c9                                                  ; $31e5 : $e2, $c9, $e2

br_03_31e8:
	rst $00                                                  ; $31e8 : $c7
	jp po, Jump_03_0a98                                                  ; $31e9 : $e2, $98, $0a
	ret                                                  ; $31ec : $c9


	call pe, $e5eb                                                  ; $31ed : $ec, $eb, $e5
	sub h                                                  ; $31f0 : $94
	cp d                                                  ; $31f1 : $ba
	inc h                                                  ; $31f2 : $24
	or h                                                  ; $31f3 : $b4
	ld a, c                                                  ; $31f4 : $79
	dec bc                                                  ; $31f5 : $0b
	call po, $ec2b                                                  ; $31f6 : $e4, $2b, $ec
	ld l, c                                                  ; $31f9 : $69
	ex de, hl                                                  ; $31fa : $eb
	ld ($2c0f), a                                                  ; $31fb : $32, $0f, $2c
	ret                                                  ; $31fe : $c9


	adc a, c                                                  ; $31ff : $89
	jp Jump_03_23ee                                                  ; $3200 : $c3, $ee, $23


	cpl                                                  ; $3203 : $2f
	jp nc, $ed72                                                  ; $3204 : $d2, $72, $ed
	adc a, a                                                  ; $3207 : $8f
	ld hl, ($d3e2)                                                  ; $3208 : $2a, $e2, $d3
	dec bc                                                  ; $320b : $0b
	ex de, hl                                                  ; $320c : $eb

Call_03_320d:
	xor h                                                  ; $320d : $ac
	ex de, hl                                                  ; $320e : $eb
	and d                                                  ; $320f : $a2
	jp pe, $0e92                                                  ; $3210 : $ea, $92, $0e
	ret                                                  ; $3213 : $c9


	jp po, $ece1                                                  ; $3214 : $e2, $e1, $ec
	add hl, de                                                  ; $3217 : $19
	jp po, $e882                                                  ; $3218 : $e2, $82, $e8
	or h                                                  ; $321b : $b4
	jp pe, $e0f8                                                  ; $321c : $ea, $f8, $e0
	ex af, af'                                                  ; $321f : $08
	dec bc                                                  ; $3220 : $0b
	ret po                                                  ; $3221 : $e0

	push af                                                  ; $3222 : $f5
	ex de, hl                                                  ; $3223 : $eb
	cp e                                                  ; $3224 : $bb
	ret po                                                  ; $3225 : $e0

	pop de                                                  ; $3226 : $d1
	rst $20                                                  ; $3227 : $e7
	ld b, c                                                  ; $3228 : $41
	ld (de), a                                                  ; $3229 : $12
	ld h, c                                                  ; $322a : $61
	pop hl                                                  ; $322b : $e1
	add a, h                                                  ; $322c : $84
	ld a, (de)                                                  ; $322d : $1a
	jp pe, $6405                                                  ; $322e : $ea, $05, $64
	.db $ed                                                  ; $3231 : $ed
	pop hl                                                  ; $3232 : $e1
	cp d                                                  ; $3233 : $ba
	rst $20                                                  ; $3234 : $e7
	ld a, e                                                  ; $3235 : $7b
	inc c                                                  ; $3236 : $0c
	jp (hl)                                                  ; $3237 : $e9


	inc b                                                  ; $3238 : $04
	jp po, Jump_03_0bbb                                                  ; $3239 : $e2, $bb, $0b
	ld b, $09                                                  ; $323c : $06, $09
	dec b                                                  ; $323e : $05
	cp b                                                  ; $323f : $b8
	inc c                                                  ; $3240 : $0c
	call nc, $eb93                                                  ; $3241 : $d4, $93, $eb
	ld hl, ($81ea)                                                  ; $3244 : $2a, $ea, $81
	cp e                                                  ; $3247 : $bb
	ret pe                                                  ; $3248 : $e8

	cp d                                                  ; $3249 : $ba
	ret pe                                                  ; $324a : $e8

	ld h, b                                                  ; $324b : $60
	dec bc                                                  ; $324c : $0b
	ex de, hl                                                  ; $324d : $eb
	xor c                                                  ; $324e : $a9
	push hl                                                  ; $324f : $e5
	rst $00                                                  ; $3250 : $c7
	ex de, hl                                                  ; $3251 : $eb
	adc a, b                                                  ; $3252 : $88
	dec bc                                                  ; $3253 : $0b
	ret                                                  ; $3254 : $c9


	push hl                                                  ; $3255 : $e5
	inc de                                                  ; $3256 : $13

br_03_3257:
	ld l, h                                                  ; $3257 : $6c
	jp (hl)                                                  ; $3258 : $e9


	call c, Call_03_0c2c                                                  ; $3259 : $dc, $2c, $0c
	call po, Call_03_0bb6                                                  ; $325c : $e4, $b6, $0b
	ex (sp), hl                                                  ; $325f : $e3
	ld l, e                                                  ; $3260 : $6b
	jp (hl)                                                  ; $3261 : $e9


Call_03_3262:
	add a, (hl)                                                  ; $3262 : $86
	call po, Call_03_09bd                                                  ; $3263 : $e4, $bd, $09
	ret                                                  ; $3266 : $c9


	ld c, l                                                  ; $3267 : $4d
	pop hl                                                  ; $3268 : $e1
	jp (hl)                                                  ; $3269 : $e9


	xor $07                                                  ; $326a : $ee, $07
	ret po                                                  ; $326c : $e0

	ld de, $e60b                                                  ; $326d : $11, $0b, $e6
	cp a                                                  ; $3270 : $bf
	rst $20                                                  ; $3271 : $e7
	sbc a, l                                                  ; $3272 : $9d
	push hl                                                  ; $3273 : $e5
	adc a, l                                                  ; $3274 : $8d
	pop hl                                                  ; $3275 : $e1
	jp pe, $c90e                                                  ; $3276 : $ea, $0e, $c9
	ex de, hl                                                  ; $3279 : $eb
	ld a, (de)                                                  ; $327a : $1a
	sub d                                                  ; $327b : $92
	inc d                                                  ; $327c : $14
	ret pe                                                  ; $327d : $e8

	ret nc                                                  ; $327e : $d0

	ld b, c                                                  ; $327f : $41
	push hl                                                  ; $3280 : $e5
	or l                                                  ; $3281 : $b5
	pop hl                                                  ; $3282 : $e1
	add a, b                                                  ; $3283 : $80
	cp d                                                  ; $3284 : $ba
	dec bc                                                  ; $3285 : $0b
	call pe, $ed18                                                  ; $3286 : $ec, $18, $ed
	ret p                                                  ; $3289 : $f0

	jp (hl)                                                  ; $328a : $e9


	add hl, sp                                                  ; $328b : $39
	djnz br_03_3257                                                  ; $328c : $10, $c9
	ld (hl), $92                                                  ; $328e : $36, $92
	call po, $e616                                                  ; $3290 : $e4, $16, $e6
	xor d                                                  ; $3293 : $aa
	push hl                                                  ; $3294 : $e5
	and h                                                  ; $3295 : $a4
	ld h, h                                                  ; $3296 : $64
	pop hl                                                  ; $3297 : $e1
	ret nz                                                  ; $3298 : $c0

	inc l                                                  ; $3299 : $2c
	ex (sp), hl                                                  ; $329a : $e3

Call_03_329b:
	.db $dd                                                  ; $329b : $dd
	dec bc                                                  ; $329c : $0b
	pop hl                                                  ; $329d : $e1
	call pe, $cde8                                                  ; $329e : $ec, $e8, $cd
	push hl                                                  ; $32a1 : $e5
	add a, a                                                  ; $32a2 : $87
	add hl, bc                                                  ; $32a3 : $09
	.db $ed                                                  ; $32a4 : $ed
	or h                                                  ; $32a5 : $b4
	ld (hl), $92                                                  ; $32a6 : $36, $92
	ret pe                                                  ; $32a8 : $e8

	ld ($7563), hl                                                  ; $32a9 : $22, $63, $75
	dec bc                                                  ; $32ac : $0b
	ld h, $e1                                                  ; $32ad : $26, $e1
	or b                                                  ; $32af : $b0
	.db $ed                                                  ; $32b0 : $ed
	cp l                                                  ; $32b1 : $bd
	ld a, (bc)                                                  ; $32b2 : $0a
	ret                                                  ; $32b3 : $c9


	ld (hl), $6c                                                  ; $32b4 : $36, $6c
	and $81                                                  ; $32b6 : $e6, $81
	ex de, hl                                                  ; $32b8 : $eb
	jp nc, $56e2                                                  ; $32b9 : $d2, $e2, $56
	dec bc                                                  ; $32bc : $0b
	.db $ed                                                  ; $32bd : $ed
	cp l                                                  ; $32be : $bd
	push hl                                                  ; $32bf : $e5
	adc a, h                                                  ; $32c0 : $8c
	ld h, $0d                                                  ; $32c1 : $26, $0d
	ret                                                  ; $32c3 : $c9


	dec a                                                  ; $32c4 : $3d
	and $a8                                                  ; $32c5 : $e6, $a8
	ret po                                                  ; $32c7 : $e0

	ret pe                                                  ; $32c8 : $e8

	ldi                                                  ; $32c9 : $ed, $a0
	sub (hl)                                                  ; $32cb : $96
	ld e, a                                                  ; $32cc : $5f
	push hl                                                  ; $32cd : $e5
	push bc                                                  ; $32ce : $c5
	dec bc                                                  ; $32cf : $0b
	push hl                                                  ; $32d0 : $e5
	cp h                                                  ; $32d1 : $bc
	.db $ed                                                  ; $32d2 : $ed
	call nz, $fee8                                                  ; $32d3 : $c4, $e8, $fe
	jp (hl)                                                  ; $32d6 : $e9


	xor (hl)                                                  ; $32d7 : $ae
	ld c, $d4                                                  ; $32d8 : $0e, $d4
	jp (hl)                                                  ; $32da : $e9


	ld (hl), h                                                  ; $32db : $74
	call pe, $b45e                                                  ; $32dc : $ec, $5e, $b4
	rst $20                                                  ; $32df : $e7
	ld d, b                                                  ; $32e0 : $50

Jump_03_32e1:
	cp d                                                  ; $32e1 : $ba
	push hl                                                  ; $32e2 : $e5
	ld h, d                                                  ; $32e3 : $62
	ld e, $b5                                                  ; $32e4 : $1e, $b5

Jump_03_32e6:
	dec bc                                                  ; $32e6 : $0b
	rst $20                                                  ; $32e7 : $e7
	sbc a, c                                                  ; $32e8 : $99
	and $ba                                                  ; $32e9 : $e6, $ba
	jp (hl)                                                  ; $32eb : $e9


	adc a, b                                                  ; $32ec : $88
	rlca                                                  ; $32ed : $07
	call $7ee7                                                  ; $32ee : $cd, $e7, $7e
	push hl                                                  ; $32f1 : $e5
	ld d, a                                                  ; $32f2 : $57
	cpl                                                  ; $32f3 : $2f
	dec bc                                                  ; $32f4 : $0b
	pop hl                                                  ; $32f5 : $e1
	ret p                                                  ; $32f6 : $f0

	ex de, hl                                                  ; $32f7 : $eb
	jp m, $01e2                                                  ; $32f8 : $fa, $e2, $01
	inc c                                                  ; $32fb : $0c
	ret                                                  ; $32fc : $c9


	ld b, c                                                  ; $32fd : $41
	ex (sp), hl                                                  ; $32fe : $e3
	jp z, $53e7                                                  ; $32ff : $ca, $e7, $53
	ld l, d                                                  ; $3302 : $6a
	rst $10                                                  ; $3303 : $d7
	inc d                                                  ; $3304 : $14
	pop hl                                                  ; $3305 : $e1
	dec l                                                  ; $3306 : $2d
	dec bc                                                  ; $3307 : $0b
	call po, $e885                                                  ; $3308 : $e4, $85, $e8
	sub a                                                  ; $330b : $97
	ex (sp), hl                                                  ; $330c : $e3
	ld sp, hl                                                  ; $330d : $f9

Call_03_330e:
	ld c, $c9                                                  ; $330e : $0e, $c9
	ld (hl), $70                                                  ; $3310 : $36, $70
	call pe, $e1c9                                                  ; $3312 : $ec, $c9, $e1
	ld c, a                                                  ; $3315 : $4f
	sbc a, b                                                  ; $3316 : $98
	call po, $93ce                                                  ; $3317 : $e4, $ce, $93
	ret pe                                                  ; $331a : $e8

	ld h, d                                                  ; $331b : $62
	dec bc                                                  ; $331c : $0b

br_03_331d:
	push hl                                                  ; $331d : $e5
	add a, a                                                  ; $331e : $87
	pop hl                                                  ; $331f : $e1
	or b                                                  ; $3320 : $b0
	and h                                                  ; $3321 : $a4
	add hl, bc                                                  ; $3322 : $09
	ld h, c                                                  ; $3323 : $61
	ex de, hl                                                  ; $3324 : $eb
	ld h, h                                                  ; $3325 : $64
	ld b, b                                                  ; $3326 : $40
	inc d                                                  ; $3327 : $14
	ret pe                                                  ; $3328 : $e8

	and (hl)                                                  ; $3329 : $a6
	ld e, h                                                  ; $332a : $5c
	dec bc                                                  ; $332b : $0b
	ex af, af'                                                  ; $332c : $08
	dec b                                                  ; $332d : $05

br_03_332e:
	ld b, $e4                                                  ; $332e : $06, $e4
	.db $fd                                                  ; $3330 : $fd
	ld a, (bc)                                                  ; $3331 : $0a
	cpir                                                  ; $3332 : $ed, $b1
	ld a, c                                                  ; $3334 : $79
	sub c                                                  ; $3335 : $91
	rst $20                                                  ; $3336 : $e7
	jr c, br_03_331d                                                  ; $3337 : $38, $e4

	ld h, (hl)                                                  ; $3339 : $66
	dec hl                                                  ; $333a : $2b
	dec bc                                                  ; $333b : $0b
	call pe, $e7ba                                                  ; $333c : $ec, $ba, $e7
	ld h, l                                                  ; $333f : $65
	jp pe, Jump_03_1717                                                  ; $3340 : $ea, $17, $17
	call nc, $24e9                                                  ; $3343 : $d4, $e9, $24
	ld l, h                                                  ; $3346 : $6c
	and $dc                                                  ; $3347 : $e6, $dc
	ld d, c                                                  ; $3349 : $51
	ld e, a                                                  ; $334a : $5f
	ld c, l                                                  ; $334b : $4d
	jp pe, $ba99                                                  ; $334c : $ea, $99, $ba
	.db $ed                                                  ; $334f : $ed
	adc a, d                                                  ; $3350 : $8a
	or h                                                  ; $3351 : $b4
	sbc a, (hl)                                                  ; $3352 : $9e
	or e                                                  ; $3353 : $b3
	or h                                                  ; $3354 : $b4
	ld hl, ($e2c6)                                                  ; $3355 : $2a, $c6, $e2
	jp po, $e10b                                                  ; $3358 : $e2, $0b, $e1
	add a, a                                                  ; $335b : $87
	and $a3                                                  ; $335c : $e6, $a3
	jp (hl)                                                  ; $335e : $e9


	daa                                                  ; $335f : $27
	jp pe, Jump_03_1289                                                  ; $3360 : $ea, $89, $12
	and $b6                                                  ; $3363 : $e6, $b6
	ld b, $00                                                  ; $3365 : $06, $00
	ret po                                                  ; $3367 : $e0

	jr z, br_03_332e                                                  ; $3368 : $28, $c4

	ex (sp), hl                                                  ; $336a : $e3
	ld l, e                                                  ; $336b : $6b
	ld d, d                                                  ; $336c : $52
	ex de, hl                                                  ; $336d : $eb
	ld l, c                                                  ; $336e : $69
	ret pe                                                  ; $336f : $e8

	xor a                                                  ; $3370 : $af
	ld c, l                                                  ; $3371 : $4d
	ex (sp), hl                                                  ; $3372 : $e3
	rrc e                                                  ; $3373 : $cb, $0b
	ex (sp), hl                                                  ; $3375 : $e3
	ld (de), a                                                  ; $3376 : $12
	pop hl                                                  ; $3377 : $e1
	sbc a, c                                                  ; $3378 : $99
	ex (sp), hl                                                  ; $3379 : $e3
	ld a, d                                                  ; $337a : $7a
	rlca                                                  ; $337b : $07
	push de                                                  ; $337c : $d5
	ld l, e                                                  ; $337d : $6b
	or h                                                  ; $337e : $b4
	ld a, e                                                  ; $337f : $7b
	pop hl                                                  ; $3380 : $e1
	rst $38                                                  ; $3381 : $ff
	dec bc                                                  ; $3382 : $0b
	pop hl                                                  ; $3383 : $e1
	ld a, a                                                  ; $3384 : $7f
	push hl                                                  ; $3385 : $e5

br_03_3386:
	ld (bc), a                                                  ; $3386 : $02
	call po, $ec10                                                  ; $3387 : $e4, $10, $ec
	and c                                                  ; $338a : $a1
	ld c, $b4                                                  ; $338b : $0e, $b4
	call pe, $93bb                                                  ; $338d : $ec, $bb, $93
	ld b, (hl)                                                  ; $3390 : $46
	ld a, d                                                  ; $3391 : $7a
	sub d                                                  ; $3392 : $92
	push hl                                                  ; $3393 : $e5
	add a, b                                                  ; $3394 : $80
	ld l, h                                                  ; $3395 : $6c
	sbc a, $e7                                                  ; $3396 : $de, $e7
	ret pe                                                  ; $3398 : $e8

	ld bc, $99e2                                                  ; $3399 : $01, $e2, $99
	jp pe, $e918                                                  ; $339c : $ea, $18, $e9
	add a, $0c                                                  ; $339f : $c6, $0c
	ld h, c                                                  ; $33a1 : $61
	jp po, $e4d1                                                  ; $33a2 : $e2, $d1, $e4
	ld sp, hl                                                  ; $33a5 : $f9
	ret po                                                  ; $33a6 : $e0

	adc a, l                                                  ; $33a7 : $8d
	add hl, hl                                                  ; $33a8 : $29
	ld d, c                                                  ; $33a9 : $51
	and $42                                                  ; $33aa : $e6, $42
	dec bc                                                  ; $33ac : $0b
	add hl, bc                                                  ; $33ad : $09
	inc b                                                  ; $33ae : $04
	ret po                                                  ; $33af : $e0

	rra                                                  ; $33b0 : $1f
	call pe, Call_03_0d9f                                                  ; $33b1 : $ec, $9f, $0d
	ret                                                  ; $33b4 : $c9


	add hl, sp                                                  ; $33b5 : $39
	jp pe, Jump_03_0c05                                                  ; $33b6 : $ea, $05, $0c
	rst $20                                                  ; $33b9 : $e7
	add a, d                                                  ; $33ba : $82
	sbc a, b                                                  ; $33bb : $98
	add a, (hl)                                                  ; $33bc : $86
	ld h, e                                                  ; $33bd : $63
	ret po                                                  ; $33be : $e0

	scf                                                  ; $33bf : $37
	dec bc                                                  ; $33c0 : $0b
	inc sp                                                  ; $33c1 : $33
	and a                                                  ; $33c2 : $a7
	cp (hl)                                                  ; $33c3 : $be
	.db $ed                                                  ; $33c4 : $ed
	jr nc, br_03_3386                                                  ; $33c5 : $30, $bf

	dec b                                                  ; $33c7 : $05
	sub $4e                                                  ; $33c8 : $d6, $4e
	cp l                                                  ; $33ca : $bd
	and c                                                  ; $33cb : $a1
	dec bc                                                  ; $33cc : $0b
	ld a, h                                                  ; $33cd : $7c
	and $92                                                  ; $33ce : $e6, $92
	.db $ed                                                  ; $33d0 : $ed
	sub c                                                  ; $33d1 : $91
	push hl                                                  ; $33d2 : $e5
	ld b, h                                                  ; $33d3 : $44
	ld c, $c9                                                  ; $33d4 : $0e, $c9
	ret pe                                                  ; $33d6 : $e8

	ld e, d                                                  ; $33d7 : $5a
	sub e                                                  ; $33d8 : $93
	cp l                                                  ; $33d9 : $bd
	jp $dc03                                                  ; $33da : $c3, $03, $dc


	ret pe                                                  ; $33dd : $e8

	cp b                                                  ; $33de : $b8
	ld h, e                                                  ; $33df : $63
	ret po                                                  ; $33e0 : $e0

	ld (hl), $0b                                                  ; $33e1 : $36, $0b
	add a, e                                                  ; $33e3 : $83
	ld a, ($0730)                                                  ; $33e4 : $3a, $30, $07
	ret                                                  ; $33e7 : $c9


	and c                                                  ; $33e8 : $a1
	jp $e076                                                  ; $33e9 : $c3, $76, $e0


	rlca                                                  ; $33ec : $07
	dec bc                                                  ; $33ed : $0b
	.db $ed                                                  ; $33ee : $ed
	sub c                                                  ; $33ef : $91
	push hl                                                  ; $33f0 : $e5
	or h                                                  ; $33f1 : $b4
	ld a, h                                                  ; $33f2 : $7c
	ret po                                                  ; $33f3 : $e0

	ld l, e                                                  ; $33f4 : $6b
	inc d                                                  ; $33f5 : $14
	ret                                                  ; $33f6 : $c9


	add hl, sp                                                  ; $33f7 : $39
	jp po, $e663                                                  ; $33f8 : $e2, $63, $e6
	ld a, l                                                  ; $33fb : $7d
	cp $fe                                                  ; $33fc : $fe, $fe
	ld ($3030), a                                                  ; $33fe : $32, $30, $30
	ld d, h                                                  ; $3401 : $54
	ld c, b                                                  ; $3402 : $48
	rst $38                                                  ; $3403 : $ff
	pop hl                                                  ; $3404 : $e1
	and d                                                  ; $3405 : $a2
	ld h, e                                                  ; $3406 : $63
	ret po                                                  ; $3407 : $e0

	inc a                                                  ; $3408 : $3c
	dec bc                                                  ; $3409 : $0b
	ld d, h                                                  ; $340a : $54
	inc sp                                                  ; $340b : $33
	cp (hl)                                                  ; $340c : $be
	.db $ed                                                  ; $340d : $ed
	jr nc, -$41                                                  ; $340e : $30, $bf

	dec bc                                                  ; $3410 : $0b
	ret                                                  ; $3411 : $c9


	ret pe                                                  ; $3412 : $e8

	dec bc                                                  ; $3413 : $0b
	ld b, c                                                  ; $3414 : $41
	cp l                                                  ; $3415 : $bd
	and c                                                  ; $3416 : $a1
	call pe, $e85d                                                  ; $3417 : $ec, $5d, $e8
	or d                                                  ; $341a : $b2
	dec bc                                                  ; $341b : $0b
	rst $20                                                  ; $341c : $e7
	adc a, a                                                  ; $341d : $8f
	ret pe                                                  ; $341e : $e8

	sbc a, l                                                  ; $341f : $9d
	and $8e                                                  ; $3420 : $e6, $8e
	ld a, (bc)                                                  ; $3422 : $0a
	push hl                                                  ; $3423 : $e5
	push de                                                  ; $3424 : $d5
	call po, $e7e9                                                  ; $3425 : $e4, $e9, $e7
	adc a, c                                                  ; $3428 : $89
	ret                                                  ; $3429 : $c9


	jp (hl)                                                  ; $342a : $e9


	rst $18                                                  ; $342b : $df
	dec bc                                                  ; $342c : $0b
	jp po, $ecf4                                                  ; $342d : $e2, $f4, $ec
	ld (hl), l                                                  ; $3430 : $75
	jp po, $e14d                                                  ; $3431 : $e2, $4d, $e1
	inc sp                                                  ; $3434 : $33
	inc c                                                  ; $3435 : $0c
	ld h, (hl)                                                  ; $3436 : $66
	.db $ed                                                  ; $3437 : $ed
	ld c, $92                                                  ; $3438 : $0e, $92
	.db $ed                                                  ; $343a : $ed
	ld a, a                                                  ; $343b : $7f
	ld a, $e9                                                  ; $343c : $3e, $e9
	ld h, (hl)                                                  ; $343e : $66
	call pe, Call_03_0be5                                                  ; $343f : $ec, $e5, $0b
	ex de, hl                                                  ; $3442 : $eb
	rst $28                                                  ; $3443 : $ef
	ret pe                                                  ; $3444 : $e8

	cpl                                                  ; $3445 : $2f
	ex (sp), hl                                                  ; $3446 : $e3
	ld ($0ae3), a                                                  ; $3447 : $32, $e3, $0a
	dec c                                                  ; $344a : $0d
	ret                                                  ; $344b : $c9


	cp l                                                  ; $344c : $bd
	and c                                                  ; $344d : $a1
	push hl                                                  ; $344e : $e5
	jr nc, br_03_34b0                                                  ; $344f : $30, $5f

	adc a, c                                                  ; $3451 : $89
	cp d                                                  ; $3452 : $ba
	call pe, $e16e                                                  ; $3453 : $ec, $6e, $e1
	ld l, b                                                  ; $3456 : $68
	dec bc                                                  ; $3457 : $0b
	and $7f                                                  ; $3458 : $e6, $7f
	ret po                                                  ; $345a : $e0

	ld h, b                                                  ; $345b : $60
	call pe, $ec56                                                  ; $345c : $ec, $56, $ec
	ld l, a                                                  ; $345f : $6f
	jp pe, Jump_03_0cba                                                  ; $3460 : $ea, $ba, $0c
	adc a, $ec                                                  ; $3463 : $ce, $ec
	cp e                                                  ; $3465 : $bb
	sub e                                                  ; $3466 : $93
	ld e, (hl)                                                  ; $3467 : $5e
	ld b, (hl)                                                  ; $3468 : $46
	ret pe                                                  ; $3469 : $e8

	or e                                                  ; $346a : $b3
	sub d                                                  ; $346b : $92
	inc c                                                  ; $346c : $0c
	xor (hl)                                                  ; $346d : $ae
	dec bc                                                  ; $346e : $0b
	and c                                                  ; $346f : $a1
	jp po, $e575                                                  ; $3470 : $e2, $75, $e5
	ld l, a                                                  ; $3473 : $6f
	ld a, (bc)                                                  ; $3474 : $0a
	ld d, (hl)                                                  ; $3475 : $56
	call nc, Call_03_3e39                                                  ; $3476 : $d4, $39, $3e
	cp l                                                  ; $3479 : $bd
	push hl                                                  ; $347a : $e5
	ld hl, $42e6                                                  ; $347b : $21, $e6, $42
	dec bc                                                  ; $347e : $0b
	ld d, h                                                  ; $347f : $54
	xor e                                                  ; $3480 : $ab
	add hl, hl                                                  ; $3481 : $29
	push hl                                                  ; $3482 : $e5
	add a, b                                                  ; $3483 : $80
	ld c, c                                                  ; $3484 : $49
	ld a, (bc)                                                  ; $3485 : $0a

br_03_3486:
	call nc, $7ce4                                                  ; $3486 : $d4, $e4, $7c
	ex (sp), hl                                                  ; $3489 : $e3
	cp b                                                  ; $348a : $b8
	ld (de), a                                                  ; $348b : $12
	ld h, e                                                  ; $348c : $63
	ret po                                                  ; $348d : $e0

	ld hl, $e30b                                                  ; $348e : $21, $0b, $e3
	daa                                                  ; $3491 : $27
	rst $20                                                  ; $3492 : $e7
	ld (hl), c                                                  ; $3493 : $71
	jp po, $e2db                                                  ; $3494 : $e2, $db, $e2
	and l                                                  ; $3497 : $a5
	dec bc                                                  ; $3498 : $0b
	adc a, $ec                                                  ; $3499 : $ce, $ec
	cp e                                                  ; $349b : $bb
	sub e                                                  ; $349c : $93
	ld e, (hl)                                                  ; $349d : $5e
	ld b, (hl)                                                  ; $349e : $46
	ret pe                                                  ; $349f : $e8

	or e                                                  ; $34a0 : $b3
	ld h, l                                                  ; $34a1 : $65
	cp l                                                  ; $34a2 : $bd
	dec bc                                                  ; $34a3 : $0b
	jp po, $e575                                                  ; $34a4 : $e2, $75, $e5
	ld l, a                                                  ; $34a7 : $6f
	and c                                                  ; $34a8 : $a1
	inc c                                                  ; $34a9 : $0c
	call nc, Call_03_39eb                                                  ; $34aa : $d4, $eb, $39
	jp po, $b463                                                  ; $34ad : $e2, $63, $b4

br_03_34b0:
	ld c, (hl)                                                  ; $34b0 : $4e
	call pe, $6387                                                  ; $34b1 : $ec, $87, $63
	ld (de), a                                                  ; $34b4 : $12
	dec bc                                                  ; $34b5 : $0b
	jp pe, $550b                                                  ; $34b6 : $ea, $0b, $55
	jp (hl)                                                  ; $34b9 : $e9


	ld h, h                                                  ; $34ba : $64
	ld (de), a                                                  ; $34bb : $12
	ret                                                  ; $34bc : $c9


	add a, c                                                  ; $34bd : $81
	cp l                                                  ; $34be : $bd
	inc (hl)                                                  ; $34bf : $34
	jp $65e3                                                  ; $34c0 : $c3, $e3, $65


	inc l                                                  ; $34c3 : $2c
	inc d                                                  ; $34c4 : $14
	ex (sp), hl                                                  ; $34c5 : $e3
	cp $16                                                  ; $34c6 : $fe, $16
	call po, $63c7                                                  ; $34c8 : $e4, $c7, $63
	ret po                                                  ; $34cb : $e0

	cpl                                                  ; $34cc : $2f
	dec bc                                                  ; $34cd : $0b
	pop hl                                                  ; $34ce : $e1
	dec de                                                  ; $34cf : $1b
	ld ($e4ea), a                                                  ; $34d0 : $32, $ea, $e4
	inc de                                                  ; $34d3 : $13
	ret                                                  ; $34d4 : $c9


	add a, c                                                  ; $34d5 : $81
	cp l                                                  ; $34d6 : $bd

br_03_34d7:
	inc (hl)                                                  ; $34d7 : $34
	jp $92e3                                                  ; $34d8 : $c3, $e3, $92


	inc l                                                  ; $34db : $2c
	call po, $63c7                                                  ; $34dc : $e4, $c7, $63
	cp $fe                                                  ; $34df : $fe, $fe
	ld sp, $3738                                                  ; $34e1 : $31, $38, $37
	ld sp, $0bff                                                  ; $34e4 : $31, $ff, $0b
	ex (sp), hl                                                  ; $34e7 : $e3

Jump_03_34e8:
	ld h, h                                                  ; $34e8 : $64
	jp (hl)                                                  ; $34e9 : $e9


	ld c, (hl)                                                  ; $34ea : $4e
	ld ($b40a), a                                                  ; $34eb : $32, $0a, $b4
	rst $20                                                  ; $34ee : $e7
	inc hl                                                  ; $34ef : $23
	pop hl                                                  ; $34f0 : $e1
	ld a, a                                                  ; $34f1 : $7f
	ld l, h                                                  ; $34f2 : $6c
	ld a, a                                                  ; $34f3 : $7f
	ld h, a                                                  ; $34f4 : $67
	inc (hl)                                                  ; $34f5 : $34
	dec bc                                                  ; $34f6 : $0b
	jr z, br_03_3486                                                  ; $34f7 : $28, $8d

	jp (hl)                                                  ; $34f9 : $e9


	ld c, (hl)                                                  ; $34fa : $4e
	inc c                                                  ; $34fb : $0c
	ld d, (hl)                                                  ; $34fc : $56
	call nc, Call_03_3e39                                                  ; $34fd : $d4, $39, $3e
	ex de, hl                                                  ; $3500 : $eb
	pop af                                                  ; $3501 : $f1
	sub d                                                  ; $3502 : $92
	rst $20                                                  ; $3503 : $e7
	inc hl                                                  ; $3504 : $23
	jp po, Jump_03_0bde                                                  ; $3505 : $e2, $de, $0b
	ld c, c                                                  ; $3508 : $49
	pop hl                                                  ; $3509 : $e1
	ld a, h                                                  ; $350a : $7c
	ld d, h                                                  ; $350b : $54
	djnz br_03_34d7                                                  ; $350c : $10, $c9
	rla                                                  ; $350e : $17
	ld a, $e9                                                  ; $350f : $3e, $e9
	ld (hl), c                                                  ; $3511 : $71
	and $47                                                  ; $3512 : $e6, $47
	add a, a                                                  ; $3514 : $87
	ex (sp), hl                                                  ; $3515 : $e3
	adc a, h                                                  ; $3516 : $8c
	.db $ed                                                  ; $3517 : $ed
	daa                                                  ; $3518 : $27
	ld d, c                                                  ; $3519 : $51
	call po, Call_03_0be3                                                  ; $351a : $e4, $e3, $0b
	ex (sp), hl                                                  ; $351d : $e3
	ld a, l                                                  ; $351e : $7d
	ex de, hl                                                  ; $351f : $eb
	ld c, b                                                  ; $3520 : $48
	pop hl                                                  ; $3521 : $e1
	ld sp, hl                                                  ; $3522 : $f9
	pop hl                                                  ; $3523 : $e1
	and l                                                  ; $3524 : $a5
	rrca                                                  ; $3525 : $0f
	ret                                                  ; $3526 : $c9


	jp po, $c327                                                  ; $3527 : $e2, $27, $c3
	dec hl                                                  ; $352a : $2b
	cp d                                                  ; $352b : $ba
	ex (sp), hl                                                  ; $352c : $e3
	dec b                                                  ; $352d : $05
	or h                                                  ; $352e : $b4
	ld ($9c16), hl                                                  ; $352f : $22, $16, $9c
	ret pe                                                  ; $3532 : $e8

	xor e                                                  ; $3533 : $ab
	dec bc                                                  ; $3534 : $0b
	call po, $ec50                                                  ; $3535 : $e4, $50, $ec
	ld hl, ($01e9)                                                  ; $3538 : $2a, $e9, $01
	jp (hl)                                                  ; $353b : $e9


	ld (bc), a                                                  ; $353c : $02
	inc c                                                  ; $353d : $0c
	ret                                                  ; $353e : $c9


	jp c, $bd3e                                                  ; $353f : $da, $3e, $bd
	and $aa                                                  ; $3542 : $e6, $aa
	ld h, e                                                  ; $3544 : $63
	ld c, e                                                  ; $3545 : $4b
	ld h, e                                                  ; $3546 : $63
	ret po                                                  ; $3547 : $e0

	jr nc, br_03_3555                                                  ; $3548 : $30, $0b

	cp h                                                  ; $354a : $bc
	cp b                                                  ; $354b : $b8
	sbc a, c                                                  ; $354c : $99
	and $25                                                  ; $354d : $e6, $25
	ld c, (hl)                                                  ; $354f : $4e
	ret po                                                  ; $3550 : $e0

	ld a, (de)                                                  ; $3551 : $1a
	ld de, $e114                                                  ; $3552 : $11, $14, $e1

br_03_3555:
	ld b, $e7                                                  ; $3555 : $06, $e7
	xor (hl)                                                  ; $3557 : $ae
	cp d                                                  ; $3558 : $ba
	rst $20                                                  ; $3559 : $e7
	nop                                                  ; $355a : $00
	ex (sp), hl                                                  ; $355b : $e3
	jp c, $16de                                                  ; $355c : $da, $de, $16
	call po, $e438                                                  ; $355f : $e4, $38, $e4
	cp a                                                  ; $3562 : $bf
	ld bc, $00ee                                                  ; $3563 : $01, $ee, $00
	push hl                                                  ; $3566 : $e5
	adc a, d                                                  ; $3567 : $8a
	.db $ed                                                  ; $3568 : $ed
	sbc a, a                                                  ; $3569 : $9f
	pop hl                                                  ; $356a : $e1
	ex af, af'                                                  ; $356b : $08
	rrca                                                  ; $356c : $0f
	ld e, c                                                  ; $356d : $59
	nop                                                  ; $356e : $00

br_03_356f:
	ld (hl), e                                                  ; $356f : $73
	ld d, $de                                                  ; $3570 : $16, $de
	ld b, e                                                  ; $3572 : $43
	jp c, Jump_03_32e6                                                  ; $3573 : $da, $e6, $32
	add a, $76                                                  ; $3576 : $c6, $76
	or h                                                  ; $3578 : $b4
	pop hl                                                  ; $3579 : $e1
	add hl, sp                                                  ; $357a : $39
	ld bc, $33a7                                                  ; $357b : $01, $a7, $33

br_03_357e:
	ld (hl), l                                                  ; $357e : $75
	ld de, $edb4                                                  ; $357f : $11, $b4, $ed
	ld d, $e6                                                  ; $3582 : $16, $e6
	ld (hl), l                                                  ; $3584 : $75
	ret pe                                                  ; $3585 : $e8

	rst $10                                                  ; $3586 : $d7
	sub d                                                  ; $3587 : $92
	sbc a, $ba                                                  ; $3588 : $de, $ba
	push hl                                                  ; $358a : $e5
	pop de                                                  ; $358b : $d1
	ex (sp), hl                                                  ; $358c : $e3
	cpl                                                  ; $358d : $2f
	ex (sp), hl                                                  ; $358e : $e3
	rra                                                  ; $358f : $1f
	ld bc, $bbe9                                                  ; $3590 : $01, $e9, $bb
	ret pe                                                  ; $3593 : $e8

	ld h, h                                                  ; $3594 : $64
	ret pe                                                  ; $3595 : $e8

	ld b, l                                                  ; $3596 : $45
	dec bc                                                  ; $3597 : $0b
	ret pe                                                  ; $3598 : $e8

	ld e, e                                                  ; $3599 : $5b
	pop hl                                                  ; $359a : $e1
	add hl, bc                                                  ; $359b : $09
	call nz, $e74e                                                  ; $359c : $c4, $4e, $e7
	add a, d                                                  ; $359f : $82
	sbc a, b                                                  ; $35a0 : $98
	sbc a, $01                                                  ; $35a1 : $de, $01
	ex de, hl                                                  ; $35a3 : $eb
	ld a, l                                                  ; $35a4 : $7d
	ret pe                                                  ; $35a5 : $e8

	adc a, a                                                  ; $35a6 : $8f
	add a, (hl)                                                  ; $35a7 : $86
	dec bc                                                  ; $35a8 : $0b
	sub $4e                                                  ; $35a9 : $d6, $4e
	cp l                                                  ; $35ab : $bd
	and c                                                  ; $35ac : $a1
	cp d                                                  ; $35ad : $ba
	jp pe, $567a                                                  ; $35ae : $ea, $7a, $56
	ret pe                                                  ; $35b1 : $e8

	or d                                                  ; $35b2 : $b2
	dec bc                                                  ; $35b3 : $0b
	call po, $e2e9                                                  ; $35b4 : $e4, $e9, $e2
	ld c, (hl)                                                  ; $35b7 : $4e
	ret pe                                                  ; $35b8 : $e8

	ld a, a                                                  ; $35b9 : $7f
	jp pe, Jump_03_0896                                                  ; $35ba : $ea, $96, $08
	call nc, $eb39                                                  ; $35bd : $d4, $39, $eb
	sbc a, e                                                  ; $35c0 : $9b
	djnz br_03_357e                                                  ; $35c1 : $10, $bb
	cp l                                                  ; $35c3 : $bd
	dec bc                                                  ; $35c4 : $0b
	inc sp                                                  ; $35c5 : $33
	jr nc, br_03_356f                                                  ; $35c6 : $30, $a7

	ex af, af'                                                  ; $35c8 : $08
	ld h, c                                                  ; $35c9 : $61
	call c, $e141                                                  ; $35ca : $dc, $41, $e1
	sub e                                                  ; $35cd : $93
	jp po, Jump_03_0b62                                                  ; $35ce : $e2, $62, $0b
	ret po                                                  ; $35d1 : $e0

	ld b, h                                                  ; $35d2 : $44
	cp $fe                                                  ; $35d3 : $fe, $fe
	ld ($3035), a                                                  ; $35d5 : $32, $35, $30
	rst $38                                                  ; $35d8 : $ff
	ret po                                                  ; $35d9 : $e0

	ld b, l                                                  ; $35da : $45
	djnz -$2d                                                  ; $35db : $10, $d3
	ld h, e                                                  ; $35dd : $63
	adc a, h                                                  ; $35de : $8c
	ld c, c                                                  ; $35df : $49
	ld a, $e9                                                  ; $35e0 : $3e, $e9
	ld h, h                                                  ; $35e2 : $64
	ld c, (hl)                                                  ; $35e3 : $4e
	ex de, hl                                                  ; $35e4 : $eb
	scf                                                  ; $35e5 : $37
	call po, $96e5                                                  ; $35e6 : $e4, $e5, $96
	ex de, hl                                                  ; $35e9 : $eb
	ld d, e                                                  ; $35ea : $53
	dec bc                                                  ; $35eb : $0b
	rst $20                                                  ; $35ec : $e7
	add a, h                                                  ; $35ed : $84
	jp (hl)                                                  ; $35ee : $e9


	rst $30                                                  ; $35ef : $f7
	jp (hl)                                                  ; $35f0 : $e9


	adc a, e                                                  ; $35f1 : $8b
	ld de, $e5d0                                                  ; $35f2 : $11, $d0, $e5
	dec b                                                  ; $35f5 : $05
	cpd                                                  ; $35f6 : $ed, $a9
	jp (hl)                                                  ; $35f8 : $e9


	ld h, h                                                  ; $35f9 : $64
	ex de, hl                                                  ; $35fa : $eb
	jr nz, -$2e                                                  ; $35fb : $20, $d2

	or a                                                  ; $35fd : $b7
	jp po, $bb20                                                  ; $35fe : $e2, $20, $bb
	adc a, h                                                  ; $3601 : $8c
	exx                                                  ; $3602 : $d9
	dec bc                                                  ; $3603 : $0b
	call po, $e9c4                                                  ; $3604 : $e4, $c4, $e9
	sub a                                                  ; $3607 : $97
	jp pe, Jump_03_0f63                                                  ; $3608 : $ea, $63, $0f
	push de                                                  ; $360b : $d5
	jp $d4e6                                                  ; $360c : $c3, $e6, $d4


	ld h, e                                                  ; $360f : $63
	ld c, c                                                  ; $3610 : $49
	.db $ed                                                  ; $3611 : $ed
	or a                                                  ; $3612 : $b7
	inc de                                                  ; $3613 : $13
	jp pe, $c38b                                                  ; $3614 : $ea, $8b, $c3
	call po, Call_03_0bf9                                                  ; $3617 : $e4, $f9, $0b
	push hl                                                  ; $361a : $e5
	ret c                                                  ; $361b : $d8

	and $8b                                                  ; $361c : $e6, $8b

Call_03_361e:
	push hl                                                  ; $361e : $e5
	ld b, e                                                  ; $361f : $43
	push hl                                                  ; $3620 : $e5
	ld b, l                                                  ; $3621 : $45
	push hl                                                  ; $3622 : $e5
	ld b, d                                                  ; $3623 : $42
	and $d6                                                  ; $3624 : $e6, $d6
	ld c, $d5                                                  ; $3626 : $0e, $d5
	jp po, $ba20                                                  ; $3628 : $e2, $20, $ba
	ex de, hl                                                  ; $362b : $eb
	ld a, $c9                                                  ; $362c : $3e, $c9
	pop hl                                                  ; $362e : $e1
	ld l, h                                                  ; $362f : $6c
	or h                                                  ; $3630 : $b4
	inc de                                                  ; $3631 : $13
	call po, Call_03_0bce                                                  ; $3632 : $e4, $ce, $0b
	rst $20                                                  ; $3635 : $e7
	sbc a, d                                                  ; $3636 : $9a
	ex (sp), hl                                                  ; $3637 : $e3
	pop de                                                  ; $3638 : $d1
	pop hl                                                  ; $3639 : $e1
	adc a, a                                                  ; $363a : $8f
	jp pe, $11bf                                                  ; $363b : $ea, $bf, $11

Jump_03_363e:
	out ($3e), a                                                  ; $363e : $d3, $3e
	inc de                                                  ; $3640 : $13
	pop hl                                                  ; $3641 : $e1
	ld a, (bc)                                                  ; $3642 : $0a
	ex de, hl                                                  ; $3643 : $eb
	call nz, $4eb6                                                  ; $3644 : $c4, $b6, $4e
	push hl                                                  ; $3647 : $e5
	or e                                                  ; $3648 : $b3
	.db $ed                                                  ; $3649 : $ed
	rst $18                                                  ; $364a : $df
	sub d                                                  ; $364b : $92
	call po, Call_03_0b37                                                  ; $364c : $e4, $37, $0b
	jp po, $e522                                                  ; $364f : $e2, $22, $e5
	ld d, b                                                  ; $3652 : $50
	.db $ed                                                  ; $3653 : $ed
	inc a                                                  ; $3654 : $3c
	rlca                                                  ; $3655 : $07
	sub $4e                                                  ; $3656 : $d6, $4e
	out (c), e                                                  ; $3658 : $ed, $59
	sub e                                                  ; $365a : $93
	cp a                                                  ; $365b : $bf
	dec bc                                                  ; $365c : $0b
	ret po                                                  ; $365d : $e0

	and b                                                  ; $365e : $a0
	ret po                                                  ; $365f : $e0

	ld h, h                                                  ; $3660 : $64
	and $a0                                                  ; $3661 : $e6, $a0
	ret po                                                  ; $3663 : $e0

	ld a, (hl)                                                  ; $3664 : $7e
	inc c                                                  ; $3665 : $0c
	call nc, Call_03_36e5                                                  ; $3666 : $d4, $e5, $36
	rst $20                                                  ; $3669 : $e7
	dec c                                                  ; $366a : $0d
	or h                                                  ; $366b : $b4
	pop hl                                                  ; $366c : $e1
	dec b                                                  ; $366d : $05
	sub e                                                  ; $366e : $93
	jp po, Jump_03_0bfe                                                  ; $366f : $e2, $fe, $0b
	.db $ed                                                  ; $3672 : $ed
	ld (de), a                                                  ; $3673 : $12
	.db $ed                                                  ; $3674 : $ed
	call $a8ea                                                  ; $3675 : $cd, $ea, $a8
	rst $20                                                  ; $3678 : $e7
	ld c, $1e                                                  ; $3679 : $0e, $1e
	push de                                                  ; $367b : $d5
	cpd                                                  ; $367c : $ed, $a9
	sbc a, (hl)                                                  ; $367e : $9e
	push de                                                  ; $367f : $d5
	call po, $b4d4                                                  ; $3680 : $e4, $d4, $b4
	ld c, (hl)                                                  ; $3683 : $4e
	ret pe                                                  ; $3684 : $e8

	dec e                                                  ; $3685 : $1d
	ret po                                                  ; $3686 : $e0

	sub d                                                  ; $3687 : $92
	ld hl, $d8e6                                                  ; $3688 : $21, $e6, $d8
	push hl                                                  ; $368b : $e5

br_03_368c:
	jp nz, $e800                                                  ; $368c : $c2, $00, $e8
	inc a                                                  ; $368f : $3c
	ld h, e                                                  ; $3690 : $63
	cp $fe                                                  ; $3691 : $fe, $fe
	ld sp, $3039                                                  ; $3693 : $31, $39, $30
	inc sp                                                  ; $3696 : $33
	rst $38                                                  ; $3697 : $ff
	dec bc                                                  ; $3698 : $0b
	ex de, hl                                                  ; $3699 : $eb
	adc a, c                                                  ; $369a : $89
	.db $ed                                                  ; $369b : $ed
	jr nz, br_03_368c                                                  ; $369c : $20, $ee

	ld bc, $02ee                                                  ; $369e : $01, $ee, $02
	ld (de), a                                                  ; $36a1 : $12
	call nc, $e3bc                                                  ; $36a2 : $d4, $bc, $e3
	cpl                                                  ; $36a5 : $2f
	push hl                                                  ; $36a6 : $e5
	ret nz                                                  ; $36a7 : $c0

	in a, ($e7)                                                  ; $36a8 : $db, $e7
	ld d, b                                                  ; $36aa : $50
	.db $ed                                                  ; $36ab : $ed
	dec de                                                  ; $36ac : $1b
	pop hl                                                  ; $36ad : $e1
	call nz, $be0b                                                  ; $36ae : $c4, $0b, $be
	ld d, $de                                                  ; $36b1 : $16, $de
	ld bc, $8310                                                  ; $36b3 : $01, $10, $83
	jr nc, br_03_36bf                                                  ; $36b6 : $30, $07

	and $8c                                                  ; $36b8 : $e6, $8c
	ld l, e                                                  ; $36ba : $6b
	or h                                                  ; $36bb : $b4
	rst $20                                                  ; $36bc : $e7
	push af                                                  ; $36bd : $f5
	ld a, (bc)                                                  ; $36be : $0a

br_03_36bf:
	.db $ed                                                  ; $36bf : $ed
	jp po, Jump_03_32e1                                                  ; $36c0 : $e2, $e1, $32
	ex de, hl                                                  ; $36c3 : $eb
	call p, $6315                                                  ; $36c4 : $f4, $15, $63
	cp $fe                                                  ; $36c7 : $fe, $fe
	ld sp, $3038                                                  ; $36c9 : $31, $38, $30
	scf                                                  ; $36cc : $37
	rst $38                                                  ; $36cd : $ff
	jp pe, $e5a7                                                  ; $36ce : $ea, $a7, $e5
	add hl, de                                                  ; $36d1 : $19
	jp po, $e1b5                                                  ; $36d2 : $e2, $b5, $e1
	ld l, h                                                  ; $36d5 : $6c
	or h                                                  ; $36d6 : $b4
	ld c, (hl)                                                  ; $36d7 : $4e
	call pe, Call_03_0a25                                                  ; $36d8 : $ec, $25, $0a
	jp po, $eabc                                                  ; $36db : $e2, $bc, $ea
	add hl, hl                                                  ; $36de : $29
	ex de, hl                                                  ; $36df : $eb

br_03_36e0:
	push af                                                  ; $36e0 : $f5
	inc c                                                  ; $36e1 : $0c
	push de                                                  ; $36e2 : $d5
	jp (hl)                                                  ; $36e3 : $e9


Jump_03_36e4:
	cp h                                                  ; $36e4 : $bc

Call_03_36e5:
	ret pe                                                  ; $36e5 : $e8

	jp (hl)                                                  ; $36e6 : $e9


	or h                                                  ; $36e7 : $b4
	cp l                                                  ; $36e8 : $bd
	call pe, $e33c                                                  ; $36e9 : $ec, $3c, $e3
	ld sp, $e60b                                                  ; $36ec : $31, $0b, $e6
	inc de                                                  ; $36ef : $13
	call pe, $e23d                                                  ; $36f0 : $ec, $3d, $e2
	sbc a, d                                                  ; $36f3 : $9a
	ld a, (bc)                                                  ; $36f4 : $0a
	cpdr                                                  ; $36f5 : $ed, $b9
	.db $ed                                                  ; $36f7 : $ed
	jr z, br_03_36e0                                                  ; $36f8 : $28, $e6

	ld (de), a                                                  ; $36fa : $12
	sub d                                                  ; $36fb : $92
	ex (sp), hl                                                  ; $36fc : $e3
	ld (bc), a                                                  ; $36fd : $02
	dec bc                                                  ; $36fe : $0b
	and $13                                                  ; $36ff : $e6, $13
	call pe, $eb3d                                                  ; $3701 : $ec, $3d, $eb
	ld h, $16                                                  ; $3704 : $26, $16
	res 6, h                                                  ; $3706 : $cb, $b4
	push hl                                                  ; $3708 : $e5
	sub c                                                  ; $3709 : $91
	sub d                                                  ; $370a : $92
	sbc a, (hl)                                                  ; $370b : $9e
	push de                                                  ; $370c : $d5
	push hl                                                  ; $370d : $e5
	pop de                                                  ; $370e : $d1
	or h                                                  ; $370f : $b4
	and c                                                  ; $3710 : $a1
	jp pe, $b4ca                                                  ; $3711 : $ea, $ca, $b4
	call po, $e170                                                  ; $3714 : $e4, $70, $e1
	jp c, $e592                                                  ; $3717 : $da, $92, $e5
	ld l, (hl)                                                  ; $371a : $6e
	dec bc                                                  ; $371b : $0b
	jp po, $e0a8                                                  ; $371c : $e2, $a8, $e0
	push hl                                                  ; $371f : $e5
	jp po, $0d12                                                  ; $3720 : $e2, $12, $0d
	ex de, hl                                                  ; $3723 : $eb
	jr z, $1a                                                  ; $3724 : $28, $1a

	ld b, (hl)                                                  ; $3726 : $46
	ld d, c                                                  ; $3727 : $51
	inc c                                                  ; $3728 : $0c
	or d                                                  ; $3729 : $b2

br_03_372a:
	sub d                                                  ; $372a : $92
	ld h, b                                                  ; $372b : $60
	rst $20                                                  ; $372c : $e7
	adc a, e                                                  ; $372d : $8b
	call c, Call_03_060b                                                  ; $372e : $dc, $0b, $06
	ret po                                                  ; $3731 : $e0

	ld b, e                                                  ; $3732 : $43
	ex af, af'                                                  ; $3733 : $08
	ex de, hl                                                  ; $3734 : $eb
	ld (hl), h                                                  ; $3735 : $74
	rrca                                                  ; $3736 : $0f
	call nc, Call_03_12e2                                                  ; $3737 : $d4, $e2, $12
	rst $20                                                  ; $373a : $e7
	jp nz, $636c                                                  ; $373b : $c2, $6c, $63
	jp po, $9284                                                  ; $373e : $e2, $84, $92
	call po, $e0eb                                                  ; $3741 : $e4, $eb, $e0
	adc a, c                                                  ; $3744 : $89
	dec bc                                                  ; $3745 : $0b
	ex de, hl                                                  ; $3746 : $eb
	jr br_03_372a                                                  ; $3747 : $18, $e1

	add hl, hl                                                  ; $3749 : $29
	ex de, hl                                                  ; $374a : $eb
	add hl, de                                                  ; $374b : $19
	xor (hl)                                                  ; $374c : $ae
	dec d                                                  ; $374d : $15
	call nc, $e24d                                                  ; $374e : $d4, $4d, $e2
	daa                                                  ; $3751 : $27
	ld h, e                                                  ; $3752 : $63
	adc a, l                                                  ; $3753 : $8d
	xor (hl)                                                  ; $3754 : $ae
	add a, b                                                  ; $3755 : $80
	ld (hl), d                                                  ; $3756 : $72
	call po, $5100                                                  ; $3757 : $e4, $00, $51
	call pe, $92a5                                                  ; $375a : $ec, $a5, $92
	sbc a, (hl)                                                  ; $375d : $9e
	cp d                                                  ; $375e : $ba
	ret pe                                                  ; $375f : $e8

	dec h                                                  ; $3760 : $25
	rst $00                                                  ; $3761 : $c7
	dec bc                                                  ; $3762 : $0b
	call pe, $e92a                                                  ; $3763 : $ec, $2a, $e9
	ld bc, $50e4                                                  ; $3766 : $01, $e4, $50
	call po, Call_03_0b51                                                  ; $3769 : $e4, $51, $0b
	lddr                                                  ; $376c : $ed, $b8
	ld c, (hl)                                                  ; $376e : $4e
	jp pe, Jump_03_0c05                                                  ; $376f : $ea, $05, $0c
	rst $20                                                  ; $3772 : $e7
	add a, d                                                  ; $3773 : $82
	ld l, d                                                  ; $3774 : $6a
	xor d                                                  ; $3775 : $aa
	dec bc                                                  ; $3776 : $0b
	cp (hl)                                                  ; $3777 : $be
	ld (hl), l                                                  ; $3778 : $75
	and a                                                  ; $3779 : $a7
	.db $ed                                                  ; $377a : $ed
	dec (hl)                                                  ; $377b : $35
	ex de, hl                                                  ; $377c : $eb
	or h                                                  ; $377d : $b4
	.db $ed                                                  ; $377e : $ed
	inc de                                                  ; $377f : $13
	dec bc                                                  ; $3780 : $0b
	adc a, d                                                  ; $3781 : $8a
	pop hl                                                  ; $3782 : $e1
	ld a, a                                                  ; $3783 : $7f
	call nc, $6fea                                                  ; $3784 : $d4, $ea, $6f
	push hl                                                  ; $3787 : $e5
	dec b                                                  ; $3788 : $05
	ld h, e                                                  ; $3789 : $63
	ld (de), a                                                  ; $378a : $12
	ld bc, $05e5                                                  ; $378b : $01, $e5, $05
	and $bc                                                  ; $378e : $e6, $bc
	rst $20                                                  ; $3790 : $e7
	inc hl                                                  ; $3791 : $23
	rst $20                                                  ; $3792 : $e7
	inc h                                                  ; $3793 : $24
	dec c                                                  ; $3794 : $0d
	adc a, d                                                  ; $3795 : $8a
	ld c, (hl)                                                  ; $3796 : $4e
	rst $20                                                  ; $3797 : $e7
	add a, d                                                  ; $3798 : $82
	cp d                                                  ; $3799 : $ba
	.db $ed                                                  ; $379a : $ed
	add a, c                                                  ; $379b : $81
	sbc a, b                                                  ; $379c : $98
	call pe, $933f                                                  ; $379d : $ec, $3f, $93
	add a, (hl)                                                  ; $37a0 : $86
	ld bc, $5fe5                                                  ; $37a1 : $01, $e5, $5f
	ex de, hl                                                  ; $37a4 : $eb
	ld c, h                                                  ; $37a5 : $4c
	pop hl                                                  ; $37a6 : $e1
	add hl, bc                                                  ; $37a7 : $09
	ret pe                                                  ; $37a8 : $e8

	ld e, h                                                  ; $37a9 : $5c
	djnz $0c                                                  ; $37aa : $10, $0c
	call pe, $eadc                                                  ; $37ac : $ec, $dc, $ea
	add hl, hl                                                  ; $37af : $29
	.db $ed                                                  ; $37b0 : $ed
	rst $38                                                  ; $37b1 : $ff
	ex (sp), hl                                                  ; $37b2 : $e3
	dec b                                                  ; $37b3 : $05
	or h                                                  ; $37b4 : $b4
	ret z                                                  ; $37b5 : $c8

	xor a                                                  ; $37b6 : $af
	ld d, $b4                                                  ; $37b7 : $16, $b4
	sbc a, $01                                                  ; $37b9 : $de, $01
	adc a, (hl)                                                  ; $37bb : $8e
	xor c                                                  ; $37bc : $a9
	ld b, h                                                  ; $37bd : $44
	call po, Call_03_0c04                                                  ; $37be : $e4, $04, $0c
	ldir                                                  ; $37c1 : $ed, $b0
	or h                                                  ; $37c3 : $b4
	ex de, hl                                                  ; $37c4 : $eb

Call_03_37c5:
	jp (hl)                                                  ; $37c5 : $e9


	sbc a, b                                                  ; $37c6 : $98
	inc de                                                  ; $37c7 : $13
	call po, $eace                                                  ; $37c8 : $e4, $ce, $ea
	ld l, e                                                  ; $37cb : $6b
	dec bc                                                  ; $37cc : $0b
	pop hl                                                  ; $37cd : $e1
	ld h, c                                                  ; $37ce : $61
	jp (hl)                                                  ; $37cf : $e9


	cp e                                                  ; $37d0 : $bb
	xor a                                                  ; $37d1 : $af
	dec bc                                                  ; $37d2 : $0b
	call nc, $e1c2                                                  ; $37d3 : $d4, $c2, $e1
	ld (hl), a                                                  ; $37d6 : $77
	ld hl, $22e7                                                  ; $37d7 : $21, $e7, $22
	ld d, $e2                                                  ; $37da : $16, $e2
	or $0b                                                  ; $37dc : $f6, $0b
	call po, $e851                                                  ; $37de : $e4, $51, $e8
	jp nc, $8dea                                                  ; $37e1 : $d2, $ea, $8d
	inc c                                                  ; $37e4 : $0c
	adc a, d                                                  ; $37e5 : $8a
	cp l                                                  ; $37e6 : $bd

Jump_03_37e7:
	xor d                                                  ; $37e7 : $aa

Call_03_37e8:
	ex de, hl                                                  ; $37e8 : $eb
	ld h, b                                                  ; $37e9 : $60
	or e                                                  ; $37ea : $b3
	call po, $0e79                                                  ; $37eb : $e4, $79, $0e
	and $f9                                                  ; $37ee : $e6, $f9
	ld bc, $1de1                                                  ; $37f0 : $01, $e1, $1d
	ex (sp), hl                                                  ; $37f3 : $e3
	ret m                                                  ; $37f4 : $f8

	jp po, Jump_03_1176                                                  ; $37f5 : $e2, $76, $11
	or h                                                  ; $37f8 : $b4
	cp b                                                  ; $37f9 : $b8
	add a, c                                                  ; $37fa : $81
	ex de, hl                                                  ; $37fb : $eb
	dec de                                                  ; $37fc : $1b
	ld h, l                                                  ; $37fd : $65
	cp l                                                  ; $37fe : $bd
	ld c, $e0                                                  ; $37ff : $0e, $e0
	ld hl, ($8ec6)                                                  ; $3801 : $2a, $c6, $8e
	nop                                                  ; $3804 : $00
	rst $00                                                  ; $3805 : $c7
	ld d, $de                                                  ; $3806 : $16, $de
	ld bc, $4484                                                  ; $3808 : $01, $84, $44

Jump_03_380b:
	xor c                                                  ; $380b : $a9
	ld de, $e1c9                                                  ; $380c : $11, $c9, $e1
	call m, $eb6c                                                  ; $380f : $fc, $6c, $eb
	ld e, h                                                  ; $3812 : $5c
	sbc a, b                                                  ; $3813 : $98
	pop hl                                                  ; $3814 : $e1
	ccf                                                  ; $3815 : $3f
	ex de, hl                                                  ; $3816 : $eb
	ld h, e                                                  ; $3817 : $63
	sub d                                                  ; $3818 : $92
	inc c                                                  ; $3819 : $0c
	cp l                                                  ; $381a : $bd
	jp (hl)                                                  ; $381b : $e9


	inc sp                                                  ; $381c : $33
	dec bc                                                  ; $381d : $0b
	.db $ed                                                  ; $381e : $ed
	cp (hl)                                                  ; $381f : $be
	and $94                                                  ; $3820 : $e6, $94
	rst $20                                                  ; $3822 : $e7
	inc (hl)                                                  ; $3823 : $34
	add hl, bc                                                  ; $3824 : $09
	call nc, $c4ae                                                  ; $3825 : $d4, $ae, $c4
	ret po                                                  ; $3828 : $e0

	ld e, d                                                  ; $3829 : $5a
	xor (hl)                                                  ; $382a : $ae
	sub e                                                  ; $382b : $93
	cp l                                                  ; $382c : $bd
	dec bc                                                  ; $382d : $0b

br_03_382e:
	djnz br_03_385e                                                  ; $382e : $10, $2e
	ld e, l                                                  ; $3830 : $5d
	ld de, $8bc9                                                  ; $3831 : $11, $c9, $8b
	pop hl                                                  ; $3834 : $e1
	daa                                                  ; $3835 : $27
	or h                                                  ; $3836 : $b4
	cp l                                                  ; $3837 : $bd
	call po, Call_03_21d3                                                  ; $3838 : $e4, $d3, $21
	jp (hl)                                                  ; $383b : $e9


	inc l                                                  ; $383c : $2c
	push hl                                                  ; $383d : $e5
	or d                                                  ; $383e : $b2
	ld h, e                                                  ; $383f : $63
	ret po                                                  ; $3840 : $e0

	dec (hl)                                                  ; $3841 : $35
	dec bc                                                  ; $3842 : $0b
	ld e, c                                                  ; $3843 : $59
	inc sp                                                  ; $3844 : $33
	ld (hl), l                                                  ; $3845 : $75
	dec c                                                  ; $3846 : $0d
	adc a, d                                                  ; $3847 : $8a
	add hl, sp                                                  ; $3848 : $39
	jp po, $e2a4                                                  ; $3849 : $e2, $a4, $e2
	in a, ($ea)                                                  ; $384c : $db, $ea
	jp c, $6356                                                  ; $384e : $da, $56, $63
	ret po                                                  ; $3851 : $e0

	ld hl, $e901                                                  ; $3852 : $21, $01, $e9
	xor c                                                  ; $3855 : $a9
	ld c, c                                                  ; $3856 : $49
	xor e                                                  ; $3857 : $ab
	djnz br_03_382e                                                  ; $3858 : $10, $d4
	ld c, l                                                  ; $385a : $4d
	ld c, d                                                  ; $385b : $4a
	ret po                                                  ; $385c : $e0

	add a, a                                                  ; $385d : $87

br_03_385e:
	jp pe, $b4da                                                  ; $385e : $ea, $da, $b4
	sbc a, h                                                  ; $3861 : $9c
	push bc                                                  ; $3862 : $c5
	ld h, l                                                  ; $3863 : $65
	push hl                                                  ; $3864 : $e5
	ld h, a                                                  ; $3865 : $67
	push hl                                                  ; $3866 : $e5
	.db $ed                                                  ; $3867 : $ed
	dec bc                                                  ; $3868 : $0b
	.db $ed                                                  ; $3869 : $ed
	add a, l                                                  ; $386a : $85
	and $a1                                                  ; $386b : $e6, $a1
	push hl                                                  ; $386d : $e5
	ld bc, $dfe3                                                  ; $386e : $01, $e3, $df
	ld de, $b4cf                                                  ; $3871 : $11, $cf, $b4
	cp $fe                                                  ; $3874 : $fe, $fe
	dec (hl)                                                  ; $3876 : $35
	jr nc, $54                                                  ; $3877 : $30, $54

	ld c, b                                                  ; $3879 : $48
	rst $38                                                  ; $387a : $ff
	xor (hl)                                                  ; $387b : $ae
	cp d                                                  ; $387c : $ba
	call po, $b441                                                  ; $387d : $e4, $41, $b4
	.db $ed                                                  ; $3880 : $ed
	inc e                                                  ; $3881 : $1c
	dec bc                                                  ; $3882 : $0b
	djnz -$13                                                  ; $3883 : $10, $ed
	scf                                                  ; $3885 : $37
	ld e, l                                                  ; $3886 : $5d
	rrca                                                  ; $3887 : $0f
	ret                                                  ; $3888 : $c9


	ld c, l                                                  ; $3889 : $4d
	cp l                                                  ; $388a : $bd
	ex (sp), hl                                                  ; $388b : $e3
	set 0, e                                                  ; $388c : $cb, $c3
	ret po                                                  ; $388e : $e0

	ld b, l                                                  ; $388f : $45
	call c, $b8e8                                                  ; $3890 : $dc, $e8, $b8
	ld h, e                                                  ; $3893 : $63
	ret po                                                  ; $3894 : $e0

	ccf                                                  ; $3895 : $3f
	dec bc                                                  ; $3896 : $0b
	ex (sp), hl                                                  ; $3897 : $e3
	ld a, c                                                  ; $3898 : $79
	pop hl                                                  ; $3899 : $e1
	sbc a, c                                                  ; $389a : $99
	ex (sp), hl                                                  ; $389b : $e3
	ld (de), a                                                  ; $389c : $12
	add hl, bc                                                  ; $389d : $09
	push de                                                  ; $389e : $d5
	cpd                                                  ; $389f : $ed, $a9
	ld c, (hl)                                                  ; $38a1 : $4e
	call po, $6a62                                                  ; $38a2 : $e4, $62, $6a
	jr nc, br_03_38b2                                                  ; $38a5 : $30, $0b

	xor h                                                  ; $38a7 : $ac
	ld c, d                                                  ; $38a8 : $4a
	ld d, l                                                  ; $38a9 : $55
	dec c                                                  ; $38aa : $0d
	ret                                                  ; $38ab : $c9


	add hl, sp                                                  ; $38ac : $39
	jp $e14e                                                  ; $38ad : $c3, $4e, $e1


	daa                                                  ; $38b0 : $27
	rst $10                                                  ; $38b1 : $d7

br_03_38b2:
	inc d                                                  ; $38b2 : $14
	pop hl                                                  ; $38b3 : $e1
	inc hl                                                  ; $38b4 : $23
	pop hl                                                  ; $38b5 : $e1
	cp e                                                  ; $38b6 : $bb
	dec bc                                                  ; $38b7 : $0b
	ld e, c                                                  ; $38b8 : $59
	and $df                                                  ; $38b9 : $e6, $df
	ld (hl), l                                                  ; $38bb : $75
	rrca                                                  ; $38bc : $0f
	ret                                                  ; $38bd : $c9


	ld a, b                                                  ; $38be : $78
	cp l                                                  ; $38bf : $bd
	inc (hl)                                                  ; $38c0 : $34
	jp $c0e8                                                  ; $38c1 : $c3, $e8, $c0


	cpl                                                  ; $38c4 : $2f
	adc a, h                                                  ; $38c5 : $8c
	ret po                                                  ; $38c6 : $e0

	pop bc                                                  ; $38c7 : $c1
	dec l                                                  ; $38c8 : $2d
	ex (sp), hl                                                  ; $38c9 : $e3
	rst $28                                                  ; $38ca : $ef
	dec bc                                                  ; $38cb : $0b
	ld ($8d28), a                                                  ; $38cc : $32, $28, $8d
	inc e                                                  ; $38cf : $1c
	ret                                                  ; $38d0 : $c9


	ld c, l                                                  ; $38d1 : $4d
	call pe, $e968                                                  ; $38d2 : $ec, $68, $e9
	ld d, $ec                                                  ; $38d5 : $16, $ec
	rst $00                                                  ; $38d7 : $c7
	jp (hl)                                                  ; $38d8 : $e9


	ld l, l                                                  ; $38d9 : $6d
	ld h, e                                                  ; $38da : $63
	cp $fe                                                  ; $38db : $fe, $fe
	ld sp, $3737                                                  ; $38dd : $31, $37, $37
	inc sp                                                  ; $38e0 : $33
	rst $38                                                  ; $38e1 : $ff
	cp d                                                  ; $38e2 : $ba
	jp (hl)                                                  ; $38e3 : $e9


br_03_38e4:
	.db $ed                                                  ; $38e4 : $ed
	inc c                                                  ; $38e5 : $0c
	ld hl, ($68ec)                                                  ; $38e6 : $2a, $ec, $68
	call pe, Call_03_0b65                                                  ; $38e9 : $ec, $65, $0b
	rst $20                                                  ; $38ec : $e7
	inc hl                                                  ; $38ed : $23
	ld l, c                                                  ; $38ee : $69
	jr z, br_03_3901                                                  ; $38ef : $28, $10

	ret                                                  ; $38f1 : $c9


	jp po, $7ad0                                                  ; $38f2 : $e2, $d0, $7a
	ld l, e                                                  ; $38f5 : $6b
	or h                                                  ; $38f6 : $b4
	rst $20                                                  ; $38f7 : $e7
	jr nc, br_03_38e4                                                  ; $38f8 : $30, $ea

	or h                                                  ; $38fa : $b4
	ld d, $e1                                                  ; $38fb : $16, $e1
	sub h                                                  ; $38fd : $94
	rst $20                                                  ; $38fe : $e7
	jr $0b                                                  ; $38ff : $18, $0b

br_03_3901:
	ret po                                                  ; $3901 : $e0

	ld a, (hl)                                                  ; $3902 : $7e
	and $92                                                  ; $3903 : $e6, $92
	push hl                                                  ; $3905 : $e5
	ld (bc), a                                                  ; $3906 : $02
	pop hl                                                  ; $3907 : $e1
	add a, e                                                  ; $3908 : $83
	add hl, de                                                  ; $3909 : $19
	call nc, $a1bd                                                  ; $390a : $d4, $bd, $a1
	jp $cde6                                                  ; $390d : $c3, $e6, $cd


	inc l                                                  ; $3910 : $2c
	and $9f                                                  ; $3911 : $e6, $9f
	.db $ed                                                  ; $3913 : $ed
	ret z                                                  ; $3914 : $c8

	ld hl, $eae4                                                  ; $3915 : $21, $e4, $ea
	call pe, $6390                                                  ; $3918 : $ec, $90, $63
	cp $fe                                                  ; $391b : $fe, $fe
	ld sp, $3638                                                  ; $391d : $31, $38, $36
	dec (hl)                                                  ; $3920 : $35
	rst $38                                                  ; $3921 : $ff
	dec bc                                                  ; $3922 : $0b
	and $c6                                                  ; $3923 : $e6, $c6
	.db $ed                                                  ; $3925 : $ed
	pop de                                                  ; $3926 : $d1
	ld a, h                                                  ; $3927 : $7c
	ret po                                                  ; $3928 : $e0

	ld l, e                                                  ; $3929 : $6b
	inc d                                                  ; $392a : $14

br_03_392b:
	ret                                                  ; $392b : $c9


	adc a, c                                                  ; $392c : $89
	jp $5ae5                                                  ; $392d : $c3, $e5, $5a


	cp d                                                  ; $3930 : $ba
	jp po, $ead2                                                  ; $3931 : $e2, $d2, $ea
	dec a                                                  ; $3934 : $3d
	cp d                                                  ; $3935 : $ba
	call po, Call_03_21be                                                  ; $3936 : $e4, $be, $21
	inc c                                                  ; $3939 : $0c
	rst $20                                                  ; $393a : $e7
	cp $e8                                                  ; $393b : $fe, $e8

Call_03_393d:
	sbc a, b                                                  ; $393d : $98

Call_03_393e:
	dec bc                                                  ; $393e : $0b
	rst $20                                                  ; $393f : $e7
	ld h, d                                                  ; $3940 : $62
	ex (sp), hl                                                  ; $3941 : $e3
	jr br_03_392b                                                  ; $3942 : $18, $e7

	jp pe, $b410                                                  ; $3944 : $ea, $10, $b4
	ex (sp), hl                                                  ; $3947 : $e3
	ld a, d                                                  ; $3948 : $7a
	jp $68eb                                                  ; $3949 : $c3, $eb, $68


	ret pe                                                  ; $394c : $e8

	cp (hl)                                                  ; $394d : $be
	ex (sp), hl                                                  ; $394e : $e3
	ld l, l                                                  ; $394f : $6d
	sub d                                                  ; $3950 : $92
	and $b7                                                  ; $3951 : $e6, $b7
	ret po                                                  ; $3953 : $e0

	jr z, br_03_3961                                                  ; $3954 : $28, $0b

	rlca                                                  ; $3956 : $07
	ex af, af'                                                  ; $3957 : $08
	ld b, $1b                                                  ; $3958 : $06, $1b
	out ($3e), a                                                  ; $395a : $d3, $3e
	ex (sp), hl                                                  ; $395c : $e3
	ld d, $e1                                                  ; $395d : $16, $e1
	ld a, (bc)                                                  ; $395f : $0a
	ex de, hl                                                  ; $3960 : $eb

br_03_3961:
	call nz, $e5b4                                                  ; $3961 : $c4, $b4, $e5
	or a                                                  ; $3964 : $b7
	.db $ed                                                  ; $3965 : $ed
	rst $18                                                  ; $3966 : $df
	sub d                                                  ; $3967 : $92
	cp $fe                                                  ; $3968 : $fe, $fe
	ld sp, $3737                                                  ; $396a : $31, $37, $37
	scf                                                  ; $396d : $37
	dec l                                                  ; $396e : $2d
	ld sp, $3737                                                  ; $396f : $31, $37, $37
	jr c, -$01                                                  ; $3972 : $38, $ff

	dec bc                                                  ; $3974 : $0b
	adc a, l                                                  ; $3975 : $8d
	xor $18                                                  ; $3976 : $ee, $18
	.db $ed                                                  ; $3978 : $ed
	inc a                                                  ; $3979 : $3c
	ld c, $8a                                                  ; $397a : $0e, $8a
	and $66                                                  ; $397c : $e6, $66
	push de                                                  ; $397e : $d5
	and $61                                                  ; $397f : $e6, $61
	or h                                                  ; $3981 : $b4
	ex (sp), hl                                                  ; $3982 : $e3
	ld hl, ($56e5)                                                  ; $3983 : $2a, $e5, $56

br_03_3986:
	cp e                                                  ; $3986 : $bb
	xor c                                                  ; $3987 : $a9
	ld bc, $a9ea                                                  ; $3988 : $01, $ea, $a9
	and $a2                                                  ; $398b : $e6, $a2
	call po, $ed27                                                  ; $398d : $e4, $27, $ed

br_03_3990:
	cp a                                                  ; $3990 : $bf
	ld b, $ce                                                  ; $3991 : $06, $ce
	ld e, (hl)                                                  ; $3993 : $5e
	cp l                                                  ; $3994 : $bd
	ex (sp), hl                                                  ; $3995 : $e3
	ld sp, $e00b                                                  ; $3996 : $31, $0b, $e0
	call po, $b4e6                                                  ; $3999 : $e4, $e6, $b4
	call pe, $ec3d                                                  ; $399c : $ec, $3d, $ec
	inc a                                                  ; $399f : $3c
	dec d                                                  ; $39a0 : $15
	push de                                                  ; $39a1 : $d5
	ret pe                                                  ; $39a2 : $e8

	jr c, br_03_3990                                                  ; $39a3 : $38, $eb

	ld h, (hl)                                                  ; $39a5 : $66
	inc c                                                  ; $39a6 : $0c
	pop hl                                                  ; $39a7 : $e1
	sbc a, b                                                  ; $39a8 : $98
	pop hl                                                  ; $39a9 : $e1
	halt                                                  ; $39aa : $76
	ld (hl), d                                                  ; $39ab : $72
	jp po, $e124                                                  ; $39ac : $e2, $24, $e1
	ld l, (hl)                                                  ; $39af : $6e
	inc c                                                  ; $39b0 : $0c
	and $fb                                                  ; $39b1 : $e6, $fb
	ld h, l                                                  ; $39b3 : $65
	cp l                                                  ; $39b4 : $bd
	dec bc                                                  ; $39b5 : $0b
	ex de, hl                                                  ; $39b6 : $eb
	rla                                                  ; $39b7 : $17
	ex de, hl                                                  ; $39b8 : $eb
	daa                                                  ; $39b9 : $27
	and c                                                  ; $39ba : $a1
	ld c, $0c                                                  ; $39bb : $0e, $0c
	add hl, sp                                                  ; $39bd : $39
	or e                                                  ; $39be : $b3
	jp pe, $ba57                                                  ; $39bf : $ea, $57, $ba
	call pe, $eb5d                                                  ; $39c2 : $ec, $5d, $eb
	ld h, h                                                  ; $39c5 : $64
	ld h, h                                                  ; $39c6 : $64
	jp nz, Jump_03_0b6f                                                  ; $39c7 : $c2, $6f, $0b
	jp pe, $e4d1                                                  ; $39ca : $ea, $d1, $e4
	adc a, l                                                  ; $39cd : $8d
	ret pe                                                  ; $39ce : $e8

	ld h, e                                                  ; $39cf : $63
	djnz br_03_3986                                                  ; $39d0 : $10, $b4
	.db $ed                                                  ; $39d2 : $ed
	add hl, de                                                  ; $39d3 : $19
	jp pe, $c329                                                  ; $39d4 : $ea, $29, $c3
	ex de, hl                                                  ; $39d7 : $eb
	scf                                                  ; $39d8 : $37
	ret nz                                                  ; $39d9 : $c0

	cp d                                                  ; $39da : $ba
	push hl                                                  ; $39db : $e5
	pop de                                                  ; $39dc : $d1
	jp pe, $decb                                                  ; $39dd : $ea, $cb, $de
	ld bc, $d8ec                                                  ; $39e0 : $01, $ec, $d8
	jp po, $eb9b                                                  ; $39e3 : $e2, $9b, $eb
	add a, b                                                  ; $39e6 : $80
	ex af, af'                                                  ; $39e7 : $08
	call pe, $702c                                                  ; $39e8 : $ec, $2c, $70

Call_03_39eb:
	jp pe, $ba9c                                                  ; $39eb : $ea, $9c, $ba
	sbc a, $01                                                  ; $39ee : $de, $01
	pop hl                                                  ; $39f0 : $e1
	dec bc                                                  ; $39f1 : $0b
	ex de, hl                                                  ; $39f2 : $eb
	cp h                                                  ; $39f3 : $bc
	adc hl, sp                                                  ; $39f4 : $ed, $7a
	inc d                                                  ; $39f6 : $14
	or h                                                  ; $39f7 : $b4
	jp (hl)                                                  ; $39f8 : $e9


	ld (hl), c                                                  ; $39f9 : $71
	ex de, hl                                                  ; $39fa : $eb
	ld (hl), b                                                  ; $39fb : $70
	rst $20                                                  ; $39fc : $e7
	dec c                                                  ; $39fd : $0d
	inc l                                                  ; $39fe : $2c
	ex de, hl                                                  ; $39ff : $eb
	ld (hl), d                                                  ; $3a00 : $72
	jp po, $e301                                                  ; $3a01 : $e2, $01, $e3
	add a, b                                                  ; $3a04 : $80
	push hl                                                  ; $3a05 : $e5
	ld (hl), $e3                                                  ; $3a06 : $36, $e3
	ld d, h                                                  ; $3a08 : $54
	ld hl, $e60a                                                  ; $3a09 : $21, $0a, $e6
	add a, h                                                  ; $3a0c : $84
	push hl                                                  ; $3a0d : $e5
	inc d                                                  ; $3a0e : $14
	rst $20                                                  ; $3a0f : $e7
	ld b, b                                                  ; $3a10 : $40
	ld c, $c9                                                  ; $3a11 : $0e, $c9
	jp nz, $e4c3                                                  ; $3a13 : $c2, $c3, $e4
	ld sp, hl                                                  ; $3a16 : $f9
	dec h                                                  ; $3a17 : $25
	or h                                                  ; $3a18 : $b4
	ex (sp), hl                                                  ; $3a19 : $e3
	nop                                                  ; $3a1a : $00
	ld d, $b4                                                  ; $3a1b : $16, $b4
	.db $ed                                                  ; $3a1d : $ed
	inc e                                                  ; $3a1e : $1c
	dec bc                                                  ; $3a1f : $0b
	jp pe, $e08c                                                  ; $3a20 : $ea, $8c, $e0
	jp pe, $e235                                                  ; $3a23 : $ea, $35, $e2
	or d                                                  ; $3a26 : $b2
	ld a, (bc)                                                  ; $3a27 : $0a
	or h                                                  ; $3a28 : $b4
	ld e, d                                                  ; $3a29 : $5a
	ld c, d                                                  ; $3a2a : $4a
	ld a, d                                                  ; $3a2b : $7a
	ld h, e                                                  ; $3a2c : $63
	jp c, Jump_03_32e6                                                  ; $3a2d : $da, $e6, $32
	jp $e20a                                                  ; $3a30 : $c3, $0a, $e2


	adc a, b                                                  ; $3a33 : $88
	push hl                                                  ; $3a34 : $e5
	inc bc                                                  ; $3a35 : $03
	.db $ed                                                  ; $3a36 : $ed
	sbc a, $e2                                                  ; $3a37 : $de, $e2
	and a                                                  ; $3a39 : $a7
	ld (de), a                                                  ; $3a3a : $12
	or h                                                  ; $3a3b : $b4
	cp h                                                  ; $3a3c : $bc
	ex de, hl                                                  ; $3a3d : $eb
	ld h, h                                                  ; $3a3e : $64
	ld h, e                                                  ; $3a3f : $63
	jp c, Jump_03_25e6                                                  ; $3a40 : $da, $e6, $25
	cpd                                                  ; $3a43 : $ed, $a9
	jp po, $e96c                                                  ; $3a45 : $e2, $6c, $e9
	or h                                                  ; $3a48 : $b4
	ld d, $b4                                                  ; $3a49 : $16, $b4
	sbc a, $01                                                  ; $3a4b : $de, $01
	pop hl                                                  ; $3a4d : $e1
	jr c, -$72                                                  ; $3a4e : $38, $8e

	ret po                                                  ; $3a50 : $e0

	and a                                                  ; $3a51 : $a7
	ret po                                                  ; $3a52 : $e0

	and (hl)                                                  ; $3a53 : $a6
	rrca                                                  ; $3a54 : $0f
	or h                                                  ; $3a55 : $b4
	pop hl                                                  ; $3a56 : $e1
	cp d                                                  ; $3a57 : $ba
	jp pe, $ec8b                                                  ; $3a58 : $ea, $8b, $ec
	rst $00                                                  ; $3a5b : $c7
	jp (hl)                                                  ; $3a5c : $e9


	ld l, l                                                  ; $3a5d : $6d
	ld h, (hl)                                                  ; $3a5e : $66
	add hl, sp                                                  ; $3a5f : $39
	ld h, e                                                  ; $3a60 : $63
	ret po                                                  ; $3a61 : $e0

	jr nc, br_03_3a6f                                                  ; $3a62 : $30, $0b

	ld e, c                                                  ; $3a64 : $59
	inc sp                                                  ; $3a65 : $33
	and a                                                  ; $3a66 : $a7
	rrca                                                  ; $3a67 : $0f
	cp d                                                  ; $3a68 : $ba
	jp pe, Jump_03_0c37                                                  ; $3a69 : $ea, $37, $0c
	call pe, $e7ea                                                  ; $3a6c : $ec, $ea, $e7

br_03_3a6f:
	xor (hl)                                                  ; $3a6f : $ae
	cp d                                                  ; $3a70 : $ba
	adc hl, sp                                                  ; $3a71 : $ed, $7a
	cp d                                                  ; $3a73 : $ba
	sbc a, $72                                                  ; $3a74 : $de, $72
	ld bc, $5dea                                                  ; $3a76 : $01, $ea, $5d
	jp po, $e02b                                                  ; $3a79 : $e2, $2b, $e0
	ld (hl), e                                                  ; $3a7c : $73
	ret po                                                  ; $3a7d : $e0

	ex de, hl                                                  ; $3a7e : $eb
	dec bc                                                  ; $3a7f : $0b
	ret                                                  ; $3a80 : $c9


	and $4b                                                  ; $3a81 : $e6, $4b
	dec a                                                  ; $3a83 : $3d
	ret po                                                  ; $3a84 : $e0

	jp z, $44e2                                                  ; $3a85 : $ca, $e2, $44
	ret pe                                                  ; $3a88 : $e8

	rlca                                                  ; $3a89 : $07
	dec bc                                                  ; $3a8a : $0b
	sub l                                                  ; $3a8b : $95
	pop hl                                                  ; $3a8c : $e1
	ld sp, $f6eb                                                  ; $3a8d : $31, $eb, $f6
	dec bc                                                  ; $3a90 : $0b
	ret                                                  ; $3a91 : $c9


	and $4b                                                  ; $3a92 : $e6, $4b
	dec a                                                  ; $3a94 : $3d
	and $9f                                                  ; $3a95 : $e6, $9f
	ex (sp), hl                                                  ; $3a97 : $e3
	ld e, (hl)                                                  ; $3a98 : $5e
	ret pe                                                  ; $3a99 : $e8

	rlca                                                  ; $3a9a : $07
	dec bc                                                  ; $3a9b : $0b
	pop hl                                                  ; $3a9c : $e1
	ld sp, $f6eb                                                  ; $3a9d : $31, $eb, $f6
	sub l                                                  ; $3aa0 : $95
	jp (hl)                                                  ; $3aa1 : $e9


	ld c, e                                                  ; $3aa2 : $4b
	djnz -$37                                                  ; $3aa3 : $10, $c9
	ret po                                                  ; $3aa5 : $e0

	xor (hl)                                                  ; $3aa6 : $ae
	ld c, h                                                  ; $3aa7 : $4c
	add hl, sp                                                  ; $3aa8 : $39
	jp pe, $e864                                                  ; $3aa9 : $ea, $64, $e8
	ld h, e                                                  ; $3aac : $63
	ld h, e                                                  ; $3aad : $63
	pop hl                                                  ; $3aae : $e1
	jp z, $edd9                                                  ; $3aaf : $ca, $d9, $ed
	adc a, (hl)                                                  ; $3ab2 : $8e
	dec bc                                                  ; $3ab3 : $0b
	pop hl                                                  ; $3ab4 : $e1
	ld l, $e8                                                  ; $3ab5 : $2e, $e8
	nop                                                  ; $3ab7 : $00
	call pe, $184c                                                  ; $3ab8 : $ec, $4c, $18
	push de                                                  ; $3abb : $d5
	call pe, $baf5                                                  ; $3abc : $ec, $f5, $ba
	jp pe, $b640                                                  ; $3abf : $ea, $40, $b6
	call po, Call_03_13f1                                                  ; $3ac2 : $e4, $f1, $13
	jp po, $43d1                                                  ; $3ac5 : $e2, $d1, $43
	or h                                                  ; $3ac8 : $b4
	jp nz, $fe92                                                  ; $3ac9 : $c2, $92, $fe
	cp $31                                                  ; $3acc : $fe, $31
	jr c, $31                                                  ; $3ace : $38, $31

	ld ($0bff), a                                                  ; $3ad0 : $32, $ff, $0b
	ld d, l                                                  ; $3ad3 : $55
	ld l, c                                                  ; $3ad4 : $69
	ld hl, ($2949)                                                  ; $3ad5 : $2a, $49, $29
	dec c                                                  ; $3ad8 : $0d
	res 6, h                                                  ; $3ad9 : $cb, $b4
	or c                                                  ; $3adb : $b1
	sub d                                                  ; $3adc : $92
	push hl                                                  ; $3add : $e5
	ld l, (hl)                                                  ; $3ade : $6e
	or e                                                  ; $3adf : $b3
	ex (sp), hl                                                  ; $3ae0 : $e3
	call nc, $edb4                                                  ; $3ae1 : $d4, $b4, $ed
	inc de                                                  ; $3ae4 : $13
	dec bc                                                  ; $3ae5 : $0b
	ex (sp), hl                                                  ; $3ae6 : $e3
	add a, (hl)                                                  ; $3ae7 : $86
	call po, $e29e                                                  ; $3ae8 : $e4, $9e, $e2
	and $13                                                  ; $3aeb : $e6, $13
	adc a, d                                                  ; $3aed : $8a
	cp l                                                  ; $3aee : $bd
	inc (hl)                                                  ; $3aef : $34
	out ($b4), a                                                  ; $3af0 : $d3, $b4
	ld c, (hl)                                                  ; $3af2 : $4e
	ex de, hl                                                  ; $3af3 : $eb
	ld a, (hl)                                                  ; $3af4 : $7e
	jp $632b                                                  ; $3af5 : $c3, $2b, $63


	cp $fe                                                  ; $3af8 : $fe, $fe
	ld sp, $3838                                                  ; $3afa : $31, $38, $38
	inc (hl)                                                  ; $3afd : $34
	rst $38                                                  ; $3afe : $ff
	ld bc, $e78d                                                  ; $3aff : $01, $8d, $e7
	ex (sp), hl                                                  ; $3b02 : $e3
	ld ($b412), a                                                  ; $3b03 : $32, $12, $b4
	and $65                                                  ; $3b06 : $e6, $65

br_03_3b08:
	sub d                                                  ; $3b08 : $92
	sbc a, $ed                                                  ; $3b09 : $de, $ed
	pop hl                                                  ; $3b0b : $e1
	rst $20                                                  ; $3b0c : $e7

Call_03_3b0d:
	dec c                                                  ; $3b0d : $0d
	cp e                                                  ; $3b0e : $bb
	call po, $9338                                                  ; $3b0f : $e4, $38, $93
	ret pe                                                  ; $3b12 : $e8

	ret z                                                  ; $3b13 : $c8

	and e                                                  ; $3b14 : $a3
	ld h, l                                                  ; $3b15 : $65
	cp l                                                  ; $3b16 : $bd
	ex (sp), hl                                                  ; $3b17 : $e3
	ld hl, $02ed                                                  ; $3b18 : $21, $ed, $02
	pop hl                                                  ; $3b1b : $e1
	ld d, b                                                  ; $3b1c : $50
	ld a, (bc)                                                  ; $3b1d : $0a
	ret                                                  ; $3b1e : $c9


	ld a, d                                                  ; $3b1f : $7a
	ex (sp), hl                                                  ; $3b20 : $e3
	out ($a7), a                                                  ; $3b21 : $d3, $a7
	ld b, e                                                  ; $3b23 : $43
	jp c, Jump_03_32e6                                                  ; $3b24 : $da, $e6, $32
	dec bc                                                  ; $3b27 : $0b
	rst $20                                                  ; $3b28 : $e7
	ld a, (de)                                                  ; $3b29 : $1a
	rst $20                                                  ; $3b2a : $e7
	ld d, $e6                                                  ; $3b2b : $16, $e6
	or e                                                  ; $3b2d : $b3
	ex de, hl                                                  ; $3b2e : $eb
	call c, $e80f                                                  ; $3b2f : $dc, $0f, $e8
	cp a                                                  ; $3b32 : $bf
	call po, $c434                                                  ; $3b33 : $e4, $34, $c4
	call pe, $ea31                                                  ; $3b36 : $ec, $31, $ea
	rst $10                                                  ; $3b39 : $d7
	cp d                                                  ; $3b3a : $ba
	ret pe                                                  ; $3b3b : $e8

	ld l, b                                                  ; $3b3c : $68

Call_03_3b3d:
	ex de, hl                                                  ; $3b3d : $eb
	scf                                                  ; $3b3e : $37
	dec bc                                                  ; $3b3f : $0b
	push hl                                                  ; $3b40 : $e5
	ld c, e                                                  ; $3b41 : $4b
	jp po, Jump_03_2a9d                                                  ; $3b42 : $e2, $9d, $2a
	add hl, hl                                                  ; $3b45 : $29
	ld de, $4dd4                                                  ; $3b46 : $11, $d4, $4d
	push hl                                                  ; $3b49 : $e5
	ld (hl), $e2                                                  ; $3b4a : $36, $e2
	jr nz, br_03_3b08                                                  ; $3b4c : $20, $ba

	call pe, $554f                                                  ; $3b4e : $ec, $4f, $55
	jp pe, $437b                                                  ; $3b51 : $ea, $7b, $43
	jp c, Jump_03_32e6                                                  ; $3b54 : $da, $e6, $32
	dec bc                                                  ; $3b57 : $0b
	ret pe                                                  ; $3b58 : $e8

	ld b, b                                                  ; $3b59 : $40
	and $e8                                                  ; $3b5a : $e6, $e8
	jp po, $e388                                                  ; $3b5c : $e2, $88, $e3
	ld l, a                                                  ; $3b5f : $6f
	ld (de), a                                                  ; $3b60 : $12
	or h                                                  ; $3b61 : $b4

Jump_03_3b62:
	cp l                                                  ; $3b62 : $bd
	call po, $da42                                                  ; $3b63 : $e4, $42, $da
	and $32                                                  ; $3b66 : $e6, $32

Call_03_3b68:
	call po, $b4e1                                                  ; $3b68 : $e4, $e1, $b4
	call pe, $e641                                                  ; $3b6b : $ec, $41, $e6
	adc a, a                                                  ; $3b6e : $8f
	pop hl                                                  ; $3b6f : $e1
	ld h, $96                                                  ; $3b70 : $26, $96
	ld a, (bc)                                                  ; $3b72 : $0a
	ex de, hl                                                  ; $3b73 : $eb
	ld l, (hl)                                                  ; $3b74 : $6e
	push hl                                                  ; $3b75 : $e5
	sub (hl)                                                  ; $3b76 : $96
	jp (hl)                                                  ; $3b77 : $e9


	dec l                                                  ; $3b78 : $2d
	dec bc                                                  ; $3b79 : $0b
	adc a, d                                                  ; $3b7a : $8a
	dec d                                                  ; $3b7b : $15
	call po, $b117                                                  ; $3b7c : $e4, $17, $b1
	sub d                                                  ; $3b7f : $92
	jp (hl)                                                  ; $3b80 : $e9


	ld e, (hl)                                                  ; $3b81 : $5e
	xor $06                                                  ; $3b82 : $ee, $06
	ld bc, $4fe3                                                  ; $3b84 : $01, $e3, $4f
	jp (hl)                                                  ; $3b87 : $e9


	ld e, l                                                  ; $3b88 : $5d
	push hl                                                  ; $3b89 : $e5
	call po, $e3e5                                                  ; $3b8a : $e4, $e5, $e3
	dec bc                                                  ; $3b8d : $0b
	ld h, (hl)                                                  ; $3b8e : $66
	ex (sp), hl                                                  ; $3b8f : $e3
	ld (hl), a                                                  ; $3b90 : $77
	ld a, $bd                                                  ; $3b91 : $3e, $bd
	ld e, d                                                  ; $3b93 : $5a
	ex (sp), hl                                                  ; $3b94 : $e3
	adc a, l                                                  ; $3b95 : $8d
	ret pe                                                  ; $3b96 : $e8

	xor c                                                  ; $3b97 : $a9
	dec bc                                                  ; $3b98 : $0b
	cp $fe                                                  ; $3b99 : $fe, $fe
	ld sp, $3439                                                  ; $3b9b : $31, $39, $34
	jr nc, br_03_3bc7                                                  ; $3b9e : $30, $27

	ld d, e                                                  ; $3ba0 : $53
	rst $38                                                  ; $3ba1 : $ff
	cp $fe                                                  ; $3ba2 : $fe, $fe
	ld sp, $3739                                                  ; $3ba4 : $31, $39, $37
	jr nc, br_03_3bd0                                                  ; $3ba7 : $30, $27

	ld d, e                                                  ; $3ba9 : $53
	rst $38                                                  ; $3baa : $ff
	cp $fe                                                  ; $3bab : $fe, $fe
	ld sp, $3339                                                  ; $3bad : $31, $39, $33
	jr nc, $27                                                  ; $3bb0 : $30, $27

	ld d, e                                                  ; $3bb2 : $53
	rst $38                                                  ; $3bb3 : $ff
	cp $fe                                                  ; $3bb4 : $fe, $fe
	inc sp                                                  ; $3bb6 : $33
	jr nc, br_03_3be0                                                  ; $3bb7 : $30, $27

	ld d, e                                                  ; $3bb9 : $53
	rst $38                                                  ; $3bba : $ff
	ret po                                                  ; $3bbb : $e0

	ld ($a10f), a                                                  ; $3bbc : $32, $0f, $a1
	jp pe, $e9bb                                                  ; $3bbf : $ea, $bb, $e9
	ld (hl), d                                                  ; $3bc2 : $72
	cp d                                                  ; $3bc3 : $ba
	call po, $b438                                                  ; $3bc4 : $e4, $38, $b4

br_03_3bc7:
	ex (sp), hl                                                  ; $3bc7 : $e3
	adc a, l                                                  ; $3bc8 : $8d
	call nz, $de8c                                                  ; $3bc9 : $c4, $8c, $de
	ld bc, $4de4                                                  ; $3bcc : $01, $e4, $4d
	push hl                                                  ; $3bcf : $e5

br_03_3bd0:
	djnz -$1d                                                  ; $3bd0 : $10, $e3

br_03_3bd2:
	ld (hl), h                                                  ; $3bd2 : $74
	ld c, $b4                                                  ; $3bd3 : $0e, $b4
	jp (hl)                                                  ; $3bd5 : $e9


	dec sp                                                  ; $3bd6 : $3b
	call po, $b4e1                                                  ; $3bd7 : $e4, $e1, $b4
	dec (hl)                                                  ; $3bda : $35
	jp nz, $b46e                                                  ; $3bdb : $c2, $6e, $b4
	jp (hl)                                                  ; $3bde : $e9


	dec sp                                                  ; $3bdf : $3b

br_03_3be0:
	sub d                                                  ; $3be0 : $92
	ld a, (bc)                                                  ; $3be1 : $0a
	jp pe, $ea8a                                                  ; $3be2 : $ea, $8a, $ea
	ld c, d                                                  ; $3be5 : $4a
	jp pe, Jump_03_0f48                                                  ; $3be6 : $ea, $48, $0f
	or h                                                  ; $3be9 : $b4
	and $00                                                  ; $3bea : $e6, $00
	ld (hl), b                                                  ; $3bec : $70
	adc a, c                                                  ; $3bed : $89
	push hl                                                  ; $3bee : $e5
	ld e, d                                                  ; $3bef : $5a
	cp e                                                  ; $3bf0 : $bb
	rst $20                                                  ; $3bf1 : $e7
	and b                                                  ; $3bf2 : $a0
	ret pe                                                  ; $3bf3 : $e8

	ld sp, $9e94                                                  ; $3bf4 : $31, $94, $9e
	dec bc                                                  ; $3bf7 : $0b
	push hl                                                  ; $3bf8 : $e5
	ld c, h                                                  ; $3bf9 : $4c
	jp (hl)                                                  ; $3bfa : $e9


	sub l                                                  ; $3bfb : $95
	and $9c                                                  ; $3bfc : $e6, $9c
	and $9b                                                  ; $3bfe : $e6, $9b
	ld c, $d6                                                  ; $3c00 : $0e, $d6
	ld a, d                                                  ; $3c02 : $7a
	sub e                                                  ; $3c03 : $93
	push hl                                                  ; $3c04 : $e5
	ld c, e                                                  ; $3c05 : $4b
	ret pe                                                  ; $3c06 : $e8

	ld c, a                                                  ; $3c07 : $4f
	push hl                                                  ; $3c08 : $e5
	ld l, (hl)                                                  ; $3c09 : $6e
	ld b, e                                                  ; $3c0a : $43

Jump_03_3c0b:
	jp c, Jump_03_32e6                                                  ; $3c0b : $da, $e6, $32
	dec bc                                                  ; $3c0e : $0b
	ret pe                                                  ; $3c0f : $e8

	scf                                                  ; $3c10 : $37
	ex de, hl                                                  ; $3c11 : $eb
	call c, $f3e5                                                  ; $3c12 : $dc, $e5, $f3
	ret po                                                  ; $3c15 : $e0

	add a, e                                                  ; $3c16 : $83
	ld c, $d4                                                  ; $3c17 : $0e, $d4
	cp l                                                  ; $3c19 : $bd
	and c                                                  ; $3c1a : $a1
	pop hl                                                  ; $3c1b : $e1
	jr nc, br_03_3bd2                                                  ; $3c1c : $30, $b4

	ex (sp), hl                                                  ; $3c1e : $e3
	push hl                                                  ; $3c1f : $e5
	sub e                                                  ; $3c20 : $93
	ret po                                                  ; $3c21 : $e0

	ld e, a                                                  ; $3c22 : $5f
	sub (hl)                                                  ; $3c23 : $96
	ld (hl), l                                                  ; $3c24 : $75
	dec bc                                                  ; $3c25 : $0b
	call po, $e4a5                                                  ; $3c26 : $e4, $a5, $e4
	dec e                                                  ; $3c29 : $1d
	.db $ed                                                  ; $3c2a : $ed
	nop                                                  ; $3c2b : $00
	push hl                                                  ; $3c2c : $e5
	or (hl)                                                  ; $3c2d : $b6
	dec c                                                  ; $3c2e : $0d
	ret pe                                                  ; $3c2f : $e8

	ld b, (hl)                                                  ; $3c30 : $46
	and $75                                                  ; $3c31 : $e6, $75
	ret pe                                                  ; $3c33 : $e8

	rst $10                                                  ; $3c34 : $d7
	sub d                                                  ; $3c35 : $92
	ret pe                                                  ; $3c36 : $e8

	ld b, l                                                  ; $3c37 : $45
	ld e, $d4                                                  ; $3c38 : $1e, $d4
	sub c                                                  ; $3c3a : $91
	dec bc                                                  ; $3c3b : $0b
	sbc a, h                                                  ; $3c3c : $9c
	ld l, c                                                  ; $3c3d : $69
	ld ($c90f), hl                                                  ; $3c3e : $22, $0f, $c9
	jp po, $e3e4                                                  ; $3c41 : $e2, $e4, $e3
	sbc a, e                                                  ; $3c44 : $9b
	dec a                                                  ; $3c45 : $3d
	ret po                                                  ; $3c46 : $e0

	and c                                                  ; $3c47 : $a1
	push hl                                                  ; $3c48 : $e5
	ld (hl), d                                                  ; $3c49 : $72
	pop hl                                                  ; $3c4a : $e1
	ld a, a                                                  ; $3c4b : $7f
	and $64                                                  ; $3c4c : $e6, $64
	dec bc                                                  ; $3c4e : $0b
	jp pe, $ec25                                                  ; $3c4f : $ea, $25, $ec
	ld (hl), a                                                  ; $3c52 : $77
	call pe, $e974                                                  ; $3c53 : $ec, $74, $e9
	ld d, h                                                  ; $3c56 : $54
	ld (de), a                                                  ; $3c57 : $12
	and $9f                                                  ; $3c58 : $e6, $9f
	ex (sp), hl                                                  ; $3c5a : $e3
	ld a, (hl)                                                  ; $3c5b : $7e
	jp $82ea                                                  ; $3c5c : $c3, $ea, $82


	ld d, c                                                  ; $3c5f : $51
	and $62                                                  ; $3c60 : $e6, $62
	ret                                                  ; $3c62 : $c9


	and $55                                                  ; $3c63 : $e6, $55
	ld l, d                                                  ; $3c65 : $6a
	inc de                                                  ; $3c66 : $13

Call_03_3c67:
	ret po                                                  ; $3c67 : $e0

Call_03_3c68:
	sub b                                                  ; $3c68 : $90
	dec bc                                                  ; $3c69 : $0b
	ret pe                                                  ; $3c6a : $e8

	ld hl, ($d1ec)                                                  ; $3c6b : $2a, $ec, $d1
	ex de, hl                                                  ; $3c6e : $eb
	rst $30                                                  ; $3c6f : $f7
	rla                                                  ; $3c70 : $17
	ret                                                  ; $3c71 : $c9


	jp $b8e3                                                  ; $3c72 : $c3, $e3, $b8


	ld h, e                                                  ; $3c75 : $63
	ld l, $65                                                  ; $3c76 : $2e, $65
	ret po                                                  ; $3c78 : $e0

	ld b, d                                                  ; $3c79 : $42
	jp po, $b36f                                                  ; $3c7a : $e2, $6f, $b3
	jp po, Jump_03_0c5c                                                  ; $3c7d : $e2, $5c, $0c
	ld e, d                                                  ; $3c80 : $5a
	and $40                                                  ; $3c81 : $e6, $40
	ld h, e                                                  ; $3c83 : $63
	and $7d                                                  ; $3c84 : $e6, $7d
	and b                                                  ; $3c86 : $a0
	dec bc                                                  ; $3c87 : $0b
	sub l                                                  ; $3c88 : $95
	jp po, $e5c5                                                  ; $3c89 : $e2, $c5, $e5

Jump_03_3c8c:
	ld h, (hl)                                                  ; $3c8c : $66
	inc de                                                  ; $3c8d : $13
	ex de, hl                                                  ; $3c8e : $eb
	and h                                                  ; $3c8f : $a4
	and $71                                                  ; $3c90 : $e6, $71
	call pe, $e4f2                                                  ; $3c92 : $ec, $f2, $e4
	ret p                                                  ; $3c95 : $f0

	or h                                                  ; $3c96 : $b4
	rst $20                                                  ; $3c97 : $e7

Call_03_3c98:
	rlca                                                  ; $3c98 : $07
	sub d                                                  ; $3c99 : $92
	sbc a, $e8                                                  ; $3c9a : $de, $e8

Call_03_3c9c:
	ld b, l                                                  ; $3c9c : $45
	ld d, c                                                  ; $3c9d : $51
	jp (hl)                                                  ; $3c9e : $e9


	jp (hl)                                                  ; $3c9f : $e9


	ld bc, $8be7                                                  ; $3ca0 : $01, $e7, $8b
	.db $ed                                                  ; $3ca3 : $ed
	rra                                                  ; $3ca4 : $1f
	ld c, a                                                  ; $3ca5 : $4f
	rlca                                                  ; $3ca6 : $07
	dec de                                                  ; $3ca7 : $1b
	ret                                                  ; $3ca8 : $c9


	cp l                                                  ; $3ca9 : $bd
	and c                                                  ; $3caa : $a1

Jump_03_3cab:
	ex de, hl                                                  ; $3cab : $eb
	scf                                                  ; $3cac : $37
	or h                                                  ; $3cad : $b4
	push hl                                                  ; $3cae : $e5
	ld h, e                                                  ; $3caf : $63
	sub d                                                  ; $3cb0 : $92
	jp pe, $0c06                                                  ; $3cb1 : $ea, $06, $0c
	rst $20                                                  ; $3cb4 : $e7
	add a, d                                                  ; $3cb5 : $82

Jump_03_3cb6:
	sbc a, b                                                  ; $3cb6 : $98
	add a, (hl)                                                  ; $3cb7 : $86
	ld h, l                                                  ; $3cb8 : $65
	cp $fe                                                  ; $3cb9 : $fe, $fe
	ld sp, $3639                                                  ; $3cbb : $31, $39, $36
	jr nc, br_03_3ce7                                                  ; $3cbe : $30, $27

	ld d, e                                                  ; $3cc0 : $53
	rst $38                                                  ; $3cc1 : $ff
	dec bc                                                  ; $3cc2 : $0b
	ret pe                                                  ; $3cc3 : $e8

	ld a, a                                                  ; $3cc4 : $7f
	and $a9                                                  ; $3cc5 : $e6, $a9
	and $c6                                                  ; $3cc7 : $e6, $c6
	and $a5                                                  ; $3cc9 : $e6, $a5
	djnz -$2c                                                  ; $3ccb : $10, $d4
	cp l                                                  ; $3ccd : $bd
	and c                                                  ; $3cce : $a1

Jump_03_3ccf:
	call nz, $ba4e                                                  ; $3ccf : $c4, $4e, $ba
	in l, (c)                                                  ; $3cd2 : $ed, $68
	or h                                                  ; $3cd4 : $b4
	jp (hl)                                                  ; $3cd5 : $e9


	dec (hl)                                                  ; $3cd6 : $35
	jp pe, $9274                                                  ; $3cd7 : $ea, $74, $92
	inc sp                                                  ; $3cda : $33
	dec bc                                                  ; $3cdb : $0b
	and $c6                                                  ; $3cdc : $e6, $c6
	jp pe, $e83e                                                  ; $3cde : $ea, $3e, $e8
	ld a, a                                                  ; $3ce1 : $7f
	jp pe, Jump_03_0b96                                                  ; $3ce2 : $ea, $96, $0b
	push de                                                  ; $3ce5 : $d5
	ld l, h                                                  ; $3ce6 : $6c

Jump_03_3ce7:
br_03_3ce7:
	rst $20                                                  ; $3ce7 : $e7
	sub a                                                  ; $3ce8 : $97
	cp e                                                  ; $3ce9 : $bb
	jp (hl)                                                  ; $3cea : $e9


	call z, $ed92                                                  ; $3ceb : $cc, $92, $ed
	add a, b                                                  ; $3cee : $80
	dec bc                                                  ; $3cef : $0b
	jp po, $eab8                                                  ; $3cf0 : $e2, $b8, $ea
	.db $ed                                                  ; $3cf3 : $ed
	ex (sp), hl                                                  ; $3cf4 : $e3
	and b                                                  ; $3cf5 : $a0
	jp (hl)                                                  ; $3cf6 : $e9


	ret nc                                                  ; $3cf7 : $d0

br_03_3cf8:
	add hl, bc                                                  ; $3cf8 : $09
	adc a, $89                                                  ; $3cf9 : $ce, $89
	sub e                                                  ; $3cfb : $93
	call po, $aef5                                                  ; $3cfc : $e4, $f5, $ae
	sub e                                                  ; $3cff : $93
	cp l                                                  ; $3d00 : $bd
	dec bc                                                  ; $3d01 : $0b
	ld e, l                                                  ; $3d02 : $5d
	pop hl                                                  ; $3d03 : $e1
	ld bc, $0c10                                                  ; $3d04 : $01, $10, $0c
	call nc, $e1ae                                                  ; $3d07 : $d4, $ae, $e1
	ld l, h                                                  ; $3d0a : $6c
	or h                                                  ; $3d0b : $b4
	call po, $aef4                                                  ; $3d0c : $e4, $f4, $ae
	sub d                                                  ; $3d0f : $92
	or h                                                  ; $3d10 : $b4
	cp l                                                  ; $3d11 : $bd
	dec bc                                                  ; $3d12 : $0b
	ret pe                                                  ; $3d13 : $e8

	or a                                                  ; $3d14 : $b7
	djnz br_03_3cf8                                                  ; $3d15 : $10, $e1
	ld bc, $d40f                                                  ; $3d17 : $01, $0f, $d4
	cp l                                                  ; $3d1a : $bd

Jump_03_3d1b:
	and c                                                  ; $3d1b : $a1
	jp $56eb                                                  ; $3d1c : $c3, $eb, $56


	ld d, $e6                                                  ; $3d1f : $16, $e6
	call $e363                                                  ; $3d21 : $cd, $63, $e3
	ld h, h                                                  ; $3d24 : $64
	call pe, $0b83                                                  ; $3d25 : $ec, $83, $0b
	call po, $7ce9                                                  ; $3d28 : $e4, $e9, $7c
	and $c6                                                  ; $3d2b : $e6, $c6
	and $a5                                                  ; $3d2d : $e6, $a5
	ld a, (bc)                                                  ; $3d2f : $0a
	ld h, a                                                  ; $3d30 : $67
	jp nz, $bd3e                                                  ; $3d31 : $c2, $3e, $bd
	ld c, (hl)                                                  ; $3d34 : $4e
	.db $ed                                                  ; $3d35 : $ed
	ld sp, $93e0                                                  ; $3d36 : $31, $e0, $93
	dec bc                                                  ; $3d39 : $0b
	.db $ed                                                  ; $3d3a : $ed
	jp m, $d0e7                                                  ; $3d3b : $fa, $e7, $d0
	.db $ed                                                  ; $3d3e : $ed
	ld sp, hl                                                  ; $3d3f : $f9
	and $25                                                  ; $3d40 : $e6, $25
	xor $08                                                  ; $3d42 : $ee, $08
	ld de, $39c9                                                  ; $3d44 : $11, $c9, $39
	ld a, $e0                                                  ; $3d47 : $3e, $e0
	rra                                                  ; $3d49 : $1f
	jp po, $edd1                                                  ; $3d4a : $e2, $d1, $ed
	push de                                                  ; $3d4d : $d5
	or (hl)                                                  ; $3d4e : $b6
	push hl                                                  ; $3d4f : $e5
	dec b                                                  ; $3d50 : $05
	ld d, (hl)                                                  ; $3d51 : $56
	ld h, l                                                  ; $3d52 : $65
	ret po                                                  ; $3d53 : $e0

	ld h, $0b                                                  ; $3d54 : $26, $0b
	ex de, hl                                                  ; $3d56 : $eb
	ex af, af'                                                  ; $3d57 : $08
	ld c, e                                                  ; $3d58 : $4b
	push hl                                                  ; $3d59 : $e5
	add a, b                                                  ; $3d5a : $80
	ld c, c                                                  ; $3d5b : $49
	add hl, hl                                                  ; $3d5c : $29
	rrca                                                  ; $3d5d : $0f
	ret                                                  ; $3d5e : $c9


	jp nz, $1263                                                  ; $3d5f : $c2, $63, $12
	jp $5ce2                                                  ; $3d62 : $c3, $e2, $5c


	inc l                                                  ; $3d65 : $2c
	ex (sp), hl                                                  ; $3d66 : $e3
	or h                                                  ; $3d67 : $b4
	ret pe                                                  ; $3d68 : $e8

	jp (hl)                                                  ; $3d69 : $e9


	ex de, hl                                                  ; $3d6a : $eb
	ld a, a                                                  ; $3d6b : $7f
	dec bc                                                  ; $3d6c : $0b
	jp pe, $e78c                                                  ; $3d6d : $ea, $8c, $e7
	rst $08                                                  ; $3d70 : $cf
	dec (hl)                                                  ; $3d71 : $35
	jp po, $0bb2                                                  ; $3d72 : $e2, $b2, $0b
	call nc, $ae13                                                  ; $3d75 : $d4, $13, $ae
	jp $c0e8                                                  ; $3d78 : $c3, $e8, $c0


	inc c                                                  ; $3d7b : $0c
	ex de, hl                                                  ; $3d7c : $eb
	inc l                                                  ; $3d7d : $2c
	add hl, sp                                                  ; $3d7e : $39
	dec bc                                                  ; $3d7f : $0b
	ld l, $10                                                  ; $3d80 : $2e, $10
	call pe, Call_03_1183                                                  ; $3d82 : $ec, $83, $11
	ret                                                  ; $3d85 : $c9


	jp (hl)                                                  ; $3d86 : $e9


	and c                                                  ; $3d87 : $a1
	inc de                                                  ; $3d88 : $13
	xor l                                                  ; $3d89 : $ad
	.db $ed                                                  ; $3d8a : $ed

Call_03_3d8b:
	ret                                                  ; $3d8b : $c9


br_03_3d8c:
	inc h                                                  ; $3d8c : $24
	ret po                                                  ; $3d8d : $e0

	inc hl                                                  ; $3d8e : $23
	call c, $b8e8                                                  ; $3d8f : $dc, $e8, $b8
	ld h, e                                                  ; $3d92 : $63
	ret po                                                  ; $3d93 : $e0

	ld b, b                                                  ; $3d94 : $40
	dec bc                                                  ; $3d95 : $0b
	call po, $ece6                                                  ; $3d96 : $e4, $e6, $ec
	ld a, a                                                  ; $3d99 : $7f
	pop hl                                                  ; $3d9a : $e1
	ld e, b                                                  ; $3d9b : $58
	ld d, $c9                                                  ; $3d9c : $16, $c9
	ex (sp), hl                                                  ; $3d9e : $e3
	ei                                                  ; $3d9f : $fb
	inc de                                                  ; $3da0 : $13
	push hl                                                  ; $3da1 : $e5
	ret po                                                  ; $3da2 : $e0

	ld l, h                                                  ; $3da3 : $6c
	jp pe, $bad7                                                  ; $3da4 : $ea, $d7, $ba
	ld e, h                                                  ; $3da7 : $5c
	and $cd                                                  ; $3da8 : $e6, $cd
	inc c                                                  ; $3daa : $0c
	pop hl                                                  ; $3dab : $e1
	ld h, a                                                  ; $3dac : $67
	jp nc, $c4e5                                                  ; $3dad : $d2, $e5, $c4

br_03_3db0:
	jp Jump_03_0bb8                                                  ; $3db0 : $c3, $b8, $0b


Call_03_3db3:
	ex (sp), hl                                                  ; $3db3 : $e3
	ld h, (hl)                                                  ; $3db4 : $66
	pop hl                                                  ; $3db5 : $e1
	jp m, $6ce3                                                  ; $3db6 : $fa, $e3, $6c
	ex (sp), hl                                                  ; $3db9 : $e3
	ld b, d                                                  ; $3dba : $42
	djnz br_03_3e23                                                  ; $3dbb : $10, $66
	in h, (c)                                                  ; $3dbd : $ed, $60
	dec a                                                  ; $3dbf : $3d
	inc de                                                  ; $3dc0 : $13
	ld d, $2a                                                  ; $3dc1 : $16, $2a
	call pe, $4efa                                                  ; $3dc3 : $ec, $fa, $4e
	call po, $63be                                                  ; $3dc6 : $e4, $be, $63
	ret po                                                  ; $3dc9 : $e0

	daa                                                  ; $3dca : $27
	dec bc                                                  ; $3dcb : $0b
	jr z, br_03_3db0                                                  ; $3dcc : $28, $e2

	or $e7                                                  ; $3dce : $f6, $e7
	ld ($8a10), hl                                                  ; $3dd0 : $22, $10, $8a
	ld c, (hl)                                                  ; $3dd3 : $4e
	pop hl                                                  ; $3dd4 : $e1
	ret nz                                                  ; $3dd5 : $c0

	call po, $e966                                                  ; $3dd6 : $e4, $66, $e9
	out ($ed), a                                                  ; $3dd9 : $d3, $ed
	inc (hl)                                                  ; $3ddb : $34
	inc c                                                  ; $3ddc : $0c
	jp (hl)                                                  ; $3ddd : $e9


	push de                                                  ; $3dde : $d5
	jp (hl)                                                  ; $3ddf : $e9


	cp (hl)                                                  ; $3de0 : $be
	ld bc, $a5e3                                                  ; $3de1 : $01, $e3, $a5

Jump_03_3de4:
	and $de                                                  ; $3de4 : $e6, $de
	pop hl                                                  ; $3de6 : $e1
	sub c                                                  ; $3de7 : $91
	call pe, Call_03_0a8c                                                  ; $3de8 : $ec, $8c, $0a
	ret                                                  ; $3deb : $c9


	xor (hl)                                                  ; $3dec : $ae
	jp $e02f                                                  ; $3ded : $c3, $2f, $e0


	djnz br_03_3d8c                                                  ; $3df0 : $10, $9a
	ret po                                                  ; $3df2 : $e0

	rrca                                                  ; $3df3 : $0f
	dec bc                                                  ; $3df4 : $0b
	ret pe                                                  ; $3df5 : $e8

	ex af, af'                                                  ; $3df6 : $08
	.db $ed                                                  ; $3df7 : $ed
	call po, Call_03_1210                                                  ; $3df8 : $e4, $10, $12
	jp (hl)                                                  ; $3dfb : $e9


	ld e, a                                                  ; $3dfc : $5f
	sub d                                                  ; $3dfd : $92
	ld (hl), a                                                  ; $3dfe : $77
	or e                                                  ; $3dff : $b3
	add a, $eb                                                  ; $3e00 : $c6, $eb
	scf                                                  ; $3e02 : $37
	pop hl                                                  ; $3e03 : $e1
	djnz br_03_3e58                                                  ; $3e04 : $10, $52
	inc de                                                  ; $3e06 : $13
	and $47                                                  ; $3e07 : $e6, $47
	add a, $2f                                                  ; $3e09 : $c6, $2f
	sbc a, $01                                                  ; $3e0b : $de, $01
	call pe, $e2f2                                                  ; $3e0d : $ec, $f2, $e2
	inc hl                                                  ; $3e10 : $23
	jp pe, Jump_03_0e77                                                  ; $3e11 : $ea, $77, $0e
	or h                                                  ; $3e14 : $b4
	ld e, d                                                  ; $3e15 : $5a
	ld l, c                                                  ; $3e16 : $69
	ex (sp), hl                                                  ; $3e17 : $e3
	ld bc, $58e4                                                  ; $3e18 : $01, $e4, $58
	ld h, e                                                  ; $3e1b : $63
	ret pe                                                  ; $3e1c : $e8

	sub c                                                  ; $3e1d : $91
	ld (de), a                                                  ; $3e1e : $12
	jp Jump_03_0a2f                                                  ; $3e1f : $c3, $2f, $0a


	ret po                                                  ; $3e22 : $e0

br_03_3e23:
	sbc a, $e6                                                  ; $3e23 : $de, $e6
	rra                                                  ; $3e25 : $1f
	and $71                                                  ; $3e26 : $e6, $71
	and $72                                                  ; $3e28 : $e6, $72
	rrca                                                  ; $3e2a : $0f
	sub $4e                                                  ; $3e2b : $d6, $4e
	ld d, l                                                  ; $3e2d : $55
	call po, $ba7c                                                  ; $3e2e : $e4, $7c, $ba
	jp pe, $c0d9                                                  ; $3e31 : $ea, $d9, $c0
	or h                                                  ; $3e34 : $b4
	ex de, hl                                                  ; $3e35 : $eb
	exx                                                  ; $3e36 : $d9
	and $fe                                                  ; $3e37 : $e6, $fe

Call_03_3e39:
	dec bc                                                  ; $3e39 : $0b
	call po, $eaff                                                  ; $3e3a : $e4, $ff, $ea
	rst $08                                                  ; $3e3d : $cf
	and $85                                                  ; $3e3e : $e6, $85
	ld a, (bc)                                                  ; $3e40 : $0a
	.db $ed                                                  ; $3e41 : $ed
	pop bc                                                  ; $3e42 : $c1
	and c                                                  ; $3e43 : $a1
	sub e                                                  ; $3e44 : $93
	cp l                                                  ; $3e45 : $bd
	ld b, e                                                  ; $3e46 : $43
	or h                                                  ; $3e47 : $b4
	dec (hl)                                                  ; $3e48 : $35
	jp nz, $e60b                                                  ; $3e49 : $c2, $0b, $e6
	add a, $e5                                                  ; $3e4c : $c6, $e5
	ld a, b                                                  ; $3e4e : $78
	ld a, h                                                  ; $3e4f : $7c
	ret po                                                  ; $3e50 : $e0

	ld l, e                                                  ; $3e51 : $6b
	ld de, $edd5                                                  ; $3e52 : $11, $d5, $ed
	xor c                                                  ; $3e55 : $a9
	ex (sp), hl                                                  ; $3e56 : $e3
	ei                                                  ; $3e57 : $fb

br_03_3e58:
	ld d, l                                                  ; $3e58 : $55
	call po, $937d                                                  ; $3e59 : $e4, $7d, $93
	rst $20                                                  ; $3e5c : $e7
	.db $ed                                                  ; $3e5d : $ed
	dec bc                                                  ; $3e5e : $0b
	rst $20                                                  ; $3e5f : $e7
	sub (hl)                                                  ; $3e60 : $96
	ld d, $de                                                  ; $3e61 : $16, $de
	ld bc, $4fe2                                                  ; $3e63 : $01, $e2, $4f
	ex (sp), hl                                                  ; $3e66 : $e3
	ld (hl), c                                                  ; $3e67 : $71
	and $ae                                                  ; $3e68 : $e6, $ae
	ld de, $ec0c                                                  ; $3e6a : $11, $0c, $ec
	call c, Call_03_29ea                                                  ; $3e6d : $dc, $ea, $29
	.db $ed                                                  ; $3e70 : $ed
	rst $38                                                  ; $3e71 : $ff
	ex (sp), hl                                                  ; $3e72 : $e3
	dec b                                                  ; $3e73 : $05
	or h                                                  ; $3e74 : $b4
	call po, $af04                                                  ; $3e75 : $e4, $04, $af
	ld d, $b4                                                  ; $3e78 : $16, $b4
	sbc a, $01                                                  ; $3e7a : $de, $01
	adc a, (hl)                                                  ; $3e7c : $8e
	xor c                                                  ; $3e7d : $a9
	rst $00                                                  ; $3e7e : $c7
	ret z                                                  ; $3e7f : $c8

	dec c                                                  ; $3e80 : $0d
	or h                                                  ; $3e81 : $b4
	add a, c                                                  ; $3e82 : $81
	jp (hl)                                                  ; $3e83 : $e9


	rst $18                                                  ; $3e84 : $df
	or h                                                  ; $3e85 : $b4
	xor h                                                  ; $3e86 : $ac
	call pe, $57c7                                                  ; $3e87 : $ec, $c7, $57
	adc a, h                                                  ; $3e8a : $8c
	exx                                                  ; $3e8b : $d9
	jp $950a                                                  ; $3e8c : $c3, $0a, $95


	ex (sp), hl                                                  ; $3e8f : $e3
	sbc a, a                                                  ; $3e90 : $9f
	ex de, hl                                                  ; $3e91 : $eb
	ld l, d                                                  ; $3e92 : $6a
	ld c, $b4                                                  ; $3e93 : $0e, $b4
	xor a                                                  ; $3e95 : $af
	or e                                                  ; $3e96 : $b3
	ex de, hl                                                  ; $3e97 : $eb

Call_03_3e98:
	inc de                                                  ; $3e98 : $13
	ld d, a                                                  ; $3e99 : $57
	cp l                                                  ; $3e9a : $bd
	cpd                                                  ; $3e9b : $ed, $a9
	sbc a, $af                                                  ; $3e9d : $de, $af
	sub d                                                  ; $3e9f : $92
	ld (de), a                                                  ; $3ea0 : $12
	ld bc, $04e5                                                  ; $3ea1 : $01, $e5, $04
	call po, $e2aa                                                  ; $3ea4 : $e4, $aa, $e2
	rst $38                                                  ; $3ea7 : $ff
	rrca                                                  ; $3ea8 : $0f
	or h                                                  ; $3ea9 : $b4
	ld c, (hl)                                                  ; $3eaa : $4e
	ex (sp), hl                                                  ; $3eab : $e3
	ld d, $e3                                                  ; $3eac : $16, $e3
	ld (bc), a                                                  ; $3eae : $02
	rst $20                                                  ; $3eaf : $e7
	ret                                                  ; $3eb0 : $c9


	ld h, e                                                  ; $3eb1 : $63
	jp (hl)                                                  ; $3eb2 : $e9


	ld c, (hl)                                                  ; $3eb3 : $4e
	ld h, a                                                  ; $3eb4 : $67
	xor $13                                                  ; $3eb5 : $ee, $13
	dec bc                                                  ; $3eb7 : $0b
	cp $fe                                                  ; $3eb8 : $fe, $fe
	ld sp, $3737                                                  ; $3eba : $31, $37, $37
	jr nc, -$01                                                  ; $3ebd : $30, $ff

	cp $fe                                                  ; $3ebf : $fe, $fe
	ld sp, $3737                                                  ; $3ec1 : $31, $37, $37
	ld ($feff), a                                                  ; $3ec4 : $32, $ff, $fe
	cp $31                                                  ; $3ec7 : $fe, $31
	scf                                                  ; $3ec9 : $37
	scf                                                  ; $3eca : $37
	inc (hl)                                                  ; $3ecb : $34
	rst $38                                                  ; $3ecc : $ff

Jump_03_3ecd:
	inc d                                                  ; $3ecd : $14
	or h                                                  ; $3ece : $b4
	in a, ($4e)                                                  ; $3ecf : $db, $4e
	jp pe, $e72b                                                  ; $3ed1 : $ea, $2b, $e7
	ld (hl), $e8                                                  ; $3ed4 : $36, $e8
	ret                                                  ; $3ed6 : $c9


	ld h, e                                                  ; $3ed7 : $63
	cp $fe                                                  ; $3ed8 : $fe, $fe
	ld sp, $3238                                                  ; $3eda : $31, $38, $32
	dec (hl)                                                  ; $3edd : $35
	rst $38                                                  ; $3ede : $ff
	ld h, a                                                  ; $3edf : $67
	add hl, sp                                                  ; $3ee0 : $39

Call_03_3ee1:
	dec bc                                                  ; $3ee1 : $0b
	ld d, h                                                  ; $3ee2 : $54
	and a                                                  ; $3ee3 : $a7
	ld c, c                                                  ; $3ee4 : $49
	dec c                                                  ; $3ee5 : $0d
	call pe, $e483                                                  ; $3ee6 : $ec, $83, $e4
	ld sp, hl                                                  ; $3ee9 : $f9
	ld d, c                                                  ; $3eea : $51
	and $7d                                                  ; $3eeb : $e6, $7d
	and $42                                                  ; $3eed : $e6, $42
	ld d, (hl)                                                  ; $3eef : $56
	ret                                                  ; $3ef0 : $c9


	adc a, e                                                  ; $3ef1 : $8b

br_03_3ef2:
	dec bc                                                  ; $3ef2 : $0b
	xor e                                                  ; $3ef3 : $ab
	ld c, c                                                  ; $3ef4 : $49
	add a, e                                                  ; $3ef5 : $83
	inc d                                                  ; $3ef6 : $14
	sub $4e                                                  ; $3ef7 : $d6, $4e
	sbc a, a                                                  ; $3ef9 : $9f
	cp d                                                  ; $3efa : $ba
	jp pe, $b439                                                  ; $3efb : $ea, $39, $b4
	ret pe                                                  ; $3efe : $e8

	adc a, a                                                  ; $3eff : $8f
	ld h, e                                                  ; $3f00 : $63
	rst $20                                                  ; $3f01 : $e7
	and (hl)                                                  ; $3f02 : $a6
	cp $fe                                                  ; $3f03 : $fe, $fe
	ld sp, $3239                                                  ; $3f05 : $31, $39, $32
	ld (hl), $ff                                                  ; $3f08 : $36, $ff
	dec bc                                                  ; $3f0a : $0b
	ret po                                                  ; $3f0b : $e0

	add a, d                                                  ; $3f0c : $82

Call_03_3f0d:
	jp po, $ea37                                                  ; $3f0d : $e2, $37, $ea
	sub l                                                  ; $3f10 : $95
	ld a, (bc)                                                  ; $3f11 : $0a
	sub $e1                                                  ; $3f12 : $d6, $e1
	cp d                                                  ; $3f14 : $ba
	ld a, d                                                  ; $3f15 : $7a
	ld h, e                                                  ; $3f16 : $63
	and a                                                  ; $3f17 : $a7
	ld h, e                                                  ; $3f18 : $63
	ret po                                                  ; $3f19 : $e0

	jr nc, br_03_3f27                                                  ; $3f1a : $30, $0b

	rst $20                                                  ; $3f1c : $e7
	sbc a, l                                                  ; $3f1d : $9d
	ex de, hl                                                  ; $3f1e : $eb
	call c, $16e7                                                  ; $3f1f : $dc, $e7, $16
	inc c                                                  ; $3f22 : $0c
	or h                                                  ; $3f23 : $b4
	jp pe, $e3ce                                                  ; $3f24 : $ea, $ce, $e3

br_03_3f27:
	di                                                  ; $3f27 : $f3
	ret pe                                                  ; $3f28 : $e8

	jp pe, $e063                                                  ; $3f29 : $ea, $63, $e0
	jr nc, br_03_3ef2                                                  ; $3f2c : $30, $c4

	ld a, (bc)                                                  ; $3f2e : $0a
	.db $ed                                                  ; $3f2f : $ed
	in a, ($e5)                                                  ; $3f30 : $db, $e5
	or c                                                  ; $3f32 : $b1
	jp pe, Jump_03_0db8                                                  ; $3f33 : $ea, $b8, $0d
	ret                                                  ; $3f36 : $c9


	push hl                                                  ; $3f37 : $e5
	or b                                                  ; $3f38 : $b0
	cp d                                                  ; $3f39 : $ba
	jp (hl)                                                  ; $3f3a : $e9


	call nz, $7792                                                  ; $3f3b : $c4, $92, $77
	ld h, h                                                  ; $3f3e : $64
	ld (hl), a                                                  ; $3f3f : $77
	pop hl                                                  ; $3f40 : $e1
	jp nz, $e40b                                                  ; $3f41 : $c2, $0b, $e4
	sub c                                                  ; $3f44 : $91
	rst $20                                                  ; $3f45 : $e7
	rra                                                  ; $3f46 : $1f
	jp pe, Jump_03_16a2                                                  ; $3f47 : $ea, $a2, $16
	or h                                                  ; $3f4a : $b4
	cp b                                                  ; $3f4b : $b8
	add a, c                                                  ; $3f4c : $81
	ex de, hl                                                  ; $3f4d : $eb
	dec de                                                  ; $3f4e : $1b
	ld h, l                                                  ; $3f4f : $65
	cp l                                                  ; $3f50 : $bd
	ld c, $fe                                                  ; $3f51 : $0e, $fe
	cp $31                                                  ; $3f53 : $fe, $31
	jr c, br_03_3f88                                                  ; $3f55 : $38, $31

	dec (hl)                                                  ; $3f57 : $35
	rst $38                                                  ; $3f58 : $ff
	add a, $8e                                                  ; $3f59 : $c6, $8e
	nop                                                  ; $3f5b : $00
	xor c                                                  ; $3f5c : $a9
	ld d, $de                                                  ; $3f5d : $16, $de
	ld bc, $4484                                                  ; $3f5f : $01, $84, $44
	rst $00                                                  ; $3f62 : $c7
	ld d, $65                                                  ; $3f63 : $16, $65
	cp $fe                                                  ; $3f65 : $fe, $fe

Call_03_3f67:
	ld sp, $3038                                                  ; $3f67 : $31, $38, $30
	jr nc, br_03_3f93                                                  ; $3f6a : $30, $27

	ld d, e                                                  ; $3f6c : $53
	rst $38                                                  ; $3f6d : $ff
	add a, a                                                  ; $3f6e : $87
	and $4b                                                  ; $3f6f : $e6, $4b
	jp $fae4                                                  ; $3f71 : $c3, $e4, $fa


	ld h, a                                                  ; $3f74 : $67
	ex de, hl                                                  ; $3f75 : $eb
	ld a, (de)                                                  ; $3f76 : $1a
	sub e                                                  ; $3f77 : $93
	cp l                                                  ; $3f78 : $bd
	dec bc                                                  ; $3f79 : $0b
	xor c                                                  ; $3f7a : $a9
	rst $00                                                  ; $3f7b : $c7
	adc a, (hl)                                                  ; $3f7c : $8e
	inc d                                                  ; $3f7d : $14
	ret                                                  ; $3f7e : $c9


	ld a, b                                                  ; $3f7f : $78
	call pe, $c381                                                  ; $3f80 : $ec, $81, $c3
	jp pe, Jump_03_2d02                                                  ; $3f83 : $ea, $02, $2d
	cp l                                                  ; $3f86 : $bd
	ld d, (hl)                                                  ; $3f87 : $56

br_03_3f88:
	ld d, h                                                  ; $3f88 : $54
	ld h, e                                                  ; $3f89 : $63
	cp $fe                                                  ; $3f8a : $fe, $fe

Jump_03_3f8c:
	ld sp, $3038                                                  ; $3f8c : $31, $38, $30
	inc sp                                                  ; $3f8f : $33
	rst $38                                                  ; $3f90 : $ff
	dec bc                                                  ; $3f91 : $0b
	ret pe                                                  ; $3f92 : $e8

br_03_3f93:
	sub e                                                  ; $3f93 : $93
	ret pe                                                  ; $3f94 : $e8

	or (hl)                                                  ; $3f95 : $b6
	rst $20                                                  ; $3f96 : $e7

Call_03_3f97:
	ld e, h                                                  ; $3f97 : $5c

Call_03_3f98:
	rst $20                                                  ; $3f98 : $e7
	ld e, l                                                  ; $3f99 : $5d
	ld (de), a                                                  ; $3f9a : $12

Call_03_3f9b:
	jp (hl)                                                  ; $3f9b : $e9


	ld b, a                                                  ; $3f9c : $47
	push de                                                  ; $3f9d : $d5
	ret pe                                                  ; $3f9e : $e8

	dec h                                                  ; $3f9f : $25
	ld d, (hl)                                                  ; $3fa0 : $56
	sbc a, c                                                  ; $3fa1 : $99
	add hl, sp                                                  ; $3fa2 : $39
	cp d                                                  ; $3fa3 : $ba
	pop hl                                                  ; $3fa4 : $e1
	ld l, (hl)                                                  ; $3fa5 : $6e
	jp po, $92b0                                                  ; $3fa6 : $e2, $b0, $92
	add hl, de                                                  ; $3fa9 : $19
	ld a, (de)                                                  ; $3faa : $1a
	sbc a, $01                                                  ; $3fab : $de, $01
	call po, $ea31                                                  ; $3fad : $e4, $31, $ea
	ld a, c                                                  ; $3fb0 : $79
	and $34                                                  ; $3fb1 : $e6, $34
	dec bc                                                  ; $3fb3 : $0b
	or h                                                  ; $3fb4 : $b4
	rst $20                                                  ; $3fb5 : $e7
	ld (de), a                                                  ; $3fb6 : $12
	pop hl                                                  ; $3fb7 : $e1
	jp c, $bf93                                                  ; $3fb8 : $da, $93, $bf
	push hl                                                  ; $3fbb : $e5
	ld l, (hl)                                                  ; $3fbc : $6e
	ld l, a                                                  ; $3fbd : $6f
	dec bc                                                  ; $3fbe : $0b
	jp po, $e312                                                  ; $3fbf : $e2, $12, $e3
	ld sp, $02e3                                                  ; $3fc2 : $31, $e3, $02
	inc d                                                  ; $3fc5 : $14
	push hl                                                  ; $3fc6 : $e5
	ld b, d                                                  ; $3fc7 : $42
	.db $ed                                                  ; $3fc8 : $ed
	sub c                                                  ; $3fc9 : $91
	rst $20                                                  ; $3fca : $e7
	dec c                                                  ; $3fcb : $0d
	ld e, a                                                  ; $3fcc : $5f
	call pe, $e0fa                                                  ; $3fcd : $ec, $fa, $e0
	ld a, d                                                  ; $3fd0 : $7a
	ret                                                  ; $3fd1 : $c9


	and (hl)                                                  ; $3fd2 : $a6
	ld hl, $a3e2                                                  ; $3fd3 : $21, $e2, $a3
	nop                                                  ; $3fd6 : $00
	ret po                                                  ; $3fd7 : $e0

	jr z, br_03_3fe5                                                  ; $3fd8 : $28, $0b

	jp (hl)                                                  ; $3fda : $e9


	or b                                                  ; $3fdb : $b0
	call pe, $e3ef                                                  ; $3fdc : $ec, $ef, $e3
	add a, e                                                  ; $3fdf : $83
	dec d                                                  ; $3fe0 : $15
	or h                                                  ; $3fe1 : $b4
	jp nz, $e651                                                  ; $3fe2 : $c2, $51, $e6

br_03_3fe5:
	ld b, d                                                  ; $3fe5 : $42
	pop hl                                                  ; $3fe6 : $e1
	ld (hl), a                                                  ; $3fe7 : $77
	ld h, e                                                  ; $3fe8 : $63
	cp $fe                                                  ; $3fe9 : $fe, $fe
	ld sp, $3737                                                  ; $3feb : $31, $37, $37
	dec (hl)                                                  ; $3fee : $35
	rst $38                                                  ; $3fef : $ff
	ld hl, $22e7                                                  ; $3ff0 : $21, $e7, $22
	ld d, $de                                                  ; $3ff3 : $16, $de
	ld bc, $ea28                                                  ; $3ff5 : $01, $28, $ea
	sub a                                                  ; $3ff8 : $97
	jp po, $0ff6                                                  ; $3ff9 : $e2, $f6, $0f
	.db $ed                                                  ; $3ffc : $ed
	pop bc                                                  ; $3ffd : $c1
	jp (hl)                                                  ; $3ffe : $e9


	.db $c6                                                  ; $3fff : $c6