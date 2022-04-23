.include "includes.s"
        
.bank $000 slot 0
.org $0


Boot:
	ld bc, $c000                                                  ; $0000 : $01, $00, $c0
	ld a, $fe                                                  ; $0003 : $3e, $fe
	out (c), a                                                  ; $0005 : $ed, $79
	jp Begin1                                                  ; $0007 : $c3, $00, $02


	.ds $38-$a, $00


IrqVector:
	jr _IrqVector                                                  ; $0038 : $18, $06


	.ds $40-$3a, $00


_IrqVector:
	push af                                                  ; $0040 : $f5
	push bc                                                  ; $0041 : $c5
	push de                                                  ; $0042 : $d5
	push hl                                                  ; $0043 : $e5

;
	ld hl, $410f                                                  ; $0044 : $21, $0f, $41
	res 4, (hl)                                                  ; $0047 : $cb, $a6
	res 5, (hl)                                                  ; $0049 : $cb, $ae
	set 6, (hl)                                                  ; $004b : $cb, $f6
	bit 0, (hl)                                                  ; $004d : $cb, $46
	jr nz, @br_006a                                                  ; $004f : $20, $19

	bit 1, (hl)                                                  ; $0051 : $cb, $4e
	jr z, @cont_007c                                                  ; $0053 : $28, $27

	ld hl, $410e                                                  ; $0055 : $21, $0e, $41
	inc (hl)                                                  ; $0058 : $34
	ld a, (hl)                                                  ; $0059 : $7e
	cp $32                                                  ; $005a : $fe, $32
	jr nz, @cont_007c                                                  ; $005c : $20, $1e

	ld (hl), $00                                                  ; $005e : $36, $00
	ld hl, $410c                                                  ; $0060 : $21, $0c, $41
	inc (hl)                                                  ; $0063 : $34
	jr nz, @cont_007c                                                  ; $0064 : $20, $16

	inc hl                                                  ; $0066 : $23
	inc (hl)                                                  ; $0067 : $34
	jr @cont_007c                                                  ; $0068 : $18, $12

@br_006a:
	ld hl, $410c                                                  ; $006a : $21, $0c, $41
	inc (hl)                                                  ; $006d : $34
	jr nz, @cont_007c                                                  ; $006e : $20, $0c

	inc hl                                                  ; $0070 : $23
	inc (hl)                                                  ; $0071 : $34
	ld a, (hl)                                                  ; $0072 : $7e
	cp $0c                                                  ; $0073 : $fe, $0c
	jr nz, @cont_007c                                                  ; $0075 : $20, $05

	ld hl, $410f                                                  ; $0077 : $21, $0f, $41
	set 2, (hl)                                                  ; $007a : $cb, $d6

@cont_007c:
	ld hl, $4100                                                  ; $007c : $21, $00, $41
	ld e, $01                                                  ; $007f : $1e, $01
	ld c, $fe                                                  ; $0081 : $0e, $fe
	ld b, $01                                                  ; $0083 : $06, $01

Jump_00_0085:
	in a, (c)                                                  ; $0085 : $ed, $78
	xor (hl)                                                  ; $0087 : $ae
	jr z, Jump_00_009e                                                  ; $0088 : $28, $14

	ld d, $00                                                  ; $008a : $16, $00
-	inc d                                                  ; $008c : $14
	jr nz, -                                                  ; $008d : $20, $fd

	xor (hl)                                                  ; $008f : $ae
	in d, (c)                                                  ; $0090 : $ed, $50
	cp d                                                  ; $0092 : $ba
	jr nz, Jump_00_009e                                                  ; $0093 : $20, $09

	xor (hl)                                                  ; $0095 : $ae
	cpl                                                  ; $0096 : $2f
	or d                                                  ; $0097 : $b2
	ld (hl), d                                                  ; $0098 : $72
	cpl                                                  ; $0099 : $2f
	or a                                                  ; $009a : $b7
	jp nz, Jump_00_017a                                                  ; $009b : $c2, $7a, $01

Jump_00_009e:
	inc l                                                  ; $009e : $2c
	ld a, c                                                  ; $009f : $79
	cp $ff                                                  ; $00a0 : $fe, $ff
	jr z, @br_00af                                                  ; $00a2 : $28, $0b

	rlc c                                                  ; $00a4 : $cb, $01
	jr c, Jump_00_0085                                                  ; $00a6 : $38, $dd

	set 0, c                                                  ; $00a8 : $cb, $c1
	ld b, $00                                                  ; $00aa : $06, $00
	jp Jump_00_0085                                                  ; $00ac : $c3, $85, $00

@br_00af:
	inc (hl)                                                  ; $00af : $34
	bit 5, (hl)                                                  ; $00b0 : $cb, $6e
	jr z, @cont_00bb                                                  ; $00b2 : $28, $07

	res 5, (hl)                                                  ; $00b4 : $cb, $ae
	ld a, $0b                                                  ; $00b6 : $3e, $0b
	call Call_00_048e                                                  ; $00b8 : $cd, $8e, $04

@cont_00bb:
	ld hl, $410a                                                  ; $00bb : $21, $0a, $41
	inc (hl)                                                  ; $00be : $34
	jr nz, Jump_00_00c8                                                  ; $00bf : $20, $07

	inc hl                                                  ; $00c1 : $23
	inc (hl)                                                  ; $00c2 : $34
	bit 7, (hl)                                                  ; $00c3 : $cb, $7e
	jp nz, Jump_00_015e                                                  ; $00c5 : $c2, $5e, $01

Jump_00_00c8:
	bit 0, e                                                  ; $00c8 : $cb, $43
	jr z, br_00_00da                                                  ; $00ca : $28, $0e

; Wait a while
	xor a                                                  ; $00cc : $af
-	dec a                                                  ; $00cd : $3d
	nop                                                  ; $00ce : $00
	nop                                                  ; $00cf : $00
	jr nz, -                                                  ; $00d0 : $20, $fb

br_00_00d2:
	pop hl                                                  ; $00d2 : $e1
	pop de                                                  ; $00d3 : $d1
	pop bc                                                  ; $00d4 : $c1
	pop af                                                  ; $00d5 : $f1
	im 1                                                  ; $00d6 : $ed, $56
	ei                                                  ; $00d8 : $fb
	ret                                                  ; $00d9 : $c9

br_00_00da:
	xor a                                                  ; $00da : $af
	ld hl, $4109                                                  ; $00db : $21, $09, $41
	ld (hl), a                                                  ; $00de : $77
	inc hl                                                  ; $00df : $23
	nop                                                  ; $00e0 : $00
	nop                                                  ; $00e1 : $00
	nop                                                  ; $00e2 : $00
	inc hl                                                  ; $00e3 : $23
	ld (hl), a                                                  ; $00e4 : $77
	ld ($412f), a                                                  ; $00e5 : $32, $2f, $41
	pop hl                                                  ; $00e8 : $e1
	ld a, (hl)                                                  ; $00e9 : $7e
	ex de, hl                                                  ; $00ea : $eb
	ld a, ($4102)                                                  ; $00eb : $3a, $02, $41
	bit 6, a                                                  ; $00ee : $cb, $77
	jr z, br_00_0159                                                  ; $00f0 : $28, $67

	ld a, ($4112)                                                  ; $00f2 : $3a, $12, $41
	bit 3, a                                                  ; $00f5 : $cb, $5f
	jr nz, br_00_0156                                                  ; $00f7 : $20, $5d

br_00_00f9:
	ld hl, $410f                                                  ; $00f9 : $21, $0f, $41
	ld a, (de)                                                  ; $00fc : $1a
	cp $e0                                                  ; $00fd : $fe, $e0
	jr nc, br_00_0145                                                  ; $00ff : $30, $44

	set 4, (hl)                                                  ; $0101 : $cb, $e6
	jr br_00_0147                                                  ; $0103 : $18, $42


Call_00_0105:
	ld hl, $4161                                                  ; $0105 : $21, $61, $41
	bit 1, (hl)                                                  ; $0108 : $cb, $4e
	jr nz, @cont_0114                                                  ; $010a : $20, $08

	bit 0, (hl)                                                  ; $010c : $cb, $46
	jr z, @cont_0114                                                  ; $010e : $28, $04

	ld hl, $4123                                                  ; $0110 : $21, $23, $41
	dec (hl)                                                  ; $0113 : $35

@cont_0114:
	ld hl, $410f                                                  ; $0114 : $21, $0f, $41
	res 4, (hl)                                                  ; $0117 : $cb, $a6
	ld hl, $4123                                                  ; $0119 : $21, $23, $41
	ld a, (hl)                                                  ; $011c : $7e
	inc hl                                                  ; $011d : $23
	sub (hl)                                                  ; $011e : $96
	ld hl, $4200                                                  ; $011f : $21, $00, $42
	ld l, a                                                  ; $0122 : $6f
	ld a, ($4113)                                                  ; $0123 : $3a, $13, $41
	ld (hl), a                                                  ; $0126 : $77
	ld hl, $4124                                                  ; $0127 : $21, $24, $41
	ld a, (hl)                                                  ; $012a : $7e
	or a                                                  ; $012b : $b7
	jr nz, @br_0143                                                  ; $012c : $20, $15

	dec hl                                                  ; $012e : $2b
	ld a, (hl)                                                  ; $012f : $7e
	cp $7f                                                  ; $0130 : $fe, $7f
	jr z, @end                                                  ; $0132 : $28, $10

	ld a, ($4161)                                                  ; $0134 : $3a, $61, $41
	bit 0, a                                                  ; $0137 : $cb, $47
	jr nz, @br_013d                                                  ; $0139 : $20, $02

	inc (hl)                                                  ; $013b : $34
	ret                                                  ; $013c : $c9

@br_013d:
	set 1, a                                                  ; $013d : $cb, $cf
	ld ($4161), a                                                  ; $013f : $32, $61, $41
	ret                                                  ; $0142 : $c9

@br_0143:
	dec (hl)                                                  ; $0143 : $35

@end:
	ret                                                  ; $0144 : $c9


br_00_0145:
	set 5, (hl)                                                  ; $0145 : $cb, $ee

br_00_0147:
	ld hl, $4113                                                  ; $0147 : $21, $13, $41
	ld a, (de)                                                  ; $014a : $1a
	ld (hl), a                                                  ; $014b : $77
	jr nz, br_00_00d2                                                  ; $014c : $20, $84

Call_00_014e:
	ld a, e                                                  ; $014e : $7b
	add a, $48                                                  ; $014f : $c6, $48
	jr nc, +                                                  ; $0151 : $30, $01
	inc d                                                  ; $0153 : $14
+	ld e, a                                                  ; $0154 : $5f
	ret                                                  ; $0155 : $c9


br_00_0156:
	call Call_00_014e                                                  ; $0156 : $cd, $4e, $01

br_00_0159:
	call Call_00_014e                                                  ; $0159 : $cd, $4e, $01
	jr br_00_00f9                                                  ; $015c : $18, $9b

Jump_00_015e:
	call Call_00_073b                                                  ; $015e : $cd, $3b, $07
	ld hl, $412f                                                  ; $0161 : $21, $2f, $41
	inc (hl)                                                  ; $0164 : $34
	bit 2, (hl)                                                  ; $0165 : $cb, $56
	jr nz, br_00_0179                                                  ; $0167 : $20, $10

	ld a, $7f                                                  ; $0169 : $3e, $7f
	ld ($410b), a                                                  ; $016b : $32, $0b, $41
	ld a, $c0                                                  ; $016e : $3e, $c0
	ld ($410a), a                                                  ; $0170 : $32, $0a, $41
	jp Jump_00_00c8                                                  ; $0173 : $c3, $c8, $00


Jump_00_0176:
	call Call_00_073b                                                  ; $0176 : $cd, $3b, $07

br_00_0179:
	halt                                                  ; $0179 : $76

Jump_00_017a:
	bit 0, e                                                  ; $017a : $cb, $43
	jp z, Jump_00_009e                                                  ; $017c : $ca, $9e, $00
	push hl                                                  ; $017f : $e5
	rlc l                                                  ; $0180 : $cb, $05
	rlc l                                                  ; $0182 : $cb, $05
	rlc l                                                  ; $0184 : $cb, $05

br_00_0186:
	rrca                                                  ; $0186 : $0f
	jr c, br_00_018c                                                  ; $0187 : $38, $03

	inc l                                                  ; $0189 : $2c
	jr br_00_0186                                                  ; $018a : $18, $fa

br_00_018c:
	ld a, l                                                  ; $018c : $7d
	ld hl, $24f4                                                  ; $018d : $21, $f4, $24
	call AddAtoHL                                                  ; $0190 : $cd, $99, $01
	ex (sp), hl                                                  ; $0193 : $e3
	ld e, $00                                                  ; $0194 : $1e, $00
	jp Jump_00_009e                                                  ; $0196 : $c3, $9e, $00


AddAtoHL:
	add a, l                                                        ; $0199
	jr nc, +                                                        ; $019a
	inc h                                                           ; $019c
+	ld l, a                                                         ; $019d
	ret                                                             ; $019e


Call_00_019f:
	push bc                                                  ; $019f : $c5
	ld b, $0a                                                  ; $01a0 : $06, $0a
	call Call_00_01b5                                                  ; $01a2 : $cd, $b5, $01

br_00_01a5:
	rlca                                                  ; $01a5 : $07
	push af                                                  ; $01a6 : $f5
	call c, Call_00_01b5                                                  ; $01a7 : $dc, $b5, $01
	ld c, a                                                  ; $01aa : $4f
	pop af                                                  ; $01ab : $f1
	call c, AddCtoA                                                  ; $01ac : $dc, $b3, $01
	djnz br_00_01a5                                                  ; $01af : $10, $f4
	pop bc                                                  ; $01b1 : $c1
	ret                                                  ; $01b2 : $c9


AddCtoA:
	add a, c                                                  ; $01b3 : $81
	ret                                                  ; $01b4 : $c9


Call_00_01b5:
	push hl                                                  ; $01b5 : $e5
	push de                                                  ; $01b6 : $d5
	push bc                                                  ; $01b7 : $c5
	ld hl, ($4150)                                                  ; $01b8 : $2a, $50, $41
	ld a, ($410a)                                                  ; $01bb : $3a, $0a, $41
	ld c, a                                                  ; $01be : $4f
	ld b, $08                                                  ; $01bf : $06, $08

br_00_01c1:
	call AddAtoHL                                                  ; $01c1 : $cd, $99, $01
	res 5, h                                                  ; $01c4 : $cb, $ac
	res 6, h                                                  ; $01c6 : $cb, $b4
	res 7, h                                                  ; $01c8 : $cb, $bc
	ld a, (hl)                                                  ; $01ca : $7e
	inc hl                                                  ; $01cb : $23
	or a                                                  ; $01cc : $b7
	jr z, br_00_01c1                                                  ; $01cd : $28, $f2

	bit 6, a                                                  ; $01cf : $cb, $77
	jr nz, br_00_01d5                                                  ; $01d1 : $20, $02

	rlc a                                                  ; $01d3 : $cb, $07

br_00_01d5:
	add a, c                                                  ; $01d5 : $81
	ld c, a                                                  ; $01d6 : $4f
	djnz br_00_01c1                                                  ; $01d7 : $10, $e8
	ld ($4150), hl                                                  ; $01d9 : $22, $50, $41
	ld ($410a), a                                                  ; $01dc : $32, $0a, $41
	pop bc                                                  ; $01df : $c1
	pop de                                                  ; $01e0 : $d1
	pop hl                                                  ; $01e1 : $e1
	ret                                                  ; $01e2 : $c9


	.ds $200-$1e3, $00


Begin1:
;
	ld bc, $8000                                                  ; $0200 : $01, $00, $80
	ld a, $08                                                  ; $0203 : $3e, $08
	out (c), a                                                  ; $0205 : $ed, $79

;
	ld hl, $8000                                                  ; $0207 : $21, $00, $80
	ld a, (hl)                                                  ; $020a : $7e
	cp $55                                                  ; $020b : $fe, $55
	jr nz, @noCart                                                  ; $020d : $20, $0f

	inc hl                                                  ; $020f : $23
	ld a, (hl)                                                  ; $0210 : $7e
	cp $aa                                                  ; $0211 : $fe, $aa
	jr nz, @noCart                                                  ; $0213 : $20, $09

	inc hl                                                  ; $0215 : $23
	ld a, (hl)                                                  ; $0216 : $7e
	cp $33                                                  ; $0217 : $fe, $33
	jr nz, @noCart                                                  ; $0219 : $20, $03

	jp $8010                                                  ; $021b : $c3, $10, $80


@noCart:
	ld c, $0f                                                  ; $021e : $0e, $0f
	ld b, $40                                                  ; $0220 : $06, $40
	out (c), a                                                  ; $0222 : $ed, $79
	ld b, $80                                                  ; $0224 : $06, $80
	ld a, $02                                                  ; $0226 : $3e, $02
	out (c), a                                                  ; $0228 : $ed, $79
	ld hl, $4000                                                  ; $022a : $21, $00, $40
	xor a                                                  ; $022d : $af
-	ld (hl), a                                                  ; $022e : $77
	inc hl                                                  ; $022f : $23
	bit 3, h                                                  ; $0230 : $cb, $5c
	jr z, -                                                  ; $0232 : $28, $fa

	ld hl, $47ff                                                  ; $0234 : $21, $ff, $47
	ld sp, hl                                                  ; $0237 : $f9
	call Call_00_0290                                                  ; $0238 : $cd, $90, $02
	call Call_00_0244                                                  ; $023b : $cd, $44, $02
	jp NoCartBegin1                                                  ; $023e : $c3, $14, $03


Call_00_0241:
	call Call_00_058f                                                  ; $0241 : $cd, $8f, $05

Call_00_0244:
	call Call_00_02d7                                                  ; $0244 : $cd, $d7, $02

Call_00_0247:
	call Call_00_02f8                                                  ; $0247 : $cd, $f8, $02
	call Call_00_02ec                                                  ; $024a : $cd, $ec, $02

Call_00_024d:
	call Call_00_04b2                                                  ; $024d : $cd, $b2, $04
	call Call_00_04c4                                                  ; $0250 : $cd, $c4, $04
	ld hl, $07d5                                                  ; $0253 : $21, $d5, $07
	ld ($4130), hl                                                  ; $0256 : $22, $30, $41
	ld hl, $0c25                                                  ; $0259 : $21, $25, $0c
	ld ($413e), hl                                                  ; $025c : $22, $3e, $41
	ld hl, $0e36                                                  ; $025f : $21, $36, $0e
	ld ($4140), hl                                                  ; $0262 : $22, $40, $41
	ld hl, $3000                                                  ; $0265 : $21, $00, $30
	ld ($4134), hl                                                  ; $0268 : $22, $34, $41
	ld hl, $3004                                                  ; $026b : $21, $04, $30
	ld ($4138), hl                                                  ; $026e : $22, $38, $41
	ld hl, $3009                                                  ; $0271 : $21, $09, $30
	ld ($413a), hl                                                  ; $0274 : $22, $3a, $41
	ld hl, $300e                                                  ; $0277 : $21, $0e, $30
	ld ($413c), hl                                                  ; $027a : $22, $3c, $41
	ld hl, $1821                                                  ; $027d : $21, $21, $18
	ld ($4136), hl                                                  ; $0280 : $22, $36, $41
	ld hl, $3be2                                                  ; $0283 : $21, $e2, $3b
	ld ($4146), hl                                                  ; $0286 : $22, $46, $41
	ld hl, $2c77                                                  ; $0289 : $21, $77, $2c
	ld ($4132), hl                                                  ; $028c : $22, $32, $41
	ret                                                  ; $028f : $c9


Call_00_0290:
	ld a, $10                                                  ; $0290 : $3e, $10
	call Call_00_048e                                                  ; $0292 : $cd, $8e, $04
	ld a, $13                                                  ; $0295 : $3e, $13
	call Call_00_048e                                                  ; $0297 : $cd, $8e, $04
	ld a, $20                                                  ; $029a : $3e, $20
	call Call_00_048e                                                  ; $029c : $cd, $8e, $04
	ld a, $40                                                  ; $029f : $3e, $40
	call Call_00_048e                                                  ; $02a1 : $cd, $8e, $04
	ld a, $40                                                  ; $02a4 : $3e, $40
	call Call_00_048e                                                  ; $02a6 : $cd, $8e, $04
	ld a, $44                                                  ; $02a9 : $3e, $44
	call Call_00_048e                                                  ; $02ab : $cd, $8e, $04
	ld a, $46                                                  ; $02ae : $3e, $46
	call Call_00_048e                                                  ; $02b0 : $cd, $8e, $04
	ld a, $47                                                  ; $02b3 : $3e, $47
	call Call_00_048e                                                  ; $02b5 : $cd, $8e, $04
	ld a, $46                                                  ; $02b8 : $3e, $46
	call Call_00_048e                                                  ; $02ba : $cd, $8e, $04
	ld a, $44                                                  ; $02bd : $3e, $44
	call Call_00_048e                                                  ; $02bf : $cd, $8e, $04
	ld a, $40                                                  ; $02c2 : $3e, $40
	call Call_00_048e                                                  ; $02c4 : $cd, $8e, $04
	ld a, $08                                                  ; $02c7 : $3e, $08
	call Call_00_048e                                                  ; $02c9 : $cd, $8e, $04
	ld a, $04                                                  ; $02cc : $3e, $04
	call Call_00_048e                                                  ; $02ce : $cd, $8e, $04
	ld a, $0f                                                  ; $02d1 : $3e, $0f
	call Call_00_048e                                                  ; $02d3 : $cd, $8e, $04
	ret                                                  ; $02d6 : $c9


Call_00_02d7:
	push hl                                                  ; $02d7 : $e5
	ld hl, $416b                                                  ; $02d8 : $21, $6b, $41
	ld c, $95                                                  ; $02db : $0e, $95

br_00_02dd:
	ld (hl), $20                                                  ; $02dd : $36, $20
	inc hl                                                  ; $02df : $23
	dec c                                                  ; $02e0 : $0d
	jr nz, br_00_02dd                                                  ; $02e1 : $20, $fa

	ld hl, $4161                                                  ; $02e3 : $21, $61, $41
	res 0, (hl)                                                  ; $02e6 : $cb, $86
	res 1, (hl)                                                  ; $02e8 : $cb, $8e
	pop hl                                                  ; $02ea : $e1
	ret                                                  ; $02eb : $c9


Call_00_02ec:
	ld hl, $4169                                                  ; $02ec : $21, $69, $41
	ld (hl), $00                                                  ; $02ef : $36, $00
	inc hl                                                  ; $02f1 : $23
	ld (hl), $14                                                  ; $02f2 : $36, $14
	inc hl                                                  ; $02f4 : $23
	ld (hl), $14                                                  ; $02f5 : $36, $14
	ret                                                  ; $02f7 : $c9


Call_00_02f8:
	push hl                                                  ; $02f8 : $e5
	ld hl, $4123                                                  ; $02f9 : $21, $23, $41
	ld (hl), $00                                                  ; $02fc : $36, $00
	inc hl                                                  ; $02fe : $23
	ld (hl), $00                                                  ; $02ff : $36, $00
	ld hl, $4161                                                  ; $0301 : $21, $61, $41
	res 0, (hl)                                                  ; $0304 : $cb, $86
	res 1, (hl)                                                  ; $0306 : $cb, $8e
	ld hl, $4200                                                  ; $0308 : $21, $00, $42
	ld b, $80                                                  ; $030b : $06, $80

br_00_030d:
	ld (hl), $20                                                  ; $030d : $36, $20
	inc hl                                                  ; $030f : $23
	djnz br_00_030d                                                  ; $0310 : $10, $fb
	pop hl                                                  ; $0312 : $e1
	ret                                                  ; $0313 : $c9


NoCartBegin1:
	ld a, $04                                                  ; $0314 : $3e, $04
	ld ($412e), a                                                  ; $0316 : $32, $2e, $41
	call Call_00_0241                                                  ; $0319 : $cd, $41, $02
	jp NoCartBegin2                                                  ; $031c : $c3, $00, $3e


NoCartBegin3:
	call Call_00_0782                                                  ; $031f : $cd, $82, $07
	ld hl, $2614                                                  ; $0322 : $21, $14, $26
	call Call_00_0386                                                  ; $0325 : $cd, $86, $03

Jump_00_0328:
	call Call_00_0561                                                  ; $0328 : $cd, $61, $05
	ld hl, $4102                                                  ; $032b : $21, $02, $41
	bit 1, (hl)                                                  ; $032e : $cb, $4e
	jr nz, @br_0337                                                  ; $0330 : $20, $05

	call Call_00_0605                                                  ; $0332 : $cd, $05, $06
	jr Jump_00_0328                                                  ; $0335 : $18, $f1

@br_0337:
	ld hl, $410f                                                  ; $0337 : $21, $0f, $41
	bit 5, (hl)                                                  ; $033a : $cb, $6e
	jr nz, @br_0342                                                  ; $033c : $20, $04

	bit 4, (hl)                                                  ; $033e : $cb, $66
	jr z, Jump_00_0328                                                  ; $0340 : $28, $e6

@br_0342:
	call Call_00_0745                                                  ; $0342 : $cd, $45, $07
	jr Jump_00_0328                                                  ; $0345 : $18, $e1

br_00_0347:
	ld a, ($4113)                                                  ; $0347 : $3a, $13, $41
	cp $fa                                                  ; $034a : $fe, $fa
	jp z, Jump_00_0176                                                  ; $034c : $ca, $76, $01
	call Call_00_047a                                                  ; $034f : $cd, $7a, $04
	ld a, $04                                                  ; $0352 : $3e, $04
	ld ($412e), a                                                  ; $0354 : $32, $2e, $41
	ex de, hl                                                  ; $0357 : $eb
	ld a, (de)                                                  ; $0358 : $1a
	ld l, a                                                  ; $0359 : $6f
	inc de                                                  ; $035a : $13
	ld a, (de)                                                  ; $035b : $1a
	ld h, a                                                  ; $035c : $67
	push hl                                                  ; $035d : $e5
	call Call_00_073b                                                  ; $035e : $cd, $3b, $07
	pop hl                                                  ; $0361 : $e1
	jp (hl)                                                  ; $0362 : $e9


Call_00_0363:
	bit 5, (hl)                                                  ; $0363 : $cb, $6e
	jr z, br_00_038f                                                  ; $0365 : $28, $28

	ld hl, $4113                                                  ; $0367 : $21, $13, $41
	bit 4, (hl)                                                  ; $036a : $cb, $66
	jr z, br_00_038f                                                  ; $036c : $28, $21

Jump_00_036e:
	call Call_00_0414                                                  ; $036e : $cd, $14, $04
	ld hl, $47ff                                                  ; $0371 : $21, $ff, $47
	ld sp, hl                                                  ; $0374 : $f9
	ld hl, $4155                                                  ; $0375 : $21, $55, $41
	ld (hl), $00                                                  ; $0378 : $36, $00
	ld hl, $4163                                                  ; $037a : $21, $63, $41
	ld (hl), $00                                                  ; $037d : $36, $00
	ld hl, $4164                                                  ; $037f : $21, $64, $41
	ld (hl), $00                                                  ; $0382 : $36, $00
	jr br_00_0347                                                  ; $0384 : $18, $c1

Call_00_0386:
	call Call_00_042b                                                  ; $0386 : $cd, $2b, $04

Call_00_0389:
	call Call_00_02ec                                                  ; $0389 : $cd, $ec, $02
	call Call_00_0605                                                  ; $038c : $cd, $05, $06

br_00_038f:
	ret                                                  ; $038f : $c9


Call_00_0390:
	ld a, (hl)                                                  ; $0390 : $7e
	inc a                                                  ; $0391 : $3c
	inc a                                                  ; $0392 : $3c
	ld ($4116), a                                                  ; $0393 : $32, $16, $41
	call Call_00_042b                                                  ; $0396 : $cd, $2b, $04
	ex de, hl                                                  ; $0399 : $eb
	ld (hl), $20                                                  ; $039a : $36, $20
	inc hl                                                  ; $039c : $23
	ld a, ($4113)                                                  ; $039d : $3a, $13, $41
	ld (hl), a                                                  ; $03a0 : $77
	call Call_00_0510                                                  ; $03a1 : $cd, $10, $05
	call Call_00_0605                                                  ; $03a4 : $cd, $05, $06
	call Call_00_03e4                                                  ; $03a7 : $cd, $e4, $03
	ret                                                  ; $03aa : $c9


Call_00_03ab:
	ld a, (hl)                                                  ; $03ab : $7e
	ld ($4116), a                                                  ; $03ac : $32, $16, $41
	call Call_00_042b                                                  ; $03af : $cd, $2b, $04
	call Call_00_0510                                                  ; $03b2 : $cd, $10, $05
	call Call_00_0605                                                  ; $03b5 : $cd, $05, $06
	ret                                                  ; $03b8 : $c9


Call_00_03b9:
	call Call_00_02f8                                                  ; $03b9 : $cd, $f8, $02
	call Call_00_0510                                                  ; $03bc : $cd, $10, $05
	ld a, ($416b)                                                  ; $03bf : $3a, $6b, $41
	ld ($416a), a                                                  ; $03c2 : $32, $6a, $41
	ld c, a                                                  ; $03c5 : $4f
	ld a, $13                                                  ; $03c6 : $3e, $13
	ld ($4169), a                                                  ; $03c8 : $32, $69, $41
	add a, c                                                  ; $03cb : $81
	ld hl, $416b                                                  ; $03cc : $21, $6b, $41
	call AddAtoHL                                                  ; $03cf : $cd, $99, $01
	ld b, $80                                                  ; $03d2 : $06, $80

br_00_03d4:
	ld (hl), $20                                                  ; $03d4 : $36, $20
	inc hl                                                  ; $03d6 : $23
	djnz br_00_03d4                                                  ; $03d7 : $10, $fb
	call Call_00_043e                                                  ; $03d9 : $cd, $3e, $04
	ret                                                  ; $03dc : $c9


Call_00_03dd:
	ld c, $01                                                  ; $03dd : $0e, $01

br_00_03df:
	call Call_00_03f0                                                  ; $03df : $cd, $f0, $03
	di                                                  ; $03e2 : $f3
	ret                                                  ; $03e3 : $c9


Call_00_03e4:
	ld c, $02                                                  ; $03e4 : $0e, $02
	jr br_00_03df                                                  ; $03e6 : $18, $f7

	ld c, $03                                                  ; $03e8 : $0e, $03
	jr br_00_03df                                                  ; $03ea : $18, $f3

Call_00_03ec:
	ld c, $05                                                  ; $03ec : $0e, $05
	jr br_00_03df                                                  ; $03ee : $18, $ef

Call_00_03f0:
	push hl                                                  ; $03f0 : $e5
	call Call_00_0414                                                  ; $03f1 : $cd, $14, $04
	ld hl, $410f                                                  ; $03f4 : $21, $0f, $41
	set 1, (hl)                                                  ; $03f7 : $cb, $ce

br_00_03f9:
	push bc                                                  ; $03f9 : $c5
	call Call_00_0561                                                  ; $03fa : $cd, $61, $05
	pop bc                                                  ; $03fd : $c1
	ld hl, $4155                                                  ; $03fe : $21, $55, $41
	bit 1, (hl)                                                  ; $0401 : $cb, $4e
	pop hl                                                  ; $0403 : $e1
	call nz, Call_00_0663                                                  ; $0404 : $c4, $63, $06
	push hl                                                  ; $0407 : $e5
	ld hl, $410c                                                  ; $0408 : $21, $0c, $41
	ld a, (hl)                                                  ; $040b : $7e
	cp c                                                  ; $040c : $b9
	jr nz, br_00_03f9                                                  ; $040d : $20, $ea

	call Call_00_0414                                                  ; $040f : $cd, $14, $04
	pop hl                                                  ; $0412 : $e1
	ret                                                  ; $0413 : $c9


Call_00_0414:
	ld b, $06                                                  ; $0414 : $06, $06
	ld hl, $410c                                                  ; $0416 : $21, $0c, $41

br_00_0419:
	ld (hl), $00                                                  ; $0419 : $36, $00
	inc hl                                                  ; $041b : $23
	dec b                                                  ; $041c : $05
	jr nz, br_00_0419                                                  ; $041d : $20, $fa

Call_00_041f:
	ld hl, $411b                                                  ; $041f : $21, $1b, $41
	ld b, $06                                                  ; $0422 : $06, $06

br_00_0424:
	ld (hl), $20                                                  ; $0424 : $36, $20
	inc hl                                                  ; $0426 : $23
	dec b                                                  ; $0427 : $05
	jr nz, br_00_0424                                                  ; $0428 : $20, $fa

	ret                                                  ; $042a : $c9


Call_00_042b:
	call Call_00_02d7                                                  ; $042b : $cd, $d7, $02
	ld b, $00                                                  ; $042e : $06, $00
	ld c, (hl)                                                  ; $0430 : $4e
	inc hl                                                  ; $0431 : $23
	ld de, $4180                                                  ; $0432 : $11, $80, $41
	ldir                                                  ; $0435 : $ed, $b0
	ret                                                  ; $0437 : $c9


Call_00_0438:
	call Call_00_0105                                                  ; $0438 : $cd, $05, $01
	call Call_00_0445                                                  ; $043b : $cd, $45, $04

Call_00_043e:
	call Call_00_024d                                                  ; $043e : $cd, $4d, $02
	call Call_00_04f2                                                  ; $0441 : $cd, $f2, $04
	ret                                                  ; $0444 : $c9


Call_00_0445:
	ld hl, $416a                                                  ; $0445 : $21, $6a, $41
	ld a, (hl)                                                  ; $0448 : $7e
	dec hl                                                  ; $0449 : $2b
	add a, (hl)                                                  ; $044a : $86
	add a, $6c                                                  ; $044b : $c6, $6c
	ld hl, $4100                                                  ; $044d : $21, $00, $41
	ld l, a                                                  ; $0450 : $6f
	ld a, ($4113)                                                  ; $0451 : $3a, $13, $41
	ld (hl), a                                                  ; $0454 : $77
	call Call_00_0459                                                  ; $0455 : $cd, $59, $04
	ret                                                  ; $0458 : $c9


Call_00_0459:
	ld hl, $4169                                                  ; $0459 : $21, $69, $41
	ld a, (hl)                                                  ; $045c : $7e
	cp $13                                                  ; $045d : $fe, $13
	jr z, br_00_0463                                                  ; $045f : $28, $02

	inc (hl)                                                  ; $0461 : $34
	ret                                                  ; $0462 : $c9


br_00_0463:
	inc hl                                                  ; $0463 : $23
	ld a, (hl)                                                  ; $0464 : $7e
	cp $80                                                  ; $0465 : $fe, $80
	jp z, Jump_00_0474                                                  ; $0467 : $ca, $74, $04
	inc (hl)                                                  ; $046a : $34
	ld de, $416b                                                  ; $046b : $11, $6b, $41
	ld a, (de)                                                  ; $046e : $1a
	cp (hl)                                                  ; $046f : $be
	ret nc                                                  ; $0470 : $d0

	ex de, hl                                                  ; $0471 : $eb
	inc (hl)                                                  ; $0472 : $34
	ret                                                  ; $0473 : $c9


Jump_00_0474:
	ld hl, $4161                                                  ; $0474 : $21, $61, $41
	set 0, (hl)                                                  ; $0477 : $cb, $c6
	ret                                                  ; $0479 : $c9


Call_00_047a:
	ld hl, $4113                                                  ; $047a : $21, $13, $41
	ld a, (hl)                                                  ; $047d : $7e
	ld de, $2400                                                  ; $047e : $11, $00, $24
	sla a                                                  ; $0481 : $cb, $27
	add a, e                                                  ; $0483 : $83
	jr nc, +                                                  ; $0484 : $30, $01
	inc d                                                  ; $0486 : $14
+	ld e, a                                                  ; $0487 : $5f
	ld a, (de)                                                  ; $0488 : $1a
	ld l, a                                                  ; $0489 : $6f
	inc de                                                  ; $048a : $13
	ld a, (de)                                                  ; $048b : $1a
	ld h, a                                                  ; $048c : $67
	ret                                                  ; $048d : $c9


Call_00_048e:
	ld bc, $4000                                                  ; $048e : $01, $00, $40

Call_00_0491:
	di                                                  ; $0491 : $f3
	push hl                                                  ; $0492 : $e5
	push af                                                  ; $0493 : $f5
	ld a, ($4112)                                                  ; $0494 : $3a, $12, $41
	ld c, a                                                  ; $0497 : $4f
	pop af                                                  ; $0498 : $f1
	ld d, a                                                  ; $0499 : $57
	rra                                                  ; $049a : $1f
	rra                                                  ; $049b : $1f
	rra                                                  ; $049c : $1f
	rra                                                  ; $049d : $1f
	out (c), a                                                  ; $049e : $ed, $79
	ld a, d                                                  ; $04a0 : $7a
	out (c), a                                                  ; $04a1 : $ed, $79
	res 0, b                                                  ; $04a3 : $cb, $80

br_00_04a5:
	in a, (c)                                                  ; $04a5 : $ed, $78
	bit 3, a                                                  ; $04a7 : $cb, $5f
	jr nz, br_00_04a5                                                  ; $04a9 : $20, $fa

	set 0, c                                                  ; $04ab : $cb, $c1
	out (c), a                                                  ; $04ad : $ed, $79
	pop hl                                                  ; $04af : $e1
	ei                                                  ; $04b0 : $fb
	ret                                                  ; $04b1 : $c9


Call_00_04b2:
	ld bc, $0014                                                  ; $04b2 : $01, $14, $00
	ld a, ($416a)                                                  ; $04b5 : $3a, $6a, $41
	add a, $7f                                                  ; $04b8 : $c6, $7f
	ld hl, $4100                                                  ; $04ba : $21, $00, $41
	ld l, a                                                  ; $04bd : $6f
	ld de, $42a3                                                  ; $04be : $11, $a3, $42
	lddr                                                  ; $04c1 : $ed, $b8
	ret                                                  ; $04c3 : $c9


Call_00_04c4:
	ld a, $0d                                                  ; $04c4 : $3e, $0d
	call Call_00_048e                                                  ; $04c6 : $cd, $8e, $04
	ld a, $80                                                  ; $04c9 : $3e, $80
	call Call_00_048e                                                  ; $04cb : $cd, $8e, $04
	ld hl, $4290                                                  ; $04ce : $21, $90, $42

br_00_04d1:
	ld c, $0a                                                  ; $04d1 : $0e, $0a

br_00_04d3:
	ld a, (hl)                                                  ; $04d3 : $7e
	push bc                                                  ; $04d4 : $c5
	ld bc, $4100                                                  ; $04d5 : $01, $00, $41
	call Call_00_0491                                                  ; $04d8 : $cd, $91, $04
	pop bc                                                  ; $04db : $c1
	inc hl                                                  ; $04dc : $23
	dec c                                                  ; $04dd : $0d
	jr nz, br_00_04d3                                                  ; $04de : $20, $f3

	dec b                                                  ; $04e0 : $05
	jr z, br_00_04ec                                                  ; $04e1 : $28, $09

	ld a, $c0                                                  ; $04e3 : $3e, $c0
	call Call_00_048e                                                  ; $04e5 : $cd, $8e, $04
	ld b, $01                                                  ; $04e8 : $06, $01
	jr br_00_04d1                                                  ; $04ea : $18, $e5

br_00_04ec:
	ld a, $0d                                                  ; $04ec : $3e, $0d
	call Call_00_048e                                                  ; $04ee : $cd, $8e, $04
	ret                                                  ; $04f1 : $c9


Call_00_04f2:
	ld a, $0a                                                  ; $04f2 : $3e, $0a
	call Call_00_048e                                                  ; $04f4 : $cd, $8e, $04

Call_00_04f7:
	ld a, ($4169)                                                  ; $04f7 : $3a, $69, $41
	cp $0a                                                  ; $04fa : $fe, $0a
	jr nc, br_00_0505                                                  ; $04fc : $30, $07

	add a, $80                                                  ; $04fe : $c6, $80
	call Call_00_048e                                                  ; $0500 : $cd, $8e, $04
	jr br_00_050a                                                  ; $0503 : $18, $05

br_00_0505:
	add a, $b6                                                  ; $0505 : $c6, $b6
	call Call_00_048e                                                  ; $0507 : $cd, $8e, $04

br_00_050a:
	ld a, $0f                                                  ; $050a : $3e, $0f
	call Call_00_048e                                                  ; $050c : $cd, $8e, $04
	ret                                                  ; $050f : $c9


Call_00_0510:
	ld hl, $4116                                                  ; $0510 : $21, $16, $41
	ld a, (hl)                                                  ; $0513 : $7e
	cp $13                                                  ; $0514 : $fe, $13
	jr c, br_00_051d                                                  ; $0516 : $38, $05

	inc a                                                  ; $0518 : $3c
	ld ($416b), a                                                  ; $0519 : $32, $6b, $41
	ret                                                  ; $051c : $c9


br_00_051d:
	ld a, $14                                                  ; $051d : $3e, $14
	sub (hl)                                                  ; $051f : $96
	srl a                                                  ; $0520 : $cb, $3f
	ld e, a                                                  ; $0522 : $5f
	ld a, $14                                                  ; $0523 : $3e, $14
	sub e                                                  ; $0525 : $93
	ld ($416b), a                                                  ; $0526 : $32, $6b, $41
	ret                                                  ; $0529 : $c9


	ld hl, $4112                                                  ; $052a : $21, $12, $41
	set 3, (hl)                                                  ; $052d : $cb, $de
	ld bc, $400f                                                  ; $052f : $01, $0f, $40
	out (c), a                                                  ; $0532 : $ed, $79
	ret                                                  ; $0534 : $c9


	ld hl, $4112                                                  ; $0535 : $21, $12, $41
	res 3, (hl)                                                  ; $0538 : $cb, $9e
	ld bc, $4007                                                  ; $053a : $01, $07, $40
	out (c), a                                                  ; $053d : $ed, $79
	ret                                                  ; $053f : $c9


	call Call_00_05ab                                                  ; $0540 : $cd, $ab, $05

br_00_0543:
	call Call_00_0595                                                  ; $0543 : $cd, $95, $05
	call Call_00_0561                                                  ; $0546 : $cd, $61, $05
	ld hl, $4101                                                  ; $0549 : $21, $01, $41
	bit 2, (hl)                                                  ; $054c : $cb, $56
	jr nz, br_00_058f                                                  ; $054e : $20, $3f

	ld hl, $4114                                                  ; $0550 : $21, $14, $41
	inc (hl)                                                  ; $0553 : $34
	bit 4, (hl)                                                  ; $0554 : $cb, $66
	jr z, br_00_0543                                                  ; $0556 : $28, $eb

	res 4, (hl)                                                  ; $0558 : $cb, $a6
	set 3, (hl)                                                  ; $055a : $cb, $de
	call Call_00_05ab                                                  ; $055c : $cd, $ab, $05
	jr br_00_0543                                                  ; $055f : $18, $e2

Call_00_0561:
	ld hl, $410f                                                  ; $0561 : $21, $0f, $41
	res 6, (hl)                                                  ; $0564 : $cb, $b6
	im 1                                                  ; $0566 : $ed, $56
	ei                                                  ; $0568 : $fb

br_00_0569:
	ld hl, $410f                                                  ; $0569 : $21, $0f, $41
	bit 6, (hl)                                                  ; $056c : $cb, $76
	jr z, br_00_0569                                                  ; $056e : $28, $f9

	call Call_00_07b9                                                  ; $0570 : $cd, $b9, $07
	call Call_00_0363                                                  ; $0573 : $cd, $63, $03
	ld hl, $410f                                                  ; $0576 : $21, $0f, $41
	bit 4, (hl)                                                  ; $0579 : $cb, $66
	jr nz, br_00_0586                                                  ; $057b : $20, $09

	bit 5, (hl)                                                  ; $057d : $cb, $6e
	jr nz, br_00_0586                                                  ; $057f : $20, $05

	ld a, $ff                                                  ; $0581 : $3e, $ff
	ld ($4113), a                                                  ; $0583 : $32, $13, $41

br_00_0586:
	ld a, ($4113)                                                  ; $0586 : $3a, $13, $41
	cp $ef                                                  ; $0589 : $fe, $ef
	jp z, Jump_00_0176                                                  ; $058b : $ca, $76, $01
	ret                                                  ; $058e : $c9


Call_00_058f:
br_00_058f:
	ld a, $00                                                  ; $058f : $3e, $00
	ld hl, $4114                                                  ; $0591 : $21, $14, $41
	ld (hl), a                                                  ; $0594 : $77

Call_00_0595:
	ld a, $ff                                                  ; $0595 : $3e, $ff
	ld c, $09                                                  ; $0597 : $0e, $09
	ld hl, $4100                                                  ; $0599 : $21, $00, $41

br_00_059c:
	ld (hl), a                                                  ; $059c : $77
	inc hl                                                  ; $059d : $23
	dec c                                                  ; $059e : $0d
	jr nz, br_00_059c                                                  ; $059f : $20, $fb

	ld hl, $410f                                                  ; $05a1 : $21, $0f, $41
	res 4, (hl)                                                  ; $05a4 : $cb, $a6
	res 5, (hl)                                                  ; $05a6 : $cb, $ae
	res 6, (hl)                                                  ; $05a8 : $cb, $b6
	ret                                                  ; $05aa : $c9


Call_00_05ab:
	ld hl, $4123                                                  ; $05ab : $21, $23, $41
	ld a, (hl)                                                  ; $05ae : $7e
	inc hl                                                  ; $05af : $23
	cp (hl)                                                  ; $05b0 : $be
	jr z, br_00_05c9                                                  ; $05b1 : $28, $16

	inc (hl)                                                  ; $05b3 : $34
	ld hl, $4169                                                  ; $05b4 : $21, $69, $41
	ld a, (hl)                                                  ; $05b7 : $7e
	or a                                                  ; $05b8 : $b7
	jr z, br_00_05be                                                  ; $05b9 : $28, $03

	dec (hl)                                                  ; $05bb : $35
	jr br_00_05c0                                                  ; $05bc : $18, $02

br_00_05be:
	inc hl                                                  ; $05be : $23
	dec (hl)                                                  ; $05bf : $35

br_00_05c0:
	call Call_00_04b2                                                  ; $05c0 : $cd, $b2, $04
	call Call_00_04c4                                                  ; $05c3 : $cd, $c4, $04
	call Call_00_04f2                                                  ; $05c6 : $cd, $f2, $04

br_00_05c9:
	ret                                                  ; $05c9 : $c9


	call Call_00_05eb                                                  ; $05ca : $cd, $eb, $05

br_00_05cd:
	call Call_00_0595                                                  ; $05cd : $cd, $95, $05
	call Call_00_0561                                                  ; $05d0 : $cd, $61, $05
	ld hl, $4101                                                  ; $05d3 : $21, $01, $41
	bit 3, (hl)                                                  ; $05d6 : $cb, $5e
	jr nz, br_00_058f                                                  ; $05d8 : $20, $b5

	ld hl, $4114                                                  ; $05da : $21, $14, $41
	inc (hl)                                                  ; $05dd : $34
	bit 4, (hl)                                                  ; $05de : $cb, $66
	jr z, br_00_05cd                                                  ; $05e0 : $28, $eb

	res 4, (hl)                                                  ; $05e2 : $cb, $a6
	set 3, (hl)                                                  ; $05e4 : $cb, $de
	call Call_00_05eb                                                  ; $05e6 : $cd, $eb, $05
	jr br_00_05cd                                                  ; $05e9 : $18, $e2

Call_00_05eb:
	ld hl, $4124                                                  ; $05eb : $21, $24, $41
	ld a, (hl)                                                  ; $05ee : $7e
	or a                                                  ; $05ef : $b7
	jr z, br_00_05ff                                                  ; $05f0 : $28, $0d

	dec (hl)                                                  ; $05f2 : $35
	call Call_00_0459                                                  ; $05f3 : $cd, $59, $04
	call Call_00_04b2                                                  ; $05f6 : $cd, $b2, $04
	call Call_00_04c4                                                  ; $05f9 : $cd, $c4, $04
	call Call_00_04f2                                                  ; $05fc : $cd, $f2, $04

br_00_05ff:
	ret                                                  ; $05ff : $c9


	ld a, $0f                                                  ; $0600 : $3e, $0f
	call Call_00_048e                                                  ; $0602 : $cd, $8e, $04

Call_00_0605:
br_00_0605:
	ld a, $0e                                                  ; $0605 : $3e, $0e
	call Call_00_048e                                                  ; $0607 : $cd, $8e, $04
	ld hl, $4114                                                  ; $060a : $21, $14, $41
	ld (hl), $00                                                  ; $060d : $36, $00
	inc hl                                                  ; $060f : $23
	ld (hl), $00                                                  ; $0610 : $36, $00
	ld a, ($4163)                                                  ; $0612 : $3a, $63, $41
	ld ($416a), a                                                  ; $0615 : $32, $6a, $41

Jump_00_0618:
	call Call_00_04b2                                                  ; $0618 : $cd, $b2, $04
	call Call_00_04c4                                                  ; $061b : $cd, $c4, $04

Jump_00_061e:
	call Call_00_0561                                                  ; $061e : $cd, $61, $05
	ld hl, $4155                                                  ; $0621 : $21, $55, $41
	bit 0, (hl)                                                  ; $0624 : $cb, $46
	call nz, Call_00_0663                                                  ; $0626 : $c4, $63, $06
	ld hl, $410f                                                  ; $0629 : $21, $0f, $41
	bit 5, (hl)                                                  ; $062c : $cb, $6e
	jr z, br_00_064c                                                  ; $062e : $28, $1c

	ld hl, $4102                                                  ; $0630 : $21, $02, $41
	bit 1, (hl)                                                  ; $0633 : $cb, $4e
	jr z, br_00_0605                                                  ; $0635 : $28, $ce

	ld hl, $410f                                                  ; $0637 : $21, $0f, $41
	bit 7, (hl)                                                  ; $063a : $cb, $7e
	jr z, br_00_0647                                                  ; $063c : $28, $09

	cp $ec                                                  ; $063e : $fe, $ec
	jp z, Jump_00_06c3                                                  ; $0640 : $ca, $c3, $06
	cp $ed                                                  ; $0643 : $fe, $ed
	jr z, br_00_06c3                                                  ; $0645 : $28, $7c

br_00_0647:
	call Call_00_0745                                                  ; $0647 : $cd, $45, $07
	jr br_00_0695                                                  ; $064a : $18, $49

br_00_064c:
	bit 4, (hl)                                                  ; $064c : $cb, $66
	jr z, br_00_0695                                                  ; $064e : $28, $45

	ld hl, $4107                                                  ; $0650 : $21, $07, $41
	bit 6, (hl)                                                  ; $0653 : $cb, $76
	jr nz, br_00_0692                                                  ; $0655 : $20, $3b

	ld hl, $4115                                                  ; $0657 : $21, $15, $41
	inc (hl)                                                  ; $065a : $34
	res 1, (hl)                                                  ; $065b : $cb, $8e
	res 3, (hl)                                                  ; $065d : $cb, $9e
	res 2, (hl)                                                  ; $065f : $cb, $96
	jr br_00_0695                                                  ; $0661 : $18, $32

Call_00_0663:
	cp $ff                                                  ; $0663 : $fe, $ff
	ret z                                                  ; $0665 : $c8

	bit 1, (hl)                                                  ; $0666 : $cb, $4e
	jr z, br_00_0672                                                  ; $0668 : $28, $08

	cp $e4                                                  ; $066a : $fe, $e4
	jr nz, br_00_0672                                                  ; $066c : $20, $04

	res 1, (hl)                                                  ; $066e : $cb, $8e
	pop de                                                  ; $0670 : $d1
	ret                                                  ; $0671 : $c9


br_00_0672:
	ld hl, $4119                                                  ; $0672 : $21, $19, $41
	cp (hl)                                                  ; $0675 : $be
	ret nc                                                  ; $0676 : $d0

	cp $31                                                  ; $0677 : $fe, $31
	ret c                                                  ; $0679 : $d8

	ld hl, $4155                                                  ; $067a : $21, $55, $41
	bit 4, (hl)                                                  ; $067d : $cb, $66
	jr z, br_00_0684                                                  ; $067f : $28, $03

	cp $31                                                  ; $0681 : $fe, $31
	ret z                                                  ; $0683 : $c8

br_00_0684:
	ld ($4113), a                                                  ; $0684 : $32, $13, $41
	res 4, a                                                  ; $0687 : $cb, $a7
	res 5, a                                                  ; $0689 : $cb, $af
	ld hl, $4155                                                  ; $068b : $21, $55, $41
	set 2, (hl)                                                  ; $068e : $cb, $d6
	pop de                                                  ; $0690 : $d1
	ret                                                  ; $0691 : $c9


br_00_0692:
	call Call_00_0745                                                  ; $0692 : $cd, $45, $07

br_00_0695:
	ld hl, $4114                                                  ; $0695 : $21, $14, $41
	inc (hl)                                                  ; $0698 : $34
	nop                                                  ; $0699 : $00
	nop                                                  ; $069a : $00
	ld a, ($412e)                                                  ; $069b : $3a, $2e, $41
	cp (hl)                                                  ; $069e : $be
	jp nz, Jump_00_061e                                                  ; $069f : $c2, $1e, $06
	ld (hl), $00                                                  ; $06a2 : $36, $00
	nop                                                  ; $06a4 : $00
	nop                                                  ; $06a5 : $00
	ld hl, $4115                                                  ; $06a6 : $21, $15, $41
	bit 0, (hl)                                                  ; $06a9 : $cb, $46
	ld hl, $416b                                                  ; $06ab : $21, $6b, $41
	ld a, (hl)                                                  ; $06ae : $7e
	dec hl                                                  ; $06af : $2b
	jr nz, br_00_06c8                                                  ; $06b0 : $20, $16

	cp (hl)                                                  ; $06b2 : $be
	jr nz, br_00_06c4                                                  ; $06b3 : $20, $0f

br_00_06b5:
	ld a, $13                                                  ; $06b5 : $3e, $13
	dec hl                                                  ; $06b7 : $2b
	ld (hl), a                                                  ; $06b8 : $77
	ld hl, $4124                                                  ; $06b9 : $21, $24, $41
	ld (hl), $00                                                  ; $06bc : $36, $00
	ld hl, $410f                                                  ; $06be : $21, $0f, $41
	ld a, $ff                                                  ; $06c1 : $3e, $ff

Jump_00_06c3:
br_00_06c3:
	ret                                                  ; $06c3 : $c9


br_00_06c4:
	inc (hl)                                                  ; $06c4 : $34
	jp Jump_00_0618                                                  ; $06c5 : $c3, $18, $06


br_00_06c8:
	cp (hl)                                                  ; $06c8 : $be
	jr z, br_00_06b5                                                  ; $06c9 : $28, $ea

	ld a, $c9                                                  ; $06cb : $3e, $c9
	call Call_00_048e                                                  ; $06cd : $cd, $8e, $04
	ld hl, $4115                                                  ; $06d0 : $21, $15, $41
	ld a, (hl)                                                  ; $06d3 : $7e
	add a, $04                                                  ; $06d4 : $c6, $04
	ld (hl), a                                                  ; $06d6 : $77
	bit 3, (hl)                                                  ; $06d7 : $cb, $5e
	jr nz, br_00_06e7                                                  ; $06d9 : $20, $0c

	res 4, (hl)                                                  ; $06db : $cb, $a6
	xor a                                                  ; $06dd : $af

br_00_06de:
	ld bc, $4100                                                  ; $06de : $01, $00, $41
	call Call_00_0491                                                  ; $06e1 : $cd, $91, $04
	jp Jump_00_061e                                                  ; $06e4 : $c3, $1e, $06


br_00_06e7:
	ld a, $20                                                  ; $06e7 : $3e, $20
	jr br_00_06de                                                  ; $06e9 : $18, $f3

Call_00_06eb:
	ld hl, $410f                                                  ; $06eb : $21, $0f, $41
	bit 4, (hl)                                                  ; $06ee : $cb, $66
	jr nz, br_00_071f                                                  ; $06f0 : $20, $2d

	bit 5, (hl)                                                  ; $06f2 : $cb, $6e
	jr z, br_00_06ff                                                  ; $06f4 : $28, $09

	ld a, ($4113)                                                  ; $06f6 : $3a, $13, $41
	cp $e4                                                  ; $06f9 : $fe, $e4
	call z, Call_00_07d1                                                  ; $06fb : $cc, $d1, $07
	ret                                                  ; $06fe : $c9


br_00_06ff:
	ld a, $ff                                                  ; $06ff : $3e, $ff
	ret                                                  ; $0701 : $c9


Call_00_0702:
	call Call_00_06eb                                                  ; $0702 : $cd, $eb, $06

Call_00_0705:
	ld hl, $410f                                                  ; $0705 : $21, $0f, $41
	bit 4, (hl)                                                  ; $0708 : $cb, $66
	jr nz, br_00_071f                                                  ; $070a : $20, $13

	bit 5, (hl)                                                  ; $070c : $cb, $6e
	jr z, br_00_06ff                                                  ; $070e : $28, $ef

	ld a, ($4113)                                                  ; $0710 : $3a, $13, $41
	cp $e1                                                  ; $0713 : $fe, $e1
	jr z, br_00_071b                                                  ; $0715 : $28, $04

	cp $e2                                                  ; $0717 : $fe, $e2
	jr nz, br_00_071f                                                  ; $0719 : $20, $04

br_00_071b:
	call Call_00_07d1                                                  ; $071b : $cd, $d1, $07
	ret                                                  ; $071e : $c9


br_00_071f:
	ld a, ($4113)                                                  ; $071f : $3a, $13, $41
	ret                                                  ; $0722 : $c9


Call_00_0723:
	ld a, $20                                                  ; $0723 : $3e, $20
	ld b, $14                                                  ; $0725 : $06, $14
	ld hl, $4290                                                  ; $0727 : $21, $90, $42

br_00_072a:
	ld (hl), a                                                  ; $072a : $77
	inc hl                                                  ; $072b : $23
	djnz br_00_072a                                                  ; $072c : $10, $fc
	ret                                                  ; $072e : $c9


Call_00_072f:
	ld hl, $4125                                                  ; $072f : $21, $25, $41
	ld (hl), $7c                                                  ; $0732 : $36, $7c
	inc hl                                                  ; $0734 : $23
	ld (hl), $14                                                  ; $0735 : $36, $14

br_00_0737:
	call Call_00_0752                                                  ; $0737 : $cd, $52, $07
	ret                                                  ; $073a : $c9


Call_00_073b:
	ld hl, $4125                                                  ; $073b : $21, $25, $41
	ld (hl), $20                                                  ; $073e : $36, $20
	inc hl                                                  ; $0740 : $23
	ld (hl), $20                                                  ; $0741 : $36, $20
	jr br_00_0737                                                  ; $0743 : $18, $f2

Call_00_0745:
	ei                                                  ; $0745 : $fb
	ld hl, $4125                                                  ; $0746 : $21, $25, $41
	ld (hl), $80                                                  ; $0749 : $36, $80
	inc hl                                                  ; $074b : $23
	ld (hl), $01                                                  ; $074c : $36, $01
	call Call_00_0753                                                  ; $074e : $cd, $53, $07
	ret                                                  ; $0751 : $c9


Call_00_0752:
	di                                                  ; $0752 : $f3

Call_00_0753:
	ld d, $80                                                  ; $0753 : $16, $80

br_00_0755:
	ld hl, $4112                                                  ; $0755 : $21, $12, $41
	set 1, (hl)                                                  ; $0758 : $cb, $ce
	res 2, (hl)                                                  ; $075a : $cb, $96

br_00_075c:
	ld c, (hl)                                                  ; $075c : $4e
	ld b, $40                                                  ; $075d : $06, $40
	set 0, c                                                  ; $075f : $cb, $c1
	out (c), a                                                  ; $0761 : $ed, $79
	ld a, ($4125)                                                  ; $0763 : $3a, $25, $41

br_00_0766:
	dec a                                                  ; $0766 : $3d
	nop                                                  ; $0767 : $00
	nop                                                  ; $0768 : $00
	nop                                                  ; $0769 : $00
	nop                                                  ; $076a : $00
	jr nz, br_00_0766                                                  ; $076b : $20, $f9

	bit 1, (hl)                                                  ; $076d : $cb, $4e
	jr z, br_00_0777                                                  ; $076f : $28, $06

	res 1, (hl)                                                  ; $0771 : $cb, $8e
	set 2, (hl)                                                  ; $0773 : $cb, $d6
	jr br_00_075c                                                  ; $0775 : $18, $e5

br_00_0777:
	ld hl, $4126                                                  ; $0777 : $21, $26, $41
	rrc d                                                  ; $077a : $cb, $0a
	jr nc, br_00_0755                                                  ; $077c : $30, $d7

	dec (hl)                                                  ; $077e : $35
	jr nz, br_00_0755                                                  ; $077f : $20, $d4

	ret                                                  ; $0781 : $c9


Call_00_0782:
br_00_0782:
	push de                                                  ; $0782 : $d5
	ld a, (de)                                                  ; $0783 : $1a
	sla a                                                  ; $0784 : $cb, $27
	ld hl, $2c00                                                  ; $0786 : $21, $00, $2c
	call AddAtoHL                                                  ; $0789 : $cd, $99, $01
	ld a, (hl)                                                  ; $078c : $7e
	ld ($4125), a                                                  ; $078d : $32, $25, $41
	inc hl                                                  ; $0790 : $23
	ld a, (hl)                                                  ; $0791 : $7e
	ld ($4126), a                                                  ; $0792 : $32, $26, $41
	call Call_00_0752                                                  ; $0795 : $cd, $52, $07
	pop de                                                  ; $0798 : $d1

br_00_0799:
	inc de                                                  ; $0799 : $13
	ld a, (de)                                                  ; $079a : $1a
	or a                                                  ; $079b : $b7
	ret z                                                  ; $079c : $c8

	cp $ff                                                  ; $079d : $fe, $ff
	jr nz, br_00_0782                                                  ; $079f : $20, $e1

	call Call_00_07a6                                                  ; $07a1 : $cd, $a6, $07
	jr br_00_0799                                                  ; $07a4 : $18, $f3

Call_00_07a6:
	ld bc, $1000                                                  ; $07a6 : $01, $00, $10

br_00_07a9:
	dec c                                                  ; $07a9 : $0d
	nop                                                  ; $07aa : $00
	nop                                                  ; $07ab : $00
	nop                                                  ; $07ac : $00
	nop                                                  ; $07ad : $00
	nop                                                  ; $07ae : $00
	nop                                                  ; $07af : $00
	nop                                                  ; $07b0 : $00
	nop                                                  ; $07b1 : $00
	nop                                                  ; $07b2 : $00
	nop                                                  ; $07b3 : $00
	jr nz, br_00_07a9                                                  ; $07b4 : $20, $f3

	djnz br_00_07a9                                                  ; $07b6 : $10, $f1
	ret                                                  ; $07b8 : $c9


Call_00_07b9:
	bit 5, (hl)                                                  ; $07b9 : $cb, $6e
	jr z, br_00_07d0                                                  ; $07bb : $28, $13

	ld a, ($4113)                                                  ; $07bd : $3a, $13, $41
	cp $e7                                                  ; $07c0 : $fe, $e7
	jr nc, br_00_07d0                                                  ; $07c2 : $30, $0c

	cp $e5                                                  ; $07c4 : $fe, $e5
	jr c, br_00_07d0                                                  ; $07c6 : $38, $08

	call Call_00_07d1                                                  ; $07c8 : $cd, $d1, $07
	ld hl, $410f                                                  ; $07cb : $21, $0f, $41
	res 5, (hl)                                                  ; $07ce : $cb, $ae

br_00_07d0:
	ret                                                  ; $07d0 : $c9


Call_00_07d1:
	call Call_00_047a                                                  ; $07d1 : $cd, $7a, $04
	jp (hl)                                                  ; $07d4 : $e9


	ld hl, $4112                                                  ; $07d5 : $21, $12, $41
	res 3, (hl)                                                  ; $07d8 : $cb, $9e
	ld a, $03                                                  ; $07da : $3e, $03
	ld ($4640), a                                                  ; $07dc : $32, $40, $46
	ld ($4641), a                                                  ; $07df : $32, $41, $46
	call Call_00_3bcc                                                  ; $07e2 : $cd, $cc, $3b
	ld a, $3a                                                  ; $07e5 : $3e, $3a
	ld ($4119), a                                                  ; $07e7 : $32, $19, $41
	ld hl, $4155                                                  ; $07ea : $21, $55, $41
	set 0, (hl)                                                  ; $07ed : $cb, $c6
	ld hl, $2624                                                  ; $07ef : $21, $24, $26
	call Call_00_0386                                                  ; $07f2 : $cd, $86, $03
	ld hl, $4155                                                  ; $07f5 : $21, $55, $41
	bit 2, (hl)                                                  ; $07f8 : $cb, $56
	push af                                                  ; $07fa : $f5
	call z, Call_00_04f2                                                  ; $07fb : $cc, $f2, $04
	pop af                                                  ; $07fe : $f1
	call z, Call_00_0af5                                                  ; $07ff : $cc, $f5, $0a
	ld hl, $4155                                                  ; $0802 : $21, $55, $41
	ld (hl), $00                                                  ; $0805 : $36, $00
	ld ($4117), a                                                  ; $0807 : $32, $17, $41
	ld hl, $2635                                                  ; $080a : $21, $35, $26
	call Call_00_0390                                                  ; $080d : $cd, $90, $03
	call Call_00_0414                                                  ; $0810 : $cd, $14, $04
	ld a, ($4117)                                                  ; $0813 : $3a, $17, $41
	cp $06                                                  ; $0816 : $fe, $06
	jr nc, br_00_087b                                                  ; $0818 : $30, $61

	push af                                                  ; $081a : $f5
	ld de, $2c2f                                                  ; $081b : $11, $2f, $2c
	call Call_00_0782                                                  ; $081e : $cd, $82, $07
	call Call_00_03dd                                                  ; $0821 : $cd, $dd, $03
	ld hl, $410f                                                  ; $0824 : $21, $0f, $41
	set 0, (hl)                                                  ; $0827 : $cb, $c6
	pop af                                                  ; $0829 : $f1
	bit 2, a                                                  ; $082a : $cb, $57
	jr nz, br_00_083c                                                  ; $082c : $20, $0e

br_00_082e:
	call Call_00_0a4e                                                  ; $082e : $cd, $4e, $0a
	ld (hl), a                                                  ; $0831 : $77
	call Call_00_0a84                                                  ; $0832 : $cd, $84, $0a
	jr br_00_082e                                                  ; $0835 : $18, $f7

	nop                                                  ; $0837 : $00
	nop                                                  ; $0838 : $00
	nop                                                  ; $0839 : $00
	nop                                                  ; $083a : $00
	nop                                                  ; $083b : $00

br_00_083c:
	bit 0, a                                                  ; $083c : $cb, $47
	jr nz, br_00_0858                                                  ; $083e : $20, $18

br_00_0840:
	call Call_00_0a4e                                                  ; $0840 : $cd, $4e, $0a
	push de                                                  ; $0843 : $d5
	ld hl, $2971                                                  ; $0844 : $21, $71, $29
	or a                                                  ; $0847 : $b7
	ex de, hl                                                  ; $0848 : $eb
	sbc hl, de                                                  ; $0849 : $ed, $52
	pop de                                                  ; $084b : $d1
	jr nc, br_00_0840                                                  ; $084c : $30, $f2

	ld ($4121), a                                                  ; $084e : $32, $21, $41
	call Call_00_0a84                                                  ; $0851 : $cd, $84, $0a
	jr br_00_0840                                                  ; $0854 : $18, $ea

	nop                                                  ; $0856 : $00
	nop                                                  ; $0857 : $00

br_00_0858:
	call Call_00_0a63                                                  ; $0858 : $cd, $63, $0a
	call Call_00_019f                                                  ; $085b : $cd, $9f, $01
	res 0, a                                                  ; $085e : $cb, $87
	res 4, a                                                  ; $0860 : $cb, $a7
	res 5, a                                                  ; $0862 : $cb, $af
	res 6, a                                                  ; $0864 : $cb, $b7
	res 7, a                                                  ; $0866 : $cb, $bf
	call AddAtoHL                                                  ; $0868 : $cd, $99, $01
	ld a, (hl)                                                  ; $086b : $7e
	ld hl, $4121                                                  ; $086c : $21, $21, $41
	cp (hl)                                                  ; $086f : $be
	jr z, br_00_0858                                                  ; $0870 : $28, $e6

	ld (hl), a                                                  ; $0872 : $77
	call Call_00_0a84                                                  ; $0873 : $cd, $84, $0a
	jr br_00_0858                                                  ; $0876 : $18, $e0

	nop                                                  ; $0878 : $00
	nop                                                  ; $0879 : $00
	nop                                                  ; $087a : $00

br_00_087b:
	ld hl, $4117                                                  ; $087b : $21, $17, $41
	bit 3, (hl)                                                  ; $087e : $cb, $5e
	jp nz, Jump_00_0975                                                  ; $0880 : $c2, $75, $09
	bit 0, (hl)                                                  ; $0883 : $cb, $46
	jp nz, Jump_00_096c                                                  ; $0885 : $c2, $6c, $09
	call Call_00_0931                                                  ; $0888 : $cd, $31, $09

Jump_00_088b:
	call Call_00_08f3                                                  ; $088b : $cd, $f3, $08
	call Call_00_08ce                                                  ; $088e : $cd, $ce, $08
	nop                                                  ; $0891 : $00
	ld a, (hl)                                                  ; $0892 : $7e
	ld e, a                                                  ; $0893 : $5f
	inc hl                                                  ; $0894 : $23
	ld a, (hl)                                                  ; $0895 : $7e
	ld d, a                                                  ; $0896 : $57
	push de                                                  ; $0897 : $d5
	ld hl, $4110                                                  ; $0898 : $21, $10, $41
	ld a, (hl)                                                  ; $089b : $7e
	ld e, a                                                  ; $089c : $5f
	inc hl                                                  ; $089d : $23
	ld a, (hl)                                                  ; $089e : $7e
	ld d, a                                                  ; $089f : $57
	pop hl                                                  ; $08a0 : $e1
	ex de, hl                                                  ; $08a1 : $eb
	add hl, de                                                  ; $08a2 : $19

Jump_00_08a3:
	ld a, $64                                                  ; $08a3 : $3e, $64
	ld ($4122), a                                                  ; $08a5 : $32, $22, $41
	call Call_00_0b71                                                  ; $08a8 : $cd, $71, $0b
	ld c, $03                                                  ; $08ab : $0e, $03
	ld hl, $411e                                                  ; $08ad : $21, $1e, $41
	ld de, $419a                                                  ; $08b0 : $11, $9a, $41

br_00_08b3:
	ld a, (hl)                                                  ; $08b3 : $7e
	ld (de), a                                                  ; $08b4 : $12
	inc hl                                                  ; $08b5 : $23
	dec de                                                  ; $08b6 : $1b
	dec c                                                  ; $08b7 : $0d
	jr nz, br_00_08b3                                                  ; $08b8 : $20, $f9

	ld a, $23                                                  ; $08ba : $3e, $23
	ld ($416b), a                                                  ; $08bc : $32, $6b, $41
	call Call_00_0414                                                  ; $08bf : $cd, $14, $04
	im 1                                                  ; $08c2 : $ed, $56
	ei                                                  ; $08c4 : $fb
	call Call_00_073b                                                  ; $08c5 : $cd, $3b, $07
	call Call_00_0605                                                  ; $08c8 : $cd, $05, $06
	jp Jump_00_0ae6                                                  ; $08cb : $c3, $e6, $0a


Call_00_08ce:
	di                                                  ; $08ce : $f3
	inc hl                                                  ; $08cf : $23
	ld a, (hl)                                                  ; $08d0 : $7e
	ld ($4122), a                                                  ; $08d1 : $32, $22, $41
	inc hl                                                  ; $08d4 : $23
	push hl                                                  ; $08d5 : $e5
	call Call_00_0b50                                                  ; $08d6 : $cd, $50, $0b
	ld hl, $2809                                                  ; $08d9 : $21, $09, $28
	call Call_00_042b                                                  ; $08dc : $cd, $2b, $04
	ld c, $03                                                  ; $08df : $0e, $03
	ld hl, $411e                                                  ; $08e1 : $21, $1e, $41
	ld de, $4188                                                  ; $08e4 : $11, $88, $41

br_00_08e7:
	ld a, (hl)                                                  ; $08e7 : $7e
	ld (de), a                                                  ; $08e8 : $12
	inc hl                                                  ; $08e9 : $23
	dec de                                                  ; $08ea : $1b
	dec c                                                  ; $08eb : $0d
	jr nz, br_00_08e7                                                  ; $08ec : $20, $f9

	call Call_00_041f                                                  ; $08ee : $cd, $1f, $04
	pop hl                                                  ; $08f1 : $e1
	ret                                                  ; $08f2 : $c9


Call_00_08f3:
	push de                                                  ; $08f3 : $d5

br_00_08f4:
	call Call_00_0244                                                  ; $08f4 : $cd, $44, $02
	call Call_00_04f2                                                  ; $08f7 : $cd, $f2, $04

br_00_08fa:
	call Call_00_0561                                                  ; $08fa : $cd, $61, $05
	ld hl, $410f                                                  ; $08fd : $21, $0f, $41
	bit 5, (hl)                                                  ; $0900 : $cb, $6e
	jr nz, br_00_0918                                                  ; $0902 : $20, $14

	bit 4, (hl)                                                  ; $0904 : $cb, $66
	jr z, br_00_08fa                                                  ; $0906 : $28, $f2

	ld a, ($4113)                                                  ; $0908 : $3a, $13, $41
	pop hl                                                  ; $090b : $e1
	cp (hl)                                                  ; $090c : $be
	jr z, br_00_091d                                                  ; $090d : $28, $0e

	push hl                                                  ; $090f : $e5
	ld hl, $4110                                                  ; $0910 : $21, $10, $41
	inc (hl)                                                  ; $0913 : $34
	jr nz, br_00_0918                                                  ; $0914 : $20, $02

	inc hl                                                  ; $0916 : $23
	inc (hl)                                                  ; $0917 : $34

br_00_0918:
	call Call_00_0745                                                  ; $0918 : $cd, $45, $07
	jr br_00_08fa                                                  ; $091b : $18, $dd

br_00_091d:
	inc hl                                                  ; $091d : $23
	ld a, (hl)                                                  ; $091e : $7e
	or a                                                  ; $091f : $b7
	jr z, br_00_096b                                                  ; $0920 : $28, $49

	push hl                                                  ; $0922 : $e5
	ld a, ($4113)                                                  ; $0923 : $3a, $13, $41
	cp $0d                                                  ; $0926 : $fe, $0d
	jr z, br_00_08f4                                                  ; $0928 : $28, $ca

	nop                                                  ; $092a : $00
	nop                                                  ; $092b : $00
	call Call_00_0438                                                  ; $092c : $cd, $38, $04
	jr br_00_08fa                                                  ; $092f : $18, $c9

Call_00_0931:
	call Call_00_10ed                                                  ; $0931 : $cd, $ed, $10

Call_00_0934:
	ld ($4118), a                                                  ; $0934 : $32, $18, $41
	ld hl, $264d                                                  ; $0937 : $21, $4d, $26
	call Call_00_0390                                                  ; $093a : $cd, $90, $03
	ld de, $2c2f                                                  ; $093d : $11, $2f, $2c
	call Call_00_0782                                                  ; $0940 : $cd, $82, $07
	call Call_00_03dd                                                  ; $0943 : $cd, $dd, $03
	call Call_00_0414                                                  ; $0946 : $cd, $14, $04
	ld hl, $410f                                                  ; $0949 : $21, $0f, $41
	set 1, (hl)                                                  ; $094c : $cb, $ce
	ld a, ($4117)                                                  ; $094e : $3a, $17, $41
	rlca                                                  ; $0951 : $07
	ld hl, $2999                                                  ; $0952 : $21, $99, $29
	call AddAtoHL                                                  ; $0955 : $cd, $99, $01
	ld a, (hl)                                                  ; $0958 : $7e
	ld e, a                                                  ; $0959 : $5f
	inc hl                                                  ; $095a : $23
	ld a, (hl)                                                  ; $095b : $7e
	ld d, a                                                  ; $095c : $57
	ex de, hl                                                  ; $095d : $eb
	ld a, ($4118)                                                  ; $095e : $3a, $18, $41
	dec a                                                  ; $0961 : $3d
	rlca                                                  ; $0962 : $07
	call AddAtoHL                                                  ; $0963 : $cd, $99, $01
	ld a, (hl)                                                  ; $0966 : $7e
	ld e, a                                                  ; $0967 : $5f
	inc hl                                                  ; $0968 : $23
	ld a, (hl)                                                  ; $0969 : $7e
	ld d, a                                                  ; $096a : $57

br_00_096b:
	ret                                                  ; $096b : $c9


Jump_00_096c:
	call Call_00_10ed                                                  ; $096c : $cd, $ed, $10
	call Call_00_0934                                                  ; $096f : $cd, $34, $09
	jp Jump_00_088b                                                  ; $0972 : $c3, $8b, $08


Jump_00_0975:
	call Call_00_0931                                                  ; $0975 : $cd, $31, $09
	ld bc, $0000                                                  ; $0978 : $01, $00, $00
	ex de, hl                                                  ; $097b : $eb
	push bc                                                  ; $097c : $c5
	push hl                                                  ; $097d : $e5

Jump_00_097e:
	call Call_00_0244                                                  ; $097e : $cd, $44, $02
	ld a, $49                                                  ; $0981 : $3e, $49
	ld hl, $416a                                                  ; $0983 : $21, $6a, $41
	ld (hl), a                                                  ; $0986 : $77
	inc hl                                                  ; $0987 : $23
	ld (hl), a                                                  ; $0988 : $77

br_00_0989:
	call Call_00_0561                                                  ; $0989 : $cd, $61, $05
	ld a, ($416b)                                                  ; $098c : $3a, $6b, $41
	cp $4a                                                  ; $098f : $fe, $4a
	call nc, Call_00_09bd                                                  ; $0991 : $d4, $bd, $09
	call Call_00_04f7                                                  ; $0994 : $cd, $f7, $04
	call Call_00_0705                                                  ; $0997 : $cd, $05, $07
	bit 5, (hl)                                                  ; $099a : $cb, $6e
	jr nz, br_00_0989                                                  ; $099c : $20, $eb

	bit 4, (hl)                                                  ; $099e : $cb, $66
	jr z, br_00_0989                                                  ; $09a0 : $28, $e7

	ld a, ($4113)                                                  ; $09a2 : $3a, $13, $41
	cp $0d                                                  ; $09a5 : $fe, $0d
	jr z, br_00_09ca                                                  ; $09a7 : $28, $21

	ld a, ($4169)                                                  ; $09a9 : $3a, $69, $41
	cp $13                                                  ; $09ac : $fe, $13
	jr nz, br_00_09b8                                                  ; $09ae : $20, $08

	ld a, ($416a)                                                  ; $09b0 : $3a, $6a, $41
	cp $80                                                  ; $09b3 : $fe, $80
	call z, Call_00_0745                                                  ; $09b5 : $cc, $45, $07

br_00_09b8:
	call Call_00_0438                                                  ; $09b8 : $cd, $38, $04
	jr br_00_0989                                                  ; $09bb : $18, $cc

Call_00_09bd:
	ld a, $35                                                  ; $09bd : $3e, $35
	ld ($4163), a                                                  ; $09bf : $32, $63, $41
	call Call_00_06eb                                                  ; $09c2 : $cd, $eb, $06
	xor a                                                  ; $09c5 : $af
	ld ($4163), a                                                  ; $09c6 : $32, $63, $41
	ret                                                  ; $09c9 : $c9


br_00_09ca:
	ld hl, $41ff                                                  ; $09ca : $21, $ff, $41
	ld (hl), $0d                                                  ; $09cd : $36, $0d
	dec hl                                                  ; $09cf : $2b
	ld (hl), $20                                                  ; $09d0 : $36, $20
	call Call_00_0bf0                                                  ; $09d2 : $cd, $f0, $0b
	pop hl                                                  ; $09d5 : $e1
	pop bc                                                  ; $09d6 : $c1
	ld de, $4200                                                  ; $09d7 : $11, $00, $42

br_00_09da:
	ld a, (de)                                                  ; $09da : $1a
	cp (hl)                                                  ; $09db : $be
	jr z, br_00_0a02                                                  ; $09dc : $28, $24

	push hl                                                  ; $09de : $e5
	inc hl                                                  ; $09df : $23
	cp (hl)                                                  ; $09e0 : $be
	jr z, br_00_09ff                                                  ; $09e1 : $28, $1c

	inc hl                                                  ; $09e3 : $23
	cp (hl)                                                  ; $09e4 : $be
	jr z, br_00_09fe                                                  ; $09e5 : $28, $17

	inc hl                                                  ; $09e7 : $23
	cp (hl)                                                  ; $09e8 : $be
	jr z, br_00_09fd                                                  ; $09e9 : $28, $12

	pop hl                                                  ; $09eb : $e1
	push hl                                                  ; $09ec : $e5
	dec hl                                                  ; $09ed : $2b
	cp (hl)                                                  ; $09ee : $be
	jr z, br_00_09ff                                                  ; $09ef : $28, $0e

	dec hl                                                  ; $09f1 : $2b
	cp (hl)                                                  ; $09f2 : $be
	jr z, br_00_09fe                                                  ; $09f3 : $28, $09

	dec hl                                                  ; $09f5 : $2b
	cp (hl)                                                  ; $09f6 : $be
	jr z, br_00_09fd                                                  ; $09f7 : $28, $04

	pop hl                                                  ; $09f9 : $e1
	inc bc                                                  ; $09fa : $03
	jr br_00_0a02                                                  ; $09fb : $18, $05

br_00_09fd:
	inc bc                                                  ; $09fd : $03

br_00_09fe:
	inc bc                                                  ; $09fe : $03

br_00_09ff:
	exx                                                  ; $09ff : $d9
	pop hl                                                  ; $0a00 : $e1
	exx                                                  ; $0a01 : $d9

br_00_0a02:
	inc hl                                                  ; $0a02 : $23
	ld a, (hl)                                                  ; $0a03 : $7e
	or a                                                  ; $0a04 : $b7
	jr nz, br_00_0a0d                                                  ; $0a05 : $20, $06

	inc hl                                                  ; $0a07 : $23
	ld a, (hl)                                                  ; $0a08 : $7e
	or a                                                  ; $0a09 : $b7
	jr z, br_00_0a18                                                  ; $0a0a : $28, $0c

	dec hl                                                  ; $0a0c : $2b

br_00_0a0d:
	ld a, (de)                                                  ; $0a0d : $1a
	inc de                                                  ; $0a0e : $13
	cp $90                                                  ; $0a0f : $fe, $90
	jr nz, br_00_09da                                                  ; $0a11 : $20, $c7

	push bc                                                  ; $0a13 : $c5
	push hl                                                  ; $0a14 : $e5
	jp Jump_00_097e                                                  ; $0a15 : $c3, $7e, $09


br_00_0a18:
	push bc                                                  ; $0a18 : $c5
	call Call_00_08ce                                                  ; $0a19 : $cd, $ce, $08
	ld a, (hl)                                                  ; $0a1c : $7e
	ld d, a                                                  ; $0a1d : $57
	dec hl                                                  ; $0a1e : $2b
	ld a, (hl)                                                  ; $0a1f : $7e
	ld e, a                                                  ; $0a20 : $5f
	ld hl, $4118                                                  ; $0a21 : $21, $18, $41
	bit 2, (hl)                                                  ; $0a24 : $cb, $56
	jr z, br_00_0a32                                                  ; $0a26 : $28, $0a

	ld hl, $4117                                                  ; $0a28 : $21, $17, $41
	bit 0, (hl)                                                  ; $0a2b : $cb, $46
	jr z, br_00_0a32                                                  ; $0a2d : $28, $03

	or a                                                  ; $0a2f : $b7
	sla e                                                  ; $0a30 : $cb, $23

br_00_0a32:
	push de                                                  ; $0a32 : $d5
	pop hl                                                  ; $0a33 : $e1
	pop bc                                                  ; $0a34 : $c1
	or a                                                  ; $0a35 : $b7
	sbc hl, bc                                                  ; $0a36 : $ed, $42
	jr c, br_00_0a49                                                  ; $0a38 : $38, $0f

	push hl                                                  ; $0a3a : $e5
	push bc                                                  ; $0a3b : $c5
	ld bc, $0006                                                  ; $0a3c : $01, $06, $00
	sbc hl, bc                                                  ; $0a3f : $ed, $42
	pop bc                                                  ; $0a41 : $c1
	pop hl                                                  ; $0a42 : $e1
	jr c, br_00_0a49                                                  ; $0a43 : $38, $04

br_00_0a45:
	ex de, hl                                                  ; $0a45 : $eb
	jp Jump_00_08a3                                                  ; $0a46 : $c3, $a3, $08


br_00_0a49:
	ld hl, $0006                                                  ; $0a49 : $21, $06, $00
	jr br_00_0a45                                                  ; $0a4c : $18, $f7

Call_00_0a4e:
br_00_0a4e:
	call Call_00_0a63                                                  ; $0a4e : $cd, $63, $0a
	ld a, ($4117)                                                  ; $0a51 : $3a, $17, $41
	dec a                                                  ; $0a54 : $3d
	sla a                                                  ; $0a55 : $cb, $27
	call AddAtoHL                                                  ; $0a57 : $cd, $99, $01
	ld a, (hl)                                                  ; $0a5a : $7e
	ex de, hl                                                  ; $0a5b : $eb
	ld hl, $4121                                                  ; $0a5c : $21, $21, $41
	cp (hl)                                                  ; $0a5f : $be
	jr z, br_00_0a4e                                                  ; $0a60 : $28, $ec

	ret                                                  ; $0a62 : $c9


Call_00_0a63:
	call Call_00_019f                                                  ; $0a63 : $cd, $9f, $01
	res 7, a                                                  ; $0a66 : $cb, $bf
	res 6, a                                                  ; $0a68 : $cb, $b7
	res 5, a                                                  ; $0a6a : $cb, $af
	res 3, a                                                  ; $0a6c : $cb, $9f
	ld hl, $411a                                                  ; $0a6e : $21, $1a, $41
	ld (hl), a                                                  ; $0a71 : $77
	res 4, (hl)                                                  ; $0a72 : $cb, $a6
	rlca                                                  ; $0a74 : $07
	rlca                                                  ; $0a75 : $07
	rlca                                                  ; $0a76 : $07
	rlca                                                  ; $0a77 : $07
	res 0, a                                                  ; $0a78 : $cb, $87
	jr nc, br_00_0a7d                                                  ; $0a7a : $30, $01

	inc a                                                  ; $0a7c : $3c

br_00_0a7d:
	ld hl, $2901                                                  ; $0a7d : $21, $01, $29
	call AddAtoHL                                                  ; $0a80 : $cd, $99, $01
	ret                                                  ; $0a83 : $c9


Call_00_0a84:
	call Call_00_02d7                                                  ; $0a84 : $cd, $d7, $02
	call Call_00_04b2                                                  ; $0a87 : $cd, $b2, $04
	ld hl, $4292                                                  ; $0a8a : $21, $92, $42
	ld c, $08                                                  ; $0a8d : $0e, $08

br_00_0a8f:
	ld (hl), $5f                                                  ; $0a8f : $36, $5f
	inc hl                                                  ; $0a91 : $23
	inc hl                                                  ; $0a92 : $23
	dec c                                                  ; $0a93 : $0d
	jr nz, br_00_0a8f                                                  ; $0a94 : $20, $f9

	ld a, ($411a)                                                  ; $0a96 : $3a, $1a, $41
	rlca                                                  ; $0a99 : $07
	ld hl, $4292                                                  ; $0a9a : $21, $92, $42
	call AddAtoHL                                                  ; $0a9d : $cd, $99, $01
	ld a, ($4121)                                                  ; $0aa0 : $3a, $21, $41
	ld (hl), a                                                  ; $0aa3 : $77
	call Call_00_04c4                                                  ; $0aa4 : $cd, $c4, $04

br_00_0aa7:
	call Call_00_0561                                                  ; $0aa7 : $cd, $61, $05
	bit 4, (hl)                                                  ; $0aaa : $cb, $66
	jr z, br_00_0acd                                                  ; $0aac : $28, $1f

	ld a, ($4113)                                                  ; $0aae : $3a, $13, $41
	ld hl, $4121                                                  ; $0ab1 : $21, $21, $41
	cp (hl)                                                  ; $0ab4 : $be
	jr z, br_00_0abc                                                  ; $0ab5 : $28, $05

	call Call_00_0745                                                  ; $0ab7 : $cd, $45, $07
	jr br_00_0acd                                                  ; $0aba : $18, $11

Call_00_0abc:
br_00_0abc:
	ld hl, $411b                                                  ; $0abc : $21, $1b, $41

Call_00_0abf:
br_00_0abf:
	set 4, (hl)                                                  ; $0abf : $cb, $e6
	inc (hl)                                                  ; $0ac1 : $34
	ld a, (hl)                                                  ; $0ac2 : $7e
	cp $3a                                                  ; $0ac3 : $fe, $3a
	jr nz, br_00_0acc                                                  ; $0ac5 : $20, $05

	ld (hl), $30                                                  ; $0ac7 : $36, $30
	inc hl                                                  ; $0ac9 : $23
	jr br_00_0abf                                                  ; $0aca : $18, $f3

br_00_0acc:
	ret                                                  ; $0acc : $c9


br_00_0acd:
	ld hl, $410f                                                  ; $0acd : $21, $0f, $41
	bit 2, (hl)                                                  ; $0ad0 : $cb, $56
	jr z, br_00_0aa7                                                  ; $0ad2 : $28, $d3

	call Call_00_04b2                                                  ; $0ad4 : $cd, $b2, $04
	call Call_00_073b                                                  ; $0ad7 : $cd, $3b, $07
	ld hl, $2846                                                  ; $0ada : $21, $46, $28
	call Call_00_042b                                                  ; $0add : $cd, $2b, $04
	call Call_00_0e24                                                  ; $0ae0 : $cd, $24, $0e
	call Call_00_0389                                                  ; $0ae3 : $cd, $89, $03

Jump_00_0ae6:
	call Call_00_03dd                                                  ; $0ae6 : $cd, $dd, $03
	ld de, $2c51                                                  ; $0ae9 : $11, $51, $2c
	call Call_00_0782                                                  ; $0aec : $cd, $82, $07
	jp Jump_00_0328                                                  ; $0aef : $c3, $28, $03


Jump_00_0af2:
br_00_0af2:
	call Call_00_0745                                                  ; $0af2 : $cd, $45, $07

Call_00_0af5:
br_00_0af5:
	call Call_00_0561                                                  ; $0af5 : $cd, $61, $05
	bit 5, (hl)                                                  ; $0af8 : $cb, $6e
	jr z, br_00_0b1b                                                  ; $0afa : $28, $1f

	ld a, ($4113)                                                  ; $0afc : $3a, $13, $41
	cp $e4                                                  ; $0aff : $fe, $e4
	jr nz, br_00_0af2                                                  ; $0b01 : $20, $ef

	ld hl, $4155                                                  ; $0b03 : $21, $55, $41
	bit 1, (hl)                                                  ; $0b06 : $cb, $4e
	jr nz, br_00_0b18                                                  ; $0b08 : $20, $0e

	call Call_00_0605                                                  ; $0b0a : $cd, $05, $06
	ld hl, $4155                                                  ; $0b0d : $21, $55, $41
	bit 2, (hl)                                                  ; $0b10 : $cb, $56
	ret nz                                                  ; $0b12 : $c0

	call Call_00_04f2                                                  ; $0b13 : $cd, $f2, $04
	jr br_00_0af5                                                  ; $0b16 : $18, $dd

br_00_0b18:
	res 1, (hl)                                                  ; $0b18 : $cb, $8e
	ret                                                  ; $0b1a : $c9


br_00_0b1b:
	bit 4, (hl)                                                  ; $0b1b : $cb, $66
	jr z, br_00_0af5                                                  ; $0b1d : $28, $d6

	res 4, (hl)                                                  ; $0b1f : $cb, $a6
	ld a, ($4113)                                                  ; $0b21 : $3a, $13, $41
	ld hl, $4119                                                  ; $0b24 : $21, $19, $41
	cp (hl)                                                  ; $0b27 : $be
	jr nc, br_00_0af2                                                  ; $0b28 : $30, $c8

	cp $31                                                  ; $0b2a : $fe, $31
	jr c, br_00_0af2                                                  ; $0b2c : $38, $c4

	ld hl, $4155                                                  ; $0b2e : $21, $55, $41
	bit 4, (hl)                                                  ; $0b31 : $cb, $66
	jr z, br_00_0b3a                                                  ; $0b33 : $28, $05

	cp $31                                                  ; $0b35 : $fe, $31
	jp z, Jump_00_0af2                                                  ; $0b37 : $ca, $f2, $0a

br_00_0b3a:
	push af                                                  ; $0b3a : $f5
	ld bc, $4100                                                  ; $0b3b : $01, $00, $41
	call Call_00_0491                                                  ; $0b3e : $cd, $91, $04
	call Call_00_03dd                                                  ; $0b41 : $cd, $dd, $03
	call Call_00_073b                                                  ; $0b44 : $cd, $3b, $07
	pop af                                                  ; $0b47 : $f1
	ld ($4113), a                                                  ; $0b48 : $32, $13, $41
	res 4, a                                                  ; $0b4b : $cb, $a7
	res 5, a                                                  ; $0b4d : $cb, $af
	ret                                                  ; $0b4f : $c9


Call_00_0b50:
	xor a                                                  ; $0b50 : $af
	ld c, a                                                  ; $0b51 : $4f
	ld hl, $410c                                                  ; $0b52 : $21, $0c, $41
	ld a, (hl)                                                  ; $0b55 : $7e
	ld e, a                                                  ; $0b56 : $5f
	inc hl                                                  ; $0b57 : $23
	ld a, (hl)                                                  ; $0b58 : $7e
	ld d, a                                                  ; $0b59 : $57
	ld hl, $4118                                                  ; $0b5a : $21, $18, $41
	bit 2, (hl)                                                  ; $0b5d : $cb, $56
	jr z, br_00_0b6d                                                  ; $0b5f : $28, $0c

	ld hl, $4117                                                  ; $0b61 : $21, $17, $41
	bit 0, (hl)                                                  ; $0b64 : $cb, $46
	jr z, br_00_0b6d                                                  ; $0b66 : $28, $05

	or a                                                  ; $0b68 : $b7
	rr d                                                  ; $0b69 : $cb, $1a
	rr e                                                  ; $0b6b : $cb, $1b

br_00_0b6d:
	ld hl, $003c                                                  ; $0b6d : $21, $3c, $00
	ex de, hl                                                  ; $0b70 : $eb

Call_00_0b71:
	push hl                                                  ; $0b71 : $e5
	or a                                                  ; $0b72 : $b7
	sbc hl, de                                                  ; $0b73 : $ed, $52
	jr z, br_00_0be3                                                  ; $0b75 : $28, $6c

	jr c, br_00_0be9                                                  ; $0b77 : $38, $70

br_00_0b79:
	sbc hl, de                                                  ; $0b79 : $ed, $52
	jr c, br_00_0b87                                                  ; $0b7b : $38, $0a

	pop hl                                                  ; $0b7d : $e1
	call Call_00_0bcd                                                  ; $0b7e : $cd, $cd, $0b
	push hl                                                  ; $0b81 : $e5
	or a                                                  ; $0b82 : $b7
	sbc hl, de                                                  ; $0b83 : $ed, $52
	jr br_00_0b79                                                  ; $0b85 : $18, $f2

br_00_0b87:
	pop hl                                                  ; $0b87 : $e1
	push hl                                                  ; $0b88 : $e5

br_00_0b89:
	ld a, ($4122)                                                  ; $0b89 : $3a, $22, $41
	or a                                                  ; $0b8c : $b7
	jr z, br_00_0bc6                                                  ; $0b8d : $28, $37

	ld b, a                                                  ; $0b8f : $47
	or a                                                  ; $0b90 : $b7
	sbc hl, de                                                  ; $0b91 : $ed, $52
	ex de, hl                                                  ; $0b93 : $eb

br_00_0b94:
	pop hl                                                  ; $0b94 : $e1
	call Call_00_0bcd                                                  ; $0b95 : $cd, $cd, $0b
	push hl                                                  ; $0b98 : $e5
	ex de, hl                                                  ; $0b99 : $eb
	or a                                                  ; $0b9a : $b7
	sbc hl, de                                                  ; $0b9b : $ed, $52
	jr z, br_00_0ba1                                                  ; $0b9d : $28, $02

	jr nc, br_00_0bb4                                                  ; $0b9f : $30, $13

br_00_0ba1:
	add hl, de                                                  ; $0ba1 : $19
	ex de, hl                                                  ; $0ba2 : $eb

br_00_0ba3:
	ld a, ($4122)                                                  ; $0ba3 : $3a, $22, $41
	dec a                                                  ; $0ba6 : $3d
	jr nz, br_00_0b94                                                  ; $0ba7 : $20, $eb

br_00_0ba9:
	pop hl                                                  ; $0ba9 : $e1

br_00_0baa:
	ld hl, $411e                                                  ; $0baa : $21, $1e, $41
	call Call_00_0abf                                                  ; $0bad : $cd, $bf, $0a
	dec b                                                  ; $0bb0 : $05
	jr nz, br_00_0baa                                                  ; $0bb1 : $20, $f7

	ret                                                  ; $0bb3 : $c9


br_00_0bb4:
	ex de, hl                                                  ; $0bb4 : $eb
	ld a, b                                                  ; $0bb5 : $78
	ld hl, $4122                                                  ; $0bb6 : $21, $22, $41
	bit 7, c                                                  ; $0bb9 : $cb, $79
	jr z, br_00_0bc0                                                  ; $0bbb : $28, $03

	add a, (hl)                                                  ; $0bbd : $86
	jr br_00_0bc3                                                  ; $0bbe : $18, $03

br_00_0bc0:
	sub (hl)                                                  ; $0bc0 : $96
	jr c, br_00_0bc6                                                  ; $0bc1 : $38, $03

br_00_0bc3:
	ld b, a                                                  ; $0bc3 : $47
	jr br_00_0ba3                                                  ; $0bc4 : $18, $dd

br_00_0bc6:
	pop hl                                                  ; $0bc6 : $e1
	ld hl, $411e                                                  ; $0bc7 : $21, $1e, $41
	set 4, (hl)                                                  ; $0bca : $cb, $e6
	ret                                                  ; $0bcc : $c9


Call_00_0bcd:
	or a                                                  ; $0bcd : $b7
	rr h                                                  ; $0bce : $cb, $1c
	rr l                                                  ; $0bd0 : $cb, $1d
	ld a, ($4122)                                                  ; $0bd2 : $3a, $22, $41
	srl a                                                  ; $0bd5 : $cb, $3f
	jr nc, br_00_0bdf                                                  ; $0bd7 : $30, $06

	inc c                                                  ; $0bd9 : $0c
	bit 0, c                                                  ; $0bda : $cb, $41
	jr z, br_00_0bdf                                                  ; $0bdc : $28, $01

	inc a                                                  ; $0bde : $3c

br_00_0bdf:
	ld ($4122), a                                                  ; $0bdf : $32, $22, $41
	ret                                                  ; $0be2 : $c9


br_00_0be3:
	ld a, ($4122)                                                  ; $0be3 : $3a, $22, $41
	ld b, a                                                  ; $0be6 : $47
	jr br_00_0ba9                                                  ; $0be7 : $18, $c0

br_00_0be9:
	set 7, c                                                  ; $0be9 : $cb, $f9
	pop hl                                                  ; $0beb : $e1
	push hl                                                  ; $0bec : $e5
	ex de, hl                                                  ; $0bed : $eb
	jr br_00_0b89                                                  ; $0bee : $18, $99

Call_00_0bf0:
	ld bc, $0001                                                  ; $0bf0 : $01, $01, $00
	ld de, $4200                                                  ; $0bf3 : $11, $00, $42
	ld hl, $4180                                                  ; $0bf6 : $21, $80, $41

br_00_0bf9:
	ld a, (hl)                                                  ; $0bf9 : $7e
	cp $20                                                  ; $0bfa : $fe, $20
	jr z, br_00_0c15                                                  ; $0bfc : $28, $17

	push hl                                                  ; $0bfe : $e5
	res 0, c                                                  ; $0bff : $cb, $81
	ld hl, $29a5                                                  ; $0c01 : $21, $a5, $29
	call AddAtoHL                                                  ; $0c04 : $cd, $99, $01
	ld a, (hl)                                                  ; $0c07 : $7e
	rlc b                                                  ; $0c08 : $cb, $00
	add a, b                                                  ; $0c0a : $80
	ld b, a                                                  ; $0c0b : $47
	pop hl                                                  ; $0c0c : $e1

br_00_0c0d:
	ld a, (hl)                                                  ; $0c0d : $7e
	cp $0d                                                  ; $0c0e : $fe, $0d
	jr z, br_00_0c22                                                  ; $0c10 : $28, $10

	inc hl                                                  ; $0c12 : $23
	jr br_00_0bf9                                                  ; $0c13 : $18, $e4

br_00_0c15:
	bit 0, c                                                  ; $0c15 : $cb, $41
	jr nz, br_00_0c0d                                                  ; $0c17 : $20, $f4

	ld a, b                                                  ; $0c19 : $78
	ld (de), a                                                  ; $0c1a : $12
	inc de                                                  ; $0c1b : $13
	ld b, $00                                                  ; $0c1c : $06, $00
	set 0, c                                                  ; $0c1e : $cb, $c1
	jr br_00_0c0d                                                  ; $0c20 : $18, $eb

br_00_0c22:
	ld a, b                                                  ; $0c22 : $78
	ld (de), a                                                  ; $0c23 : $12
	ret                                                  ; $0c24 : $c9


	ld hl, $4112                                                  ; $0c25 : $21, $12, $41
	res 3, (hl)                                                  ; $0c28 : $cb, $9e

Jump_00_0c2a:
	ld a, $34                                                  ; $0c2a : $3e, $34
	ld ($4119), a                                                  ; $0c2c : $32, $19, $41
	ld hl, $4155                                                  ; $0c2f : $21, $55, $41
	set 0, (hl)                                                  ; $0c32 : $cb, $c6
	set 1, (hl)                                                  ; $0c34 : $cb, $ce
	ld hl, $279d                                                  ; $0c36 : $21, $9d, $27
	call Call_00_0cbb                                                  ; $0c39 : $cd, $bb, $0c
	ld hl, $27aa                                                  ; $0c3c : $21, $aa, $27
	call Call_00_0cbb                                                  ; $0c3f : $cd, $bb, $0c
	ld hl, $27b4                                                  ; $0c42 : $21, $b4, $27
	call Call_00_0cbb                                                  ; $0c45 : $cd, $bb, $0c
	ld hl, $278d                                                  ; $0c48 : $21, $8d, $27
	call Call_00_0386                                                  ; $0c4b : $cd, $86, $03
	call Call_00_0cca                                                  ; $0c4e : $cd, $ca, $0c
	call Call_00_04f2                                                  ; $0c51 : $cd, $f2, $04
	call Call_00_0af5                                                  ; $0c54 : $cd, $f5, $0a
	call Call_00_0cca                                                  ; $0c57 : $cd, $ca, $0c

Jump_00_0c5a:
	ld hl, $4155                                                  ; $0c5a : $21, $55, $41
	ld (hl), $00                                                  ; $0c5d : $36, $00
	cp $02                                                  ; $0c5f : $fe, $02
	jp z, Jump_00_1110                                                  ; $0c61 : $ca, $10, $11
	cp $03                                                  ; $0c64 : $fe, $03
	jp z, Jump_00_14e5                                                  ; $0c66 : $ca, $e5, $14
	ld hl, $4127                                                  ; $0c69 : $21, $27, $41
	ld (hl), $00                                                  ; $0c6c : $36, $00
	ld hl, $27bf                                                  ; $0c6e : $21, $bf, $27
	call Call_00_03ab                                                  ; $0c71 : $cd, $ab, $03
	call Call_00_03e4                                                  ; $0c74 : $cd, $e4, $03
	ld a, $33                                                  ; $0c77 : $3e, $33
	ld ($4119), a                                                  ; $0c79 : $32, $19, $41
	ld hl, $4155                                                  ; $0c7c : $21, $55, $41
	set 0, (hl)                                                  ; $0c7f : $cb, $c6
	ld hl, $27db                                                  ; $0c81 : $21, $db, $27
	call Call_00_0386                                                  ; $0c84 : $cd, $86, $03
	ld hl, $4155                                                  ; $0c87 : $21, $55, $41
	bit 2, (hl)                                                  ; $0c8a : $cb, $56
	push af                                                  ; $0c8c : $f5
	call z, Call_00_04f2                                                  ; $0c8d : $cc, $f2, $04
	pop af                                                  ; $0c90 : $f1
	call z, Call_00_0af5                                                  ; $0c91 : $cc, $f5, $0a
	ld ($4118), a                                                  ; $0c94 : $32, $18, $41
	call Call_00_03e4                                                  ; $0c97 : $cd, $e4, $03

Jump_00_0c9a:
	ld de, $2c2f                                                  ; $0c9a : $11, $2f, $2c
	call Call_00_0782                                                  ; $0c9d : $cd, $82, $07
	call Call_00_03dd                                                  ; $0ca0 : $cd, $dd, $03
	ld a, ($4118)                                                  ; $0ca3 : $3a, $18, $41
	ld hl, $4112                                                  ; $0ca6 : $21, $12, $41
	set 3, (hl)                                                  ; $0ca9 : $cb, $de
	ld hl, $4155                                                  ; $0cab : $21, $55, $41
	ld (hl), $00                                                  ; $0cae : $36, $00
	bit 1, a                                                  ; $0cb0 : $cb, $4f
	jr z, br_00_0cdc                                                  ; $0cb2 : $28, $28

	ld a, $1f                                                  ; $0cb4 : $3e, $1f
	ld ($411a), a                                                  ; $0cb6 : $32, $1a, $41
	jr br_00_0ce1                                                  ; $0cb9 : $18, $26

Call_00_0cbb:
	call Call_00_0386                                                  ; $0cbb : $cd, $86, $03
	ld hl, $4155                                                  ; $0cbe : $21, $55, $41
	bit 2, (hl)                                                  ; $0cc1 : $cb, $56
	jr nz, br_00_0cd5                                                  ; $0cc3 : $20, $10

	bit 1, (hl)                                                  ; $0cc5 : $cb, $4e
	call nz, Call_00_03dd                                                  ; $0cc7 : $c4, $dd, $03

Call_00_0cca:
	ld hl, $4155                                                  ; $0cca : $21, $55, $41
	bit 1, (hl)                                                  ; $0ccd : $cb, $4e
	jr nz, br_00_0cd5                                                  ; $0ccf : $20, $04

	pop de                                                  ; $0cd1 : $d1
	jp Jump_00_0c2a                                                  ; $0cd2 : $c3, $2a, $0c


br_00_0cd5:
	bit 2, (hl)                                                  ; $0cd5 : $cb, $56
	ret z                                                  ; $0cd7 : $c8

	pop de                                                  ; $0cd8 : $d1
	jp Jump_00_0c5a                                                  ; $0cd9 : $c3, $5a, $0c


br_00_0cdc:
	ld a, $32                                                  ; $0cdc : $3e, $32
	ld ($411a), a                                                  ; $0cde : $32, $1a, $41

br_00_0ce1:
	ld hl, $4121                                                  ; $0ce1 : $21, $21, $41
	ld (hl), $03                                                  ; $0ce4 : $36, $03
	ld bc, $0000                                                  ; $0ce6 : $01, $00, $00
	exx                                                  ; $0ce9 : $d9

br_00_0cea:
	call Call_00_0414                                                  ; $0cea : $cd, $14, $04

Jump_00_0ced:
	ld a, ($410c)                                                  ; $0ced : $3a, $0c, $41
	srl a                                                  ; $0cf0 : $cb, $3f
	push af                                                  ; $0cf2 : $f5
	call Call_00_0df9                                                  ; $0cf3 : $cd, $f9, $0d
	call Call_00_02d7                                                  ; $0cf6 : $cd, $d7, $02
	call Call_00_0414                                                  ; $0cf9 : $cd, $14, $04
	pop af                                                  ; $0cfc : $f1
	ld ($410c), a                                                  ; $0cfd : $32, $0c, $41
	ld hl, $410f                                                  ; $0d00 : $21, $0f, $41
	set 1, (hl)                                                  ; $0d03 : $cb, $ce
	ld hl, $4169                                                  ; $0d05 : $21, $69, $41
	ld (hl), $13                                                  ; $0d08 : $36, $13
	inc hl                                                  ; $0d0a : $23
	ld (hl), $00                                                  ; $0d0b : $36, $00

Jump_00_0d0d:
	call Call_00_0561                                                  ; $0d0d : $cd, $61, $05
	cp $ff                                                  ; $0d10 : $fe, $ff
	jr z, br_00_0d6e                                                  ; $0d12 : $28, $5a

	bit 5, (hl)                                                  ; $0d14 : $cb, $6e
	jr nz, br_00_0d60                                                  ; $0d16 : $20, $48

	cp $20                                                  ; $0d18 : $fe, $20
	jr z, br_00_0d60                                                  ; $0d1a : $28, $44

	ld hl, $4180                                                  ; $0d1c : $21, $80, $41
	cp (hl)                                                  ; $0d1f : $be
	jr nz, br_00_0d60                                                  ; $0d20 : $20, $3e

	exx                                                  ; $0d22 : $d9
	inc bc                                                  ; $0d23 : $03
	exx                                                  ; $0d24 : $d9
	ld b, $00                                                  ; $0d25 : $06, $00
	ld a, ($416a)                                                  ; $0d27 : $3a, $6a, $41
	or a                                                  ; $0d2a : $b7
	jr z, br_00_0d41                                                  ; $0d2b : $28, $14

	ld c, a                                                  ; $0d2d : $4f
	ld hl, $4181                                                  ; $0d2e : $21, $81, $41
	ld de, $4180                                                  ; $0d31 : $11, $80, $41
	ldir                                                  ; $0d34 : $ed, $b0
	ld hl, $416a                                                  ; $0d36 : $21, $6a, $41
	dec (hl)                                                  ; $0d39 : $35
	ld hl, $4123                                                  ; $0d3a : $21, $23, $41
	dec (hl)                                                  ; $0d3d : $35
	call Call_00_024d                                                  ; $0d3e : $cd, $4d, $02

br_00_0d41:
	ld a, ($4180)                                                  ; $0d41 : $3a, $80, $41
	cp $20                                                  ; $0d44 : $fe, $20
	jr nz, br_00_0d6e                                                  ; $0d46 : $20, $26

	ld hl, $410f                                                  ; $0d48 : $21, $0f, $41
	bit 3, (hl)                                                  ; $0d4b : $cb, $5e
	jr z, br_00_0d6e                                                  ; $0d4d : $28, $1f

	ld hl, $411a                                                  ; $0d4f : $21, $1a, $41
	ld a, $0f                                                  ; $0d52 : $3e, $0f
	cp (hl)                                                  ; $0d54 : $be
	jr nc, br_00_0cea                                                  ; $0d55 : $30, $93

	bit 3, (hl)                                                  ; $0d57 : $cb, $5e
	jr z, br_00_0d5c                                                  ; $0d59 : $28, $01

	dec (hl)                                                  ; $0d5b : $35

br_00_0d5c:
	dec (hl)                                                  ; $0d5c : $35
	dec (hl)                                                  ; $0d5d : $35
	jr br_00_0cea                                                  ; $0d5e : $18, $8a

br_00_0d60:
	call Call_00_0745                                                  ; $0d60 : $cd, $45, $07
	exx                                                  ; $0d63 : $d9
	xor a                                                  ; $0d64 : $af
	ld hl, $0000                                                  ; $0d65 : $21, $00, $00
	sbc hl, bc                                                  ; $0d68 : $ed, $42
	jr z, br_00_0d6d                                                  ; $0d6a : $28, $01

	dec bc                                                  ; $0d6c : $0b

br_00_0d6d:
	exx                                                  ; $0d6d : $d9

br_00_0d6e:
	ld de, $416a                                                  ; $0d6e : $11, $6a, $41
	ld a, (de)                                                  ; $0d71 : $1a
	cp $15                                                  ; $0d72 : $fe, $15
	jr nz, br_00_0d9e                                                  ; $0d74 : $20, $28

	call Call_00_072f                                                  ; $0d76 : $cd, $2f, $07
	ld hl, $410f                                                  ; $0d79 : $21, $0f, $41
	res 1, (hl)                                                  ; $0d7c : $cb, $8e
	ld hl, $4121                                                  ; $0d7e : $21, $21, $41
	dec (hl)                                                  ; $0d81 : $35
	jp nz, Jump_00_0ced                                                  ; $0d82 : $c2, $ed, $0c
	call Call_00_072f                                                  ; $0d85 : $cd, $2f, $07
	call Call_00_0df9                                                  ; $0d88 : $cd, $f9, $0d
	call Call_00_03dd                                                  ; $0d8b : $cd, $dd, $03
	ld de, $2c51                                                  ; $0d8e : $11, $51, $2c
	call Call_00_0782                                                  ; $0d91 : $cd, $82, $07

br_00_0d94:
	call Call_00_0561                                                  ; $0d94 : $cd, $61, $05
	cp $ff                                                  ; $0d97 : $fe, $ff
	jr z, br_00_0d94                                                  ; $0d99 : $28, $f9

	jp Jump_00_0c9a                                                  ; $0d9b : $c3, $9a, $0c


br_00_0d9e:
	ld hl, $4114                                                  ; $0d9e : $21, $14, $41
	inc (hl)                                                  ; $0da1 : $34
	ld a, (hl)                                                  ; $0da2 : $7e
	ld de, $411a                                                  ; $0da3 : $11, $1a, $41
	ex de, hl                                                  ; $0da6 : $eb
	cp (hl)                                                  ; $0da7 : $be
	ex de, hl                                                  ; $0da8 : $eb
	jp nz, Jump_00_0d0d                                                  ; $0da9 : $c2, $0d, $0d
	xor a                                                  ; $0dac : $af
	ld (hl), a                                                  ; $0dad : $77
	ld hl, $410f                                                  ; $0dae : $21, $0f, $41
	bit 3, (hl)                                                  ; $0db1 : $cb, $5e
	jr z, br_00_0db9                                                  ; $0db3 : $28, $04

	ld a, $20                                                  ; $0db5 : $3e, $20
	jr br_00_0dd6                                                  ; $0db7 : $18, $1d

br_00_0db9:
	ld a, r                                                  ; $0db9 : $ed, $5f
	res 4, a                                                  ; $0dbb : $cb, $a7
	res 5, a                                                  ; $0dbd : $cb, $af
	res 6, a                                                  ; $0dbf : $cb, $b7
	res 7, a                                                  ; $0dc1 : $cb, $bf
	ld hl, $4127                                                  ; $0dc3 : $21, $27, $41
	add a, (hl)                                                  ; $0dc6 : $86
	inc a                                                  ; $0dc7 : $3c
	cp $1a                                                  ; $0dc8 : $fe, $1a
	jr c, br_00_0dce                                                  ; $0dca : $38, $02

	sub $1a                                                  ; $0dcc : $d6, $1a

br_00_0dce:
	ld (hl), a                                                  ; $0dce : $77
	ld hl, $28e7                                                  ; $0dcf : $21, $e7, $28
	call AddAtoHL                                                  ; $0dd2 : $cd, $99, $01
	ld a, (hl)                                                  ; $0dd5 : $7e

br_00_0dd6:
	ld ($4113), a                                                  ; $0dd6 : $32, $13, $41
	ld hl, $416a                                                  ; $0dd9 : $21, $6a, $41
	inc (hl)                                                  ; $0ddc : $34
	call Call_00_0105                                                  ; $0ddd : $cd, $05, $01
	call Call_00_0445                                                  ; $0de0 : $cd, $45, $04
	ld hl, $416a                                                  ; $0de3 : $21, $6a, $41
	dec (hl)                                                  ; $0de6 : $35
	call Call_00_024d                                                  ; $0de7 : $cd, $4d, $02
	ld a, ($410c)                                                  ; $0dea : $3a, $0c, $41
	cp $2a                                                  ; $0ded : $fe, $2a
	jr c, br_00_0df6                                                  ; $0def : $38, $05

	ld hl, $410f                                                  ; $0df1 : $21, $0f, $41
	set 3, (hl)                                                  ; $0df4 : $cb, $de

br_00_0df6:
	jp Jump_00_0d0d                                                  ; $0df6 : $c3, $0d, $0d


Call_00_0df9:
	ld hl, $2826                                                  ; $0df9 : $21, $26, $28
	call Call_00_042b                                                  ; $0dfc : $cd, $2b, $04
	ld hl, $4121                                                  ; $0dff : $21, $21, $41
	ld a, (hl)                                                  ; $0e02 : $7e
	add a, $30                                                  ; $0e03 : $c6, $30
	ld ($4187), a                                                  ; $0e05 : $32, $87, $41
	exx                                                  ; $0e08 : $d9
	push bc                                                  ; $0e09 : $c5
	exx                                                  ; $0e0a : $d9
	pop de                                                  ; $0e0b : $d1

br_00_0e0c:
	xor a                                                  ; $0e0c : $af
	ld hl, $0000                                                  ; $0e0d : $21, $00, $00
	sbc hl, de                                                  ; $0e10 : $ed, $52
	jr z, br_00_0e1a                                                  ; $0e12 : $28, $06

	call Call_00_0abc                                                  ; $0e14 : $cd, $bc, $0a
	dec de                                                  ; $0e17 : $1b
	jr br_00_0e0c                                                  ; $0e18 : $18, $f2

Jump_00_0e1a:
br_00_0e1a:
	call Call_00_0e24                                                  ; $0e1a : $cd, $24, $0e
	call Call_00_0389                                                  ; $0e1d : $cd, $89, $03
	call Call_00_03dd                                                  ; $0e20 : $cd, $dd, $03
	ret                                                  ; $0e23 : $c9


Call_00_0e24:
	ld de, $4193                                                  ; $0e24 : $11, $93, $41

Call_00_0e27:
	ld hl, $411b                                                  ; $0e27 : $21, $1b, $41
	set 4, (hl)                                                  ; $0e2a : $cb, $e6
	ld c, $04                                                  ; $0e2c : $0e, $04

br_00_0e2e:
	ld a, (hl)                                                  ; $0e2e : $7e
	ld (de), a                                                  ; $0e2f : $12
	inc hl                                                  ; $0e30 : $23
	dec de                                                  ; $0e31 : $1b
	dec c                                                  ; $0e32 : $0d
	jr nz, br_00_0e2e                                                  ; $0e33 : $20, $f9

	ret                                                  ; $0e35 : $c9


	ld hl, $4112                                                  ; $0e36 : $21, $12, $41
	res 3, (hl)                                                  ; $0e39 : $cb, $9e
	ld a, $03                                                  ; $0e3b : $3e, $03
	ld ($4640), a                                                  ; $0e3d : $32, $40, $46
	ld ($4641), a                                                  ; $0e40 : $32, $41, $46
	call Call_00_3bcc                                                  ; $0e43 : $cd, $cc, $3b
	ld hl, $27fe                                                  ; $0e46 : $21, $fe, $27
	call Call_00_03ab                                                  ; $0e49 : $cd, $ab, $03
	call Call_00_03dd                                                  ; $0e4c : $cd, $dd, $03
	ld de, $2c2f                                                  ; $0e4f : $11, $2f, $2c
	call Call_00_0782                                                  ; $0e52 : $cd, $82, $07
	call Call_00_03dd                                                  ; $0e55 : $cd, $dd, $03
	call $8000                                                  ; $0e58 : $cd, $00, $80

Jump_00_0e5b:
	ld hl, $4500                                                  ; $0e5b : $21, $00, $45
	ld (hl), $01                                                  ; $0e5e : $36, $01
	inc hl                                                  ; $0e60 : $23
	ld (hl), $01                                                  ; $0e61 : $36, $01
	inc hl                                                  ; $0e63 : $23
	ld (hl), $30                                                  ; $0e64 : $36, $30
	inc hl                                                  ; $0e66 : $23
	ld (hl), $24                                                  ; $0e67 : $36, $24

Jump_00_0e69:
	call Call_00_0244                                                  ; $0e69 : $cd, $44, $02
	call Call_00_04f2                                                  ; $0e6c : $cd, $f2, $04
	ld hl, $4158                                                  ; $0e6f : $21, $58, $41
	ld (hl), $00                                                  ; $0e72 : $36, $00

Jump_00_0e74:
	call Call_00_0e79                                                  ; $0e74 : $cd, $79, $0e
	jr br_00_0ea1                                                  ; $0e77 : $18, $28

Call_00_0e79:
	ld hl, $432d                                                  ; $0e79 : $21, $2d, $43
	ld (hl), $23                                                  ; $0e7c : $36, $23
	inc hl                                                  ; $0e7e : $23
	ld (hl), $00                                                  ; $0e7f : $36, $00
	inc hl                                                  ; $0e81 : $23
	ld ($4310), hl                                                  ; $0e82 : $22, $10, $43
	ld hl, $43e1                                                  ; $0e85 : $21, $e1, $43
	ld a, $01                                                  ; $0e88 : $3e, $01
	ld (hl), a                                                  ; $0e8a : $77
	inc hl                                                  ; $0e8b : $23
	ld (hl), a                                                  ; $0e8c : $77
	inc hl                                                  ; $0e8d : $23
	ld ($4314), hl                                                  ; $0e8e : $22, $14, $43
	ld hl, $4360                                                  ; $0e91 : $21, $60, $43
	ld a, $30                                                  ; $0e94 : $3e, $30
	ld (hl), a                                                  ; $0e96 : $77
	inc hl                                                  ; $0e97 : $23
	ld ($4312), hl                                                  ; $0e98 : $22, $12, $43
	ld a, $01                                                  ; $0e9b : $3e, $01
	ld ($430f), a                                                  ; $0e9d : $32, $0f, $43
	ret                                                  ; $0ea0 : $c9


Jump_00_0ea1:
br_00_0ea1:
	call $8b62                                                  ; $0ea1 : $cd, $62, $8b
	call $8da1                                                  ; $0ea4 : $cd, $a1, $8d
	call Call_00_0eac                                                  ; $0ea7 : $cd, $ac, $0e
	jr br_00_0ecf                                                  ; $0eaa : $18, $23

Call_00_0eac:
	ld a, $00                                                  ; $0eac : $3e, $00
	ld ($4300), a                                                  ; $0eae : $32, $00, $43
	ld ($4307), a                                                  ; $0eb1 : $32, $07, $43
	ld ($4304), a                                                  ; $0eb4 : $32, $04, $43
	ld ($4303), a                                                  ; $0eb7 : $32, $03, $43
	ld ($4301), a                                                  ; $0eba : $32, $01, $43
	ld ($4309), a                                                  ; $0ebd : $32, $09, $43
	ld ($430e), a                                                  ; $0ec0 : $32, $0e, $43
	ld hl, $430b                                                  ; $0ec3 : $21, $0b, $43
	ld (hl), $01                                                  ; $0ec6 : $36, $01
	ld hl, $43f6                                                  ; $0ec8 : $21, $f6, $43
	ld ($4316), hl                                                  ; $0ecb : $22, $16, $43
	ret                                                  ; $0ece : $c9


br_00_0ecf:
	call Call_00_0561                                                  ; $0ecf : $cd, $61, $05
	ld a, ($416b)                                                  ; $0ed2 : $3a, $6b, $41
	cp $15                                                  ; $0ed5 : $fe, $15
	call nc, Call_00_06eb                                                  ; $0ed7 : $d4, $eb, $06
	ld hl, $4158                                                  ; $0eda : $21, $58, $41
	xor a                                                  ; $0edd : $af
	cp (hl)                                                  ; $0ede : $be
	push af                                                  ; $0edf : $f5
	call z, Call_00_04f7                                                  ; $0ee0 : $cc, $f7, $04
	pop af                                                  ; $0ee3 : $f1
	call z, Call_00_0705                                                  ; $0ee4 : $cc, $05, $07
	ld a, ($4113)                                                  ; $0ee7 : $3a, $13, $41
	cp $ff                                                  ; $0eea : $fe, $ff
	jr z, br_00_0ecf                                                  ; $0eec : $28, $e1

	cp $e7                                                  ; $0eee : $fe, $e7
	jp z, Jump_00_0e69                                                  ; $0ef0 : $ca, $69, $0e
	cp $28                                                  ; $0ef3 : $fe, $28
	jr z, br_00_0f0b                                                  ; $0ef5 : $28, $14

	cp $29                                                  ; $0ef7 : $fe, $29
	jr z, br_00_0f0b                                                  ; $0ef9 : $28, $10

	cp $20                                                  ; $0efb : $fe, $20
	jr z, br_00_0f0b                                                  ; $0efd : $28, $0c

	cp $3a                                                  ; $0eff : $fe, $3a
	jr nc, br_00_0f5b                                                  ; $0f01 : $30, $58

	cp $30                                                  ; $0f03 : $fe, $30
	jr nc, br_00_0f0b                                                  ; $0f05 : $30, $04

	cp $2e                                                  ; $0f07 : $fe, $2e
	jr nz, br_00_0f1c                                                  ; $0f09 : $20, $11

Jump_00_0f0b:
br_00_0f0b:
	ld hl, $4158                                                  ; $0f0b : $21, $58, $41
	xor a                                                  ; $0f0e : $af
	cp (hl)                                                  ; $0f0f : $be
	jr z, br_00_0f17                                                  ; $0f10 : $28, $05

	ld (hl), $00                                                  ; $0f12 : $36, $00
	call Call_00_0244                                                  ; $0f14 : $cd, $44, $02

br_00_0f17:
	call Call_00_0438                                                  ; $0f17 : $cd, $38, $04
	jr br_00_0ecf                                                  ; $0f1a : $18, $b3

Jump_00_0f1c:
br_00_0f1c:
	call Call_00_0745                                                  ; $0f1c : $cd, $45, $07
	jr br_00_0ecf                                                  ; $0f1f : $18, $ae

Call_00_0f21:
	push hl                                                  ; $0f21 : $e5
	ld ($4113), a                                                  ; $0f22 : $32, $13, $41
	call Call_00_0105                                                  ; $0f25 : $cd, $05, $01
	call Call_00_0445                                                  ; $0f28 : $cd, $45, $04
	pop hl                                                  ; $0f2b : $e1
	ret                                                  ; $0f2c : $c9


br_00_0f2d:
	ld hl, $4158                                                  ; $0f2d : $21, $58, $41
	bit 1, (hl)                                                  ; $0f30 : $cb, $4e
	jr nz, br_00_0f1c                                                  ; $0f32 : $20, $e8

	ld a, $3d                                                  ; $0f34 : $3e, $3d
	ld ($4280), a                                                  ; $0f36 : $32, $80, $42

Jump_00_0f39:
	call $8018                                                  ; $0f39 : $cd, $18, $80
	call Call_00_0244                                                  ; $0f3c : $cd, $44, $02
	ld hl, $45a0                                                  ; $0f3f : $21, $a0, $45

br_00_0f42:
	ld a, (hl)                                                  ; $0f42 : $7e
	cp $24                                                  ; $0f43 : $fe, $24
	jr z, br_00_0f4d                                                  ; $0f45 : $28, $06

	call Call_00_0f21                                                  ; $0f47 : $cd, $21, $0f
	inc hl                                                  ; $0f4a : $23
	jr br_00_0f42                                                  ; $0f4b : $18, $f5

br_00_0f4d:
	call Call_00_024d                                                  ; $0f4d : $cd, $4d, $02
	ld hl, $4158                                                  ; $0f50 : $21, $58, $41
	bit 1, (hl)                                                  ; $0f53 : $cb, $4e
	jp z, Jump_00_0e74                                                  ; $0f55 : $ca, $74, $0e
	jp Jump_00_0e74                                                  ; $0f58 : $c3, $74, $0e


br_00_0f5b:
	res 5, a                                                  ; $0f5b : $cb, $af
	cp $51                                                  ; $0f5d : $fe, $51
	jr z, br_00_0f2d                                                  ; $0f5f : $28, $cc

	cp $57                                                  ; $0f61 : $fe, $57
	jp z, Jump_00_104e                                                  ; $0f63 : $ca, $4e, $10
	cp $45                                                  ; $0f66 : $fe, $45
	jp z, Jump_00_1055                                                  ; $0f68 : $ca, $55, $10
	cp $52                                                  ; $0f6b : $fe, $52
	jp z, Jump_00_105c                                                  ; $0f6d : $ca, $5c, $10
	cp $54                                                  ; $0f70 : $fe, $54
	jp z, Jump_00_1063                                                  ; $0f72 : $ca, $63, $10
	ld hl, $4124                                                  ; $0f75 : $21, $24, $41
	ld b, a                                                  ; $0f78 : $47
	xor a                                                  ; $0f79 : $af
	cp (hl)                                                  ; $0f7a : $be
	ld a, b                                                  ; $0f7b : $78
	jr nz, br_00_0f1c                                                  ; $0f7c : $20, $9e

	cp $55                                                  ; $0f7e : $fe, $55
	jr z, br_00_0fb5                                                  ; $0f80 : $28, $33

	ld hl, $4158                                                  ; $0f82 : $21, $58, $41
	bit 1, (hl)                                                  ; $0f85 : $cb, $4e
	jr nz, br_00_0f1c                                                  ; $0f87 : $20, $93

	cp $59                                                  ; $0f89 : $fe, $59
	jr z, br_00_0f9a                                                  ; $0f8b : $28, $0d

	cp $49                                                  ; $0f8d : $fe, $49
	jp z, Jump_00_1027                                                  ; $0f8f : $ca, $27, $10
	cp $4f                                                  ; $0f92 : $fe, $4f
	jp z, Jump_00_102e                                                  ; $0f94 : $ca, $2e, $10
	jp Jump_00_0f1c                                                  ; $0f97 : $c3, $1c, $0f


br_00_0f9a:
	ld a, ($4123)                                                  ; $0f9a : $3a, $23, $41
	or a                                                  ; $0f9d : $b7
	jp z, Jump_00_0e5b                                                  ; $0f9e : $ca, $5b, $0e
	ld hl, $4280                                                  ; $0fa1 : $21, $80, $42
	ld (hl), $4c                                                  ; $0fa4 : $36, $4c
	call $8018                                                  ; $0fa6 : $cd, $18, $80
	ld hl, $4158                                                  ; $0fa9 : $21, $58, $41
	bit 1, (hl)                                                  ; $0fac : $cb, $4e
	jp z, Jump_00_0ea1                                                  ; $0fae : $ca, $a1, $0e
	ld (hl), $00                                                  ; $0fb1 : $36, $00
	jr br_00_0fdd                                                  ; $0fb3 : $18, $28

br_00_0fb5:
	xor a                                                  ; $0fb5 : $af
	ld hl, $4158                                                  ; $0fb6 : $21, $58, $41
	cp (hl)                                                  ; $0fb9 : $be
	jp nz, Jump_00_1047                                                  ; $0fba : $c2, $47, $10
	ld hl, $41ff                                                  ; $0fbd : $21, $ff, $41
	ld a, ($4123)                                                  ; $0fc0 : $3a, $23, $41
	call AddAtoHL                                                  ; $0fc3 : $cd, $99, $01
	ld a, (hl)                                                  ; $0fc6 : $7e
	cp $30                                                  ; $0fc7 : $fe, $30
	jr z, br_00_0fdd                                                  ; $0fc9 : $28, $12

	ld hl, $4280                                                  ; $0fcb : $21, $80, $42
	ld (hl), $4e                                                  ; $0fce : $36, $4e
	call $8018                                                  ; $0fd0 : $cd, $18, $80
	ld hl, $4158                                                  ; $0fd3 : $21, $58, $41
	bit 1, (hl)                                                  ; $0fd6 : $cb, $4e
	jp z, Jump_00_0fe3                                                  ; $0fd8 : $ca, $e3, $0f
	ld (hl), $00                                                  ; $0fdb : $36, $00

br_00_0fdd:
	call Call_00_0745                                                  ; $0fdd : $cd, $45, $07
	jp Jump_00_0e74                                                  ; $0fe0 : $c3, $74, $0e


Jump_00_0fe3:
br_00_0fe3:
	ld hl, $4502                                                  ; $0fe3 : $21, $02, $45
	ld a, (hl)                                                  ; $0fe6 : $7e
	cp $2d                                                  ; $0fe7 : $fe, $2d
	jr nz, br_00_0ff5                                                  ; $0fe9 : $20, $0a

	ld a, $28                                                  ; $0feb : $3e, $28
	call Call_00_0f21                                                  ; $0fed : $cd, $21, $0f
	ld a, (hl)                                                  ; $0ff0 : $7e
	call Call_00_0f21                                                  ; $0ff1 : $cd, $21, $0f
	inc hl                                                  ; $0ff4 : $23

br_00_0ff5:
	ld a, (hl)                                                  ; $0ff5 : $7e
	cp $30                                                  ; $0ff6 : $fe, $30
	jr nz, br_00_1004                                                  ; $0ff8 : $20, $0a

	inc hl                                                  ; $0ffa : $23
	ld a, (hl)                                                  ; $0ffb : $7e
	dec hl                                                  ; $0ffc : $2b
	cp $30                                                  ; $0ffd : $fe, $30
	jr c, br_00_1004                                                  ; $0fff : $38, $03

	inc hl                                                  ; $1001 : $23
	jr br_00_0ff5                                                  ; $1002 : $18, $f1

br_00_1004:
	ld a, (hl)                                                  ; $1004 : $7e
	call Call_00_0f21                                                  ; $1005 : $cd, $21, $0f
	ld a, ($4123)                                                  ; $1008 : $3a, $23, $41
	cp $7d                                                  ; $100b : $fe, $7d
	jr nc, br_00_1036                                                  ; $100d : $30, $27

	inc hl                                                  ; $100f : $23
	ld a, (hl)                                                  ; $1010 : $7e
	cp $24                                                  ; $1011 : $fe, $24
	jr nz, br_00_1004                                                  ; $1013 : $20, $ef

	ld a, ($4502)                                                  ; $1015 : $3a, $02, $45
	cp $2d                                                  ; $1018 : $fe, $2d
	jr nz, br_00_1021                                                  ; $101a : $20, $05

	ld a, $29                                                  ; $101c : $3e, $29
	call Call_00_0f21                                                  ; $101e : $cd, $21, $0f

br_00_1021:
	call Call_00_043e                                                  ; $1021 : $cd, $3e, $04
	jp Jump_00_0e74                                                  ; $1024 : $c3, $74, $0e


Jump_00_1027:
	ld hl, $4280                                                  ; $1027 : $21, $80, $42
	ld (hl), $41                                                  ; $102a : $36, $41
	jr br_00_1033                                                  ; $102c : $18, $05

Jump_00_102e:
	ld hl, $4280                                                  ; $102e : $21, $80, $42
	ld (hl), $53                                                  ; $1031 : $36, $53

br_00_1033:
	jp Jump_00_0f39                                                  ; $1033 : $c3, $39, $0f


br_00_1036:
	ld hl, $2837                                                  ; $1036 : $21, $37, $28
	call Call_00_042b                                                  ; $1039 : $cd, $2b, $04
	call Call_00_0247                                                  ; $103c : $cd, $47, $02
	ld hl, $4158                                                  ; $103f : $21, $58, $41
	set 1, (hl)                                                  ; $1042 : $cb, $ce
	jp Jump_00_0ea1                                                  ; $1044 : $c3, $a1, $0e


Jump_00_1047:
	ld (hl), $00                                                  ; $1047 : $36, $00
	call Call_00_0244                                                  ; $1049 : $cd, $44, $02
	jr br_00_0fe3                                                  ; $104c : $18, $95

Jump_00_104e:
	ld a, $2b                                                  ; $104e : $3e, $2b
	ld ($4113), a                                                  ; $1050 : $32, $13, $41
	jr br_00_1068                                                  ; $1053 : $18, $13

Jump_00_1055:
	ld a, $2d                                                  ; $1055 : $3e, $2d
	ld ($4113), a                                                  ; $1057 : $32, $13, $41
	jr br_00_1068                                                  ; $105a : $18, $0c

Jump_00_105c:
	ld a, $a5                                                  ; $105c : $3e, $a5
	ld ($4113), a                                                  ; $105e : $32, $13, $41
	jr br_00_1068                                                  ; $1061 : $18, $05

Jump_00_1063:
	ld a, $a6                                                  ; $1063 : $3e, $a6
	ld ($4113), a                                                  ; $1065 : $32, $13, $41

br_00_1068:
	ld hl, $4158                                                  ; $1068 : $21, $58, $41
	bit 1, (hl)                                                  ; $106b : $cb, $4e
	jp nz, Jump_00_0f1c                                                  ; $106d : $c2, $1c, $0f
	ld (hl), $00                                                  ; $1070 : $36, $00
	jp Jump_00_0f0b                                                  ; $1072 : $c3, $0b, $0f


Call_00_1075:
	ld a, ($4640)                                                  ; $1075 : $3a, $40, $46
	cp $20                                                  ; $1078 : $fe, $20
	jr nc, br_00_10a3                                                  ; $107a : $30, $27

	cp $1c                                                  ; $107c : $fe, $1c
	jr nc, br_00_10a9                                                  ; $107e : $30, $29

	cp $18                                                  ; $1080 : $fe, $18
	jr nc, br_00_10af                                                  ; $1082 : $30, $2b

	cp $14                                                  ; $1084 : $fe, $14
	jr nc, br_00_10b5                                                  ; $1086 : $30, $2d

	cp $10                                                  ; $1088 : $fe, $10
	jr nc, br_00_10bb                                                  ; $108a : $30, $2f

	cp $0c                                                  ; $108c : $fe, $0c
	jr nc, br_00_10c1                                                  ; $108e : $30, $31

	cp $08                                                  ; $1090 : $fe, $08
	jr nc, br_00_10c7                                                  ; $1092 : $30, $33

	ld d, $fe                                                  ; $1094 : $16, $fe

br_00_1096:
	ld bc, $8000                                                  ; $1096 : $01, $00, $80
	sla a                                                  ; $1099 : $cb, $27
	out (c), a                                                  ; $109b : $ed, $79
	ld a, d                                                  ; $109d : $7a
	ld b, $c0                                                  ; $109e : $06, $c0
	out (c), a                                                  ; $10a0 : $ed, $79
	ret                                                  ; $10a2 : $c9


br_00_10a3:
	sub $1c                                                  ; $10a3 : $d6, $1c
	ld d, $7f                                                  ; $10a5 : $16, $7f
	jr br_00_1096                                                  ; $10a7 : $18, $ed

br_00_10a9:
	sub $18                                                  ; $10a9 : $d6, $18
	ld d, $bf                                                  ; $10ab : $16, $bf
	jr br_00_1096                                                  ; $10ad : $18, $e7

br_00_10af:
	sub $14                                                  ; $10af : $d6, $14
	ld d, $df                                                  ; $10b1 : $16, $df
	jr br_00_1096                                                  ; $10b3 : $18, $e1

br_00_10b5:
	sub $10                                                  ; $10b5 : $d6, $10
	ld d, $ef                                                  ; $10b7 : $16, $ef
	jr br_00_1096                                                  ; $10b9 : $18, $db

br_00_10bb:
	sub $0c                                                  ; $10bb : $d6, $0c
	ld d, $f7                                                  ; $10bd : $16, $f7
	jr br_00_1096                                                  ; $10bf : $18, $d5

br_00_10c1:
	sub $08                                                  ; $10c1 : $d6, $08
	ld d, $fb                                                  ; $10c3 : $16, $fb
	jr br_00_1096                                                  ; $10c5 : $18, $cf

br_00_10c7:
	sub $04                                                  ; $10c7 : $d6, $04
	ld d, $fd                                                  ; $10c9 : $16, $fd
	jr br_00_1096                                                  ; $10cb : $18, $c9

Call_00_10cd:
	ld a, ($4631)                                                  ; $10cd : $3a, $31, $46

Call_00_10d0:
br_00_10d0:
	cp $00                                                  ; $10d0 : $fe, $00
	jr z, br_00_10dc                                                  ; $10d2 : $28, $08

	push af                                                  ; $10d4 : $f5
	call Call_00_0abc                                                  ; $10d5 : $cd, $bc, $0a
	pop af                                                  ; $10d8 : $f1
	dec a                                                  ; $10d9 : $3d
	jr br_00_10d0                                                  ; $10da : $18, $f4

br_00_10dc:
	ld hl, $2846                                                  ; $10dc : $21, $46, $28
	call Call_00_042b                                                  ; $10df : $cd, $2b, $04
	jp Jump_00_0e1a                                                  ; $10e2 : $c3, $1a, $0e


Call_00_10e5:
	call Call_00_10ed                                                  ; $10e5 : $cd, $ed, $10
	dec a                                                  ; $10e8 : $3d
	ld ($4117), a                                                  ; $10e9 : $32, $17, $41
	ret                                                  ; $10ec : $c9


Call_00_10ed:
	ld a, $35                                                  ; $10ed : $3e, $35
	ld ($4119), a                                                  ; $10ef : $32, $19, $41
	ld hl, $4155                                                  ; $10f2 : $21, $55, $41
	set 0, (hl)                                                  ; $10f5 : $cb, $c6
	ld hl, $263c                                                  ; $10f7 : $21, $3c, $26

Call_00_10fa:
	call Call_00_0386                                                  ; $10fa : $cd, $86, $03
	ld hl, $4155                                                  ; $10fd : $21, $55, $41
	bit 2, (hl)                                                  ; $1100 : $cb, $56
	push af                                                  ; $1102 : $f5
	call z, Call_00_04f2                                                  ; $1103 : $cc, $f2, $04
	pop af                                                  ; $1106 : $f1
	call z, Call_00_0af5                                                  ; $1107 : $cc, $f5, $0a
	ld hl, $4155                                                  ; $110a : $21, $55, $41
	ld (hl), $00                                                  ; $110d : $36, $00
	ret                                                  ; $110f : $c9


Jump_00_1110:
	ld hl, $27ca                                                  ; $1110 : $21, $ca, $27
	call Call_00_03ab                                                  ; $1113 : $cd, $ab, $03
	call Call_00_03e4                                                  ; $1116 : $cd, $e4, $03
	call Call_00_10e5                                                  ; $1119 : $cd, $e5, $10
	call Call_00_11bd                                                  ; $111c : $cd, $bd, $11

Jump_00_111f:
	ld de, $2c2f                                                  ; $111f : $11, $2f, $2c
	call Call_00_0782                                                  ; $1122 : $cd, $82, $07
	call Call_00_03dd                                                  ; $1125 : $cd, $dd, $03
	call Call_00_0723                                                  ; $1128 : $cd, $23, $07
	ld a, ($4165)                                                  ; $112b : $3a, $65, $41
	bit 1, a                                                  ; $112e : $cb, $4f
	jp nz, Jump_00_1371                                                  ; $1130 : $c2, $71, $13
	call Call_00_3c52                                                  ; $1133 : $cd, $52, $3c
	xor a                                                  ; $1136 : $af
	ld ($415e), a                                                  ; $1137 : $32, $5e, $41
	ld ($4154), a                                                  ; $113a : $32, $54, $41

Jump_00_113d:
	xor a                                                  ; $113d : $af
	ld ($412a), a                                                  ; $113e : $32, $2a, $41
	call Call_00_0723                                                  ; $1141 : $cd, $23, $07
	ld a, $09                                                  ; $1144 : $3e, $09
	ld ($4128), a                                                  ; $1146 : $32, $28, $41
	call Call_00_02f8                                                  ; $1149 : $cd, $f8, $02
	call Call_00_3c83                                                  ; $114c : $cd, $83, $3c
	call Call_00_073b                                                  ; $114f : $cd, $3b, $07
	call Call_00_1358                                                  ; $1152 : $cd, $58, $13
	call Call_00_1364                                                  ; $1155 : $cd, $64, $13
	ld hl, $4164                                                  ; $1158 : $21, $64, $41
	ld (hl), $00                                                  ; $115b : $36, $00

Jump_00_115d:
br_00_115d:
	ld a, ($4128)                                                  ; $115d : $3a, $28, $41
	set 4, a                                                  ; $1160 : $cb, $e7
	set 5, a                                                  ; $1162 : $cb, $ef
	ld ($4290), a                                                  ; $1164 : $32, $90, $42
	call Call_00_04c4                                                  ; $1167 : $cd, $c4, $04

Jump_00_116a:
br_00_116a:
	call Call_00_0561                                                  ; $116a : $cd, $61, $05
	cp $ff                                                  ; $116d : $fe, $ff
	jr z, br_00_116a                                                  ; $116f : $28, $f9

	cp $e8                                                  ; $1171 : $fe, $e8
	jp z, Jump_00_1311                                                  ; $1173 : $ca, $11, $13
	cp $eb                                                  ; $1176 : $fe, $eb
	jp z, Jump_00_119a                                                  ; $1178 : $ca, $9a, $11
	ld hl, $4164                                                  ; $117b : $21, $64, $41
	set 0, (hl)                                                  ; $117e : $cb, $c6
	cp $20                                                  ; $1180 : $fe, $20
	jr z, br_00_118c                                                  ; $1182 : $28, $08

	call Call_00_12b8                                                  ; $1184 : $cd, $b8, $12
	ld a, c                                                  ; $1187 : $79
	or a                                                  ; $1188 : $b7
	jp nz, Jump_00_12f3                                                  ; $1189 : $c2, $f3, $12

Jump_00_118c:
br_00_118c:
	ld hl, $4128                                                  ; $118c : $21, $28, $41
	dec (hl)                                                  ; $118f : $35
	xor a                                                  ; $1190 : $af
	cp (hl)                                                  ; $1191 : $be
	jp z, Jump_00_132d                                                  ; $1192 : $ca, $2d, $13
	call Call_00_0745                                                  ; $1195 : $cd, $45, $07
	jr br_00_115d                                                  ; $1198 : $18, $c3

Jump_00_119a:
	ld hl, $4165                                                  ; $119a : $21, $65, $41
	bit 1, (hl)                                                  ; $119d : $cb, $4e
	jr nz, br_00_118c                                                  ; $119f : $20, $eb

	ld hl, $4164                                                  ; $11a1 : $21, $64, $41
	bit 0, (hl)                                                  ; $11a4 : $cb, $46
	jp nz, Jump_00_118c                                                  ; $11a6 : $c2, $8c, $11
	set 0, (hl)                                                  ; $11a9 : $cb, $c6
	ld a, ($4180)                                                  ; $11ab : $3a, $80, $41
	ld ($4113), a                                                  ; $11ae : $32, $13, $41
	call Call_00_12b8                                                  ; $11b1 : $cd, $b8, $12
	ld hl, $4128                                                  ; $11b4 : $21, $28, $41
	dec (hl)                                                  ; $11b7 : $35
	dec (hl)                                                  ; $11b8 : $35
	dec (hl)                                                  ; $11b9 : $35
	jp Jump_00_115d                                                  ; $11ba : $c3, $5d, $11


Call_00_11bd:
	ld a, $33                                                  ; $11bd : $3e, $33
	ld ($4119), a                                                  ; $11bf : $32, $19, $41
	ld hl, $4155                                                  ; $11c2 : $21, $55, $41
	set 0, (hl)                                                  ; $11c5 : $cb, $c6
	ld hl, $27ec                                                  ; $11c7 : $21, $ec, $27
	call Call_00_0386                                                  ; $11ca : $cd, $86, $03
	ld hl, $4155                                                  ; $11cd : $21, $55, $41
	bit 2, (hl)                                                  ; $11d0 : $cb, $56
	push af                                                  ; $11d2 : $f5
	call z, Call_00_04f2                                                  ; $11d3 : $cc, $f2, $04
	pop af                                                  ; $11d6 : $f1
	call z, Call_00_0af5                                                  ; $11d7 : $cc, $f5, $0a
	ld ($4165), a                                                  ; $11da : $32, $65, $41
	ld hl, $4155                                                  ; $11dd : $21, $55, $41
	ld (hl), $00                                                  ; $11e0 : $36, $00
	cp $01                                                  ; $11e2 : $fe, $01
	jp z, Jump_00_123d                                                  ; $11e4 : $ca, $3d, $12
	ld hl, $28c9                                                  ; $11e7 : $21, $c9, $28
	ld de, $42ee                                                  ; $11ea : $11, $ee, $42
	call Call_00_1273                                                  ; $11ed : $cd, $73, $12
	ld hl, $42ee                                                  ; $11f0 : $21, $ee, $42
	call Call_00_125a                                                  ; $11f3 : $cd, $5a, $12
	bit 1, (hl)                                                  ; $11f6 : $cb, $4e
	jr z, br_00_1202                                                  ; $11f8 : $28, $08

	ld hl, $42f0                                                  ; $11fa : $21, $f0, $42
	call Call_00_1249                                                  ; $11fd : $cd, $49, $12
	jr br_00_1211                                                  ; $1200 : $18, $0f

br_00_1202:
	bit 0, (hl)                                                  ; $1202 : $cb, $46
	jr nz, br_00_1211                                                  ; $1204 : $20, $0b

	ld bc, $0008                                                  ; $1206 : $01, $08, $00
	ld de, $42f0                                                  ; $1209 : $11, $f0, $42
	ld hl, $28ca                                                  ; $120c : $21, $ca, $28
	ldir                                                  ; $120f : $ed, $b0

br_00_1211:
	ld hl, $28d8                                                  ; $1211 : $21, $d8, $28
	ld de, $42ef                                                  ; $1214 : $11, $ef, $42
	call Call_00_1273                                                  ; $1217 : $cd, $73, $12
	ld hl, $42ef                                                  ; $121a : $21, $ef, $42
	call Call_00_125a                                                  ; $121d : $cd, $5a, $12
	bit 1, (hl)                                                  ; $1220 : $cb, $4e
	jr z, br_00_122c                                                  ; $1222 : $28, $08

	ld hl, $42f8                                                  ; $1224 : $21, $f8, $42
	call Call_00_1249                                                  ; $1227 : $cd, $49, $12
	jr br_00_123b                                                  ; $122a : $18, $0f

br_00_122c:
	bit 0, (hl)                                                  ; $122c : $cb, $46
	jr nz, br_00_123b                                                  ; $122e : $20, $0b

	ld bc, $0008                                                  ; $1230 : $01, $08, $00
	ld de, $42f8                                                  ; $1233 : $11, $f8, $42
	ld hl, $28d9                                                  ; $1236 : $21, $d9, $28
	ldir                                                  ; $1239 : $ed, $b0

br_00_123b:
	ld a, $02                                                  ; $123b : $3e, $02

Jump_00_123d:
	call Call_00_03dd                                                  ; $123d : $cd, $dd, $03
	ld hl, $4112                                                  ; $1240 : $21, $12, $41
	set 3, (hl)                                                  ; $1243 : $cb, $de
	ld a, ($4165)                                                  ; $1245 : $3a, $65, $41
	ret                                                  ; $1248 : $c9


Call_00_1249:
	ld bc, $0800                                                  ; $1249 : $01, $00, $08
	ld de, $4200                                                  ; $124c : $11, $00, $42

br_00_124f:
	ld a, (de)                                                  ; $124f : $1a
	cp $20                                                  ; $1250 : $fe, $20
	jr z, br_00_1254                                                  ; $1252 : $28, $00

br_00_1254:
	ld (hl), a                                                  ; $1254 : $77
	inc hl                                                  ; $1255 : $23
	inc de                                                  ; $1256 : $13
	djnz br_00_124f                                                  ; $1257 : $10, $f6
	ret                                                  ; $1259 : $c9


Call_00_125a:
	ld de, $4200                                                  ; $125a : $11, $00, $42
	ld b, $08                                                  ; $125d : $06, $08

br_00_125f:
	ld a, (de)                                                  ; $125f : $1a
	cp $20                                                  ; $1260 : $fe, $20
	jr z, br_00_1269                                                  ; $1262 : $28, $05

	set 0, (hl)                                                  ; $1264 : $cb, $c6
	set 1, (hl)                                                  ; $1266 : $cb, $ce
	ret                                                  ; $1268 : $c9


br_00_1269:
	inc de                                                  ; $1269 : $13
	djnz br_00_125f                                                  ; $126a : $10, $f3
	res 1, (hl)                                                  ; $126c : $cb, $8e
	ret                                                  ; $126e : $c9


Jump_00_126f:
	xor a                                                  ; $126f : $af
	pop de                                                  ; $1270 : $d1
	ld (de), a                                                  ; $1271 : $12
	pop hl                                                  ; $1272 : $e1

Call_00_1273:
	push hl                                                  ; $1273 : $e5
	push de                                                  ; $1274 : $d5
	call Call_00_02f8                                                  ; $1275 : $cd, $f8, $02
	call Call_00_02d7                                                  ; $1278 : $cd, $d7, $02
	ld a, (hl)                                                  ; $127b : $7e
	ld b, $00                                                  ; $127c : $06, $00
	ld c, a                                                  ; $127e : $4f
	inc hl                                                  ; $127f : $23
	ld de, $41e5                                                  ; $1280 : $11, $e5, $41
	ldir                                                  ; $1283 : $ed, $b0
	ld a, $13                                                  ; $1285 : $3e, $13
	ld hl, $4169                                                  ; $1287 : $21, $69, $41
	ld (hl), a                                                  ; $128a : $77
	inc hl                                                  ; $128b : $23
	ld a, $79                                                  ; $128c : $3e, $79
	ld (hl), a                                                  ; $128e : $77
	inc hl                                                  ; $128f : $23
	ld (hl), a                                                  ; $1290 : $77
	call Call_00_043e                                                  ; $1291 : $cd, $3e, $04

br_00_1294:
	call Call_00_0561                                                  ; $1294 : $cd, $61, $05
	call Call_00_0705                                                  ; $1297 : $cd, $05, $07
	cp $ff                                                  ; $129a : $fe, $ff
	jr z, br_00_1294                                                  ; $129c : $28, $f6

	cp $e7                                                  ; $129e : $fe, $e7
	jp z, Jump_00_126f                                                  ; $12a0 : $ca, $6f, $12
	bit 5, (hl)                                                  ; $12a3 : $cb, $6e
	jr nz, br_00_12b0                                                  ; $12a5 : $20, $09

	cp $0d                                                  ; $12a7 : $fe, $0d
	jr z, br_00_12b5                                                  ; $12a9 : $28, $0a

	call Call_00_0438                                                  ; $12ab : $cd, $38, $04
	jr br_00_1294                                                  ; $12ae : $18, $e4

br_00_12b0:
	call Call_00_0745                                                  ; $12b0 : $cd, $45, $07
	jr br_00_1294                                                  ; $12b3 : $18, $df

br_00_12b5:
	pop de                                                  ; $12b5 : $d1
	pop hl                                                  ; $12b6 : $e1
	ret                                                  ; $12b7 : $c9


Call_00_12b8:
	ld bc, $0000                                                  ; $12b8 : $01, $00, $00
	ld hl, $4200                                                  ; $12bb : $21, $00, $42

Jump_00_12be:
	ld a, ($4113)                                                  ; $12be : $3a, $13, $41
	res 5, a                                                  ; $12c1 : $cb, $af
	ld ($4113), a                                                  ; $12c3 : $32, $13, $41
	cp (hl)                                                  ; $12c6 : $be
	call z, Call_00_12d3                                                  ; $12c7 : $cc, $d3, $12
	inc hl                                                  ; $12ca : $23
	inc b                                                  ; $12cb : $04
	ld a, b                                                  ; $12cc : $78
	cp $10                                                  ; $12cd : $fe, $10
	jp nz, Jump_00_12be                                                  ; $12cf : $c2, $be, $12
	ret                                                  ; $12d2 : $c9


Call_00_12d3:
	ld (hl), $20                                                  ; $12d3 : $36, $20
	inc c                                                  ; $12d5 : $0c
	push bc                                                  ; $12d6 : $c5
	push hl                                                  ; $12d7 : $e5
	ld hl, $42a4                                                  ; $12d8 : $21, $a4, $42
	ld d, $00                                                  ; $12db : $16, $00
	ld a, ($4116)                                                  ; $12dd : $3a, $16, $41
	ld e, a                                                  ; $12e0 : $5f
	or a                                                  ; $12e1 : $b7
	sbc hl, de                                                  ; $12e2 : $ed, $52
	ld a, b                                                  ; $12e4 : $78
	call AddAtoHL                                                  ; $12e5 : $cd, $99, $01
	ld a, ($4113)                                                  ; $12e8 : $3a, $13, $41
	ld (hl), a                                                  ; $12eb : $77
	ld hl, $412a                                                  ; $12ec : $21, $2a, $41
	inc (hl)                                                  ; $12ef : $34
	pop hl                                                  ; $12f0 : $e1
	pop bc                                                  ; $12f1 : $c1
	ret                                                  ; $12f2 : $c9


Jump_00_12f3:
	call Call_00_04c4                                                  ; $12f3 : $cd, $c4, $04
	ld a, ($4116)                                                  ; $12f6 : $3a, $16, $41
	ld hl, $412a                                                  ; $12f9 : $21, $2a, $41
	cp (hl)                                                  ; $12fc : $be
	jp nz, Jump_00_116a                                                  ; $12fd : $c2, $6a, $11
	ld a, ($415e)                                                  ; $1300 : $3a, $5e, $41
	ld b, a                                                  ; $1303 : $47
	ld a, ($4128)                                                  ; $1304 : $3a, $28, $41
	cp $09                                                  ; $1307 : $fe, $09
	jr nz, br_00_130d                                                  ; $1309 : $20, $02

	add a, $0b                                                  ; $130b : $c6, $0b

br_00_130d:
	add a, b                                                  ; $130d : $80
	ld ($415e), a                                                  ; $130e : $32, $5e, $41

Jump_00_1311:
	call Call_00_1336                                                  ; $1311 : $cd, $36, $13
	nop                                                  ; $1314 : $00
	call Call_00_3cae                                                  ; $1315 : $cd, $ae, $3c
	ld a, ($4154)                                                  ; $1318 : $3a, $54, $41
	inc a                                                  ; $131b : $3c
	ld ($4154), a                                                  ; $131c : $32, $54, $41
	cp $0a                                                  ; $131f : $fe, $0a
	jp nz, Jump_00_113d                                                  ; $1321 : $c2, $3d, $11
	ld a, ($415e)                                                  ; $1324 : $3a, $5e, $41
	call Call_00_10d0                                                  ; $1327 : $cd, $d0, $10
	jp Jump_00_13e5                                                  ; $132a : $c3, $e5, $13


Jump_00_132d:
	call Call_00_072f                                                  ; $132d : $cd, $2f, $07
	jp Jump_00_1311                                                  ; $1330 : $c3, $11, $13


	call Call_00_072f                                                  ; $1333 : $cd, $2f, $07

Call_00_1336:
	call Call_00_03dd                                                  ; $1336 : $cd, $dd, $03
	ld b, $03                                                  ; $1339 : $06, $03

br_00_133b:
	push bc                                                  ; $133b : $c5
	call Call_00_0723                                                  ; $133c : $cd, $23, $07
	call Call_00_04c4                                                  ; $133f : $cd, $c4, $04
	call Call_00_03dd                                                  ; $1342 : $cd, $dd, $03
	ld a, ($4116)                                                  ; $1345 : $3a, $16, $41
	ld ($416a), a                                                  ; $1348 : $32, $6a, $41
	call Call_00_04b2                                                  ; $134b : $cd, $b2, $04
	call Call_00_04c4                                                  ; $134e : $cd, $c4, $04
	call Call_00_03e4                                                  ; $1351 : $cd, $e4, $03
	pop bc                                                  ; $1354 : $c1
	djnz br_00_133b                                                  ; $1355 : $10, $e4
	ret                                                  ; $1357 : $c9


Call_00_1358:
	ld bc, $0010                                                  ; $1358 : $01, $10, $00
	ld de, $4180                                                  ; $135b : $11, $80, $41
	ld hl, $4200                                                  ; $135e : $21, $00, $42
	ldir                                                  ; $1361 : $ed, $b0
	ret                                                  ; $1363 : $c9


Call_00_1364:
	ld a, ($4116)                                                  ; $1364 : $3a, $16, $41
	ld hl, $42a3                                                  ; $1367 : $21, $a3, $42

br_00_136a:
	ld (hl), $5f                                                  ; $136a : $36, $5f
	dec hl                                                  ; $136c : $2b
	dec a                                                  ; $136d : $3d
	jr nz, br_00_136a                                                  ; $136e : $20, $fa

	ret                                                  ; $1370 : $c9


Jump_00_1371:
	call Call_00_3c52                                                  ; $1371 : $cd, $52, $3c
	ld a, r                                                  ; $1374 : $ed, $5f
	ld ($4127), a                                                  ; $1376 : $32, $27, $41
	xor a                                                  ; $1379 : $af
	ld ($4128), a                                                  ; $137a : $32, $28, $41
	ld ($4129), a                                                  ; $137d : $32, $29, $41
	ld ($4154), a                                                  ; $1380 : $32, $54, $41

Jump_00_1383:
	call Call_00_0723                                                  ; $1383 : $cd, $23, $07
	xor a                                                  ; $1386 : $af
	ld ($412a), a                                                  ; $1387 : $32, $2a, $41
	ld ($412d), a                                                  ; $138a : $32, $2d, $41
	call Call_00_02f8                                                  ; $138d : $cd, $f8, $02
	call Call_00_3c83                                                  ; $1390 : $cd, $83, $3c
	call Call_00_073b                                                  ; $1393 : $cd, $3b, $07
	call Call_00_1358                                                  ; $1396 : $cd, $58, $13
	call Call_00_1364                                                  ; $1399 : $cd, $64, $13

br_00_139c:
	call Call_00_1447                                                  ; $139c : $cd, $47, $14

Jump_00_139f:
	cp $e8                                                  ; $139f : $fe, $e8
	jr z, br_00_13f8                                                  ; $13a1 : $28, $55

	cp $20                                                  ; $13a3 : $fe, $20
	jr z, br_00_13ae                                                  ; $13a5 : $28, $07

	call Call_00_12b8                                                  ; $13a7 : $cd, $b8, $12
	ld a, c                                                  ; $13aa : $79
	or a                                                  ; $13ab : $b7
	jr nz, br_00_13ba                                                  ; $13ac : $20, $0c

br_00_13ae:
	call Call_00_0745                                                  ; $13ae : $cd, $45, $07
	call Call_00_03dd                                                  ; $13b1 : $cd, $dd, $03
	ld hl, $4127                                                  ; $13b4 : $21, $27, $41
	inc (hl)                                                  ; $13b7 : $34
	jr br_00_139c                                                  ; $13b8 : $18, $e2

br_00_13ba:
	call Call_00_04c4                                                  ; $13ba : $cd, $c4, $04
	ld hl, ($412b)                                                  ; $13bd : $2a, $2b, $41
	inc (hl)                                                  ; $13c0 : $34
	ld a, ($4116)                                                  ; $13c1 : $3a, $16, $41
	ld hl, $412a                                                  ; $13c4 : $21, $2a, $41
	cp (hl)                                                  ; $13c7 : $be
	jr nz, br_00_1431                                                  ; $13c8 : $20, $67

	call Call_00_1336                                                  ; $13ca : $cd, $36, $13

br_00_13cd:
	call Call_00_1404                                                  ; $13cd : $cd, $04, $14
	call Call_00_0389                                                  ; $13d0 : $cd, $89, $03
	call Call_00_03e4                                                  ; $13d3 : $cd, $e4, $03

br_00_13d6:
	call Call_00_3cae                                                  ; $13d6 : $cd, $ae, $3c
	ld a, ($4154)                                                  ; $13d9 : $3a, $54, $41
	inc a                                                  ; $13dc : $3c
	ld ($4154), a                                                  ; $13dd : $32, $54, $41
	cp $0a                                                  ; $13e0 : $fe, $0a
	jp nz, Jump_00_1383                                                  ; $13e2 : $c2, $83, $13

Jump_00_13e5:
	call Call_00_03dd                                                  ; $13e5 : $cd, $dd, $03
	ld de, $2c51                                                  ; $13e8 : $11, $51, $2c
	call Call_00_0782                                                  ; $13eb : $cd, $82, $07

br_00_13ee:
	call Call_00_0561                                                  ; $13ee : $cd, $61, $05
	cp $ff                                                  ; $13f1 : $fe, $ff
	jr z, br_00_13ee                                                  ; $13f3 : $28, $f9

	jp Jump_00_111f                                                  ; $13f5 : $c3, $1f, $11


br_00_13f8:
	call Call_00_1336                                                  ; $13f8 : $cd, $36, $13
	ld a, ($4154)                                                  ; $13fb : $3a, $54, $41
	cp $09                                                  ; $13fe : $fe, $09
	jr nz, br_00_13d6                                                  ; $1400 : $20, $d4

	jr br_00_13cd                                                  ; $1402 : $18, $c9

Call_00_1404:
	ld hl, $2863                                                  ; $1404 : $21, $63, $28
	call Call_00_042b                                                  ; $1407 : $cd, $2b, $04
	ld a, ($4129)                                                  ; $140a : $3a, $29, $41
	ld b, a                                                  ; $140d : $47
	cp $00                                                  ; $140e : $fe, $00
	jr z, br_00_1417                                                  ; $1410 : $28, $05

br_00_1412:
	call Call_00_0abc                                                  ; $1412 : $cd, $bc, $0a
	djnz br_00_1412                                                  ; $1415 : $10, $fb

br_00_1417:
	call Call_00_0e24                                                  ; $1417 : $cd, $24, $0e
	call Call_00_0414                                                  ; $141a : $cd, $14, $04
	ld a, ($4128)                                                  ; $141d : $3a, $28, $41
	ld b, a                                                  ; $1420 : $47
	cp $00                                                  ; $1421 : $fe, $00
	jr z, br_00_142a                                                  ; $1423 : $28, $05

br_00_1425:
	call Call_00_0abc                                                  ; $1425 : $cd, $bc, $0a
	djnz br_00_1425                                                  ; $1428 : $10, $fb

br_00_142a:
	ld de, $418b                                                  ; $142a : $11, $8b, $41
	call Call_00_0e27                                                  ; $142d : $cd, $27, $0e
	ret                                                  ; $1430 : $c9


br_00_1431:
	ld a, ($4290)                                                  ; $1431 : $3a, $90, $42
	cp $20                                                  ; $1434 : $fe, $20
	jr z, br_00_143d                                                  ; $1436 : $28, $05

	call Call_00_144a                                                  ; $1438 : $cd, $4a, $14
	jr br_00_1440                                                  ; $143b : $18, $03

br_00_143d:
	call Call_00_1497                                                  ; $143d : $cd, $97, $14

br_00_1440:
	cp $ff                                                  ; $1440 : $fe, $ff
	jr z, br_00_1431                                                  ; $1442 : $28, $ed

	jp Jump_00_139f                                                  ; $1444 : $c3, $9f, $13


Call_00_1447:
Jump_00_1447:
	call Call_00_0414                                                  ; $1447 : $cd, $14, $04

Call_00_144a:
	ld hl, $412d                                                  ; $144a : $21, $2d, $41
	bit 6, (hl)                                                  ; $144d : $cb, $76
	jr z, br_00_1456                                                  ; $144f : $28, $05

	ld de, $429c                                                  ; $1451 : $11, $9c, $42
	jr br_00_1459                                                  ; $1454 : $18, $03

br_00_1456:
	ld de, $4290                                                  ; $1456 : $11, $90, $42

br_00_1459:
	ld a, ($4127)                                                  ; $1459 : $3a, $27, $41
	bit 0, a                                                  ; $145c : $cb, $47
	jr z, br_00_146b                                                  ; $145e : $28, $0b

	ld hl, $4128                                                  ; $1460 : $21, $28, $41
	ld ($412b), hl                                                  ; $1463 : $22, $2b, $41
	ld hl, $42f8                                                  ; $1466 : $21, $f8, $42
	jr br_00_1474                                                  ; $1469 : $18, $09

br_00_146b:
	ld hl, $4129                                                  ; $146b : $21, $29, $41
	ld ($412b), hl                                                  ; $146e : $22, $2b, $41
	ld hl, $42f0                                                  ; $1471 : $21, $f0, $42

br_00_1474:
	ld bc, $0008                                                  ; $1474 : $01, $08, $00
	ldir                                                  ; $1477 : $ed, $b0
	call Call_00_04c4                                                  ; $1479 : $cd, $c4, $04
	ld hl, $410f                                                  ; $147c : $21, $0f, $41
	set 1, (hl)                                                  ; $147f : $cb, $ce

br_00_1481:
	call Call_00_0561                                                  ; $1481 : $cd, $61, $05
	ld hl, $410c                                                  ; $1484 : $21, $0c, $41
	ld a, (hl)                                                  ; $1487 : $7e
	cp $01                                                  ; $1488 : $fe, $01
	jr z, br_00_1494                                                  ; $148a : $28, $08

	ld a, ($4113)                                                  ; $148c : $3a, $13, $41
	cp $ff                                                  ; $148f : $fe, $ff
	jr z, br_00_1481                                                  ; $1491 : $28, $ee

	ret                                                  ; $1493 : $c9


br_00_1494:
	call Call_00_0414                                                  ; $1494 : $cd, $14, $04

Call_00_1497:
	ld a, $20                                                  ; $1497 : $3e, $20
	ld c, $08                                                  ; $1499 : $0e, $08
	ld hl, $412d                                                  ; $149b : $21, $2d, $41
	bit 6, (hl)                                                  ; $149e : $cb, $76
	jr z, br_00_14a7                                                  ; $14a0 : $28, $05

	ld de, $429c                                                  ; $14a2 : $11, $9c, $42
	jr br_00_14aa                                                  ; $14a5 : $18, $03

br_00_14a7:
	ld de, $4290                                                  ; $14a7 : $11, $90, $42

br_00_14aa:
	ld (de), a                                                  ; $14aa : $12
	inc de                                                  ; $14ab : $13
	dec c                                                  ; $14ac : $0d
	jr nz, br_00_14aa                                                  ; $14ad : $20, $fb

	call Call_00_04c4                                                  ; $14af : $cd, $c4, $04
	ld hl, $410f                                                  ; $14b2 : $21, $0f, $41
	set 1, (hl)                                                  ; $14b5 : $cb, $ce

br_00_14b7:
	call Call_00_0561                                                  ; $14b7 : $cd, $61, $05
	ld hl, $410c                                                  ; $14ba : $21, $0c, $41
	ld a, (hl)                                                  ; $14bd : $7e
	cp $01                                                  ; $14be : $fe, $01
	jr z, br_00_14ca                                                  ; $14c0 : $28, $08

	ld a, ($4113)                                                  ; $14c2 : $3a, $13, $41
	cp $ff                                                  ; $14c5 : $fe, $ff
	jr z, br_00_14b7                                                  ; $14c7 : $28, $ee

	ret                                                  ; $14c9 : $c9


br_00_14ca:
	ld a, ($412d)                                                  ; $14ca : $3a, $2d, $41
	bit 0, a                                                  ; $14cd : $cb, $47
	jp z, Jump_00_1447                                                  ; $14cf : $ca, $47, $14
	ld hl, $4127                                                  ; $14d2 : $21, $27, $41
	inc (hl)                                                  ; $14d5 : $34
	jp Jump_00_1447                                                  ; $14d6 : $c3, $47, $14


Call_00_14d9:
	ld hl, $42b0                                                  ; $14d9 : $21, $b0, $42
	ld a, $20                                                  ; $14dc : $3e, $20
	ld b, $21                                                  ; $14de : $06, $21

br_00_14e0:
	ld (hl), a                                                  ; $14e0 : $77
	inc hl                                                  ; $14e1 : $23
	djnz br_00_14e0                                                  ; $14e2 : $10, $fc
	ret                                                  ; $14e4 : $c9


Jump_00_14e5:
	ld hl, $27d2                                                  ; $14e5 : $21, $d2, $27
	call Call_00_03ab                                                  ; $14e8 : $cd, $ab, $03
	call Call_00_03e4                                                  ; $14eb : $cd, $e4, $03
	call Call_00_10e5                                                  ; $14ee : $cd, $e5, $10
	call Call_00_11bd                                                  ; $14f1 : $cd, $bd, $11

Jump_00_14f4:
	ld de, $2c2f                                                  ; $14f4 : $11, $2f, $2c
	call Call_00_0782                                                  ; $14f7 : $cd, $82, $07
	call Call_00_03dd                                                  ; $14fa : $cd, $dd, $03
	ld a, ($4165)                                                  ; $14fd : $3a, $65, $41
	bit 1, a                                                  ; $1500 : $cb, $4f
	jp nz, Jump_00_16ab                                                  ; $1502 : $c2, $ab, $16
	call Call_00_3c52                                                  ; $1505 : $cd, $52, $3c
	xor a                                                  ; $1508 : $af
	ld ($4154), a                                                  ; $1509 : $32, $54, $41
	ld ($415e), a                                                  ; $150c : $32, $5e, $41
	ld ($415f), a                                                  ; $150f : $32, $5f, $41

Jump_00_1512:
	call Call_00_073b                                                  ; $1512 : $cd, $3b, $07
	ld a, $02                                                  ; $1515 : $3e, $02
	ld ($412d), a                                                  ; $1517 : $32, $2d, $41
	ld hl, $4164                                                  ; $151a : $21, $64, $41
	ld (hl), $00                                                  ; $151d : $36, $00
	call Call_00_176f                                                  ; $151f : $cd, $6f, $17

Jump_00_1522:
	call Call_00_0244                                                  ; $1522 : $cd, $44, $02
	ld de, $4180                                                  ; $1525 : $11, $80, $41
	ld hl, $42c1                                                  ; $1528 : $21, $c1, $42
	ld bc, $0010                                                  ; $152b : $01, $10, $00
	ldir                                                  ; $152e : $ed, $b0
	ld a, $13                                                  ; $1530 : $3e, $13
	ld ($4169), a                                                  ; $1532 : $32, $69, $41
	call Call_00_043e                                                  ; $1535 : $cd, $3e, $04

Jump_00_1538:
br_00_1538:
	call Call_00_0561                                                  ; $1538 : $cd, $61, $05
	call Call_00_0705                                                  ; $153b : $cd, $05, $07
	cp $ff                                                  ; $153e : $fe, $ff
	jr z, br_00_1538                                                  ; $1540 : $28, $f6

	cp $e7                                                  ; $1542 : $fe, $e7
	jp z, Jump_00_167a                                                  ; $1544 : $ca, $7a, $16
	cp $e8                                                  ; $1547 : $fe, $e8
	jp z, Jump_00_15f4                                                  ; $1549 : $ca, $f4, $15
	cp $eb                                                  ; $154c : $fe, $eb
	jp z, Jump_00_1688                                                  ; $154e : $ca, $88, $16
	ld hl, $4164                                                  ; $1551 : $21, $64, $41
	set 0, (hl)                                                  ; $1554 : $cb, $c6
	ld hl, $410f                                                  ; $1556 : $21, $0f, $41
	bit 5, (hl)                                                  ; $1559 : $cb, $6e
	jp nz, Jump_00_16a5                                                  ; $155b : $c2, $a5, $16
	cp $0d                                                  ; $155e : $fe, $0d
	jr z, br_00_158f                                                  ; $1560 : $28, $2d

Jump_00_1562:
	ld de, $4180                                                  ; $1562 : $11, $80, $41
	ld b, $10                                                  ; $1565 : $06, $10
	ld a, $20                                                  ; $1567 : $3e, $20

br_00_1569:
	ld (de), a                                                  ; $1569 : $12
	inc de                                                  ; $156a : $13
	djnz br_00_1569                                                  ; $156b : $10, $fc
	call Call_00_0438                                                  ; $156d : $cd, $38, $04
	jr br_00_1538                                                  ; $1570 : $18, $c6

Call_00_1572:
	ld b, $80                                                  ; $1572 : $06, $80
	ld hl, $4200                                                  ; $1574 : $21, $00, $42
	ld de, $4200                                                  ; $1577 : $11, $00, $42

br_00_157a:
	ld a, (de)                                                  ; $157a : $1a
	cp $20                                                  ; $157b : $fe, $20
	jr z, br_00_158b                                                  ; $157d : $28, $0c

	ld (hl), a                                                  ; $157f : $77
	push hl                                                  ; $1580 : $e5
	or a                                                  ; $1581 : $b7
	ld a, $20                                                  ; $1582 : $3e, $20
	sbc hl, de                                                  ; $1584 : $ed, $52
	jr z, br_00_1589                                                  ; $1586 : $28, $01

	ld (de), a                                                  ; $1588 : $12

br_00_1589:
	pop hl                                                  ; $1589 : $e1
	inc hl                                                  ; $158a : $23

br_00_158b:
	inc de                                                  ; $158b : $13
	djnz br_00_157a                                                  ; $158c : $10, $ec
	ret                                                  ; $158e : $c9


br_00_158f:
	call Call_00_1572                                                  ; $158f : $cd, $72, $15
	ld b, $10                                                  ; $1592 : $06, $10
	ld hl, $42b0                                                  ; $1594 : $21, $b0, $42
	ld de, $4200                                                  ; $1597 : $11, $00, $42

br_00_159a:
	ld a, (de)                                                  ; $159a : $1a
	cp $20                                                  ; $159b : $fe, $20
	jr nz, br_00_15a2                                                  ; $159d : $20, $03

	inc de                                                  ; $159f : $13
	jr br_00_159a                                                  ; $15a0 : $18, $f8

br_00_15a2:
	ld a, (de)                                                  ; $15a2 : $1a
	cp $20                                                  ; $15a3 : $fe, $20
	jr z, br_00_15a9                                                  ; $15a5 : $28, $02

	res 5, a                                                  ; $15a7 : $cb, $af

br_00_15a9:
	cp (hl)                                                  ; $15a9 : $be
	jr nz, br_00_1615                                                  ; $15aa : $20, $69

	inc hl                                                  ; $15ac : $23
	inc de                                                  ; $15ad : $13
	djnz br_00_15a2                                                  ; $15ae : $10, $f2
	call Call_00_03dd                                                  ; $15b0 : $cd, $dd, $03
	ld de, $2c39                                                  ; $15b3 : $11, $39, $2c
	call Call_00_0782                                                  ; $15b6 : $cd, $82, $07
	call Call_00_1602                                                  ; $15b9 : $cd, $02, $16
	ld a, ($412d)                                                  ; $15bc : $3a, $2d, $41
	bit 0, a                                                  ; $15bf : $cb, $47
	jr z, br_00_15cc                                                  ; $15c1 : $28, $09

	ld hl, ($412b)                                                  ; $15c3 : $2a, $2b, $41
	ld a, (hl)                                                  ; $15c6 : $7e
	add a, $0a                                                  ; $15c7 : $c6, $0a
	ld (hl), a                                                  ; $15c9 : $77
	jr br_00_162d                                                  ; $15ca : $18, $61

br_00_15cc:
	ld hl, $2873                                                  ; $15cc : $21, $73, $28
	call Call_00_03ab                                                  ; $15cf : $cd, $ab, $03
	call Call_00_03dd                                                  ; $15d2 : $cd, $dd, $03
	call Call_00_1a6c                                                  ; $15d5 : $cd, $6c, $1a

br_00_15d8:
	call Call_00_3cae                                                  ; $15d8 : $cd, $ae, $3c
	xor a                                                  ; $15db : $af
	ld ($415f), a                                                  ; $15dc : $32, $5f, $41
	ld a, ($4154)                                                  ; $15df : $3a, $54, $41
	inc a                                                  ; $15e2 : $3c
	ld ($4154), a                                                  ; $15e3 : $32, $54, $41
	cp $0a                                                  ; $15e6 : $fe, $0a
	jp nz, Jump_00_1512                                                  ; $15e8 : $c2, $12, $15
	ld a, ($415e)                                                  ; $15eb : $3a, $5e, $41
	call Call_00_10d0                                                  ; $15ee : $cd, $d0, $10
	jp Jump_00_1645                                                  ; $15f1 : $c3, $45, $16


Jump_00_15f4:
	ld a, ($412d)                                                  ; $15f4 : $3a, $2d, $41
	bit 0, a                                                  ; $15f7 : $cb, $47
	jr z, br_00_15fd                                                  ; $15f9 : $28, $02

	jr br_00_1615                                                  ; $15fb : $18, $18

br_00_15fd:
	call Call_00_1602                                                  ; $15fd : $cd, $02, $16
	jr br_00_15d8                                                  ; $1600 : $18, $d6

Call_00_1602:
	nop                                                  ; $1602 : $00

Call_00_1603:
	call Call_00_02d7                                                  ; $1603 : $cd, $d7, $02
	ld de, $4180                                                  ; $1606 : $11, $80, $41
	ld hl, $42b0                                                  ; $1609 : $21, $b0, $42
	ld bc, $0010                                                  ; $160c : $01, $10, $00
	ldir                                                  ; $160f : $ed, $b0
	call Call_00_1336                                                  ; $1611 : $cd, $36, $13
	ret                                                  ; $1614 : $c9


br_00_1615:
	ld de, $2c45                                                  ; $1615 : $11, $45, $2c
	call Call_00_0782                                                  ; $1618 : $cd, $82, $07
	ld a, ($412d)                                                  ; $161b : $3a, $2d, $41
	bit 0, a                                                  ; $161e : $cb, $47
	jp z, Jump_00_1658                                                  ; $1620 : $ca, $58, $16
	call Call_00_1603                                                  ; $1623 : $cd, $03, $16
	ld hl, ($412b)                                                  ; $1626 : $2a, $2b, $41
	ld a, (hl)                                                  ; $1629 : $7e
	sub $0a                                                  ; $162a : $d6, $0a
	ld (hl), a                                                  ; $162c : $77

Jump_00_162d:
br_00_162d:
	call Call_00_1404                                                  ; $162d : $cd, $04, $14
	call Call_00_0389                                                  ; $1630 : $cd, $89, $03
	call Call_00_03e4                                                  ; $1633 : $cd, $e4, $03

Jump_00_1636:
	call Call_00_3cae                                                  ; $1636 : $cd, $ae, $3c
	ld a, ($4154)                                                  ; $1639 : $3a, $54, $41
	inc a                                                  ; $163c : $3c
	ld ($4154), a                                                  ; $163d : $32, $54, $41
	cp $0a                                                  ; $1640 : $fe, $0a
	jp nz, Jump_00_16bf                                                  ; $1642 : $c2, $bf, $16

Jump_00_1645:
	call Call_00_03dd                                                  ; $1645 : $cd, $dd, $03
	ld de, $2c51                                                  ; $1648 : $11, $51, $2c
	call Call_00_0782                                                  ; $164b : $cd, $82, $07

br_00_164e:
	call Call_00_0561                                                  ; $164e : $cd, $61, $05
	cp $ff                                                  ; $1651 : $fe, $ff
	jr z, br_00_164e                                                  ; $1653 : $28, $f9

	jp Jump_00_14f4                                                  ; $1655 : $c3, $f4, $14


Jump_00_1658:
	ld a, ($415f)                                                  ; $1658 : $3a, $5f, $41
	inc a                                                  ; $165b : $3c
	ld ($415f), a                                                  ; $165c : $32, $5f, $41
	cp $03                                                  ; $165f : $fe, $03
	jp nz, Jump_00_1666                                                  ; $1661 : $c2, $66, $16
	jr br_00_15fd                                                  ; $1664 : $18, $97

Jump_00_1666:
	ld a, ($4116)                                                  ; $1666 : $3a, $16, $41
	push af                                                  ; $1669 : $f5
	ld hl, $2886                                                  ; $166a : $21, $86, $28
	call Call_00_03ab                                                  ; $166d : $cd, $ab, $03
	call Call_00_03dd                                                  ; $1670 : $cd, $dd, $03
	pop af                                                  ; $1673 : $f1
	ld ($4116), a                                                  ; $1674 : $32, $16, $41
	jp Jump_00_1522                                                  ; $1677 : $c3, $22, $15


Jump_00_167a:
	ld a, ($412d)                                                  ; $167a : $3a, $2d, $41
	bit 0, a                                                  ; $167d : $cb, $47
	jp z, Jump_00_1522                                                  ; $167f : $ca, $22, $15
	call Call_00_180c                                                  ; $1682 : $cd, $0c, $18
	jp Jump_00_1538                                                  ; $1685 : $c3, $38, $15


Jump_00_1688:
	ld hl, $412d                                                  ; $1688 : $21, $2d, $41
	bit 0, (hl)                                                  ; $168b : $cb, $46
	jr nz, br_00_16a5                                                  ; $168d : $20, $16

	ld hl, $4164                                                  ; $168f : $21, $64, $41
	bit 0, (hl)                                                  ; $1692 : $cb, $46
	jr nz, br_00_16a5                                                  ; $1694 : $20, $0f

	set 0, (hl)                                                  ; $1696 : $cb, $c6
	ld a, ($42b0)                                                  ; $1698 : $3a, $b0, $42
	ld ($4113), a                                                  ; $169b : $32, $13, $41
	ld hl, $415f                                                  ; $169e : $21, $5f, $41
	inc (hl)                                                  ; $16a1 : $34
	jp Jump_00_1562                                                  ; $16a2 : $c3, $62, $15


Jump_00_16a5:
br_00_16a5:
	call Call_00_0745                                                  ; $16a5 : $cd, $45, $07
	jp Jump_00_1538                                                  ; $16a8 : $c3, $38, $15


Jump_00_16ab:
	call Call_00_3c52                                                  ; $16ab : $cd, $52, $3c
	ld a, $01                                                  ; $16ae : $3e, $01
	ld ($412d), a                                                  ; $16b0 : $32, $2d, $41
	ld a, $64                                                  ; $16b3 : $3e, $64
	ld ($4128), a                                                  ; $16b5 : $32, $28, $41
	ld ($4129), a                                                  ; $16b8 : $32, $29, $41
	xor a                                                  ; $16bb : $af
	ld ($4154), a                                                  ; $16bc : $32, $54, $41

Jump_00_16bf:
	call Call_00_176f                                                  ; $16bf : $cd, $6f, $17
	ld de, $4180                                                  ; $16c2 : $11, $80, $41
	ld hl, $42c1                                                  ; $16c5 : $21, $c1, $42
	ld bc, $0010                                                  ; $16c8 : $01, $10, $00
	ldir                                                  ; $16cb : $ed, $b0
	ld a, $01                                                  ; $16cd : $3e, $01
	ld ($412d), a                                                  ; $16cf : $32, $2d, $41
	ld a, ($4116)                                                  ; $16d2 : $3a, $16, $41
	ld ($416a), a                                                  ; $16d5 : $32, $6a, $41
	call Call_00_024d                                                  ; $16d8 : $cd, $4d, $02
	call Call_00_073b                                                  ; $16db : $cd, $3b, $07
	call Call_00_16e4                                                  ; $16de : $cd, $e4, $16
	jp Jump_00_1538                                                  ; $16e1 : $c3, $38, $15


Call_00_16e4:
Jump_00_16e4:
br_00_16e4:
	call Call_00_0414                                                  ; $16e4 : $cd, $14, $04
	ld hl, $412d                                                  ; $16e7 : $21, $2d, $41
	bit 6, (hl)                                                  ; $16ea : $cb, $76
	jr z, br_00_16f3                                                  ; $16ec : $28, $05

	ld a, ($42a3)                                                  ; $16ee : $3a, $a3, $42
	jr br_00_16f6                                                  ; $16f1 : $18, $03

br_00_16f3:
	ld a, ($4290)                                                  ; $16f3 : $3a, $90, $42

br_00_16f6:
	cp $20                                                  ; $16f6 : $fe, $20
	jr z, br_00_16ff                                                  ; $16f8 : $28, $05

	call Call_00_144a                                                  ; $16fa : $cd, $4a, $14
	jr br_00_1702                                                  ; $16fd : $18, $03

br_00_16ff:
	call Call_00_1497                                                  ; $16ff : $cd, $97, $14

Call_00_1702:
br_00_1702:
	cp $e8                                                  ; $1702 : $fe, $e8
	jp z, Jump_00_1757                                                  ; $1704 : $ca, $57, $17
	cp $e4                                                  ; $1707 : $fe, $e4
	jr z, br_00_174b                                                  ; $1709 : $28, $40

	cp $ec                                                  ; $170b : $fe, $ec
	jr z, br_00_1727                                                  ; $170d : $28, $18

	cp $ed                                                  ; $170f : $fe, $ed
	jr nz, br_00_16e4                                                  ; $1711 : $20, $d1

Jump_00_1713:
	push af                                                  ; $1713 : $f5
	ld a, $00                                                  ; $1714 : $3e, $00
	ld ($4127), a                                                  ; $1716 : $32, $27, $41
	call Call_00_0244                                                  ; $1719 : $cd, $44, $02
	ld hl, $4129                                                  ; $171c : $21, $29, $41
	ld ($412b), hl                                                  ; $171f : $22, $2b, $41
	ld hl, $42f0                                                  ; $1722 : $21, $f0, $42
	jr br_00_1739                                                  ; $1725 : $18, $12

Jump_00_1727:
br_00_1727:
	push af                                                  ; $1727 : $f5
	ld a, $01                                                  ; $1728 : $3e, $01
	ld ($4127), a                                                  ; $172a : $32, $27, $41
	call Call_00_0244                                                  ; $172d : $cd, $44, $02
	ld hl, $4128                                                  ; $1730 : $21, $28, $41
	ld ($412b), hl                                                  ; $1733 : $22, $2b, $41
	ld hl, $42f8                                                  ; $1736 : $21, $f8, $42

br_00_1739:
	ld de, $4180                                                  ; $1739 : $11, $80, $41
	ld bc, $0008                                                  ; $173c : $01, $08, $00
	ldir                                                  ; $173f : $ed, $b0
	ld a, $13                                                  ; $1741 : $3e, $13
	ld ($4169), a                                                  ; $1743 : $32, $69, $41
	call Call_00_043e                                                  ; $1746 : $cd, $3e, $04
	pop af                                                  ; $1749 : $f1
	ret                                                  ; $174a : $c9


br_00_174b:
	ld hl, $412d                                                  ; $174b : $21, $2d, $41
	bit 6, (hl)                                                  ; $174e : $cb, $76
	jp z, Jump_00_16e4                                                  ; $1750 : $ca, $e4, $16
	pop hl                                                  ; $1753 : $e1
	jp Jump_00_17e1                                                  ; $1754 : $c3, $e1, $17


Jump_00_1757:
	ld hl, $412d                                                  ; $1757 : $21, $2d, $41
	bit 6, (hl)                                                  ; $175a : $cb, $76
	jr z, br_00_1760                                                  ; $175c : $28, $02

	pop hl                                                  ; $175e : $e1
	ret                                                  ; $175f : $c9


br_00_1760:
	pop hl                                                  ; $1760 : $e1
	call Call_00_1602                                                  ; $1761 : $cd, $02, $16
	ld a, ($4154)                                                  ; $1764 : $3a, $54, $41
	cp $09                                                  ; $1767 : $fe, $09
	jp nz, Jump_00_1636                                                  ; $1769 : $c2, $36, $16
	jp Jump_00_162d                                                  ; $176c : $c3, $2d, $16


Call_00_176f:
br_00_176f:
	call Call_00_14d9                                                  ; $176f : $cd, $d9, $14
	call Call_00_02f8                                                  ; $1772 : $cd, $f8, $02
	call Call_00_3c83                                                  ; $1775 : $cd, $83, $3c

Call_00_1778:
	ld hl, $4200                                                  ; $1778 : $21, $00, $42
	ld de, $42b0                                                  ; $177b : $11, $b0, $42
	ld bc, $0010                                                  ; $177e : $01, $10, $00
	ldir                                                  ; $1781 : $ed, $b0
	ld a, ($4116)                                                  ; $1783 : $3a, $16, $41
	ld b, a                                                  ; $1786 : $47
	ld c, a                                                  ; $1787 : $4f
	dec c                                                  ; $1788 : $0d
	ld de, $42c1                                                  ; $1789 : $11, $c1, $42
	ld hl, $4200                                                  ; $178c : $21, $00, $42
	call Call_00_17cf                                                  ; $178f : $cd, $cf, $17
	push af                                                  ; $1792 : $f5
	call Call_00_17cf                                                  ; $1793 : $cd, $cf, $17
	inc a                                                  ; $1796 : $3c
	inc a                                                  ; $1797 : $3c
	ld c, a                                                  ; $1798 : $4f
	pop af                                                  ; $1799 : $f1
	call AddAtoHL                                                  ; $179a : $cd, $99, $01

br_00_179d:
	push bc                                                  ; $179d : $c5

br_00_179e:
	push af                                                  ; $179e : $f5
	ld a, (hl)                                                  ; $179f : $7e
	cp $20                                                  ; $17a0 : $fe, $20
	jr nz, br_00_17b1                                                  ; $17a2 : $20, $0d

br_00_17a4:
	inc hl                                                  ; $17a4 : $23
	pop af                                                  ; $17a5 : $f1
	inc a                                                  ; $17a6 : $3c
	cp $10                                                  ; $17a7 : $fe, $10
	jr nz, br_00_179e                                                  ; $17a9 : $20, $f3

	ld hl, $4200                                                  ; $17ab : $21, $00, $42
	xor a                                                  ; $17ae : $af
	jr br_00_179e                                                  ; $17af : $18, $ed

br_00_17b1:
	dec c                                                  ; $17b1 : $0d
	jr nz, br_00_17a4                                                  ; $17b2 : $20, $f0

	ld (hl), $20                                                  ; $17b4 : $36, $20
	ld (de), a                                                  ; $17b6 : $12
	inc de                                                  ; $17b7 : $13
	pop af                                                  ; $17b8 : $f1
	pop bc                                                  ; $17b9 : $c1
	djnz br_00_179d                                                  ; $17ba : $10, $e1
	ld de, $42c1                                                  ; $17bc : $11, $c1, $42
	ld hl, $42b0                                                  ; $17bf : $21, $b0, $42
	ld b, $10                                                  ; $17c2 : $06, $10

br_00_17c4:
	ld a, (de)                                                  ; $17c4 : $1a
	cp (hl)                                                  ; $17c5 : $be
	jr nz, br_00_17ce                                                  ; $17c6 : $20, $06

	inc hl                                                  ; $17c8 : $23
	inc de                                                  ; $17c9 : $13
	djnz br_00_17c4                                                  ; $17ca : $10, $f8
	jr br_00_176f                                                  ; $17cc : $18, $a1

br_00_17ce:
	ret                                                  ; $17ce : $c9


Call_00_17cf:
	ld a, r                                                  ; $17cf : $ed, $5f

br_00_17d1:
	cp c                                                  ; $17d1 : $b9
	jr z, br_00_17ce                                                  ; $17d2 : $28, $fa

	jr c, br_00_17ce                                                  ; $17d4 : $38, $f8

	sub c                                                  ; $17d6 : $91
	jr br_00_17d1                                                  ; $17d7 : $18, $f8

Call_00_17d9:
	ld a, ($4116)                                                  ; $17d9 : $3a, $16, $41
	add a, $08                                                  ; $17dc : $c6, $08
	ld ($4116), a                                                  ; $17de : $32, $16, $41

Jump_00_17e1:
	ld hl, $410f                                                  ; $17e1 : $21, $0f, $41
	set 7, (hl)                                                  ; $17e4 : $cb, $fe
	call Call_00_0510                                                  ; $17e6 : $cd, $10, $05
	call Call_00_358a                                                  ; $17e9 : $cd, $8a, $35
	call Call_00_0605                                                  ; $17ec : $cd, $05, $06
	push af                                                  ; $17ef : $f5
	call Call_00_3590                                                  ; $17f0 : $cd, $90, $35
	pop af                                                  ; $17f3 : $f1
	ld hl, $410f                                                  ; $17f4 : $21, $0f, $41
	res 7, (hl)                                                  ; $17f7 : $cb, $be
	ld hl, $412d                                                  ; $17f9 : $21, $2d, $41
	set 0, (hl)                                                  ; $17fc : $cb, $c6
	set 6, (hl)                                                  ; $17fe : $cb, $f6
	cp $ff                                                  ; $1800 : $fe, $ff
	jr nz, br_00_1808                                                  ; $1802 : $20, $04

	call Call_00_16e4                                                  ; $1804 : $cd, $e4, $16
	ret                                                  ; $1807 : $c9


br_00_1808:
	call Call_00_1702                                                  ; $1808 : $cd, $02, $17
	ret                                                  ; $180b : $c9


Call_00_180c:
	ld a, ($4127)                                                  ; $180c : $3a, $27, $41
	bit 0, a                                                  ; $180f : $cb, $47
	jp z, Jump_00_1713                                                  ; $1811 : $ca, $13, $17
	jp Jump_00_1727                                                  ; $1814 : $c3, $27, $17


Call_00_1817:
	call Call_00_1404                                                  ; $1817 : $cd, $04, $14
	call Call_00_0389                                                  ; $181a : $cd, $89, $03
	call Call_00_03e4                                                  ; $181d : $cd, $e4, $03
	ret                                                  ; $1820 : $c9


Jump_00_1821:
	ld hl, $4112                                                  ; $1821 : $21, $12, $41
	res 3, (hl)                                                  ; $1824 : $cb, $9e
	ld a, $03                                                  ; $1826 : $3e, $03
	ld ($4640), a                                                  ; $1828 : $32, $40, $46
	ld ($4641), a                                                  ; $182b : $32, $41, $46
	call Call_00_3bcc                                                  ; $182e : $cd, $cc, $3b
	ld a, $36                                                  ; $1831 : $3e, $36
	ld ($4119), a                                                  ; $1833 : $32, $19, $41
	ld hl, $4155                                                  ; $1836 : $21, $55, $41
	set 0, (hl)                                                  ; $1839 : $cb, $c6
	set 1, (hl)                                                  ; $183b : $cb, $ce
	ld hl, $26fc                                                  ; $183d : $21, $fc, $26
	call Call_00_1965                                                  ; $1840 : $cd, $65, $19
	ld hl, $2708                                                  ; $1843 : $21, $08, $27
	call Call_00_1965                                                  ; $1846 : $cd, $65, $19
	ld hl, $2714                                                  ; $1849 : $21, $14, $27
	call Call_00_1965                                                  ; $184c : $cd, $65, $19
	ld hl, $271f                                                  ; $184f : $21, $1f, $27
	call Call_00_1965                                                  ; $1852 : $cd, $65, $19
	ld hl, $2731                                                  ; $1855 : $21, $31, $27
	call Call_00_1965                                                  ; $1858 : $cd, $65, $19
	ld hl, $26e9                                                  ; $185b : $21, $e9, $26
	call Call_00_0386                                                  ; $185e : $cd, $86, $03
	call Call_00_1974                                                  ; $1861 : $cd, $74, $19
	call Call_00_04f2                                                  ; $1864 : $cd, $f2, $04
	call Call_00_0af5                                                  ; $1867 : $cd, $f5, $0a
	call Call_00_1974                                                  ; $186a : $cd, $74, $19

Jump_00_186d:
	ld hl, $4155                                                  ; $186d : $21, $55, $41
	ld (hl), $00                                                  ; $1870 : $36, $00
	ld hl, $4167                                                  ; $1872 : $21, $67, $41
	ld (hl), $00                                                  ; $1875 : $36, $00
	ld hl, $412d                                                  ; $1877 : $21, $2d, $41
	ld (hl), $00                                                  ; $187a : $36, $00
	cp $01                                                  ; $187c : $fe, $01
	jp z, Jump_00_1be9                                                  ; $187e : $ca, $e9, $1b
	cp $02                                                  ; $1881 : $fe, $02
	jr z, br_00_18fd                                                  ; $1883 : $28, $78

	cp $03                                                  ; $1885 : $fe, $03
	jr z, br_00_18f2                                                  ; $1887 : $28, $69

	cp $04                                                  ; $1889 : $fe, $04
	jp z, Jump_00_1e05                                                  ; $188b : $ca, $05, $1e
	ld hl, $412d                                                  ; $188e : $21, $2d, $41
	set 0, (hl)                                                  ; $1891 : $cb, $c6
	ld a, $05                                                  ; $1893 : $3e, $05
	ld ($4118), a                                                  ; $1895 : $32, $18, $41
	ld hl, $276e                                                  ; $1898 : $21, $6e, $27
	call Call_00_03ab                                                  ; $189b : $cd, $ab, $03
	call Call_00_03e4                                                  ; $189e : $cd, $e4, $03
	call Call_00_10e5                                                  ; $18a1 : $cd, $e5, $10
	sla a                                                  ; $18a4 : $cb, $27
	ld hl, $c000                                                  ; $18a6 : $21, $00, $c0
	call AddAtoHL                                                  ; $18a9 : $cd, $99, $01
	ld e, (hl)                                                  ; $18ac : $5e
	inc hl                                                  ; $18ad : $23
	ld d, (hl)                                                  ; $18ae : $56
	ex de, hl                                                  ; $18af : $eb
	ld ($4152), hl                                                  ; $18b0 : $22, $52, $41
	call Call_00_1cb3                                                  ; $18b3 : $cd, $b3, $1c

Jump_00_18b6:
	call Call_00_2375                                                  ; $18b6 : $cd, $75, $23

Jump_00_18b9:
br_00_18b9:
	call Call_00_2223                                                  ; $18b9 : $cd, $23, $22
	res 4, a                                                  ; $18bc : $cb, $a7
	res 5, a                                                  ; $18be : $cb, $af
	ld ($4159), a                                                  ; $18c0 : $32, $59, $41
	call Call_00_2349                                                  ; $18c3 : $cd, $49, $23
	call Call_00_0510                                                  ; $18c6 : $cd, $10, $05
	call Call_00_073b                                                  ; $18c9 : $cd, $3b, $07
	ld a, ($4160)                                                  ; $18cc : $3a, $60, $41
	cp $01                                                  ; $18cf : $fe, $01
	jr nz, br_00_18e8                                                  ; $18d1 : $20, $15

	call Call_00_358a                                                  ; $18d3 : $cd, $8a, $35
	call Call_00_0605                                                  ; $18d6 : $cd, $05, $06
	call Call_00_3590                                                  ; $18d9 : $cd, $90, $35
	call Call_00_02f8                                                  ; $18dc : $cd, $f8, $02
	call Call_00_04f2                                                  ; $18df : $cd, $f2, $04
	call Call_00_1c1a                                                  ; $18e2 : $cd, $1a, $1c
	nop                                                  ; $18e5 : $00
	jr br_00_18b9                                                  ; $18e6 : $18, $d1

br_00_18e8:
	call Call_00_17d9                                                  ; $18e8 : $cd, $d9, $17
	di                                                  ; $18eb : $f3
	call Call_00_1c4d                                                  ; $18ec : $cd, $4d, $1c
	jp Jump_00_18b9                                                  ; $18ef : $c3, $b9, $18


br_00_18f2:
	ld a, $03                                                  ; $18f2 : $3e, $03
	ld ($4118), a                                                  ; $18f4 : $32, $18, $41
	ld hl, $2755                                                  ; $18f7 : $21, $55, $27
	jp Jump_00_1bf1                                                  ; $18fa : $c3, $f1, $1b


br_00_18fd:
	ld a, $02                                                  ; $18fd : $3e, $02
	ld ($4118), a                                                  ; $18ff : $32, $18, $41
	ld hl, $274b                                                  ; $1902 : $21, $4b, $27
	call Call_00_03ab                                                  ; $1905 : $cd, $ab, $03
	call Call_00_03e4                                                  ; $1908 : $cd, $e4, $03
	call Call_00_20fd                                                  ; $190b : $cd, $fd, $20
	ld ($4117), a                                                  ; $190e : $32, $17, $41
	cp $03                                                  ; $1911 : $fe, $03
	jr z, br_00_1922                                                  ; $1913 : $28, $0d

	cp $04                                                  ; $1915 : $fe, $04
	jr z, br_00_192b                                                  ; $1917 : $28, $12

	ld hl, $c060                                                  ; $1919 : $21, $60, $c0
	ld ($4152), hl                                                  ; $191c : $22, $52, $41
	jp Jump_00_1931                                                  ; $191f : $c3, $31, $19


br_00_1922:
	ld hl, $c128                                                  ; $1922 : $21, $28, $c1
	ld ($4152), hl                                                  ; $1925 : $22, $52, $41
	jp Jump_00_1931                                                  ; $1928 : $c3, $31, $19


br_00_192b:
	ld hl, $c1f0                                                  ; $192b : $21, $f0, $c1
	ld ($4152), hl                                                  ; $192e : $22, $52, $41

Jump_00_1931:
	call Call_00_1cb3                                                  ; $1931 : $cd, $b3, $1c

Jump_00_1934:
br_00_1934:
	call Call_00_019f                                                  ; $1934 : $cd, $9f, $01
	res 7, a                                                  ; $1937 : $cb, $bf
	cp $64                                                  ; $1939 : $fe, $64
	jr nc, br_00_1934                                                  ; $193b : $30, $f7

	ld ($4156), a                                                  ; $193d : $32, $56, $41
	ld a, ($4160)                                                  ; $1940 : $3a, $60, $41
	cp $01                                                  ; $1943 : $fe, $01
	jr nz, br_00_1958                                                  ; $1945 : $20, $11

br_00_1947:
	call Call_00_073b                                                  ; $1947 : $cd, $3b, $07
	call Call_00_1b88                                                  ; $194a : $cd, $88, $1b
	call Call_00_1cdd                                                  ; $194d : $cd, $dd, $1c
	call Call_00_1c1a                                                  ; $1950 : $cd, $1a, $1c
	nop                                                  ; $1953 : $00
	nop                                                  ; $1954 : $00
	nop                                                  ; $1955 : $00
	jr br_00_1947                                                  ; $1956 : $18, $ef

br_00_1958:
	call Call_00_073b                                                  ; $1958 : $cd, $3b, $07
	call Call_00_1b88                                                  ; $195b : $cd, $88, $1b
	call Call_00_1c43                                                  ; $195e : $cd, $43, $1c
	nop                                                  ; $1961 : $00
	nop                                                  ; $1962 : $00
	jr br_00_1958                                                  ; $1963 : $18, $f3

Call_00_1965:
	call Call_00_0386                                                  ; $1965 : $cd, $86, $03
	ld hl, $4155                                                  ; $1968 : $21, $55, $41
	bit 2, (hl)                                                  ; $196b : $cb, $56
	jr nz, br_00_197f                                                  ; $196d : $20, $10

	bit 1, (hl)                                                  ; $196f : $cb, $4e
	call nz, Call_00_03dd                                                  ; $1971 : $c4, $dd, $03

Call_00_1974:
	ld hl, $4155                                                  ; $1974 : $21, $55, $41
	bit 1, (hl)                                                  ; $1977 : $cb, $4e
	jr nz, br_00_197f                                                  ; $1979 : $20, $04

	pop de                                                  ; $197b : $d1
	jp Jump_00_1821                                                  ; $197c : $c3, $21, $18


br_00_197f:
	bit 2, (hl)                                                  ; $197f : $cb, $56
	ret z                                                  ; $1981 : $c8

	pop de                                                  ; $1982 : $d1
	jp Jump_00_186d                                                  ; $1983 : $c3, $6d, $18


Jump_00_1986:
	call Call_00_04f2                                                  ; $1986 : $cd, $f2, $04

Call_00_1989:
Jump_00_1989:
br_00_1989:
	call Call_00_0561                                                  ; $1989 : $cd, $61, $05
	ld a, ($4118)                                                  ; $198c : $3a, $18, $41
	cp $05                                                  ; $198f : $fe, $05
	jp nz, Jump_00_19a6                                                  ; $1991 : $c2, $a6, $19
	ld hl, $4165                                                  ; $1994 : $21, $65, $41
	bit 0, (hl)                                                  ; $1997 : $cb, $46
	push af                                                  ; $1999 : $f5
	call nz, Call_00_358a                                                  ; $199a : $c4, $8a, $35
	pop af                                                  ; $199d : $f1
	push af                                                  ; $199e : $f5
	call nz, Call_00_06eb                                                  ; $199f : $c4, $eb, $06
	pop af                                                  ; $19a2 : $f1
	call nz, Call_00_3590                                                  ; $19a3 : $c4, $90, $35

Jump_00_19a6:
	call Call_00_04f7                                                  ; $19a6 : $cd, $f7, $04
	call Call_00_0705                                                  ; $19a9 : $cd, $05, $07
	cp $ff                                                  ; $19ac : $fe, $ff
	jr z, br_00_1989                                                  ; $19ae : $28, $d9

	cp $e7                                                  ; $19b0 : $fe, $e7
	jp z, Jump_00_1ab9                                                  ; $19b2 : $ca, $b9, $1a
	cp $e8                                                  ; $19b5 : $fe, $e8
	jp z, Jump_00_1af4                                                  ; $19b7 : $ca, $f4, $1a
	bit 5, (hl)                                                  ; $19ba : $cb, $6e
	jp nz, Jump_00_1a91                                                  ; $19bc : $c2, $91, $1a
	cp $20                                                  ; $19bf : $fe, $20
	jr z, br_00_19ec                                                  ; $19c1 : $28, $29

	cp $0d                                                  ; $19c3 : $fe, $0d
	jr z, br_00_19f2                                                  ; $19c5 : $28, $2b

	cp $3a                                                  ; $19c7 : $fe, $3a
	jp nc, Jump_00_1a91                                                  ; $19c9 : $d2, $91, $1a
	cp $2b                                                  ; $19cc : $fe, $2b
	jp c, Jump_00_1a91                                                  ; $19ce : $da, $91, $1a
	cp $2c                                                  ; $19d1 : $fe, $2c
	jp z, Jump_00_1a91                                                  ; $19d3 : $ca, $91, $1a
	ex af, af'                                                  ; $19d6 : $08
	ld a, ($4118)                                                  ; $19d7 : $3a, $18, $41
	cp $02                                                  ; $19da : $fe, $02
	jr z, br_00_19e6                                                  ; $19dc : $28, $08

	ex af, af'                                                  ; $19de : $08
	cp $2f                                                  ; $19df : $fe, $2f
	jp z, Jump_00_1a91                                                  ; $19e1 : $ca, $91, $1a
	jr br_00_19ec                                                  ; $19e4 : $18, $06

br_00_19e6:
	ex af, af'                                                  ; $19e6 : $08
	cp $2e                                                  ; $19e7 : $fe, $2e
	jp z, Jump_00_1a91                                                  ; $19e9 : $ca, $91, $1a

br_00_19ec:
	call Call_00_0438                                                  ; $19ec : $cd, $38, $04
	jp Jump_00_1989                                                  ; $19ef : $c3, $89, $19


br_00_19f2:
	ld hl, $415b                                                  ; $19f2 : $21, $5b, $41
	ld (hl), $00                                                  ; $19f5 : $36, $00
	ld c, $80                                                  ; $19f7 : $0e, $80
	ld de, $4200                                                  ; $19f9 : $11, $00, $42

br_00_19fc:
	ld a, (de)                                                  ; $19fc : $1a
	cp $20                                                  ; $19fd : $fe, $20
	jr z, br_00_1a07                                                  ; $19ff : $28, $06

	cp $2e                                                  ; $1a01 : $fe, $2e
	jr c, br_00_1a43                                                  ; $1a03 : $38, $3e

	set 0, (hl)                                                  ; $1a05 : $cb, $c6

br_00_1a07:
	inc de                                                  ; $1a07 : $13
	dec c                                                  ; $1a08 : $0d
	jr nz, br_00_19fc                                                  ; $1a09 : $20, $f1

	call Call_00_1572                                                  ; $1a0b : $cd, $72, $15
	ld a, ($4200)                                                  ; $1a0e : $3a, $00, $42
	cp $20                                                  ; $1a11 : $fe, $20
	jp z, Jump_00_1a97                                                  ; $1a13 : $ca, $97, $1a
	ld hl, $4280                                                  ; $1a16 : $21, $80, $42
	ld a, $2b                                                  ; $1a19 : $3e, $2b
	ld (hl), a                                                  ; $1a1b : $77
	inc hl                                                  ; $1a1c : $23
	ld a, $30                                                  ; $1a1d : $3e, $30
	ld (hl), a                                                  ; $1a1f : $77
	inc hl                                                  ; $1a20 : $23
	ld a, $3d                                                  ; $1a21 : $3e, $3d
	ld (hl), a                                                  ; $1a23 : $77
	call Call_00_1db2                                                  ; $1a24 : $cd, $b2, $1d
	call Call_00_02f8                                                  ; $1a27 : $cd, $f8, $02
	ld hl, $45a0                                                  ; $1a2a : $21, $a0, $45
	ld de, $4200                                                  ; $1a2d : $11, $00, $42
	call Call_00_1da9                                                  ; $1a30 : $cd, $a9, $1d
	ld b, $10                                                  ; $1a33 : $06, $10
	ld hl, $42b0                                                  ; $1a35 : $21, $b0, $42
	ld de, $4200                                                  ; $1a38 : $11, $00, $42

br_00_1a3b:
	ld a, (de)                                                  ; $1a3b : $1a
	cp $20                                                  ; $1a3c : $fe, $20
	jr nz, br_00_1a4a                                                  ; $1a3e : $20, $0a

	inc de                                                  ; $1a40 : $13
	jr br_00_1a3b                                                  ; $1a41 : $18, $f8

br_00_1a43:
	bit 0, (hl)                                                  ; $1a43 : $cb, $46
	jr z, br_00_1a07                                                  ; $1a45 : $28, $c0

	jp Jump_00_1a97                                                  ; $1a47 : $c3, $97, $1a


br_00_1a4a:
	ld a, (de)                                                  ; $1a4a : $1a
	cp (hl)                                                  ; $1a4b : $be
	jr nz, br_00_1a97                                                  ; $1a4c : $20, $49

	inc hl                                                  ; $1a4e : $23
	inc de                                                  ; $1a4f : $13
	djnz br_00_1a4a                                                  ; $1a50 : $10, $f8
	ld de, $2c39                                                  ; $1a52 : $11, $39, $2c
	call Call_00_0782                                                  ; $1a55 : $cd, $82, $07
	ld hl, $2873                                                  ; $1a58 : $21, $73, $28
	call Call_00_03ab                                                  ; $1a5b : $cd, $ab, $03
	call Call_00_03e4                                                  ; $1a5e : $cd, $e4, $03
	ld a, ($4160)                                                  ; $1a61 : $3a, $60, $41
	cp $01                                                  ; $1a64 : $fe, $01
	jr nz, br_00_1a89                                                  ; $1a66 : $20, $21

	call Call_00_1a6c                                                  ; $1a68 : $cd, $6c, $1a
	ret                                                  ; $1a6b : $c9


Call_00_1a6c:
	ld a, ($415f)                                                  ; $1a6c : $3a, $5f, $41
	or a                                                  ; $1a6f : $b7
	jr nz, br_00_1a76                                                  ; $1a70 : $20, $04

	ld a, $0a                                                  ; $1a72 : $3e, $0a
	jr br_00_1a80                                                  ; $1a74 : $18, $0a

br_00_1a76:
	cp $01                                                  ; $1a76 : $fe, $01
	jr nz, br_00_1a7e                                                  ; $1a78 : $20, $04

	ld a, $08                                                  ; $1a7a : $3e, $08
	jr br_00_1a80                                                  ; $1a7c : $18, $02

br_00_1a7e:
	ld a, $04                                                  ; $1a7e : $3e, $04

br_00_1a80:
	ld b, a                                                  ; $1a80 : $47
	ld a, ($415e)                                                  ; $1a81 : $3a, $5e, $41
	add a, b                                                  ; $1a84 : $80
	ld ($415e), a                                                  ; $1a85 : $32, $5e, $41
	ret                                                  ; $1a88 : $c9


br_00_1a89:
	ld hl, ($412b)                                                  ; $1a89 : $2a, $2b, $41
	ld a, (hl)                                                  ; $1a8c : $7e
	add a, $0a                                                  ; $1a8d : $c6, $0a
	ld (hl), a                                                  ; $1a8f : $77
	ret                                                  ; $1a90 : $c9


Jump_00_1a91:
	call Call_00_0745                                                  ; $1a91 : $cd, $45, $07
	jp Jump_00_1989                                                  ; $1a94 : $c3, $89, $19


Jump_00_1a97:
br_00_1a97:
	ld de, $2c45                                                  ; $1a97 : $11, $45, $2c
	call Call_00_0782                                                  ; $1a9a : $cd, $82, $07
	ld a, ($4160)                                                  ; $1a9d : $3a, $60, $41
	cp $01                                                  ; $1aa0 : $fe, $01
	jp nz, Jump_00_1b37                                                  ; $1aa2 : $c2, $37, $1b
	ld a, ($415f)                                                  ; $1aa5 : $3a, $5f, $41
	inc a                                                  ; $1aa8 : $3c
	ld ($415f), a                                                  ; $1aa9 : $32, $5f, $41
	cp $03                                                  ; $1aac : $fe, $03
	jr z, br_00_1af4                                                  ; $1aae : $28, $44

	ld hl, $2886                                                  ; $1ab0 : $21, $86, $28
	call Call_00_03ab                                                  ; $1ab3 : $cd, $ab, $03
	call Call_00_03dd                                                  ; $1ab6 : $cd, $dd, $03

Jump_00_1ab9:
	ld a, ($4160)                                                  ; $1ab9 : $3a, $60, $41
	cp $01                                                  ; $1abc : $fe, $01
	jp nz, Jump_00_1ad2                                                  ; $1abe : $c2, $d2, $1a
	ld a, ($412d)                                                  ; $1ac1 : $3a, $2d, $41
	bit 0, a                                                  ; $1ac4 : $cb, $47
	jp z, Jump_00_1aee                                                  ; $1ac6 : $ca, $ee, $1a
	call Call_00_2349                                                  ; $1ac9 : $cd, $49, $23
	call Call_00_03b9                                                  ; $1acc : $cd, $b9, $03
	jp Jump_00_1986                                                  ; $1acf : $c3, $86, $19


Jump_00_1ad2:
	call Call_00_02f8                                                  ; $1ad2 : $cd, $f8, $02
	ld b, $70                                                  ; $1ad5 : $06, $70
	ld a, $20                                                  ; $1ad7 : $3e, $20
	ld hl, $4190                                                  ; $1ad9 : $21, $90, $41

br_00_1adc:
	ld (hl), a                                                  ; $1adc : $77
	inc hl                                                  ; $1add : $23
	djnz br_00_1adc                                                  ; $1ade : $10, $fc
	call Call_00_02ec                                                  ; $1ae0 : $cd, $ec, $02
	ld a, $13                                                  ; $1ae3 : $3e, $13
	ld ($4169), a                                                  ; $1ae5 : $32, $69, $41
	call Call_00_043e                                                  ; $1ae8 : $cd, $3e, $04
	jp Jump_00_1989                                                  ; $1aeb : $c3, $89, $19


Jump_00_1aee:
	call Call_00_1cdd                                                  ; $1aee : $cd, $dd, $1c
	jp Jump_00_1989                                                  ; $1af1 : $c3, $89, $19


Jump_00_1af4:
br_00_1af4:
	ld a, ($4160)                                                  ; $1af4 : $3a, $60, $41
	cp $01                                                  ; $1af7 : $fe, $01
	jr nz, br_00_1b31                                                  ; $1af9 : $20, $36

Call_00_1afb:
br_00_1afb:
	ld a, $0e                                                  ; $1afb : $3e, $0e
	call Call_00_048e                                                  ; $1afd : $cd, $8e, $04
	call Call_00_03dd                                                  ; $1b00 : $cd, $dd, $03
	ld a, ($4118)                                                  ; $1b03 : $3a, $18, $41
	cp $02                                                  ; $1b06 : $fe, $02
	call z, Call_00_1b40                                                  ; $1b08 : $cc, $40, $1b
	ld hl, $2894                                                  ; $1b0b : $21, $94, $28
	call Call_00_042b                                                  ; $1b0e : $cd, $2b, $04
	ld a, ($2894)                                                  ; $1b11 : $3a, $94, $28
	ld b, a                                                  ; $1b14 : $47
	inc de                                                  ; $1b15 : $13
	inc de                                                  ; $1b16 : $13
	ld hl, $42b0                                                  ; $1b17 : $21, $b0, $42

br_00_1b1a:
	ld a, (hl)                                                  ; $1b1a : $7e
	ld (de), a                                                  ; $1b1b : $12
	inc b                                                  ; $1b1c : $04
	inc de                                                  ; $1b1d : $13
	inc hl                                                  ; $1b1e : $23
	cp $20                                                  ; $1b1f : $fe, $20
	jr nz, br_00_1b1a                                                  ; $1b21 : $20, $f7

	ld a, b                                                  ; $1b23 : $78
	ld ($4116), a                                                  ; $1b24 : $32, $16, $41
	call Call_00_0510                                                  ; $1b27 : $cd, $10, $05
	call Call_00_0605                                                  ; $1b2a : $cd, $05, $06
	call Call_00_03ec                                                  ; $1b2d : $cd, $ec, $03
	ret                                                  ; $1b30 : $c9


br_00_1b31:
	ld de, $2c45                                                  ; $1b31 : $11, $45, $2c
	call Call_00_0782                                                  ; $1b34 : $cd, $82, $07

Jump_00_1b37:
	ld hl, ($412b)                                                  ; $1b37 : $2a, $2b, $41
	ld a, (hl)                                                  ; $1b3a : $7e
	sub $0a                                                  ; $1b3b : $d6, $0a
	ld (hl), a                                                  ; $1b3d : $77
	jr br_00_1afb                                                  ; $1b3e : $18, $bb

Call_00_1b40:
	call Call_00_20f1                                                  ; $1b40 : $cd, $f1, $20
	ld hl, $42e0                                                  ; $1b43 : $21, $e0, $42
	ld de, $42b0                                                  ; $1b46 : $11, $b0, $42
	ld bc, $000a                                                  ; $1b49 : $01, $0a, $00
	ldir                                                  ; $1b4c : $ed, $b0
	ret                                                  ; $1b4e : $c9


	ld b, $03                                                  ; $1b4f : $06, $03

br_00_1b51:
	push bc                                                  ; $1b51 : $c5
	ld a, ($4116)                                                  ; $1b52 : $3a, $16, $41
	inc a                                                  ; $1b55 : $3c
	ld hl, $4180                                                  ; $1b56 : $21, $80, $41
	call AddAtoHL                                                  ; $1b59 : $cd, $99, $01
	ld b, $10                                                  ; $1b5c : $06, $10
	ld a, $20                                                  ; $1b5e : $3e, $20

br_00_1b60:
	ld (hl), a                                                  ; $1b60 : $77
	inc hl                                                  ; $1b61 : $23
	djnz br_00_1b60                                                  ; $1b62 : $10, $fc
	call Call_00_0247                                                  ; $1b64 : $cd, $47, $02
	call Call_00_03dd                                                  ; $1b67 : $cd, $dd, $03
	ld a, ($4116)                                                  ; $1b6a : $3a, $16, $41
	inc a                                                  ; $1b6d : $3c
	inc a                                                  ; $1b6e : $3c
	ld hl, $4180                                                  ; $1b6f : $21, $80, $41
	call AddAtoHL                                                  ; $1b72 : $cd, $99, $01
	ex de, hl                                                  ; $1b75 : $eb
	ld bc, $000f                                                  ; $1b76 : $01, $0f, $00
	ld hl, $42b0                                                  ; $1b79 : $21, $b0, $42
	ldir                                                  ; $1b7c : $ed, $b0
	call Call_00_0247                                                  ; $1b7e : $cd, $47, $02
	call Call_00_03dd                                                  ; $1b81 : $cd, $dd, $03
	pop bc                                                  ; $1b84 : $c1
	djnz br_00_1b51                                                  ; $1b85 : $10, $ca
	ret                                                  ; $1b87 : $c9


Call_00_1b88:
	call Call_00_02f8                                                  ; $1b88 : $cd, $f8, $02
	call Call_00_233d                                                  ; $1b8b : $cd, $3d, $23
	call Call_00_2110                                                  ; $1b8e : $cd, $10, $21
	call Call_00_2223                                                  ; $1b91 : $cd, $23, $22
	res 4, a                                                  ; $1b94 : $cb, $a7
	res 5, a                                                  ; $1b96 : $cb, $af
	inc a                                                  ; $1b98 : $3c
	ld b, a                                                  ; $1b99 : $47
	ld a, ($4156)                                                  ; $1b9a : $3a, $56, $41
	add a, b                                                  ; $1b9d : $80
	cp $64                                                  ; $1b9e : $fe, $64
	jr c, br_00_1ba4                                                  ; $1ba0 : $38, $02

	sub $64                                                  ; $1ba2 : $d6, $64

br_00_1ba4:
	ld ($4156), a                                                  ; $1ba4 : $32, $56, $41
	sla a                                                  ; $1ba7 : $cb, $27
	ld hl, ($4152)                                                  ; $1ba9 : $2a, $52, $41
	call AddAtoHL                                                  ; $1bac : $cd, $99, $01
	ld e, (hl)                                                  ; $1baf : $5e
	inc hl                                                  ; $1bb0 : $23
	ld d, (hl)                                                  ; $1bb1 : $56
	ld hl, $42c1                                                  ; $1bb2 : $21, $c1, $42
	ex de, hl                                                  ; $1bb5 : $eb
	ld bc, $0007                                                  ; $1bb6 : $01, $07, $00
	ld a, ($4117)                                                  ; $1bb9 : $3a, $17, $41
	cp $02                                                  ; $1bbc : $fe, $02
	jr nz, br_00_1bdf                                                  ; $1bbe : $20, $1f

	ldir                                                  ; $1bc0 : $ed, $b0
	ld a, $3d                                                  ; $1bc2 : $3e, $3d
	ld (de), a                                                  ; $1bc4 : $12

br_00_1bc5:
	ld de, $42e0                                                  ; $1bc5 : $11, $e0, $42
	ld bc, $4200                                                  ; $1bc8 : $01, $00, $42

br_00_1bcb:
	ld a, (hl)                                                  ; $1bcb : $7e
	cp $24                                                  ; $1bcc : $fe, $24
	jr z, br_00_1bd7                                                  ; $1bce : $28, $07

	ld (de), a                                                  ; $1bd0 : $12
	ld (bc), a                                                  ; $1bd1 : $02
	inc hl                                                  ; $1bd2 : $23
	inc de                                                  ; $1bd3 : $13
	inc bc                                                  ; $1bd4 : $03
	jr br_00_1bcb                                                  ; $1bd5 : $18, $f4

br_00_1bd7:
	inc bc                                                  ; $1bd7 : $03
	ld a, $3d                                                  ; $1bd8 : $3e, $3d
	ld (bc), a                                                  ; $1bda : $02
	call Call_00_1d9d                                                  ; $1bdb : $cd, $9d, $1d
	ret                                                  ; $1bde : $c9


br_00_1bdf:
	ld a, (hl)                                                  ; $1bdf : $7e
	ld (de), a                                                  ; $1be0 : $12
	inc hl                                                  ; $1be1 : $23
	inc de                                                  ; $1be2 : $13
	cp $3d                                                  ; $1be3 : $fe, $3d
	jr z, br_00_1bc5                                                  ; $1be5 : $28, $de

	jr br_00_1bdf                                                  ; $1be7 : $18, $f6

Jump_00_1be9:
	ld a, $01                                                  ; $1be9 : $3e, $01
	ld ($4118), a                                                  ; $1beb : $32, $18, $41
	ld hl, $2741                                                  ; $1bee : $21, $41, $27

Jump_00_1bf1:
	call Call_00_03ab                                                  ; $1bf1 : $cd, $ab, $03
	call Call_00_03e4                                                  ; $1bf4 : $cd, $e4, $03
	call Call_00_10ed                                                  ; $1bf7 : $cd, $ed, $10
	ld ($4117), a                                                  ; $1bfa : $32, $17, $41
	call Call_00_1cb3                                                  ; $1bfd : $cd, $b3, $1c

Jump_00_1c00:
	ld a, ($4160)                                                  ; $1c00 : $3a, $60, $41
	cp $01                                                  ; $1c03 : $fe, $01
	jr nz, br_00_1c34                                                  ; $1c05 : $20, $2d

Jump_00_1c07:
	call Call_00_073b                                                  ; $1c07 : $cd, $3b, $07
	call Call_00_211c                                                  ; $1c0a : $cd, $1c, $21
	call Call_00_2110                                                  ; $1c0d : $cd, $10, $21
	call Call_00_1cdd                                                  ; $1c10 : $cd, $dd, $1c
	call Call_00_1c1a                                                  ; $1c13 : $cd, $1a, $1c
	nop                                                  ; $1c16 : $00
	jp Jump_00_1c07                                                  ; $1c17 : $c3, $07, $1c


Call_00_1c1a:
	call Call_00_1989                                                  ; $1c1a : $cd, $89, $19
	xor a                                                  ; $1c1d : $af
	ld ($415f), a                                                  ; $1c1e : $32, $5f, $41
	ld a, ($4154)                                                  ; $1c21 : $3a, $54, $41
	inc a                                                  ; $1c24 : $3c
	ld ($4154), a                                                  ; $1c25 : $32, $54, $41
	cp $0a                                                  ; $1c28 : $fe, $0a
	ret nz                                                  ; $1c2a : $c0

	ld a, ($415e)                                                  ; $1c2b : $3a, $5e, $41
	call Call_00_10d0                                                  ; $1c2e : $cd, $d0, $10
	jp Jump_00_1c88                                                  ; $1c31 : $c3, $88, $1c


br_00_1c34:
	call Call_00_073b                                                  ; $1c34 : $cd, $3b, $07
	call Call_00_211c                                                  ; $1c37 : $cd, $1c, $21
	call Call_00_2110                                                  ; $1c3a : $cd, $10, $21
	call Call_00_1c43                                                  ; $1c3d : $cd, $43, $1c
	nop                                                  ; $1c40 : $00
	jr br_00_1c34                                                  ; $1c41 : $18, $f1

Call_00_1c43:
br_00_1c43:
	call Call_00_1cdd                                                  ; $1c43 : $cd, $dd, $1c

br_00_1c46:
	call Call_00_0561                                                  ; $1c46 : $cd, $61, $05
	cp $ff                                                  ; $1c49 : $fe, $ff
	jr z, br_00_1c46                                                  ; $1c4b : $28, $f9

Call_00_1c4d:
	cp $ed                                                  ; $1c4d : $fe, $ed
	jr z, br_00_1c75                                                  ; $1c4f : $28, $24

	cp $ec                                                  ; $1c51 : $fe, $ec
	jr z, br_00_1c75                                                  ; $1c53 : $28, $20

	cp $e8                                                  ; $1c55 : $fe, $e8
	jr z, br_00_1c67                                                  ; $1c57 : $28, $0e

	call Call_00_0745                                                  ; $1c59 : $cd, $45, $07
	ld hl, $28bb                                                  ; $1c5c : $21, $bb, $28
	call Call_00_03ab                                                  ; $1c5f : $cd, $ab, $03
	call Call_00_03e4                                                  ; $1c62 : $cd, $e4, $03
	jr br_00_1c43                                                  ; $1c65 : $18, $dc

br_00_1c67:
	call Call_00_1afb                                                  ; $1c67 : $cd, $fb, $1a
	ld a, ($4154)                                                  ; $1c6a : $3a, $54, $41
	cp $09                                                  ; $1c6d : $fe, $09
	call z, Call_00_1817                                                  ; $1c6f : $cc, $17, $18
	jp Jump_00_1c7e                                                  ; $1c72 : $c3, $7e, $1c


br_00_1c75:
	call Call_00_1702                                                  ; $1c75 : $cd, $02, $17
	call Call_00_1989                                                  ; $1c78 : $cd, $89, $19
	call Call_00_1817                                                  ; $1c7b : $cd, $17, $18

Jump_00_1c7e:
	ld a, ($4154)                                                  ; $1c7e : $3a, $54, $41
	inc a                                                  ; $1c81 : $3c
	ld ($4154), a                                                  ; $1c82 : $32, $54, $41
	cp $0a                                                  ; $1c85 : $fe, $0a
	ret nz                                                  ; $1c87 : $c0

Jump_00_1c88:
	call Call_00_03dd                                                  ; $1c88 : $cd, $dd, $03
	ld de, $2c51                                                  ; $1c8b : $11, $51, $2c
	call Call_00_0782                                                  ; $1c8e : $cd, $82, $07

br_00_1c91:
	call Call_00_0561                                                  ; $1c91 : $cd, $61, $05
	cp $ff                                                  ; $1c94 : $fe, $ff
	jr z, br_00_1c91                                                  ; $1c96 : $28, $f9

	call Call_00_1cb9                                                  ; $1c98 : $cd, $b9, $1c
	ld a, ($4167)                                                  ; $1c9b : $3a, $67, $41
	cp $04                                                  ; $1c9e : $fe, $04
	jp z, Jump_00_1e21                                                  ; $1ca0 : $ca, $21, $1e
	ld a, ($4118)                                                  ; $1ca3 : $3a, $18, $41
	cp $05                                                  ; $1ca6 : $fe, $05
	jp z, Jump_00_18b6                                                  ; $1ca8 : $ca, $b6, $18
	cp $02                                                  ; $1cab : $fe, $02
	jp z, Jump_00_1934                                                  ; $1cad : $ca, $34, $19
	jp Jump_00_1c00                                                  ; $1cb0 : $c3, $00, $1c


Call_00_1cb3:
	call Call_00_11bd                                                  ; $1cb3 : $cd, $bd, $11
	ld ($4160), a                                                  ; $1cb6 : $32, $60, $41

Call_00_1cb9:
	xor a                                                  ; $1cb9 : $af
	ld ($415f), a                                                  ; $1cba : $32, $5f, $41
	ld ($4154), a                                                  ; $1cbd : $32, $54, $41
	ld ($415e), a                                                  ; $1cc0 : $32, $5e, $41
	ld a, $64                                                  ; $1cc3 : $3e, $64
	ld ($4128), a                                                  ; $1cc5 : $32, $28, $41
	ld ($4129), a                                                  ; $1cc8 : $32, $29, $41
	call Call_00_03dd                                                  ; $1ccb : $cd, $dd, $03
	ld de, $2c2f                                                  ; $1cce : $11, $2f, $2c
	call Call_00_0782                                                  ; $1cd1 : $cd, $82, $07
	call Call_00_03dd                                                  ; $1cd4 : $cd, $dd, $03
	ld hl, $4112                                                  ; $1cd7 : $21, $12, $41
	res 3, (hl)                                                  ; $1cda : $cb, $9e
	ret                                                  ; $1cdc : $c9


Call_00_1cdd:
	call Call_00_02d7                                                  ; $1cdd : $cd, $d7, $02
	ld hl, $42c1                                                  ; $1ce0 : $21, $c1, $42
	ld de, $4180                                                  ; $1ce3 : $11, $80, $41
	ld bc, $0014                                                  ; $1ce6 : $01, $14, $00
	ldir                                                  ; $1ce9 : $ed, $b0
	call Call_00_0247                                                  ; $1ceb : $cd, $47, $02
	ld b, $00                                                  ; $1cee : $06, $00
	ld hl, $4180                                                  ; $1cf0 : $21, $80, $41

br_00_1cf3:
	ld a, (hl)                                                  ; $1cf3 : $7e
	cp $20                                                  ; $1cf4 : $fe, $20
	jr z, br_00_1cfc                                                  ; $1cf6 : $28, $04

	inc b                                                  ; $1cf8 : $04
	inc hl                                                  ; $1cf9 : $23
	jr br_00_1cf3                                                  ; $1cfa : $18, $f7

br_00_1cfc:
	ld a, b                                                  ; $1cfc : $78
	ld ($4169), a                                                  ; $1cfd : $32, $69, $41
	dec a                                                  ; $1d00 : $3d
	ld ($4116), a                                                  ; $1d01 : $32, $16, $41
	call Call_00_04f2                                                  ; $1d04 : $cd, $f2, $04
	ret                                                  ; $1d07 : $c9


Call_00_1d08:
	call Call_00_019f                                                  ; $1d08 : $cd, $9f, $01

br_00_1d0b:
	cp $04                                                  ; $1d0b : $fe, $04
	ret c                                                  ; $1d0d : $d8

	sub $04                                                  ; $1d0e : $d6, $04
	jr br_00_1d0b                                                  ; $1d10 : $18, $f9

Call_00_1d12:
	ld a, $2b                                                  ; $1d12 : $3e, $2b
	ld ($4152), a                                                  ; $1d14 : $32, $52, $41
	jr br_00_1d1e                                                  ; $1d17 : $18, $05

Call_00_1d19:
	ld a, $2d                                                  ; $1d19 : $3e, $2d
	ld ($4152), a                                                  ; $1d1b : $32, $52, $41

br_00_1d1e:
	call Call_00_1d88                                                  ; $1d1e : $cd, $88, $1d
	ld a, ($42b0)                                                  ; $1d21 : $3a, $b0, $42
	cp $2d                                                  ; $1d24 : $fe, $2d
	jr z, br_00_1d1e                                                  ; $1d26 : $28, $f6

	ret                                                  ; $1d28 : $c9


Call_00_1d29:
	ld a, $a5                                                  ; $1d29 : $3e, $a5
	ld ($4152), a                                                  ; $1d2b : $32, $52, $41
	call Call_00_1d88                                                  ; $1d2e : $cd, $88, $1d
	ret                                                  ; $1d31 : $c9


Call_00_1d32:
	ld a, $a5                                                  ; $1d32 : $3e, $a5
	ld ($4152), a                                                  ; $1d34 : $32, $52, $41
	ld de, $42e0                                                  ; $1d37 : $11, $e0, $42
	ld hl, $42e5                                                  ; $1d3a : $21, $e5, $42
	ld a, ($4118)                                                  ; $1d3d : $3a, $18, $41
	bit 1, a                                                  ; $1d40 : $cb, $4f
	jr z, br_00_1d4a                                                  ; $1d42 : $28, $06

	ld de, $4284                                                  ; $1d44 : $11, $84, $42
	ld hl, $4289                                                  ; $1d47 : $21, $89, $42

br_00_1d4a:
	call Call_00_1dd3                                                  ; $1d4a : $cd, $d3, $1d
	call Call_00_1db2                                                  ; $1d4d : $cd, $b2, $1d
	call Call_00_02f8                                                  ; $1d50 : $cd, $f8, $02
	ld de, $4200                                                  ; $1d53 : $11, $00, $42
	ld hl, $45a0                                                  ; $1d56 : $21, $a0, $45
	call Call_00_1da9                                                  ; $1d59 : $cd, $a9, $1d
	ld a, $a6                                                  ; $1d5c : $3e, $a6
	ld (de), a                                                  ; $1d5e : $12
	ld ($4152), a                                                  ; $1d5f : $32, $52, $41
	inc de                                                  ; $1d62 : $13
	ld hl, $42e5                                                  ; $1d63 : $21, $e5, $42
	ld a, ($4118)                                                  ; $1d66 : $3a, $18, $41
	bit 1, a                                                  ; $1d69 : $cb, $4f
	jr z, br_00_1d70                                                  ; $1d6b : $28, $03

	ld hl, $4289                                                  ; $1d6d : $21, $89, $42

br_00_1d70:
	call Call_00_1de7                                                  ; $1d70 : $cd, $e7, $1d
	ld a, $3d                                                  ; $1d73 : $3e, $3d
	ld (de), a                                                  ; $1d75 : $12
	ld b, $05                                                  ; $1d76 : $06, $05
	call Call_00_233f                                                  ; $1d78 : $cd, $3f, $23
	ld de, $42e0                                                  ; $1d7b : $11, $e0, $42
	ld hl, $45a0                                                  ; $1d7e : $21, $a0, $45
	call Call_00_1da9                                                  ; $1d81 : $cd, $a9, $1d
	call Call_00_1d9d                                                  ; $1d84 : $cd, $9d, $1d
	ret                                                  ; $1d87 : $c9


Call_00_1d88:
	ld a, ($4118)                                                  ; $1d88 : $3a, $18, $41
	bit 1, a                                                  ; $1d8b : $cb, $4f
	jr z, br_00_1d9a                                                  ; $1d8d : $28, $0b

	ld de, $4284                                                  ; $1d8f : $11, $84, $42
	ld hl, $4289                                                  ; $1d92 : $21, $89, $42
	call Call_00_1dcb                                                  ; $1d95 : $cd, $cb, $1d
	jr br_00_1d9d                                                  ; $1d98 : $18, $03

br_00_1d9a:
	call Call_00_1dc5                                                  ; $1d9a : $cd, $c5, $1d

Call_00_1d9d:
br_00_1d9d:
	call Call_00_1db2                                                  ; $1d9d : $cd, $b2, $1d
	call Call_00_20f1                                                  ; $1da0 : $cd, $f1, $20
	ld hl, $45a0                                                  ; $1da3 : $21, $a0, $45
	ld de, $42b0                                                  ; $1da6 : $11, $b0, $42

Call_00_1da9:
br_00_1da9:
	ld a, (hl)                                                  ; $1da9 : $7e
	cp $24                                                  ; $1daa : $fe, $24
	ret z                                                  ; $1dac : $c8

	ld (de), a                                                  ; $1dad : $12
	inc de                                                  ; $1dae : $13
	inc hl                                                  ; $1daf : $23
	jr br_00_1da9                                                  ; $1db0 : $18, $f7

Call_00_1db2:
	call $8000                                                  ; $1db2 : $cd, $00, $80
	call Call_00_0e79                                                  ; $1db5 : $cd, $79, $0e
	call $8b62                                                  ; $1db8 : $cd, $62, $8b
	call $8da1                                                  ; $1dbb : $cd, $a1, $8d
	call Call_00_0eac                                                  ; $1dbe : $cd, $ac, $0e
	call $8018                                                  ; $1dc1 : $cd, $18, $80
	ret                                                  ; $1dc4 : $c9


Call_00_1dc5:
	ld de, $42e0                                                  ; $1dc5 : $11, $e0, $42
	ld hl, $42e5                                                  ; $1dc8 : $21, $e5, $42

Call_00_1dcb:
	call Call_00_019f                                                  ; $1dcb : $cd, $9f, $01
	bit 1, a                                                  ; $1dce : $cb, $4f
	jr z, br_00_1dd3                                                  ; $1dd0 : $28, $01

	ex de, hl                                                  ; $1dd2 : $eb

Call_00_1dd3:
br_00_1dd3:
	push de                                                  ; $1dd3 : $d5
	ld de, $4200                                                  ; $1dd4 : $11, $00, $42
	call Call_00_1de7                                                  ; $1dd7 : $cd, $e7, $1d
	ld a, ($4152)                                                  ; $1dda : $3a, $52, $41
	ld (de), a                                                  ; $1ddd : $12
	inc de                                                  ; $1dde : $13
	pop hl                                                  ; $1ddf : $e1
	call Call_00_1de7                                                  ; $1de0 : $cd, $e7, $1d
	ld a, $3d                                                  ; $1de3 : $3e, $3d
	ld (de), a                                                  ; $1de5 : $12
	ret                                                  ; $1de6 : $c9


Call_00_1de7:
	ld b, $05                                                  ; $1de7 : $06, $05
	ld a, ($4118)                                                  ; $1de9 : $3a, $18, $41
	bit 1, a                                                  ; $1dec : $cb, $4f
	jr z, br_00_1df2                                                  ; $1dee : $28, $02

Call_00_1df0:
	ld b, $05                                                  ; $1df0 : $06, $05

br_00_1df2:
	ld a, (hl)                                                  ; $1df2 : $7e
	dec b                                                  ; $1df3 : $05
	inc hl                                                  ; $1df4 : $23
	cp $20                                                  ; $1df5 : $fe, $20
	jr nz, br_00_1dfe                                                  ; $1df7 : $20, $05

	ld a, b                                                  ; $1df9 : $78
	or a                                                  ; $1dfa : $b7
	ret z                                                  ; $1dfb : $c8

	jr br_00_1df2                                                  ; $1dfc : $18, $f4

br_00_1dfe:
	ld (de), a                                                  ; $1dfe : $12
	inc de                                                  ; $1dff : $13
	ld a, b                                                  ; $1e00 : $78
	or a                                                  ; $1e01 : $b7
	ret z                                                  ; $1e02 : $c8

	jr br_00_1df2                                                  ; $1e03 : $18, $ed

Jump_00_1e05:
	ld a, $04                                                  ; $1e05 : $3e, $04
	ld ($4167), a                                                  ; $1e07 : $32, $67, $41
	ld a, $01                                                  ; $1e0a : $3e, $01
	ld ($4118), a                                                  ; $1e0c : $32, $18, $41
	ld hl, $275e                                                  ; $1e0f : $21, $5e, $27
	call Call_00_03ab                                                  ; $1e12 : $cd, $ab, $03
	call Call_00_03e4                                                  ; $1e15 : $cd, $e4, $03
	call Call_00_20fd                                                  ; $1e18 : $cd, $fd, $20
	ld ($4166), a                                                  ; $1e1b : $32, $66, $41
	call Call_00_1cb3                                                  ; $1e1e : $cd, $b3, $1c

Jump_00_1e21:
	ld a, ($4166)                                                  ; $1e21 : $3a, $66, $41
	cp $02                                                  ; $1e24 : $fe, $02
	jr z, br_00_1e34                                                  ; $1e26 : $28, $0c

	cp $03                                                  ; $1e28 : $fe, $03
	jr z, br_00_1e8a                                                  ; $1e2a : $28, $5e

	jp Jump_00_1eb5                                                  ; $1e2c : $c3, $b5, $1e


	nop                                                  ; $1e2f : $00
	nop                                                  ; $1e30 : $00

br_00_1e31:
	nop                                                  ; $1e31 : $00
	jr br_00_1e31                                                  ; $1e32 : $18, $fd

br_00_1e34:
	nop                                                  ; $1e34 : $00

Jump_00_1e35:
	call Call_00_073b                                                  ; $1e35 : $cd, $3b, $07

br_00_1e38:
	call Call_00_019f                                                  ; $1e38 : $cd, $9f, $01
	bit 1, a                                                  ; $1e3b : $cb, $4f
	push af                                                  ; $1e3d : $f5
	call z, Call_00_20ab                                                  ; $1e3e : $cc, $ab, $20
	pop af                                                  ; $1e41 : $f1
	call nz, Call_00_20b4                                                  ; $1e42 : $c4, $b4, $20
	ld a, ($4152)                                                  ; $1e45 : $3a, $52, $41
	cp $a5                                                  ; $1e48 : $fe, $a5
	jr z, br_00_1e38                                                  ; $1e4a : $28, $ec

	cp $a6                                                  ; $1e4c : $fe, $a6
	jr z, br_00_1e38                                                  ; $1e4e : $28, $e8

	call Call_00_2110                                                  ; $1e50 : $cd, $10, $21

br_00_1e53:
	call Call_00_20b4                                                  ; $1e53 : $cd, $b4, $20
	ld a, ($4152)                                                  ; $1e56 : $3a, $52, $41
	cp $a5                                                  ; $1e59 : $fe, $a5
	jr z, br_00_1e53                                                  ; $1e5b : $28, $f6

	cp $a6                                                  ; $1e5d : $fe, $a6
	jr z, br_00_1e53                                                  ; $1e5f : $28, $f2

	call Call_00_20c6                                                  ; $1e61 : $cd, $c6, $20
	ld hl, $42c1                                                  ; $1e64 : $21, $c1, $42
	ld de, $4200                                                  ; $1e67 : $11, $00, $42
	ld bc, $0014                                                  ; $1e6a : $01, $14, $00
	ldir                                                  ; $1e6d : $ed, $b0
	call Call_00_1d9d                                                  ; $1e6f : $cd, $9d, $1d
	ld a, ($4160)                                                  ; $1e72 : $3a, $60, $41
	cp $01                                                  ; $1e75 : $fe, $01
	jr nz, br_00_1e84                                                  ; $1e77 : $20, $0b

	call Call_00_1cdd                                                  ; $1e79 : $cd, $dd, $1c
	call Call_00_1c1a                                                  ; $1e7c : $cd, $1a, $1c
	nop                                                  ; $1e7f : $00
	nop                                                  ; $1e80 : $00
	jp Jump_00_1e35                                                  ; $1e81 : $c3, $35, $1e


br_00_1e84:
	call Call_00_1c43                                                  ; $1e84 : $cd, $43, $1c
	jp Jump_00_1e35                                                  ; $1e87 : $c3, $35, $1e


br_00_1e8a:
	nop                                                  ; $1e8a : $00

br_00_1e8b:
	call Call_00_073b                                                  ; $1e8b : $cd, $3b, $07
	ld a, $01                                                  ; $1e8e : $3e, $01
	ld ($4118), a                                                  ; $1e90 : $32, $18, $41
	call Call_00_019f                                                  ; $1e93 : $cd, $9f, $01
	bit 0, a                                                  ; $1e96 : $cb, $47
	push af                                                  ; $1e98 : $f5
	call z, Call_00_1fed                                                  ; $1e99 : $cc, $ed, $1f
	pop af                                                  ; $1e9c : $f1
	call nz, Call_00_1fbd                                                  ; $1e9d : $c4, $bd, $1f
	ld a, ($4160)                                                  ; $1ea0 : $3a, $60, $41
	cp $01                                                  ; $1ea3 : $fe, $01
	jr nz, br_00_1eaf                                                  ; $1ea5 : $20, $08

	call Call_00_1cdd                                                  ; $1ea7 : $cd, $dd, $1c
	call Call_00_1c1a                                                  ; $1eaa : $cd, $1a, $1c
	jr br_00_1e8b                                                  ; $1ead : $18, $dc

br_00_1eaf:
	call Call_00_1c43                                                  ; $1eaf : $cd, $43, $1c
	nop                                                  ; $1eb2 : $00
	jr br_00_1e8b                                                  ; $1eb3 : $18, $d6

Jump_00_1eb5:
	nop                                                  ; $1eb5 : $00

br_00_1eb6:
	call Call_00_073b                                                  ; $1eb6 : $cd, $3b, $07
	call Call_00_1d08                                                  ; $1eb9 : $cd, $08, $1d
	cp $03                                                  ; $1ebc : $fe, $03
	push af                                                  ; $1ebe : $f5
	call z, Call_00_1f74                                                  ; $1ebf : $cc, $74, $1f
	pop af                                                  ; $1ec2 : $f1
	cp $02                                                  ; $1ec3 : $fe, $02
	push af                                                  ; $1ec5 : $f5
	call z, Call_00_1f33                                                  ; $1ec6 : $cc, $33, $1f
	pop af                                                  ; $1ec9 : $f1
	cp $01                                                  ; $1eca : $fe, $01
	push af                                                  ; $1ecc : $f5
	call z, Call_00_1f1a                                                  ; $1ecd : $cc, $1a, $1f
	pop af                                                  ; $1ed0 : $f1
	cp $00                                                  ; $1ed1 : $fe, $00
	call z, Call_00_1f00                                                  ; $1ed3 : $cc, $00, $1f
	ld b, $00                                                  ; $1ed6 : $06, $00
	ld hl, $4200                                                  ; $1ed8 : $21, $00, $42

br_00_1edb:
	ld a, (hl)                                                  ; $1edb : $7e
	cp $20                                                  ; $1edc : $fe, $20
	jr z, br_00_1ee4                                                  ; $1ede : $28, $04

	inc b                                                  ; $1ee0 : $04
	inc hl                                                  ; $1ee1 : $23
	jr br_00_1edb                                                  ; $1ee2 : $18, $f7

br_00_1ee4:
	ld a, b                                                  ; $1ee4 : $78
	ld ($4169), a                                                  ; $1ee5 : $32, $69, $41
	cp $14                                                  ; $1ee8 : $fe, $14
	jr nc, br_00_1eb6                                                  ; $1eea : $30, $ca

	ld a, ($4160)                                                  ; $1eec : $3a, $60, $41
	cp $01                                                  ; $1eef : $fe, $01
	jr nz, br_00_1efb                                                  ; $1ef1 : $20, $08

	call Call_00_1cdd                                                  ; $1ef3 : $cd, $dd, $1c
	call Call_00_1c1a                                                  ; $1ef6 : $cd, $1a, $1c
	jr br_00_1eb6                                                  ; $1ef9 : $18, $bb

br_00_1efb:
	call Call_00_1c43                                                  ; $1efb : $cd, $43, $1c
	jr br_00_1eb6                                                  ; $1efe : $18, $b6

Call_00_1f00:
	call Call_00_1fbd                                                  ; $1f00 : $cd, $bd, $1f

br_00_1f03:
	call Call_00_20b4                                                  ; $1f03 : $cd, $b4, $20
	ld a, ($4152)                                                  ; $1f06 : $3a, $52, $41
	cp $a6                                                  ; $1f09 : $fe, $a6
	jr z, br_00_1f03                                                  ; $1f0b : $28, $f6

	call Call_00_20c6                                                  ; $1f0d : $cd, $c6, $20
	jp Jump_00_1fa8                                                  ; $1f10 : $c3, $a8, $1f


	nop                                                  ; $1f13 : $00
	nop                                                  ; $1f14 : $00
	nop                                                  ; $1f15 : $00
	nop                                                  ; $1f16 : $00
	jp Jump_00_1f33                                                  ; $1f17 : $c3, $33, $1f


Call_00_1f1a:
Jump_00_1f1a:
	call Call_00_1fed                                                  ; $1f1a : $cd, $ed, $1f

br_00_1f1d:
	call Call_00_20b4                                                  ; $1f1d : $cd, $b4, $20
	ld a, ($4152)                                                  ; $1f20 : $3a, $52, $41
	cp $a6                                                  ; $1f23 : $fe, $a6
	jr z, br_00_1f1d                                                  ; $1f25 : $28, $f6

	call Call_00_20c6                                                  ; $1f27 : $cd, $c6, $20
	jp Jump_00_1fa8                                                  ; $1f2a : $c3, $a8, $1f


	nop                                                  ; $1f2d : $00
	nop                                                  ; $1f2e : $00
	nop                                                  ; $1f2f : $00
	jp Jump_00_1f1a                                                  ; $1f30 : $c3, $1a, $1f


Call_00_1f33:
Jump_00_1f33:
	call Call_00_1fed                                                  ; $1f33 : $cd, $ed, $1f
	push af                                                  ; $1f36 : $f5
	ld b, $05                                                  ; $1f37 : $06, $05
	call Call_00_233f                                                  ; $1f39 : $cd, $3f, $23
	ld hl, $42e0                                                  ; $1f3c : $21, $e0, $42

br_00_1f3f:
	ld a, (de)                                                  ; $1f3f : $1a
	cp $30                                                  ; $1f40 : $fe, $30
	jr c, br_00_1f4d                                                  ; $1f42 : $38, $09

	cp $3a                                                  ; $1f44 : $fe, $3a
	jr nc, br_00_1f4d                                                  ; $1f46 : $30, $05

	ld (hl), a                                                  ; $1f48 : $77
	inc de                                                  ; $1f49 : $13
	inc hl                                                  ; $1f4a : $23
	jr br_00_1f3f                                                  ; $1f4b : $18, $f2

br_00_1f4d:
	call Call_00_02f8                                                  ; $1f4d : $cd, $f8, $02
	ld hl, $42e0                                                  ; $1f50 : $21, $e0, $42
	call Call_00_2056                                                  ; $1f53 : $cd, $56, $20
	ex de, hl                                                  ; $1f56 : $eb
	call Call_00_1f67                                                  ; $1f57 : $cd, $67, $1f
	pop af                                                  ; $1f5a : $f1
	cpl                                                  ; $1f5b : $2f
	bit 0, a                                                  ; $1f5c : $cb, $47
	call Call_00_2028                                                  ; $1f5e : $cd, $28, $20
	jr br_00_1fa8                                                  ; $1f61 : $18, $45

	nop                                                  ; $1f63 : $00
	jp Jump_00_1f33                                                  ; $1f64 : $c3, $33, $1f


Call_00_1f67:
	ld de, $42c1                                                  ; $1f67 : $11, $c1, $42

br_00_1f6a:
	ld a, (de)                                                  ; $1f6a : $1a
	inc de                                                  ; $1f6b : $13
	cp $a6                                                  ; $1f6c : $fe, $a6
	ret z                                                  ; $1f6e : $c8

	cp $a5                                                  ; $1f6f : $fe, $a5
	ret z                                                  ; $1f71 : $c8

	jr br_00_1f6a                                                  ; $1f72 : $18, $f6

Call_00_1f74:
Jump_00_1f74:
	call Call_00_1fed                                                  ; $1f74 : $cd, $ed, $1f
	push af                                                  ; $1f77 : $f5
	push hl                                                  ; $1f78 : $e5
	call Call_00_02f8                                                  ; $1f79 : $cd, $f8, $02
	pop hl                                                  ; $1f7c : $e1
	call Call_00_2056                                                  ; $1f7d : $cd, $56, $20
	dec de                                                  ; $1f80 : $1b
	ld hl, $42c1                                                  ; $1f81 : $21, $c1, $42

br_00_1f84:
	ld a, (hl)                                                  ; $1f84 : $7e
	cp $2b                                                  ; $1f85 : $fe, $2b
	jr z, br_00_1f90                                                  ; $1f87 : $28, $07

	cp $2d                                                  ; $1f89 : $fe, $2d
	jr z, br_00_1f90                                                  ; $1f8b : $28, $03

	inc hl                                                  ; $1f8d : $23
	jr br_00_1f84                                                  ; $1f8e : $18, $f4

br_00_1f90:
	ld bc, $000b                                                  ; $1f90 : $01, $0b, $00
	ldir                                                  ; $1f93 : $ed, $b0
	pop af                                                  ; $1f95 : $f1
	jr nz, br_00_1f9d                                                  ; $1f96 : $20, $05

	call Call_00_2110                                                  ; $1f98 : $cd, $10, $21
	jr br_00_1fa8                                                  ; $1f9b : $18, $0b

br_00_1f9d:
	call Call_00_1f67                                                  ; $1f9d : $cd, $67, $1f
	ld hl, $4200                                                  ; $1fa0 : $21, $00, $42
	ld bc, $000f                                                  ; $1fa3 : $01, $0f, $00
	ldir                                                  ; $1fa6 : $ed, $b0

Jump_00_1fa8:
br_00_1fa8:
	ld de, $4200                                                  ; $1fa8 : $11, $00, $42
	ld hl, $42c1                                                  ; $1fab : $21, $c1, $42
	ld bc, $0014                                                  ; $1fae : $01, $14, $00
	ldir                                                  ; $1fb1 : $ed, $b0
	call Call_00_1d9d                                                  ; $1fb3 : $cd, $9d, $1d
	ret                                                  ; $1fb6 : $c9


	nop                                                  ; $1fb7 : $00
	nop                                                  ; $1fb8 : $00
	nop                                                  ; $1fb9 : $00
	jp Jump_00_1f74                                                  ; $1fba : $c3, $74, $1f


Call_00_1fbd:
	call Call_00_1fcf                                                  ; $1fbd : $cd, $cf, $1f
	ld de, $4200                                                  ; $1fc0 : $11, $00, $42
	ld hl, $42c1                                                  ; $1fc3 : $21, $c1, $42
	ld bc, $0014                                                  ; $1fc6 : $01, $14, $00
	ldir                                                  ; $1fc9 : $ed, $b0
	call Call_00_1d9d                                                  ; $1fcb : $cd, $9d, $1d
	ret                                                  ; $1fce : $c9


Call_00_1fcf:
	call Call_00_019f                                                  ; $1fcf : $cd, $9f, $01
	bit 1, a                                                  ; $1fd2 : $cb, $4f
	push af                                                  ; $1fd4 : $f5
	call z, Call_00_20ab                                                  ; $1fd5 : $cc, $ab, $20
	pop af                                                  ; $1fd8 : $f1
	call nz, Call_00_20b4                                                  ; $1fd9 : $c4, $b4, $20
	call Call_00_2110                                                  ; $1fdc : $cd, $10, $21

br_00_1fdf:
	call Call_00_20b4                                                  ; $1fdf : $cd, $b4, $20
	ld a, ($4152)                                                  ; $1fe2 : $3a, $52, $41
	cp $a6                                                  ; $1fe5 : $fe, $a6
	jr z, br_00_1fdf                                                  ; $1fe7 : $28, $f6

	call Call_00_20c6                                                  ; $1fe9 : $cd, $c6, $20
	ret                                                  ; $1fec : $c9


Call_00_1fed:
br_00_1fed:
	call Call_00_019f                                                  ; $1fed : $cd, $9f, $01
	bit 0, a                                                  ; $1ff0 : $cb, $47
	push af                                                  ; $1ff2 : $f5
	call z, Call_00_20b4                                                  ; $1ff3 : $cc, $b4, $20
	pop af                                                  ; $1ff6 : $f1
	call nz, Call_00_20b8                                                  ; $1ff7 : $c4, $b8, $20
	ld a, ($4152)                                                  ; $1ffa : $3a, $52, $41
	cp $2b                                                  ; $1ffd : $fe, $2b
	jr z, br_00_1fed                                                  ; $1fff : $28, $ec

	cp $2d                                                  ; $2001 : $fe, $2d
	jr z, br_00_1fed                                                  ; $2003 : $28, $e8

	call Call_00_2110                                                  ; $2005 : $cd, $10, $21
	call Call_00_02f8                                                  ; $2008 : $cd, $f8, $02
	ld hl, $42e0                                                  ; $200b : $21, $e0, $42
	call Call_00_019f                                                  ; $200e : $cd, $9f, $01
	bit 0, a                                                  ; $2011 : $cb, $47
	push af                                                  ; $2013 : $f5
	jr z, br_00_2019                                                  ; $2014 : $28, $03

	ld hl, $42e5                                                  ; $2016 : $21, $e5, $42

br_00_2019:
	call Call_00_2056                                                  ; $2019 : $cd, $56, $20
	pop af                                                  ; $201c : $f1
	push hl                                                  ; $201d : $e5
	push af                                                  ; $201e : $f5
	ex de, hl                                                  ; $201f : $eb

Jump_00_2020:
	ld de, $42c1                                                  ; $2020 : $11, $c1, $42
	call Call_00_20bc                                                  ; $2023 : $cd, $bc, $20
	pop af                                                  ; $2026 : $f1
	pop bc                                                  ; $2027 : $c1

Call_00_2028:
	push bc                                                  ; $2028 : $c5
	push af                                                  ; $2029 : $f5
	jr nz, br_00_203b                                                  ; $202a : $20, $0f

	inc hl                                                  ; $202c : $23
	push hl                                                  ; $202d : $e5
	dec hl                                                  ; $202e : $2b
	dec de                                                  ; $202f : $1b
	ld bc, $000c                                                  ; $2030 : $01, $0c, $00
	ex de, hl                                                  ; $2033 : $eb
	ldir                                                  ; $2034 : $ed, $b0
	call Call_00_2110                                                  ; $2036 : $cd, $10, $21
	jr br_00_2044                                                  ; $2039 : $18, $09

br_00_203b:
	ld hl, $4200                                                  ; $203b : $21, $00, $42
	push hl                                                  ; $203e : $e5
	ld bc, $000f                                                  ; $203f : $01, $0f, $00
	ldir                                                  ; $2042 : $ed, $b0

br_00_2044:
	ld de, $4200                                                  ; $2044 : $11, $00, $42
	ld hl, $42c1                                                  ; $2047 : $21, $c1, $42
	ld bc, $0014                                                  ; $204a : $01, $14, $00
	ldir                                                  ; $204d : $ed, $b0
	call Call_00_1d9d                                                  ; $204f : $cd, $9d, $1d
	pop de                                                  ; $2052 : $d1
	pop af                                                  ; $2053 : $f1
	pop hl                                                  ; $2054 : $e1
	ret                                                  ; $2055 : $c9


Call_00_2056:
	ld de, $4200                                                  ; $2056 : $11, $00, $42
	call Call_00_1de7                                                  ; $2059 : $cd, $e7, $1d
	push de                                                  ; $205c : $d5
	call Call_00_019f                                                  ; $205d : $cd, $9f, $01
	bit 0, a                                                  ; $2060 : $cb, $47
	push af                                                  ; $2062 : $f5
	call z, Call_00_21dc                                                  ; $2063 : $cc, $dc, $21
	pop af                                                  ; $2066 : $f1
	call nz, Call_00_220c                                                  ; $2067 : $c4, $0c, $22
	ld hl, $42e0                                                  ; $206a : $21, $e0, $42
	ld de, $42e5                                                  ; $206d : $11, $e5, $42
	call Call_00_019f                                                  ; $2070 : $cd, $9f, $01
	bit 1, a                                                  ; $2073 : $cb, $4f
	jr z, br_00_2078                                                  ; $2075 : $28, $01

	ex de, hl                                                  ; $2077 : $eb

br_00_2078:
	pop de                                                  ; $2078 : $d1
	push hl                                                  ; $2079 : $e5
	ld a, $2d                                                  ; $207a : $3e, $2d
	ld (de), a                                                  ; $207c : $12
	inc de                                                  ; $207d : $13
	call Call_00_1de7                                                  ; $207e : $cd, $e7, $1d
	ld a, $3d                                                  ; $2081 : $3e, $3d
	ld (de), a                                                  ; $2083 : $12
	call Call_00_1d9d                                                  ; $2084 : $cd, $9d, $1d
	pop hl                                                  ; $2087 : $e1
	push hl                                                  ; $2088 : $e5
	ld de, $4200                                                  ; $2089 : $11, $00, $42
	ld a, $28                                                  ; $208c : $3e, $28
	ld (de), a                                                  ; $208e : $12
	inc de                                                  ; $208f : $13
	call Call_00_1de7                                                  ; $2090 : $cd, $e7, $1d
	ld hl, $42b0                                                  ; $2093 : $21, $b0, $42
	ld a, (hl)                                                  ; $2096 : $7e
	cp $2d                                                  ; $2097 : $fe, $2d
	jr z, br_00_209f                                                  ; $2099 : $28, $04

	ld a, $2b                                                  ; $209b : $3e, $2b
	ld (de), a                                                  ; $209d : $12
	inc de                                                  ; $209e : $13

br_00_209f:
	call Call_00_1df0                                                  ; $209f : $cd, $f0, $1d
	ld a, $29                                                  ; $20a2 : $3e, $29
	ld (de), a                                                  ; $20a4 : $12
	inc de                                                  ; $20a5 : $13
	ld a, $3d                                                  ; $20a6 : $3e, $3d
	ld (de), a                                                  ; $20a8 : $12
	pop hl                                                  ; $20a9 : $e1
	ret                                                  ; $20aa : $c9


Call_00_20ab:
	ld a, $01                                                  ; $20ab : $3e, $01

br_00_20ad:
	ld ($4117), a                                                  ; $20ad : $32, $17, $41
	call Call_00_211c                                                  ; $20b0 : $cd, $1c, $21
	ret                                                  ; $20b3 : $c9


Call_00_20b4:
	ld a, $02                                                  ; $20b4 : $3e, $02
	jr br_00_20ad                                                  ; $20b6 : $18, $f5

Call_00_20b8:
	ld a, $04                                                  ; $20b8 : $3e, $04
	jr br_00_20ad                                                  ; $20ba : $18, $f1

Call_00_20bc:
br_00_20bc:
	ld a, (de)                                                  ; $20bc : $1a
	inc de                                                  ; $20bd : $13
	cp $30                                                  ; $20be : $fe, $30
	ret c                                                  ; $20c0 : $d8

	cp $3a                                                  ; $20c1 : $fe, $3a
	jr c, br_00_20bc                                                  ; $20c3 : $38, $f7

	ret                                                  ; $20c5 : $c9


Call_00_20c6:
	ld de, $4200                                                  ; $20c6 : $11, $00, $42
	call Call_00_20bc                                                  ; $20c9 : $cd, $bc, $20
	call Call_00_019f                                                  ; $20cc : $cd, $9f, $01
	bit 0, a                                                  ; $20cf : $cb, $47
	jr z, br_00_20df                                                  ; $20d1 : $28, $0c

	ld hl, $42c1                                                  ; $20d3 : $21, $c1, $42
	ld bc, $0014                                                  ; $20d6 : $01, $14, $00
	ldir                                                  ; $20d9 : $ed, $b0
	call Call_00_2110                                                  ; $20db : $cd, $10, $21
	ret                                                  ; $20de : $c9


br_00_20df:
	dec de                                                  ; $20df : $1b
	ex de, hl                                                  ; $20e0 : $eb
	ld de, $42c1                                                  ; $20e1 : $11, $c1, $42

br_00_20e4:
	ld a, (de)                                                  ; $20e4 : $1a
	inc de                                                  ; $20e5 : $13
	cp $3d                                                  ; $20e6 : $fe, $3d
	jr nz, br_00_20e4                                                  ; $20e8 : $20, $fa

	dec de                                                  ; $20ea : $1b
	ld bc, $0007                                                  ; $20eb : $01, $07, $00
	ldir                                                  ; $20ee : $ed, $b0
	ret                                                  ; $20f0 : $c9


Call_00_20f1:
	ld b, $10                                                  ; $20f1 : $06, $10
	ld hl, $42b0                                                  ; $20f3 : $21, $b0, $42
	ld a, $20                                                  ; $20f6 : $3e, $20

br_00_20f8:
	ld (hl), a                                                  ; $20f8 : $77
	inc hl                                                  ; $20f9 : $23
	djnz br_00_20f8                                                  ; $20fa : $10, $fc
	ret                                                  ; $20fc : $c9


Call_00_20fd:
	ld a, $35                                                  ; $20fd : $3e, $35
	ld ($4119), a                                                  ; $20ff : $32, $19, $41
	ld hl, $4155                                                  ; $2102 : $21, $55, $41
	set 0, (hl)                                                  ; $2105 : $cb, $c6
	set 4, (hl)                                                  ; $2107 : $cb, $e6
	ld hl, $28aa                                                  ; $2109 : $21, $aa, $28
	call Call_00_10fa                                                  ; $210c : $cd, $fa, $10
	ret                                                  ; $210f : $c9


Call_00_2110:
	ld de, $42c1                                                  ; $2110 : $11, $c1, $42
	ld hl, $4200                                                  ; $2113 : $21, $00, $42
	ld bc, $0014                                                  ; $2116 : $01, $14, $00
	ldir                                                  ; $2119 : $ed, $b0
	ret                                                  ; $211b : $c9


Call_00_211c:
	call Call_00_02f8                                                  ; $211c : $cd, $f8, $02
	call Call_00_02d7                                                  ; $211f : $cd, $d7, $02
	call Call_00_1d08                                                  ; $2122 : $cd, $08, $1d
	cp $02                                                  ; $2125 : $fe, $02
	jr c, br_00_2152                                                  ; $2127 : $38, $29

	push af                                                  ; $2129 : $f5
	ld a, ($4117)                                                  ; $212a : $3a, $17, $41
	cp $04                                                  ; $212d : $fe, $04
	push af                                                  ; $212f : $f5
	call z, Call_00_219c                                                  ; $2130 : $cc, $9c, $21
	pop af                                                  ; $2133 : $f1
	cp $03                                                  ; $2134 : $fe, $03
	push af                                                  ; $2136 : $f5
	call z, Call_00_21a6                                                  ; $2137 : $cc, $a6, $21
	pop af                                                  ; $213a : $f1
	cp $02                                                  ; $213b : $fe, $02
	push af                                                  ; $213d : $f5
	call z, Call_00_2192                                                  ; $213e : $cc, $92, $21
	pop af                                                  ; $2141 : $f1
	cp $01                                                  ; $2142 : $fe, $01
	call z, Call_00_2188                                                  ; $2144 : $cc, $88, $21
	pop af                                                  ; $2147 : $f1
	push af                                                  ; $2148 : $f5
	call z, Call_00_1d29                                                  ; $2149 : $cc, $29, $1d
	pop af                                                  ; $214c : $f1
	call nz, Call_00_1d32                                                  ; $214d : $c4, $32, $1d
	jr br_00_2187                                                  ; $2150 : $18, $35

br_00_2152:
	push af                                                  ; $2152 : $f5
	ld a, ($4117)                                                  ; $2153 : $3a, $17, $41
	cp $04                                                  ; $2156 : $fe, $04
	push af                                                  ; $2158 : $f5
	call z, Call_00_21ba                                                  ; $2159 : $cc, $ba, $21
	pop af                                                  ; $215c : $f1
	cp $03                                                  ; $215d : $fe, $03
	push af                                                  ; $215f : $f5
	call z, Call_00_21b0                                                  ; $2160 : $cc, $b0, $21
	pop af                                                  ; $2163 : $f1
	cp $02                                                  ; $2164 : $fe, $02
	push af                                                  ; $2166 : $f5
	call z, Call_00_219c                                                  ; $2167 : $cc, $9c, $21
	pop af                                                  ; $216a : $f1
	cp $01                                                  ; $216b : $fe, $01
	jr nz, br_00_217c                                                  ; $216d : $20, $0d

	call Call_00_019f                                                  ; $216f : $cd, $9f, $01
	bit 2, a                                                  ; $2172 : $cb, $57
	push af                                                  ; $2174 : $f5
	call nz, Call_00_2192                                                  ; $2175 : $c4, $92, $21
	pop af                                                  ; $2178 : $f1
	call z, Call_00_2188                                                  ; $2179 : $cc, $88, $21

br_00_217c:
	pop af                                                  ; $217c : $f1
	cp $00                                                  ; $217d : $fe, $00
	push af                                                  ; $217f : $f5
	call nz, Call_00_1d12                                                  ; $2180 : $c4, $12, $1d
	pop af                                                  ; $2183 : $f1
	call z, Call_00_1d19                                                  ; $2184 : $cc, $19, $1d

br_00_2187:
	ret                                                  ; $2187 : $c9


Call_00_2188:
	ld a, ($4118)                                                  ; $2188 : $3a, $18, $41
	bit 1, a                                                  ; $218b : $cb, $4f
	jr z, br_00_21c4                                                  ; $218d : $28, $35

	jp Jump_00_2237                                                  ; $218f : $c3, $37, $22


Call_00_2192:
	ld a, ($4118)                                                  ; $2192 : $3a, $18, $41
	bit 1, a                                                  ; $2195 : $cb, $4f
	jr z, br_00_21dc                                                  ; $2197 : $28, $43

	jp Jump_00_2255                                                  ; $2199 : $c3, $55, $22


Call_00_219c:
	ld a, ($4118)                                                  ; $219c : $3a, $18, $41
	bit 1, a                                                  ; $219f : $cb, $4f
	jr z, br_00_21ec                                                  ; $21a1 : $28, $49

	jp Jump_00_226a                                                  ; $21a3 : $c3, $6a, $22


Call_00_21a6:
	ld a, ($4118)                                                  ; $21a6 : $3a, $18, $41
	bit 1, a                                                  ; $21a9 : $cb, $4f
	jr z, br_00_21fc                                                  ; $21ab : $28, $4f

	jp Jump_00_227a                                                  ; $21ad : $c3, $7a, $22


Call_00_21b0:
	ld a, ($4118)                                                  ; $21b0 : $3a, $18, $41
	bit 1, a                                                  ; $21b3 : $cb, $4f
	jr z, br_00_220c                                                  ; $21b5 : $28, $55

	jp Jump_00_228f                                                  ; $21b7 : $c3, $8f, $22


Call_00_21ba:
	ld a, ($4118)                                                  ; $21ba : $3a, $18, $41
	bit 1, a                                                  ; $21bd : $cb, $4f
	jr z, br_00_2213                                                  ; $21bf : $28, $52

	jp Jump_00_229f                                                  ; $21c1 : $c3, $9f, $22


Call_00_21c4:
br_00_21c4:
	call Call_00_233d                                                  ; $21c4 : $cd, $3d, $23
	call Call_00_2223                                                  ; $21c7 : $cd, $23, $22
	cp $30                                                  ; $21ca : $fe, $30
	jr z, br_00_21c4                                                  ; $21cc : $28, $f6

	ld ($42e4), a                                                  ; $21ce : $32, $e4, $42
	call Call_00_2223                                                  ; $21d1 : $cd, $23, $22
	cp $30                                                  ; $21d4 : $fe, $30
	jr z, br_00_21c4                                                  ; $21d6 : $28, $ec

	ld ($42e9), a                                                  ; $21d8 : $32, $e9, $42
	ret                                                  ; $21db : $c9


Call_00_21dc:
br_00_21dc:
	call Call_00_21c4                                                  ; $21dc : $cd, $c4, $21
	ld a, ($42e4)                                                  ; $21df : $3a, $e4, $42
	ld ($42e3), a                                                  ; $21e2 : $32, $e3, $42
	call Call_00_2223                                                  ; $21e5 : $cd, $23, $22
	ld ($42e4), a                                                  ; $21e8 : $32, $e4, $42
	ret                                                  ; $21eb : $c9


Call_00_21ec:
br_00_21ec:
	call Call_00_21dc                                                  ; $21ec : $cd, $dc, $21
	ld a, ($42e9)                                                  ; $21ef : $3a, $e9, $42
	ld ($42e8), a                                                  ; $21f2 : $32, $e8, $42
	call Call_00_2223                                                  ; $21f5 : $cd, $23, $22
	ld ($42e9), a                                                  ; $21f8 : $32, $e9, $42
	ret                                                  ; $21fb : $c9


Call_00_21fc:
br_00_21fc:
	call Call_00_21dc                                                  ; $21fc : $cd, $dc, $21

Call_00_21ff:
	ld a, ($42e3)                                                  ; $21ff : $3a, $e3, $42
	ld ($42e2), a                                                  ; $2202 : $32, $e2, $42
	call Call_00_2223                                                  ; $2205 : $cd, $23, $22
	ld ($42e3), a                                                  ; $2208 : $32, $e3, $42
	ret                                                  ; $220b : $c9


Call_00_220c:
br_00_220c:
	call Call_00_21ec                                                  ; $220c : $cd, $ec, $21
	call Call_00_21ff                                                  ; $220f : $cd, $ff, $21
	ret                                                  ; $2212 : $c9


br_00_2213:
	call Call_00_220c                                                  ; $2213 : $cd, $0c, $22
	ld a, ($42e8)                                                  ; $2216 : $3a, $e8, $42
	ld ($42e7), a                                                  ; $2219 : $32, $e7, $42
	call Call_00_2223                                                  ; $221c : $cd, $23, $22
	ld ($42e8), a                                                  ; $221f : $32, $e8, $42
	ret                                                  ; $2222 : $c9


Call_00_2223:
br_00_2223:
	nop                                                  ; $2223 : $00
	djnz br_00_2223                                                  ; $2224 : $10, $fd
	call Call_00_019f                                                  ; $2226 : $cd, $9f, $01
	ld b, a                                                  ; $2229 : $47

br_00_222a:
	cp $0a                                                  ; $222a : $fe, $0a
	jr c, br_00_2232                                                  ; $222c : $38, $04

	sub $0a                                                  ; $222e : $d6, $0a
	jr br_00_222a                                                  ; $2230 : $18, $f8

br_00_2232:
	set 4, a                                                  ; $2232 : $cb, $e7
	set 5, a                                                  ; $2234 : $cb, $ef
	ret                                                  ; $2236 : $c9


Call_00_2237:
Jump_00_2237:
	call Call_00_22c5                                                  ; $2237 : $cd, $c5, $22
	call Call_00_22d0                                                  ; $223a : $cd, $d0, $22
	call Call_00_21c4                                                  ; $223d : $cd, $c4, $21
	ld de, $428d                                                  ; $2240 : $11, $8d, $42
	call Call_00_22d5                                                  ; $2243 : $cd, $d5, $22
	call Call_00_21c4                                                  ; $2246 : $cd, $c4, $21
	ld hl, $42e9                                                  ; $2249 : $21, $e9, $42
	res 1, (hl)                                                  ; $224c : $cb, $8e
	ld de, $4288                                                  ; $224e : $11, $88, $42
	call Call_00_22d5                                                  ; $2251 : $cd, $d5, $22
	ret                                                  ; $2254 : $c9


Call_00_2255:
Jump_00_2255:
	call Call_00_2237                                                  ; $2255 : $cd, $37, $22
	call Call_00_22c5                                                  ; $2258 : $cd, $c5, $22
	call Call_00_22af                                                  ; $225b : $cd, $af, $22
	ld hl, $42e9                                                  ; $225e : $21, $e9, $42
	res 3, (hl)                                                  ; $2261 : $cb, $9e
	ld de, $4288                                                  ; $2263 : $11, $88, $42
	call Call_00_22e8                                                  ; $2266 : $cd, $e8, $22
	ret                                                  ; $2269 : $c9


Jump_00_226a:
	call Call_00_2255                                                  ; $226a : $cd, $55, $22
	call Call_00_22d0                                                  ; $226d : $cd, $d0, $22
	call Call_00_22af                                                  ; $2270 : $cd, $af, $22
	ld de, $428d                                                  ; $2273 : $11, $8d, $42
	call Call_00_22e8                                                  ; $2276 : $cd, $e8, $22
	ret                                                  ; $2279 : $c9


Call_00_227a:
Jump_00_227a:
	call Call_00_2237                                                  ; $227a : $cd, $37, $22
	call Call_00_22c5                                                  ; $227d : $cd, $c5, $22
	call Call_00_22ba                                                  ; $2280 : $cd, $ba, $22
	ld hl, $42e9                                                  ; $2283 : $21, $e9, $42
	res 3, (hl)                                                  ; $2286 : $cb, $9e
	ld de, $4288                                                  ; $2288 : $11, $88, $42
	call Call_00_2309                                                  ; $228b : $cd, $09, $23
	ret                                                  ; $228e : $c9


Jump_00_228f:
	call Call_00_227a                                                  ; $228f : $cd, $7a, $22
	call Call_00_22d0                                                  ; $2292 : $cd, $d0, $22
	call Call_00_22af                                                  ; $2295 : $cd, $af, $22
	ld de, $428d                                                  ; $2298 : $11, $8d, $42
	call Call_00_22e8                                                  ; $229b : $cd, $e8, $22
	ret                                                  ; $229e : $c9


Jump_00_229f:
	call Call_00_227a                                                  ; $229f : $cd, $7a, $22
	call Call_00_22d0                                                  ; $22a2 : $cd, $d0, $22
	call Call_00_22ba                                                  ; $22a5 : $cd, $ba, $22
	ld de, $428d                                                  ; $22a8 : $11, $8d, $42
	call Call_00_2309                                                  ; $22ab : $cd, $09, $23
	ret                                                  ; $22ae : $c9


Call_00_22af:
br_00_22af:
	call Call_00_21dc                                                  ; $22af : $cd, $dc, $21
	ld a, ($42e4)                                                  ; $22b2 : $3a, $e4, $42
	cp $30                                                  ; $22b5 : $fe, $30
	jr z, br_00_22af                                                  ; $22b7 : $28, $f6

	ret                                                  ; $22b9 : $c9


Call_00_22ba:
br_00_22ba:
	call Call_00_21fc                                                  ; $22ba : $cd, $fc, $21
	ld a, ($42e4)                                                  ; $22bd : $3a, $e4, $42
	cp $30                                                  ; $22c0 : $fe, $30
	jr z, br_00_22ba                                                  ; $22c2 : $28, $f6

	ret                                                  ; $22c4 : $c9


Call_00_22c5:
	ld hl, $4284                                                  ; $22c5 : $21, $84, $42

br_00_22c8:
	ld b, $05                                                  ; $22c8 : $06, $05

br_00_22ca:
	ld (hl), $20                                                  ; $22ca : $36, $20
	inc hl                                                  ; $22cc : $23
	djnz br_00_22ca                                                  ; $22cd : $10, $fb
	ret                                                  ; $22cf : $c9


Call_00_22d0:
	ld hl, $4289                                                  ; $22d0 : $21, $89, $42
	jr br_00_22c8                                                  ; $22d3 : $18, $f3

Call_00_22d5:
	ld a, ($42e4)                                                  ; $22d5 : $3a, $e4, $42
	ld (de), a                                                  ; $22d8 : $12
	dec de                                                  ; $22d9 : $1b
	ld hl, $42e9                                                  ; $22da : $21, $e9, $42
	bit 1, (hl)                                                  ; $22dd : $cb, $4e
	ret nz                                                  ; $22df : $c0

Call_00_22e0:
	ld a, $2e                                                  ; $22e0 : $3e, $2e
	ld (de), a                                                  ; $22e2 : $12
	dec de                                                  ; $22e3 : $1b
	ld a, $30                                                  ; $22e4 : $3e, $30
	ld (de), a                                                  ; $22e6 : $12
	ret                                                  ; $22e7 : $c9


Call_00_22e8:
	ld a, ($42e4)                                                  ; $22e8 : $3a, $e4, $42
	ld (de), a                                                  ; $22eb : $12
	dec de                                                  ; $22ec : $1b
	ld hl, $42e9                                                  ; $22ed : $21, $e9, $42
	bit 3, (hl)                                                  ; $22f0 : $cb, $5e
	jr nz, br_00_22fc                                                  ; $22f2 : $20, $08

	bit 1, (hl)                                                  ; $22f4 : $cb, $4e
	jr nz, br_00_2301                                                  ; $22f6 : $20, $09

Call_00_22f8:
	ld a, $2e                                                  ; $22f8 : $3e, $2e
	ld (de), a                                                  ; $22fa : $12
	dec de                                                  ; $22fb : $1b

Call_00_22fc:
br_00_22fc:
	ld a, ($42e3)                                                  ; $22fc : $3a, $e3, $42
	ld (de), a                                                  ; $22ff : $12
	ret                                                  ; $2300 : $c9


br_00_2301:
	dec de                                                  ; $2301 : $1b
	call Call_00_22e0                                                  ; $2302 : $cd, $e0, $22
	inc de                                                  ; $2305 : $13
	inc de                                                  ; $2306 : $13
	jr br_00_22fc                                                  ; $2307 : $18, $f3

Call_00_2309:
	ld a, ($42e4)                                                  ; $2309 : $3a, $e4, $42
	ld (de), a                                                  ; $230c : $12
	dec de                                                  ; $230d : $1b
	ld hl, $42e9                                                  ; $230e : $21, $e9, $42
	bit 3, (hl)                                                  ; $2311 : $cb, $5e
	jr nz, br_00_2338                                                  ; $2313 : $20, $23

	bit 0, (hl)                                                  ; $2315 : $cb, $46
	jr nz, br_00_231e                                                  ; $2317 : $20, $05

	call Call_00_22f8                                                  ; $2319 : $cd, $f8, $22
	jr br_00_232a                                                  ; $231c : $18, $0c

br_00_231e:
	ld a, ($42e3)                                                  ; $231e : $3a, $e3, $42
	ld (de), a                                                  ; $2321 : $12
	dec de                                                  ; $2322 : $1b
	bit 1, (hl)                                                  ; $2323 : $cb, $4e
	jr nz, br_00_2330                                                  ; $2325 : $20, $09

	ld a, $2e                                                  ; $2327 : $3e, $2e
	ld (de), a                                                  ; $2329 : $12

br_00_232a:
	dec de                                                  ; $232a : $1b

br_00_232b:
	ld a, ($42e2)                                                  ; $232b : $3a, $e2, $42
	ld (de), a                                                  ; $232e : $12
	ret                                                  ; $232f : $c9


br_00_2330:
	dec de                                                  ; $2330 : $1b
	call Call_00_22e0                                                  ; $2331 : $cd, $e0, $22
	inc de                                                  ; $2334 : $13
	inc de                                                  ; $2335 : $13
	jr br_00_232b                                                  ; $2336 : $18, $f3

br_00_2338:
	call Call_00_22fc                                                  ; $2338 : $cd, $fc, $22
	jr br_00_232a                                                  ; $233b : $18, $ed

Call_00_233d:
	ld b, $0a                                                  ; $233d : $06, $0a

Call_00_233f:
	ld a, $20                                                  ; $233f : $3e, $20
	ld hl, $42e0                                                  ; $2341 : $21, $e0, $42

br_00_2344:
	ld (hl), a                                                  ; $2344 : $77
	inc hl                                                  ; $2345 : $23
	djnz br_00_2344                                                  ; $2346 : $10, $fc
	ret                                                  ; $2348 : $c9


Call_00_2349:
	call Call_00_20f1                                                  ; $2349 : $cd, $f1, $20
	call Call_00_02d7                                                  ; $234c : $cd, $d7, $02
	ld a, ($4154)                                                  ; $234f : $3a, $54, $41
	ld hl, $42c1                                                  ; $2352 : $21, $c1, $42
	call AddAtoHL                                                  ; $2355 : $cd, $99, $01
	ld a, (hl)                                                  ; $2358 : $7e
	sla a                                                  ; $2359 : $cb, $27
	ld hl, ($4152)                                                  ; $235b : $2a, $52, $41
	call AddAtoHL                                                  ; $235e : $cd, $99, $01
	ld e, (hl)                                                  ; $2361 : $5e
	inc hl                                                  ; $2362 : $23
	ld d, (hl)                                                  ; $2363 : $56
	ex de, hl                                                  ; $2364 : $eb
	ld a, $01                                                  ; $2365 : $3e, $01
	ld ($4116), a                                                  ; $2367 : $32, $16, $41
	ld de, $4180                                                  ; $236a : $11, $80, $41

br_00_236d:
	call Call_00_238e                                                  ; $236d : $cd, $8e, $23
	bit 1, d                                                  ; $2370 : $cb, $4a
	jr z, br_00_236d                                                  ; $2372 : $28, $f9

	ret                                                  ; $2374 : $c9


Call_00_2375:
	call Call_00_02f8                                                  ; $2375 : $cd, $f8, $02
	ld hl, $4200                                                  ; $2378 : $21, $00, $42
	ld a, $0b                                                  ; $237b : $3e, $0b
	ld ($4116), a                                                  ; $237d : $32, $16, $41
	ld b, a                                                  ; $2380 : $47
	xor a                                                  ; $2381 : $af

br_00_2382:
	ld (hl), a                                                  ; $2382 : $77
	inc hl                                                  ; $2383 : $23
	inc a                                                  ; $2384 : $3c
	djnz br_00_2382                                                  ; $2385 : $10, $fb
	call Call_00_14d9                                                  ; $2387 : $cd, $d9, $14
	call Call_00_1778                                                  ; $238a : $cd, $78, $17
	ret                                                  ; $238d : $c9


Call_00_238e:
	ld b, (hl)                                                  ; $238e : $46
	ld a, ($4116)                                                  ; $238f : $3a, $16, $41
	add a, b                                                  ; $2392 : $80
	ld ($4116), a                                                  ; $2393 : $32, $16, $41
	inc hl                                                  ; $2396 : $23

br_00_2397:
	ld a, (hl)                                                  ; $2397 : $7e
	cp $61                                                  ; $2398 : $fe, $61
	jr c, br_00_23a2                                                  ; $239a : $38, $06

	cp $7b                                                  ; $239c : $fe, $7b
	jr nc, br_00_23a2                                                  ; $239e : $30, $02

	res 5, a                                                  ; $23a0 : $cb, $af

br_00_23a2:
	ld (de), a                                                  ; $23a2 : $12
	inc hl                                                  ; $23a3 : $23
	inc de                                                  ; $23a4 : $13
	djnz br_00_2397                                                  ; $23a5 : $10, $f0
	ld a, (hl)                                                  ; $23a7 : $7e
	or a                                                  ; $23a8 : $b7
	jr nz, br_00_23b7                                                  ; $23a9 : $20, $0c

	inc hl                                                  ; $23ab : $23
	ld a, (hl)                                                  ; $23ac : $7e
	or a                                                  ; $23ad : $b7
	jr nz, br_00_23b6                                                  ; $23ae : $20, $06

	inc hl                                                  ; $23b0 : $23
	ld de, $42b0                                                  ; $23b1 : $11, $b0, $42
	jr br_00_23b7                                                  ; $23b4 : $18, $01

br_00_23b6:
	dec hl                                                  ; $23b6 : $2b

br_00_23b7:
	push de                                                  ; $23b7 : $d5
	ld e, (hl)                                                  ; $23b8 : $5e
	inc hl                                                  ; $23b9 : $23
	ld d, (hl)                                                  ; $23ba : $56
	inc hl                                                  ; $23bb : $23
	ld b, (hl)                                                  ; $23bc : $46
	jr z, br_00_23c6                                                  ; $23bd : $28, $07

	ld a, ($4116)                                                  ; $23bf : $3a, $16, $41
	add a, b                                                  ; $23c2 : $80
	ld ($4116), a                                                  ; $23c3 : $32, $16, $41

br_00_23c6:
	ld a, ($4159)                                                  ; $23c6 : $3a, $59, $41
	dec b                                                  ; $23c9 : $05
	ld c, a                                                  ; $23ca : $4f

br_00_23cb:
	add a, c                                                  ; $23cb : $81
	djnz br_00_23cb                                                  ; $23cc : $10, $fd
	srl a                                                  ; $23ce : $cb, $3f
	ld b, (hl)                                                  ; $23d0 : $46
	inc hl                                                  ; $23d1 : $23
	ex (sp), hl                                                  ; $23d2 : $e3
	push af                                                  ; $23d3 : $f5
	ex de, hl                                                  ; $23d4 : $eb
	call AddAtoHL                                                  ; $23d5 : $cd, $99, $01
	pop af                                                  ; $23d8 : $f1
	ld a, (hl)                                                  ; $23d9 : $7e
	ld ($415a), a                                                  ; $23da : $32, $5a, $41
	ld a, $30                                                  ; $23dd : $3e, $30
	ld c, $00                                                  ; $23df : $0e, $00
	jr nc, br_00_23ec                                                  ; $23e1 : $30, $09

	set 0, c                                                  ; $23e3 : $cb, $c1
	push hl                                                  ; $23e5 : $e5
	ld hl, $415a                                                  ; $23e6 : $21, $5a, $41
	rld                                                  ; $23e9 : $ed, $6f
	pop hl                                                  ; $23eb : $e1

br_00_23ec:
	push hl                                                  ; $23ec : $e5
	ld hl, $415a                                                  ; $23ed : $21, $5a, $41
	rld                                                  ; $23f0 : $ed, $6f
	cp $3f                                                  ; $23f2 : $fe, $3f
	jr z, br_00_2404                                                  ; $23f4 : $28, $0e

	cp $3a                                                  ; $23f6 : $fe, $3a
	jr nz, br_00_23fc                                                  ; $23f8 : $20, $02

	ld a, $2f                                                  ; $23fa : $3e, $2f

br_00_23fc:
	cp $3e                                                  ; $23fc : $fe, $3e
	jr nz, br_00_2402                                                  ; $23fe : $20, $02

	res 4, a                                                  ; $2400 : $cb, $a7

br_00_2402:
	ld (de), a                                                  ; $2402 : $12
	inc de                                                  ; $2403 : $13

br_00_2404:
	pop hl                                                  ; $2404 : $e1
	bit 0, c                                                  ; $2405 : $cb, $41
	jr nz, br_00_240d                                                  ; $2407 : $20, $04

	set 0, c                                                  ; $2409 : $cb, $c1
	jr br_00_2414                                                  ; $240b : $18, $07

br_00_240d:
	inc hl                                                  ; $240d : $23
	ld a, (hl)                                                  ; $240e : $7e
	ld ($415a), a                                                  ; $240f : $32, $5a, $41
	ld c, $00                                                  ; $2412 : $0e, $00

br_00_2414:
	ld a, $30                                                  ; $2414 : $3e, $30
	djnz br_00_23ec                                                  ; $2416 : $10, $d4
	pop hl                                                  ; $2418 : $e1
	ret                                                  ; $2419 : $c9


	add a, $cb                                                  ; $241a : $c6, $cb
	adc a, $21                                                  ; $241c : $ce, $21
	ld h, (hl)                                                  ; $241e : $66
	ld h, $cd                                                  ; $241f : $26, $cd
	sbc a, l                                                  ; $2421 : $9d
	inc h                                                  ; $2422 : $24
	ld hl, $2679                                                  ; $2423 : $21, $79, $26
	call Call_00_249d                                                  ; $2426 : $cd, $9d, $24
	ld hl, $2653                                                  ; $2429 : $21, $53, $26
	call Call_00_0386                                                  ; $242c : $cd, $86, $03
	call Call_00_24ac                                                  ; $242f : $cd, $ac, $24
	call Call_00_04f2                                                  ; $2432 : $cd, $f2, $04
	call Call_00_0af5                                                  ; $2435 : $cd, $f5, $0a
	call Call_00_24ac                                                  ; $2438 : $cd, $ac, $24

Jump_00_243b:
	ld hl, $4155                                                  ; $243b : $21, $55, $41
	ld (hl), $00                                                  ; $243e : $36, $00
	cp $02                                                  ; $2440 : $fe, $02
	jp z, Jump_00_2479                                                  ; $2442 : $ca, $79, $24
	ld ($4060), a                                                  ; $2445 : $32, $60, $40
	ld hl, $268a                                                  ; $2448 : $21, $8a, $26
	call Call_00_03ab                                                  ; $244b : $cd, $ab, $03
	call Call_00_03dd                                                  ; $244e : $cd, $dd, $03
	ld a, $3a                                                  ; $2451 : $3e, $3a
	ld ($4119), a                                                  ; $2453 : $32, $19, $41
	ld hl, $4155                                                  ; $2456 : $21, $55, $41
	set 0, (hl)                                                  ; $2459 : $cb, $c6
	ld hl, $26aa                                                  ; $245b : $21, $aa, $26
	call Call_00_0386                                                  ; $245e : $cd, $86, $03
	ld hl, $4155                                                  ; $2461 : $21, $55, $41
	bit 2, (hl)                                                  ; $2464 : $cb, $56
	push af                                                  ; $2466 : $f5
	call z, Call_00_04f2                                                  ; $2467 : $cc, $f2, $04
	pop af                                                  ; $246a : $f1
	call z, Call_00_0af5                                                  ; $246b : $cc, $f5, $0a
	ld hl, $4155                                                  ; $246e : $21, $55, $41
	ld (hl), $00                                                  ; $2471 : $36, $00
	ld ($4061), a                                                  ; $2473 : $32, $61, $40
	jp Jump_00_2483                                                  ; $2476 : $c3, $83, $24


Jump_00_2479:
	xor a                                                  ; $2479 : $af
	ld ($4060), a                                                  ; $247a : $32, $60, $40
	ld hl, $269b                                                  ; $247d : $21, $9b, $26
	call Call_00_03ab                                                  ; $2480 : $cd, $ab, $03

Jump_00_2483:
	call Call_00_03dd                                                  ; $2483 : $cd, $dd, $03
	ld de, $2c2f                                                  ; $2486 : $11, $2f, $2c
	call Call_00_0782                                                  ; $2489 : $cd, $82, $07
	call Call_00_03dd                                                  ; $248c : $cd, $dd, $03
	ld de, $4000                                                  ; $248f : $11, $00, $40
	ld hl, $2c63                                                  ; $2492 : $21, $63, $2c
	ld bc, $0030                                                  ; $2495 : $01, $30, $00
	ldir                                                  ; $2498 : $ed, $b0
	jp $4000                                                  ; $249a : $c3, $00, $40


Call_00_249d:
	call Call_00_0386                                                  ; $249d : $cd, $86, $03
	ld hl, $4155                                                  ; $24a0 : $21, $55, $41
	bit 2, (hl)                                                  ; $24a3 : $cb, $56
	jr nz, br_00_24b7                                                  ; $24a5 : $20, $10

	bit 1, (hl)                                                  ; $24a7 : $cb, $4e
	call nz, Call_00_03dd                                                  ; $24a9 : $c4, $dd, $03

Call_00_24ac:
	ld hl, $4155                                                  ; $24ac : $21, $55, $41
	bit 1, (hl)                                                  ; $24af : $cb, $4e
	jr nz, br_00_24b7                                                  ; $24b1 : $20, $04

	pop de                                                  ; $24b3 : $d1
	jp $240c                                                  ; $24b4 : $c3, $0c, $24


br_00_24b7:
	bit 2, (hl)                                                  ; $24b7 : $cb, $56
	ret z                                                  ; $24b9 : $c8

	pop de                                                  ; $24ba : $d1
	jp Jump_00_243b                                                  ; $24bb : $c3, $3b, $24


	nop                                                  ; $24be : $00
	nop                                                  ; $24bf : $00
	nop                                                  ; $24c0 : $00
	nop                                                  ; $24c1 : $00
	ld b, b                                                  ; $24c2 : $40
	dec b                                                  ; $24c3 : $05
	jp z, Jump_00_2905                                                  ; $24c4 : $ca, $05, $29
	dec l                                                  ; $24c7 : $2d
	nop                                                  ; $24c8 : $00
	ld b, $35                                                  ; $24c9 : $06, $35
	dec b                                                  ; $24cb : $05
	ld hl, ($4205)                                                  ; $24cc : $2a, $05, $42
	ld b, c                                                  ; $24cf : $41
	ld b, h                                                  ; $24d0 : $44
	ld b, c                                                  ; $24d1 : $41
	ld b, (hl)                                                  ; $24d2 : $46
	ld b, c                                                  ; $24d3 : $41
	ld c, b                                                  ; $24d4 : $48
	ld b, c                                                  ; $24d5 : $41
	ld c, d                                                  ; $24d6 : $4a
	ld b, c                                                  ; $24d7 : $41
	ld c, h                                                  ; $24d8 : $4c
	ld b, c                                                  ; $24d9 : $41
	ld c, (hl)                                                  ; $24da : $4e
	ld b, c                                                  ; $24db : $41
	ld d, b                                                  ; $24dc : $50
	ld b, c                                                  ; $24dd : $41
	ld d, b                                                  ; $24de : $50
	ld b, c                                                  ; $24df : $41
	jr nc, br_00_2523                                                  ; $24e0 : $30, $41

	ld ($3441), a                                                  ; $24e2 : $32, $41, $34
	ld b, c                                                  ; $24e5 : $41
	ld (hl), $41                                                  ; $24e6 : $36, $41
	jr c, br_00_252b                                                  ; $24e8 : $38, $41

br_00_24ea:
	ld a, ($3c41)                                                  ; $24ea : $3a, $41, $3c
	ld b, c                                                  ; $24ed : $41
	ld a, $41                                                  ; $24ee : $3e, $41
	ld b, b                                                  ; $24f0 : $40
	ld b, c                                                  ; $24f1 : $41
	ld b, (hl)                                                  ; $24f2 : $46
	ld b, c                                                  ; $24f3 : $41
	ret p                                                  ; $24f4 : $f0

	pop af                                                  ; $24f5 : $f1
	jp p, $f4f3                                                  ; $24f6 : $f2, $f3, $f4
	push af                                                  ; $24f9 : $f5
	or $f7                                                  ; $24fa : $f6, $f7
	ld sp, hl                                                  ; $24fc : $f9
	jp m, $e2e1                                                  ; $24fd : $fa, $e1, $e2
	dec c                                                  ; $2500 : $0d
	.db $ed                                                  ; $2501 : $ed
	ret pe                                                  ; $2502 : $e8

	ret m                                                  ; $2503 : $f8

	jr nc, br_00_24ea                                                  ; $2504 : $30, $e4

	dec a                                                  ; $2506 : $3d
	dec sp                                                  ; $2507 : $3b
	daa                                                  ; $2508 : $27
	cpl                                                  ; $2509 : $2f
	push hl                                                  ; $250a : $e5
	ld (hl), b                                                  ; $250b : $70
	jr c, $39                                                  ; $250c : $38, $39

	ld l, a                                                  ; $250e : $6f
	ld l, e                                                  ; $250f : $6b
	ld l, h                                                  ; $2510 : $6c
	inc l                                                  ; $2511 : $2c
	ld l, $69                                                  ; $2512 : $2e, $69
	ld (hl), $37                                                  ; $2514 : $36, $37
	ld (hl), l                                                  ; $2516 : $75
	ld l, b                                                  ; $2517 : $68
	ld l, d                                                  ; $2518 : $6a
	ld l, (hl)                                                  ; $2519 : $6e
	ld l, l                                                  ; $251a : $6d
	ld a, c                                                  ; $251b : $79
	inc (hl)                                                  ; $251c : $34
	dec (hl)                                                  ; $251d : $35
	ld (hl), h                                                  ; $251e : $74
	ld h, (hl)                                                  ; $251f : $66

br_00_2520:
	ld h, a                                                  ; $2520 : $67
	halt                                                  ; $2521 : $76
	ld h, d                                                  ; $2522 : $62

br_00_2523:
	ld (hl), d                                                  ; $2523 : $72
	ld ($6533), a                                                  ; $2524 : $32, $33, $65
	ld (hl), e                                                  ; $2527 : $73
	ld h, h                                                  ; $2528 : $64
	ld a, b                                                  ; $2529 : $78
	ld h, e                                                  ; $252a : $63

br_00_252b:
	ld (hl), a                                                  ; $252b : $77
	and $31                                                  ; $252c : $e6, $31
	ld (hl), c                                                  ; $252e : $71
	ld h, c                                                  ; $252f : $61
	ld a, d                                                  ; $2530 : $7a
	rst $20                                                  ; $2531 : $e7
	jr nz, br_00_2520                                                  ; $2532 : $20, $ec

	ex de, hl                                                  ; $2534 : $eb
	jp pe, Jump_00_2020                                                  ; $2535 : $ea, $20, $20
	jr nz, br_00_255a                                                  ; $2538 : $20, $20

	jr nz, br_00_255c                                                  ; $253a : $20, $20

	ret p                                                  ; $253c : $f0

	pop af                                                  ; $253d : $f1
	jp p, $f4f3                                                  ; $253e : $f2, $f3, $f4
	push af                                                  ; $2541 : $f5
	or $f7                                                  ; $2542 : $f6, $f7
	ld sp, hl                                                  ; $2544 : $f9
	jp m, $e2e1                                                  ; $2545 : $fa, $e1, $e2
	dec c                                                  ; $2548 : $0d
	.db $ed                                                  ; $2549 : $ed
	ret pe                                                  ; $254a : $e8

	ret m                                                  ; $254b : $f8

	add hl, hl                                                  ; $254c : $29
	call po, $3a2b                                                  ; $254d : $e4, $2b, $3a
	ld ($e53f), hl                                                  ; $2550 : $22, $3f, $e5
	ld d, b                                                  ; $2553 : $50
	ld hl, ($4f28)                                                  ; $2554 : $2a, $28, $4f
	ld c, e                                                  ; $2557 : $4b
	ld c, h                                                  ; $2558 : $4c
	inc a                                                  ; $2559 : $3c

br_00_255a:
	ld a, $49                                                  ; $255a : $3e, $49

br_00_255c:
	dec l                                                  ; $255c : $2d
	ld h, $55                                                  ; $255d : $26, $55
	ld c, b                                                  ; $255f : $48
	ld c, d                                                  ; $2560 : $4a
	ld c, (hl)                                                  ; $2561 : $4e
	ld c, l                                                  ; $2562 : $4d
	ld e, c                                                  ; $2563 : $59
	inc h                                                  ; $2564 : $24
	dec h                                                  ; $2565 : $25
	ld d, h                                                  ; $2566 : $54
	ld b, (hl)                                                  ; $2567 : $46

br_00_2568:
	ld b, a                                                  ; $2568 : $47
	ld d, (hl)                                                  ; $2569 : $56
	ld b, d                                                  ; $256a : $42
	ld d, d                                                  ; $256b : $52
	ld b, b                                                  ; $256c : $40
	inc hl                                                  ; $256d : $23
	ld b, l                                                  ; $256e : $45
	ld d, e                                                  ; $256f : $53
	ld b, h                                                  ; $2570 : $44
	ld e, b                                                  ; $2571 : $58
	ld b, e                                                  ; $2572 : $43
	ld d, a                                                  ; $2573 : $57
	and $21                                                  ; $2574 : $e6, $21
	ld d, c                                                  ; $2576 : $51
	ld b, c                                                  ; $2577 : $41
	ld e, d                                                  ; $2578 : $5a
	rst $20                                                  ; $2579 : $e7
	jr nz, br_00_2568                                                  ; $257a : $20, $ec

	ex de, hl                                                  ; $257c : $eb
	jp pe, Jump_00_2020                                                  ; $257d : $ea, $20, $20
	jr nz, br_00_25a2                                                  ; $2580 : $20, $20

	jr nz, br_00_25a4                                                  ; $2582 : $20, $20

	ret p                                                  ; $2584 : $f0

	pop af                                                  ; $2585 : $f1
	jp p, $f4f3                                                  ; $2586 : $f2, $f3, $f4
	push af                                                  ; $2589 : $f5
	or $f7                                                  ; $258a : $f6, $f7
	ld sp, hl                                                  ; $258c : $f9
	jp m, $e2e1                                                  ; $258d : $fa, $e1, $e2
	dec c                                                  ; $2590 : $0d
	.db $ed                                                  ; $2591 : $ed
	ret pe                                                  ; $2592 : $e8

	ret m                                                  ; $2593 : $f8

	add hl, hl                                                  ; $2594 : $29
	call po, $3a2b                                                  ; $2595 : $e4, $2b, $3a
	ld ($e53f), hl                                                  ; $2598 : $22, $3f, $e5
	ld d, b                                                  ; $259b : $50
	ld hl, ($4f28)                                                  ; $259c : $2a, $28, $4f
	ld c, e                                                  ; $259f : $4b
	ld c, h                                                  ; $25a0 : $4c
	inc a                                                  ; $25a1 : $3c

br_00_25a2:
	ld a, $49                                                  ; $25a2 : $3e, $49

br_00_25a4:
	dec l                                                  ; $25a4 : $2d
	ld h, $55                                                  ; $25a5 : $26, $55
	ld c, b                                                  ; $25a7 : $48
	ld c, d                                                  ; $25a8 : $4a
	ld c, (hl)                                                  ; $25a9 : $4e
	ld c, l                                                  ; $25aa : $4d
	ld e, c                                                  ; $25ab : $59
	inc h                                                  ; $25ac : $24
	dec h                                                  ; $25ad : $25
	ld d, h                                                  ; $25ae : $54
	ld b, (hl)                                                  ; $25af : $46

br_00_25b0:
	ld b, a                                                  ; $25b0 : $47
	ld d, (hl)                                                  ; $25b1 : $56
	ld b, d                                                  ; $25b2 : $42
	ld d, d                                                  ; $25b3 : $52
	ld b, b                                                  ; $25b4 : $40
	inc hl                                                  ; $25b5 : $23
	ld b, l                                                  ; $25b6 : $45
	ld d, e                                                  ; $25b7 : $53
	ld b, h                                                  ; $25b8 : $44
	ld e, b                                                  ; $25b9 : $58
	ld b, e                                                  ; $25ba : $43
	ld d, a                                                  ; $25bb : $57
	and $21                                                  ; $25bc : $e6, $21
	ld d, c                                                  ; $25be : $51
	ld b, c                                                  ; $25bf : $41
	ld e, d                                                  ; $25c0 : $5a
	rst $20                                                  ; $25c1 : $e7

br_00_25c2:
	jr nz, br_00_25b0                                                  ; $25c2 : $20, $ec

	ex de, hl                                                  ; $25c4 : $eb
	jp pe, Jump_00_2020                                                  ; $25c5 : $ea, $20, $20
	jr nz, br_00_25ea                                                  ; $25c8 : $20, $20

	jr nz, br_00_25ec                                                  ; $25ca : $20, $20

	ret p                                                  ; $25cc : $f0

	pop af                                                  ; $25cd : $f1
	jp p, $f4f3                                                  ; $25ce : $f2, $f3, $f4
	push af                                                  ; $25d1 : $f5
	or $f7                                                  ; $25d2 : $f6, $f7
	ld sp, hl                                                  ; $25d4 : $f9
	rst $28                                                  ; $25d5 : $ef
	pop hl                                                  ; $25d6 : $e1
	jp po, $ed0d                                                  ; $25d7 : $e2, $0d, $ed
	ret pe                                                  ; $25da : $e8

	ret m                                                  ; $25db : $f8

	jr nc, br_00_25c2                                                  ; $25dc : $30, $e4

	dec a                                                  ; $25de : $3d
	dec sp                                                  ; $25df : $3b
	daa                                                  ; $25e0 : $27
	cpl                                                  ; $25e1 : $2f
	push hl                                                  ; $25e2 : $e5
	ld d, b                                                  ; $25e3 : $50
	jr c, br_00_261f                                                  ; $25e4 : $38, $39

	ld c, a                                                  ; $25e6 : $4f
	ld c, e                                                  ; $25e7 : $4b
	ld c, h                                                  ; $25e8 : $4c
	inc l                                                  ; $25e9 : $2c

br_00_25ea:
	ld l, $49                                                  ; $25ea : $2e, $49

br_00_25ec:
	ld (hl), $37                                                  ; $25ec : $36, $37
	ld d, l                                                  ; $25ee : $55
	ld c, b                                                  ; $25ef : $48
	ld c, d                                                  ; $25f0 : $4a
	ld c, (hl)                                                  ; $25f1 : $4e
	ld c, l                                                  ; $25f2 : $4d
	ld e, c                                                  ; $25f3 : $59
	inc (hl)                                                  ; $25f4 : $34
	dec (hl)                                                  ; $25f5 : $35
	ld d, h                                                  ; $25f6 : $54
	ld b, (hl)                                                  ; $25f7 : $46

br_00_25f8:
	ld b, a                                                  ; $25f8 : $47
	ld d, (hl)                                                  ; $25f9 : $56
	ld b, d                                                  ; $25fa : $42
	ld d, d                                                  ; $25fb : $52
	ld ($4533), a                                                  ; $25fc : $32, $33, $45
	ld d, e                                                  ; $25ff : $53
	ld b, h                                                  ; $2600 : $44
	ld e, b                                                  ; $2601 : $58
	ld b, e                                                  ; $2602 : $43
	ld d, a                                                  ; $2603 : $57
	and $31                                                  ; $2604 : $e6, $31
	ld d, c                                                  ; $2606 : $51
	ld b, c                                                  ; $2607 : $41
	ld e, d                                                  ; $2608 : $5a
	rst $20                                                  ; $2609 : $e7
	jr nz, br_00_25f8                                                  ; $260a : $20, $ec

	ex de, hl                                                  ; $260c : $eb
	jp pe, Jump_00_2020                                                  ; $260d : $ea, $20, $20
	jr nz, $20                                                  ; $2610 : $20, $20

	jr nz, br_00_2634                                                  ; $2612 : $20, $20

	rrca                                                  ; $2614 : $0f
	ld d, e                                                  ; $2615 : $53
	ld b, l                                                  ; $2616 : $45
	ld c, h                                                  ; $2617 : $4c
	ld b, l                                                  ; $2618 : $45
	ld b, e                                                  ; $2619 : $43
	ld d, h                                                  ; $261a : $54
	jr nz, br_00_265e                                                  ; $261b : $20, $41

	ld b, e                                                  ; $261d : $43
	ld d, h                                                  ; $261e : $54

br_00_261f:
	ld c, c                                                  ; $261f : $49
	ld d, (hl)                                                  ; $2620 : $56
	ld c, c                                                  ; $2621 : $49
	ld d, h                                                  ; $2622 : $54
	ld e, c                                                  ; $2623 : $59
	djnz br_00_2679                                                  ; $2624 : $10, $53
	ld b, l                                                  ; $2626 : $45
	ld c, h                                                  ; $2627 : $4c
	ld b, l                                                  ; $2628 : $45
	ld b, e                                                  ; $2629 : $43
	ld d, h                                                  ; $262a : $54
	jr nz, br_00_2670                                                  ; $262b : $20, $43

	ld c, h                                                  ; $262d : $4c
	ld b, c                                                  ; $262e : $41
	ld d, e                                                  ; $262f : $53
	ld d, e                                                  ; $2630 : $53
	jr nz, br_00_2664                                                  ; $2631 : $20, $31

	dec l                                                  ; $2633 : $2d

br_00_2634:
	add hl, sp                                                  ; $2634 : $39
	ld b, $4c                                                  ; $2635 : $06, $4c
	ld b, l                                                  ; $2637 : $45
	ld d, e                                                  ; $2638 : $53
	ld d, e                                                  ; $2639 : $53
	ld c, a                                                  ; $263a : $4f
	ld c, (hl)                                                  ; $263b : $4e
	djnz br_00_2691                                                  ; $263c : $10, $53
	ld b, l                                                  ; $263e : $45
	ld c, h                                                  ; $263f : $4c
	ld b, l                                                  ; $2640 : $45
	ld b, e                                                  ; $2641 : $43
	ld d, h                                                  ; $2642 : $54
	jr nz, br_00_2691                                                  ; $2643 : $20, $4c

	ld b, l                                                  ; $2645 : $45
	ld d, (hl)                                                  ; $2646 : $56
	ld b, l                                                  ; $2647 : $45
	ld c, h                                                  ; $2648 : $4c
	jr nz, br_00_267c                                                  ; $2649 : $20, $31

	dec l                                                  ; $264b : $2d
	inc (hl)                                                  ; $264c : $34
	dec b                                                  ; $264d : $05
	ld c, h                                                  ; $264e : $4c
	ld b, l                                                  ; $264f : $45
	ld d, (hl)                                                  ; $2650 : $56
	ld b, l                                                  ; $2651 : $45
	ld c, h                                                  ; $2652 : $4c
	ld (de), a                                                  ; $2653 : $12
	ld d, e                                                  ; $2654 : $53
	ld b, l                                                  ; $2655 : $45
	ld c, h                                                  ; $2656 : $4c
	ld b, l                                                  ; $2657 : $45
	ld b, e                                                  ; $2658 : $43
	ld d, h                                                  ; $2659 : $54
	jr nz, br_00_26af                                                  ; $265a : $20, $53

	ld b, l                                                  ; $265c : $45
	ld b, e                                                  ; $265d : $43

br_00_265e:
	ld d, h                                                  ; $265e : $54
	ld c, c                                                  ; $265f : $49
	ld c, a                                                  ; $2660 : $4f
	ld c, (hl)                                                  ; $2661 : $4e
	jr nz, br_00_2695                                                  ; $2662 : $20, $31

br_00_2664:
	dec l                                                  ; $2664 : $2d
	ld ($3112), a                                                  ; $2665 : $32, $12, $31
	dec l                                                  ; $2668 : $2d
	ld b, l                                                  ; $2669 : $45
	ld e, b                                                  ; $266a : $58
	ld b, c                                                  ; $266b : $41
	ld c, l                                                  ; $266c : $4d
	ld d, b                                                  ; $266d : $50
	ld c, h                                                  ; $266e : $4c
	ld b, l                                                  ; $266f : $45

br_00_2670:
	jr nz, br_00_26c2                                                  ; $2670 : $20, $50

	ld d, d                                                  ; $2672 : $52
	ld c, a                                                  ; $2673 : $4f
	ld b, a                                                  ; $2674 : $47
	ld d, d                                                  ; $2675 : $52
	ld b, c                                                  ; $2676 : $41
	ld c, l                                                  ; $2677 : $4d
	ld d, e                                                  ; $2678 : $53

br_00_2679:
	djnz br_00_26ad                                                  ; $2679 : $10, $32
	dec l                                                  ; $267b : $2d

br_00_267c:
	ld b, d                                                  ; $267c : $42
	ld b, c                                                  ; $267d : $41
	ld d, e                                                  ; $267e : $53
	ld c, c                                                  ; $267f : $49
	ld b, e                                                  ; $2680 : $43
	jr nz, $43                                                  ; $2681 : $20, $43

	ld c, a                                                  ; $2683 : $4f
	ld c, l                                                  ; $2684 : $4d
	ld d, b                                                  ; $2685 : $50
	ld d, l                                                  ; $2686 : $55
	ld d, h                                                  ; $2687 : $54
	ld b, l                                                  ; $2688 : $45
	ld d, d                                                  ; $2689 : $52
	djnz br_00_26d1                                                  ; $268a : $10, $45
	ld e, b                                                  ; $268c : $58
	ld b, c                                                  ; $268d : $41
	ld c, l                                                  ; $268e : $4d
	ld d, b                                                  ; $268f : $50
	ld c, h                                                  ; $2690 : $4c

br_00_2691:
	ld b, l                                                  ; $2691 : $45
	jr nz, br_00_26e4                                                  ; $2692 : $20, $50

	ld d, d                                                  ; $2694 : $52

br_00_2695:
	ld c, a                                                  ; $2695 : $4f
	ld b, a                                                  ; $2696 : $47
	ld d, d                                                  ; $2697 : $52
	ld b, c                                                  ; $2698 : $41
	ld c, l                                                  ; $2699 : $4d
	ld d, e                                                  ; $269a : $53
	ld c, $50                                                  ; $269b : $0e, $50
	ld d, d                                                  ; $269d : $52
	ld b, l                                                  ; $269e : $45
	dec l                                                  ; $269f : $2d
	ld b, d                                                  ; $26a0 : $42
	ld b, c                                                  ; $26a1 : $41
	ld d, e                                                  ; $26a2 : $53
	ld c, c                                                  ; $26a3 : $49
	ld b, e                                                  ; $26a4 : $43
	jr nz, br_00_26fd                                                  ; $26a5 : $20, $56

	ld sp, $302e                                                  ; $26a7 : $31, $2e, $30
	ld (de), a                                                  ; $26aa : $12
	ld d, e                                                  ; $26ab : $53
	ld b, l                                                  ; $26ac : $45

br_00_26ad:
	ld c, h                                                  ; $26ad : $4c
	ld b, l                                                  ; $26ae : $45

br_00_26af:
	ld b, e                                                  ; $26af : $43
	ld d, h                                                  ; $26b0 : $54
	jr nz, br_00_2703                                                  ; $26b1 : $20, $50

	ld d, d                                                  ; $26b3 : $52
	ld c, a                                                  ; $26b4 : $4f
	ld b, a                                                  ; $26b5 : $47
	ld d, d                                                  ; $26b6 : $52
	ld b, c                                                  ; $26b7 : $41
	ld c, l                                                  ; $26b8 : $4d
	jr nz, br_00_26ec                                                  ; $26b9 : $20, $31

	dec l                                                  ; $26bb : $2d
	add hl, sp                                                  ; $26bc : $39
	ld de, $4547                                                  ; $26bd : $11, $47, $45
	ld c, (hl)                                                  ; $26c0 : $4e
	ld b, l                                                  ; $26c1 : $45

br_00_26c2:
	ld d, d                                                  ; $26c2 : $52
	ld b, c                                                  ; $26c3 : $41
	ld c, h                                                  ; $26c4 : $4c
	jr nz, br_00_2712                                                  ; $26c5 : $20, $4b

	ld c, (hl)                                                  ; $26c7 : $4e
	ld c, a                                                  ; $26c8 : $4f
	ld d, a                                                  ; $26c9 : $57
	ld c, h                                                  ; $26ca : $4c
	ld b, l                                                  ; $26cb : $45
	ld b, h                                                  ; $26cc : $44
	ld b, a                                                  ; $26cd : $47
	ld b, l                                                  ; $26ce : $45
	rlca                                                  ; $26cf : $07
	ld c, b                                                  ; $26d0 : $48

br_00_26d1:
	ld c, c                                                  ; $26d1 : $49
	ld d, e                                                  ; $26d2 : $53
	ld d, h                                                  ; $26d3 : $54
	ld c, a                                                  ; $26d4 : $4f
	ld d, d                                                  ; $26d5 : $52
	ld e, c                                                  ; $26d6 : $59
	add hl, bc                                                  ; $26d7 : $09
	ld b, a                                                  ; $26d8 : $47
	ld b, l                                                  ; $26d9 : $45
	ld c, a                                                  ; $26da : $4f
	ld b, a                                                  ; $26db : $47
	ld d, d                                                  ; $26dc : $52
	ld b, c                                                  ; $26dd : $41
	ld d, b                                                  ; $26de : $50
	ld c, b                                                  ; $26df : $48
	ld e, c                                                  ; $26e0 : $59
	rlca                                                  ; $26e1 : $07
	ld d, e                                                  ; $26e2 : $53
	ld b, e                                                  ; $26e3 : $43

br_00_26e4:
	ld c, c                                                  ; $26e4 : $49
	ld b, l                                                  ; $26e5 : $45
	ld c, (hl)                                                  ; $26e6 : $4e
	ld b, e                                                  ; $26e7 : $43
	ld b, l                                                  ; $26e8 : $45
	ld (de), a                                                  ; $26e9 : $12
	ld d, e                                                  ; $26ea : $53
	ld b, l                                                  ; $26eb : $45

br_00_26ec:
	ld c, h                                                  ; $26ec : $4c
	ld b, l                                                  ; $26ed : $45
	ld b, e                                                  ; $26ee : $43
	ld d, h                                                  ; $26ef : $54
	jr nz, br_00_2745                                                  ; $26f0 : $20, $53

	ld b, l                                                  ; $26f2 : $45
	ld b, e                                                  ; $26f3 : $43
	ld d, h                                                  ; $26f4 : $54
	ld c, c                                                  ; $26f5 : $49
	ld c, a                                                  ; $26f6 : $4f
	ld c, (hl)                                                  ; $26f7 : $4e
	jr nz, br_00_272b                                                  ; $26f8 : $20, $31

	dec l                                                  ; $26fa : $2d
	dec (hl)                                                  ; $26fb : $35
	dec bc                                                  ; $26fc : $0b

br_00_26fd:
	ld sp, $4d2d                                                  ; $26fd : $31, $2d, $4d
	ld b, c                                                  ; $2700 : $41
	ld d, h                                                  ; $2701 : $54
	ld c, b                                                  ; $2702 : $48

br_00_2703:
	jr nz, br_00_2756                                                  ; $2703 : $20, $51

	ld d, l                                                  ; $2705 : $55
	ld c, c                                                  ; $2706 : $49
	ld e, d                                                  ; $2707 : $5a
	dec bc                                                  ; $2708 : $0b
	ld ($462d), a                                                  ; $2709 : $32, $2d, $46
	ld d, d                                                  ; $270c : $52
	ld b, c                                                  ; $270d : $41
	ld b, e                                                  ; $270e : $43
	ld d, h                                                  ; $270f : $54
	ld c, c                                                  ; $2710 : $49
	ld c, a                                                  ; $2711 : $4f

br_00_2712:
	ld c, (hl)                                                  ; $2712 : $4e
	ld d, e                                                  ; $2713 : $53
	ld a, (bc)                                                  ; $2714 : $0a
	inc sp                                                  ; $2715 : $33
	dec l                                                  ; $2716 : $2d
	ld b, h                                                  ; $2717 : $44
	ld b, l                                                  ; $2718 : $45
	ld b, e                                                  ; $2719 : $43
	ld c, c                                                  ; $271a : $49
	ld c, l                                                  ; $271b : $4d
	ld b, c                                                  ; $271c : $41
	ld c, h                                                  ; $271d : $4c
	ld d, e                                                  ; $271e : $53
	ld de, $2d34                                                  ; $271f : $11, $34, $2d
	ld c, l                                                  ; $2722 : $4d
	ld c, c                                                  ; $2723 : $49
	ld e, b                                                  ; $2724 : $58
	jr nz, br_00_276a                                                  ; $2725 : $20, $43

	ld b, c                                                  ; $2727 : $41
	ld c, h                                                  ; $2728 : $4c
	ld b, e                                                  ; $2729 : $43
	ld d, l                                                  ; $272a : $55

br_00_272b:
	ld c, h                                                  ; $272b : $4c
	ld b, c                                                  ; $272c : $41
	ld d, h                                                  ; $272d : $54
	ld c, c                                                  ; $272e : $49
	ld c, a                                                  ; $272f : $4f
	ld c, (hl)                                                  ; $2730 : $4e
	rrca                                                  ; $2731 : $0f
	dec (hl)                                                  ; $2732 : $35
	dec l                                                  ; $2733 : $2d
	ld d, e                                                  ; $2734 : $53
	ld d, h                                                  ; $2735 : $54
	ld c, a                                                  ; $2736 : $4f
	ld d, d                                                  ; $2737 : $52
	ld e, c                                                  ; $2738 : $59
	jr nz, br_00_278b                                                  ; $2739 : $20, $50

	ld d, d                                                  ; $273b : $52
	ld c, a                                                  ; $273c : $4f
	ld b, d                                                  ; $273d : $42
	ld c, h                                                  ; $273e : $4c
	ld b, l                                                  ; $273f : $45
	ld c, l                                                  ; $2740 : $4d
	add hl, bc                                                  ; $2741 : $09
	ld c, l                                                  ; $2742 : $4d
	ld b, c                                                  ; $2743 : $41
	ld d, h                                                  ; $2744 : $54

br_00_2745:
	ld c, b                                                  ; $2745 : $48
	jr nz, br_00_2799                                                  ; $2746 : $20, $51

	ld d, l                                                  ; $2748 : $55
	ld c, c                                                  ; $2749 : $49
	ld e, d                                                  ; $274a : $5a
	add hl, bc                                                  ; $274b : $09
	ld b, (hl)                                                  ; $274c : $46
	ld d, d                                                  ; $274d : $52
	ld b, c                                                  ; $274e : $41
	ld b, e                                                  ; $274f : $43
	ld d, h                                                  ; $2750 : $54
	ld c, c                                                  ; $2751 : $49
	ld c, a                                                  ; $2752 : $4f
	ld c, (hl)                                                  ; $2753 : $4e
	ld d, e                                                  ; $2754 : $53
	ex af, af'                                                  ; $2755 : $08

br_00_2756:
	ld b, h                                                  ; $2756 : $44
	ld b, l                                                  ; $2757 : $45
	ld b, e                                                  ; $2758 : $43
	ld c, c                                                  ; $2759 : $49
	ld c, l                                                  ; $275a : $4d
	ld b, c                                                  ; $275b : $41
	ld c, h                                                  ; $275c : $4c
	ld d, e                                                  ; $275d : $53
	rrca                                                  ; $275e : $0f
	ld c, l                                                  ; $275f : $4d
	ld c, c                                                  ; $2760 : $49
	ld e, b                                                  ; $2761 : $58
	jr nz, $43                                                  ; $2762 : $20, $43

	ld b, c                                                  ; $2764 : $41
	ld c, h                                                  ; $2765 : $4c
	ld b, e                                                  ; $2766 : $43
	ld d, l                                                  ; $2767 : $55
	ld c, h                                                  ; $2768 : $4c
	ld b, c                                                  ; $2769 : $41

br_00_276a:
	ld d, h                                                  ; $276a : $54
	ld c, c                                                  ; $276b : $49
	ld c, a                                                  ; $276c : $4f
	ld c, (hl)                                                  ; $276d : $4e
	dec c                                                  ; $276e : $0d
	ld d, e                                                  ; $276f : $53
	ld d, h                                                  ; $2770 : $54
	ld c, a                                                  ; $2771 : $4f
	ld d, d                                                  ; $2772 : $52
	ld e, c                                                  ; $2773 : $59
	jr nz, br_00_27c6                                                  ; $2774 : $20, $50

	ld d, d                                                  ; $2776 : $52
	ld c, a                                                  ; $2777 : $4f
	ld b, d                                                  ; $2778 : $42
	ld c, h                                                  ; $2779 : $4c
	ld b, l                                                  ; $277a : $45
	ld c, l                                                  ; $277b : $4d
	djnz br_00_27d1                                                  ; $277c : $10, $53
	ld b, l                                                  ; $277e : $45
	ld c, h                                                  ; $277f : $4c
	ld b, l                                                  ; $2780 : $45
	ld b, e                                                  ; $2781 : $43
	ld d, h                                                  ; $2782 : $54
	jr nz, br_00_27d1                                                  ; $2783 : $20, $4c

	ld b, l                                                  ; $2785 : $45
	ld d, (hl)                                                  ; $2786 : $56
	ld b, l                                                  ; $2787 : $45
	ld c, h                                                  ; $2788 : $4c
	jr nz, br_00_27bc                                                  ; $2789 : $20, $31

br_00_278b:
	dec l                                                  ; $278b : $2d
	ld (hl), $0f                                                  ; $278c : $36, $0f
	ld d, e                                                  ; $278e : $53
	ld b, l                                                  ; $278f : $45
	ld c, h                                                  ; $2790 : $4c
	ld b, l                                                  ; $2791 : $45
	ld b, e                                                  ; $2792 : $43
	ld d, h                                                  ; $2793 : $54
	jr nz, br_00_27dd                                                  ; $2794 : $20, $47

	ld b, c                                                  ; $2796 : $41
	ld c, l                                                  ; $2797 : $4d
	ld b, l                                                  ; $2798 : $45

br_00_2799:
	jr nz, br_00_27cc                                                  ; $2799 : $20, $31

	dec l                                                  ; $279b : $2d
	inc sp                                                  ; $279c : $33
	inc c                                                  ; $279d : $0c
	ld sp, $542d                                                  ; $279e : $31, $2d, $54
	ld e, c                                                  ; $27a1 : $59
	ld d, b                                                  ; $27a2 : $50
	ld c, c                                                  ; $27a3 : $49
	ld c, (hl)                                                  ; $27a4 : $4e
	ld b, a                                                  ; $27a5 : $47
	jr nz, br_00_27ee                                                  ; $27a6 : $20, $46

	ld d, l                                                  ; $27a8 : $55
	ld c, (hl)                                                  ; $27a9 : $4e
	add hl, bc                                                  ; $27aa : $09
	ld ($482d), a                                                  ; $27ab : $32, $2d, $48
	ld b, c                                                  ; $27ae : $41
	ld c, (hl)                                                  ; $27af : $4e
	ld b, a                                                  ; $27b0 : $47
	ld c, l                                                  ; $27b1 : $4d
	ld b, c                                                  ; $27b2 : $41
	ld c, (hl)                                                  ; $27b3 : $4e
	ld a, (bc)                                                  ; $27b4 : $0a
	inc sp                                                  ; $27b5 : $33
	dec l                                                  ; $27b6 : $2d
	ld d, e                                                  ; $27b7 : $53
	ld b, e                                                  ; $27b8 : $43
	ld d, d                                                  ; $27b9 : $52
	ld b, c                                                  ; $27ba : $41
	ld c, l                                                  ; $27bb : $4d

br_00_27bc:
	ld b, d                                                  ; $27bc : $42
	ld c, h                                                  ; $27bd : $4c
	ld b, l                                                  ; $27be : $45
	ld a, (bc)                                                  ; $27bf : $0a
	ld d, h                                                  ; $27c0 : $54
	ld e, c                                                  ; $27c1 : $59
	ld d, b                                                  ; $27c2 : $50
	ld c, c                                                  ; $27c3 : $49
	ld c, (hl)                                                  ; $27c4 : $4e
	ld b, a                                                  ; $27c5 : $47

br_00_27c6:
	jr nz, br_00_280e                                                  ; $27c6 : $20, $46

	ld d, l                                                  ; $27c8 : $55
	ld c, (hl)                                                  ; $27c9 : $4e
	rlca                                                  ; $27ca : $07
	ld c, b                                                  ; $27cb : $48

br_00_27cc:
	ld b, c                                                  ; $27cc : $41
	ld c, (hl)                                                  ; $27cd : $4e
	ld b, a                                                  ; $27ce : $47
	ld c, l                                                  ; $27cf : $4d
	ld b, c                                                  ; $27d0 : $41

br_00_27d1:
	ld c, (hl)                                                  ; $27d1 : $4e
	ex af, af'                                                  ; $27d2 : $08
	ld d, e                                                  ; $27d3 : $53
	ld b, e                                                  ; $27d4 : $43
	ld d, d                                                  ; $27d5 : $52
	ld b, c                                                  ; $27d6 : $41
	ld c, l                                                  ; $27d7 : $4d
	ld b, d                                                  ; $27d8 : $42
	ld c, h                                                  ; $27d9 : $4c
	ld b, l                                                  ; $27da : $45
	djnz $53                                                  ; $27db : $10, $53

br_00_27dd:
	ld b, l                                                  ; $27dd : $45
	ld c, h                                                  ; $27de : $4c
	ld b, l                                                  ; $27df : $45
	ld b, e                                                  ; $27e0 : $43
	ld d, h                                                  ; $27e1 : $54
	jr nz, $4c                                                  ; $27e2 : $20, $4c

	ld b, l                                                  ; $27e4 : $45
	ld d, (hl)                                                  ; $27e5 : $56
	ld b, l                                                  ; $27e6 : $45
	ld c, h                                                  ; $27e7 : $4c
	jr nz, br_00_281b                                                  ; $27e8 : $20, $31

	dec l                                                  ; $27ea : $2d
	ld ($4e11), a                                                  ; $27eb : $32, $11, $4e

br_00_27ee:
	ld c, a                                                  ; $27ee : $4f
	ld l, $20                                                  ; $27ef : $2e, $20
	ld c, a                                                  ; $27f1 : $4f
	ld b, (hl)                                                  ; $27f2 : $46
	jr nz, br_00_2845                                                  ; $27f3 : $20, $50

	ld c, h                                                  ; $27f5 : $4c
	ld b, c                                                  ; $27f6 : $41
	ld e, c                                                  ; $27f7 : $59
	ld b, l                                                  ; $27f8 : $45
	ld d, d                                                  ; $27f9 : $52
	jr nz, br_00_282d                                                  ; $27fa : $20, $31

	dec l                                                  ; $27fc : $2d
	ld ($430a), a                                                  ; $27fd : $32, $0a, $43
	ld b, c                                                  ; $2800 : $41
	ld c, h                                                  ; $2801 : $4c
	ld b, e                                                  ; $2802 : $43
	ld d, l                                                  ; $2803 : $55
	ld c, h                                                  ; $2804 : $4c
	ld b, c                                                  ; $2805 : $41
	ld d, h                                                  ; $2806 : $54
	ld c, a                                                  ; $2807 : $4f
	ld d, d                                                  ; $2808 : $52
	inc e                                                  ; $2809 : $1c
	ld d, e                                                  ; $280a : $53
	ld d, b                                                  ; $280b : $50
	ld b, l                                                  ; $280c : $45
	ld b, l                                                  ; $280d : $45

br_00_280e:
	ld b, h                                                  ; $280e : $44
	jr nz, br_00_2831                                                  ; $280f : $20, $20

	jr nz, br_00_2833                                                  ; $2811 : $20, $20

	ld d, a                                                  ; $2813 : $57
	ld d, b                                                  ; $2814 : $50
	ld c, l                                                  ; $2815 : $4d
	jr nz, $20                                                  ; $2816 : $20, $20

	jr nz, br_00_285b                                                  ; $2818 : $20, $41

	ld b, e                                                  ; $281a : $43

br_00_281b:
	ld b, e                                                  ; $281b : $43
	ld d, l                                                  ; $281c : $55
	ld d, d                                                  ; $281d : $52
	ld b, c                                                  ; $281e : $41
	ld b, e                                                  ; $281f : $43
	ld e, c                                                  ; $2820 : $59
	jr nz, br_00_2843                                                  ; $2821 : $20, $20

	jr nz, br_00_2845                                                  ; $2823 : $20, $20

	dec h                                                  ; $2825 : $25
	djnz br_00_286b                                                  ; $2826 : $10, $43
	ld c, b                                                  ; $2828 : $48
	ld b, c                                                  ; $2829 : $41
	ld c, (hl)                                                  ; $282a : $4e
	ld b, e                                                  ; $282b : $43
	ld b, l                                                  ; $282c : $45

br_00_282d:
	jr nz, br_00_284f                                                  ; $282d : $20, $20

	jr nz, $20                                                  ; $282f : $20, $20

br_00_2831:
	jr nz, br_00_2886                                                  ; $2831 : $20, $53

br_00_2833:
	ld b, e                                                  ; $2833 : $43
	ld c, a                                                  ; $2834 : $4f
	ld d, d                                                  ; $2835 : $52
	ld b, l                                                  ; $2836 : $45
	ld c, $4f                                                  ; $2837 : $0e, $4f
	ld d, (hl)                                                  ; $2839 : $56
	ld b, l                                                  ; $283a : $45
	ld d, d                                                  ; $283b : $52
	ld b, (hl)                                                  ; $283c : $46
	ld c, h                                                  ; $283d : $4c
	ld c, a                                                  ; $283e : $4f
	ld d, a                                                  ; $283f : $57
	jr nz, br_00_2887                                                  ; $2840 : $20, $45

	ld d, d                                                  ; $2842 : $52

br_00_2843:
	ld d, d                                                  ; $2843 : $52
	ld c, a                                                  ; $2844 : $4f

br_00_2845:
	ld d, d                                                  ; $2845 : $52
	inc c                                                  ; $2846 : $0c
	ld d, h                                                  ; $2847 : $54
	ld c, b                                                  ; $2848 : $48
	ld b, l                                                  ; $2849 : $45
	jr nz, br_00_289f                                                  ; $284a : $20, $53

	ld b, e                                                  ; $284c : $43
	ld c, a                                                  ; $284d : $4f
	ld d, d                                                  ; $284e : $52

br_00_284f:
	ld b, l                                                  ; $284f : $45
	jr nz, br_00_289b                                                  ; $2850 : $20, $49

	ld d, e                                                  ; $2852 : $53
	ex af, af'                                                  ; $2853 : $08
	ld d, h                                                  ; $2854 : $54
	ld b, l                                                  ; $2855 : $45
	ld b, l                                                  ; $2856 : $45
	ld c, (hl)                                                  ; $2857 : $4e
	ld b, c                                                  ; $2858 : $41
	ld b, a                                                  ; $2859 : $47
	ld b, l                                                  ; $285a : $45

br_00_285b:
	ld d, d                                                  ; $285b : $52
	ld l, $50                                                  ; $285c : $2e, $50
	ld c, h                                                  ; $285e : $4c
	ld b, c                                                  ; $285f : $41
	ld e, c                                                  ; $2860 : $59
	ld b, l                                                  ; $2861 : $45
	ld d, d                                                  ; $2862 : $52
	rrca                                                  ; $2863 : $0f
	ld d, e                                                  ; $2864 : $53
	ld b, e                                                  ; $2865 : $43
	ld c, a                                                  ; $2866 : $4f
	ld d, d                                                  ; $2867 : $52
	ld b, l                                                  ; $2868 : $45
	jr nz, $20                                                  ; $2869 : $20, $20

br_00_286b:
	jr nz, br_00_288d                                                  ; $286b : $20, $20

	jr nz, $20                                                  ; $286d : $20, $20

	jr nz, br_00_2891                                                  ; $286f : $20, $20

	ld d, h                                                  ; $2871 : $54
	ld c, a                                                  ; $2872 : $4f
	ld (de), a                                                  ; $2873 : $12
	ld e, c                                                  ; $2874 : $59
	ld b, l                                                  ; $2875 : $45
	ld d, e                                                  ; $2876 : $53
	inc l                                                  ; $2877 : $2c
	jr nz, $59                                                  ; $2878 : $20, $59

	ld c, a                                                  ; $287a : $4f
	ld d, l                                                  ; $287b : $55
	jr nz, br_00_28bf                                                  ; $287c : $20, $41

	ld d, d                                                  ; $287e : $52
	ld b, l                                                  ; $287f : $45
	jr nz, br_00_28d4                                                  ; $2880 : $20, $52

	ld c, c                                                  ; $2882 : $49
	ld b, a                                                  ; $2883 : $47
	ld c, b                                                  ; $2884 : $48
	ld d, h                                                  ; $2885 : $54

br_00_2886:
	dec c                                                  ; $2886 : $0d

br_00_2887:
	ld c, (hl)                                                  ; $2887 : $4e
	jr nc, br_00_28b6                                                  ; $2888 : $30, $2c

	jr nz, br_00_28e0                                                  ; $288a : $20, $54

	ld d, d                                                  ; $288c : $52

br_00_288d:
	ld e, c                                                  ; $288d : $59
	jr nz, br_00_28d1                                                  ; $288e : $20, $41

	ld b, a                                                  ; $2890 : $47

br_00_2891:
	ld b, c                                                  ; $2891 : $41
	ld c, c                                                  ; $2892 : $49
	ld c, (hl)                                                  ; $2893 : $4e
	dec d                                                  ; $2894 : $15
	ld d, h                                                  ; $2895 : $54
	ld c, b                                                  ; $2896 : $48
	ld b, l                                                  ; $2897 : $45
	jr nz, br_00_28dd                                                  ; $2898 : $20, $43

	ld c, a                                                  ; $289a : $4f

br_00_289b:
	ld d, d                                                  ; $289b : $52
	ld d, d                                                  ; $289c : $52
	ld b, l                                                  ; $289d : $45
	ld b, e                                                  ; $289e : $43

br_00_289f:
	ld d, h                                                  ; $289f : $54
	jr nz, br_00_28e3                                                  ; $28a0 : $20, $41

	ld c, (hl)                                                  ; $28a2 : $4e
	ld d, e                                                  ; $28a3 : $53
	ld d, a                                                  ; $28a4 : $57
	ld b, l                                                  ; $28a5 : $45
	ld d, d                                                  ; $28a6 : $52
	jr nz, br_00_28f2                                                  ; $28a7 : $20, $49

	ld d, e                                                  ; $28a9 : $53
	djnz br_00_28ff                                                  ; $28aa : $10, $53
	ld b, l                                                  ; $28ac : $45
	ld c, h                                                  ; $28ad : $4c
	ld b, l                                                  ; $28ae : $45
	ld b, e                                                  ; $28af : $43
	ld d, h                                                  ; $28b0 : $54
	jr nz, br_00_28ff                                                  ; $28b1 : $20, $4c

	ld b, l                                                  ; $28b3 : $45
	ld d, (hl)                                                  ; $28b4 : $56
	ld b, l                                                  ; $28b5 : $45

br_00_28b6:
	ld c, h                                                  ; $28b6 : $4c
	jr nz, br_00_28eb                                                  ; $28b7 : $20, $32

	dec l                                                  ; $28b9 : $2d
	inc (hl)                                                  ; $28ba : $34
	dec c                                                  ; $28bb : $0d
	ld c, h                                                  ; $28bc : $4c
	jr nz, br_00_290e                                                  ; $28bd : $20, $4f

br_00_28bf:
	ld d, d                                                  ; $28bf : $52
	jr nz, br_00_2914                                                  ; $28c0 : $20, $52

	ld l, $50                                                  ; $28c2 : $2e, $50
	ld c, h                                                  ; $28c4 : $4c
	ld b, c                                                  ; $28c5 : $41
	ld e, c                                                  ; $28c6 : $59
	ld b, l                                                  ; $28c7 : $45
	ld d, d                                                  ; $28c8 : $52
	ld c, $52                                                  ; $28c9 : $0e, $52
	ld l, $50                                                  ; $28cb : $2e, $50
	ld c, h                                                  ; $28cd : $4c
	ld b, c                                                  ; $28ce : $41
	ld e, c                                                  ; $28cf : $59
	ld b, l                                                  ; $28d0 : $45

br_00_28d1:
	ld d, d                                                  ; $28d1 : $52
	jr nz, br_00_2922                                                  ; $28d2 : $20, $4e

br_00_28d4:
	ld b, c                                                  ; $28d4 : $41
	ld c, l                                                  ; $28d5 : $4d
	ld b, l                                                  ; $28d6 : $45
	ld a, ($4c0e)                                                  ; $28d7 : $3a, $0e, $4c
	ld l, $50                                                  ; $28da : $2e, $50
	ld c, h                                                  ; $28dc : $4c

br_00_28dd:
	ld b, c                                                  ; $28dd : $41
	ld e, c                                                  ; $28de : $59
	ld b, l                                                  ; $28df : $45

br_00_28e0:
	ld d, d                                                  ; $28e0 : $52
	jr nz, br_00_2931                                                  ; $28e1 : $20, $4e

br_00_28e3:
	ld b, c                                                  ; $28e3 : $41
	ld c, l                                                  ; $28e4 : $4d
	ld b, l                                                  ; $28e5 : $45
	ld a, ($4241)                                                  ; $28e6 : $3a, $41, $42
	ld b, e                                                  ; $28e9 : $43
	ld b, h                                                  ; $28ea : $44

br_00_28eb:
	ld b, l                                                  ; $28eb : $45
	ld b, (hl)                                                  ; $28ec : $46
	ld b, a                                                  ; $28ed : $47
	ld c, b                                                  ; $28ee : $48
	ld c, c                                                  ; $28ef : $49
	ld c, d                                                  ; $28f0 : $4a
	ld c, e                                                  ; $28f1 : $4b

br_00_28f2:
	ld c, h                                                  ; $28f2 : $4c
	ld c, l                                                  ; $28f3 : $4d
	ld c, (hl)                                                  ; $28f4 : $4e
	ld c, a                                                  ; $28f5 : $4f
	ld d, b                                                  ; $28f6 : $50
	ld d, c                                                  ; $28f7 : $51
	ld d, d                                                  ; $28f8 : $52
	ld d, e                                                  ; $28f9 : $53
	ld d, h                                                  ; $28fa : $54
	ld d, l                                                  ; $28fb : $55
	ld d, (hl)                                                  ; $28fc : $56
	ld d, a                                                  ; $28fd : $57
	ld e, b                                                  ; $28fe : $58

br_00_28ff:
	ld e, c                                                  ; $28ff : $59
	ld e, d                                                  ; $2900 : $5a
	ld h, c                                                  ; $2901 : $61
	ld h, c                                                  ; $2902 : $61
	ld (hl), c                                                  ; $2903 : $71
	ld (hl), c                                                  ; $2904 : $71

Jump_00_2905:
	ld a, d                                                  ; $2905 : $7a
	ld a, d                                                  ; $2906 : $7a
	ld sp, $4132                                                  ; $2907 : $31, $32, $41
	ld b, c                                                  ; $290a : $41
	ld d, c                                                  ; $290b : $51
	ld d, c                                                  ; $290c : $51
	ld e, d                                                  ; $290d : $5a

br_00_290e:
	ld e, d                                                  ; $290e : $5a
	ld hl, $7340                                                  ; $290f : $21, $40, $73
	ld (hl), e                                                  ; $2912 : $73
	ld (hl), a                                                  ; $2913 : $77

br_00_2914:
	ld (hl), a                                                  ; $2914 : $77
	ld a, b                                                  ; $2915 : $78
	ld a, b                                                  ; $2916 : $78
	inc sp                                                  ; $2917 : $33
	inc sp                                                  ; $2918 : $33
	ld d, e                                                  ; $2919 : $53
	ld d, e                                                  ; $291a : $53
	ld d, a                                                  ; $291b : $57
	ld d, a                                                  ; $291c : $57
	ld e, b                                                  ; $291d : $58
	ld e, b                                                  ; $291e : $58
	inc hl                                                  ; $291f : $23
	inc hl                                                  ; $2920 : $23
	ld h, h                                                  ; $2921 : $64

br_00_2922:
	ld h, h                                                  ; $2922 : $64
	ld h, l                                                  ; $2923 : $65
	ld h, l                                                  ; $2924 : $65
	ld h, e                                                  ; $2925 : $63
	ld h, e                                                  ; $2926 : $63
	inc (hl)                                                  ; $2927 : $34
	inc (hl)                                                  ; $2928 : $34
	ld b, h                                                  ; $2929 : $44
	ld b, h                                                  ; $292a : $44
	ld b, l                                                  ; $292b : $45
	ld b, l                                                  ; $292c : $45
	ld b, e                                                  ; $292d : $43
	ld b, e                                                  ; $292e : $43
	inc h                                                  ; $292f : $24
	inc h                                                  ; $2930 : $24

br_00_2931:
	ld h, (hl)                                                  ; $2931 : $66
	ld h, a                                                  ; $2932 : $67
	ld (hl), d                                                  ; $2933 : $72
	ld (hl), h                                                  ; $2934 : $74
	halt                                                  ; $2935 : $76
	ld h, d                                                  ; $2936 : $62
	dec (hl)                                                  ; $2937 : $35
	ld (hl), $46                                                  ; $2938 : $36, $46
	ld b, a                                                  ; $293a : $47
	ld d, d                                                  ; $293b : $52
	ld d, h                                                  ; $293c : $54
	ld d, (hl)                                                  ; $293d : $56
	ld b, d                                                  ; $293e : $42
	dec h                                                  ; $293f : $25
	dec l                                                  ; $2940 : $2d
	ld l, b                                                  ; $2941 : $68
	ld l, d                                                  ; $2942 : $6a
	ld a, c                                                  ; $2943 : $79
	ld (hl), l                                                  ; $2944 : $75
	ld l, (hl)                                                  ; $2945 : $6e
	ld l, l                                                  ; $2946 : $6d
	scf                                                  ; $2947 : $37
	jr c, $48                                                  ; $2948 : $38, $48

	ld c, d                                                  ; $294a : $4a
	ld e, c                                                  ; $294b : $59
	ld d, l                                                  ; $294c : $55
	ld c, (hl)                                                  ; $294d : $4e
	ld c, l                                                  ; $294e : $4d
	ld h, $2a                                                  ; $294f : $26, $2a
	ld l, e                                                  ; $2951 : $6b
	ld l, e                                                  ; $2952 : $6b
	ld l, c                                                  ; $2953 : $69
	ld l, c                                                  ; $2954 : $69
	inc l                                                  ; $2955 : $2c
	inc l                                                  ; $2956 : $2c
	add hl, sp                                                  ; $2957 : $39
	add hl, sp                                                  ; $2958 : $39
	ld c, e                                                  ; $2959 : $4b
	ld c, e                                                  ; $295a : $4b
	ld c, c                                                  ; $295b : $49
	ld c, c                                                  ; $295c : $49
	inc a                                                  ; $295d : $3c
	inc a                                                  ; $295e : $3c
	jr z, br_00_2989                                                  ; $295f : $28, $28

	ld l, h                                                  ; $2961 : $6c
	ld l, h                                                  ; $2962 : $6c
	ld l, a                                                  ; $2963 : $6f
	ld l, a                                                  ; $2964 : $6f
	ld l, $2e                                                  ; $2965 : $2e, $2e
	jr nc, br_00_2999                                                  ; $2967 : $30, $30

	ld c, h                                                  ; $2969 : $4c
	ld c, h                                                  ; $296a : $4c
	ld c, a                                                  ; $296b : $4f
	ld c, a                                                  ; $296c : $4f
	ld a, $3e                                                  ; $296d : $3e, $3e
	add hl, hl                                                  ; $296f : $29
	add hl, hl                                                  ; $2970 : $29
	dec sp                                                  ; $2971 : $3b
	daa                                                  ; $2972 : $27
	ld (hl), b                                                  ; $2973 : $70
	dec a                                                  ; $2974 : $3d
	cpl                                                  ; $2975 : $2f
	cpl                                                  ; $2976 : $2f
	dec sp                                                  ; $2977 : $3b
	dec a                                                  ; $2978 : $3d
	ld a, ($5022)                                                  ; $2979 : $3a, $22, $50
	dec hl                                                  ; $297c : $2b
	ccf                                                  ; $297d : $3f
	ccf                                                  ; $297e : $3f
	ld a, ($003f)                                                  ; $297f : $3a, $3f, $00
	sub l                                                  ; $2982 : $95
	call m, $6895                                                  ; $2983 : $fc, $95, $68
	sub a                                                  ; $2986 : $97
	rst $28                                                  ; $2987 : $ef
	sbc a, b                                                  ; $2988 : $98

br_00_2989:
	adc a, b                                                  ; $2989 : $88
	sbc a, d                                                  ; $298a : $9a
	nop                                                  ; $298b : $00
	sbc a, e                                                  ; $298c : $9b
	ld hl, $aa9c                                                  ; $298d : $21, $9c, $aa
	sbc a, (hl)                                                  ; $2990 : $9e
	jp c, $49a3                                                  ; $2991 : $da, $a3, $49
	and h                                                  ; $2994 : $a4
	ret z                                                  ; $2995 : $c8

	and h                                                  ; $2996 : $a4
	ld d, b                                                  ; $2997 : $50
	and l                                                  ; $2998 : $a5

br_00_2999:
	call nc, $7ea5                                                  ; $2999 : $d4, $a5, $7e
	and (hl)                                                  ; $299c : $a6
	ld c, c                                                  ; $299d : $49
	and a                                                  ; $299e : $a7
	ld hl, ($00a8)                                                  ; $299f : $2a, $a8, $00
	nop                                                  ; $29a2 : $00
	nop                                                  ; $29a3 : $00
	nop                                                  ; $29a4 : $00
	add a, c                                                  ; $29a5 : $81
	add hl, hl                                                  ; $29a6 : $29
	adc a, c                                                  ; $29a7 : $89
	add hl, hl                                                  ; $29a8 : $29
	sub c                                                  ; $29a9 : $91
	add hl, hl                                                  ; $29aa : $29
	sbc a, c                                                  ; $29ab : $99
	add hl, hl                                                  ; $29ac : $29
	nop                                                  ; $29ad : $00
	nop                                                  ; $29ae : $00
	nop                                                  ; $29af : $00
	nop                                                  ; $29b0 : $00
	nop                                                  ; $29b1 : $00
	sub b                                                  ; $29b2 : $90
	nop                                                  ; $29b3 : $00
	nop                                                  ; $29b4 : $00
	nop                                                  ; $29b5 : $00
	nop                                                  ; $29b6 : $00
	nop                                                  ; $29b7 : $00
	nop                                                  ; $29b8 : $00
	nop                                                  ; $29b9 : $00
	nop                                                  ; $29ba : $00
	nop                                                  ; $29bb : $00
	nop                                                  ; $29bc : $00
	nop                                                  ; $29bd : $00
	nop                                                  ; $29be : $00
	nop                                                  ; $29bf : $00
	nop                                                  ; $29c0 : $00
	nop                                                  ; $29c1 : $00
	nop                                                  ; $29c2 : $00
	nop                                                  ; $29c3 : $00
	nop                                                  ; $29c4 : $00
	nop                                                  ; $29c5 : $00
	ld b, c                                                  ; $29c6 : $41
	ld h, b                                                  ; $29c7 : $60
	ld b, e                                                  ; $29c8 : $43
	ld b, h                                                  ; $29c9 : $44
	ld b, l                                                  ; $29ca : $45
	ld b, a                                                  ; $29cb : $47
	jr nz, br_00_2a17                                                  ; $29cc : $20, $49

	ld c, d                                                  ; $29ce : $4a
	ld c, b                                                  ; $29cf : $48
	ld d, l                                                  ; $29d0 : $55
	jr z, br_00_2a19                                                  ; $29d1 : $28, $46

	add hl, hl                                                  ; $29d3 : $29
	ld hl, ($010a)                                                  ; $29d4 : $2a, $0a, $01
	ld (bc), a                                                  ; $29d7 : $02
	inc bc                                                  ; $29d8 : $03
	inc b                                                  ; $29d9 : $04
	dec b                                                  ; $29da : $05
	ld b, $07                                                  ; $29db : $06, $07
	ex af, af'                                                  ; $29dd : $08
	add hl, bc                                                  ; $29de : $09
	ld e, a                                                  ; $29df : $5f
	rra                                                  ; $29e0 : $1f
	ld l, b                                                  ; $29e1 : $68
	dec d                                                  ; $29e2 : $15
	ld l, c                                                  ; $29e3 : $69
	ld l, d                                                  ; $29e4 : $6a
	ld b, d                                                  ; $29e5 : $42
	ld d, (hl)                                                  ; $29e6 : $56
	ld h, l                                                  ; $29e7 : $65
	ld h, e                                                  ; $29e8 : $63
	ld e, b                                                  ; $29e9 : $58
	ld c, l                                                  ; $29ea : $4d
	ld e, c                                                  ; $29eb : $59
	ld e, d                                                  ; $29ec : $5a
	ld e, e                                                  ; $29ed : $5b
	ld d, d                                                  ; $29ee : $52
	ld e, h                                                  ; $29ef : $5c
	ld e, l                                                  ; $29f0 : $5d
	ld e, (hl)                                                  ; $29f1 : $5e
	ld h, a                                                  ; $29f2 : $67
	ld h, (hl)                                                  ; $29f3 : $66
	ld d, e                                                  ; $29f4 : $53
	ld d, h                                                  ; $29f5 : $54
	ld c, e                                                  ; $29f6 : $4b
	ld c, (hl)                                                  ; $29f7 : $4e
	ld d, a                                                  ; $29f8 : $57
	ld c, a                                                  ; $29f9 : $4f
	ld d, c                                                  ; $29fa : $51
	ld h, h                                                  ; $29fb : $64
	ld c, h                                                  ; $29fc : $4c
	ld h, d                                                  ; $29fd : $62
	ld d, b                                                  ; $29fe : $50
	ld h, c                                                  ; $29ff : $61
	nop                                                  ; $2a00 : $00
	nop                                                  ; $2a01 : $00
	nop                                                  ; $2a02 : $00
	nop                                                  ; $2a03 : $00
	nop                                                  ; $2a04 : $00
	nop                                                  ; $2a05 : $00
	ld d, $25                                                  ; $2a06 : $16, $25
	inc hl                                                  ; $2a08 : $23
	jr $0d                                                  ; $2a09 : $18, $0d

	add hl, de                                                  ; $2a0b : $19
	ld a, (de)                                                  ; $2a0c : $1a
	dec de                                                  ; $2a0d : $1b
	ld (de), a                                                  ; $2a0e : $12
	inc e                                                  ; $2a0f : $1c
	dec e                                                  ; $2a10 : $1d
	ld e, $27                                                  ; $2a11 : $1e, $27
	ld h, $13                                                  ; $2a13 : $26, $13
	inc d                                                  ; $2a15 : $14
	dec bc                                                  ; $2a16 : $0b

br_00_2a17:
	ld c, $17                                                  ; $2a17 : $0e, $17

br_00_2a19:
	rrca                                                  ; $2a19 : $0f
	ld de, $0c24                                                  ; $2a1a : $11, $24, $0c
	ld ($2110), hl                                                  ; $2a1d : $22, $10, $21
	nop                                                  ; $2a20 : $00
	nop                                                  ; $2a21 : $00
	nop                                                  ; $2a22 : $00
	nop                                                  ; $2a23 : $00
	nop                                                  ; $2a24 : $00
	nop                                                  ; $2a25 : $00
	nop                                                  ; $2a26 : $00
	nop                                                  ; $2a27 : $00
	nop                                                  ; $2a28 : $00
	nop                                                  ; $2a29 : $00
	nop                                                  ; $2a2a : $00
	nop                                                  ; $2a2b : $00
	nop                                                  ; $2a2c : $00
	nop                                                  ; $2a2d : $00
	nop                                                  ; $2a2e : $00
	nop                                                  ; $2a2f : $00
	nop                                                  ; $2a30 : $00
	nop                                                  ; $2a31 : $00
	nop                                                  ; $2a32 : $00
	nop                                                  ; $2a33 : $00
	nop                                                  ; $2a34 : $00
	nop                                                  ; $2a35 : $00
	nop                                                  ; $2a36 : $00
	nop                                                  ; $2a37 : $00
	nop                                                  ; $2a38 : $00
	nop                                                  ; $2a39 : $00
	nop                                                  ; $2a3a : $00
	nop                                                  ; $2a3b : $00
	nop                                                  ; $2a3c : $00
	nop                                                  ; $2a3d : $00
	nop                                                  ; $2a3e : $00
	nop                                                  ; $2a3f : $00
	nop                                                  ; $2a40 : $00
	nop                                                  ; $2a41 : $00
	nop                                                  ; $2a42 : $00
	nop                                                  ; $2a43 : $00
	nop                                                  ; $2a44 : $00
	nop                                                  ; $2a45 : $00
	nop                                                  ; $2a46 : $00
	nop                                                  ; $2a47 : $00
	nop                                                  ; $2a48 : $00
	nop                                                  ; $2a49 : $00
	nop                                                  ; $2a4a : $00
	nop                                                  ; $2a4b : $00
	nop                                                  ; $2a4c : $00
	nop                                                  ; $2a4d : $00
	nop                                                  ; $2a4e : $00
	nop                                                  ; $2a4f : $00
	nop                                                  ; $2a50 : $00
	nop                                                  ; $2a51 : $00
	nop                                                  ; $2a52 : $00
	nop                                                  ; $2a53 : $00
	nop                                                  ; $2a54 : $00
	nop                                                  ; $2a55 : $00
	nop                                                  ; $2a56 : $00
	nop                                                  ; $2a57 : $00
	nop                                                  ; $2a58 : $00
	nop                                                  ; $2a59 : $00
	nop                                                  ; $2a5a : $00
	nop                                                  ; $2a5b : $00
	nop                                                  ; $2a5c : $00
	nop                                                  ; $2a5d : $00
	nop                                                  ; $2a5e : $00
	nop                                                  ; $2a5f : $00
	nop                                                  ; $2a60 : $00
	nop                                                  ; $2a61 : $00
	nop                                                  ; $2a62 : $00
	nop                                                  ; $2a63 : $00
	nop                                                  ; $2a64 : $00
	nop                                                  ; $2a65 : $00
	nop                                                  ; $2a66 : $00
	nop                                                  ; $2a67 : $00
	nop                                                  ; $2a68 : $00
	nop                                                  ; $2a69 : $00
	nop                                                  ; $2a6a : $00
	nop                                                  ; $2a6b : $00
	nop                                                  ; $2a6c : $00
	nop                                                  ; $2a6d : $00
	nop                                                  ; $2a6e : $00
	nop                                                  ; $2a6f : $00
	nop                                                  ; $2a70 : $00
	nop                                                  ; $2a71 : $00
	nop                                                  ; $2a72 : $00
	nop                                                  ; $2a73 : $00
	nop                                                  ; $2a74 : $00
	nop                                                  ; $2a75 : $00
	nop                                                  ; $2a76 : $00
	nop                                                  ; $2a77 : $00
	nop                                                  ; $2a78 : $00
	nop                                                  ; $2a79 : $00
	nop                                                  ; $2a7a : $00
	nop                                                  ; $2a7b : $00
	nop                                                  ; $2a7c : $00
	nop                                                  ; $2a7d : $00
	nop                                                  ; $2a7e : $00
	nop                                                  ; $2a7f : $00
	nop                                                  ; $2a80 : $00
	nop                                                  ; $2a81 : $00
	nop                                                  ; $2a82 : $00
	nop                                                  ; $2a83 : $00
	nop                                                  ; $2a84 : $00
	nop                                                  ; $2a85 : $00
	nop                                                  ; $2a86 : $00
	nop                                                  ; $2a87 : $00
	nop                                                  ; $2a88 : $00
	nop                                                  ; $2a89 : $00
	nop                                                  ; $2a8a : $00
	nop                                                  ; $2a8b : $00
	nop                                                  ; $2a8c : $00
	nop                                                  ; $2a8d : $00
	nop                                                  ; $2a8e : $00
	nop                                                  ; $2a8f : $00
	nop                                                  ; $2a90 : $00
	nop                                                  ; $2a91 : $00
	nop                                                  ; $2a92 : $00
	nop                                                  ; $2a93 : $00
	nop                                                  ; $2a94 : $00
	nop                                                  ; $2a95 : $00
	nop                                                  ; $2a96 : $00
	nop                                                  ; $2a97 : $00
	nop                                                  ; $2a98 : $00
	nop                                                  ; $2a99 : $00
	nop                                                  ; $2a9a : $00
	nop                                                  ; $2a9b : $00
	nop                                                  ; $2a9c : $00
	nop                                                  ; $2a9d : $00
	nop                                                  ; $2a9e : $00
	nop                                                  ; $2a9f : $00
	nop                                                  ; $2aa0 : $00
	nop                                                  ; $2aa1 : $00
	nop                                                  ; $2aa2 : $00
	nop                                                  ; $2aa3 : $00
	nop                                                  ; $2aa4 : $00
	nop                                                  ; $2aa5 : $00
	nop                                                  ; $2aa6 : $00
	nop                                                  ; $2aa7 : $00
	nop                                                  ; $2aa8 : $00
	nop                                                  ; $2aa9 : $00
	nop                                                  ; $2aaa : $00
	nop                                                  ; $2aab : $00
	nop                                                  ; $2aac : $00
	nop                                                  ; $2aad : $00
	nop                                                  ; $2aae : $00
	nop                                                  ; $2aaf : $00
	nop                                                  ; $2ab0 : $00
	nop                                                  ; $2ab1 : $00
	nop                                                  ; $2ab2 : $00
	nop                                                  ; $2ab3 : $00
	nop                                                  ; $2ab4 : $00
	nop                                                  ; $2ab5 : $00
	nop                                                  ; $2ab6 : $00
	nop                                                  ; $2ab7 : $00
	nop                                                  ; $2ab8 : $00
	nop                                                  ; $2ab9 : $00
	nop                                                  ; $2aba : $00
	nop                                                  ; $2abb : $00
	nop                                                  ; $2abc : $00
	nop                                                  ; $2abd : $00
	nop                                                  ; $2abe : $00
	nop                                                  ; $2abf : $00
	nop                                                  ; $2ac0 : $00
	nop                                                  ; $2ac1 : $00
	nop                                                  ; $2ac2 : $00
	nop                                                  ; $2ac3 : $00
	nop                                                  ; $2ac4 : $00
	nop                                                  ; $2ac5 : $00
	nop                                                  ; $2ac6 : $00
	nop                                                  ; $2ac7 : $00
	nop                                                  ; $2ac8 : $00
	nop                                                  ; $2ac9 : $00
	nop                                                  ; $2aca : $00
	nop                                                  ; $2acb : $00
	nop                                                  ; $2acc : $00
	nop                                                  ; $2acd : $00
	nop                                                  ; $2ace : $00
	nop                                                  ; $2acf : $00
	nop                                                  ; $2ad0 : $00
	nop                                                  ; $2ad1 : $00
	nop                                                  ; $2ad2 : $00
	nop                                                  ; $2ad3 : $00
	nop                                                  ; $2ad4 : $00
	nop                                                  ; $2ad5 : $00
	nop                                                  ; $2ad6 : $00
	nop                                                  ; $2ad7 : $00
	nop                                                  ; $2ad8 : $00
	nop                                                  ; $2ad9 : $00
	nop                                                  ; $2ada : $00
	nop                                                  ; $2adb : $00
	nop                                                  ; $2adc : $00
	nop                                                  ; $2add : $00
	nop                                                  ; $2ade : $00
	nop                                                  ; $2adf : $00
	nop                                                  ; $2ae0 : $00
	nop                                                  ; $2ae1 : $00
	nop                                                  ; $2ae2 : $00
	nop                                                  ; $2ae3 : $00
	nop                                                  ; $2ae4 : $00
	nop                                                  ; $2ae5 : $00
	nop                                                  ; $2ae6 : $00
	nop                                                  ; $2ae7 : $00
	nop                                                  ; $2ae8 : $00
	nop                                                  ; $2ae9 : $00
	nop                                                  ; $2aea : $00
	nop                                                  ; $2aeb : $00
	nop                                                  ; $2aec : $00
	nop                                                  ; $2aed : $00
	nop                                                  ; $2aee : $00
	nop                                                  ; $2aef : $00
	nop                                                  ; $2af0 : $00
	nop                                                  ; $2af1 : $00
	nop                                                  ; $2af2 : $00
	nop                                                  ; $2af3 : $00
	nop                                                  ; $2af4 : $00
	nop                                                  ; $2af5 : $00
	nop                                                  ; $2af6 : $00
	nop                                                  ; $2af7 : $00
	nop                                                  ; $2af8 : $00
	nop                                                  ; $2af9 : $00
	nop                                                  ; $2afa : $00
	nop                                                  ; $2afb : $00
	nop                                                  ; $2afc : $00
	nop                                                  ; $2afd : $00
	nop                                                  ; $2afe : $00
	nop                                                  ; $2aff : $00
	nop                                                  ; $2b00 : $00
	nop                                                  ; $2b01 : $00
	nop                                                  ; $2b02 : $00
	nop                                                  ; $2b03 : $00
	nop                                                  ; $2b04 : $00
	nop                                                  ; $2b05 : $00
	nop                                                  ; $2b06 : $00
	nop                                                  ; $2b07 : $00
	nop                                                  ; $2b08 : $00
	nop                                                  ; $2b09 : $00
	nop                                                  ; $2b0a : $00
	nop                                                  ; $2b0b : $00
	nop                                                  ; $2b0c : $00
	nop                                                  ; $2b0d : $00
	nop                                                  ; $2b0e : $00
	nop                                                  ; $2b0f : $00
	nop                                                  ; $2b10 : $00
	nop                                                  ; $2b11 : $00
	nop                                                  ; $2b12 : $00
	nop                                                  ; $2b13 : $00
	nop                                                  ; $2b14 : $00
	nop                                                  ; $2b15 : $00
	nop                                                  ; $2b16 : $00
	nop                                                  ; $2b17 : $00
	nop                                                  ; $2b18 : $00
	nop                                                  ; $2b19 : $00
	nop                                                  ; $2b1a : $00
	nop                                                  ; $2b1b : $00
	nop                                                  ; $2b1c : $00
	nop                                                  ; $2b1d : $00
	nop                                                  ; $2b1e : $00
	nop                                                  ; $2b1f : $00
	nop                                                  ; $2b20 : $00
	nop                                                  ; $2b21 : $00
	nop                                                  ; $2b22 : $00
	nop                                                  ; $2b23 : $00
	nop                                                  ; $2b24 : $00
	nop                                                  ; $2b25 : $00
	nop                                                  ; $2b26 : $00
	nop                                                  ; $2b27 : $00
	nop                                                  ; $2b28 : $00
	nop                                                  ; $2b29 : $00
	nop                                                  ; $2b2a : $00
	nop                                                  ; $2b2b : $00
	nop                                                  ; $2b2c : $00
	nop                                                  ; $2b2d : $00
	nop                                                  ; $2b2e : $00
	nop                                                  ; $2b2f : $00
	nop                                                  ; $2b30 : $00
	nop                                                  ; $2b31 : $00
	nop                                                  ; $2b32 : $00
	nop                                                  ; $2b33 : $00
	nop                                                  ; $2b34 : $00
	nop                                                  ; $2b35 : $00
	nop                                                  ; $2b36 : $00
	nop                                                  ; $2b37 : $00
	nop                                                  ; $2b38 : $00
	nop                                                  ; $2b39 : $00
	nop                                                  ; $2b3a : $00
	nop                                                  ; $2b3b : $00
	nop                                                  ; $2b3c : $00
	nop                                                  ; $2b3d : $00
	nop                                                  ; $2b3e : $00
	nop                                                  ; $2b3f : $00
	nop                                                  ; $2b40 : $00
	nop                                                  ; $2b41 : $00
	nop                                                  ; $2b42 : $00
	nop                                                  ; $2b43 : $00
	nop                                                  ; $2b44 : $00
	nop                                                  ; $2b45 : $00
	nop                                                  ; $2b46 : $00
	nop                                                  ; $2b47 : $00
	nop                                                  ; $2b48 : $00
	nop                                                  ; $2b49 : $00
	nop                                                  ; $2b4a : $00
	nop                                                  ; $2b4b : $00
	nop                                                  ; $2b4c : $00
	nop                                                  ; $2b4d : $00
	nop                                                  ; $2b4e : $00
	nop                                                  ; $2b4f : $00
	nop                                                  ; $2b50 : $00
	nop                                                  ; $2b51 : $00
	nop                                                  ; $2b52 : $00
	nop                                                  ; $2b53 : $00
	nop                                                  ; $2b54 : $00
	nop                                                  ; $2b55 : $00
	nop                                                  ; $2b56 : $00
	nop                                                  ; $2b57 : $00
	nop                                                  ; $2b58 : $00
	nop                                                  ; $2b59 : $00
	nop                                                  ; $2b5a : $00
	nop                                                  ; $2b5b : $00
	nop                                                  ; $2b5c : $00
	nop                                                  ; $2b5d : $00
	nop                                                  ; $2b5e : $00
	nop                                                  ; $2b5f : $00
	nop                                                  ; $2b60 : $00
	nop                                                  ; $2b61 : $00
	nop                                                  ; $2b62 : $00
	nop                                                  ; $2b63 : $00
	nop                                                  ; $2b64 : $00
	nop                                                  ; $2b65 : $00
	nop                                                  ; $2b66 : $00
	nop                                                  ; $2b67 : $00
	nop                                                  ; $2b68 : $00
	nop                                                  ; $2b69 : $00
	nop                                                  ; $2b6a : $00
	nop                                                  ; $2b6b : $00
	nop                                                  ; $2b6c : $00
	nop                                                  ; $2b6d : $00
	nop                                                  ; $2b6e : $00
	nop                                                  ; $2b6f : $00
	nop                                                  ; $2b70 : $00
	nop                                                  ; $2b71 : $00
	nop                                                  ; $2b72 : $00
	nop                                                  ; $2b73 : $00
	nop                                                  ; $2b74 : $00
	nop                                                  ; $2b75 : $00
	nop                                                  ; $2b76 : $00
	nop                                                  ; $2b77 : $00
	nop                                                  ; $2b78 : $00
	nop                                                  ; $2b79 : $00
	nop                                                  ; $2b7a : $00
	nop                                                  ; $2b7b : $00
	nop                                                  ; $2b7c : $00
	nop                                                  ; $2b7d : $00
	nop                                                  ; $2b7e : $00
	nop                                                  ; $2b7f : $00
	nop                                                  ; $2b80 : $00
	nop                                                  ; $2b81 : $00
	nop                                                  ; $2b82 : $00
	nop                                                  ; $2b83 : $00
	nop                                                  ; $2b84 : $00
	nop                                                  ; $2b85 : $00
	nop                                                  ; $2b86 : $00
	nop                                                  ; $2b87 : $00
	nop                                                  ; $2b88 : $00
	nop                                                  ; $2b89 : $00
	nop                                                  ; $2b8a : $00
	nop                                                  ; $2b8b : $00
	nop                                                  ; $2b8c : $00
	nop                                                  ; $2b8d : $00
	nop                                                  ; $2b8e : $00
	nop                                                  ; $2b8f : $00
	nop                                                  ; $2b90 : $00
	nop                                                  ; $2b91 : $00
	nop                                                  ; $2b92 : $00
	nop                                                  ; $2b93 : $00
	nop                                                  ; $2b94 : $00
	nop                                                  ; $2b95 : $00
	nop                                                  ; $2b96 : $00
	nop                                                  ; $2b97 : $00
	nop                                                  ; $2b98 : $00
	nop                                                  ; $2b99 : $00
	nop                                                  ; $2b9a : $00
	nop                                                  ; $2b9b : $00
	nop                                                  ; $2b9c : $00
	nop                                                  ; $2b9d : $00
	nop                                                  ; $2b9e : $00
	nop                                                  ; $2b9f : $00
	nop                                                  ; $2ba0 : $00
	nop                                                  ; $2ba1 : $00
	nop                                                  ; $2ba2 : $00
	nop                                                  ; $2ba3 : $00
	nop                                                  ; $2ba4 : $00
	nop                                                  ; $2ba5 : $00
	nop                                                  ; $2ba6 : $00
	nop                                                  ; $2ba7 : $00
	nop                                                  ; $2ba8 : $00
	nop                                                  ; $2ba9 : $00
	nop                                                  ; $2baa : $00
	nop                                                  ; $2bab : $00
	nop                                                  ; $2bac : $00
	nop                                                  ; $2bad : $00
	nop                                                  ; $2bae : $00
	nop                                                  ; $2baf : $00
	nop                                                  ; $2bb0 : $00
	nop                                                  ; $2bb1 : $00
	nop                                                  ; $2bb2 : $00
	nop                                                  ; $2bb3 : $00
	nop                                                  ; $2bb4 : $00
	nop                                                  ; $2bb5 : $00
	nop                                                  ; $2bb6 : $00
	nop                                                  ; $2bb7 : $00
	nop                                                  ; $2bb8 : $00
	nop                                                  ; $2bb9 : $00
	nop                                                  ; $2bba : $00
	nop                                                  ; $2bbb : $00
	nop                                                  ; $2bbc : $00
	nop                                                  ; $2bbd : $00
	nop                                                  ; $2bbe : $00
	nop                                                  ; $2bbf : $00
	nop                                                  ; $2bc0 : $00
	nop                                                  ; $2bc1 : $00
	nop                                                  ; $2bc2 : $00
	nop                                                  ; $2bc3 : $00
	nop                                                  ; $2bc4 : $00
	nop                                                  ; $2bc5 : $00
	nop                                                  ; $2bc6 : $00
	nop                                                  ; $2bc7 : $00
	nop                                                  ; $2bc8 : $00
	nop                                                  ; $2bc9 : $00
	nop                                                  ; $2bca : $00
	nop                                                  ; $2bcb : $00
	nop                                                  ; $2bcc : $00
	nop                                                  ; $2bcd : $00
	nop                                                  ; $2bce : $00
	nop                                                  ; $2bcf : $00
	nop                                                  ; $2bd0 : $00
	nop                                                  ; $2bd1 : $00
	nop                                                  ; $2bd2 : $00
	nop                                                  ; $2bd3 : $00
	nop                                                  ; $2bd4 : $00
	nop                                                  ; $2bd5 : $00
	nop                                                  ; $2bd6 : $00
	nop                                                  ; $2bd7 : $00
	nop                                                  ; $2bd8 : $00
	nop                                                  ; $2bd9 : $00
	nop                                                  ; $2bda : $00
	nop                                                  ; $2bdb : $00
	nop                                                  ; $2bdc : $00
	nop                                                  ; $2bdd : $00
	nop                                                  ; $2bde : $00
	nop                                                  ; $2bdf : $00
	nop                                                  ; $2be0 : $00
	nop                                                  ; $2be1 : $00
	nop                                                  ; $2be2 : $00
	nop                                                  ; $2be3 : $00
	nop                                                  ; $2be4 : $00
	nop                                                  ; $2be5 : $00
	nop                                                  ; $2be6 : $00
	nop                                                  ; $2be7 : $00
	nop                                                  ; $2be8 : $00
	nop                                                  ; $2be9 : $00
	nop                                                  ; $2bea : $00
	nop                                                  ; $2beb : $00
	nop                                                  ; $2bec : $00
	nop                                                  ; $2bed : $00
	nop                                                  ; $2bee : $00
	nop                                                  ; $2bef : $00
	nop                                                  ; $2bf0 : $00
	nop                                                  ; $2bf1 : $00
	nop                                                  ; $2bf2 : $00
	nop                                                  ; $2bf3 : $00
	nop                                                  ; $2bf4 : $00
	nop                                                  ; $2bf5 : $00
	nop                                                  ; $2bf6 : $00
	nop                                                  ; $2bf7 : $00
	nop                                                  ; $2bf8 : $00
	nop                                                  ; $2bf9 : $00
	nop                                                  ; $2bfa : $00
	nop                                                  ; $2bfb : $00
	nop                                                  ; $2bfc : $00
	nop                                                  ; $2bfd : $00
	nop                                                  ; $2bfe : $00
	nop                                                  ; $2bff : $00
	nop                                                  ; $2c00 : $00
	nop                                                  ; $2c01 : $00
	ld e, e                                                  ; $2c02 : $5b
	ld (de), a                                                  ; $2c03 : $12
	ld d, b                                                  ; $2c04 : $50
	inc d                                                  ; $2c05 : $14
	ld b, a                                                  ; $2c06 : $47
	ld d, $44                                                  ; $2c07 : $16, $44
	rla                                                  ; $2c09 : $17
	inc a                                                  ; $2c0a : $3c
	ld a, (de)                                                  ; $2c0b : $1a
	dec (hl)                                                  ; $2c0c : $35
	dec e                                                  ; $2c0d : $1d
	cpl                                                  ; $2c0e : $2f
	ld hl, $232c                                                  ; $2c0f : $21, $2c, $23
	daa                                                  ; $2c12 : $27
	ld h, $22                                                  ; $2c13 : $26, $22
	inc l                                                  ; $2c15 : $2c
	rra                                                  ; $2c16 : $1f
	jr nc, br_00_2c35                                                  ; $2c17 : $30, $1c

	dec (hl)                                                  ; $2c19 : $35
	add hl, de                                                  ; $2c1a : $19
	ld a, ($4116)                                                  ; $2c1b : $3a, $16, $41
	inc d                                                  ; $2c1e : $14
	ld b, (hl)                                                  ; $2c1f : $46
	ex af, af'                                                  ; $2c20 : $08
	rst $38                                                  ; $2c21 : $ff
	ex af, af'                                                  ; $2c22 : $08
	rst $38                                                  ; $2c23 : $ff
	dec b                                                  ; $2c24 : $05
	rst $38                                                  ; $2c25 : $ff
	inc b                                                  ; $2c26 : $04
	ld bc, $0604                                                  ; $2c27 : $01, $04, $06
	rst $38                                                  ; $2c2a : $ff
	inc b                                                  ; $2c2b : $04
	rst $38                                                  ; $2c2c : $ff
	dec b                                                  ; $2c2d : $05
	nop                                                  ; $2c2e : $00
	ex af, af'                                                  ; $2c2f : $08
	add hl, bc                                                  ; $2c30 : $09
	dec bc                                                  ; $2c31 : $0b
	ld a, (bc)                                                  ; $2c32 : $0a
	add hl, bc                                                  ; $2c33 : $09
	ex af, af'                                                  ; $2c34 : $08

br_00_2c35:
	rlca                                                  ; $2c35 : $07
	ld b, $05                                                  ; $2c36 : $06, $05
	nop                                                  ; $2c38 : $00
	inc bc                                                  ; $2c39 : $03
	inc b                                                  ; $2c3a : $04
	dec b                                                  ; $2c3b : $05
	inc bc                                                  ; $2c3c : $03
	rst $38                                                  ; $2c3d : $ff
	rst $38                                                  ; $2c3e : $ff
	dec b                                                  ; $2c3f : $05
	rst $38                                                  ; $2c40 : $ff
	rlca                                                  ; $2c41 : $07
	rst $38                                                  ; $2c42 : $ff
	ex af, af'                                                  ; $2c43 : $08
	nop                                                  ; $2c44 : $00
	ld bc, $0503                                                  ; $2c45 : $01, $03, $05
	inc bc                                                  ; $2c48 : $03
	rst $38                                                  ; $2c49 : $ff
	rst $38                                                  ; $2c4a : $ff
	ld bc, $02ff                                                  ; $2c4b : $01, $ff, $02
	rst $38                                                  ; $2c4e : $ff
	ld bc, $0500                                                  ; $2c4f : $01, $00, $05
	rst $38                                                  ; $2c52 : $ff
	ld bc, $06ff                                                  ; $2c53 : $01, $ff, $06
	rst $38                                                  ; $2c56 : $ff
	dec b                                                  ; $2c57 : $05
	rst $38                                                  ; $2c58 : $ff
	ld bc, $0302                                                  ; $2c59 : $01, $02, $03
	inc b                                                  ; $2c5c : $04
	dec b                                                  ; $2c5d : $05
	rst $38                                                  ; $2c5e : $ff
	rst $38                                                  ; $2c5f : $ff
	rlca                                                  ; $2c60 : $07
	ex af, af'                                                  ; $2c61 : $08
	nop                                                  ; $2c62 : $00
	ld bc, $8000                                                  ; $2c63 : $01, $00, $80
	ld a, $01                                                  ; $2c66 : $3e, $01
	out (c), a                                                  ; $2c68 : $ed, $79
	nop                                                  ; $2c6a : $00
	nop                                                  ; $2c6b : $00
	nop                                                  ; $2c6c : $00

Jump_00_2c6d:
	ld bc, $8000                                                  ; $2c6d : $01, $00, $80
	ld a, $01                                                  ; $2c70 : $3e, $01
	out (c), a                                                  ; $2c72 : $ed, $79
	jp Boot                                                  ; $2c74 : $c3, $00, $00


Jump_00_2c77:
	ld hl, $4112                                                  ; $2c77 : $21, $12, $41
	res 3, (hl)                                                  ; $2c7a : $cb, $9e
	ld a, $33                                                  ; $2c7c : $3e, $33
	ld ($4119), a                                                  ; $2c7e : $32, $19, $41
	ld hl, $4155                                                  ; $2c81 : $21, $55, $41
	set 0, (hl)                                                  ; $2c84 : $cb, $c6
	set 1, (hl)                                                  ; $2c86 : $cb, $ce
	ld hl, $2666                                                  ; $2c88 : $21, $66, $26
	call Call_00_2d08                                                  ; $2c8b : $cd, $08, $2d
	ld hl, $2679                                                  ; $2c8e : $21, $79, $26
	call Call_00_2d08                                                  ; $2c91 : $cd, $08, $2d
	ld hl, $2653                                                  ; $2c94 : $21, $53, $26
	call Call_00_0386                                                  ; $2c97 : $cd, $86, $03
	call Call_00_2d17                                                  ; $2c9a : $cd, $17, $2d
	call Call_00_04f2                                                  ; $2c9d : $cd, $f2, $04
	call Call_00_0af5                                                  ; $2ca0 : $cd, $f5, $0a
	call Call_00_2d17                                                  ; $2ca3 : $cd, $17, $2d

Jump_00_2ca6:
	ld hl, $4155                                                  ; $2ca6 : $21, $55, $41
	ld (hl), $00                                                  ; $2ca9 : $36, $00
	cp $02                                                  ; $2cab : $fe, $02
	jp z, Jump_00_2ce4                                                  ; $2cad : $ca, $e4, $2c
	ld ($4060), a                                                  ; $2cb0 : $32, $60, $40
	ld hl, $268a                                                  ; $2cb3 : $21, $8a, $26
	call Call_00_03ab                                                  ; $2cb6 : $cd, $ab, $03
	call Call_00_03dd                                                  ; $2cb9 : $cd, $dd, $03
	ld a, $3a                                                  ; $2cbc : $3e, $3a
	ld ($4119), a                                                  ; $2cbe : $32, $19, $41
	ld hl, $4155                                                  ; $2cc1 : $21, $55, $41
	set 0, (hl)                                                  ; $2cc4 : $cb, $c6
	ld hl, $26aa                                                  ; $2cc6 : $21, $aa, $26
	call Call_00_0386                                                  ; $2cc9 : $cd, $86, $03
	ld hl, $4155                                                  ; $2ccc : $21, $55, $41
	bit 2, (hl)                                                  ; $2ccf : $cb, $56
	push af                                                  ; $2cd1 : $f5
	call z, Call_00_04f2                                                  ; $2cd2 : $cc, $f2, $04
	pop af                                                  ; $2cd5 : $f1
	call z, Call_00_0af5                                                  ; $2cd6 : $cc, $f5, $0a
	ld hl, $4155                                                  ; $2cd9 : $21, $55, $41
	ld (hl), $00                                                  ; $2cdc : $36, $00
	ld ($4061), a                                                  ; $2cde : $32, $61, $40
	jp Jump_00_2cee                                                  ; $2ce1 : $c3, $ee, $2c


Jump_00_2ce4:
	xor a                                                  ; $2ce4 : $af
	ld ($4060), a                                                  ; $2ce5 : $32, $60, $40
	ld hl, $269b                                                  ; $2ce8 : $21, $9b, $26
	call Call_00_03ab                                                  ; $2ceb : $cd, $ab, $03

Jump_00_2cee:
	call Call_00_03dd                                                  ; $2cee : $cd, $dd, $03
	ld de, $2c2f                                                  ; $2cf1 : $11, $2f, $2c
	call Call_00_0782                                                  ; $2cf4 : $cd, $82, $07
	call Call_00_03dd                                                  ; $2cf7 : $cd, $dd, $03
	ld de, $4000                                                  ; $2cfa : $11, $00, $40
	ld hl, $2c63                                                  ; $2cfd : $21, $63, $2c
	ld bc, $0030                                                  ; $2d00 : $01, $30, $00
	ldir                                                  ; $2d03 : $ed, $b0
	jp $4000                                                  ; $2d05 : $c3, $00, $40


Call_00_2d08:
	call Call_00_0386                                                  ; $2d08 : $cd, $86, $03
	ld hl, $4155                                                  ; $2d0b : $21, $55, $41
	bit 2, (hl)                                                  ; $2d0e : $cb, $56
	jr nz, br_00_2d22                                                  ; $2d10 : $20, $10

	bit 1, (hl)                                                  ; $2d12 : $cb, $4e
	call nz, Call_00_03dd                                                  ; $2d14 : $c4, $dd, $03

Call_00_2d17:
	ld hl, $4155                                                  ; $2d17 : $21, $55, $41
	bit 1, (hl)                                                  ; $2d1a : $cb, $4e
	jr nz, br_00_2d22                                                  ; $2d1c : $20, $04

	pop de                                                  ; $2d1e : $d1
	jp Jump_00_2c77                                                  ; $2d1f : $c3, $77, $2c


br_00_2d22:
	bit 2, (hl)                                                  ; $2d22 : $cb, $56
	ret z                                                  ; $2d24 : $c8

	pop de                                                  ; $2d25 : $d1
	jp Jump_00_2ca6                                                  ; $2d26 : $c3, $a6, $2c


	nop                                                  ; $2d29 : $00
	bit 1, (hl)                                                  ; $2d2a : $cb, $4e
	jr nz, br_00_2d32                                                  ; $2d2c : $20, $04

	pop de                                                  ; $2d2e : $d1
	jp Jump_00_2c6d                                                  ; $2d2f : $c3, $6d, $2c


br_00_2d32:
	bit 2, (hl)                                                  ; $2d32 : $cb, $56
	ret z                                                  ; $2d34 : $c8

	pop de                                                  ; $2d35 : $d1
	jp $2c9c                                                  ; $2d36 : $c3, $9c, $2c


	nop                                                  ; $2d39 : $00
	nop                                                  ; $2d3a : $00
	nop                                                  ; $2d3b : $00
	nop                                                  ; $2d3c : $00
	nop                                                  ; $2d3d : $00
	nop                                                  ; $2d3e : $00
	nop                                                  ; $2d3f : $00
	nop                                                  ; $2d40 : $00
	nop                                                  ; $2d41 : $00
	nop                                                  ; $2d42 : $00
	nop                                                  ; $2d43 : $00
	nop                                                  ; $2d44 : $00
	nop                                                  ; $2d45 : $00
	nop                                                  ; $2d46 : $00
	nop                                                  ; $2d47 : $00
	nop                                                  ; $2d48 : $00
	nop                                                  ; $2d49 : $00
	nop                                                  ; $2d4a : $00
	nop                                                  ; $2d4b : $00
	nop                                                  ; $2d4c : $00
	nop                                                  ; $2d4d : $00
	nop                                                  ; $2d4e : $00
	nop                                                  ; $2d4f : $00
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
	nop                                                  ; $2d5d : $00
	nop                                                  ; $2d5e : $00
	nop                                                  ; $2d5f : $00
	nop                                                  ; $2d60 : $00
	nop                                                  ; $2d61 : $00
	nop                                                  ; $2d62 : $00
	nop                                                  ; $2d63 : $00
	nop                                                  ; $2d64 : $00
	nop                                                  ; $2d65 : $00
	nop                                                  ; $2d66 : $00
	nop                                                  ; $2d67 : $00
	nop                                                  ; $2d68 : $00
	nop                                                  ; $2d69 : $00
	nop                                                  ; $2d6a : $00
	nop                                                  ; $2d6b : $00
	nop                                                  ; $2d6c : $00
	nop                                                  ; $2d6d : $00
	nop                                                  ; $2d6e : $00
	nop                                                  ; $2d6f : $00
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
	nop                                                  ; $2d7d : $00
	nop                                                  ; $2d7e : $00
	nop                                                  ; $2d7f : $00
	nop                                                  ; $2d80 : $00
	nop                                                  ; $2d81 : $00
	nop                                                  ; $2d82 : $00
	nop                                                  ; $2d83 : $00
	nop                                                  ; $2d84 : $00
	nop                                                  ; $2d85 : $00
	nop                                                  ; $2d86 : $00
	nop                                                  ; $2d87 : $00
	nop                                                  ; $2d88 : $00
	nop                                                  ; $2d89 : $00
	nop                                                  ; $2d8a : $00
	nop                                                  ; $2d8b : $00
	nop                                                  ; $2d8c : $00
	nop                                                  ; $2d8d : $00
	nop                                                  ; $2d8e : $00
	nop                                                  ; $2d8f : $00
	nop                                                  ; $2d90 : $00
	nop                                                  ; $2d91 : $00
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
	nop                                                  ; $2d9d : $00
	nop                                                  ; $2d9e : $00
	nop                                                  ; $2d9f : $00
	nop                                                  ; $2da0 : $00
	nop                                                  ; $2da1 : $00
	nop                                                  ; $2da2 : $00
	nop                                                  ; $2da3 : $00
	nop                                                  ; $2da4 : $00
	nop                                                  ; $2da5 : $00
	nop                                                  ; $2da6 : $00
	nop                                                  ; $2da7 : $00
	nop                                                  ; $2da8 : $00
	nop                                                  ; $2da9 : $00
	nop                                                  ; $2daa : $00
	nop                                                  ; $2dab : $00
	nop                                                  ; $2dac : $00
	nop                                                  ; $2dad : $00
	nop                                                  ; $2dae : $00
	nop                                                  ; $2daf : $00
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
	nop                                                  ; $2dbd : $00
	nop                                                  ; $2dbe : $00
	nop                                                  ; $2dbf : $00
	nop                                                  ; $2dc0 : $00
	nop                                                  ; $2dc1 : $00
	nop                                                  ; $2dc2 : $00
	nop                                                  ; $2dc3 : $00
	nop                                                  ; $2dc4 : $00
	nop                                                  ; $2dc5 : $00
	nop                                                  ; $2dc6 : $00
	nop                                                  ; $2dc7 : $00
	nop                                                  ; $2dc8 : $00
	nop                                                  ; $2dc9 : $00
	nop                                                  ; $2dca : $00
	nop                                                  ; $2dcb : $00
	nop                                                  ; $2dcc : $00
	nop                                                  ; $2dcd : $00
	nop                                                  ; $2dce : $00
	nop                                                  ; $2dcf : $00
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
	nop                                                  ; $2ddd : $00
	nop                                                  ; $2dde : $00
	nop                                                  ; $2ddf : $00
	nop                                                  ; $2de0 : $00
	nop                                                  ; $2de1 : $00
	nop                                                  ; $2de2 : $00
	nop                                                  ; $2de3 : $00
	nop                                                  ; $2de4 : $00
	nop                                                  ; $2de5 : $00
	nop                                                  ; $2de6 : $00
	nop                                                  ; $2de7 : $00
	nop                                                  ; $2de8 : $00
	nop                                                  ; $2de9 : $00
	nop                                                  ; $2dea : $00
	nop                                                  ; $2deb : $00
	nop                                                  ; $2dec : $00
	nop                                                  ; $2ded : $00
	nop                                                  ; $2dee : $00
	nop                                                  ; $2def : $00
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
	nop                                                  ; $2dfd : $00
	nop                                                  ; $2dfe : $00
	nop                                                  ; $2dff : $00
	nop                                                  ; $2e00 : $00
	nop                                                  ; $2e01 : $00
	nop                                                  ; $2e02 : $00
	nop                                                  ; $2e03 : $00
	nop                                                  ; $2e04 : $00
	nop                                                  ; $2e05 : $00
	nop                                                  ; $2e06 : $00
	nop                                                  ; $2e07 : $00
	nop                                                  ; $2e08 : $00
	nop                                                  ; $2e09 : $00
	nop                                                  ; $2e0a : $00
	nop                                                  ; $2e0b : $00
	nop                                                  ; $2e0c : $00
	nop                                                  ; $2e0d : $00
	nop                                                  ; $2e0e : $00
	nop                                                  ; $2e0f : $00
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
	nop                                                  ; $2e1d : $00
	nop                                                  ; $2e1e : $00
	nop                                                  ; $2e1f : $00
	nop                                                  ; $2e20 : $00
	nop                                                  ; $2e21 : $00
	nop                                                  ; $2e22 : $00
	nop                                                  ; $2e23 : $00
	nop                                                  ; $2e24 : $00
	nop                                                  ; $2e25 : $00
	nop                                                  ; $2e26 : $00
	nop                                                  ; $2e27 : $00
	nop                                                  ; $2e28 : $00
	nop                                                  ; $2e29 : $00
	nop                                                  ; $2e2a : $00
	nop                                                  ; $2e2b : $00
	nop                                                  ; $2e2c : $00
	nop                                                  ; $2e2d : $00
	nop                                                  ; $2e2e : $00
	nop                                                  ; $2e2f : $00
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
	nop                                                  ; $2e3d : $00
	nop                                                  ; $2e3e : $00
	nop                                                  ; $2e3f : $00
	nop                                                  ; $2e40 : $00
	nop                                                  ; $2e41 : $00
	nop                                                  ; $2e42 : $00
	nop                                                  ; $2e43 : $00
	nop                                                  ; $2e44 : $00
	nop                                                  ; $2e45 : $00
	nop                                                  ; $2e46 : $00
	nop                                                  ; $2e47 : $00
	nop                                                  ; $2e48 : $00
	nop                                                  ; $2e49 : $00
	nop                                                  ; $2e4a : $00
	nop                                                  ; $2e4b : $00
	nop                                                  ; $2e4c : $00
	nop                                                  ; $2e4d : $00
	nop                                                  ; $2e4e : $00
	nop                                                  ; $2e4f : $00
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
	nop                                                  ; $2e5d : $00
	nop                                                  ; $2e5e : $00
	nop                                                  ; $2e5f : $00
	nop                                                  ; $2e60 : $00
	nop                                                  ; $2e61 : $00
	nop                                                  ; $2e62 : $00
	nop                                                  ; $2e63 : $00
	nop                                                  ; $2e64 : $00
	nop                                                  ; $2e65 : $00
	nop                                                  ; $2e66 : $00
	nop                                                  ; $2e67 : $00
	nop                                                  ; $2e68 : $00
	nop                                                  ; $2e69 : $00
	nop                                                  ; $2e6a : $00
	nop                                                  ; $2e6b : $00
	nop                                                  ; $2e6c : $00
	nop                                                  ; $2e6d : $00
	nop                                                  ; $2e6e : $00
	nop                                                  ; $2e6f : $00
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
	nop                                                  ; $2e7d : $00
	nop                                                  ; $2e7e : $00
	nop                                                  ; $2e7f : $00
	nop                                                  ; $2e80 : $00
	nop                                                  ; $2e81 : $00
	nop                                                  ; $2e82 : $00
	nop                                                  ; $2e83 : $00
	nop                                                  ; $2e84 : $00
	nop                                                  ; $2e85 : $00
	nop                                                  ; $2e86 : $00
	nop                                                  ; $2e87 : $00
	nop                                                  ; $2e88 : $00
	nop                                                  ; $2e89 : $00
	nop                                                  ; $2e8a : $00
	nop                                                  ; $2e8b : $00
	nop                                                  ; $2e8c : $00
	nop                                                  ; $2e8d : $00
	nop                                                  ; $2e8e : $00
	nop                                                  ; $2e8f : $00
	nop                                                  ; $2e90 : $00
	nop                                                  ; $2e91 : $00
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
	nop                                                  ; $2e9d : $00
	nop                                                  ; $2e9e : $00
	nop                                                  ; $2e9f : $00
	nop                                                  ; $2ea0 : $00
	nop                                                  ; $2ea1 : $00
	nop                                                  ; $2ea2 : $00
	nop                                                  ; $2ea3 : $00
	nop                                                  ; $2ea4 : $00
	nop                                                  ; $2ea5 : $00
	nop                                                  ; $2ea6 : $00
	nop                                                  ; $2ea7 : $00
	nop                                                  ; $2ea8 : $00
	nop                                                  ; $2ea9 : $00
	nop                                                  ; $2eaa : $00
	nop                                                  ; $2eab : $00
	nop                                                  ; $2eac : $00
	nop                                                  ; $2ead : $00
	nop                                                  ; $2eae : $00
	nop                                                  ; $2eaf : $00
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
	nop                                                  ; $2ebd : $00
	nop                                                  ; $2ebe : $00
	nop                                                  ; $2ebf : $00
	nop                                                  ; $2ec0 : $00
	nop                                                  ; $2ec1 : $00
	nop                                                  ; $2ec2 : $00
	nop                                                  ; $2ec3 : $00
	nop                                                  ; $2ec4 : $00
	nop                                                  ; $2ec5 : $00
	nop                                                  ; $2ec6 : $00
	nop                                                  ; $2ec7 : $00
	nop                                                  ; $2ec8 : $00
	nop                                                  ; $2ec9 : $00
	nop                                                  ; $2eca : $00
	nop                                                  ; $2ecb : $00
	nop                                                  ; $2ecc : $00
	nop                                                  ; $2ecd : $00
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
	nop                                                  ; $2f3c : $00
	nop                                                  ; $2f3d : $00
	nop                                                  ; $2f3e : $00
	nop                                                  ; $2f3f : $00
	nop                                                  ; $2f40 : $00
	nop                                                  ; $2f41 : $00
	nop                                                  ; $2f42 : $00
	nop                                                  ; $2f43 : $00
	nop                                                  ; $2f44 : $00
	nop                                                  ; $2f45 : $00
	nop                                                  ; $2f46 : $00
	nop                                                  ; $2f47 : $00
	nop                                                  ; $2f48 : $00
	nop                                                  ; $2f49 : $00
	nop                                                  ; $2f4a : $00
	nop                                                  ; $2f4b : $00
	nop                                                  ; $2f4c : $00
	nop                                                  ; $2f4d : $00
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
	nop                                                  ; $2f85 : $00
	nop                                                  ; $2f86 : $00
	nop                                                  ; $2f87 : $00
	nop                                                  ; $2f88 : $00
	nop                                                  ; $2f89 : $00
	nop                                                  ; $2f8a : $00
	nop                                                  ; $2f8b : $00
	nop                                                  ; $2f8c : $00
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
	nop                                                  ; $2fe4 : $00
	nop                                                  ; $2fe5 : $00
	nop                                                  ; $2fe6 : $00
	nop                                                  ; $2fe7 : $00
	nop                                                  ; $2fe8 : $00
	nop                                                  ; $2fe9 : $00
	nop                                                  ; $2fea : $00
	nop                                                  ; $2feb : $00
	nop                                                  ; $2fec : $00
	nop                                                  ; $2fed : $00
	nop                                                  ; $2fee : $00
	nop                                                  ; $2fef : $00
	call Call_00_0244                                                  ; $2ff0 : $cd, $44, $02
	ld hl, $42ee                                                  ; $2ff3 : $21, $ee, $42
	ld (hl), $00                                                  ; $2ff6 : $36, $00
	inc hl                                                  ; $2ff8 : $23
	ld (hl), $00                                                  ; $2ff9 : $36, $00
	jp Jump_00_036e                                                  ; $2ffb : $c3, $6e, $03


	nop                                                  ; $2ffe : $00
	nop                                                  ; $2fff : $00
	xor a                                                  ; $3000 : $af
	jp Jump_00_3010                                                  ; $3001 : $c3, $10, $30


	ld a, $01                                                  ; $3004 : $3e, $01
	jp Jump_00_3010                                                  ; $3006 : $c3, $10, $30


	ld a, $02                                                  ; $3009 : $3e, $02
	jp Jump_00_3010                                                  ; $300b : $c3, $10, $30


	ld a, $03                                                  ; $300e : $3e, $03

Jump_00_3010:
	ld ($462f), a                                                  ; $3010 : $32, $2f, $46
	xor a                                                  ; $3013 : $af
	ld ($4637), a                                                  ; $3014 : $32, $37, $46

Jump_00_3017:
	di                                                  ; $3017 : $f3
	ld hl, $4112                                                  ; $3018 : $21, $12, $41
	res 3, (hl)                                                  ; $301b : $cb, $9e
	ld a, $04                                                  ; $301d : $3e, $04
	ld ($4640), a                                                  ; $301f : $32, $40, $46
	ld ($4641), a                                                  ; $3022 : $32, $41, $46
	call Call_00_1075                                                  ; $3025 : $cd, $75, $10
	call Call_00_3bdc                                                  ; $3028 : $cd, $dc, $3b
	jp nz, Jump_00_309a                                                  ; $302b : $c2, $9a, $30
	ld a, $01                                                  ; $302e : $3e, $01
	ld ($4640), a                                                  ; $3030 : $32, $40, $46
	ld ($4641), a                                                  ; $3033 : $32, $41, $46
	call Call_00_3bcc                                                  ; $3036 : $cd, $cc, $3b
	nop                                                  ; $3039 : $00
	nop                                                  ; $303a : $00
	nop                                                  ; $303b : $00
	nop                                                  ; $303c : $00
	nop                                                  ; $303d : $00
	nop                                                  ; $303e : $00
	call Call_00_02f8                                                  ; $303f : $cd, $f8, $02
	ld hl, $3616                                                  ; $3042 : $21, $16, $36
	ld de, $0002                                                  ; $3045 : $11, $02, $00
	ld a, ($462f)                                                  ; $3048 : $3a, $2f, $46
	call Call_00_3aee                                                  ; $304b : $cd, $ee, $3a
	ld e, (hl)                                                  ; $304e : $5e
	inc hl                                                  ; $304f : $23
	ld d, (hl)                                                  ; $3050 : $56
	ex de, hl                                                  ; $3051 : $eb

Jump_00_3052:
	call Call_00_355c                                                  ; $3052 : $cd, $5c, $35
	call Call_00_10e5                                                  ; $3055 : $cd, $e5, $10
	ld a, ($4117)                                                  ; $3058 : $3a, $17, $41
	ld ($462e), a                                                  ; $305b : $32, $2e, $46
	call Call_00_11bd                                                  ; $305e : $cd, $bd, $11
	ld ($4639), a                                                  ; $3061 : $32, $39, $46

Jump_00_3064:
	ld de, $2c2f                                                  ; $3064 : $11, $2f, $2c
	call Call_00_0782                                                  ; $3067 : $cd, $82, $07
	call Call_00_03dd                                                  ; $306a : $cd, $dd, $03
	call Call_00_3bdc                                                  ; $306d : $cd, $dc, $3b
	jp nz, Jump_00_3094                                                  ; $3070 : $c2, $94, $30
	jp Jump_00_3660                                                  ; $3073 : $c3, $60, $36


Jump_00_3076:
	ld de, $0008                                                  ; $3076 : $11, $08, $00
	ld a, ($462f)                                                  ; $3079 : $3a, $2f, $46
	call Call_00_3aee                                                  ; $307c : $cd, $ee, $3a

Jump_00_307f:
	ld de, $0002                                                  ; $307f : $11, $02, $00
	ld a, ($462e)                                                  ; $3082 : $3a, $2e, $46
	call Call_00_3aee                                                  ; $3085 : $cd, $ee, $3a
	call Call_00_3af6                                                  ; $3088 : $cd, $f6, $3a
	ld hl, ($4642)                                                  ; $308b : $2a, $42, $46
	ld ($4634), hl                                                  ; $308e : $22, $34, $46
	jp Jump_00_30ac                                                  ; $3091 : $c3, $ac, $30


Jump_00_3094:
	ld hl, $8037                                                  ; $3094 : $21, $37, $80
	jp Jump_00_3650                                                  ; $3097 : $c3, $50, $36


Jump_00_309a:
	nop                                                  ; $309a : $00
	nop                                                  ; $309b : $00
	nop                                                  ; $309c : $00
	nop                                                  ; $309d : $00
	nop                                                  ; $309e : $00
	nop                                                  ; $309f : $00
	call Call_00_3bcc                                                  ; $30a0 : $cd, $cc, $3b
	call Call_00_02f8                                                  ; $30a3 : $cd, $f8, $02
	ld hl, $809b                                                  ; $30a6 : $21, $9b, $80
	jp Jump_00_3052                                                  ; $30a9 : $c3, $52, $30


Jump_00_30ac:
	ld a, $00                                                  ; $30ac : $3e, $00
	ld ($4631), a                                                  ; $30ae : $32, $31, $46
	ld a, $0a                                                  ; $30b1 : $3e, $0a
	ld ($4632), a                                                  ; $30b3 : $32, $32, $46
	ld a, $64                                                  ; $30b6 : $3e, $64
	ld ($4128), a                                                  ; $30b8 : $32, $28, $41
	ld ($4129), a                                                  ; $30bb : $32, $29, $41

Jump_00_30be:
	ld a, $0a                                                  ; $30be : $3e, $0a
	ld ($4630), a                                                  ; $30c0 : $32, $30, $46
	ld a, $03                                                  ; $30c3 : $3e, $03
	ld ($4633), a                                                  ; $30c5 : $32, $33, $46
	call Call_00_3800                                                  ; $30c8 : $cd, $00, $38
	ld a, $02                                                  ; $30cb : $3e, $02
	ld ($462a), a                                                  ; $30cd : $32, $2a, $46
	ld a, r                                                  ; $30d0 : $ed, $5f
	and $07                                                  ; $30d2 : $e6, $07
	sla a                                                  ; $30d4 : $cb, $27
	sla a                                                  ; $30d6 : $cb, $27
	ld c, a                                                  ; $30d8 : $4f
	ld b, $00                                                  ; $30d9 : $06, $00
	ld hl, $3387                                                  ; $30db : $21, $87, $33
	add hl, bc                                                  ; $30de : $09
	ld ($462c), hl                                                  ; $30df : $22, $2c, $46
	ld hl, $4112                                                  ; $30e2 : $21, $12, $41
	set 3, (hl)                                                  ; $30e5 : $cb, $de
	call Call_00_34fd                                                  ; $30e7 : $cd, $fd, $34
	call Call_00_358a                                                  ; $30ea : $cd, $8a, $35
	call Call_00_073b                                                  ; $30ed : $cd, $3b, $07
	call Call_00_0510                                                  ; $30f0 : $cd, $10, $05
	ld a, ($4639)                                                  ; $30f3 : $3a, $39, $46
	cp $02                                                  ; $30f6 : $fe, $02
	jp z, Jump_00_3165                                                  ; $30f8 : $ca, $65, $31
	call Call_00_0605                                                  ; $30fb : $cd, $05, $06
	call Call_00_04f2                                                  ; $30fe : $cd, $f2, $04
	call Call_00_3590                                                  ; $3101 : $cd, $90, $35

Jump_00_3104:
	call Call_00_02f8                                                  ; $3104 : $cd, $f8, $02

Jump_00_3107:
br_00_3107:
	call Call_00_0561                                                  ; $3107 : $cd, $61, $05
	di                                                  ; $310a : $f3
	ex af, af'                                                  ; $310b : $08
	call Call_00_358a                                                  ; $310c : $cd, $8a, $35
	call Call_00_0702                                                  ; $310f : $cd, $02, $07
	push af                                                  ; $3112 : $f5
	call Call_00_3590                                                  ; $3113 : $cd, $90, $35
	call Call_00_04f7                                                  ; $3116 : $cd, $f7, $04
	pop af                                                  ; $3119 : $f1
	cp $ff                                                  ; $311a : $fe, $ff
	jp z, Jump_00_3107                                                  ; $311c : $ca, $07, $31
	ld a, ($410f)                                                  ; $311f : $3a, $0f, $41
	bit 4, a                                                  ; $3122 : $cb, $67
	jp nz, Jump_00_3154                                                  ; $3124 : $c2, $54, $31
	bit 5, a                                                  ; $3127 : $cb, $6f
	jp z, Jump_00_3107                                                  ; $3129 : $ca, $07, $31
	ex af, af'                                                  ; $312c : $08
	cp $e7                                                  ; $312d : $fe, $e7
	jp z, Jump_00_315f                                                  ; $312f : $ca, $5f, $31
	cp $e8                                                  ; $3132 : $fe, $e8
	jp z, Jump_00_3311                                                  ; $3134 : $ca, $11, $33
	cp $eb                                                  ; $3137 : $fe, $eb
	jp z, Jump_00_349d                                                  ; $3139 : $ca, $9d, $34
	ex af, af'                                                  ; $313c : $08
	ld a, ($462a)                                                  ; $313d : $3a, $2a, $46
	cp $02                                                  ; $3140 : $fe, $02
	push af                                                  ; $3142 : $f5
	call nz, Call_00_0745                                                  ; $3143 : $c4, $45, $07
	pop af                                                  ; $3146 : $f1
	jr nz, br_00_3107                                                  ; $3147 : $20, $be

	ex af, af'                                                  ; $3149 : $08
	cp $ea                                                  ; $314a : $fe, $ea
	jp z, $33a7                                                  ; $314c : $ca, $a7, $33
	call Call_00_0745                                                  ; $314f : $cd, $45, $07
	jr br_00_3107                                                  ; $3152 : $18, $b3

Jump_00_3154:
	ex af, af'                                                  ; $3154 : $08
	cp $0d                                                  ; $3155 : $fe, $0d
	jp z, Jump_00_31b3                                                  ; $3157 : $ca, $b3, $31

Jump_00_315a:
	call Call_00_0438                                                  ; $315a : $cd, $38, $04
	jr br_00_3107                                                  ; $315d : $18, $a8

Jump_00_315f:
	call Call_00_03b9                                                  ; $315f : $cd, $b9, $03
	jp Jump_00_3104                                                  ; $3162 : $c3, $04, $31


Jump_00_3165:
	call Call_00_17d9                                                  ; $3165 : $cd, $d9, $17
	di                                                  ; $3168 : $f3
	cp $e8                                                  ; $3169 : $fe, $e8
	jp z, Jump_00_3376                                                  ; $316b : $ca, $76, $33
	call Call_00_3590                                                  ; $316e : $cd, $90, $35

Jump_00_3171:
	call Call_00_0561                                                  ; $3171 : $cd, $61, $05
	di                                                  ; $3174 : $f3
	ex af, af'                                                  ; $3175 : $08
	call Call_00_0705                                                  ; $3176 : $cd, $05, $07
	push af                                                  ; $3179 : $f5
	call Call_00_04f7                                                  ; $317a : $cd, $f7, $04
	pop af                                                  ; $317d : $f1
	cp $ff                                                  ; $317e : $fe, $ff
	jp z, Jump_00_3171                                                  ; $3180 : $ca, $71, $31
	ld a, ($410f)                                                  ; $3183 : $3a, $0f, $41
	bit 4, a                                                  ; $3186 : $cb, $67
	jp nz, Jump_00_31a1                                                  ; $3188 : $c2, $a1, $31
	bit 5, a                                                  ; $318b : $cb, $6f
	jp z, Jump_00_3171                                                  ; $318d : $ca, $71, $31
	ex af, af'                                                  ; $3190 : $08
	cp $e7                                                  ; $3191 : $fe, $e7
	jp z, Jump_00_31ad                                                  ; $3193 : $ca, $ad, $31
	cp $e8                                                  ; $3196 : $fe, $e8
	jp z, Jump_00_32f8                                                  ; $3198 : $ca, $f8, $32
	call Call_00_0745                                                  ; $319b : $cd, $45, $07
	jp Jump_00_3171                                                  ; $319e : $c3, $71, $31


Jump_00_31a1:
	ex af, af'                                                  ; $31a1 : $08
	cp $0d                                                  ; $31a2 : $fe, $0d
	jp z, Jump_00_31b3                                                  ; $31a4 : $ca, $b3, $31
	call Call_00_0438                                                  ; $31a7 : $cd, $38, $04
	jp Jump_00_3171                                                  ; $31aa : $c3, $71, $31


Jump_00_31ad:
	call Call_00_180c                                                  ; $31ad : $cd, $0c, $18
	jp Jump_00_3171                                                  ; $31b0 : $c3, $71, $31


Jump_00_31b3:
	call Call_00_3525                                                  ; $31b3 : $cd, $25, $35
	call Call_00_3537                                                  ; $31b6 : $cd, $37, $35

br_00_31b9:
	ld a, ($4200)                                                  ; $31b9 : $3a, $00, $42
	cp $20                                                  ; $31bc : $fe, $20
	jp nz, Jump_00_31e2                                                  ; $31be : $c2, $e2, $31
	ld bc, $007f                                                  ; $31c1 : $01, $7f, $00
	ld hl, $4201                                                  ; $31c4 : $21, $01, $42
	ld de, $4200                                                  ; $31c7 : $11, $00, $42
	ldir                                                  ; $31ca : $ed, $b0
	ld a, $20                                                  ; $31cc : $3e, $20
	ld ($427f), a                                                  ; $31ce : $32, $7f, $42
	ld a, ($4123)                                                  ; $31d1 : $3a, $23, $41
	dec a                                                  ; $31d4 : $3d
	jp c, Jump_00_32d5                                                  ; $31d5 : $da, $d5, $32
	cp $00                                                  ; $31d8 : $fe, $00
	jp z, Jump_00_32d5                                                  ; $31da : $ca, $d5, $32
	ld ($4123), a                                                  ; $31dd : $32, $23, $41
	jr br_00_31b9                                                  ; $31e0 : $18, $d7

Jump_00_31e2:
	ld a, ($4123)                                                  ; $31e2 : $3a, $23, $41
	ld b, a                                                  ; $31e5 : $47
	ld hl, $4200                                                  ; $31e6 : $21, $00, $42

br_00_31e9:
	ld a, (hl)                                                  ; $31e9 : $7e
	cp $61                                                  ; $31ea : $fe, $61
	jp c, Jump_00_31f7                                                  ; $31ec : $da, $f7, $31
	cp $7b                                                  ; $31ef : $fe, $7b
	jp nc, Jump_00_31f7                                                  ; $31f1 : $d2, $f7, $31
	sub $20                                                  ; $31f4 : $d6, $20
	ld (hl), a                                                  ; $31f6 : $77

Jump_00_31f7:
	inc hl                                                  ; $31f7 : $23
	djnz br_00_31e9                                                  ; $31f8 : $10, $ef
	ld a, ($4628)                                                  ; $31fa : $3a, $28, $46
	ld ($4629), a                                                  ; $31fd : $32, $29, $46
	ld a, ($4123)                                                  ; $3200 : $3a, $23, $41
	ld ($4627), a                                                  ; $3203 : $32, $27, $46
	ld ix, $4700                                                  ; $3206 : $dd, $21, $00, $47
	ld hl, $4200                                                  ; $320a : $21, $00, $42

Jump_00_320d:
br_00_320d:
	ld a, (ix+$00)                                                  ; $320d : $dd, $7e, $00
	cp (hl)                                                  ; $3210 : $be
	jp nz, Jump_00_3227                                                  ; $3211 : $c2, $27, $32
	inc ix                                                  ; $3214 : $dd, $23
	inc hl                                                  ; $3216 : $23
	ld iy, $4629                                                  ; $3217 : $fd, $21, $29, $46
	dec (iy+$00)                                                  ; $321b : $fd, $35, $00
	ld iy, $4627                                                  ; $321e : $fd, $21, $27, $46
	dec (iy+$00)                                                  ; $3222 : $fd, $35, $00
	jr br_00_320d                                                  ; $3225 : $18, $e6

Jump_00_3227:
	ld a, (ix+$00)                                                  ; $3227 : $dd, $7e, $00
	cp $ff                                                  ; $322a : $fe, $ff
	jp nz, Jump_00_325e                                                  ; $322c : $c2, $5e, $32
	ld a, ($4627)                                                  ; $322f : $3a, $27, $46
	cp $00                                                  ; $3232 : $fe, $00
	jp z, Jump_00_3271                                                  ; $3234 : $ca, $71, $32
	ld b, a                                                  ; $3237 : $47

br_00_3238:
	ld a, (hl)                                                  ; $3238 : $7e
	cp $20                                                  ; $3239 : $fe, $20
	jp nz, Jump_00_3244                                                  ; $323b : $c2, $44, $32
	inc hl                                                  ; $323e : $23
	djnz br_00_3238                                                  ; $323f : $10, $f7
	jp Jump_00_3271                                                  ; $3241 : $c3, $71, $32


Jump_00_3244:
	ld a, ($4629)                                                  ; $3244 : $3a, $29, $46
	cp $01                                                  ; $3247 : $fe, $01
	jp z, Jump_00_32d5                                                  ; $3249 : $ca, $d5, $32
	inc ix                                                  ; $324c : $dd, $23
	ld hl, $4629                                                  ; $324e : $21, $29, $46
	dec (hl)                                                  ; $3251 : $35
	ld hl, $4200                                                  ; $3252 : $21, $00, $42
	ld a, ($4123)                                                  ; $3255 : $3a, $23, $41
	ld ($4627), a                                                  ; $3258 : $32, $27, $46
	jp Jump_00_320d                                                  ; $325b : $c3, $0d, $32


Jump_00_325e:
br_00_325e:
	inc ix                                                  ; $325e : $dd, $23
	ld iy, $4629                                                  ; $3260 : $fd, $21, $29, $46
	dec (iy+$00)                                                  ; $3264 : $fd, $35, $00
	ld a, (ix+$00)                                                  ; $3267 : $dd, $7e, $00
	cp $ff                                                  ; $326a : $fe, $ff
	jr nz, br_00_325e                                                  ; $326c : $20, $f0

	jp Jump_00_3244                                                  ; $326e : $c3, $44, $32


Jump_00_3271:
	ld de, $2c39                                                  ; $3271 : $11, $39, $2c
	call Call_00_0782                                                  ; $3274 : $cd, $82, $07
	call Call_00_3556                                                  ; $3277 : $cd, $56, $35
	ld a, ($4639)                                                  ; $327a : $3a, $39, $46
	cp $02                                                  ; $327d : $fe, $02
	jp z, Jump_00_329a                                                  ; $327f : $ca, $9a, $32
	ld hl, $4631                                                  ; $3282 : $21, $31, $46
	ld a, ($4630)                                                  ; $3285 : $3a, $30, $46
	add a, (hl)                                                  ; $3288 : $86
	ld (hl), a                                                  ; $3289 : $77

Jump_00_328a:
	call Call_00_32c2                                                  ; $328a : $cd, $c2, $32
	ld hl, $4632                                                  ; $328d : $21, $32, $46
	dec (hl)                                                  ; $3290 : $35
	jp nz, Jump_00_30be                                                  ; $3291 : $c2, $be, $30
	call Call_00_10cd                                                  ; $3294 : $cd, $cd, $10
	jp Jump_00_32ae                                                  ; $3297 : $c3, $ae, $32


Jump_00_329a:
	ld hl, ($412b)                                                  ; $329a : $2a, $2b, $41
	ld a, (hl)                                                  ; $329d : $7e
	add a, $0a                                                  ; $329e : $c6, $0a
	ld (hl), a                                                  ; $32a0 : $77

Jump_00_32a1:
	call Call_00_1817                                                  ; $32a1 : $cd, $17, $18

Jump_00_32a4:
	call Call_00_32c2                                                  ; $32a4 : $cd, $c2, $32
	ld hl, $4632                                                  ; $32a7 : $21, $32, $46
	dec (hl)                                                  ; $32aa : $35
	jp nz, Jump_00_30be                                                  ; $32ab : $c2, $be, $30

Jump_00_32ae:
	call Call_00_03dd                                                  ; $32ae : $cd, $dd, $03
	ld de, $2c51                                                  ; $32b1 : $11, $51, $2c
	call Call_00_0782                                                  ; $32b4 : $cd, $82, $07

Jump_00_32b7:
	call Call_00_0561                                                  ; $32b7 : $cd, $61, $05
	cp $ff                                                  ; $32ba : $fe, $ff
	jp z, Jump_00_32b7                                                  ; $32bc : $ca, $b7, $32
	jp Jump_00_3064                                                  ; $32bf : $c3, $64, $30


Call_00_32c2:
	ld a, r                                                  ; $32c2 : $ed, $5f
	and $07                                                  ; $32c4 : $e6, $07
	inc a                                                  ; $32c6 : $3c
	ld e, a                                                  ; $32c7 : $5f
	ld d, $00                                                  ; $32c8 : $16, $00
	ld hl, ($4600)                                                  ; $32ca : $2a, $00, $46
	add hl, de                                                  ; $32cd : $19
	ld ($4600), hl                                                  ; $32ce : $22, $00, $46
	call Call_00_35be                                                  ; $32d1 : $cd, $be, $35
	ret                                                  ; $32d4 : $c9


Jump_00_32d5:
	ld a, ($4639)                                                  ; $32d5 : $3a, $39, $46
	cp $02                                                  ; $32d8 : $fe, $02
	jp z, Jump_00_32f8                                                  ; $32da : $ca, $f8, $32
	ld hl, $4633                                                  ; $32dd : $21, $33, $46
	dec (hl)                                                  ; $32e0 : $35
	jp z, Jump_00_330b                                                  ; $32e1 : $ca, $0b, $33
	ld hl, $4630                                                  ; $32e4 : $21, $30, $46
	dec (hl)                                                  ; $32e7 : $35
	dec (hl)                                                  ; $32e8 : $35
	ld de, $2c45                                                  ; $32e9 : $11, $45, $2c
	call Call_00_0782                                                  ; $32ec : $cd, $82, $07
	call Call_00_3563                                                  ; $32ef : $cd, $63, $35
	call Call_00_34fd                                                  ; $32f2 : $cd, $fd, $34
	jp Jump_00_315f                                                  ; $32f5 : $c3, $5f, $31


Jump_00_32f8:
	ld de, $2c45                                                  ; $32f8 : $11, $45, $2c
	call Call_00_0782                                                  ; $32fb : $cd, $82, $07
	ld hl, ($412b)                                                  ; $32fe : $2a, $2b, $41
	ld a, (hl)                                                  ; $3301 : $7e
	sub $0a                                                  ; $3302 : $d6, $0a
	ld (hl), a                                                  ; $3304 : $77
	call Call_00_331c                                                  ; $3305 : $cd, $1c, $33
	jp Jump_00_32a1                                                  ; $3308 : $c3, $a1, $32


Jump_00_330b:
	ld de, $2c45                                                  ; $330b : $11, $45, $2c
	call Call_00_0782                                                  ; $330e : $cd, $82, $07

Jump_00_3311:
	ld hl, $4155                                                  ; $3311 : $21, $55, $41
	ld (hl), $00                                                  ; $3314 : $36, $00
	call Call_00_331c                                                  ; $3316 : $cd, $1c, $33
	jp Jump_00_328a                                                  ; $3319 : $c3, $8a, $32


Call_00_331c:
	call Call_00_350f                                                  ; $331c : $cd, $0f, $35
	ld bc, $001a                                                  ; $331f : $01, $1a, $00
	ld a, c                                                  ; $3322 : $79
	ld ($4629), a                                                  ; $3323 : $32, $29, $46
	ld hl, $35db                                                  ; $3326 : $21, $db, $35
	ld de, $4180                                                  ; $3329 : $11, $80, $41
	ldir                                                  ; $332c : $ed, $b0
	call Call_00_3525                                                  ; $332e : $cd, $25, $35
	call Call_00_3537                                                  ; $3331 : $cd, $37, $35
	xor a                                                  ; $3334 : $af
	ld ($4628), a                                                  ; $3335 : $32, $28, $46
	ld b, a                                                  ; $3338 : $47
	ld hl, $4700                                                  ; $3339 : $21, $00, $47
	ld ix, $4628                                                  ; $333c : $dd, $21, $28, $46

br_00_3340:
	ld a, (hl)                                                  ; $3340 : $7e
	cp $ff                                                  ; $3341 : $fe, $ff
	jr z, br_00_334b                                                  ; $3343 : $28, $06

	inc hl                                                  ; $3345 : $23
	inc (ix+$00)                                                  ; $3346 : $dd, $34, $00
	jr br_00_3340                                                  ; $3349 : $18, $f5

br_00_334b:
	ld a, ($4628)                                                  ; $334b : $3a, $28, $46
	ld c, a                                                  ; $334e : $4f
	ld a, ($4629)                                                  ; $334f : $3a, $29, $46
	ld e, a                                                  ; $3352 : $5f
	ld d, b                                                  ; $3353 : $50
	ld hl, $4180                                                  ; $3354 : $21, $80, $41
	add hl, de                                                  ; $3357 : $19
	ex de, hl                                                  ; $3358 : $eb
	ld hl, $4700                                                  ; $3359 : $21, $00, $47
	ldir                                                  ; $335c : $ed, $b0
	ld hl, $4628                                                  ; $335e : $21, $28, $46
	ld a, ($4629)                                                  ; $3361 : $3a, $29, $46
	add a, (hl)                                                  ; $3364 : $86
	ld (hl), a                                                  ; $3365 : $77
	ld a, ($4628)                                                  ; $3366 : $3a, $28, $46
	ld ($4116), a                                                  ; $3369 : $32, $16, $41
	call Call_00_0510                                                  ; $336c : $cd, $10, $05
	call Call_00_0605                                                  ; $336f : $cd, $05, $06
	call Call_00_03ec                                                  ; $3372 : $cd, $ec, $03
	ret                                                  ; $3375 : $c9


Jump_00_3376:
	call Call_00_3590                                                  ; $3376 : $cd, $90, $35
	call Call_00_331c                                                  ; $3379 : $cd, $1c, $33
	ld a, ($4632)                                                  ; $337c : $3a, $32, $46
	cp $01                                                  ; $337f : $fe, $01
	jp z, Jump_00_32a1                                                  ; $3381 : $ca, $a1, $32
	jp Jump_00_32a4                                                  ; $3384 : $c3, $a4, $32


	ld bc, $0302                                                  ; $3387 : $01, $02, $03
	inc sp                                                  ; $338a : $33
	ld bc, $0203                                                  ; $338b : $01, $03, $02
	ld ($0102), a                                                  ; $338e : $32, $02, $01
	inc bc                                                  ; $3391 : $03
	inc sp                                                  ; $3392 : $33
	ld (bc), a                                                  ; $3393 : $02
	inc bc                                                  ; $3394 : $03
	ld bc, $0332                                                  ; $3395 : $01, $32, $03
	ld bc, $3102                                                  ; $3398 : $01, $02, $31
	inc bc                                                  ; $339b : $03
	ld (bc), a                                                  ; $339c : $02
	ld bc, $0131                                                  ; $339d : $01, $31, $01
	ld (bc), a                                                  ; $33a0 : $02
	inc bc                                                  ; $33a1 : $03
	inc sp                                                  ; $33a2 : $33
	ld bc, $0203                                                  ; $33a3 : $01, $03, $02
	ld ($1221), a                                                  ; $33a6 : $32, $21, $12
	ld b, c                                                  ; $33a9 : $41
	res 3, (hl)                                                  ; $33aa : $cb, $9e
	ld a, ($4630)                                                  ; $33ac : $3a, $30, $46
	sub $04                                                  ; $33af : $d6, $04
	ld ($4630), a                                                  ; $33b1 : $32, $30, $46

Jump_00_33b4:
	call Call_00_350f                                                  ; $33b4 : $cd, $0f, $35
	xor a                                                  ; $33b7 : $af
	ld ($4628), a                                                  ; $33b8 : $32, $28, $46
	ld ix, ($462c)                                                  ; $33bb : $dd, $2a, $2c, $46
	ld de, $4700                                                  ; $33bf : $11, $00, $47
	ex de, hl                                                  ; $33c2 : $eb
	ld (hl), $31                                                  ; $33c3 : $36, $31
	inc hl                                                  ; $33c5 : $23
	ld (hl), $2d                                                  ; $33c6 : $36, $2d
	inc hl                                                  ; $33c8 : $23
	ex de, hl                                                  ; $33c9 : $eb
	ld a, (ix+$00)                                                  ; $33ca : $dd, $7e, $00
	call Call_00_356b                                                  ; $33cd : $cd, $6b, $35
	ex de, hl                                                  ; $33d0 : $eb
	ld (hl), $20                                                  ; $33d1 : $36, $20
	inc hl                                                  ; $33d3 : $23
	ld (hl), $32                                                  ; $33d4 : $36, $32
	inc hl                                                  ; $33d6 : $23
	ld (hl), $2d                                                  ; $33d7 : $36, $2d
	inc hl                                                  ; $33d9 : $23
	ex de, hl                                                  ; $33da : $eb
	ld a, (ix+$01)                                                  ; $33db : $dd, $7e, $01
	call Call_00_356b                                                  ; $33de : $cd, $6b, $35
	ex de, hl                                                  ; $33e1 : $eb
	ld (hl), $20                                                  ; $33e2 : $36, $20
	inc hl                                                  ; $33e4 : $23
	ld (hl), $33                                                  ; $33e5 : $36, $33
	inc hl                                                  ; $33e7 : $23
	ld (hl), $2d                                                  ; $33e8 : $36, $2d
	inc hl                                                  ; $33ea : $23
	ex de, hl                                                  ; $33eb : $eb
	ld a, (ix+$02)                                                  ; $33ec : $dd, $7e, $02
	call Call_00_356b                                                  ; $33ef : $cd, $6b, $35
	ex de, hl                                                  ; $33f2 : $eb
	ld (hl), $20                                                  ; $33f3 : $36, $20
	inc hl                                                  ; $33f5 : $23
	ld (hl), $20                                                  ; $33f6 : $36, $20
	ld a, ($4628)                                                  ; $33f8 : $3a, $28, $46
	add a, $0a                                                  ; $33fb : $c6, $0a
	ld ($4628), a                                                  ; $33fd : $32, $28, $46
	ld hl, $4700                                                  ; $3400 : $21, $00, $47
	ld de, $4180                                                  ; $3403 : $11, $80, $41
	ld a, ($4628)                                                  ; $3406 : $3a, $28, $46
	ld c, a                                                  ; $3409 : $4f
	ld b, $00                                                  ; $340a : $06, $00
	ldir                                                  ; $340c : $ed, $b0
	ld a, (ix+$03)                                                  ; $340e : $dd, $7e, $03
	ld ($462b), a                                                  ; $3411 : $32, $2b, $46

Jump_00_3414:
	call Call_00_358a                                                  ; $3414 : $cd, $8a, $35
	ld a, ($4628)                                                  ; $3417 : $3a, $28, $46
	ld ($4116), a                                                  ; $341a : $32, $16, $41
	call Call_00_0510                                                  ; $341d : $cd, $10, $05
	ld a, $34                                                  ; $3420 : $3e, $34
	ld ($4119), a                                                  ; $3422 : $32, $19, $41
	ld hl, $4155                                                  ; $3425 : $21, $55, $41
	set 0, (hl)                                                  ; $3428 : $cb, $c6
	call Call_00_0605                                                  ; $342a : $cd, $05, $06
	push af                                                  ; $342d : $f5
	call Call_00_3590                                                  ; $342e : $cd, $90, $35
	pop af                                                  ; $3431 : $f1
	ld hl, $4155                                                  ; $3432 : $21, $55, $41
	bit 2, (hl)                                                  ; $3435 : $cb, $56
	jp nz, Jump_00_3496                                                  ; $3437 : $c2, $96, $34
	call Call_00_04f2                                                  ; $343a : $cd, $f2, $04
	call Call_00_02f8                                                  ; $343d : $cd, $f8, $02

Jump_00_3440:
	call Call_00_0561                                                  ; $3440 : $cd, $61, $05
	di                                                  ; $3443 : $f3
	cp $e4                                                  ; $3444 : $fe, $e4
	jp z, Jump_00_3414                                                  ; $3446 : $ca, $14, $34
	cp $ff                                                  ; $3449 : $fe, $ff
	jp z, Jump_00_3440                                                  ; $344b : $ca, $40, $34
	cp $e8                                                  ; $344e : $fe, $e8
	jp z, Jump_00_3311                                                  ; $3450 : $ca, $11, $33
	cp $31                                                  ; $3453 : $fe, $31
	jp c, Jump_00_3490                                                  ; $3455 : $da, $90, $34
	cp $34                                                  ; $3458 : $fe, $34
	jp nc, Jump_00_3490                                                  ; $345a : $d2, $90, $34

Jump_00_345d:
	ld hl, $4155                                                  ; $345d : $21, $55, $41
	ld (hl), $00                                                  ; $3460 : $36, $00
	push af                                                  ; $3462 : $f5
	ld bc, $4100                                                  ; $3463 : $01, $00, $41
	call Call_00_0491                                                  ; $3466 : $cd, $91, $04
	call Call_00_03dd                                                  ; $3469 : $cd, $dd, $03
	pop af                                                  ; $346c : $f1
	ld hl, $462b                                                  ; $346d : $21, $2b, $46
	cp (hl)                                                  ; $3470 : $be
	jp z, Jump_00_3271                                                  ; $3471 : $ca, $71, $32
	ld a, ($462a)                                                  ; $3474 : $3a, $2a, $46
	dec a                                                  ; $3477 : $3d
	ld ($462a), a                                                  ; $3478 : $32, $2a, $46
	cp $00                                                  ; $347b : $fe, $00
	jp z, Jump_00_330b                                                  ; $347d : $ca, $0b, $33
	ld de, $2c45                                                  ; $3480 : $11, $45, $2c
	call Call_00_0782                                                  ; $3483 : $cd, $82, $07
	call Call_00_3563                                                  ; $3486 : $cd, $63, $35
	ld hl, $4630                                                  ; $3489 : $21, $30, $46
	dec (hl)                                                  ; $348c : $35
	jp Jump_00_33b4                                                  ; $348d : $c3, $b4, $33


Jump_00_3490:
	call Call_00_0745                                                  ; $3490 : $cd, $45, $07
	jp Jump_00_3440                                                  ; $3493 : $c3, $40, $34


Jump_00_3496:
	set 4, a                                                  ; $3496 : $cb, $e7
	set 5, a                                                  ; $3498 : $cb, $ef
	jp Jump_00_345d                                                  ; $349a : $c3, $5d, $34


Jump_00_349d:
	ld a, ($462a)                                                  ; $349d : $3a, $2a, $46
	cp $00                                                  ; $34a0 : $fe, $00
	jp z, Jump_00_3311                                                  ; $34a2 : $ca, $11, $33
	dec a                                                  ; $34a5 : $3d
	ld ($462a), a                                                  ; $34a6 : $32, $2a, $46
	ld ix, $4700                                                  ; $34a9 : $dd, $21, $00, $47
	call Call_00_3525                                                  ; $34ad : $cd, $25, $35
	call Call_00_3537                                                  ; $34b0 : $cd, $37, $35
	call Call_00_03b9                                                  ; $34b3 : $cd, $b9, $03
	ld a, ($462a)                                                  ; $34b6 : $3a, $2a, $46
	cp $00                                                  ; $34b9 : $fe, $00
	jp z, Jump_00_34db                                                  ; $34bb : $ca, $db, $34
	ld a, (ix+$01)                                                  ; $34be : $dd, $7e, $01
	cp $ff                                                  ; $34c1 : $fe, $ff
	jp z, Jump_00_3311                                                  ; $34c3 : $ca, $11, $33
	xor a                                                  ; $34c6 : $af
	ld ($4123), a                                                  ; $34c7 : $32, $23, $41
	ld a, ($4700)                                                  ; $34ca : $3a, $00, $47
	ld ($4113), a                                                  ; $34cd : $32, $13, $41
	ld a, ($4630)                                                  ; $34d0 : $3a, $30, $46
	sub $04                                                  ; $34d3 : $d6, $04
	ld ($4630), a                                                  ; $34d5 : $32, $30, $46
	jp Jump_00_315a                                                  ; $34d8 : $c3, $5a, $31


Jump_00_34db:
	ld a, (ix+$02)                                                  ; $34db : $dd, $7e, $02
	cp $ff                                                  ; $34de : $fe, $ff
	jp z, Jump_00_3311                                                  ; $34e0 : $ca, $11, $33
	xor a                                                  ; $34e3 : $af
	ld ($4123), a                                                  ; $34e4 : $32, $23, $41
	ld a, ($4700)                                                  ; $34e7 : $3a, $00, $47
	ld ($4113), a                                                  ; $34ea : $32, $13, $41
	call Call_00_0438                                                  ; $34ed : $cd, $38, $04
	ld a, ($4701)                                                  ; $34f0 : $3a, $01, $47
	ld ($4113), a                                                  ; $34f3 : $32, $13, $41
	ld hl, $4630                                                  ; $34f6 : $21, $30, $46
	dec (hl)                                                  ; $34f9 : $35
	jp Jump_00_315a                                                  ; $34fa : $c3, $5a, $31


Call_00_34fd:
	ld bc, $0080                                                  ; $34fd : $01, $80, $00
	ld hl, $4500                                                  ; $3500 : $21, $00, $45
	ld de, $4180                                                  ; $3503 : $11, $80, $41
	ldir                                                  ; $3506 : $ed, $b0
	ld a, ($4607)                                                  ; $3508 : $3a, $07, $46
	ld ($4116), a                                                  ; $350b : $32, $16, $41
	ret                                                  ; $350e : $c9


Call_00_350f:
	ld a, $20                                                  ; $350f : $3e, $20
	ld b, $80                                                  ; $3511 : $06, $80
	ld hl, $4180                                                  ; $3513 : $21, $80, $41

Jump_00_3516:
br_00_3516:
	ld (hl), a                                                  ; $3516 : $77
	inc hl                                                  ; $3517 : $23
	djnz br_00_3516                                                  ; $3518 : $10, $fc
	ret                                                  ; $351a : $c9


	ld a, $20                                                  ; $351b : $3e, $20
	ld b, $80                                                  ; $351d : $06, $80
	ld hl, $4200                                                  ; $351f : $21, $00, $42
	jp Jump_00_3516                                                  ; $3522 : $c3, $16, $35


Call_00_3525:
	ld bc, $0080                                                  ; $3525 : $01, $80, $00
	ld hl, $4480                                                  ; $3528 : $21, $80, $44
	ld de, $4700                                                  ; $352b : $11, $00, $47
	ldir                                                  ; $352e : $ed, $b0
	ld a, ($4613)                                                  ; $3530 : $3a, $13, $46
	ld ($4628), a                                                  ; $3533 : $32, $28, $46
	ret                                                  ; $3536 : $c9


Call_00_3537:
	ld b, $02                                                  ; $3537 : $06, $02

br_00_3539:
	push bc                                                  ; $3539 : $c5

br_00_353a:
	ld a, ($4700)                                                  ; $353a : $3a, $00, $47
	push af                                                  ; $353d : $f5
	ld bc, $007f                                                  ; $353e : $01, $7f, $00
	ld hl, $4701                                                  ; $3541 : $21, $01, $47
	ld de, $4700                                                  ; $3544 : $11, $00, $47
	ldir                                                  ; $3547 : $ed, $b0
	ld hl, $4628                                                  ; $3549 : $21, $28, $46
	dec (hl)                                                  ; $354c : $35
	pop af                                                  ; $354d : $f1
	cp $ff                                                  ; $354e : $fe, $ff
	jr nz, br_00_353a                                                  ; $3550 : $20, $e8

	pop bc                                                  ; $3552 : $c1
	djnz br_00_3539                                                  ; $3553 : $10, $e4
	ret                                                  ; $3555 : $c9


Call_00_3556:
	call Call_00_02f8                                                  ; $3556 : $cd, $f8, $02
	ld hl, $35f5                                                  ; $3559 : $21, $f5, $35

Call_00_355c:
br_00_355c:
	call Call_00_03ab                                                  ; $355c : $cd, $ab, $03
	call Call_00_03dd                                                  ; $355f : $cd, $dd, $03
	ret                                                  ; $3562 : $c9


Call_00_3563:
	call Call_00_02f8                                                  ; $3563 : $cd, $f8, $02
	ld hl, $3608                                                  ; $3566 : $21, $08, $36
	jr br_00_355c                                                  ; $3569 : $18, $f1

Call_00_356b:
	ld b, a                                                  ; $356b : $47
	ld hl, $4480                                                  ; $356c : $21, $80, $44

br_00_356f:
	djnz br_00_3582                                                  ; $356f : $10, $11

br_00_3571:
	ld a, (hl)                                                  ; $3571 : $7e
	inc hl                                                  ; $3572 : $23
	cp $ff                                                  ; $3573 : $fe, $ff
	ret z                                                  ; $3575 : $c8

	ex de, hl                                                  ; $3576 : $eb
	ld (hl), a                                                  ; $3577 : $77
	ex de, hl                                                  ; $3578 : $eb
	push hl                                                  ; $3579 : $e5
	ld hl, $4628                                                  ; $357a : $21, $28, $46
	inc (hl)                                                  ; $357d : $34
	pop hl                                                  ; $357e : $e1
	inc de                                                  ; $357f : $13
	jr br_00_3571                                                  ; $3580 : $18, $ef

br_00_3582:
	ld a, (hl)                                                  ; $3582 : $7e
	inc hl                                                  ; $3583 : $23
	cp $ff                                                  ; $3584 : $fe, $ff
	jr nz, br_00_3582                                                  ; $3586 : $20, $fa

	jr br_00_356f                                                  ; $3588 : $18, $e5

Call_00_358a:
	ld a, $10                                                  ; $358a : $3e, $10

Jump_00_358c:
	ld ($412e), a                                                  ; $358c : $32, $2e, $41
	ret                                                  ; $358f : $c9


Call_00_3590:
	ld a, $06                                                  ; $3590 : $3e, $06
	jp Jump_00_358c                                                  ; $3592 : $c3, $8c, $35


Call_00_3595:
	ld de, $0008                                                  ; $3595 : $11, $08, $00
	ld a, ($462f)                                                  ; $3598 : $3a, $2f, $46
	call Call_00_3aee                                                  ; $359b : $cd, $ee, $3a
	ld de, $0002                                                  ; $359e : $11, $02, $00
	ld a, ($462e)                                                  ; $35a1 : $3a, $2e, $46
	call Call_00_3aee                                                  ; $35a4 : $cd, $ee, $3a
	call Call_00_3af6                                                  ; $35a7 : $cd, $f6, $3a
	ld hl, ($4642)                                                  ; $35aa : $2a, $42, $46
	ld ($4634), hl                                                  ; $35ad : $22, $34, $46

Call_00_35b0:
	ld a, r                                                  ; $35b0 : $ed, $5f
	ld ($4600), a                                                  ; $35b2 : $32, $00, $46
	ld a, r                                                  ; $35b5 : $ed, $5f
	ld ($4601), a                                                  ; $35b7 : $32, $01, $46
	call Call_00_35be                                                  ; $35ba : $cd, $be, $35
	ret                                                  ; $35bd : $c9


Call_00_35be:
	ld c, $00                                                  ; $35be : $0e, $00

Jump_00_35c0:
	ld hl, ($4600)                                                  ; $35c0 : $2a, $00, $46
	ex de, hl                                                  ; $35c3 : $eb
	ld hl, ($4634)                                                  ; $35c4 : $2a, $34, $46
	xor a                                                  ; $35c7 : $af
	sbc hl, de                                                  ; $35c8 : $ed, $52
	ret nc                                                  ; $35ca : $d0

	ld c, $01                                                  ; $35cb : $0e, $01
	inc hl                                                  ; $35cd : $23
	ex de, hl                                                  ; $35ce : $eb
	ld hl, $0000                                                  ; $35cf : $21, $00, $00
	xor a                                                  ; $35d2 : $af
	sbc hl, de                                                  ; $35d3 : $ed, $52
	ld ($4600), hl                                                  ; $35d5 : $22, $00, $46
	jp Jump_00_35c0                                                  ; $35d8 : $c3, $c0, $35


	ld d, h                                                  ; $35db : $54
	ld c, b                                                  ; $35dc : $48
	ld b, l                                                  ; $35dd : $45
	jr nz, br_00_3623                                                  ; $35de : $20, $43

	ld c, a                                                  ; $35e0 : $4f
	ld d, d                                                  ; $35e1 : $52
	ld d, d                                                  ; $35e2 : $52
	ld b, l                                                  ; $35e3 : $45
	ld b, e                                                  ; $35e4 : $43
	ld d, h                                                  ; $35e5 : $54
	jr nz, br_00_3629                                                  ; $35e6 : $20, $41

	ld c, (hl)                                                  ; $35e8 : $4e
	ld d, e                                                  ; $35e9 : $53
	ld d, a                                                  ; $35ea : $57
	ld b, l                                                  ; $35eb : $45
	ld d, d                                                  ; $35ec : $52
	jr nz, br_00_3638                                                  ; $35ed : $20, $49

	ld d, e                                                  ; $35ef : $53
	jr nz, br_00_3612                                                  ; $35f0 : $20, $20

	jr nz, br_00_3614                                                  ; $35f2 : $20, $20

	jr nz, br_00_3608                                                  ; $35f4 : $20, $12

	ld e, c                                                  ; $35f6 : $59
	ld b, l                                                  ; $35f7 : $45
	ld d, e                                                  ; $35f8 : $53
	inc l                                                  ; $35f9 : $2c
	jr nz, $59                                                  ; $35fa : $20, $59

	ld c, a                                                  ; $35fc : $4f
	ld d, l                                                  ; $35fd : $55
	jr nz, br_00_3641                                                  ; $35fe : $20, $41

	ld d, d                                                  ; $3600 : $52
	ld b, l                                                  ; $3601 : $45
	jr nz, br_00_3656                                                  ; $3602 : $20, $52

	ld c, c                                                  ; $3604 : $49
	ld b, a                                                  ; $3605 : $47
	ld c, b                                                  ; $3606 : $48
	ld d, h                                                  ; $3607 : $54

br_00_3608:
	dec c                                                  ; $3608 : $0d
	ld c, (hl)                                                  ; $3609 : $4e
	ld c, a                                                  ; $360a : $4f
	inc l                                                  ; $360b : $2c
	jr nz, $54                                                  ; $360c : $20, $54

	ld d, d                                                  ; $360e : $52
	ld e, c                                                  ; $360f : $59
	jr nz, br_00_3653                                                  ; $3610 : $20, $41

br_00_3612:
	ld b, a                                                  ; $3612 : $47
	ld b, c                                                  ; $3613 : $41

br_00_3614:
	ld c, c                                                  ; $3614 : $49
	ld c, (hl)                                                  ; $3615 : $4e
	ld e, $36                                                  ; $3616 : $1e, $36
	jr nc, br_00_3650                                                  ; $3618 : $30, $36

	jr c, $36                                                  ; $361a : $38, $36

	ld b, d                                                  ; $361c : $42
	ld (hl), $11                                                  ; $361d : $36, $11
	ld b, a                                                  ; $361f : $47
	ld b, l                                                  ; $3620 : $45
	ld c, (hl)                                                  ; $3621 : $4e
	ld b, l                                                  ; $3622 : $45

br_00_3623:
	ld d, d                                                  ; $3623 : $52
	ld b, c                                                  ; $3624 : $41
	ld c, h                                                  ; $3625 : $4c
	jr nz, br_00_3673                                                  ; $3626 : $20, $4b

	ld c, (hl)                                                  ; $3628 : $4e

br_00_3629:
	ld c, a                                                  ; $3629 : $4f
	ld d, a                                                  ; $362a : $57
	ld c, h                                                  ; $362b : $4c
	ld b, l                                                  ; $362c : $45
	ld b, h                                                  ; $362d : $44
	ld b, a                                                  ; $362e : $47
	ld b, l                                                  ; $362f : $45
	rlca                                                  ; $3630 : $07
	ld c, b                                                  ; $3631 : $48
	ld c, c                                                  ; $3632 : $49
	ld d, e                                                  ; $3633 : $53
	ld d, h                                                  ; $3634 : $54
	ld c, a                                                  ; $3635 : $4f
	ld d, d                                                  ; $3636 : $52
	ld e, c                                                  ; $3637 : $59

br_00_3638:
	add hl, bc                                                  ; $3638 : $09
	ld b, a                                                  ; $3639 : $47
	ld b, l                                                  ; $363a : $45
	ld c, a                                                  ; $363b : $4f
	ld b, a                                                  ; $363c : $47
	ld d, d                                                  ; $363d : $52
	ld b, c                                                  ; $363e : $41
	ld d, b                                                  ; $363f : $50
	ld c, b                                                  ; $3640 : $48

br_00_3641:
	ld e, c                                                  ; $3641 : $59
	rlca                                                  ; $3642 : $07
	ld d, e                                                  ; $3643 : $53
	ld b, e                                                  ; $3644 : $43
	ld c, c                                                  ; $3645 : $49
	ld b, l                                                  ; $3646 : $45
	ld c, (hl)                                                  ; $3647 : $4e
	ld b, e                                                  ; $3648 : $43
	ld b, l                                                  ; $3649 : $45
	nop                                                  ; $364a : $00
	nop                                                  ; $364b : $00
	nop                                                  ; $364c : $00
	nop                                                  ; $364d : $00
	nop                                                  ; $364e : $00
	nop                                                  ; $364f : $00

Jump_00_3650:
br_00_3650:
	call Call_00_3595                                                  ; $3650 : $cd, $95, $35

br_00_3653:
	ld hl, $8037                                                  ; $3653 : $21, $37, $80

br_00_3656:
	jp Jump_00_307f                                                  ; $3656 : $c3, $7f, $30


	nop                                                  ; $3659 : $00
	nop                                                  ; $365a : $00
	nop                                                  ; $365b : $00
	nop                                                  ; $365c : $00
	nop                                                  ; $365d : $00
	nop                                                  ; $365e : $00
	nop                                                  ; $365f : $00

Jump_00_3660:
	ld hl, $807c                                                  ; $3660 : $21, $7c, $80
	call Call_00_3595                                                  ; $3663 : $cd, $95, $35
	ld hl, $807c                                                  ; $3666 : $21, $7c, $80
	jp Jump_00_3076                                                  ; $3669 : $c3, $76, $30


	nop                                                  ; $366c : $00
	nop                                                  ; $366d : $00
	nop                                                  ; $366e : $00
	nop                                                  ; $366f : $00
	nop                                                  ; $3670 : $00
	nop                                                  ; $3671 : $00
	nop                                                  ; $3672 : $00

br_00_3673:
	nop                                                  ; $3673 : $00
	nop                                                  ; $3674 : $00
	nop                                                  ; $3675 : $00
	nop                                                  ; $3676 : $00
	nop                                                  ; $3677 : $00
	nop                                                  ; $3678 : $00
	nop                                                  ; $3679 : $00
	nop                                                  ; $367a : $00
	nop                                                  ; $367b : $00
	nop                                                  ; $367c : $00
	nop                                                  ; $367d : $00
	nop                                                  ; $367e : $00
	nop                                                  ; $367f : $00
	nop                                                  ; $3680 : $00
	nop                                                  ; $3681 : $00
	nop                                                  ; $3682 : $00
	nop                                                  ; $3683 : $00
	nop                                                  ; $3684 : $00
	nop                                                  ; $3685 : $00
	nop                                                  ; $3686 : $00
	nop                                                  ; $3687 : $00
	nop                                                  ; $3688 : $00
	nop                                                  ; $3689 : $00
	nop                                                  ; $368a : $00
	nop                                                  ; $368b : $00
	nop                                                  ; $368c : $00
	nop                                                  ; $368d : $00
	nop                                                  ; $368e : $00
	nop                                                  ; $368f : $00
	nop                                                  ; $3690 : $00
	nop                                                  ; $3691 : $00
	nop                                                  ; $3692 : $00
	nop                                                  ; $3693 : $00
	nop                                                  ; $3694 : $00
	nop                                                  ; $3695 : $00
	nop                                                  ; $3696 : $00
	nop                                                  ; $3697 : $00
	nop                                                  ; $3698 : $00
	nop                                                  ; $3699 : $00
	nop                                                  ; $369a : $00
	nop                                                  ; $369b : $00
	nop                                                  ; $369c : $00
	nop                                                  ; $369d : $00
	nop                                                  ; $369e : $00
	nop                                                  ; $369f : $00
	nop                                                  ; $36a0 : $00
	nop                                                  ; $36a1 : $00
	nop                                                  ; $36a2 : $00
	nop                                                  ; $36a3 : $00
	nop                                                  ; $36a4 : $00
	nop                                                  ; $36a5 : $00
	nop                                                  ; $36a6 : $00
	nop                                                  ; $36a7 : $00
	nop                                                  ; $36a8 : $00
	nop                                                  ; $36a9 : $00
	nop                                                  ; $36aa : $00
	nop                                                  ; $36ab : $00
	nop                                                  ; $36ac : $00
	nop                                                  ; $36ad : $00
	nop                                                  ; $36ae : $00
	nop                                                  ; $36af : $00
	nop                                                  ; $36b0 : $00
	nop                                                  ; $36b1 : $00
	nop                                                  ; $36b2 : $00
	nop                                                  ; $36b3 : $00
	nop                                                  ; $36b4 : $00
	nop                                                  ; $36b5 : $00
	nop                                                  ; $36b6 : $00
	nop                                                  ; $36b7 : $00
	nop                                                  ; $36b8 : $00
	nop                                                  ; $36b9 : $00
	nop                                                  ; $36ba : $00
	nop                                                  ; $36bb : $00
	nop                                                  ; $36bc : $00
	nop                                                  ; $36bd : $00
	nop                                                  ; $36be : $00
	nop                                                  ; $36bf : $00
	nop                                                  ; $36c0 : $00
	nop                                                  ; $36c1 : $00
	nop                                                  ; $36c2 : $00
	nop                                                  ; $36c3 : $00
	nop                                                  ; $36c4 : $00
	nop                                                  ; $36c5 : $00
	nop                                                  ; $36c6 : $00
	nop                                                  ; $36c7 : $00
	nop                                                  ; $36c8 : $00
	nop                                                  ; $36c9 : $00
	nop                                                  ; $36ca : $00
	nop                                                  ; $36cb : $00
	nop                                                  ; $36cc : $00
	nop                                                  ; $36cd : $00
	nop                                                  ; $36ce : $00
	nop                                                  ; $36cf : $00
	nop                                                  ; $36d0 : $00
	nop                                                  ; $36d1 : $00
	nop                                                  ; $36d2 : $00
	nop                                                  ; $36d3 : $00
	nop                                                  ; $36d4 : $00
	nop                                                  ; $36d5 : $00
	nop                                                  ; $36d6 : $00
	nop                                                  ; $36d7 : $00
	nop                                                  ; $36d8 : $00
	nop                                                  ; $36d9 : $00
	nop                                                  ; $36da : $00
	nop                                                  ; $36db : $00
	nop                                                  ; $36dc : $00
	nop                                                  ; $36dd : $00
	nop                                                  ; $36de : $00
	nop                                                  ; $36df : $00
	nop                                                  ; $36e0 : $00
	nop                                                  ; $36e1 : $00
	nop                                                  ; $36e2 : $00
	nop                                                  ; $36e3 : $00
	nop                                                  ; $36e4 : $00
	nop                                                  ; $36e5 : $00
	nop                                                  ; $36e6 : $00
	nop                                                  ; $36e7 : $00
	nop                                                  ; $36e8 : $00
	nop                                                  ; $36e9 : $00
	nop                                                  ; $36ea : $00
	nop                                                  ; $36eb : $00
	nop                                                  ; $36ec : $00
	nop                                                  ; $36ed : $00
	nop                                                  ; $36ee : $00
	nop                                                  ; $36ef : $00
	nop                                                  ; $36f0 : $00
	nop                                                  ; $36f1 : $00
	nop                                                  ; $36f2 : $00
	nop                                                  ; $36f3 : $00
	nop                                                  ; $36f4 : $00
	nop                                                  ; $36f5 : $00
	nop                                                  ; $36f6 : $00
	nop                                                  ; $36f7 : $00
	nop                                                  ; $36f8 : $00
	nop                                                  ; $36f9 : $00
	nop                                                  ; $36fa : $00
	nop                                                  ; $36fb : $00
	nop                                                  ; $36fc : $00
	nop                                                  ; $36fd : $00
	nop                                                  ; $36fe : $00
	nop                                                  ; $36ff : $00
	nop                                                  ; $3700 : $00
	nop                                                  ; $3701 : $00
	nop                                                  ; $3702 : $00
	nop                                                  ; $3703 : $00
	nop                                                  ; $3704 : $00
	nop                                                  ; $3705 : $00
	nop                                                  ; $3706 : $00
	nop                                                  ; $3707 : $00
	nop                                                  ; $3708 : $00
	nop                                                  ; $3709 : $00
	nop                                                  ; $370a : $00
	nop                                                  ; $370b : $00
	nop                                                  ; $370c : $00
	nop                                                  ; $370d : $00
	nop                                                  ; $370e : $00
	nop                                                  ; $370f : $00
	nop                                                  ; $3710 : $00
	nop                                                  ; $3711 : $00
	nop                                                  ; $3712 : $00
	nop                                                  ; $3713 : $00
	nop                                                  ; $3714 : $00
	nop                                                  ; $3715 : $00
	nop                                                  ; $3716 : $00
	nop                                                  ; $3717 : $00
	nop                                                  ; $3718 : $00
	nop                                                  ; $3719 : $00
	nop                                                  ; $371a : $00
	nop                                                  ; $371b : $00
	nop                                                  ; $371c : $00
	nop                                                  ; $371d : $00
	nop                                                  ; $371e : $00
	nop                                                  ; $371f : $00
	nop                                                  ; $3720 : $00
	nop                                                  ; $3721 : $00
	nop                                                  ; $3722 : $00
	nop                                                  ; $3723 : $00
	nop                                                  ; $3724 : $00
	nop                                                  ; $3725 : $00
	nop                                                  ; $3726 : $00
	nop                                                  ; $3727 : $00
	nop                                                  ; $3728 : $00
	nop                                                  ; $3729 : $00
	nop                                                  ; $372a : $00
	nop                                                  ; $372b : $00
	nop                                                  ; $372c : $00
	nop                                                  ; $372d : $00
	nop                                                  ; $372e : $00
	nop                                                  ; $372f : $00
	nop                                                  ; $3730 : $00
	nop                                                  ; $3731 : $00
	nop                                                  ; $3732 : $00
	nop                                                  ; $3733 : $00
	nop                                                  ; $3734 : $00
	nop                                                  ; $3735 : $00
	nop                                                  ; $3736 : $00
	nop                                                  ; $3737 : $00
	nop                                                  ; $3738 : $00
	nop                                                  ; $3739 : $00
	nop                                                  ; $373a : $00
	nop                                                  ; $373b : $00
	nop                                                  ; $373c : $00
	nop                                                  ; $373d : $00
	nop                                                  ; $373e : $00
	nop                                                  ; $373f : $00
	nop                                                  ; $3740 : $00
	nop                                                  ; $3741 : $00
	nop                                                  ; $3742 : $00
	nop                                                  ; $3743 : $00
	nop                                                  ; $3744 : $00
	nop                                                  ; $3745 : $00
	nop                                                  ; $3746 : $00
	nop                                                  ; $3747 : $00
	nop                                                  ; $3748 : $00
	nop                                                  ; $3749 : $00
	nop                                                  ; $374a : $00
	nop                                                  ; $374b : $00
	nop                                                  ; $374c : $00
	nop                                                  ; $374d : $00
	nop                                                  ; $374e : $00
	nop                                                  ; $374f : $00
	nop                                                  ; $3750 : $00
	nop                                                  ; $3751 : $00
	nop                                                  ; $3752 : $00
	nop                                                  ; $3753 : $00
	nop                                                  ; $3754 : $00
	nop                                                  ; $3755 : $00
	nop                                                  ; $3756 : $00
	nop                                                  ; $3757 : $00
	nop                                                  ; $3758 : $00
	nop                                                  ; $3759 : $00
	nop                                                  ; $375a : $00
	nop                                                  ; $375b : $00
	nop                                                  ; $375c : $00
	nop                                                  ; $375d : $00
	nop                                                  ; $375e : $00
	nop                                                  ; $375f : $00
	nop                                                  ; $3760 : $00
	nop                                                  ; $3761 : $00
	nop                                                  ; $3762 : $00
	nop                                                  ; $3763 : $00
	nop                                                  ; $3764 : $00
	nop                                                  ; $3765 : $00
	nop                                                  ; $3766 : $00
	nop                                                  ; $3767 : $00
	nop                                                  ; $3768 : $00
	nop                                                  ; $3769 : $00
	nop                                                  ; $376a : $00
	nop                                                  ; $376b : $00
	nop                                                  ; $376c : $00
	nop                                                  ; $376d : $00
	nop                                                  ; $376e : $00
	nop                                                  ; $376f : $00
	nop                                                  ; $3770 : $00
	nop                                                  ; $3771 : $00
	nop                                                  ; $3772 : $00
	nop                                                  ; $3773 : $00
	nop                                                  ; $3774 : $00
	nop                                                  ; $3775 : $00
	nop                                                  ; $3776 : $00
	nop                                                  ; $3777 : $00
	nop                                                  ; $3778 : $00
	nop                                                  ; $3779 : $00
	nop                                                  ; $377a : $00
	nop                                                  ; $377b : $00
	nop                                                  ; $377c : $00
	nop                                                  ; $377d : $00
	nop                                                  ; $377e : $00
	nop                                                  ; $377f : $00
	nop                                                  ; $3780 : $00
	nop                                                  ; $3781 : $00
	nop                                                  ; $3782 : $00
	nop                                                  ; $3783 : $00
	nop                                                  ; $3784 : $00
	nop                                                  ; $3785 : $00
	nop                                                  ; $3786 : $00
	nop                                                  ; $3787 : $00
	nop                                                  ; $3788 : $00
	nop                                                  ; $3789 : $00
	nop                                                  ; $378a : $00
	nop                                                  ; $378b : $00
	nop                                                  ; $378c : $00
	nop                                                  ; $378d : $00
	nop                                                  ; $378e : $00
	nop                                                  ; $378f : $00
	nop                                                  ; $3790 : $00
	nop                                                  ; $3791 : $00
	nop                                                  ; $3792 : $00
	nop                                                  ; $3793 : $00
	nop                                                  ; $3794 : $00
	nop                                                  ; $3795 : $00
	nop                                                  ; $3796 : $00
	nop                                                  ; $3797 : $00
	nop                                                  ; $3798 : $00
	nop                                                  ; $3799 : $00
	nop                                                  ; $379a : $00
	nop                                                  ; $379b : $00
	nop                                                  ; $379c : $00
	nop                                                  ; $379d : $00
	nop                                                  ; $379e : $00
	nop                                                  ; $379f : $00
	nop                                                  ; $37a0 : $00
	nop                                                  ; $37a1 : $00
	nop                                                  ; $37a2 : $00
	nop                                                  ; $37a3 : $00
	nop                                                  ; $37a4 : $00
	nop                                                  ; $37a5 : $00
	nop                                                  ; $37a6 : $00
	nop                                                  ; $37a7 : $00
	nop                                                  ; $37a8 : $00
	nop                                                  ; $37a9 : $00
	nop                                                  ; $37aa : $00
	nop                                                  ; $37ab : $00
	nop                                                  ; $37ac : $00
	nop                                                  ; $37ad : $00
	nop                                                  ; $37ae : $00
	nop                                                  ; $37af : $00
	nop                                                  ; $37b0 : $00
	nop                                                  ; $37b1 : $00
	nop                                                  ; $37b2 : $00
	nop                                                  ; $37b3 : $00
	nop                                                  ; $37b4 : $00
	nop                                                  ; $37b5 : $00
	nop                                                  ; $37b6 : $00
	nop                                                  ; $37b7 : $00
	nop                                                  ; $37b8 : $00
	nop                                                  ; $37b9 : $00
	nop                                                  ; $37ba : $00
	nop                                                  ; $37bb : $00
	nop                                                  ; $37bc : $00
	nop                                                  ; $37bd : $00
	nop                                                  ; $37be : $00
	nop                                                  ; $37bf : $00
	nop                                                  ; $37c0 : $00
	nop                                                  ; $37c1 : $00
	nop                                                  ; $37c2 : $00
	nop                                                  ; $37c3 : $00
	nop                                                  ; $37c4 : $00
	nop                                                  ; $37c5 : $00
	nop                                                  ; $37c6 : $00
	nop                                                  ; $37c7 : $00
	nop                                                  ; $37c8 : $00
	nop                                                  ; $37c9 : $00
	nop                                                  ; $37ca : $00
	nop                                                  ; $37cb : $00
	nop                                                  ; $37cc : $00
	nop                                                  ; $37cd : $00
	nop                                                  ; $37ce : $00
	nop                                                  ; $37cf : $00
	nop                                                  ; $37d0 : $00
	nop                                                  ; $37d1 : $00
	nop                                                  ; $37d2 : $00
	nop                                                  ; $37d3 : $00
	nop                                                  ; $37d4 : $00
	nop                                                  ; $37d5 : $00
	nop                                                  ; $37d6 : $00
	nop                                                  ; $37d7 : $00
	nop                                                  ; $37d8 : $00
	nop                                                  ; $37d9 : $00
	nop                                                  ; $37da : $00
	nop                                                  ; $37db : $00
	nop                                                  ; $37dc : $00
	nop                                                  ; $37dd : $00
	nop                                                  ; $37de : $00
	nop                                                  ; $37df : $00
	nop                                                  ; $37e0 : $00
	nop                                                  ; $37e1 : $00
	nop                                                  ; $37e2 : $00
	nop                                                  ; $37e3 : $00
	nop                                                  ; $37e4 : $00
	nop                                                  ; $37e5 : $00
	nop                                                  ; $37e6 : $00
	nop                                                  ; $37e7 : $00
	nop                                                  ; $37e8 : $00
	nop                                                  ; $37e9 : $00
	nop                                                  ; $37ea : $00
	nop                                                  ; $37eb : $00
	nop                                                  ; $37ec : $00
	nop                                                  ; $37ed : $00
	nop                                                  ; $37ee : $00
	nop                                                  ; $37ef : $00
	nop                                                  ; $37f0 : $00
	nop                                                  ; $37f1 : $00
	nop                                                  ; $37f2 : $00
	nop                                                  ; $37f3 : $00
	nop                                                  ; $37f4 : $00
	nop                                                  ; $37f5 : $00
	nop                                                  ; $37f6 : $00
	nop                                                  ; $37f7 : $00
	nop                                                  ; $37f8 : $00
	nop                                                  ; $37f9 : $00
	nop                                                  ; $37fa : $00
	nop                                                  ; $37fb : $00
	nop                                                  ; $37fc : $00
	nop                                                  ; $37fd : $00
	nop                                                  ; $37fe : $00
	nop                                                  ; $37ff : $00

Call_00_3800:
	xor a                                                  ; $3800 : $af
	ld ($464b), a                                                  ; $3801 : $32, $4b, $46
	ld bc, $0180                                                  ; $3804 : $01, $80, $01
	ld hl, $4400                                                  ; $3807 : $21, $00, $44

br_00_380a:
	ld (hl), $20                                                  ; $380a : $36, $20
	inc hl                                                  ; $380c : $23
	dec bc                                                  ; $380d : $0b
	ld a, b                                                  ; $380e : $78
	or c                                                  ; $380f : $b1
	jr nz, br_00_380a                                                  ; $3810 : $20, $f8

	ld hl, $801c                                                  ; $3812 : $21, $1c, $80
	call Call_00_3bdc                                                  ; $3815 : $cd, $dc, $3b
	jp nz, Jump_00_38e6                                                  ; $3818 : $c2, $e6, $38
	ld de, $0018                                                  ; $381b : $11, $18, $00
	ld a, ($462f)                                                  ; $381e : $3a, $2f, $46
	call Call_00_3aee                                                  ; $3821 : $cd, $ee, $3a

Jump_00_3824:
	ld de, $0006                                                  ; $3824 : $11, $06, $00
	ld a, ($462e)                                                  ; $3827 : $3a, $2e, $46
	call Call_00_3aee                                                  ; $382a : $cd, $ee, $3a
	call Call_00_3af6                                                  ; $382d : $cd, $f6, $3a
	ld a, ($4642)                                                  ; $3830 : $3a, $42, $46
	ld ($4640), a                                                  ; $3833 : $32, $40, $46
	call Call_00_1075                                                  ; $3836 : $cd, $75, $10
	ld bc, ($4600)                                                  ; $3839 : $ed, $4b, $00, $46
	call Call_00_3baf                                                  ; $383d : $cd, $af, $3b
	ld ($4602), de                                                  ; $3840 : $ed, $53, $02, $46
	ld a, (hl)                                                  ; $3844 : $7e
	ld ($4606), a                                                  ; $3845 : $32, $06, $46
	ld hl, ($4600)                                                  ; $3848 : $2a, $00, $46
	call Call_00_3b49                                                  ; $384b : $cd, $49, $3b
	ld a, ($4606)                                                  ; $384e : $3a, $06, $46
	ld b, a                                                  ; $3851 : $47
	ld hl, ($4602)                                                  ; $3852 : $2a, $02, $46
	ld de, $4400                                                  ; $3855 : $11, $00, $44
	call Call_00_3b06                                                  ; $3858 : $cd, $06, $3b
	xor a                                                  ; $385b : $af
	ld ($4607), a                                                  ; $385c : $32, $07, $46
	ld a, ($4400)                                                  ; $385f : $3a, $00, $44
	inc a                                                  ; $3862 : $3c
	ld ($4608), a                                                  ; $3863 : $32, $08, $46
	ld a, ($4606)                                                  ; $3866 : $3a, $06, $46
	ld hl, $4608                                                  ; $3869 : $21, $08, $46
	sub (hl)                                                  ; $386c : $96
	ld ($4606), a                                                  ; $386d : $32, $06, $46
	call Call_00_3a43                                                  ; $3870 : $cd, $43, $3a

br_00_3873:
	call Call_00_38ec                                                  ; $3873 : $cd, $ec, $38
	ld a, ($4610)                                                  ; $3876 : $3a, $10, $46
	ld c, a                                                  ; $3879 : $4f
	ld b, $00                                                  ; $387a : $06, $00
	ld a, ($4607)                                                  ; $387c : $3a, $07, $46
	ld e, a                                                  ; $387f : $5f
	ld d, b                                                  ; $3880 : $50
	ld hl, $4500                                                  ; $3881 : $21, $00, $45
	add hl, de                                                  ; $3884 : $19
	ex de, hl                                                  ; $3885 : $eb
	ld hl, $45c0                                                  ; $3886 : $21, $c0, $45
	ldir                                                  ; $3889 : $ed, $b0
	ex de, hl                                                  ; $388b : $eb
	ld a, $20                                                  ; $388c : $3e, $20
	ld (hl), a                                                  ; $388e : $77
	ld hl, $4610                                                  ; $388f : $21, $10, $46
	ld a, ($4607)                                                  ; $3892 : $3a, $07, $46
	add a, (hl)                                                  ; $3895 : $86
	inc a                                                  ; $3896 : $3c
	ld ($4607), a                                                  ; $3897 : $32, $07, $46
	ld a, ($4608)                                                  ; $389a : $3a, $08, $46
	cp $00                                                  ; $389d : $fe, $00
	jr nz, br_00_3873                                                  ; $389f : $20, $d2

	xor a                                                  ; $38a1 : $af
	ld ($4613), a                                                  ; $38a2 : $32, $13, $46
	ld a, ($4606)                                                  ; $38a5 : $3a, $06, $46
	ld ($4608), a                                                  ; $38a8 : $32, $08, $46

br_00_38ab:
	call Call_00_38ec                                                  ; $38ab : $cd, $ec, $38
	ld a, ($4610)                                                  ; $38ae : $3a, $10, $46
	ld c, a                                                  ; $38b1 : $4f
	ld b, $00                                                  ; $38b2 : $06, $00
	ld a, ($4613)                                                  ; $38b4 : $3a, $13, $46
	ld e, a                                                  ; $38b7 : $5f
	ld d, b                                                  ; $38b8 : $50
	ld hl, $4480                                                  ; $38b9 : $21, $80, $44
	add hl, de                                                  ; $38bc : $19
	ex de, hl                                                  ; $38bd : $eb
	ld hl, $45c0                                                  ; $38be : $21, $c0, $45
	ldir                                                  ; $38c1 : $ed, $b0
	ex de, hl                                                  ; $38c3 : $eb
	ld a, ($464b)                                                  ; $38c4 : $3a, $4b, $46
	cp $00                                                  ; $38c7 : $fe, $00
	jp z, Jump_00_38d0                                                  ; $38c9 : $ca, $d0, $38
	ld a, $20                                                  ; $38cc : $3e, $20
	jr br_00_38d2                                                  ; $38ce : $18, $02

Jump_00_38d0:
	ld a, $ff                                                  ; $38d0 : $3e, $ff

br_00_38d2:
	ld (hl), a                                                  ; $38d2 : $77
	ld hl, $4610                                                  ; $38d3 : $21, $10, $46
	ld a, ($4613)                                                  ; $38d6 : $3a, $13, $46
	add a, (hl)                                                  ; $38d9 : $86
	inc a                                                  ; $38da : $3c
	ld ($4613), a                                                  ; $38db : $32, $13, $46
	ld a, ($4608)                                                  ; $38de : $3a, $08, $46
	cp $00                                                  ; $38e1 : $fe, $00
	jr nz, br_00_38ab                                                  ; $38e3 : $20, $c6

	ret                                                  ; $38e5 : $c9


Jump_00_38e6:
	ld hl, $801f                                                  ; $38e6 : $21, $1f, $80
	jp Jump_00_3824                                                  ; $38e9 : $c3, $24, $38


Call_00_38ec:
	xor a                                                  ; $38ec : $af
	ld ($464b), a                                                  ; $38ed : $32, $4b, $46

Jump_00_38f0:
	call Call_00_3bcc                                                  ; $38f0 : $cd, $cc, $3b
	xor a                                                  ; $38f3 : $af
	ld ($4610), a                                                  ; $38f4 : $32, $10, $46
	ld a, ($4400)                                                  ; $38f7 : $3a, $00, $44
	ld ($460a), a                                                  ; $38fa : $32, $0a, $46
	call Call_00_3a43                                                  ; $38fd : $cd, $43, $3a
	cp $e0                                                  ; $3900 : $fe, $e0
	jp c, Jump_00_3945                                                  ; $3902 : $da, $45, $39
	ld a, ($4400)                                                  ; $3905 : $3a, $00, $44
	ld ($4609), a                                                  ; $3908 : $32, $09, $46
	call Call_00_3a43                                                  ; $390b : $cd, $43, $3a
	ld a, ($460a)                                                  ; $390e : $3a, $0a, $46
	cp $fe                                                  ; $3911 : $fe, $fe
	jp nz, Jump_00_39e0                                                  ; $3913 : $c2, $e0, $39
	ld a, ($4609)                                                  ; $3916 : $3a, $09, $46
	cp $fe                                                  ; $3919 : $fe, $fe
	jp c, Jump_00_39e0                                                  ; $391b : $da, $e0, $39
	jp z, Jump_00_3a21                                                  ; $391e : $ca, $21, $3a
	ld a, ($4400)                                                  ; $3921 : $3a, $00, $44
	ld ($460a), a                                                  ; $3924 : $32, $0a, $46
	call Call_00_3a43                                                  ; $3927 : $cd, $43, $3a
	ld a, ($4400)                                                  ; $392a : $3a, $00, $44
	ld ($4609), a                                                  ; $392d : $32, $09, $46
	call Call_00_3a43                                                  ; $3930 : $cd, $43, $3a
	call Call_00_3bdc                                                  ; $3933 : $cd, $dc, $3b
	jp nz, Jump_00_393f                                                  ; $3936 : $c2, $3f, $39
	ld hl, $8016                                                  ; $3939 : $21, $16, $80

Jump_00_393c:
	jp Jump_00_39f5                                                  ; $393c : $c3, $f5, $39


Jump_00_393f:
	ld hl, $8019                                                  ; $393f : $21, $19, $80
	jp Jump_00_393c                                                  ; $3942 : $c3, $3c, $39


Jump_00_3945:
	cp $df                                                  ; $3945 : $fe, $df
	jp z, Jump_00_397b                                                  ; $3947 : $ca, $7b, $39
	ld ($4609), a                                                  ; $394a : $32, $09, $46
	xor a                                                  ; $394d : $af
	ld ($460a), a                                                  ; $394e : $32, $0a, $46
	call Call_00_3bdc                                                  ; $3951 : $cd, $dc, $3b
	jp nz, Jump_00_3975                                                  ; $3954 : $c2, $75, $39
	ld hl, $8004                                                  ; $3957 : $21, $04, $80

Jump_00_395a:
	call Call_00_3b7e                                                  ; $395a : $cd, $7e, $3b

Jump_00_395d:
br_00_395d:
	call Call_00_3a7a                                                  ; $395d : $cd, $7a, $3a
	ld hl, $45c0                                                  ; $3960 : $21, $c0, $45
	ld a, ($4610)                                                  ; $3963 : $3a, $10, $46
	ld e, a                                                  ; $3966 : $5f
	ld d, $00                                                  ; $3967 : $16, $00
	add hl, de                                                  ; $3969 : $19
	ld a, ($4611)                                                  ; $396a : $3a, $11, $46
	ld (hl), a                                                  ; $396d : $77
	ld hl, $4610                                                  ; $396e : $21, $10, $46
	inc (hl)                                                  ; $3971 : $34
	jr br_00_395d                                                  ; $3972 : $18, $e9

Jump_00_3974:
	ret                                                  ; $3974 : $c9


Jump_00_3975:
	ld hl, $8007                                                  ; $3975 : $21, $07, $80
	jp Jump_00_395a                                                  ; $3978 : $c3, $5a, $39


Jump_00_397b:
	ld a, $01                                                  ; $397b : $3e, $01
	ld ($464b), a                                                  ; $397d : $32, $4b, $46
	ld a, ($4400)                                                  ; $3980 : $3a, $00, $44
	ld ($4609), a                                                  ; $3983 : $32, $09, $46
	call Call_00_3a43                                                  ; $3986 : $cd, $43, $3a
	xor a                                                  ; $3989 : $af
	ld ($460a), a                                                  ; $398a : $32, $0a, $46
	call Call_00_3bdc                                                  ; $398d : $cd, $dc, $3b
	jp nz, Jump_00_39da                                                  ; $3990 : $c2, $da, $39
	ld hl, $800a                                                  ; $3993 : $21, $0a, $80

Jump_00_3996:
	call Call_00_3b7e                                                  ; $3996 : $cd, $7e, $3b
	ld hl, $4400                                                  ; $3999 : $21, $00, $44
	ld a, ($4606)                                                  ; $399c : $3a, $06, $46
	dec a                                                  ; $399f : $3d
	add a, l                                                  ; $39a0 : $85
	ld l, a                                                  ; $39a1 : $6f
	jp nc, Jump_00_39a6                                                  ; $39a2 : $d2, $a6, $39
	inc h                                                  ; $39a5 : $24

Jump_00_39a6:
	push hl                                                  ; $39a6 : $e5
	pop de                                                  ; $39a7 : $d1
	ld a, ($460f)                                                  ; $39a8 : $3a, $0f, $46
	inc a                                                  ; $39ab : $3c
	add a, e                                                  ; $39ac : $83
	ld e, a                                                  ; $39ad : $5f
	jp nc, Jump_00_39b2                                                  ; $39ae : $d2, $b2, $39
	inc d                                                  ; $39b1 : $14

Jump_00_39b2:
	ld a, ($4606)                                                  ; $39b2 : $3a, $06, $46
	cp $00                                                  ; $39b5 : $fe, $00
	jp z, Jump_00_39c1                                                  ; $39b7 : $ca, $c1, $39
	ld b, a                                                  ; $39ba : $47

br_00_39bb:
	ld a, (hl)                                                  ; $39bb : $7e
	ld (de), a                                                  ; $39bc : $12
	dec hl                                                  ; $39bd : $2b
	dec de                                                  ; $39be : $1b
	djnz br_00_39bb                                                  ; $39bf : $10, $fa

Jump_00_39c1:
	ld a, ($460f)                                                  ; $39c1 : $3a, $0f, $46
	inc a                                                  ; $39c4 : $3c
	ld c, a                                                  ; $39c5 : $4f
	ld hl, $4580                                                  ; $39c6 : $21, $80, $45
	ld de, $4400                                                  ; $39c9 : $11, $00, $44
	ldir                                                  ; $39cc : $ed, $b0
	ld hl, $4608                                                  ; $39ce : $21, $08, $46
	ld a, ($460f)                                                  ; $39d1 : $3a, $0f, $46
	inc a                                                  ; $39d4 : $3c
	add a, (hl)                                                  ; $39d5 : $86
	ld (hl), a                                                  ; $39d6 : $77
	jp Jump_00_38f0                                                  ; $39d7 : $c3, $f0, $38


Jump_00_39da:
	ld hl, $800d                                                  ; $39da : $21, $0d, $80
	jp Jump_00_3996                                                  ; $39dd : $c3, $96, $39


Jump_00_39e0:
	ld hl, ($4609)                                                  ; $39e0 : $2a, $09, $46
	ld de, $e000                                                  ; $39e3 : $11, $00, $e0
	xor a                                                  ; $39e6 : $af
	sbc hl, de                                                  ; $39e7 : $ed, $52
	ld ($4609), hl                                                  ; $39e9 : $22, $09, $46
	call Call_00_3bdc                                                  ; $39ec : $cd, $dc, $3b
	jp nz, Jump_00_3a1b                                                  ; $39ef : $c2, $1b, $3a
	ld hl, $8010                                                  ; $39f2 : $21, $10, $80

Jump_00_39f5:
	call Call_00_3af6                                                  ; $39f5 : $cd, $f6, $3a
	ld a, ($4642)                                                  ; $39f8 : $3a, $42, $46
	ld ($4640), a                                                  ; $39fb : $32, $40, $46
	call Call_00_1075                                                  ; $39fe : $cd, $75, $10
	ld bc, ($4609)                                                  ; $3a01 : $ed, $4b, $09, $46
	ld hl, ($4643)                                                  ; $3a05 : $2a, $43, $46
	ld a, b                                                  ; $3a08 : $78
	or a                                                  ; $3a09 : $b7
	jr z, br_00_3a12                                                  ; $3a0a : $28, $06

	ld de, $0102                                                  ; $3a0c : $11, $02, $01

br_00_3a0f:
	add hl, de                                                  ; $3a0f : $19
	djnz br_00_3a0f                                                  ; $3a10 : $10, $fd

br_00_3a12:
	call Call_00_3bb2                                                  ; $3a12 : $cd, $b2, $3b
	call Call_00_3b91                                                  ; $3a15 : $cd, $91, $3b
	jp Jump_00_395d                                                  ; $3a18 : $c3, $5d, $39


Jump_00_3a1b:
	ld hl, $8013                                                  ; $3a1b : $21, $13, $80
	jp Jump_00_39f5                                                  ; $3a1e : $c3, $f5, $39


Jump_00_3a21:
br_00_3a21:
	ld a, ($4400)                                                  ; $3a21 : $3a, $00, $44
	ld ($460a), a                                                  ; $3a24 : $32, $0a, $46
	call Call_00_3a43                                                  ; $3a27 : $cd, $43, $3a
	ld a, ($460a)                                                  ; $3a2a : $3a, $0a, $46
	cp $ff                                                  ; $3a2d : $fe, $ff
	ret z                                                  ; $3a2f : $c8

	ex af, af'                                                  ; $3a30 : $08
	ld hl, $45c0                                                  ; $3a31 : $21, $c0, $45
	ld a, ($4610)                                                  ; $3a34 : $3a, $10, $46
	ld e, a                                                  ; $3a37 : $5f
	ld d, $00                                                  ; $3a38 : $16, $00
	add hl, de                                                  ; $3a3a : $19
	ex af, af'                                                  ; $3a3b : $08
	ld (hl), a                                                  ; $3a3c : $77
	ld hl, $4610                                                  ; $3a3d : $21, $10, $46
	inc (hl)                                                  ; $3a40 : $34
	jr br_00_3a21                                                  ; $3a41 : $18, $de

Call_00_3a43:
	push af                                                  ; $3a43 : $f5
	push bc                                                  ; $3a44 : $c5
	push de                                                  ; $3a45 : $d5
	push hl                                                  ; $3a46 : $e5
	ld bc, $007f                                                  ; $3a47 : $01, $7f, $00
	ld hl, $4401                                                  ; $3a4a : $21, $01, $44
	ld de, $4400                                                  ; $3a4d : $11, $00, $44
	ldir                                                  ; $3a50 : $ed, $b0
	ld hl, $4608                                                  ; $3a52 : $21, $08, $46
	dec (hl)                                                  ; $3a55 : $35

Jump_00_3a56:
	pop hl                                                  ; $3a56 : $e1
	pop de                                                  ; $3a57 : $d1
	pop bc                                                  ; $3a58 : $c1
	pop af                                                  ; $3a59 : $f1
	ret                                                  ; $3a5a : $c9


Call_00_3a5b:
	push af                                                  ; $3a5b : $f5
	push bc                                                  ; $3a5c : $c5
	push de                                                  ; $3a5d : $d5
	push hl                                                  ; $3a5e : $e5
	ld hl, $4580                                                  ; $3a5f : $21, $80, $45
	ld a, $ff                                                  ; $3a62 : $3e, $ff
	rld                                                  ; $3a64 : $ed, $6f
	ld a, ($460f)                                                  ; $3a66 : $3a, $0f, $46
	ld b, a                                                  ; $3a69 : $47
	cp $00                                                  ; $3a6a : $fe, $00
	jr z, br_00_3a77                                                  ; $3a6c : $28, $09

br_00_3a6e:
	ld a, (hl)                                                  ; $3a6e : $7e
	inc hl                                                  ; $3a6f : $23
	rld                                                  ; $3a70 : $ed, $6f
	dec hl                                                  ; $3a72 : $2b
	ld (hl), a                                                  ; $3a73 : $77
	inc hl                                                  ; $3a74 : $23
	djnz br_00_3a6e                                                  ; $3a75 : $10, $f7

br_00_3a77:
	jp Jump_00_3a56                                                  ; $3a77 : $c3, $56, $3a


Call_00_3a7a:
	call Call_00_3bcc                                                  ; $3a7a : $cd, $cc, $3b
	call Call_00_3bdc                                                  ; $3a7d : $cd, $dc, $3b
	jp nz, Jump_00_3ab4                                                  ; $3a80 : $c2, $b4, $3a
	ld hl, $8001                                                  ; $3a83 : $21, $01, $80

Jump_00_3a86:
	call Call_00_3af6                                                  ; $3a86 : $cd, $f6, $3a
	ld a, ($4642)                                                  ; $3a89 : $3a, $42, $46
	call Call_00_3bcf                                                  ; $3a8c : $cd, $cf, $3b
	ld a, ($4580)                                                  ; $3a8f : $3a, $80, $45
	ld ($4611), a                                                  ; $3a92 : $32, $11, $46
	call Call_00_3a5b                                                  ; $3a95 : $cd, $5b, $3a
	ld a, ($4611)                                                  ; $3a98 : $3a, $11, $46
	and $f0                                                  ; $3a9b : $e6, $f0
	cp $e0                                                  ; $3a9d : $fe, $e0
	jp c, Jump_00_3aba                                                  ; $3a9f : $da, $ba, $3a
	call Call_00_3a5b                                                  ; $3aa2 : $cd, $5b, $3a
	ld a, ($4611)                                                  ; $3aa5 : $3a, $11, $46
	cp $fe                                                  ; $3aa8 : $fe, $fe
	jp c, Jump_00_3ace                                                  ; $3aaa : $da, $ce, $3a
	jp z, Jump_00_3ad9                                                  ; $3aad : $ca, $d9, $3a
	pop hl                                                  ; $3ab0 : $e1
	jp Jump_00_3974                                                  ; $3ab1 : $c3, $74, $39


Jump_00_3ab4:
	ld hl, $8004                                                  ; $3ab4 : $21, $04, $80
	jp Jump_00_3a86                                                  ; $3ab7 : $c3, $86, $3a


Jump_00_3aba:
	srl a                                                  ; $3aba : $cb, $3f
	srl a                                                  ; $3abc : $cb, $3f
	srl a                                                  ; $3abe : $cb, $3f
	srl a                                                  ; $3ac0 : $cb, $3f
	ld hl, ($4643)                                                  ; $3ac2 : $2a, $43, $46

br_00_3ac5:
	ld e, a                                                  ; $3ac5 : $5f
	ld d, $00                                                  ; $3ac6 : $16, $00
	add hl, de                                                  ; $3ac8 : $19
	ld a, (hl)                                                  ; $3ac9 : $7e
	ld ($4611), a                                                  ; $3aca : $32, $11, $46
	ret                                                  ; $3acd : $c9


Jump_00_3ace:
	and $1f                                                  ; $3ace : $e6, $1f
	ld hl, ($4643)                                                  ; $3ad0 : $2a, $43, $46
	ld de, $000e                                                  ; $3ad3 : $11, $0e, $00
	add hl, de                                                  ; $3ad6 : $19
	jr br_00_3ac5                                                  ; $3ad7 : $18, $ec

Jump_00_3ad9:
	ld a, ($4580)                                                  ; $3ad9 : $3a, $80, $45
	ld ($4611), a                                                  ; $3adc : $32, $11, $46
	call Call_00_3a5b                                                  ; $3adf : $cd, $5b, $3a
	call Call_00_3a5b                                                  ; $3ae2 : $cd, $5b, $3a
	ld hl, ($4643)                                                  ; $3ae5 : $2a, $43, $46
	ld de, $002c                                                  ; $3ae8 : $11, $2c, $00
	add hl, de                                                  ; $3aeb : $19
	jr br_00_3ac5                                                  ; $3aec : $18, $d7

Call_00_3aee:
	cp $00                                                  ; $3aee : $fe, $00
	ret z                                                  ; $3af0 : $c8

	ld b, a                                                  ; $3af1 : $47

br_00_3af2:
	add hl, de                                                  ; $3af2 : $19
	djnz br_00_3af2                                                  ; $3af3 : $10, $fd
	ret                                                  ; $3af5 : $c9


Call_00_3af6:
	ld bc, $0006                                                  ; $3af6 : $01, $06, $00
	ld de, $4642                                                  ; $3af9 : $11, $42, $46
	ldir                                                  ; $3afc : $ed, $b0
	ret                                                  ; $3afe : $c9


Call_00_3aff:
	push hl                                                  ; $3aff : $e5
	ld hl, $4640                                                  ; $3b00 : $21, $40, $46
	inc (hl)                                                  ; $3b03 : $34
	pop hl                                                  ; $3b04 : $e1
	ret                                                  ; $3b05 : $c9


Call_00_3b06:
br_00_3b06:
	ld a, (hl)                                                  ; $3b06 : $7e
	ld (de), a                                                  ; $3b07 : $12
	inc de                                                  ; $3b08 : $13
	inc hl                                                  ; $3b09 : $23
	ld a, l                                                  ; $3b0a : $7d
	or h                                                  ; $3b0b : $b4
	jp nz, Jump_00_3b1c                                                  ; $3b0c : $c2, $1c, $3b
	ld hl, $8000                                                  ; $3b0f : $21, $00, $80
	push hl                                                  ; $3b12 : $e5
	push de                                                  ; $3b13 : $d5
	call Call_00_3aff                                                  ; $3b14 : $cd, $ff, $3a
	call Call_00_1075                                                  ; $3b17 : $cd, $75, $10
	pop de                                                  ; $3b1a : $d1
	pop hl                                                  ; $3b1b : $e1

Jump_00_3b1c:
	djnz br_00_3b06                                                  ; $3b1c : $10, $e8
	ret                                                  ; $3b1e : $c9


Call_00_3b1f:
	sla l                                                  ; $3b1f : $cb, $25
	rl h                                                  ; $3b21 : $cb, $14
	jp nc, Jump_00_3b2c                                                  ; $3b23 : $d2, $2c, $3b
	call Call_00_3aff                                                  ; $3b26 : $cd, $ff, $3a
	call Call_00_3aff                                                  ; $3b29 : $cd, $ff, $3a

Jump_00_3b2c:
	bit 7, h                                                  ; $3b2c : $cb, $7c
	jp z, Jump_00_3b36                                                  ; $3b2e : $ca, $36, $3b
	res 7, h                                                  ; $3b31 : $cb, $bc
	call Call_00_3aff                                                  ; $3b33 : $cd, $ff, $3a

Jump_00_3b36:
	ex de, hl                                                  ; $3b36 : $eb
	ld hl, ($4643)                                                  ; $3b37 : $2a, $43, $46
	add hl, de                                                  ; $3b3a : $19
	jp nc, Jump_00_3b45                                                  ; $3b3b : $d2, $45, $3b
	ld de, $8000                                                  ; $3b3e : $11, $00, $80
	add hl, de                                                  ; $3b41 : $19
	call Call_00_3aff                                                  ; $3b42 : $cd, $ff, $3a

Jump_00_3b45:
	call Call_00_1075                                                  ; $3b45 : $cd, $75, $10
	ret                                                  ; $3b48 : $c9


Call_00_3b49:
	ld ($4648), hl                                                  ; $3b49 : $22, $48, $46
	ld a, ($4645)                                                  ; $3b4c : $3a, $45, $46
	ld ($4640), a                                                  ; $3b4f : $32, $40, $46
	call Call_00_1075                                                  ; $3b52 : $cd, $75, $10
	ld hl, ($4646)                                                  ; $3b55 : $2a, $46, $46
	ld a, (hl)                                                  ; $3b58 : $7e
	ld ($4640), a                                                  ; $3b59 : $32, $40, $46

Jump_00_3b5c:
	inc hl                                                  ; $3b5c : $23
	push hl                                                  ; $3b5d : $e5
	ld e, (hl)                                                  ; $3b5e : $5e
	inc hl                                                  ; $3b5f : $23
	ld d, (hl)                                                  ; $3b60 : $56
	ld hl, $0001                                                  ; $3b61 : $21, $01, $00
	add hl, de                                                  ; $3b64 : $19
	pop hl                                                  ; $3b65 : $e1
	jp c, Jump_00_3b7a                                                  ; $3b66 : $da, $7a, $3b
	push hl                                                  ; $3b69 : $e5
	ld hl, ($4648)                                                  ; $3b6a : $2a, $48, $46
	sbc hl, de                                                  ; $3b6d : $ed, $52
	pop hl                                                  ; $3b6f : $e1
	jp c, Jump_00_3b7a                                                  ; $3b70 : $da, $7a, $3b
	call Call_00_3aff                                                  ; $3b73 : $cd, $ff, $3a
	inc hl                                                  ; $3b76 : $23
	jp Jump_00_3b5c                                                  ; $3b77 : $c3, $5c, $3b


Jump_00_3b7a:
	call Call_00_1075                                                  ; $3b7a : $cd, $75, $10
	ret                                                  ; $3b7d : $c9


Call_00_3b7e:
	call Call_00_3af6                                                  ; $3b7e : $cd, $f6, $3a
	ld a, ($4642)                                                  ; $3b81 : $3a, $42, $46
	ld ($4640), a                                                  ; $3b84 : $32, $40, $46
	call Call_00_1075                                                  ; $3b87 : $cd, $75, $10
	ld bc, ($4609)                                                  ; $3b8a : $ed, $4b, $09, $46
	call Call_00_3baf                                                  ; $3b8e : $cd, $af, $3b

Call_00_3b91:
	ld ($460b), de                                                  ; $3b91 : $ed, $53, $0b, $46
	ld a, (hl)                                                  ; $3b95 : $7e
	dec a                                                  ; $3b96 : $3d
	ld ($460f), a                                                  ; $3b97 : $32, $0f, $46
	ld hl, ($4609)                                                  ; $3b9a : $2a, $09, $46
	call Call_00_3b49                                                  ; $3b9d : $cd, $49, $3b
	ld a, ($460f)                                                  ; $3ba0 : $3a, $0f, $46
	inc a                                                  ; $3ba3 : $3c
	ld b, a                                                  ; $3ba4 : $47
	ld hl, ($460b)                                                  ; $3ba5 : $2a, $0b, $46
	ld de, $4580                                                  ; $3ba8 : $11, $80, $45
	call Call_00_3b06                                                  ; $3bab : $cd, $06, $3b
	ret                                                  ; $3bae : $c9


Call_00_3baf:
	ld hl, ($4643)                                                  ; $3baf : $2a, $43, $46

Call_00_3bb2:
	ld e, (hl)                                                  ; $3bb2 : $5e
	inc hl                                                  ; $3bb3 : $23
	ld d, (hl)                                                  ; $3bb4 : $56

br_00_3bb5:
	inc hl                                                  ; $3bb5 : $23
	ld a, b                                                  ; $3bb6 : $78
	or c                                                  ; $3bb7 : $b1
	ret z                                                  ; $3bb8 : $c8

	push bc                                                  ; $3bb9 : $c5
	ld c, (hl)                                                  ; $3bba : $4e
	ld b, $00                                                  ; $3bbb : $06, $00
	push hl                                                  ; $3bbd : $e5
	ex de, hl                                                  ; $3bbe : $eb
	add hl, bc                                                  ; $3bbf : $09
	jr nc, br_00_3bc6                                                  ; $3bc0 : $30, $04

	ld bc, $8000                                                  ; $3bc2 : $01, $00, $80
	add hl, bc                                                  ; $3bc5 : $09

br_00_3bc6:
	ex de, hl                                                  ; $3bc6 : $eb
	pop hl                                                  ; $3bc7 : $e1
	pop bc                                                  ; $3bc8 : $c1
	dec bc                                                  ; $3bc9 : $0b
	jr br_00_3bb5                                                  ; $3bca : $18, $e9

Call_00_3bcc:
	ld a, ($4641)                                                  ; $3bcc : $3a, $41, $46

Call_00_3bcf:
	ld ($4640), a                                                  ; $3bcf : $32, $40, $46
	call Call_00_1075                                                  ; $3bd2 : $cd, $75, $10
	ret                                                  ; $3bd5 : $c9


Call_00_3bd6:
	ld a, ($4636)                                                  ; $3bd6 : $3a, $36, $46
	cp $00                                                  ; $3bd9 : $fe, $00
	ret                                                  ; $3bdb : $c9


Call_00_3bdc:
	ld a, ($4637)                                                  ; $3bdc : $3a, $37, $46
	cp $00                                                  ; $3bdf : $fe, $00
	ret                                                  ; $3be1 : $c9


	ld a, $04                                                  ; $3be2 : $3e, $04
	ld ($4640), a                                                  ; $3be4 : $32, $40, $46
	ld ($4641), a                                                  ; $3be7 : $32, $41, $46
	call Call_00_3bcc                                                  ; $3bea : $cd, $cc, $3b
	call Call_00_3c27                                                  ; $3bed : $cd, $27, $3c
	call Call_00_3bd6                                                  ; $3bf0 : $cd, $d6, $3b
	jp z, Jump_00_3c1b                                                  ; $3bf3 : $ca, $1b, $3c
	ld a, ($8002)                                                  ; $3bf6 : $3a, $02, $80
	cp $11                                                  ; $3bf9 : $fe, $11
	jp nz, $8004                                                  ; $3bfb : $c2, $04, $80
	xor a                                                  ; $3bfe : $af
	ld ($462f), a                                                  ; $3bff : $32, $2f, $46
	ld a, $01                                                  ; $3c02 : $3e, $01
	ld ($4637), a                                                  ; $3c04 : $32, $37, $46
	jp Jump_00_3017                                                  ; $3c07 : $c3, $17, $30


	djnz $49                                                  ; $3c0a : $10, $49
	ld c, (hl)                                                  ; $3c0c : $4e
	ld d, e                                                  ; $3c0d : $53
	ld b, l                                                  ; $3c0e : $45
	ld d, d                                                  ; $3c0f : $52
	ld d, h                                                  ; $3c10 : $54
	jr nz, $43                                                  ; $3c11 : $20, $43

	ld b, c                                                  ; $3c13 : $41
	ld d, d                                                  ; $3c14 : $52
	ld d, h                                                  ; $3c15 : $54
	ld d, d                                                  ; $3c16 : $52
	ld c, c                                                  ; $3c17 : $49
	ld b, h                                                  ; $3c18 : $44
	ld b, a                                                  ; $3c19 : $47
	ld b, l                                                  ; $3c1a : $45

Jump_00_3c1b:
	call Call_00_02f8                                                  ; $3c1b : $cd, $f8, $02
	ld hl, $3c0a                                                  ; $3c1e : $21, $0a, $3c
	call Call_00_355c                                                  ; $3c21 : $cd, $5c, $35
	jp Boot                                                  ; $3c24 : $c3, $00, $00


Call_00_3c27:
	xor a                                                  ; $3c27 : $af
	ld ($4636), a                                                  ; $3c28 : $32, $36, $46
	ld a, $04                                                  ; $3c2b : $3e, $04
	ld ($4640), a                                                  ; $3c2d : $32, $40, $46
	call Call_00_1075                                                  ; $3c30 : $cd, $75, $10
	ld a, ($8000)                                                  ; $3c33 : $3a, $00, $80
	cp $55                                                  ; $3c36 : $fe, $55
	jp nz, Jump_00_3c48                                                  ; $3c38 : $c2, $48, $3c
	ld a, ($8001)                                                  ; $3c3b : $3a, $01, $80
	cp $aa                                                  ; $3c3e : $fe, $aa
	jp nz, Jump_00_3c48                                                  ; $3c40 : $c2, $48, $3c
	ld a, $01                                                  ; $3c43 : $3e, $01
	ld ($4636), a                                                  ; $3c45 : $32, $36, $46

Jump_00_3c48:
	ld a, ($4641)                                                  ; $3c48 : $3a, $41, $46
	ld ($4640), a                                                  ; $3c4b : $32, $40, $46
	call Call_00_1075                                                  ; $3c4e : $cd, $75, $10
	ret                                                  ; $3c51 : $c9


Call_00_3c52:
	ld a, $01                                                  ; $3c52 : $3e, $01
	ld ($4640), a                                                  ; $3c54 : $32, $40, $46
	ld ($4641), a                                                  ; $3c57 : $32, $41, $46
	call Call_00_1075                                                  ; $3c5a : $cd, $75, $10
	ld a, ($4117)                                                  ; $3c5d : $3a, $17, $41
	ld ($462e), a                                                  ; $3c60 : $32, $2e, $46
	xor a                                                  ; $3c63 : $af
	ld ($4637), a                                                  ; $3c64 : $32, $37, $46
	ld hl, $809c                                                  ; $3c67 : $21, $9c, $80
	ld de, $0005                                                  ; $3c6a : $11, $05, $00
	ld a, ($462e)                                                  ; $3c6d : $3a, $2e, $46
	call Call_00_3aee                                                  ; $3c70 : $cd, $ee, $3a
	call Call_00_3af6                                                  ; $3c73 : $cd, $f6, $3a
	ld hl, ($4645)                                                  ; $3c76 : $2a, $45, $46
	ld ($4634), hl                                                  ; $3c79 : $22, $34, $46
	call Call_00_35b0                                                  ; $3c7c : $cd, $b0, $35
	call Call_00_3c27                                                  ; $3c7f : $cd, $27, $3c
	ret                                                  ; $3c82 : $c9


Call_00_3c83:
	call Call_00_3d11                                                  ; $3c83 : $cd, $11, $3d
	ld hl, ($4600)                                                  ; $3c86 : $2a, $00, $46
	call Call_00_3b1f                                                  ; $3c89 : $cd, $1f, $3b
	ld b, $02                                                  ; $3c8c : $06, $02
	ld de, $4400                                                  ; $3c8e : $11, $00, $44
	call Call_00_3b06                                                  ; $3c91 : $cd, $06, $3b
	ld a, $02                                                  ; $3c94 : $3e, $02
	ld ($4608), a                                                  ; $3c96 : $32, $08, $46
	call Call_00_38ec                                                  ; $3c99 : $cd, $ec, $38
	ld a, ($4610)                                                  ; $3c9c : $3a, $10, $46
	ld ($4116), a                                                  ; $3c9f : $32, $16, $41
	ld c, a                                                  ; $3ca2 : $4f
	ld b, $00                                                  ; $3ca3 : $06, $00
	ld hl, $45c0                                                  ; $3ca5 : $21, $c0, $45
	ld de, $4200                                                  ; $3ca8 : $11, $00, $42
	ldir                                                  ; $3cab : $ed, $b0
	ret                                                  ; $3cad : $c9


Call_00_3cae:
	ld a, r                                                  ; $3cae : $ed, $5f
	and $07                                                  ; $3cb0 : $e6, $07
	inc a                                                  ; $3cb2 : $3c
	ld e, a                                                  ; $3cb3 : $5f
	ld d, $00                                                  ; $3cb4 : $16, $00
	ld hl, ($4600)                                                  ; $3cb6 : $2a, $00, $46
	add hl, de                                                  ; $3cb9 : $19
	ld ($4600), hl                                                  ; $3cba : $22, $00, $46
	call Call_00_35be                                                  ; $3cbd : $cd, $be, $35
	xor a                                                  ; $3cc0 : $af
	cp c                                                  ; $3cc1 : $b9
	ret z                                                  ; $3cc2 : $c8

	ld hl, $4637                                                  ; $3cc3 : $21, $37, $46
	ld a, (hl)                                                  ; $3cc6 : $7e
	cp $01                                                  ; $3cc7 : $fe, $01
	jp z, Jump_00_3d0a                                                  ; $3cc9 : $ca, $0a, $3d
	ld a, ($4636)                                                  ; $3ccc : $3a, $36, $46
	cp $00                                                  ; $3ccf : $fe, $00
	ret z                                                  ; $3cd1 : $c8

	push hl                                                  ; $3cd2 : $e5
	ld a, $04                                                  ; $3cd3 : $3e, $04
	ld ($4640), a                                                  ; $3cd5 : $32, $40, $46
	call Call_00_1075                                                  ; $3cd8 : $cd, $75, $10
	ld a, ($8002)                                                  ; $3cdb : $3a, $02, $80
	cp $11                                                  ; $3cde : $fe, $11
	jp z, Jump_00_3ce8                                                  ; $3ce0 : $ca, $e8, $3c
	call Call_00_3bcc                                                  ; $3ce3 : $cd, $cc, $3b
	pop hl                                                  ; $3ce6 : $e1
	ret                                                  ; $3ce7 : $c9


Jump_00_3ce8:
	pop hl                                                  ; $3ce8 : $e1
	ld a, $01                                                  ; $3ce9 : $3e, $01
	ld (hl), a                                                  ; $3ceb : $77
	ld a, $04                                                  ; $3cec : $3e, $04

Jump_00_3cee:
	ld ($4640), a                                                  ; $3cee : $32, $40, $46
	ld ($4641), a                                                  ; $3cf1 : $32, $41, $46
	call Call_00_3bcc                                                  ; $3cf4 : $cd, $cc, $3b
	call Call_00_3d11                                                  ; $3cf7 : $cd, $11, $3d
	ld hl, $4637                                                  ; $3cfa : $21, $37, $46
	ld a, (hl)                                                  ; $3cfd : $7e
	cp $00                                                  ; $3cfe : $fe, $00
	jr z, br_00_3d06                                                  ; $3d00 : $28, $04

	call Call_00_35b0                                                  ; $3d02 : $cd, $b0, $35
	ret                                                  ; $3d05 : $c9


br_00_3d06:
	call Call_00_35be                                                  ; $3d06 : $cd, $be, $35
	ret                                                  ; $3d09 : $c9


Jump_00_3d0a:
	xor a                                                  ; $3d0a : $af
	ld (hl), a                                                  ; $3d0b : $77
	ld a, $01                                                  ; $3d0c : $3e, $01
	jp Jump_00_3cee                                                  ; $3d0e : $c3, $ee, $3c


Call_00_3d11:
	call Call_00_3bdc                                                  ; $3d11 : $cd, $dc, $3b
	jp nz, Jump_00_3d36                                                  ; $3d14 : $c2, $36, $3d
	call Call_00_3bcc                                                  ; $3d17 : $cd, $cc, $3b
	ld hl, $809c                                                  ; $3d1a : $21, $9c, $80

Jump_00_3d1d:
	ld de, $0005                                                  ; $3d1d : $11, $05, $00
	ld a, ($462e)                                                  ; $3d20 : $3a, $2e, $46
	call Call_00_3aee                                                  ; $3d23 : $cd, $ee, $3a
	call Call_00_3af6                                                  ; $3d26 : $cd, $f6, $3a
	ld hl, ($4645)                                                  ; $3d29 : $2a, $45, $46
	ld ($4634), hl                                                  ; $3d2c : $22, $34, $46
	ld a, ($4642)                                                  ; $3d2f : $3a, $42, $46
	ld ($4640), a                                                  ; $3d32 : $32, $40, $46
	ret                                                  ; $3d35 : $c9


Jump_00_3d36:
	call Call_00_3bcc                                                  ; $3d36 : $cd, $cc, $3b
	ld hl, $803f                                                  ; $3d39 : $21, $3f, $80
	jp Jump_00_3d1d                                                  ; $3d3c : $c3, $1d, $3d


	ld l, b                                                  ; $3d3f : $68
	sub a                                                  ; $3d40 : $97
	ld bc, $80f0                                                  ; $3d41 : $01, $f0, $80
	ld bc, $97a6                                                  ; $3d44 : $01, $a6, $97
	ld bc, $80f3                                                  ; $3d47 : $01, $f3, $80
	ld bc, $97e7                                                  ; $3d4a : $01, $e7, $97
	ld bc, $80f6                                                  ; $3d4d : $01, $f6, $80
	ld bc, $982e                                                  ; $3d50 : $01, $2e, $98
	ld bc, $80f9                                                  ; $3d53 : $01, $f9, $80
	ld bc, $986d                                                  ; $3d56 : $01, $6d, $98
	ld bc, $80fc                                                  ; $3d59 : $01, $fc, $80
	ld bc, $98ad                                                  ; $3d5c : $01, $ad, $98
	ld bc, $80ff                                                  ; $3d5f : $01, $ff, $80
	ld bc, $98ed                                                  ; $3d62 : $01, $ed, $98
	ld bc, $8104                                                  ; $3d65 : $01, $04, $81
	ld bc, $992d                                                  ; $3d68 : $01, $2d, $99
	ld bc, $8107                                                  ; $3d6b : $01, $07, $81
	ld bc, $996c                                                  ; $3d6e : $01, $6c, $99
	ld bc, $810a                                                  ; $3d71 : $01, $0a, $81
	ld bc, $99ad                                                  ; $3d74 : $01, $ad, $99
	ld bc, $810d                                                  ; $3d77 : $01, $0d, $81
	ld bc, $99ef                                                  ; $3d7a : $01, $ef, $99
	ld bc, $8110                                                  ; $3d7d : $01, $10, $81
	ld bc, $9a30                                                  ; $3d80 : $01, $30, $9a
	ld bc, $8113                                                  ; $3d83 : $01, $13, $81
	ld bc, $9a70                                                  ; $3d86 : $01, $70, $9a
	ld bc, $8116                                                  ; $3d89 : $01, $16, $81
	ld bc, $9ab0                                                  ; $3d8c : $01, $b0, $9a
	ld bc, $8119                                                  ; $3d8f : $01, $19, $81
	ld bc, $9aee                                                  ; $3d92 : $01, $ee, $9a
	ld bc, $811c                                                  ; $3d95 : $01, $1c, $81
	ld a, $00                                                  ; $3d98 : $3e, $00
	dec sp                                                  ; $3d9a : $3b
	nop                                                  ; $3d9b : $00
	ld a, $00                                                  ; $3d9c : $3e, $00
	ld b, h                                                  ; $3d9e : $44
	nop                                                  ; $3d9f : $00
	inc a                                                  ; $3da0 : $3c
	nop                                                  ; $3da1 : $00
	dec a                                                  ; $3da2 : $3d
	nop                                                  ; $3da3 : $00
	dec a                                                  ; $3da4 : $3d
	nop                                                  ; $3da5 : $00
	dec a                                                  ; $3da6 : $3d
	nop                                                  ; $3da7 : $00
	inc a                                                  ; $3da8 : $3c
	nop                                                  ; $3da9 : $00
	ld a, $00                                                  ; $3daa : $3e, $00
	ccf                                                  ; $3dac : $3f
	nop                                                  ; $3dad : $00
	ld a, $00                                                  ; $3dae : $3e, $00
	dec a                                                  ; $3db0 : $3d
	nop                                                  ; $3db1 : $00
	dec a                                                  ; $3db2 : $3d
	nop                                                  ; $3db3 : $00
	dec sp                                                  ; $3db4 : $3b
	nop                                                  ; $3db5 : $00
	ld a, $00                                                  ; $3db6 : $3e, $00
	inc bc                                                  ; $3db8 : $03
	nop                                                  ; $3db9 : $00
	ret p                                                  ; $3dba : $f0

	rst $38                                                  ; $3dbb : $ff
	nop                                                  ; $3dbc : $00
	inc bc                                                  ; $3dbd : $03
	nop                                                  ; $3dbe : $00
	jp p, $0109                                                  ; $3dbf : $f2, $09, $01
	inc bc                                                  ; $3dc2 : $03
	inc d                                                  ; $3dc3 : $14
	call p, $00a3                                                  ; $3dc4 : $f4, $a3, $00
	inc bc                                                  ; $3dc7 : $03
	ld e, h                                                  ; $3dc8 : $5c
	push af                                                  ; $3dc9 : $f5
	ld b, h                                                  ; $3dca : $44
	nop                                                  ; $3dcb : $00
	ld b, c                                                  ; $3dcc : $41
	ld b, e                                                  ; $3dcd : $43
	ld b, h                                                  ; $3dce : $44
	ld b, l                                                  ; $3dcf : $45
	ld b, (hl)                                                  ; $3dd0 : $46
	ld c, b                                                  ; $3dd1 : $48
	ld c, c                                                  ; $3dd2 : $49
	ld c, h                                                  ; $3dd3 : $4c
	ld c, (hl)                                                  ; $3dd4 : $4e
	ld c, a                                                  ; $3dd5 : $4f
	ld d, b                                                  ; $3dd6 : $50
	ld d, d                                                  ; $3dd7 : $52
	ld d, e                                                  ; $3dd8 : $53
	ld d, h                                                  ; $3dd9 : $54
	ld b, d                                                  ; $3dda : $42
	ld b, a                                                  ; $3ddb : $47
	ld c, d                                                  ; $3ddc : $4a
	ld c, e                                                  ; $3ddd : $4b
	ld c, l                                                  ; $3dde : $4d
	ld d, c                                                  ; $3ddf : $51
	ld d, l                                                  ; $3de0 : $55
	ld d, (hl)                                                  ; $3de1 : $56
	ld d, a                                                  ; $3de2 : $57
	ld e, b                                                  ; $3de3 : $58
	ld e, c                                                  ; $3de4 : $59
	ld e, d                                                  ; $3de5 : $5a
	ld l, $2c                                                  ; $3de6 : $2e, $2c
	dec l                                                  ; $3de8 : $2d
	ccf                                                  ; $3de9 : $3f
	daa                                                  ; $3dea : $27
	ld a, ($2022)                                                  ; $3deb : $3a, $22, $20
	jr nc, br_00_3e21                                                  ; $3dee : $30, $31

	ld ($3433), a                                                  ; $3df0 : $32, $33, $34
	dec (hl)                                                  ; $3df3 : $35
	ld (hl), $37                                                  ; $3df4 : $36, $37
	jr c, br_00_3e31                                                  ; $3df6 : $38, $39

	ld hl, $2928                                                  ; $3df8 : $21, $28, $29
	dec h                                                  ; $3dfb : $25
	ld e, a                                                  ; $3dfc : $5f
	ld bc, $ffff                                                  ; $3dfd : $01, $ff, $ff

NoCartBegin2:
	ld hl, $3e80                                                  ; $3e00 : $21, $80, $3e
	call Call_00_03ab                                                  ; $3e03 : $cd, $ab, $03
	ld de, $2c20                                                  ; $3e06 : $11, $20, $2c
	jp NoCartBegin3                                                  ; $3e09 : $c3, $1f, $03


	ld bc, $ffff                                                  ; $3e0c : $01, $ff, $ff
	ld bc, $ffff                                                  ; $3e0f : $01, $ff, $ff
	ld bc, $ffff                                                  ; $3e12 : $01, $ff, $ff
	ld bc, $ffff                                                  ; $3e15 : $01, $ff, $ff
	ld bc, $ffff                                                  ; $3e18 : $01, $ff, $ff
	ld bc, $0018                                                  ; $3e1b : $01, $18, $00
	rst $38                                                  ; $3e1e : $ff
	rst $38                                                  ; $3e1f : $ff
	ld (bc), a                                                  ; $3e20 : $02

br_00_3e21:
	rst $38                                                  ; $3e21 : $ff
	rst $38                                                  ; $3e22 : $ff
	ld (bc), a                                                  ; $3e23 : $02
	rst $38                                                  ; $3e24 : $ff
	rst $38                                                  ; $3e25 : $ff
	ld (bc), a                                                  ; $3e26 : $02
	rst $38                                                  ; $3e27 : $ff
	rst $38                                                  ; $3e28 : $ff
	ld (bc), a                                                  ; $3e29 : $02
	rst $38                                                  ; $3e2a : $ff
	rst $38                                                  ; $3e2b : $ff
	ld (bc), a                                                  ; $3e2c : $02
	rst $38                                                  ; $3e2d : $ff
	rst $38                                                  ; $3e2e : $ff
	ld (bc), a                                                  ; $3e2f : $02
	rst $38                                                  ; $3e30 : $ff

br_00_3e31:
	rst $38                                                  ; $3e31 : $ff
	ld (bc), a                                                  ; $3e32 : $02
	rst $38                                                  ; $3e33 : $ff
	rst $38                                                  ; $3e34 : $ff
	ld (bc), a                                                  ; $3e35 : $02
	rst $38                                                  ; $3e36 : $ff
	rst $38                                                  ; $3e37 : $ff
	ld (bc), a                                                  ; $3e38 : $02
	rst $38                                                  ; $3e39 : $ff
	rst $38                                                  ; $3e3a : $ff
	ld (bc), a                                                  ; $3e3b : $02
	rst $38                                                  ; $3e3c : $ff
	rst $38                                                  ; $3e3d : $ff
	ld d, l                                                  ; $3e3e : $55
	xor d                                                  ; $3e3f : $aa
	ld de, $0400                                                  ; $3e40 : $11, $00, $04
	xor b                                                  ; $3e43 : $a8
	add a, b                                                  ; $3e44 : $80
	inc b                                                  ; $3e45 : $04
	nop                                                  ; $3e46 : $00
	adc a, b                                                  ; $3e47 : $88
	inc b                                                  ; $3e48 : $04
	exx                                                  ; $3e49 : $d9
	add a, b                                                  ; $3e4a : $80
	inc b                                                  ; $3e4b : $04
	pop af                                                  ; $3e4c : $f1
	add a, b                                                  ; $3e4d : $80
	inc b                                                  ; $3e4e : $04
	call c, $0480                                                  ; $3e4f : $dc, $80, $04
	pop hl                                                  ; $3e52 : $e1
	adc a, b                                                  ; $3e53 : $88
	inc b                                                  ; $3e54 : $04
	rst $18                                                  ; $3e55 : $df
	add a, b                                                  ; $3e56 : $80
	inc b                                                  ; $3e57 : $04
	pop af                                                  ; $3e58 : $f1
	add a, b                                                  ; $3e59 : $80
	inc b                                                  ; $3e5a : $04
	jp po, $0480                                                  ; $3e5b : $e2, $80, $04
	ld b, d                                                  ; $3e5e : $42
	sub b                                                  ; $3e5f : $90
	inc b                                                  ; $3e60 : $04
	push hl                                                  ; $3e61 : $e5
	add a, b                                                  ; $3e62 : $80
	inc b                                                  ; $3e63 : $04
	ld a, $91                                                  ; $3e64 : $3e, $91
	inc b                                                  ; $3e66 : $04
	ret pe                                                  ; $3e67 : $e8

	add a, b                                                  ; $3e68 : $80
	inc b                                                  ; $3e69 : $04
	ld a, ($0492)                                                  ; $3e6a : $3a, $92, $04
	ex de, hl                                                  ; $3e6d : $eb
	add a, b                                                  ; $3e6e : $80
	inc b                                                  ; $3e6f : $04
	ld (hl), $93                                                  ; $3e70 : $36, $93
	inc b                                                  ; $3e72 : $04
	xor $80                                                  ; $3e73 : $ee, $80
	ld sp, hl                                                  ; $3e75 : $f9
	nop                                                  ; $3e76 : $00
	ld sp, hl                                                  ; $3e77 : $f9
	nop                                                  ; $3e78 : $00
	ld sp, hl                                                  ; $3e79 : $f9
	nop                                                  ; $3e7a : $00
	ld sp, hl                                                  ; $3e7b : $f9
	nop                                                  ; $3e7c : $00
	inc b                                                  ; $3e7d : $04
	nop                                                  ; $3e7e : $00
	jp m, $431f                                                  ; $3e7f : $fa, $1f, $43
	ld c, a                                                  ; $3e82 : $4f
	ld d, b                                                  ; $3e83 : $50
	ld e, c                                                  ; $3e84 : $59
	ld d, d                                                  ; $3e85 : $52
	ld c, c                                                  ; $3e86 : $49
	ld b, a                                                  ; $3e87 : $47
	ld c, b                                                  ; $3e88 : $48
	ld d, h                                                  ; $3e89 : $54
	jr nz, br_00_3ebd                                                  ; $3e8a : $20, $31

	add hl, sp                                                  ; $3e8c : $39
	jr c, br_00_3ec7                                                  ; $3e8d : $38, $38

	jr nz, br_00_3ee7                                                  ; $3e8f : $20, $56

	ld c, c                                                  ; $3e91 : $49
	ld b, h                                                  ; $3e92 : $44
	ld b, l                                                  ; $3e93 : $45
	ld c, a                                                  ; $3e94 : $4f
	jr nz, br_00_3eeb                                                  ; $3e95 : $20, $54

	ld b, l                                                  ; $3e97 : $45
	ld b, e                                                  ; $3e98 : $43
	ld c, b                                                  ; $3e99 : $48
	ld c, (hl)                                                  ; $3e9a : $4e
	ld c, a                                                  ; $3e9b : $4f
	ld c, h                                                  ; $3e9c : $4c
	ld c, a                                                  ; $3e9d : $4f
	ld b, a                                                  ; $3e9e : $47
	ld e, c                                                  ; $3e9f : $59
	nop                                                  ; $3ea0 : $00
	nop                                                  ; $3ea1 : $00
	nop                                                  ; $3ea2 : $00
	nop                                                  ; $3ea3 : $00
	nop                                                  ; $3ea4 : $00
	nop                                                  ; $3ea5 : $00
	nop                                                  ; $3ea6 : $00
	nop                                                  ; $3ea7 : $00
	nop                                                  ; $3ea8 : $00
	nop                                                  ; $3ea9 : $00
	nop                                                  ; $3eaa : $00
	nop                                                  ; $3eab : $00
	nop                                                  ; $3eac : $00
	nop                                                  ; $3ead : $00
	nop                                                  ; $3eae : $00
	nop                                                  ; $3eaf : $00
	nop                                                  ; $3eb0 : $00
	nop                                                  ; $3eb1 : $00
	nop                                                  ; $3eb2 : $00
	nop                                                  ; $3eb3 : $00
	nop                                                  ; $3eb4 : $00
	nop                                                  ; $3eb5 : $00
	nop                                                  ; $3eb6 : $00
	nop                                                  ; $3eb7 : $00
	nop                                                  ; $3eb8 : $00
	nop                                                  ; $3eb9 : $00
	nop                                                  ; $3eba : $00
	nop                                                  ; $3ebb : $00
	nop                                                  ; $3ebc : $00

br_00_3ebd:
	nop                                                  ; $3ebd : $00
	nop                                                  ; $3ebe : $00
	nop                                                  ; $3ebf : $00
	nop                                                  ; $3ec0 : $00
	nop                                                  ; $3ec1 : $00
	nop                                                  ; $3ec2 : $00
	nop                                                  ; $3ec3 : $00
	nop                                                  ; $3ec4 : $00
	nop                                                  ; $3ec5 : $00
	nop                                                  ; $3ec6 : $00

br_00_3ec7:
	nop                                                  ; $3ec7 : $00
	nop                                                  ; $3ec8 : $00
	nop                                                  ; $3ec9 : $00
	nop                                                  ; $3eca : $00
	nop                                                  ; $3ecb : $00
	nop                                                  ; $3ecc : $00
	nop                                                  ; $3ecd : $00
	nop                                                  ; $3ece : $00
	nop                                                  ; $3ecf : $00
	nop                                                  ; $3ed0 : $00
	nop                                                  ; $3ed1 : $00
	nop                                                  ; $3ed2 : $00
	nop                                                  ; $3ed3 : $00
	nop                                                  ; $3ed4 : $00
	nop                                                  ; $3ed5 : $00
	nop                                                  ; $3ed6 : $00
	nop                                                  ; $3ed7 : $00
	nop                                                  ; $3ed8 : $00
	inc c                                                  ; $3ed9 : $0c
	ld b, d                                                  ; $3eda : $42
	ld c, c                                                  ; $3edb : $49
	ld b, d                                                  ; $3edc : $42
	ld c, h                                                  ; $3edd : $4c
	ld b, l                                                  ; $3ede : $45
	jr nz, $54                                                  ; $3edf : $20, $54

	ld d, d                                                  ; $3ee1 : $52
	ld c, c                                                  ; $3ee2 : $49
	ld d, (hl)                                                  ; $3ee3 : $56
	ld c, c                                                  ; $3ee4 : $49
	ld b, c                                                  ; $3ee5 : $41
	ld b, c                                                  ; $3ee6 : $41

br_00_3ee7:
	ld b, e                                                  ; $3ee7 : $43
	ld b, h                                                  ; $3ee8 : $44
	ld b, l                                                  ; $3ee9 : $45
	ld b, (hl)                                                  ; $3eea : $46

br_00_3eeb:
	ld c, b                                                  ; $3eeb : $48
	ld c, c                                                  ; $3eec : $49
	ld c, h                                                  ; $3eed : $4c
	ld c, (hl)                                                  ; $3eee : $4e
	ld c, a                                                  ; $3eef : $4f
	ld d, b                                                  ; $3ef0 : $50
	ld d, d                                                  ; $3ef1 : $52
	ld d, e                                                  ; $3ef2 : $53
	ld d, h                                                  ; $3ef3 : $54
	ld b, d                                                  ; $3ef4 : $42
	ld b, a                                                  ; $3ef5 : $47
	ld c, d                                                  ; $3ef6 : $4a
	ld c, e                                                  ; $3ef7 : $4b
	ld c, l                                                  ; $3ef8 : $4d
	ld d, c                                                  ; $3ef9 : $51
	ld d, l                                                  ; $3efa : $55
	ld d, (hl)                                                  ; $3efb : $56
	ld d, a                                                  ; $3efc : $57
	ld e, b                                                  ; $3efd : $58
	ld e, c                                                  ; $3efe : $59
	ld e, d                                                  ; $3eff : $5a
	ld l, $2c                                                  ; $3f00 : $2e, $2c
	dec l                                                  ; $3f02 : $2d
	ccf                                                  ; $3f03 : $3f
	daa                                                  ; $3f04 : $27
	ld a, ($2022)                                                  ; $3f05 : $3a, $22, $20
	jr nc, $31                                                  ; $3f08 : $30, $31

	ld ($3433), a                                                  ; $3f0a : $32, $33, $34
	dec (hl)                                                  ; $3f0d : $35
	ld (hl), $37                                                  ; $3f0e : $36, $37
	jr c, br_00_3f4b                                                  ; $3f10 : $38, $39

	ld hl, $2928                                                  ; $3f12 : $21, $28, $29
	dec h                                                  ; $3f15 : $25
	ld e, a                                                  ; $3f16 : $5f
	inc b                                                  ; $3f17 : $04
	rst $38                                                  ; $3f18 : $ff
	rst $38                                                  ; $3f19 : $ff
	inc b                                                  ; $3f1a : $04
	rst $38                                                  ; $3f1b : $ff
	rst $38                                                  ; $3f1c : $ff
	inc b                                                  ; $3f1d : $04
	rst $38                                                  ; $3f1e : $ff
	rst $38                                                  ; $3f1f : $ff
	inc b                                                  ; $3f20 : $04
	rst $38                                                  ; $3f21 : $ff
	rst $38                                                  ; $3f22 : $ff
	inc b                                                  ; $3f23 : $04
	rst $38                                                  ; $3f24 : $ff
	rst $38                                                  ; $3f25 : $ff
	inc b                                                  ; $3f26 : $04
	rst $38                                                  ; $3f27 : $ff
	rst $38                                                  ; $3f28 : $ff
	inc b                                                  ; $3f29 : $04
	rst $38                                                  ; $3f2a : $ff
	rst $38                                                  ; $3f2b : $ff
	inc b                                                  ; $3f2c : $04
	rst $38                                                  ; $3f2d : $ff
	rst $38                                                  ; $3f2e : $ff
	ld a, $24                                                  ; $3f2f : $3e, $24
	ld ($435f), a                                                  ; $3f31 : $32, $5f, $43
	ld ($43e0), a                                                  ; $3f34 : $32, $e0, $43
	ld ($43f5), a                                                  ; $3f37 : $32, $f5, $43
	ld ($4476), a                                                  ; $3f3a : $32, $76, $44
	ld ($4620), a                                                  ; $3f3d : $32, $20, $46
	ld ($4580), a                                                  ; $3f40 : $32, $80, $45
	ret                                                  ; $3f43 : $c9


br_00_3f44:
	inc hl                                                  ; $3f44 : $23
	jr br_00_3f4e                                                  ; $3f45 : $18, $07

	ld ($415c), sp                                                  ; $3f47 : $ed, $73, $5c, $41

br_00_3f4b:
	ld hl, $4200                                                  ; $3f4b : $21, $00, $42

br_00_3f4e:
	ld a, (hl)                                                  ; $3f4e : $7e
	cp $20                                                  ; $3f4f : $fe, $20
	jr z, br_00_3f44                                                  ; $3f51 : $28, $f1

	cp $3d                                                  ; $3f53 : $fe, $3d
	jp z, $80ec                                                  ; $3f55 : $ca, $ec, $80
	exx                                                  ; $3f58 : $d9

br_00_3f59:
	exx                                                  ; $3f59 : $d9
	ld a, (hl)                                                  ; $3f5a : $7e
	inc hl                                                  ; $3f5b : $23
	exx                                                  ; $3f5c : $d9
	cp $20                                                  ; $3f5d : $fe, $20
	jr z, br_00_3f59                                                  ; $3f5f : $28, $f8

	ld b, a                                                  ; $3f61 : $47
	ld hl, $4304                                                  ; $3f62 : $21, $04, $43
	inc (hl)                                                  ; $3f65 : $34
	ld a, (hl)                                                  ; $3f66 : $7e
	cp $80                                                  ; $3f67 : $fe, $80
	jp z, $8b3b                                                  ; $3f69 : $ca, $3b, $8b
	ld hl, $4306                                                  ; $3f6c : $21, $06, $43
	ld (hl), $00                                                  ; $3f6f : $36, $00
	ld a, b                                                  ; $3f71 : $78
	cp $0d                                                  ; $3f72 : $fe, $0d
	jp z, Boot                                                  ; $3f74 : $ca, $00, $00
	cp $51                                                  ; $3f77 : $fe, $51
	jp z, $8411                                                  ; $3f79 : $ca, $11, $84
	cp $71                                                  ; $3f7c : $fe, $71
	jp z, $8411                                                  ; $3f7e : $ca, $11, $84
	cp $2d                                                  ; $3f81 : $fe, $2d
	jp z, $8169                                                  ; $3f83 : $ca, $69, $81
	cp $2b                                                  ; $3f86 : $fe, $2b
	jp z, $8169                                                  ; $3f88 : $ca, $69, $81
	cp $a5                                                  ; $3f8b : $fe, $a5
	jp z, $81bb                                                  ; $3f8d : $ca, $bb, $81
	cp $a6                                                  ; $3f90 : $fe, $a6
	jp z, $81bb                                                  ; $3f92 : $ca, $bb, $81
	cp $2f                                                  ; $3f95 : $fe, $2f
	jp z, $81bb                                                  ; $3f97 : $ca, $bb, $81
	cp $41                                                  ; $3f9a : $fe, $41
	jp z, $822f                                                  ; $3f9c : $ca, $2f, $82
	cp $61                                                  ; $3f9f : $fe, $61
	jp z, $822f                                                  ; $3fa1 : $ca, $2f, $82
	cp $53                                                  ; $3fa4 : $fe, $53
	jp z, $822f                                                  ; $3fa6 : $ca, $2f, $82
	cp $73                                                  ; $3fa9 : $fe, $73
	jp z, $822f                                                  ; $3fab : $ca, $2f, $82
	cp $4c                                                  ; $3fae : $fe, $4c
	jp z, $822f                                                  ; $3fb0 : $ca, $2f, $82
	cp $6c                                                  ; $3fb3 : $fe, $6c
	jp z, $822f                                                  ; $3fb5 : $ca, $2f, $82
	ld a, $00                                                  ; $3fb8 : $3e, $00
	ld ($430f), a                                                  ; $3fba : $32, $0f, $43
	ld a, ($4303)                                                  ; $3fbd : $3a, $03, $43
	cp $00                                                  ; $3fc0 : $fe, $00
	jp nz, $80ad                                                  ; $3fc2 : $c2, $ad, $80
	ld a, ($4304)                                                  ; $3fc5 : $3a, $04, $43
	cp $01                                                  ; $3fc8 : $fe, $01
	jp nz, $80ad                                                  ; $3fca : $c2, $ad, $80
	ld a, ($4308)                                                  ; $3fcd : $3a, $08, $43
	cp $01                                                  ; $3fd0 : $fe, $01
	jp z, $80ad                                                  ; $3fd2 : $ca, $ad, $80
	push bc                                                  ; $3fd5 : $c5
	ld a, $00                                                  ; $3fd6 : $3e, $00
	ld ($4308), a                                                  ; $3fd8 : $32, $08, $43
	pop bc                                                  ; $3fdb : $c1
	ld a, b                                                  ; $3fdc : $78
	cp $6e                                                  ; $3fdd : $fe, $6e
	jp z, $8285                                                  ; $3fdf : $ca, $85, $82
	cp $4e                                                  ; $3fe2 : $fe, $4e
	jp z, $8285                                                  ; $3fe4 : $ca, $85, $82
	cp $28                                                  ; $3fe7 : $fe, $28
	jp z, $8154                                                  ; $3fe9 : $ca, $54, $81
	ld hl, $4305                                                  ; $3fec : $21, $05, $43
	ld (hl), $00                                                  ; $3fef : $36, $00
	ld a, b                                                  ; $3ff1 : $78
	cp $30                                                  ; $3ff2 : $fe, $30
	jp z, $812a                                                  ; $3ff4 : $ca, $2a, $81
	jp m, $80d0                                                  ; $3ff7 : $fa, $d0, $80
	cp $3a                                                  ; $3ffa : $fe, $3a
	jp m, $813b                                                  ; $3ffc : $fa, $3b, $81
	.db $fe                                                  ; $3fff : $fe