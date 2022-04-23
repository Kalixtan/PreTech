.include "includes.s"
        
.bank $001 slot 1
.org $0


Jump_01_0000:
	di                                                  ; $0000 : $f3
	xor a                                                  ; $0001 : $af
	nop                                                  ; $0002 : $00
	nop                                                  ; $0003 : $00
	nop                                                  ; $0004 : $00
	jp Jump_01_35d1                                                  ; $0005 : $c3, $d1, $35


	jp $4000                                                  ; $0008 : $c3, $00, $40


	pop hl                                                  ; $000b : $e1
	jp (hl)                                                  ; $000c : $e9


	nop                                                  ; $000d : $00
	nop                                                  ; $000e : $00
	nop                                                  ; $000f : $00
	jp $4003                                                  ; $0010 : $c3, $03, $40


br_01_0013:
	push bc                                                  ; $0013 : $c5
	ld b, $01                                                  ; $0014 : $06, $01
	jr br_01_0046                                                  ; $0016 : $18, $2e

	jp $4006                                                  ; $0018 : $c3, $06, $40


br_01_001b:
	push bc                                                  ; $001b : $c5
	ld b, $02                                                  ; $001c : $06, $02
	jr br_01_0046                                                  ; $001e : $18, $26

	jp $4009                                                  ; $0020 : $c3, $09, $40


	push bc                                                  ; $0023 : $c5
	ld b, $04                                                  ; $0024 : $06, $04
	jr br_01_0046                                                  ; $0026 : $18, $1e

	jp $400c                                                  ; $0028 : $c3, $0c, $40


Call_01_002b:
	ld de, $4015                                                  ; $002b : $11, $15, $40
	jr br_01_0013                                                  ; $002e : $18, $e3

	jp $400f                                                  ; $0030 : $c3, $0f, $40


br_01_0033:
	ld de, $401d                                                  ; $0033 : $11, $1d, $40
	jr br_01_001b                                                  ; $0036 : $18, $e3

	jp Jump_01_2eb8                                                  ; $0038 : $c3, $b8, $2e


Call_01_003b:
	ld de, $4025                                                  ; $003b : $11, $25, $40
	jr br_01_001b                                                  ; $003e : $18, $db

	jp Jump_01_2efd                                                  ; $0040 : $c3, $fd, $2e


	ret                                                  ; $0043 : $c9


	nop                                                  ; $0044 : $00
	nop                                                  ; $0045 : $00

br_01_0046:
	jp Jump_01_03c2                                                  ; $0046 : $c3, $c2, $03


br_01_0049:
	call Call_01_002b                                                  ; $0049 : $cd, $2b, $00
	or a                                                  ; $004c : $b7
	ret nz                                                  ; $004d : $c0

	jr br_01_0049                                                  ; $004e : $18, $f9

Call_01_0050:
	jp Jump_01_068e                                                  ; $0050 : $c3, $8e, $06


Call_01_0053:
	jp Jump_01_068e                                                  ; $0053 : $c3, $8e, $06


	ld b, b                                                  ; $0056 : $40
	ret                                                  ; $0057 : $c9


	ld c, h                                                  ; $0058 : $4c
	cp $54                                                  ; $0059 : $fe, $54
	jr nz, br_01_0033                                                  ; $005b : $20, $d6

	ld iy, $0bf1                                                  ; $005d : $fd, $21, $f1, $0b
	ld a, b                                                  ; $0061 : $78
	or c                                                  ; $0062 : $b1
	jr nz, -$05                                                  ; $0063 : $20, $fb

	ret                                                  ; $0065 : $c9


	ld sp, $0600                                                  ; $0066 : $31, $00, $06
	ld a, $ff                                                  ; $0069 : $3e, $ff
	nop                                                  ; $006b : $00
	inc a                                                  ; $006c : $3c
	cp $02                                                  ; $006d : $fe, $02
	jp nc, Jump_01_0000                                                  ; $006f : $d2, $00, $00
	jp Jump_01_06cc                                                  ; $0072 : $c3, $cc, $06


Jump_01_0075:
	ld de, $4080                                                  ; $0075 : $11, $80, $40
	ld hl, $18f7                                                  ; $0078 : $21, $f7, $18
	ld bc, $0027                                                  ; $007b : $01, $27, $00
	ldir                                                  ; $007e : $ed, $b0
	ld hl, $41e5                                                  ; $0080 : $21, $e5, $41
	ld (hl), $3a                                                  ; $0083 : $36, $3a
	inc hl                                                  ; $0085 : $23
	ld (hl), b                                                  ; $0086 : $70
	inc hl                                                  ; $0087 : $23
	ld (hl), $2c                                                  ; $0088 : $36, $2c
	inc hl                                                  ; $008a : $23
	ld ($40a7), hl                                                  ; $008b : $22, $a7, $40
	ld de, $012d                                                  ; $008e : $11, $2d, $01
	ld b, $1c                                                  ; $0091 : $06, $1c
	ld hl, $4152                                                  ; $0093 : $21, $52, $41

br_01_0096:
	ld (hl), $c3                                                  ; $0096 : $36, $c3
	inc hl                                                  ; $0098 : $23
	ld (hl), e                                                  ; $0099 : $73
	inc hl                                                  ; $009a : $23
	ld (hl), d                                                  ; $009b : $72
	inc hl                                                  ; $009c : $23
	djnz br_01_0096                                                  ; $009d : $10, $f7
	ld b, $15                                                  ; $009f : $06, $15

br_01_00a1:
	ld (hl), $c9                                                  ; $00a1 : $36, $c9
	inc hl                                                  ; $00a3 : $23
	inc hl                                                  ; $00a4 : $23
	inc hl                                                  ; $00a5 : $23
	djnz br_01_00a1                                                  ; $00a6 : $10, $f9
	ld hl, $42e8                                                  ; $00a8 : $21, $e8, $42
	ld (hl), b                                                  ; $00ab : $70
	ld sp, $41f8                                                  ; $00ac : $31, $f8, $41
	call Call_01_1b8f                                                  ; $00af : $cd, $8f, $1b
	call Call_01_01c9                                                  ; $00b2 : $cd, $c9, $01

br_01_00b5:
	ld hl, $4800                                                  ; $00b5 : $21, $00, $48
	ld a, (hl)                                                  ; $00b8 : $7e
	cp $c3                                                  ; $00b9 : $fe, $c3
	jp $0259                                                  ; $00bb : $c3, $59, $02


	jr br_01_00c4                                                  ; $00be : $18, $04

	rst $10                                                  ; $00c0 : $d7
	or a                                                  ; $00c1 : $b7
	jr nz, br_01_00d6                                                  ; $00c2 : $20, $12

Jump_01_00c4:
br_01_00c4:
	ld hl, $434c                                                  ; $00c4 : $21, $4c, $43

br_01_00c7:
	inc hl                                                  ; $00c7 : $23
	ld a, h                                                  ; $00c8 : $7c
	or l                                                  ; $00c9 : $b5
	jr z, br_01_00e7                                                  ; $00ca : $28, $1b

	ld a, (hl)                                                  ; $00cc : $7e
	ld b, a                                                  ; $00cd : $47
	cpl                                                  ; $00ce : $2f
	ld (hl), a                                                  ; $00cf : $77
	cp (hl)                                                  ; $00d0 : $be
	ld (hl), b                                                  ; $00d1 : $70
	jr z, br_01_00c7                                                  ; $00d2 : $28, $f3

	jr br_01_00e7                                                  ; $00d4 : $18, $11

br_01_00d6:
	call Call_01_1e5a                                                  ; $00d6 : $cd, $5a, $1e
	or a                                                  ; $00d9 : $b7
	jp nz, Jump_01_1997                                                  ; $00da : $c2, $97, $19
	ex de, hl                                                  ; $00dd : $eb
	dec hl                                                  ; $00de : $2b
	ld a, $8f                                                  ; $00df : $3e, $8f
	ld b, (hl)                                                  ; $00e1 : $46
	ld (hl), a                                                  ; $00e2 : $77
	cp (hl)                                                  ; $00e3 : $be
	ld (hl), b                                                  ; $00e4 : $70
	jr nz, br_01_00b5                                                  ; $00e5 : $20, $ce

Jump_01_00e7:
br_01_00e7:
	dec hl                                                  ; $00e7 : $2b

Call_01_00e8:
	ld de, $4414                                                  ; $00e8 : $11, $14, $44
	rst $18                                                  ; $00eb : $df
	jp c, Jump_01_197a                                                  ; $00ec : $da, $7a, $19
	ld de, $ffce                                                  ; $00ef : $11, $ce, $ff
	ld ($40b1), hl                                                  ; $00f2 : $22, $b1, $40
	add hl, de                                                  ; $00f5 : $19
	ld ($40a0), hl                                                  ; $00f6 : $22, $a0, $40
	call Call_01_1b4d                                                  ; $00f9 : $cd, $4d, $1b
	ld hl, $010f                                                  ; $00fc : $21, $0f, $01
	call Call_01_28a7                                                  ; $00ff : $cd, $a7, $28
	call Call_01_3484                                                  ; $0102 : $cd, $84, $34
	im 1                                                  ; $0105 : $ed, $56
	ei                                                  ; $0107 : $fb
	jp Jump_01_3936                                                  ; $0108 : $c3, $36, $39


br_01_010b:
	ld a, (hl)                                                  ; $010b : $7e
	inc hl                                                  ; $010c : $23
	cp $0d                                                  ; $010d : $fe, $0d
	nop                                                  ; $010f : $00
	ld c, l                                                  ; $0110 : $4d
	ld b, e                                                  ; $0111 : $43
	jr nz, br_01_0161                                                  ; $0112 : $20, $4d

	ld c, e                                                  ; $0114 : $4b
	jr nz, br_01_0160                                                  ; $0115 : $20, $49

	ld c, c                                                  ; $0117 : $49
	jr nz, br_01_013a                                                  ; $0118 : $20, $20

	jr nz, br_01_013c                                                  ; $011a : $20, $20

	jr nz, br_01_013e                                                  ; $011c : $20, $20

	jr nz, br_01_012d                                                  ; $011e : $20, $0d

	ld b, d                                                  ; $0120 : $42
	ld b, c                                                  ; $0121 : $41
	ld d, e                                                  ; $0122 : $53
	ld c, c                                                  ; $0123 : $49
	ld b, e                                                  ; $0124 : $43
	jr nz, $56                                                  ; $0125 : $20, $56

	ld sp, $302e                                                  ; $0127 : $31, $2e, $30
	dec c                                                  ; $012a : $0d
	dec c                                                  ; $012b : $0d
	nop                                                  ; $012c : $00

br_01_012d:
	ld e, $2c                                                  ; $012d : $1e, $2c
	jp Jump_01_19a2                                                  ; $012f : $c3, $a2, $19


Jump_01_0132:
	rst $10                                                  ; $0132 : $d7
	xor a                                                  ; $0133 : $af
	ld bc, $803e                                                  ; $0134 : $01, $3e, $80
	ld bc, $013e                                                  ; $0137 : $01, $3e, $01

br_01_013a:
	push af                                                  ; $013a : $f5
	rst $08                                                  ; $013b : $cf

br_01_013c:
	jr z, br_01_010b                                                  ; $013c : $28, $cd

br_01_013e:
	inc e                                                  ; $013e : $1c
	dec hl                                                  ; $013f : $2b
	cp $80                                                  ; $0140 : $fe, $80
	jp nc, Jump_01_1e4a                                                  ; $0142 : $d2, $4a, $1e
	push af                                                  ; $0145 : $f5
	rst $08                                                  ; $0146 : $cf
	inc l                                                  ; $0147 : $2c
	call Call_01_2b1c                                                  ; $0148 : $cd, $1c, $2b
	cp $40                                                  ; $014b : $fe, $40
	jp nc, Jump_01_1e4a                                                  ; $014d : $d2, $4a, $1e
	ld e, a                                                  ; $0150 : $5f
	xor a                                                  ; $0151 : $af
	ld d, a                                                  ; $0152 : $57
	ex de, hl                                                  ; $0153 : $eb
	add hl, hl                                                  ; $0154 : $29
	add hl, hl                                                  ; $0155 : $29
	add hl, hl                                                  ; $0156 : $29
	add hl, hl                                                  ; $0157 : $29
	add hl, hl                                                  ; $0158 : $29
	ex de, hl                                                  ; $0159 : $eb
	pop af                                                  ; $015a : $f1
	push af                                                  ; $015b : $f5
	srl a                                                  ; $015c : $cb, $3f
	srl a                                                  ; $015e : $cb, $3f

br_01_0160:
	add a, e                                                  ; $0160 : $83

br_01_0161:
	ld e, a                                                  ; $0161 : $5f
	ld a, d                                                  ; $0162 : $7a
	or $70                                                  ; $0163 : $f6, $70
	ld d, a                                                  ; $0165 : $57
	pop af                                                  ; $0166 : $f1
	and $03                                                  ; $0167 : $e6, $03
	add a, a                                                  ; $0169 : $87
	ld b, a                                                  ; $016a : $47
	pop af                                                  ; $016b : $f1
	or a                                                  ; $016c : $b7
	jp z, Jump_01_38e7                                                  ; $016d : $ca, $e7, $38
	push af                                                  ; $0170 : $f5
	ld c, $3f                                                  ; $0171 : $0e, $3f
	ld a, ($4046)                                                  ; $0173 : $3a, $46, $40
	sla a                                                  ; $0176 : $cb, $27
	sla a                                                  ; $0178 : $cb, $27

br_01_017a:
	rrc a                                                  ; $017a : $cb, $0f
	rrc c                                                  ; $017c : $cb, $09
	djnz br_01_017a                                                  ; $017e : $10, $fa
	jp $3903                                                  ; $0180 : $c3, $03, $39


	ld hl, $4039                                                  ; $0183 : $21, $39, $40
	res 3, (hl)                                                  ; $0186 : $cb, $9e
	ld hl, $0384                                                  ; $0188 : $21, $84, $03
	call Call_01_28a7                                                  ; $018b : $cd, $a7, $28
	jp Jump_01_36cf                                                  ; $018e : $c3, $cf, $36


	pop af                                                  ; $0191 : $f1
	cp $20                                                  ; $0192 : $fe, $20
	jr nz, $14                                                  ; $0194 : $20, $14

br_01_0196:
	ld a, (de)                                                  ; $0196 : $1a
	inc de                                                  ; $0197 : $13
	cp $20                                                  ; $0198 : $fe, $20
	jr z, br_01_0196                                                  ; $019a : $28, $fa

	cp $d7                                                  ; $019c : $fe, $d7
	push hl                                                  ; $019e : $e5
	ld a, ($4099)                                                  ; $019f : $3a, $99, $40
	or a                                                  ; $01a2 : $b7
	jr nz, br_01_01ab                                                  ; $01a3 : $20, $06

	call Call_01_0358                                                  ; $01a5 : $cd, $58, $03
	or a                                                  ; $01a8 : $b7
	jr z, br_01_01bc                                                  ; $01a9 : $28, $11

br_01_01ab:
	push af                                                  ; $01ab : $f5
	xor a                                                  ; $01ac : $af
	ld ($4099), a                                                  ; $01ad : $32, $99, $40
	inc a                                                  ; $01b0 : $3c
	call Call_01_2857                                                  ; $01b1 : $cd, $57, $28
	pop af                                                  ; $01b4 : $f1
	ld hl, ($40d4)                                                  ; $01b5 : $2a, $d4, $40
	ld (hl), a                                                  ; $01b8 : $77
	jp Jump_01_2884                                                  ; $01b9 : $c3, $84, $28


br_01_01bc:
	ld hl, $1928                                                  ; $01bc : $21, $28, $19
	ld ($4121), hl                                                  ; $01bf : $22, $21, $41
	ld a, $03                                                  ; $01c2 : $3e, $03
	ld ($40af), a                                                  ; $01c4 : $32, $af, $40
	pop hl                                                  ; $01c7 : $e1
	ret                                                  ; $01c8 : $c9


Call_01_01c9:
	jp Jump_01_34a9                                                  ; $01c9 : $c3, $a9, $34


	ld a, ($3e03)                                                  ; $01cc : $3a, $03, $3e
	rra                                                  ; $01cf : $1f
	jp Jump_01_033a                                                  ; $01d0 : $c3, $3a, $03


	ld a, r                                                  ; $01d3 : $ed, $5f
	ld ($40ab), a                                                  ; $01d5 : $32, $ab, $40
	ret                                                  ; $01d8 : $c9


	ret p                                                  ; $01d9 : $f0

	ld sp, hl                                                  ; $01da : $f9
	jr nc, br_01_0215                                                  ; $01db : $30, $38

	ld (hl), $34                                                  ; $01dd : $36, $34
	ld ($f101), a                                                  ; $01df : $32, $01, $f1
	jp m, $395e                                                  ; $01e2 : $fa, $5e, $39
	scf                                                  ; $01e5 : $37
	dec (hl)                                                  ; $01e6 : $35
	inc sp                                                  ; $01e7 : $33
	ld sp, $e1f2                                                  ; $01e8 : $31, $f2, $e1
	dec a                                                  ; $01eb : $3d
	ld c, a                                                  ; $01ec : $4f
	ld d, l                                                  ; $01ed : $55
	ld d, h                                                  ; $01ee : $54
	ld b, l                                                  ; $01ef : $45
	ld d, c                                                  ; $01f0 : $51
	di                                                  ; $01f1 : $f3
	jp po, $4b3b                                                  ; $01f2 : $e2, $3b, $4b
	ld c, b                                                  ; $01f5 : $48
	ld b, (hl)                                                  ; $01f6 : $46
	ld d, e                                                  ; $01f7 : $53
	ld b, c                                                  ; $01f8 : $41
	call p, $270d                                                  ; $01f9 : $f4, $0d, $27
	ld c, h                                                  ; $01fc : $4c
	ld c, d                                                  ; $01fd : $4a
	ld b, a                                                  ; $01fe : $47
	ld b, h                                                  ; $01ff : $44
	ld e, d                                                  ; $0200 : $5a
	push af                                                  ; $0201 : $f5
	.db $ed                                                  ; $0202 : $ed
	cpl                                                  ; $0203 : $2f
	inc l                                                  ; $0204 : $2c
	ld c, (hl)                                                  ; $0205 : $4e
	ld d, (hl)                                                  ; $0206 : $56
	ld e, b                                                  ; $0207 : $58
	rst $20                                                  ; $0208 : $e7

br_01_0209:
	or $00                                                  ; $0209 : $f6, $00
	nop                                                  ; $020b : $00
	ld l, $4d                                                  ; $020c : $2e, $4d
	ld b, d                                                  ; $020e : $42
	ld b, e                                                  ; $020f : $43
	jr nz, br_01_0209                                                  ; $0210 : $20, $f7

	ret m                                                  ; $0212 : $f8

	ld d, b                                                  ; $0213 : $50
	ld c, c                                                  ; $0214 : $49

br_01_0215:
	ld e, c                                                  ; $0215 : $59
	ld d, d                                                  ; $0216 : $52
	ld d, a                                                  ; $0217 : $57
	call pe, $f9f0                                                  ; $0218 : $ec, $f0, $f9
	add hl, hl                                                  ; $021b : $29
	ld hl, ($242d)                                                  ; $021c : $2a, $2d, $24
	ld b, b                                                  ; $021f : $40
	ld bc, $faf1                                                  ; $0220 : $01, $f1, $fa
	ld e, (hl)                                                  ; $0223 : $5e
	jr z, br_01_024c                                                  ; $0224 : $28, $26

	dec h                                                  ; $0226 : $25
	inc hl                                                  ; $0227 : $23
	ld hl, $e1f2                                                  ; $0228 : $21, $f2, $e1
	dec hl                                                  ; $022b : $2b
	ld l, a                                                  ; $022c : $6f
	ld (hl), l                                                  ; $022d : $75
	ld (hl), h                                                  ; $022e : $74
	ld h, l                                                  ; $022f : $65
	ld (hl), c                                                  ; $0230 : $71
	di                                                  ; $0231 : $f3
	jp po, $6b3a                                                  ; $0232 : $e2, $3a, $6b
	ld l, b                                                  ; $0235 : $68
	ld h, (hl)                                                  ; $0236 : $66
	ld (hl), e                                                  ; $0237 : $73
	ld h, c                                                  ; $0238 : $61
	call p, $220d                                                  ; $0239 : $f4, $0d, $22
	ld l, h                                                  ; $023c : $6c
	ld l, d                                                  ; $023d : $6a
	ld h, a                                                  ; $023e : $67
	ld h, h                                                  ; $023f : $64
	ld a, d                                                  ; $0240 : $7a
	push af                                                  ; $0241 : $f5
	.db $ed                                                  ; $0242 : $ed
	ccf                                                  ; $0243 : $3f
	inc a                                                  ; $0244 : $3c
	ld l, (hl)                                                  ; $0245 : $6e
	halt                                                  ; $0246 : $76
	ld a, b                                                  ; $0247 : $78
	rst $20                                                  ; $0248 : $e7

br_01_0249:
	or $00                                                  ; $0249 : $f6, $00
	nop                                                  ; $024b : $00

br_01_024c:
	ld a, $6d                                                  ; $024c : $3e, $6d
	ld h, d                                                  ; $024e : $62
	ld h, e                                                  ; $024f : $63
	jr nz, br_01_0249                                                  ; $0250 : $20, $f7

	ret m                                                  ; $0252 : $f8

	ld (hl), b                                                  ; $0253 : $70
	ld l, c                                                  ; $0254 : $69
	ld a, c                                                  ; $0255 : $79
	ld (hl), d                                                  ; $0256 : $72
	ld (hl), a                                                  ; $0257 : $77
	call pe, $c4c2                                                  ; $0258 : $ec, $c2, $c4
	nop                                                  ; $025b : $00
	inc hl                                                  ; $025c : $23
	ld a, (hl)                                                  ; $025d : $7e
	cp $96                                                  ; $025e : $fe, $96
	jp nz, Jump_01_00c4                                                  ; $0260 : $c2, $c4, $00
	ld hl, $4800                                                  ; $0263 : $21, $00, $48
	jp Jump_01_00e7                                                  ; $0266 : $c3, $e7, $00


Jump_01_0269:
	ld bc, $01fd                                                  ; $0269 : $01, $fd, $01
	in a, (c)                                                  ; $026c : $ed, $78
	bit 1, a                                                  ; $026e : $cb, $4f
	jp z, Jump_01_027a                                                  ; $0270 : $ca, $7a, $02
	or a                                                  ; $0273 : $b7
	ld bc, $017f                                                  ; $0274 : $01, $7f, $01
	jp Jump_01_3aed                                                  ; $0277 : $c3, $ed, $3a


Jump_01_027a:
	ld a, $fa                                                  ; $027a : $3e, $fa
	jp Jump_01_3986                                                  ; $027c : $c3, $86, $39


	nop                                                  ; $027f : $00
	nop                                                  ; $0280 : $00
	di                                                  ; $0281 : $f3
	sub b                                                  ; $0282 : $90
	sub (hl)                                                  ; $0283 : $96
	ex (sp), hl                                                  ; $0284 : $e3
	nop                                                  ; $0285 : $00
	.db $dd                                                  ; $0286 : $dd
	jp nc, $f7c6                                                  ; $0287 : $d2, $c6, $f7
	or $db                                                  ; $028a : $f6, $db
	jp po, $d800                                                  ; $028c : $e2, $00, $d8
	rlc b                                                  ; $028f : $cb, $00
	ret m                                                  ; $0291 : $f8

	sbc a, $c1                                                  ; $0292 : $de, $c1
	call po, $d700                                                  ; $0294 : $e4, $00, $d7
	ret                                                  ; $0297 : $c9


	add a, d                                                  ; $0298 : $82
	jp po, $e3e1                                                  ; $0299 : $e2, $e1, $e3
	call po, $e0df                                                  ; $029c : $e4, $df, $e0
	rst $10                                                  ; $029f : $d7
	.db $dd                                                  ; $02a0 : $dd
	exx                                                  ; $02a1 : $d9
	ret c                                                  ; $02a2 : $d8

	rst $30                                                  ; $02a3 : $f7
	push af                                                  ; $02a4 : $f5
	di                                                  ; $02a5 : $f3
	ret m                                                  ; $02a6 : $f8

	rst $30                                                  ; $02a7 : $f7
	ld sp, hl                                                  ; $02a8 : $f9
	sbc a, l                                                  ; $02a9 : $9d
	or $f4                                                  ; $02aa : $f6, $f4
	sbc a, $e5                                                  ; $02ac : $de, $e5
	jp m, $8080                                                  ; $02ae : $fa, $80, $80
	add a, b                                                  ; $02b1 : $80
	cp b                                                  ; $02b2 : $b8
	cp b                                                  ; $02b3 : $b8
	add a, b                                                  ; $02b4 : $80
	cp b                                                  ; $02b5 : $b8
	cp b                                                  ; $02b6 : $b8
	add a, b                                                  ; $02b7 : $80
	add a, a                                                  ; $02b8 : $87
	add a, b                                                  ; $02b9 : $80
	cp a                                                  ; $02ba : $bf
	cp b                                                  ; $02bb : $b8
	add a, a                                                  ; $02bc : $87
	cp b                                                  ; $02bd : $b8
	cp a                                                  ; $02be : $bf
	add a, a                                                  ; $02bf : $87
	add a, b                                                  ; $02c0 : $80
	add a, a                                                  ; $02c1 : $87
	cp b                                                  ; $02c2 : $b8
	cp a                                                  ; $02c3 : $bf
	add a, b                                                  ; $02c4 : $80
	cp a                                                  ; $02c5 : $bf
	cp b                                                  ; $02c6 : $b8
	add a, a                                                  ; $02c7 : $87
	add a, a                                                  ; $02c8 : $87
	add a, a                                                  ; $02c9 : $87
	cp a                                                  ; $02ca : $bf
	cp a                                                  ; $02cb : $bf
	add a, a                                                  ; $02cc : $87
	cp a                                                  ; $02cd : $bf
	cp a                                                  ; $02ce : $bf
	ld (hl), d                                                  ; $02cf : $72
	ld (bc), a                                                  ; $02d0 : $02
	ld c, a                                                  ; $02d1 : $4f
	ld (bc), a                                                  ; $02d2 : $02
	ld l, $02                                                  ; $02d3 : $2e, $02
	ld c, $02                                                  ; $02d5 : $0e, $02
	pop af                                                  ; $02d7 : $f1
	ld bc, $01d5                                                  ; $02d8 : $01, $d5, $01
	or a                                                  ; $02db : $b7
	ld bc, $019e                                                  ; $02dc : $01, $9e, $01
	add a, (hl)                                                  ; $02df : $86
	ld bc, $0170                                                  ; $02e0 : $01, $70, $01
	ld e, e                                                  ; $02e3 : $5b
	ld bc, $0148                                                  ; $02e4 : $01, $48, $01
	dec (hl)                                                  ; $02e7 : $35
	ld bc, $0123                                                  ; $02e8 : $01, $23, $01
	inc de                                                  ; $02eb : $13
	ld bc, $0103                                                  ; $02ec : $01, $03, $01
	call p, $e600                                                  ; $02ef : $f4, $00, $e6
	nop                                                  ; $02f2 : $00
	exx                                                  ; $02f3 : $d9
	nop                                                  ; $02f4 : $00
	call $c100                                                  ; $02f5 : $cd, $00, $c1
	nop                                                  ; $02f8 : $00
	or (hl)                                                  ; $02f9 : $b6
	nop                                                  ; $02fa : $00
	xor e                                                  ; $02fb : $ab
	nop                                                  ; $02fc : $00
	and c                                                  ; $02fd : $a1
	nop                                                  ; $02fe : $00
	sbc a, b                                                  ; $02ff : $98
	nop                                                  ; $0300 : $00
	adc a, a                                                  ; $0301 : $8f
	nop                                                  ; $0302 : $00
	add a, a                                                  ; $0303 : $87
	nop                                                  ; $0304 : $00
	ld a, a                                                  ; $0305 : $7f
	nop                                                  ; $0306 : $00
	ld a, b                                                  ; $0307 : $78
	nop                                                  ; $0308 : $00
	ld (hl), b                                                  ; $0309 : $70
	nop                                                  ; $030a : $00
	ld l, d                                                  ; $030b : $6a
	nop                                                  ; $030c : $00

Call_01_030d:
	ret                                                  ; $030d : $c9


	ld a, ($403c)                                                  ; $030e : $3a, $3c, $40
	ld hl, ($4020)                                                  ; $0311 : $2a, $20, $40
	nop                                                  ; $0314 : $00
	ld a, b                                                  ; $0315 : $78
	ret                                                  ; $0316 : $c9


Call_01_0317:
	ld bc, $0020                                                  ; $0317 : $01, $20, $00
	or a                                                  ; $031a : $b7
	sbc hl, bc                                                  ; $031b : $ed, $42
	ld ($4020), hl                                                  ; $031d : $22, $20, $40
	ret                                                  ; $0320 : $c9


	ld bc, $0302                                                  ; $0321 : $01, $02, $03
	inc b                                                  ; $0324 : $04
	ld b, $08                                                  ; $0325 : $06, $08
	inc c                                                  ; $0327 : $0c
	djnz br_01_0342                                                  ; $0328 : $10, $18

Call_01_032a:
	push bc                                                  ; $032a : $c5
	ld c, a                                                  ; $032b : $4f
	call $41c1                                                  ; $032c : $cd, $c1, $41
	ld a, ($409c)                                                  ; $032f : $3a, $9c, $40
	or a                                                  ; $0332 : $b7
	ld a, c                                                  ; $0333 : $79
	pop bc                                                  ; $0334 : $c1
	jp m, Jump_01_3b54                                                  ; $0335 : $fa, $54, $3b
	jr nz, br_01_039c                                                  ; $0338 : $20, $62

Call_01_033a:
Jump_01_033a:
	push de                                                  ; $033a : $d5
	push af                                                  ; $033b : $f5
	push bc                                                  ; $033c : $c5
	push hl                                                  ; $033d : $e5
	call Call_01_308b                                                  ; $033e : $cd, $8b, $30
	pop hl                                                  ; $0341 : $e1

br_01_0342:
	pop bc                                                  ; $0342 : $c1
	nop                                                  ; $0343 : $00
	nop                                                  ; $0344 : $00
	pop af                                                  ; $0345 : $f1
	pop de                                                  ; $0346 : $d1
	ret                                                  ; $0347 : $c9


	ld a, ($403d)                                                  ; $0348 : $3a, $3d, $40
	and $08                                                  ; $034b : $e6, $08
	ld a, ($7820)                                                  ; $034d : $3a, $20, $78
	jr z, br_01_0355                                                  ; $0350 : $28, $03

	rrca                                                  ; $0352 : $0f
	and $1f                                                  ; $0353 : $e6, $1f

br_01_0355:
	and $1f                                                  ; $0355 : $e6, $1f
	ret                                                  ; $0357 : $c9


Call_01_0358:
	call $41c4                                                  ; $0358 : $cd, $c4, $41
	push de                                                  ; $035b : $d5
	call Call_01_002b                                                  ; $035c : $cd, $2b, $00
	pop de                                                  ; $035f : $d1
	ret                                                  ; $0360 : $c9


	ld a, (bc)                                                  ; $0361 : $0a
	dec bc                                                  ; $0362 : $0b
	inc c                                                  ; $0363 : $0c
	inc c                                                  ; $0364 : $0c
	dec c                                                  ; $0365 : $0d
	ld c, $0f                                                  ; $0366 : $0e, $0f
	rrca                                                  ; $0368 : $0f
	djnz $11                                                  ; $0369 : $10, $11
	ld (de), a                                                  ; $036b : $12
	inc de                                                  ; $036c : $13
	dec d                                                  ; $036d : $15
	ld d, $17                                                  ; $036e : $16, $17
	add hl, de                                                  ; $0370 : $19
	ld a, (de)                                                  ; $0371 : $1a
	inc e                                                  ; $0372 : $1c
	dec e                                                  ; $0373 : $1d
	rra                                                  ; $0374 : $1f
	ld hl, $2523                                                  ; $0375 : $21, $23, $25
	daa                                                  ; $0378 : $27
	add hl, hl                                                  ; $0379 : $29
	inc l                                                  ; $037a : $2c
	ld l, $31                                                  ; $037b : $2e, $31
	inc (hl)                                                  ; $037d : $34
	dec (hl)                                                  ; $037e : $35
	ld a, ($4b4f)                                                  ; $037f : $3a, $4f, $4b
	dec c                                                  ; $0382 : $0d
	nop                                                  ; $0383 : $00
	ld b, l                                                  ; $0384 : $45
	ld d, d                                                  ; $0385 : $52
	ld d, d                                                  ; $0386 : $52
	ld c, a                                                  ; $0387 : $4f
	ld d, d                                                  ; $0388 : $52
	dec c                                                  ; $0389 : $0d
	nop                                                  ; $038a : $00

Call_01_038b:
	xor a                                                  ; $038b : $af
	ld ($409c), a                                                  ; $038c : $32, $9c, $40
	ld a, ($409b)                                                  ; $038f : $3a, $9b, $40
	or a                                                  ; $0392 : $b7
	ret z                                                  ; $0393 : $c8

	ld a, $0d                                                  ; $0394 : $3e, $0d
	push de                                                  ; $0396 : $d5
	call Call_01_039c                                                  ; $0397 : $cd, $9c, $03
	pop de                                                  ; $039a : $d1
	ret                                                  ; $039b : $c9


Call_01_039c:
br_01_039c:
	push af                                                  ; $039c : $f5
	push de                                                  ; $039d : $d5
	push bc                                                  ; $039e : $c5
	ld c, a                                                  ; $039f : $4f
	ld e, $00                                                  ; $03a0 : $1e, $00
	cp $0c                                                  ; $03a2 : $fe, $0c
	jr z, br_01_03b6                                                  ; $03a4 : $28, $10

	cp $0a                                                  ; $03a6 : $fe, $0a
	jr nz, br_01_03ad                                                  ; $03a8 : $20, $03

	ld a, $0d                                                  ; $03aa : $3e, $0d
	ld c, a                                                  ; $03ac : $4f

br_01_03ad:
	cp $0d                                                  ; $03ad : $fe, $0d
	jr z, br_01_03b6                                                  ; $03af : $28, $05

	ld a, ($409b)                                                  ; $03b1 : $3a, $9b, $40
	inc a                                                  ; $03b4 : $3c
	ld e, a                                                  ; $03b5 : $5f

br_01_03b6:
	ld a, e                                                  ; $03b6 : $7b
	ld ($409b), a                                                  ; $03b7 : $32, $9b, $40
	ld a, c                                                  ; $03ba : $79
	call Call_01_003b                                                  ; $03bb : $cd, $3b, $00
	pop bc                                                  ; $03be : $c1
	pop de                                                  ; $03bf : $d1
	pop af                                                  ; $03c0 : $f1
	ret                                                  ; $03c1 : $c9


Jump_01_03c2:
	push hl                                                  ; $03c2 : $e5
	push ix                                                  ; $03c3 : $dd, $e5
	push de                                                  ; $03c5 : $d5
	pop ix                                                  ; $03c6 : $dd, $e1
	push de                                                  ; $03c8 : $d5
	ld hl, $03dd                                                  ; $03c9 : $21, $dd, $03
	push hl                                                  ; $03cc : $e5
	ld c, a                                                  ; $03cd : $4f
	ld a, (de)                                                  ; $03ce : $1a
	and b                                                  ; $03cf : $a0
	cp b                                                  ; $03d0 : $b8
	jp nz, $4033                                                  ; $03d1 : $c2, $33, $40
	cp $02                                                  ; $03d4 : $fe, $02
	ld l, (ix+$01)                                                  ; $03d6 : $dd, $6e, $01
	ld h, (ix+$02)                                                  ; $03d9 : $dd, $66, $02
	jp (hl)                                                  ; $03dc : $e9


	pop de                                                  ; $03dd : $d1
	pop ix                                                  ; $03de : $dd, $e1
	pop hl                                                  ; $03e0 : $e1
	pop bc                                                  ; $03e1 : $c1
	ret                                                  ; $03e2 : $c9


Call_01_03e3:
Jump_01_03e3:
	ld hl, $4039                                                  ; $03e3 : $21, $39, $40
	set 5, (hl)                                                  ; $03e6 : $cb, $ee
	ld hl, ($4020)                                                  ; $03e8 : $2a, $20, $40
	call Call_01_0053                                                  ; $03eb : $cd, $53, $00
	ld a, h                                                  ; $03ee : $7c
	cp $71                                                  ; $03ef : $fe, $71
	jr nz, br_01_0403                                                  ; $03f1 : $20, $10

	ld a, l                                                  ; $03f3 : $7d
	cp $e0                                                  ; $03f4 : $fe, $e0
	jr nz, br_01_0403                                                  ; $03f6 : $20, $0b

	ld a, ($42d7)                                                  ; $03f8 : $3a, $d7, $42
	or a                                                  ; $03fb : $b7
	jr nz, br_01_0403                                                  ; $03fc : $20, $05

	ld a, $0d                                                  ; $03fe : $3e, $0d
	call Call_01_308b                                                  ; $0400 : $cd, $8b, $30

br_01_0403:
	ld b, c                                                  ; $0403 : $41
	push bc                                                  ; $0404 : $c5
	ld hl, $4039                                                  ; $0405 : $21, $39, $40
	res 0, (hl)                                                  ; $0408 : $cb, $86
	res 2, (hl)                                                  ; $040a : $cb, $96

br_01_040c:
	bit 0, (hl)                                                  ; $040c : $cb, $46
	jr z, br_01_040c                                                  ; $040e : $28, $fc

	jp Jump_01_050d                                                  ; $0410 : $c3, $0d, $05


Jump_01_0413:
	ld b, $00                                                  ; $0413 : $06, $00
	add hl, bc                                                  ; $0415 : $09
	ld a, b                                                  ; $0416 : $78
	or a                                                  ; $0417 : $b7
	jp z, Jump_01_3e29                                                  ; $0418 : $ca, $29, $3e
	pop af                                                  ; $041b : $f1
	ret                                                  ; $041c : $c9


	ld b, d                                                  ; $041d : $42
	ld ($4020), hl                                                  ; $041e : $22, $20, $40
	ld de, $41e8                                                  ; $0421 : $11, $e8, $41
	pop bc                                                  ; $0424 : $c1
	ld hl, $4039                                                  ; $0425 : $21, $39, $40
	bit 4, (hl)                                                  ; $0428 : $cb, $66
	ld hl, ($4237)                                                  ; $042a : $2a, $37, $42
	jr z, br_01_0471                                                  ; $042d : $28, $42

	push bc                                                  ; $042f : $c5
	push hl                                                  ; $0430 : $e5
	call Call_01_33a8                                                  ; $0431 : $cd, $a8, $33
	pop hl                                                  ; $0434 : $e1
	pop bc                                                  ; $0435 : $c1
	or a                                                  ; $0436 : $b7
	jr nz, br_01_0441                                                  ; $0437 : $20, $08

	ld a, l                                                  ; $0439 : $7d
	sub $20                                                  ; $043a : $d6, $20
	ld l, a                                                  ; $043c : $6f
	ld a, h                                                  ; $043d : $7c
	sbc a, $00                                                  ; $043e : $de, $00
	ld h, a                                                  ; $0440 : $67

br_01_0441:
	ld c, b                                                  ; $0441 : $48

br_01_0442:
	ld a, (de)                                                  ; $0442 : $1a
	cp (hl)                                                  ; $0443 : $be
	jr nz, br_01_044d                                                  ; $0444 : $20, $07

	inc hl                                                  ; $0446 : $23
	inc de                                                  ; $0447 : $13
	djnz br_01_0442                                                  ; $0448 : $10, $f8
	push bc                                                  ; $044a : $c5
	jr br_01_0451                                                  ; $044b : $18, $04

br_01_044d:
	ld bc, $0000                                                  ; $044d : $01, $00, $00
	push bc                                                  ; $0450 : $c5

br_01_0451:
	push hl                                                  ; $0451 : $e5
	call Call_01_33a8                                                  ; $0452 : $cd, $a8, $33
	pop hl                                                  ; $0455 : $e1
	pop bc                                                  ; $0456 : $c1
	push bc                                                  ; $0457 : $c5
	cp $80                                                  ; $0458 : $fe, $80
	jr z, br_01_0466                                                  ; $045a : $28, $0a

	ld a, $40                                                  ; $045c : $3e, $40
	sub c                                                  ; $045e : $91
	ld b, a                                                  ; $045f : $47
	pop de                                                  ; $0460 : $d1
	ld e, $00                                                  ; $0461 : $1e, $00
	push de                                                  ; $0463 : $d5
	jr br_01_046b                                                  ; $0464 : $18, $05

br_01_0466:
	ld b, $20                                                  ; $0466 : $06, $20
	ld hl, ($4237)                                                  ; $0468 : $2a, $37, $42

br_01_046b:
	ld de, $41e8                                                  ; $046b : $11, $e8, $41
	ld a, (hl)                                                  ; $046e : $7e
	jr br_01_04c3                                                  ; $046f : $18, $52

br_01_0471:
	ld bc, $0000                                                  ; $0471 : $01, $00, $00
	push bc                                                  ; $0474 : $c5
	push hl                                                  ; $0475 : $e5
	call Call_01_33a8                                                  ; $0476 : $cd, $a8, $33
	pop hl                                                  ; $0479 : $e1
	cp $80                                                  ; $047a : $fe, $80
	jr z, br_01_048c                                                  ; $047c : $28, $0e

	cp $81                                                  ; $047e : $fe, $81
	jr z, br_01_0488                                                  ; $0480 : $28, $06

	ld bc, $0020                                                  ; $0482 : $01, $20, $00
	or a                                                  ; $0485 : $b7
	sbc hl, bc                                                  ; $0486 : $ed, $42

br_01_0488:
	ld b, $40                                                  ; $0488 : $06, $40
	jr br_01_048e                                                  ; $048a : $18, $02

br_01_048c:
	ld b, $20                                                  ; $048c : $06, $20

br_01_048e:
	ld a, (hl)                                                  ; $048e : $7e
	cp $40                                                  ; $048f : $fe, $40
	jp c, Jump_01_04b9                                                  ; $0491 : $da, $b9, $04
	pop bc                                                  ; $0494 : $c1
	ld de, $049d                                                  ; $0495 : $11, $9d, $04
	push de                                                  ; $0498 : $d5
	push bc                                                  ; $0499 : $c5
	jp Jump_01_050d                                                  ; $049a : $c3, $0d, $05


	ret c                                                  ; $049d : $d8

	ld hl, $3e1a                                                  ; $049e : $21, $1a, $3e
	call Call_01_28a7                                                  ; $04a1 : $cd, $a7, $28
	ld a, ($40e1)                                                  ; $04a4 : $3a, $e1, $40
	or a                                                  ; $04a7 : $b7
	jp z, Jump_01_03e3                                                  ; $04a8 : $ca, $e3, $03
	ld hl, ($40e2)                                                  ; $04ab : $2a, $e2, $40
	call Call_01_0faf                                                  ; $04ae : $cd, $af, $0f
	ld a, $20                                                  ; $04b1 : $3e, $20
	call Call_01_3157                                                  ; $04b3 : $cd, $57, $31
	jp Jump_01_03e3                                                  ; $04b6 : $c3, $e3, $03


Jump_01_04b9:
	cp $22                                                  ; $04b9 : $fe, $22
	jr nz, br_01_04ee                                                  ; $04bb : $20, $31

	ld (de), a                                                  ; $04bd : $12
	inc hl                                                  ; $04be : $23
	inc de                                                  ; $04bf : $13
	dec b                                                  ; $04c0 : $05
	jr z, br_01_04f9                                                  ; $04c1 : $28, $36

br_01_04c3:
	ld a, (hl)                                                  ; $04c3 : $7e
	cp $40                                                  ; $04c4 : $fe, $40
	jp c, Jump_01_04d4                                                  ; $04c6 : $da, $d4, $04
	cp $80                                                  ; $04c9 : $fe, $80
	jp c, Jump_01_04d0                                                  ; $04cb : $da, $d0, $04
	and $8f                                                  ; $04ce : $e6, $8f

Jump_01_04d0:
	or $80                                                  ; $04d0 : $f6, $80
	jr br_01_04e7                                                  ; $04d2 : $18, $13

Jump_01_04d4:
	cp $22                                                  ; $04d4 : $fe, $22
	jr nz, br_01_04e1                                                  ; $04d6 : $20, $09

	push hl                                                  ; $04d8 : $e5
	ld hl, $4039                                                  ; $04d9 : $21, $39, $40
	bit 4, (hl)                                                  ; $04dc : $cb, $66
	pop hl                                                  ; $04de : $e1
	jr z, br_01_04ee                                                  ; $04df : $28, $0d

br_01_04e1:
	bit 5, a                                                  ; $04e1 : $cb, $6f
	jr nz, br_01_04e7                                                  ; $04e3 : $20, $02

	or $40                                                  ; $04e5 : $f6, $40

br_01_04e7:
	ld (de), a                                                  ; $04e7 : $12
	inc hl                                                  ; $04e8 : $23
	inc de                                                  ; $04e9 : $13
	djnz br_01_04c3                                                  ; $04ea : $10, $d7
	jr br_01_04f9                                                  ; $04ec : $18, $0b

br_01_04ee:
	bit 5, a                                                  ; $04ee : $cb, $6f
	jr nz, br_01_04f4                                                  ; $04f0 : $20, $02

	or $40                                                  ; $04f2 : $f6, $40

br_01_04f4:
	ld (de), a                                                  ; $04f4 : $12
	inc hl                                                  ; $04f5 : $23
	inc de                                                  ; $04f6 : $13
	djnz br_01_048e                                                  ; $04f7 : $10, $95

br_01_04f9:
	dec de                                                  ; $04f9 : $1b
	ld a, d                                                  ; $04fa : $7a
	cp $41                                                  ; $04fb : $fe, $41
	jr nz, br_01_0505                                                  ; $04fd : $20, $06

	ld a, e                                                  ; $04ff : $7b
	cp $e8                                                  ; $0500 : $fe, $e8
	jp c, Jump_01_050a                                                  ; $0502 : $da, $0a, $05

br_01_0505:
	ld a, (de)                                                  ; $0505 : $1a
	cp $20                                                  ; $0506 : $fe, $20
	jr z, br_01_04f9                                                  ; $0508 : $28, $ef

Jump_01_050a:
	inc de                                                  ; $050a : $13
	xor a                                                  ; $050b : $af
	ld (de), a                                                  ; $050c : $12

Jump_01_050d:
	call Call_01_33a8                                                  ; $050d : $cd, $a8, $33
	ld hl, ($4237)                                                  ; $0510 : $2a, $37, $42
	cp $81                                                  ; $0513 : $fe, $81
	call Call_01_0053                                                  ; $0515 : $cd, $53, $00
	jr nz, br_01_051e                                                  ; $0518 : $20, $04

	xor a                                                  ; $051a : $af
	call Call_01_308b                                                  ; $051b : $cd, $8b, $30

br_01_051e:
	xor a                                                  ; $051e : $af
	call Call_01_308b                                                  ; $051f : $cd, $8b, $30
	ld a, ($4038)                                                  ; $0522 : $3a, $38, $40
	and $fd                                                  ; $0525 : $e6, $fd
	ld ($4038), a                                                  ; $0527 : $32, $38, $40
	ld hl, $4039                                                  ; $052a : $21, $39, $40
	bit 2, (hl)                                                  ; $052d : $cb, $56
	jr z, br_01_0536                                                  ; $052f : $28, $05

	ld a, $01                                                  ; $0531 : $3e, $01
	scf                                                  ; $0533 : $37
	jr br_01_0537                                                  ; $0534 : $18, $01

br_01_0536:
	xor a                                                  ; $0536 : $af

br_01_0537:
	ld hl, $4039                                                  ; $0537 : $21, $39, $40
	res 4, (hl)                                                  ; $053a : $cb, $a6
	ld hl, $41e8                                                  ; $053c : $21, $e8, $41
	pop bc                                                  ; $053f : $c1
	push af                                                  ; $0540 : $f5
	jp Jump_01_0413                                                  ; $0541 : $c3, $13, $04


	ld a, $3a                                                  ; $0544 : $3e, $3a
	xor a                                                  ; $0546 : $af
	ld b, d                                                  ; $0547 : $42
	or a                                                  ; $0548 : $b7
	jr nz, -$06                                                  ; $0549 : $20, $fa

	ld b, $40                                                  ; $054b : $06, $40
	ld hl, $41e8                                                  ; $054d : $21, $e8, $41
	ld a, $20                                                  ; $0550 : $3e, $20

br_01_0552:
	ld (hl), a                                                  ; $0552 : $77
	inc hl                                                  ; $0553 : $23
	djnz br_01_0552                                                  ; $0554 : $10, $fc
	xor a                                                  ; $0556 : $af
	ld (hl), a                                                  ; $0557 : $77
	call Call_01_33a8                                                  ; $0558 : $cd, $a8, $33
	or a                                                  ; $055b : $b7
	ld a, ($40a6)                                                  ; $055c : $3a, $a6, $40
	jr nz, br_01_0563                                                  ; $055f : $20, $02

	add a, $20                                                  ; $0561 : $c6, $20

br_01_0563:
	ld c, a                                                  ; $0563 : $4f
	xor a                                                  ; $0564 : $af
	ld b, a                                                  ; $0565 : $47
	ld hl, ($4237)                                                  ; $0566 : $2a, $37, $42
	nop                                                  ; $0569 : $00
	nop                                                  ; $056a : $00
	ld de, $41e8                                                  ; $056b : $11, $e8, $41
	push bc                                                  ; $056e : $c5
	ldir                                                  ; $056f : $ed, $b0
	pop bc                                                  ; $0571 : $c1
	ld hl, $4039                                                  ; $0572 : $21, $39, $40
	set 4, (hl)                                                  ; $0575 : $cb, $e6
	call Call_01_03e3                                                  ; $0577 : $cd, $e3, $03
	ret                                                  ; $057a : $c9


	ld d, d                                                  ; $057b : $52
	ld d, l                                                  ; $057c : $55
	ld c, (hl)                                                  ; $057d : $4e
	nop                                                  ; $057e : $00
	add hl, de                                                  ; $057f : $19
	jp z, $125a                                                  ; $0580 : $ca, $5a, $12
	call Call_01_1f49                                                  ; $0583 : $cd, $49, $1f
	jr c, $18                                                  ; $0586 : $38, $18

	rst $28                                                  ; $0588 : $ef
	ld a, ($0438)                                                  ; $0589 : $3a, $38, $04
	.db $dd                                                  ; $058c : $dd
	ld a, c                                                  ; $058d : $79
	or a                                                  ; $058e : $b7
	jr z, br_01_05c4                                                  ; $058f : $28, $33

	cp $0b                                                  ; $0591 : $fe, $0b
	jr z, br_01_059f                                                  ; $0593 : $28, $0a

	cp $0c                                                  ; $0595 : $fe, $0c
	jr nz, br_01_05ad                                                  ; $0597 : $20, $14

	xor a                                                  ; $0599 : $af
	or (ix+$03)                                                  ; $059a : $dd, $b6, $03
	jr z, br_01_05ad                                                  ; $059d : $28, $0e

br_01_059f:
	ld a, (ix+$03)                                                  ; $059f : $dd, $7e, $03
	sub (ix+$04)                                                  ; $05a2 : $dd, $96, $04
	ld b, a                                                  ; $05a5 : $47

br_01_05a6:
	call Call_01_3ae2                                                  ; $05a6 : $cd, $e2, $3a
	djnz br_01_05a6                                                  ; $05a9 : $10, $fb
	jr br_01_05bf                                                  ; $05ab : $18, $12

br_01_05ad:
	call Call_01_3ab6                                                  ; $05ad : $cd, $b6, $3a
	ld a, c                                                  ; $05b0 : $79
	cp $0d                                                  ; $05b1 : $fe, $0d
	ret nz                                                  ; $05b3 : $c0

	inc (ix+$04)                                                  ; $05b4 : $dd, $34, $04
	ld a, (ix+$04)                                                  ; $05b7 : $dd, $7e, $04
	cp (ix+$03)                                                  ; $05ba : $dd, $be, $03
	ld a, c                                                  ; $05bd : $79
	ret nz                                                  ; $05be : $c0

br_01_05bf:
	ld (ix+$04), $00                                                  ; $05bf : $dd, $36, $04, $00
	ret                                                  ; $05c3 : $c9


br_01_05c4:
	in a, ($00)                                                  ; $05c4 : $db, $00
	and $01                                                  ; $05c6 : $e6, $01
	ret                                                  ; $05c8 : $c9


	push bc                                                  ; $05c9 : $c5
	push hl                                                  ; $05ca : $e5
	ld b, $04                                                  ; $05cb : $06, $04
	ld hl, $42d2                                                  ; $05cd : $21, $d2, $42

br_01_05d0:
	ld (hl), a                                                  ; $05d0 : $77
	inc hl                                                  ; $05d1 : $23
	djnz br_01_05d0                                                  ; $05d2 : $10, $fc
	pop hl                                                  ; $05d4 : $e1
	pop bc                                                  ; $05d5 : $c1
	ret                                                  ; $05d6 : $c9


Jump_01_05d7:
	ld hl, $4038                                                  ; $05d7 : $21, $38, $40
	bit 2, (hl)                                                  ; $05da : $cb, $56
	jr z, br_01_05f3                                                  ; $05dc : $28, $15

	ld d, a                                                  ; $05de : $57
	ld a, ($403a)                                                  ; $05df : $3a, $3a, $40
	or a                                                  ; $05e2 : $b7
	jr z, br_01_05f4                                                  ; $05e3 : $28, $0f

	inc a                                                  ; $05e5 : $3c
	ld ($403a), a                                                  ; $05e6 : $32, $3a, $40
	cp $2a                                                  ; $05e9 : $fe, $2a
	jr z, br_01_05ef                                                  ; $05eb : $28, $02

	xor a                                                  ; $05ed : $af
	ret                                                  ; $05ee : $c9


br_01_05ef:
	res 2, (hl)                                                  ; $05ef : $cb, $96
	xor a                                                  ; $05f1 : $af
	ret                                                  ; $05f2 : $c9


br_01_05f3:
	ld d, a                                                  ; $05f3 : $57

br_01_05f4:
	ld hl, $4038                                                  ; $05f4 : $21, $38, $40
	ld a, (hl)                                                  ; $05f7 : $7e
	and $18                                                  ; $05f8 : $e6, $18
	jr nz, br_01_0607                                                  ; $05fa : $20, $0b

	set 3, (hl)                                                  ; $05fc : $cb, $de
	xor a                                                  ; $05fe : $af
	ld ($4037), a                                                  ; $05ff : $32, $37, $40
	ld a, d                                                  ; $0602 : $7a
	ld ($4036), a                                                  ; $0603 : $32, $36, $40
	ret                                                  ; $0606 : $c9


br_01_0607:
	bit 4, (hl)                                                  ; $0607 : $cb, $66
	jr nz, br_01_0635                                                  ; $0609 : $20, $2a

	ld a, ($4036)                                                  ; $060b : $3a, $36, $40
	cp d                                                  ; $060e : $ba
	jr nz, br_01_0632                                                  ; $060f : $20, $21

	jp Jump_01_2fd7                                                  ; $0611 : $c3, $d7, $2f


	ld b, b                                                  ; $0614 : $40
	ld hl, ($4044)                                                  ; $0615 : $2a, $44, $40
	ld a, e                                                  ; $0618 : $7b
	call Call_01_2f35                                                  ; $0619 : $cd, $35, $2f
	cp d                                                  ; $061c : $ba
	jp z, Jump_01_2fd7                                                  ; $061d : $ca, $d7, $2f
	cp $00                                                  ; $0620 : $fe, $00
	jp z, Jump_01_2fd7                                                  ; $0622 : $ca, $d7, $2f

br_01_0625:
	ld hl, $4038                                                  ; $0625 : $21, $38, $40
	set 3, (hl)                                                  ; $0628 : $cb, $de
	set 4, (hl)                                                  ; $062a : $cb, $e6
	res 2, (hl)                                                  ; $062c : $cb, $96
	ld ($4037), a                                                  ; $062e : $32, $37, $40
	ret                                                  ; $0631 : $c9


br_01_0632:
	ld a, d                                                  ; $0632 : $7a
	jr br_01_0625                                                  ; $0633 : $18, $f0

br_01_0635:
	ld a, ($4036)                                                  ; $0635 : $3a, $36, $40
	cp d                                                  ; $0638 : $ba
	jr z, br_01_0643                                                  ; $0639 : $28, $08

	ld a, ($4037)                                                  ; $063b : $3a, $37, $40
	cp d                                                  ; $063e : $ba
	jr z, br_01_0643                                                  ; $063f : $28, $02

	xor a                                                  ; $0641 : $af
	ret                                                  ; $0642 : $c9


br_01_0643:
	jp Jump_01_2fd7                                                  ; $0643 : $c3, $d7, $2f


	ld b, b                                                  ; $0646 : $40
	ld hl, ($4044)                                                  ; $0647 : $2a, $44, $40
	ld a, e                                                  ; $064a : $7b
	call Call_01_2f35                                                  ; $064b : $cd, $35, $2f
	cp d                                                  ; $064e : $ba
	jr z, br_01_0656                                                  ; $064f : $28, $05

	cp $00                                                  ; $0651 : $fe, $00
	jp nz, Jump_01_2fd7                                                  ; $0653 : $c2, $d7, $2f

br_01_0656:
	ld hl, $4038                                                  ; $0656 : $21, $38, $40
	set 3, (hl)                                                  ; $0659 : $cb, $de
	res 4, (hl)                                                  ; $065b : $cb, $a6
	ld a, ($4036)                                                  ; $065d : $3a, $36, $40
	cp d                                                  ; $0660 : $ba
	jr nz, br_01_0668                                                  ; $0661 : $20, $05

br_01_0663:
	xor a                                                  ; $0663 : $af
	ld ($4037), a                                                  ; $0664 : $32, $37, $40
	ret                                                  ; $0667 : $c9


br_01_0668:
	ld a, ($4037)                                                  ; $0668 : $3a, $37, $40
	ld ($4036), a                                                  ; $066b : $32, $36, $40
	jr br_01_0663                                                  ; $066e : $18, $f3

	set 2, (ix+$09)                                                  ; $0670 : $dd, $cb, $09, $d6

Jump_01_0674:
	nop                                                  ; $0674 : $00
	nop                                                  ; $0675 : $00

br_01_0676:
	ld hl, $06d2                                                  ; $0676 : $21, $d2, $06
	ld de, $4000                                                  ; $0679 : $11, $00, $40
	ld bc, $0036                                                  ; $067c : $01, $36, $00
	ldir                                                  ; $067f : $ed, $b0
	dec a                                                  ; $0681 : $3d
	dec a                                                  ; $0682 : $3d
	jr nz, br_01_0676                                                  ; $0683 : $20, $f1

br_01_0685:
	ld b, $27                                                  ; $0685 : $06, $27

br_01_0687:
	ld (de), a                                                  ; $0687 : $12
	inc de                                                  ; $0688 : $13
	djnz br_01_0687                                                  ; $0689 : $10, $fc
	jp Jump_01_0075                                                  ; $068b : $c3, $75, $00


Jump_01_068e:
	call Call_01_35a7                                                  ; $068e : $cd, $a7, $35
	ld a, (hl)                                                  ; $0691 : $7e
	ld ($403c), a                                                  ; $0692 : $32, $3c, $40
	ret                                                  ; $0695 : $c9


	ld h, b                                                  ; $0696 : $60
	call Call_01_06a4                                                  ; $0697 : $cd, $a4, $06
	ld hl, $8000                                                  ; $069a : $21, $00, $80
	call Call_01_06a4                                                  ; $069d : $cd, $a4, $06
	ei                                                  ; $06a0 : $fb
	jp Jump_01_1a19                                                  ; $06a1 : $c3, $19, $1a


Call_01_06a4:
	ld a, $aa                                                  ; $06a4 : $3e, $aa
	cp (hl)                                                  ; $06a6 : $be
	inc hl                                                  ; $06a7 : $23
	ret nz                                                  ; $06a8 : $c0

	cpl                                                  ; $06a9 : $2f
	cp (hl)                                                  ; $06aa : $be
	inc hl                                                  ; $06ab : $23
	ret nz                                                  ; $06ac : $c0

	ld a, $e7                                                  ; $06ad : $3e, $e7
	cp (hl)                                                  ; $06af : $be
	inc hl                                                  ; $06b0 : $23
	ret nz                                                  ; $06b1 : $c0

	cpl                                                  ; $06b2 : $2f
	cp (hl)                                                  ; $06b3 : $be
	inc hl                                                  ; $06b4 : $23
	ret nz                                                  ; $06b5 : $c0

	ei                                                  ; $06b6 : $fb
	jp (hl)                                                  ; $06b7 : $e9


	ld c, $02                                                  ; $06b8 : $0e, $02
	call $1a59                                                  ; $06ba : $cd, $59, $1a
	call Call_01_34b8                                                  ; $06bd : $cd, $b8, $34
	call Call_01_18e3                                                  ; $06c0 : $cd, $e3, $18
	jr z, br_01_0685                                                  ; $06c3 : $28, $c0

	rst $28                                                  ; $06c5 : $ef
	inc l                                                  ; $06c6 : $2c
	jr z, $14                                                  ; $06c7 : $28, $14

	call $34f1                                                  ; $06c9 : $cd, $f1, $34

Jump_01_06cc:
	ld bc, $1a18                                                  ; $06cc : $01, $18, $1a
	jp Jump_01_19ae                                                  ; $06cf : $c3, $ae, $19


	jp Jump_01_1c96                                                  ; $06d2 : $c3, $96, $1c


	jp Jump_01_1d78                                                  ; $06d5 : $c3, $78, $1d


	jp Jump_01_1c90                                                  ; $06d8 : $c3, $90, $1c


	jp Jump_01_25d9                                                  ; $06db : $c3, $d9, $25


	ret                                                  ; $06de : $c9


	nop                                                  ; $06df : $00
	nop                                                  ; $06e0 : $00
	ret                                                  ; $06e1 : $c9


	nop                                                  ; $06e2 : $00
	nop                                                  ; $06e3 : $00
	ei                                                  ; $06e4 : $fb
	ret                                                  ; $06e5 : $c9


	nop                                                  ; $06e6 : $00
	ld bc, $2ef4                                                  ; $06e7 : $01, $f4, $2e
	nop                                                  ; $06ea : $00
	nop                                                  ; $06eb : $00
	nop                                                  ; $06ec : $00
	ld c, e                                                  ; $06ed : $4b
	ld c, c                                                  ; $06ee : $49
	nop                                                  ; $06ef : $00
	nop                                                  ; $06f0 : $00
	nop                                                  ; $06f1 : $00
	nop                                                  ; $06f2 : $00
	ld (hl), b                                                  ; $06f3 : $70
	nop                                                  ; $06f4 : $00
	nop                                                  ; $06f5 : $00
	nop                                                  ; $06f6 : $00
	ld b, $8d                                                  ; $06f7 : $06, $8d
	dec b                                                  ; $06f9 : $05
	ld b, e                                                  ; $06fa : $43
	nop                                                  ; $06fb : $00
	nop                                                  ; $06fc : $00
	ld d, b                                                  ; $06fd : $50
	ld d, d                                                  ; $06fe : $52
	jp $5000                                                  ; $06ff : $c3, $00, $50


	rst $00                                                  ; $0702 : $c7
	nop                                                  ; $0703 : $00
	nop                                                  ; $0704 : $00
	ld a, $00                                                  ; $0705 : $3e, $00
	ret                                                  ; $0707 : $c9


Call_01_0708:
	ld hl, $1380                                                  ; $0708 : $21, $80, $13

Call_01_070b:
	call Call_01_09c2                                                  ; $070b : $cd, $c2, $09
	jr br_01_0716                                                  ; $070e : $18, $06

Call_01_0710:
	call Call_01_09c2                                                  ; $0710 : $cd, $c2, $09

Call_01_0713:
	call Call_01_0982                                                  ; $0713 : $cd, $82, $09

Call_01_0716:
Jump_01_0716:
br_01_0716:
	ld a, b                                                  ; $0716 : $78
	or a                                                  ; $0717 : $b7
	ret z                                                  ; $0718 : $c8

	ld a, ($4124)                                                  ; $0719 : $3a, $24, $41
	or a                                                  ; $071c : $b7
	jp z, Jump_01_09b4                                                  ; $071d : $ca, $b4, $09
	sub b                                                  ; $0720 : $90
	jr nc, br_01_072f                                                  ; $0721 : $30, $0c

	cpl                                                  ; $0723 : $2f
	inc a                                                  ; $0724 : $3c
	ex de, hl                                                  ; $0725 : $eb
	call Call_01_09a4                                                  ; $0726 : $cd, $a4, $09
	ex de, hl                                                  ; $0729 : $eb
	call Call_01_09b4                                                  ; $072a : $cd, $b4, $09
	pop bc                                                  ; $072d : $c1
	pop de                                                  ; $072e : $d1

br_01_072f:
	cp $19                                                  ; $072f : $fe, $19
	ret nc                                                  ; $0731 : $d0

	push af                                                  ; $0732 : $f5
	call Call_01_09df                                                  ; $0733 : $cd, $df, $09
	ld h, a                                                  ; $0736 : $67
	pop af                                                  ; $0737 : $f1
	call Call_01_07d7                                                  ; $0738 : $cd, $d7, $07
	or h                                                  ; $073b : $b4
	ld hl, $4121                                                  ; $073c : $21, $21, $41
	jp p, Jump_01_0754                                                  ; $073f : $f2, $54, $07
	call Call_01_07b7                                                  ; $0742 : $cd, $b7, $07
	jp nc, Jump_01_0796                                                  ; $0745 : $d2, $96, $07
	inc hl                                                  ; $0748 : $23
	inc (hl)                                                  ; $0749 : $34
	jp z, Jump_01_07b2                                                  ; $074a : $ca, $b2, $07
	ld l, $01                                                  ; $074d : $2e, $01
	call Call_01_07eb                                                  ; $074f : $cd, $eb, $07
	jr br_01_0796                                                  ; $0752 : $18, $42

Jump_01_0754:
	xor a                                                  ; $0754 : $af
	sub b                                                  ; $0755 : $90
	ld b, a                                                  ; $0756 : $47
	ld a, (hl)                                                  ; $0757 : $7e
	sbc a, e                                                  ; $0758 : $9b
	ld e, a                                                  ; $0759 : $5f
	inc hl                                                  ; $075a : $23
	ld a, (hl)                                                  ; $075b : $7e
	sbc a, d                                                  ; $075c : $9a
	ld d, a                                                  ; $075d : $57
	inc hl                                                  ; $075e : $23
	ld a, (hl)                                                  ; $075f : $7e
	sbc a, c                                                  ; $0760 : $99
	ld c, a                                                  ; $0761 : $4f

Call_01_0762:
Jump_01_0762:
	call c, Call_01_07c3                                                  ; $0762 : $dc, $c3, $07

Jump_01_0765:
	ld l, b                                                  ; $0765 : $68
	ld h, e                                                  ; $0766 : $63
	xor a                                                  ; $0767 : $af

br_01_0768:
	ld b, a                                                  ; $0768 : $47
	ld a, c                                                  ; $0769 : $79
	or a                                                  ; $076a : $b7
	jr nz, br_01_0785                                                  ; $076b : $20, $18

	ld c, d                                                  ; $076d : $4a
	ld d, h                                                  ; $076e : $54
	ld h, l                                                  ; $076f : $65
	ld l, a                                                  ; $0770 : $6f
	ld a, b                                                  ; $0771 : $78
	sub $08                                                  ; $0772 : $d6, $08
	cp $e0                                                  ; $0774 : $fe, $e0
	jr nz, br_01_0768                                                  ; $0776 : $20, $f0

Call_01_0778:
Jump_01_0778:
br_01_0778:
	xor a                                                  ; $0778 : $af

Jump_01_0779:
	ld ($4124), a                                                  ; $0779 : $32, $24, $41
	ret                                                  ; $077c : $c9


Jump_01_077d:
	dec b                                                  ; $077d : $05
	add hl, hl                                                  ; $077e : $29
	ld a, d                                                  ; $077f : $7a
	rla                                                  ; $0780 : $17
	ld d, a                                                  ; $0781 : $57
	ld a, c                                                  ; $0782 : $79
	adc a, a                                                  ; $0783 : $8f
	ld c, a                                                  ; $0784 : $4f

br_01_0785:
	jp p, Jump_01_077d                                                  ; $0785 : $f2, $7d, $07
	ld a, b                                                  ; $0788 : $78
	ld e, h                                                  ; $0789 : $5c
	ld b, l                                                  ; $078a : $45

br_01_078b:
	or a                                                  ; $078b : $b7
	jr z, br_01_0796                                                  ; $078c : $28, $08

	ld hl, $4124                                                  ; $078e : $21, $24, $41
	add a, (hl)                                                  ; $0791 : $86
	ld (hl), a                                                  ; $0792 : $77
	jr nc, br_01_0778                                                  ; $0793 : $30, $e3

	ret z                                                  ; $0795 : $c8

Jump_01_0796:
br_01_0796:
	ld a, b                                                  ; $0796 : $78

Jump_01_0797:
	ld hl, $4124                                                  ; $0797 : $21, $24, $41
	or a                                                  ; $079a : $b7
	call m, Call_01_07a8                                                  ; $079b : $fc, $a8, $07
	ld b, (hl)                                                  ; $079e : $46
	inc hl                                                  ; $079f : $23
	ld a, (hl)                                                  ; $07a0 : $7e
	and $80                                                  ; $07a1 : $e6, $80
	xor c                                                  ; $07a3 : $a9
	ld c, a                                                  ; $07a4 : $4f
	jp Jump_01_09b4                                                  ; $07a5 : $c3, $b4, $09


Call_01_07a8:
	inc e                                                  ; $07a8 : $1c
	ret nz                                                  ; $07a9 : $c0

	inc d                                                  ; $07aa : $14
	ret nz                                                  ; $07ab : $c0

	inc c                                                  ; $07ac : $0c
	ret nz                                                  ; $07ad : $c0

	ld c, $80                                                  ; $07ae : $0e, $80
	inc (hl)                                                  ; $07b0 : $34
	ret nz                                                  ; $07b1 : $c0

Jump_01_07b2:
	ld e, $0a                                                  ; $07b2 : $1e, $0a
	jp Jump_01_19a2                                                  ; $07b4 : $c3, $a2, $19


Call_01_07b7:
	ld a, (hl)                                                  ; $07b7 : $7e
	add a, e                                                  ; $07b8 : $83
	ld e, a                                                  ; $07b9 : $5f
	inc hl                                                  ; $07ba : $23
	ld a, (hl)                                                  ; $07bb : $7e
	adc a, d                                                  ; $07bc : $8a
	ld d, a                                                  ; $07bd : $57
	inc hl                                                  ; $07be : $23
	ld a, (hl)                                                  ; $07bf : $7e
	adc a, c                                                  ; $07c0 : $89
	ld c, a                                                  ; $07c1 : $4f
	ret                                                  ; $07c2 : $c9


Call_01_07c3:
	ld hl, $4125                                                  ; $07c3 : $21, $25, $41
	ld a, (hl)                                                  ; $07c6 : $7e
	cpl                                                  ; $07c7 : $2f
	ld (hl), a                                                  ; $07c8 : $77
	xor a                                                  ; $07c9 : $af
	ld l, a                                                  ; $07ca : $6f
	sub b                                                  ; $07cb : $90
	ld b, a                                                  ; $07cc : $47
	ld a, l                                                  ; $07cd : $7d
	sbc a, e                                                  ; $07ce : $9b
	ld e, a                                                  ; $07cf : $5f
	ld a, l                                                  ; $07d0 : $7d
	sbc a, d                                                  ; $07d1 : $9a
	ld d, a                                                  ; $07d2 : $57
	ld a, l                                                  ; $07d3 : $7d
	sbc a, c                                                  ; $07d4 : $99
	ld c, a                                                  ; $07d5 : $4f
	ret                                                  ; $07d6 : $c9


Call_01_07d7:
	ld b, $00                                                  ; $07d7 : $06, $00

br_01_07d9:
	sub $08                                                  ; $07d9 : $d6, $08
	jr c, br_01_07e4                                                  ; $07db : $38, $07

	ld b, e                                                  ; $07dd : $43
	ld e, d                                                  ; $07de : $5a
	ld d, c                                                  ; $07df : $51
	ld c, $00                                                  ; $07e0 : $0e, $00
	jr br_01_07d9                                                  ; $07e2 : $18, $f5

br_01_07e4:
	add a, $09                                                  ; $07e4 : $c6, $09
	ld l, a                                                  ; $07e6 : $6f

br_01_07e7:
	xor a                                                  ; $07e7 : $af
	dec l                                                  ; $07e8 : $2d
	ret z                                                  ; $07e9 : $c8

	ld a, c                                                  ; $07ea : $79

Call_01_07eb:
	rra                                                  ; $07eb : $1f
	ld c, a                                                  ; $07ec : $4f
	ld a, d                                                  ; $07ed : $7a
	rra                                                  ; $07ee : $1f
	ld d, a                                                  ; $07ef : $57
	ld a, e                                                  ; $07f0 : $7b
	rra                                                  ; $07f1 : $1f
	ld e, a                                                  ; $07f2 : $5f
	ld a, b                                                  ; $07f3 : $78
	rra                                                  ; $07f4 : $1f
	ld b, a                                                  ; $07f5 : $47
	jr br_01_07e7                                                  ; $07f6 : $18, $ef

	nop                                                  ; $07f8 : $00
	nop                                                  ; $07f9 : $00
	nop                                                  ; $07fa : $00
	add a, c                                                  ; $07fb : $81
	inc bc                                                  ; $07fc : $03
	xor d                                                  ; $07fd : $aa
	ld d, (hl)                                                  ; $07fe : $56
	add hl, de                                                  ; $07ff : $19
	add a, b                                                  ; $0800 : $80
	pop af                                                  ; $0801 : $f1
	ld ($8076), hl                                                  ; $0802 : $22, $76, $80
	ld b, l                                                  ; $0805 : $45
	xor d                                                  ; $0806 : $aa
	jr c, br_01_078b                                                  ; $0807 : $38, $82

Call_01_0809:
	call Call_01_0955                                                  ; $0809 : $cd, $55, $09
	or a                                                  ; $080c : $b7
	jp pe, Jump_01_1e4a                                                  ; $080d : $ea, $4a, $1e
	ld hl, $4124                                                  ; $0810 : $21, $24, $41
	ld a, (hl)                                                  ; $0813 : $7e
	ld bc, $8035                                                  ; $0814 : $01, $35, $80
	ld de, $04f3                                                  ; $0817 : $11, $f3, $04
	sub b                                                  ; $081a : $90
	push af                                                  ; $081b : $f5
	ld (hl), b                                                  ; $081c : $70
	push de                                                  ; $081d : $d5
	push bc                                                  ; $081e : $c5
	call Call_01_0716                                                  ; $081f : $cd, $16, $07
	pop bc                                                  ; $0822 : $c1
	pop de                                                  ; $0823 : $d1
	inc b                                                  ; $0824 : $04
	call Call_01_08a2                                                  ; $0825 : $cd, $a2, $08
	ld hl, $07f8                                                  ; $0828 : $21, $f8, $07
	call Call_01_0710                                                  ; $082b : $cd, $10, $07
	ld hl, $07fc                                                  ; $082e : $21, $fc, $07
	call Call_01_149a                                                  ; $0831 : $cd, $9a, $14
	ld bc, $8080                                                  ; $0834 : $01, $80, $80
	ld de, $0000                                                  ; $0837 : $11, $00, $00
	call Call_01_0716                                                  ; $083a : $cd, $16, $07
	pop af                                                  ; $083d : $f1
	call Call_01_0f89                                                  ; $083e : $cd, $89, $0f

Call_01_0841:
	ld bc, $8031                                                  ; $0841 : $01, $31, $80
	ld de, $7218                                                  ; $0844 : $11, $18, $72

Call_01_0847:
Jump_01_0847:
	call Call_01_0955                                                  ; $0847 : $cd, $55, $09
	ret z                                                  ; $084a : $c8

	ld l, $00                                                  ; $084b : $2e, $00
	call Call_01_0914                                                  ; $084d : $cd, $14, $09
	ld a, c                                                  ; $0850 : $79
	ld ($414f), a                                                  ; $0851 : $32, $4f, $41
	ex de, hl                                                  ; $0854 : $eb
	ld ($4150), hl                                                  ; $0855 : $22, $50, $41
	ld bc, $0000                                                  ; $0858 : $01, $00, $00
	ld d, b                                                  ; $085b : $50
	ld e, b                                                  ; $085c : $58
	ld hl, $0765                                                  ; $085d : $21, $65, $07
	push hl                                                  ; $0860 : $e5
	ld hl, $0869                                                  ; $0861 : $21, $69, $08
	push hl                                                  ; $0864 : $e5
	push hl                                                  ; $0865 : $e5
	ld hl, $4121                                                  ; $0866 : $21, $21, $41
	ld a, (hl)                                                  ; $0869 : $7e
	inc hl                                                  ; $086a : $23
	or a                                                  ; $086b : $b7
	jr z, br_01_0892                                                  ; $086c : $28, $24

	push hl                                                  ; $086e : $e5
	ld l, $08                                                  ; $086f : $2e, $08

br_01_0871:
	rra                                                  ; $0871 : $1f
	ld h, a                                                  ; $0872 : $67
	ld a, c                                                  ; $0873 : $79
	jr nc, br_01_0881                                                  ; $0874 : $30, $0b

	push hl                                                  ; $0876 : $e5
	ld hl, ($4150)                                                  ; $0877 : $2a, $50, $41
	add hl, de                                                  ; $087a : $19
	ex de, hl                                                  ; $087b : $eb
	pop hl                                                  ; $087c : $e1
	ld a, ($414f)                                                  ; $087d : $3a, $4f, $41
	adc a, c                                                  ; $0880 : $89

br_01_0881:
	rra                                                  ; $0881 : $1f
	ld c, a                                                  ; $0882 : $4f
	ld a, d                                                  ; $0883 : $7a
	rra                                                  ; $0884 : $1f
	ld d, a                                                  ; $0885 : $57
	ld a, e                                                  ; $0886 : $7b
	rra                                                  ; $0887 : $1f
	ld e, a                                                  ; $0888 : $5f
	ld a, b                                                  ; $0889 : $78
	rra                                                  ; $088a : $1f
	ld b, a                                                  ; $088b : $47
	dec l                                                  ; $088c : $2d
	ld a, h                                                  ; $088d : $7c
	jr nz, br_01_0871                                                  ; $088e : $20, $e1

Jump_01_0890:
	pop hl                                                  ; $0890 : $e1
	ret                                                  ; $0891 : $c9


br_01_0892:
	ld b, e                                                  ; $0892 : $43
	ld e, d                                                  ; $0893 : $5a
	ld d, c                                                  ; $0894 : $51
	ld c, a                                                  ; $0895 : $4f
	ret                                                  ; $0896 : $c9


Call_01_0897:
	call Call_01_09a4                                                  ; $0897 : $cd, $a4, $09
	ld hl, $0dd8                                                  ; $089a : $21, $d8, $0d
	call Call_01_09b1                                                  ; $089d : $cd, $b1, $09

Jump_01_08a0:
	pop bc                                                  ; $08a0 : $c1
	pop de                                                  ; $08a1 : $d1

Call_01_08a2:
	call Call_01_0955                                                  ; $08a2 : $cd, $55, $09
	jp z, $199a                                                  ; $08a5 : $ca, $9a, $19
	ld l, $ff                                                  ; $08a8 : $2e, $ff
	call Call_01_0914                                                  ; $08aa : $cd, $14, $09
	inc (hl)                                                  ; $08ad : $34
	inc (hl)                                                  ; $08ae : $34
	dec hl                                                  ; $08af : $2b
	ld a, (hl)                                                  ; $08b0 : $7e
	ld ($4089), a                                                  ; $08b1 : $32, $89, $40
	dec hl                                                  ; $08b4 : $2b
	ld a, (hl)                                                  ; $08b5 : $7e
	ld ($4085), a                                                  ; $08b6 : $32, $85, $40
	dec hl                                                  ; $08b9 : $2b
	ld a, (hl)                                                  ; $08ba : $7e
	ld ($4081), a                                                  ; $08bb : $32, $81, $40
	ld b, c                                                  ; $08be : $41
	ex de, hl                                                  ; $08bf : $eb
	xor a                                                  ; $08c0 : $af
	ld c, a                                                  ; $08c1 : $4f
	ld d, a                                                  ; $08c2 : $57
	ld e, a                                                  ; $08c3 : $5f
	ld ($408c), a                                                  ; $08c4 : $32, $8c, $40

br_01_08c7:
	push hl                                                  ; $08c7 : $e5
	push bc                                                  ; $08c8 : $c5
	ld a, l                                                  ; $08c9 : $7d
	call $4080                                                  ; $08ca : $cd, $80, $40
	sbc a, $00                                                  ; $08cd : $de, $00
	ccf                                                  ; $08cf : $3f
	jr nc, $07                                                  ; $08d0 : $30, $07

	ld ($408c), a                                                  ; $08d2 : $32, $8c, $40
	pop af                                                  ; $08d5 : $f1
	pop af                                                  ; $08d6 : $f1
	scf                                                  ; $08d7 : $37
	jp nc, $e1c1                                                  ; $08d8 : $d2, $c1, $e1
	ld a, c                                                  ; $08db : $79
	inc a                                                  ; $08dc : $3c
	dec a                                                  ; $08dd : $3d
	rra                                                  ; $08de : $1f
	jp m, Jump_01_0797                                                  ; $08df : $fa, $97, $07
	rla                                                  ; $08e2 : $17
	ld a, e                                                  ; $08e3 : $7b
	rla                                                  ; $08e4 : $17
	ld e, a                                                  ; $08e5 : $5f
	ld a, d                                                  ; $08e6 : $7a
	rla                                                  ; $08e7 : $17
	ld d, a                                                  ; $08e8 : $57
	ld a, c                                                  ; $08e9 : $79
	rla                                                  ; $08ea : $17
	ld c, a                                                  ; $08eb : $4f
	add hl, hl                                                  ; $08ec : $29
	ld a, b                                                  ; $08ed : $78
	rla                                                  ; $08ee : $17
	ld b, a                                                  ; $08ef : $47
	ld a, ($408c)                                                  ; $08f0 : $3a, $8c, $40
	rla                                                  ; $08f3 : $17
	ld ($408c), a                                                  ; $08f4 : $32, $8c, $40
	ld a, c                                                  ; $08f7 : $79
	or d                                                  ; $08f8 : $b2
	or e                                                  ; $08f9 : $b3
	jr nz, br_01_08c7                                                  ; $08fa : $20, $cb

	push hl                                                  ; $08fc : $e5
	ld hl, $4124                                                  ; $08fd : $21, $24, $41
	dec (hl)                                                  ; $0900 : $35
	pop hl                                                  ; $0901 : $e1
	jr nz, br_01_08c7                                                  ; $0902 : $20, $c3

	jp Jump_01_07b2                                                  ; $0904 : $c3, $b2, $07


Call_01_0907:
	ld a, $ff                                                  ; $0907 : $3e, $ff
	ld l, $af                                                  ; $0909 : $2e, $af
	ld hl, $412d                                                  ; $090b : $21, $2d, $41
	ld c, (hl)                                                  ; $090e : $4e
	inc hl                                                  ; $090f : $23
	xor (hl)                                                  ; $0910 : $ae
	ld b, a                                                  ; $0911 : $47
	ld l, $00                                                  ; $0912 : $2e, $00

Call_01_0914:
	ld a, b                                                  ; $0914 : $78
	or a                                                  ; $0915 : $b7
	jr z, br_01_0937                                                  ; $0916 : $28, $1f

	ld a, l                                                  ; $0918 : $7d
	ld hl, $4124                                                  ; $0919 : $21, $24, $41
	xor (hl)                                                  ; $091c : $ae
	add a, b                                                  ; $091d : $80
	ld b, a                                                  ; $091e : $47
	rra                                                  ; $091f : $1f
	xor b                                                  ; $0920 : $a8
	ld a, b                                                  ; $0921 : $78
	jp p, Jump_01_0936                                                  ; $0922 : $f2, $36, $09
	add a, $80                                                  ; $0925 : $c6, $80
	ld (hl), a                                                  ; $0927 : $77
	jp z, Jump_01_0890                                                  ; $0928 : $ca, $90, $08
	call Call_01_09df                                                  ; $092b : $cd, $df, $09
	ld (hl), a                                                  ; $092e : $77

Call_01_092f:
	dec hl                                                  ; $092f : $2b
	ret                                                  ; $0930 : $c9


Jump_01_0931:
	call Call_01_0955                                                  ; $0931 : $cd, $55, $09
	cpl                                                  ; $0934 : $2f
	pop hl                                                  ; $0935 : $e1

Jump_01_0936:
	or a                                                  ; $0936 : $b7

br_01_0937:
	pop hl                                                  ; $0937 : $e1
	jp p, Jump_01_0778                                                  ; $0938 : $f2, $78, $07
	jp Jump_01_07b2                                                  ; $093b : $c3, $b2, $07


Call_01_093e:
	call Call_01_09bf                                                  ; $093e : $cd, $bf, $09
	ld a, b                                                  ; $0941 : $78
	or a                                                  ; $0942 : $b7
	ret z                                                  ; $0943 : $c8

	add a, $02                                                  ; $0944 : $c6, $02
	jp c, Jump_01_07b2                                                  ; $0946 : $da, $b2, $07
	ld b, a                                                  ; $0949 : $47
	call Call_01_0716                                                  ; $094a : $cd, $16, $07
	ld hl, $4124                                                  ; $094d : $21, $24, $41
	inc (hl)                                                  ; $0950 : $34
	ret nz                                                  ; $0951 : $c0

	jp Jump_01_07b2                                                  ; $0952 : $c3, $b2, $07


Call_01_0955:
Jump_01_0955:
	ld a, ($4124)                                                  ; $0955 : $3a, $24, $41
	or a                                                  ; $0958 : $b7
	ret z                                                  ; $0959 : $c8

	ld a, ($4123)                                                  ; $095a : $3a, $23, $41
	cp $2f                                                  ; $095d : $fe, $2f

Jump_01_095f:
br_01_095f:
	rla                                                  ; $095f : $17

Jump_01_0960:
	sbc a, a                                                  ; $0960 : $9f
	ret nz                                                  ; $0961 : $c0

	inc a                                                  ; $0962 : $3c
	ret                                                  ; $0963 : $c9


Call_01_0964:
	ld b, $88                                                  ; $0964 : $06, $88
	ld de, $0000                                                  ; $0966 : $11, $00, $00

Jump_01_0969:
	ld hl, $4124                                                  ; $0969 : $21, $24, $41
	ld c, a                                                  ; $096c : $4f
	ld (hl), b                                                  ; $096d : $70
	ld b, $00                                                  ; $096e : $06, $00
	inc hl                                                  ; $0970 : $23
	ld (hl), $80                                                  ; $0971 : $36, $80
	rla                                                  ; $0973 : $17
	jp Jump_01_0762                                                  ; $0974 : $c3, $62, $07


	call Call_01_0994                                                  ; $0977 : $cd, $94, $09
	ret p                                                  ; $097a : $f0

Call_01_097b:
Jump_01_097b:
	rst $20                                                  ; $097b : $e7
	jp m, Jump_01_0c5b                                                  ; $097c : $fa, $5b, $0c
	jp z, Jump_01_0af6                                                  ; $097f : $ca, $f6, $0a

Call_01_0982:
Jump_01_0982:
	ld hl, $4123                                                  ; $0982 : $21, $23, $41
	ld a, (hl)                                                  ; $0985 : $7e
	xor $80                                                  ; $0986 : $ee, $80
	ld (hl), a                                                  ; $0988 : $77
	ret                                                  ; $0989 : $c9


	call Call_01_0994                                                  ; $098a : $cd, $94, $09

Call_01_098d:
	ld l, a                                                  ; $098d : $6f
	rla                                                  ; $098e : $17
	sbc a, a                                                  ; $098f : $9f
	ld h, a                                                  ; $0990 : $67
	jp Jump_01_0a9a                                                  ; $0991 : $c3, $9a, $0a


Call_01_0994:
	rst $20                                                  ; $0994 : $e7
	jp z, Jump_01_0af6                                                  ; $0995 : $ca, $f6, $0a
	jp p, Jump_01_0955                                                  ; $0998 : $f2, $55, $09
	ld hl, ($4121)                                                  ; $099b : $2a, $21, $41

Call_01_099e:
	ld a, h                                                  ; $099e : $7c
	or l                                                  ; $099f : $b5
	ret z                                                  ; $09a0 : $c8

	ld a, h                                                  ; $09a1 : $7c
	jr br_01_095f                                                  ; $09a2 : $18, $bb

Call_01_09a4:
	ex de, hl                                                  ; $09a4 : $eb
	ld hl, ($4121)                                                  ; $09a5 : $2a, $21, $41
	ex (sp), hl                                                  ; $09a8 : $e3
	push hl                                                  ; $09a9 : $e5
	ld hl, ($4123)                                                  ; $09aa : $2a, $23, $41
	ex (sp), hl                                                  ; $09ad : $e3
	push hl                                                  ; $09ae : $e5
	ex de, hl                                                  ; $09af : $eb
	ret                                                  ; $09b0 : $c9


Call_01_09b1:
	call Call_01_09c2                                                  ; $09b1 : $cd, $c2, $09

Call_01_09b4:
Jump_01_09b4:
	ex de, hl                                                  ; $09b4 : $eb
	ld ($4121), hl                                                  ; $09b5 : $22, $21, $41
	ld h, b                                                  ; $09b8 : $60
	ld l, c                                                  ; $09b9 : $69
	ld ($4123), hl                                                  ; $09ba : $22, $23, $41
	ex de, hl                                                  ; $09bd : $eb
	ret                                                  ; $09be : $c9


Call_01_09bf:
	ld hl, $4121                                                  ; $09bf : $21, $21, $41

Call_01_09c2:
	ld e, (hl)                                                  ; $09c2 : $5e
	inc hl                                                  ; $09c3 : $23

Call_01_09c4:
	ld d, (hl)                                                  ; $09c4 : $56
	inc hl                                                  ; $09c5 : $23
	ld c, (hl)                                                  ; $09c6 : $4e
	inc hl                                                  ; $09c7 : $23
	ld b, (hl)                                                  ; $09c8 : $46

Call_01_09c9:
	inc hl                                                  ; $09c9 : $23
	ret                                                  ; $09ca : $c9


Call_01_09cb:
	ld de, $4121                                                  ; $09cb : $11, $21, $41
	ld b, $04                                                  ; $09ce : $06, $04
	jr br_01_09d7                                                  ; $09d0 : $18, $05

	ex de, hl                                                  ; $09d2 : $eb

Call_01_09d3:
	ld a, ($40af)                                                  ; $09d3 : $3a, $af, $40
	ld b, a                                                  ; $09d6 : $47

br_01_09d7:
	ld a, (de)                                                  ; $09d7 : $1a
	ld (hl), a                                                  ; $09d8 : $77
	inc de                                                  ; $09d9 : $13
	inc hl                                                  ; $09da : $23
	dec b                                                  ; $09db : $05
	jr nz, br_01_09d7                                                  ; $09dc : $20, $f9

	ret                                                  ; $09de : $c9


Call_01_09df:
	ld hl, $4123                                                  ; $09df : $21, $23, $41
	ld a, (hl)                                                  ; $09e2 : $7e
	rlca                                                  ; $09e3 : $07
	scf                                                  ; $09e4 : $37
	rra                                                  ; $09e5 : $1f
	ld (hl), a                                                  ; $09e6 : $77
	ccf                                                  ; $09e7 : $3f
	rra                                                  ; $09e8 : $1f
	inc hl                                                  ; $09e9 : $23
	inc hl                                                  ; $09ea : $23
	ld (hl), a                                                  ; $09eb : $77
	ld a, c                                                  ; $09ec : $79
	rlca                                                  ; $09ed : $07
	scf                                                  ; $09ee : $37
	rra                                                  ; $09ef : $1f
	ld c, a                                                  ; $09f0 : $4f
	rra                                                  ; $09f1 : $1f
	xor (hl)                                                  ; $09f2 : $ae
	ret                                                  ; $09f3 : $c9


Jump_01_09f4:
	ld hl, $4127                                                  ; $09f4 : $21, $27, $41

Call_01_09f7:
	ld de, $09d2                                                  ; $09f7 : $11, $d2, $09
	jr br_01_0a02                                                  ; $09fa : $18, $06

Call_01_09fc:
	ld hl, $4127                                                  ; $09fc : $21, $27, $41
	ld de, $09d3                                                  ; $09ff : $11, $d3, $09

br_01_0a02:
	push de                                                  ; $0a02 : $d5

Call_01_0a03:
	ld de, $4121                                                  ; $0a03 : $11, $21, $41
	rst $20                                                  ; $0a06 : $e7
	ret c                                                  ; $0a07 : $d8

	ld de, $411d                                                  ; $0a08 : $11, $1d, $41
	ret                                                  ; $0a0b : $c9


Call_01_0a0c:
	ld a, b                                                  ; $0a0c : $78
	or a                                                  ; $0a0d : $b7
	jp z, Jump_01_0955                                                  ; $0a0e : $ca, $55, $09
	ld hl, $095e                                                  ; $0a11 : $21, $5e, $09
	push hl                                                  ; $0a14 : $e5
	call Call_01_0955                                                  ; $0a15 : $cd, $55, $09
	ld a, c                                                  ; $0a18 : $79
	ret z                                                  ; $0a19 : $c8

	ld hl, $4123                                                  ; $0a1a : $21, $23, $41
	xor (hl)                                                  ; $0a1d : $ae
	ld a, c                                                  ; $0a1e : $79
	ret m                                                  ; $0a1f : $f8

	call Call_01_0a26                                                  ; $0a20 : $cd, $26, $0a

Jump_01_0a23:
	rra                                                  ; $0a23 : $1f
	xor c                                                  ; $0a24 : $a9
	ret                                                  ; $0a25 : $c9


Call_01_0a26:
	inc hl                                                  ; $0a26 : $23
	ld a, b                                                  ; $0a27 : $78
	cp (hl)                                                  ; $0a28 : $be
	ret nz                                                  ; $0a29 : $c0

	dec hl                                                  ; $0a2a : $2b
	ld a, c                                                  ; $0a2b : $79
	cp (hl)                                                  ; $0a2c : $be
	ret nz                                                  ; $0a2d : $c0

	dec hl                                                  ; $0a2e : $2b
	ld a, d                                                  ; $0a2f : $7a
	cp (hl)                                                  ; $0a30 : $be
	ret nz                                                  ; $0a31 : $c0

	dec hl                                                  ; $0a32 : $2b
	ld a, e                                                  ; $0a33 : $7b
	sub (hl)                                                  ; $0a34 : $96
	ret nz                                                  ; $0a35 : $c0

	pop hl                                                  ; $0a36 : $e1
	pop hl                                                  ; $0a37 : $e1
	ret                                                  ; $0a38 : $c9


Call_01_0a39:
	ld a, d                                                  ; $0a39 : $7a
	xor h                                                  ; $0a3a : $ac
	ld a, h                                                  ; $0a3b : $7c
	jp m, Jump_01_095f                                                  ; $0a3c : $fa, $5f, $09
	cp d                                                  ; $0a3f : $ba
	jp nz, Jump_01_0960                                                  ; $0a40 : $c2, $60, $09
	ld a, l                                                  ; $0a43 : $7d
	sub e                                                  ; $0a44 : $93
	jp nz, Jump_01_0960                                                  ; $0a45 : $c2, $60, $09
	ret                                                  ; $0a48 : $c9


Call_01_0a49:
	ld hl, $4127                                                  ; $0a49 : $21, $27, $41
	call Call_01_09d3                                                  ; $0a4c : $cd, $d3, $09

Call_01_0a4f:
	ld de, $412e                                                  ; $0a4f : $11, $2e, $41
	ld a, (de)                                                  ; $0a52 : $1a
	or a                                                  ; $0a53 : $b7
	jp z, Jump_01_0955                                                  ; $0a54 : $ca, $55, $09
	ld hl, $095e                                                  ; $0a57 : $21, $5e, $09
	push hl                                                  ; $0a5a : $e5
	call Call_01_0955                                                  ; $0a5b : $cd, $55, $09
	dec de                                                  ; $0a5e : $1b
	ld a, (de)                                                  ; $0a5f : $1a
	ld c, a                                                  ; $0a60 : $4f
	ret z                                                  ; $0a61 : $c8

	ld hl, $4123                                                  ; $0a62 : $21, $23, $41
	xor (hl)                                                  ; $0a65 : $ae
	ld a, c                                                  ; $0a66 : $79
	ret m                                                  ; $0a67 : $f8

	inc de                                                  ; $0a68 : $13
	inc hl                                                  ; $0a69 : $23
	ld b, $08                                                  ; $0a6a : $06, $08

br_01_0a6c:
	ld a, (de)                                                  ; $0a6c : $1a
	sub (hl)                                                  ; $0a6d : $96
	jp nz, Jump_01_0a23                                                  ; $0a6e : $c2, $23, $0a
	dec de                                                  ; $0a71 : $1b
	dec hl                                                  ; $0a72 : $2b
	dec b                                                  ; $0a73 : $05
	jr nz, br_01_0a6c                                                  ; $0a74 : $20, $f6

	pop bc                                                  ; $0a76 : $c1
	ret                                                  ; $0a77 : $c9


	call Call_01_0a4f                                                  ; $0a78 : $cd, $4f, $0a
	jp nz, $095e                                                  ; $0a7b : $c2, $5e, $09
	ret                                                  ; $0a7e : $c9


Call_01_0a7f:
Jump_01_0a7f:
	rst $20                                                  ; $0a7f : $e7
	ld hl, ($4121)                                                  ; $0a80 : $2a, $21, $41
	ret m                                                  ; $0a83 : $f8

	jp z, Jump_01_0af6                                                  ; $0a84 : $ca, $f6, $0a
	call nc, Call_01_0ab9                                                  ; $0a87 : $d4, $b9, $0a
	ld hl, $07b2                                                  ; $0a8a : $21, $b2, $07
	push hl                                                  ; $0a8d : $e5

Call_01_0a8e:
	ld a, ($4124)                                                  ; $0a8e : $3a, $24, $41
	cp $90                                                  ; $0a91 : $fe, $90
	jr nc, br_01_0aa3                                                  ; $0a93 : $30, $0e

	call Call_01_0afb                                                  ; $0a95 : $cd, $fb, $0a
	ex de, hl                                                  ; $0a98 : $eb

Jump_01_0a99:
br_01_0a99:
	pop de                                                  ; $0a99 : $d1

Call_01_0a9a:
Jump_01_0a9a:
	ld ($4121), hl                                                  ; $0a9a : $22, $21, $41
	ld a, $02                                                  ; $0a9d : $3e, $02

Jump_01_0a9f:
	ld ($40af), a                                                  ; $0a9f : $32, $af, $40
	ret                                                  ; $0aa2 : $c9


Call_01_0aa3:
br_01_0aa3:
	ld bc, $9080                                                  ; $0aa3 : $01, $80, $90
	ld de, $0000                                                  ; $0aa6 : $11, $00, $00
	call Call_01_0a0c                                                  ; $0aa9 : $cd, $0c, $0a
	ret nz                                                  ; $0aac : $c0

	ld h, c                                                  ; $0aad : $61
	ld l, d                                                  ; $0aae : $6a
	jr br_01_0a99                                                  ; $0aaf : $18, $e8

Call_01_0ab1:
	rst $20                                                  ; $0ab1 : $e7
	ret po                                                  ; $0ab2 : $e0

	jp m, Jump_01_0acc                                                  ; $0ab3 : $fa, $cc, $0a
	jp z, Jump_01_0af6                                                  ; $0ab6 : $ca, $f6, $0a

Call_01_0ab9:
	call Call_01_09bf                                                  ; $0ab9 : $cd, $bf, $09
	call $0aef                                                  ; $0abc : $cd, $ef, $0a
	ld a, b                                                  ; $0abf : $78
	or a                                                  ; $0ac0 : $b7
	ret z                                                  ; $0ac1 : $c8

	call Call_01_09df                                                  ; $0ac2 : $cd, $df, $09
	ld hl, $4120                                                  ; $0ac5 : $21, $20, $41
	ld b, (hl)                                                  ; $0ac8 : $46
	jp Jump_01_0796                                                  ; $0ac9 : $c3, $96, $07


Call_01_0acc:
Jump_01_0acc:
	ld hl, ($4121)                                                  ; $0acc : $2a, $21, $41

Call_01_0acf:
	call $0aef                                                  ; $0acf : $cd, $ef, $0a
	ld a, h                                                  ; $0ad2 : $7c
	ld d, l                                                  ; $0ad3 : $55
	ld e, $00                                                  ; $0ad4 : $1e, $00
	ld b, $90                                                  ; $0ad6 : $06, $90
	jp Jump_01_0969                                                  ; $0ad8 : $c3, $69, $09


Call_01_0adb:
	rst $20                                                  ; $0adb : $e7
	ret nc                                                  ; $0adc : $d0

	jp z, Jump_01_0af6                                                  ; $0add : $ca, $f6, $0a
	call m, Call_01_0acc                                                  ; $0ae0 : $fc, $cc, $0a

Call_01_0ae3:
	ld hl, $0000                                                  ; $0ae3 : $21, $00, $00
	ld ($411d), hl                                                  ; $0ae6 : $22, $1d, $41
	ld ($411f), hl                                                  ; $0ae9 : $22, $1f, $41

Call_01_0aec:
	ld a, $08                                                  ; $0aec : $3e, $08
	ld bc, $043e                                                  ; $0aee : $01, $3e, $04
	jp Jump_01_0a9f                                                  ; $0af1 : $c3, $9f, $0a


Call_01_0af4:
	rst $20                                                  ; $0af4 : $e7
	ret z                                                  ; $0af5 : $c8

Jump_01_0af6:
br_01_0af6:
	ld e, $18                                                  ; $0af6 : $1e, $18
	jp Jump_01_19a2                                                  ; $0af8 : $c3, $a2, $19


Call_01_0afb:
	ld b, a                                                  ; $0afb : $47
	ld c, a                                                  ; $0afc : $4f
	ld d, a                                                  ; $0afd : $57
	ld e, a                                                  ; $0afe : $5f
	or a                                                  ; $0aff : $b7
	ret z                                                  ; $0b00 : $c8

	push hl                                                  ; $0b01 : $e5
	call Call_01_09bf                                                  ; $0b02 : $cd, $bf, $09
	call Call_01_09df                                                  ; $0b05 : $cd, $df, $09
	xor (hl)                                                  ; $0b08 : $ae
	ld h, a                                                  ; $0b09 : $67
	call m, Call_01_0b1f                                                  ; $0b0a : $fc, $1f, $0b
	ld a, $98                                                  ; $0b0d : $3e, $98
	sub b                                                  ; $0b0f : $90
	call Call_01_07d7                                                  ; $0b10 : $cd, $d7, $07
	ld a, h                                                  ; $0b13 : $7c
	rla                                                  ; $0b14 : $17
	call c, Call_01_07a8                                                  ; $0b15 : $dc, $a8, $07
	ld b, $00                                                  ; $0b18 : $06, $00
	call c, Call_01_07c3                                                  ; $0b1a : $dc, $c3, $07
	pop hl                                                  ; $0b1d : $e1
	ret                                                  ; $0b1e : $c9


Call_01_0b1f:
	dec de                                                  ; $0b1f : $1b
	ld a, d                                                  ; $0b20 : $7a
	and e                                                  ; $0b21 : $a3
	inc a                                                  ; $0b22 : $3c
	ret nz                                                  ; $0b23 : $c0

Call_01_0b24:
	dec bc                                                  ; $0b24 : $0b
	ret                                                  ; $0b25 : $c9


	rst $20                                                  ; $0b26 : $e7
	ret m                                                  ; $0b27 : $f8

	call Call_01_0955                                                  ; $0b28 : $cd, $55, $09
	jp p, Jump_01_0b37                                                  ; $0b2b : $f2, $37, $0b
	call Call_01_0982                                                  ; $0b2e : $cd, $82, $09
	call Call_01_0b37                                                  ; $0b31 : $cd, $37, $0b
	jp Jump_01_097b                                                  ; $0b34 : $c3, $7b, $09


Call_01_0b37:
Jump_01_0b37:
	rst $20                                                  ; $0b37 : $e7
	ret m                                                  ; $0b38 : $f8

	jr nc, br_01_0b59                                                  ; $0b39 : $30, $1e

	jr z, br_01_0af6                                                  ; $0b3b : $28, $b9

	call Call_01_0a8e                                                  ; $0b3d : $cd, $8e, $0a

Call_01_0b40:
Jump_01_0b40:
	ld hl, $4124                                                  ; $0b40 : $21, $24, $41
	ld a, (hl)                                                  ; $0b43 : $7e
	cp $98                                                  ; $0b44 : $fe, $98
	ld a, ($4121)                                                  ; $0b46 : $3a, $21, $41
	ret nc                                                  ; $0b49 : $d0

	ld a, (hl)                                                  ; $0b4a : $7e
	call Call_01_0afb                                                  ; $0b4b : $cd, $fb, $0a
	ld (hl), $98                                                  ; $0b4e : $36, $98
	ld a, e                                                  ; $0b50 : $7b
	push af                                                  ; $0b51 : $f5
	ld a, c                                                  ; $0b52 : $79
	rla                                                  ; $0b53 : $17
	call Call_01_0762                                                  ; $0b54 : $cd, $62, $07
	pop af                                                  ; $0b57 : $f1
	ret                                                  ; $0b58 : $c9


br_01_0b59:
	ld hl, $4124                                                  ; $0b59 : $21, $24, $41
	ld a, (hl)                                                  ; $0b5c : $7e
	cp $90                                                  ; $0b5d : $fe, $90
	jp c, Jump_01_0a7f                                                  ; $0b5f : $da, $7f, $0a
	jr nz, br_01_0b78                                                  ; $0b62 : $20, $14

	ld c, a                                                  ; $0b64 : $4f
	dec hl                                                  ; $0b65 : $2b
	ld a, (hl)                                                  ; $0b66 : $7e
	xor $80                                                  ; $0b67 : $ee, $80
	ld b, $06                                                  ; $0b69 : $06, $06

br_01_0b6b:
	dec hl                                                  ; $0b6b : $2b
	or (hl)                                                  ; $0b6c : $b6
	dec b                                                  ; $0b6d : $05
	jr nz, br_01_0b6b                                                  ; $0b6e : $20, $fb

	or a                                                  ; $0b70 : $b7
	ld hl, $8000                                                  ; $0b71 : $21, $00, $80
	jp z, Jump_01_0a9a                                                  ; $0b74 : $ca, $9a, $0a
	ld a, c                                                  ; $0b77 : $79

br_01_0b78:
	cp $b8                                                  ; $0b78 : $fe, $b8
	ret nc                                                  ; $0b7a : $d0

Call_01_0b7b:
	push af                                                  ; $0b7b : $f5
	call Call_01_09bf                                                  ; $0b7c : $cd, $bf, $09
	call Call_01_09df                                                  ; $0b7f : $cd, $df, $09
	xor (hl)                                                  ; $0b82 : $ae
	dec hl                                                  ; $0b83 : $2b
	ld (hl), $b8                                                  ; $0b84 : $36, $b8
	push af                                                  ; $0b86 : $f5
	call m, Call_01_0ba0                                                  ; $0b87 : $fc, $a0, $0b
	ld hl, $4123                                                  ; $0b8a : $21, $23, $41
	ld a, $b8                                                  ; $0b8d : $3e, $b8
	sub b                                                  ; $0b8f : $90
	call Call_01_0d69                                                  ; $0b90 : $cd, $69, $0d
	pop af                                                  ; $0b93 : $f1
	call m, Call_01_0d20                                                  ; $0b94 : $fc, $20, $0d
	xor a                                                  ; $0b97 : $af
	ld ($411c), a                                                  ; $0b98 : $32, $1c, $41
	pop af                                                  ; $0b9b : $f1
	ret nc                                                  ; $0b9c : $d0

	jp Jump_01_0cd8                                                  ; $0b9d : $c3, $d8, $0c


Call_01_0ba0:
	ld hl, $411d                                                  ; $0ba0 : $21, $1d, $41

br_01_0ba3:
	ld a, (hl)                                                  ; $0ba3 : $7e
	dec (hl)                                                  ; $0ba4 : $35
	or a                                                  ; $0ba5 : $b7
	inc hl                                                  ; $0ba6 : $23
	jr z, br_01_0ba3                                                  ; $0ba7 : $28, $fa

	ret                                                  ; $0ba9 : $c9


Call_01_0baa:
	push hl                                                  ; $0baa : $e5
	ld hl, $0000                                                  ; $0bab : $21, $00, $00
	ld a, b                                                  ; $0bae : $78
	or c                                                  ; $0baf : $b1
	jr z, br_01_0bc4                                                  ; $0bb0 : $28, $12

	ld a, $10                                                  ; $0bb2 : $3e, $10

br_01_0bb4:
	add hl, hl                                                  ; $0bb4 : $29
	jp c, Jump_01_273d                                                  ; $0bb5 : $da, $3d, $27
	ex de, hl                                                  ; $0bb8 : $eb
	add hl, hl                                                  ; $0bb9 : $29
	ex de, hl                                                  ; $0bba : $eb
	jr nc, br_01_0bc1                                                  ; $0bbb : $30, $04

	add hl, bc                                                  ; $0bbd : $09
	jp c, Jump_01_273d                                                  ; $0bbe : $da, $3d, $27

br_01_0bc1:
	dec a                                                  ; $0bc1 : $3d
	jr nz, br_01_0bb4                                                  ; $0bc2 : $20, $f0

br_01_0bc4:
	ex de, hl                                                  ; $0bc4 : $eb
	pop hl                                                  ; $0bc5 : $e1
	ret                                                  ; $0bc6 : $c9


	ld a, h                                                  ; $0bc7 : $7c
	rla                                                  ; $0bc8 : $17
	sbc a, a                                                  ; $0bc9 : $9f
	ld b, a                                                  ; $0bca : $47
	call Call_01_0c51                                                  ; $0bcb : $cd, $51, $0c
	ld a, c                                                  ; $0bce : $79
	sbc a, b                                                  ; $0bcf : $98
	jr br_01_0bd5                                                  ; $0bd0 : $18, $03

Call_01_0bd2:
	ld a, h                                                  ; $0bd2 : $7c
	rla                                                  ; $0bd3 : $17
	sbc a, a                                                  ; $0bd4 : $9f

br_01_0bd5:
	ld b, a                                                  ; $0bd5 : $47
	push hl                                                  ; $0bd6 : $e5
	ld a, d                                                  ; $0bd7 : $7a
	rla                                                  ; $0bd8 : $17
	sbc a, a                                                  ; $0bd9 : $9f
	add hl, de                                                  ; $0bda : $19
	adc a, b                                                  ; $0bdb : $88
	rrca                                                  ; $0bdc : $0f
	xor h                                                  ; $0bdd : $ac
	jp p, Jump_01_0a99                                                  ; $0bde : $f2, $99, $0a
	push bc                                                  ; $0be1 : $c5
	ex de, hl                                                  ; $0be2 : $eb
	call Call_01_0acf                                                  ; $0be3 : $cd, $cf, $0a
	pop af                                                  ; $0be6 : $f1
	pop hl                                                  ; $0be7 : $e1
	call Call_01_09a4                                                  ; $0be8 : $cd, $a4, $09
	ex de, hl                                                  ; $0beb : $eb
	call Call_01_0c6b                                                  ; $0bec : $cd, $6b, $0c
	jp Jump_01_0f8f                                                  ; $0bef : $c3, $8f, $0f


	ld a, h                                                  ; $0bf2 : $7c
	or l                                                  ; $0bf3 : $b5
	jp z, Jump_01_0a9a                                                  ; $0bf4 : $ca, $9a, $0a
	push hl                                                  ; $0bf7 : $e5
	push de                                                  ; $0bf8 : $d5
	call Call_01_0c45                                                  ; $0bf9 : $cd, $45, $0c
	push bc                                                  ; $0bfc : $c5
	ld b, h                                                  ; $0bfd : $44
	ld c, l                                                  ; $0bfe : $4d
	ld hl, $0000                                                  ; $0bff : $21, $00, $00
	ld a, $10                                                  ; $0c02 : $3e, $10

br_01_0c04:
	add hl, hl                                                  ; $0c04 : $29
	jr c, $1f                                                  ; $0c05 : $38, $1f

	ex de, hl                                                  ; $0c07 : $eb
	add hl, hl                                                  ; $0c08 : $29
	ex de, hl                                                  ; $0c09 : $eb
	jr nc, br_01_0c10                                                  ; $0c0a : $30, $04

	add hl, bc                                                  ; $0c0c : $09
	jp c, $0c26                                                  ; $0c0d : $da, $26, $0c

br_01_0c10:
	dec a                                                  ; $0c10 : $3d
	jr nz, br_01_0c04                                                  ; $0c11 : $20, $f1

	pop bc                                                  ; $0c13 : $c1
	pop de                                                  ; $0c14 : $d1
	ld a, h                                                  ; $0c15 : $7c
	or a                                                  ; $0c16 : $b7
	jp m, Jump_01_0c1f                                                  ; $0c17 : $fa, $1f, $0c
	pop de                                                  ; $0c1a : $d1
	ld a, b                                                  ; $0c1b : $78
	jp Jump_01_0c4d                                                  ; $0c1c : $c3, $4d, $0c


Jump_01_0c1f:
	xor $80                                                  ; $0c1f : $ee, $80
	or l                                                  ; $0c21 : $b5
	jr z, br_01_0c37                                                  ; $0c22 : $28, $13

	ex de, hl                                                  ; $0c24 : $eb
	ld bc, $e1c1                                                  ; $0c25 : $01, $c1, $e1
	call Call_01_0acf                                                  ; $0c28 : $cd, $cf, $0a
	pop hl                                                  ; $0c2b : $e1
	call Call_01_09a4                                                  ; $0c2c : $cd, $a4, $09
	call Call_01_0acf                                                  ; $0c2f : $cd, $cf, $0a
	pop bc                                                  ; $0c32 : $c1
	pop de                                                  ; $0c33 : $d1
	jp Jump_01_0847                                                  ; $0c34 : $c3, $47, $08


br_01_0c37:
	ld a, b                                                  ; $0c37 : $78
	or a                                                  ; $0c38 : $b7
	pop bc                                                  ; $0c39 : $c1
	jp m, Jump_01_0a9a                                                  ; $0c3a : $fa, $9a, $0a
	push de                                                  ; $0c3d : $d5
	call Call_01_0acf                                                  ; $0c3e : $cd, $cf, $0a
	pop de                                                  ; $0c41 : $d1
	jp Jump_01_0982                                                  ; $0c42 : $c3, $82, $09


Call_01_0c45:
	ld a, h                                                  ; $0c45 : $7c
	xor d                                                  ; $0c46 : $aa
	ld b, a                                                  ; $0c47 : $47
	call Call_01_0c4c                                                  ; $0c48 : $cd, $4c, $0c
	ex de, hl                                                  ; $0c4b : $eb

Call_01_0c4c:
	ld a, h                                                  ; $0c4c : $7c

Jump_01_0c4d:
	or a                                                  ; $0c4d : $b7
	jp p, Jump_01_0a9a                                                  ; $0c4e : $f2, $9a, $0a

Call_01_0c51:
	xor a                                                  ; $0c51 : $af
	ld c, a                                                  ; $0c52 : $4f
	sub l                                                  ; $0c53 : $95
	ld l, a                                                  ; $0c54 : $6f
	ld a, c                                                  ; $0c55 : $79
	sbc a, h                                                  ; $0c56 : $9c
	ld h, a                                                  ; $0c57 : $67
	jp Jump_01_0a9a                                                  ; $0c58 : $c3, $9a, $0a


Jump_01_0c5b:
	ld hl, ($4121)                                                  ; $0c5b : $2a, $21, $41
	call Call_01_0c51                                                  ; $0c5e : $cd, $51, $0c
	ld a, h                                                  ; $0c61 : $7c
	xor $80                                                  ; $0c62 : $ee, $80
	or l                                                  ; $0c64 : $b5
	ret nz                                                  ; $0c65 : $c0

Call_01_0c66:
Jump_01_0c66:
	ex de, hl                                                  ; $0c66 : $eb
	call $0aef                                                  ; $0c67 : $cd, $ef, $0a
	xor a                                                  ; $0c6a : $af

Call_01_0c6b:
	ld b, $98                                                  ; $0c6b : $06, $98
	jp Jump_01_0969                                                  ; $0c6d : $c3, $69, $09


	ld hl, $412d                                                  ; $0c70 : $21, $2d, $41
	ld a, (hl)                                                  ; $0c73 : $7e
	xor $80                                                  ; $0c74 : $ee, $80
	ld (hl), a                                                  ; $0c76 : $77

Call_01_0c77:
	ld hl, $412e                                                  ; $0c77 : $21, $2e, $41
	ld a, (hl)                                                  ; $0c7a : $7e
	or a                                                  ; $0c7b : $b7
	ret z                                                  ; $0c7c : $c8

	ld b, a                                                  ; $0c7d : $47
	dec hl                                                  ; $0c7e : $2b
	ld c, (hl)                                                  ; $0c7f : $4e
	ld de, $4124                                                  ; $0c80 : $11, $24, $41
	ld a, (de)                                                  ; $0c83 : $1a
	or a                                                  ; $0c84 : $b7
	jp z, Jump_01_09f4                                                  ; $0c85 : $ca, $f4, $09
	sub b                                                  ; $0c88 : $90
	jr nc, br_01_0ca1                                                  ; $0c89 : $30, $16

	cpl                                                  ; $0c8b : $2f
	inc a                                                  ; $0c8c : $3c
	push af                                                  ; $0c8d : $f5
	ld c, $08                                                  ; $0c8e : $0e, $08
	inc hl                                                  ; $0c90 : $23
	push hl                                                  ; $0c91 : $e5

br_01_0c92:
	ld a, (de)                                                  ; $0c92 : $1a
	ld b, (hl)                                                  ; $0c93 : $46
	ld (hl), a                                                  ; $0c94 : $77
	ld a, b                                                  ; $0c95 : $78
	ld (de), a                                                  ; $0c96 : $12
	dec de                                                  ; $0c97 : $1b
	dec hl                                                  ; $0c98 : $2b
	dec c                                                  ; $0c99 : $0d
	jr nz, br_01_0c92                                                  ; $0c9a : $20, $f6

	pop hl                                                  ; $0c9c : $e1
	ld b, (hl)                                                  ; $0c9d : $46
	dec hl                                                  ; $0c9e : $2b
	ld c, (hl)                                                  ; $0c9f : $4e
	pop af                                                  ; $0ca0 : $f1

br_01_0ca1:
	cp $39                                                  ; $0ca1 : $fe, $39
	ret nc                                                  ; $0ca3 : $d0

	push af                                                  ; $0ca4 : $f5
	call Call_01_09df                                                  ; $0ca5 : $cd, $df, $09
	inc hl                                                  ; $0ca8 : $23
	ld (hl), $00                                                  ; $0ca9 : $36, $00
	ld b, a                                                  ; $0cab : $47
	pop af                                                  ; $0cac : $f1
	ld hl, $412d                                                  ; $0cad : $21, $2d, $41
	call Call_01_0d69                                                  ; $0cb0 : $cd, $69, $0d
	ld a, ($4126)                                                  ; $0cb3 : $3a, $26, $41
	ld ($411c), a                                                  ; $0cb6 : $32, $1c, $41
	ld a, b                                                  ; $0cb9 : $78
	or a                                                  ; $0cba : $b7
	jp p, Jump_01_0ccf                                                  ; $0cbb : $f2, $cf, $0c
	call Call_01_0d33                                                  ; $0cbe : $cd, $33, $0d
	jp nc, Jump_01_0d0e                                                  ; $0cc1 : $d2, $0e, $0d
	ex de, hl                                                  ; $0cc4 : $eb
	inc (hl)                                                  ; $0cc5 : $34
	jp z, Jump_01_07b2                                                  ; $0cc6 : $ca, $b2, $07
	call Call_01_0d90                                                  ; $0cc9 : $cd, $90, $0d
	jp Jump_01_0d0e                                                  ; $0ccc : $c3, $0e, $0d


Jump_01_0ccf:
	call Call_01_0d45                                                  ; $0ccf : $cd, $45, $0d
	ld hl, $4125                                                  ; $0cd2 : $21, $25, $41
	call c, Call_01_0d57                                                  ; $0cd5 : $dc, $57, $0d

Jump_01_0cd8:
	xor a                                                  ; $0cd8 : $af

br_01_0cd9:
	ld b, a                                                  ; $0cd9 : $47
	ld a, ($4123)                                                  ; $0cda : $3a, $23, $41
	or a                                                  ; $0cdd : $b7
	jr nz, br_01_0cfe                                                  ; $0cde : $20, $1e

	ld hl, $411c                                                  ; $0ce0 : $21, $1c, $41
	ld c, $08                                                  ; $0ce3 : $0e, $08

br_01_0ce5:
	ld d, (hl)                                                  ; $0ce5 : $56
	ld (hl), a                                                  ; $0ce6 : $77
	ld a, d                                                  ; $0ce7 : $7a
	inc hl                                                  ; $0ce8 : $23
	dec c                                                  ; $0ce9 : $0d
	jr nz, br_01_0ce5                                                  ; $0cea : $20, $f9

	ld a, b                                                  ; $0cec : $78
	sub $08                                                  ; $0ced : $d6, $08
	cp $c0                                                  ; $0cef : $fe, $c0
	jr nz, br_01_0cd9                                                  ; $0cf1 : $20, $e6

	jp Jump_01_0778                                                  ; $0cf3 : $c3, $78, $07


Jump_01_0cf6:
	dec b                                                  ; $0cf6 : $05
	ld hl, $411c                                                  ; $0cf7 : $21, $1c, $41
	call Call_01_0d97                                                  ; $0cfa : $cd, $97, $0d
	or a                                                  ; $0cfd : $b7

br_01_0cfe:
	jp p, Jump_01_0cf6                                                  ; $0cfe : $f2, $f6, $0c
	ld a, b                                                  ; $0d01 : $78
	or a                                                  ; $0d02 : $b7
	jr z, br_01_0d0e                                                  ; $0d03 : $28, $09

	ld hl, $4124                                                  ; $0d05 : $21, $24, $41
	add a, (hl)                                                  ; $0d08 : $86
	ld (hl), a                                                  ; $0d09 : $77
	jp nc, Jump_01_0778                                                  ; $0d0a : $d2, $78, $07
	ret z                                                  ; $0d0d : $c8

Jump_01_0d0e:
br_01_0d0e:
	ld a, ($411c)                                                  ; $0d0e : $3a, $1c, $41

Jump_01_0d11:
	or a                                                  ; $0d11 : $b7
	call m, Call_01_0d20                                                  ; $0d12 : $fc, $20, $0d
	ld hl, $4125                                                  ; $0d15 : $21, $25, $41
	ld a, (hl)                                                  ; $0d18 : $7e
	and $80                                                  ; $0d19 : $e6, $80
	dec hl                                                  ; $0d1b : $2b
	dec hl                                                  ; $0d1c : $2b
	xor (hl)                                                  ; $0d1d : $ae
	ld (hl), a                                                  ; $0d1e : $77
	ret                                                  ; $0d1f : $c9


Call_01_0d20:
	ld hl, $411d                                                  ; $0d20 : $21, $1d, $41
	ld b, $07                                                  ; $0d23 : $06, $07

br_01_0d25:
	inc (hl)                                                  ; $0d25 : $34
	ret nz                                                  ; $0d26 : $c0

	inc hl                                                  ; $0d27 : $23
	dec b                                                  ; $0d28 : $05
	jr nz, br_01_0d25                                                  ; $0d29 : $20, $fa

	inc (hl)                                                  ; $0d2b : $34
	jp z, Jump_01_07b2                                                  ; $0d2c : $ca, $b2, $07
	dec hl                                                  ; $0d2f : $2b
	ld (hl), $80                                                  ; $0d30 : $36, $80
	ret                                                  ; $0d32 : $c9


Call_01_0d33:
	ld hl, $4127                                                  ; $0d33 : $21, $27, $41

Call_01_0d36:
	ld de, $411d                                                  ; $0d36 : $11, $1d, $41

Call_01_0d39:
	ld c, $07                                                  ; $0d39 : $0e, $07
	xor a                                                  ; $0d3b : $af

br_01_0d3c:
	ld a, (de)                                                  ; $0d3c : $1a
	adc a, (hl)                                                  ; $0d3d : $8e
	ld (de), a                                                  ; $0d3e : $12
	inc de                                                  ; $0d3f : $13
	inc hl                                                  ; $0d40 : $23
	dec c                                                  ; $0d41 : $0d
	jr nz, br_01_0d3c                                                  ; $0d42 : $20, $f8

	ret                                                  ; $0d44 : $c9


Call_01_0d45:
	ld hl, $4127                                                  ; $0d45 : $21, $27, $41

Call_01_0d48:
	ld de, $411d                                                  ; $0d48 : $11, $1d, $41

Call_01_0d4b:
	ld c, $07                                                  ; $0d4b : $0e, $07
	xor a                                                  ; $0d4d : $af

br_01_0d4e:
	ld a, (de)                                                  ; $0d4e : $1a
	sbc a, (hl)                                                  ; $0d4f : $9e
	ld (de), a                                                  ; $0d50 : $12
	inc de                                                  ; $0d51 : $13
	inc hl                                                  ; $0d52 : $23
	dec c                                                  ; $0d53 : $0d
	jr nz, br_01_0d4e                                                  ; $0d54 : $20, $f8

	ret                                                  ; $0d56 : $c9


Call_01_0d57:
	ld a, (hl)                                                  ; $0d57 : $7e
	cpl                                                  ; $0d58 : $2f
	ld (hl), a                                                  ; $0d59 : $77
	ld hl, $411c                                                  ; $0d5a : $21, $1c, $41
	ld b, $08                                                  ; $0d5d : $06, $08
	xor a                                                  ; $0d5f : $af

br_01_0d60:
	ld c, a                                                  ; $0d60 : $4f

br_01_0d61:
	ld a, c                                                  ; $0d61 : $79
	sbc a, (hl)                                                  ; $0d62 : $9e
	ld (hl), a                                                  ; $0d63 : $77
	inc hl                                                  ; $0d64 : $23
	dec b                                                  ; $0d65 : $05
	jr nz, br_01_0d61                                                  ; $0d66 : $20, $f9

	ret                                                  ; $0d68 : $c9


Call_01_0d69:
	ld (hl), c                                                  ; $0d69 : $71
	push hl                                                  ; $0d6a : $e5

br_01_0d6b:
	sub $08                                                  ; $0d6b : $d6, $08
	jr c, br_01_0d7d                                                  ; $0d6d : $38, $0e

	pop hl                                                  ; $0d6f : $e1

Call_01_0d70:
	push hl                                                  ; $0d70 : $e5
	ld de, $0800                                                  ; $0d71 : $11, $00, $08

br_01_0d74:
	ld c, (hl)                                                  ; $0d74 : $4e
	ld (hl), e                                                  ; $0d75 : $73
	ld e, c                                                  ; $0d76 : $59
	dec hl                                                  ; $0d77 : $2b
	dec d                                                  ; $0d78 : $15
	jr nz, br_01_0d74                                                  ; $0d79 : $20, $f9

	jr br_01_0d6b                                                  ; $0d7b : $18, $ee

br_01_0d7d:
	add a, $09                                                  ; $0d7d : $c6, $09
	ld d, a                                                  ; $0d7f : $57

br_01_0d80:
	xor a                                                  ; $0d80 : $af
	pop hl                                                  ; $0d81 : $e1
	dec d                                                  ; $0d82 : $15
	ret z                                                  ; $0d83 : $c8

br_01_0d84:
	push hl                                                  ; $0d84 : $e5
	ld e, $08                                                  ; $0d85 : $1e, $08

br_01_0d87:
	ld a, (hl)                                                  ; $0d87 : $7e
	rra                                                  ; $0d88 : $1f
	ld (hl), a                                                  ; $0d89 : $77
	dec hl                                                  ; $0d8a : $2b
	dec e                                                  ; $0d8b : $1d
	jr nz, br_01_0d87                                                  ; $0d8c : $20, $f9

	jr br_01_0d80                                                  ; $0d8e : $18, $f0

Call_01_0d90:
	ld hl, $4123                                                  ; $0d90 : $21, $23, $41
	ld d, $01                                                  ; $0d93 : $16, $01
	jr br_01_0d84                                                  ; $0d95 : $18, $ed

Call_01_0d97:
	ld c, $08                                                  ; $0d97 : $0e, $08

Call_01_0d99:
br_01_0d99:
	ld a, (hl)                                                  ; $0d99 : $7e
	rla                                                  ; $0d9a : $17
	ld (hl), a                                                  ; $0d9b : $77
	inc hl                                                  ; $0d9c : $23
	dec c                                                  ; $0d9d : $0d
	jr nz, br_01_0d99                                                  ; $0d9e : $20, $f9

	ret                                                  ; $0da0 : $c9


Call_01_0da1:
	call Call_01_0955                                                  ; $0da1 : $cd, $55, $09
	ret z                                                  ; $0da4 : $c8

	call $090a                                                  ; $0da5 : $cd, $0a, $09
	call Call_01_0e39                                                  ; $0da8 : $cd, $39, $0e
	ld (hl), c                                                  ; $0dab : $71
	inc de                                                  ; $0dac : $13
	ld b, $07                                                  ; $0dad : $06, $07

br_01_0daf:
	ld a, (de)                                                  ; $0daf : $1a
	inc de                                                  ; $0db0 : $13
	or a                                                  ; $0db1 : $b7
	push de                                                  ; $0db2 : $d5
	jr z, br_01_0dcc                                                  ; $0db3 : $28, $17

	ld c, $08                                                  ; $0db5 : $0e, $08

br_01_0db7:
	push bc                                                  ; $0db7 : $c5
	rra                                                  ; $0db8 : $1f
	ld b, a                                                  ; $0db9 : $47
	call c, Call_01_0d33                                                  ; $0dba : $dc, $33, $0d
	call Call_01_0d90                                                  ; $0dbd : $cd, $90, $0d
	ld a, b                                                  ; $0dc0 : $78
	pop bc                                                  ; $0dc1 : $c1
	dec c                                                  ; $0dc2 : $0d
	jr nz, br_01_0db7                                                  ; $0dc3 : $20, $f2

br_01_0dc5:
	pop de                                                  ; $0dc5 : $d1
	dec b                                                  ; $0dc6 : $05
	jr nz, br_01_0daf                                                  ; $0dc7 : $20, $e6

	jp Jump_01_0cd8                                                  ; $0dc9 : $c3, $d8, $0c


br_01_0dcc:
	ld hl, $4123                                                  ; $0dcc : $21, $23, $41
	call Call_01_0d70                                                  ; $0dcf : $cd, $70, $0d
	jr br_01_0dc5                                                  ; $0dd2 : $18, $f1

	nop                                                  ; $0dd4 : $00
	nop                                                  ; $0dd5 : $00
	nop                                                  ; $0dd6 : $00
	nop                                                  ; $0dd7 : $00
	nop                                                  ; $0dd8 : $00
	nop                                                  ; $0dd9 : $00
	jr nz, br_01_0d60                                                  ; $0dda : $20, $84

Call_01_0ddc:
	ld de, $0dd4                                                  ; $0ddc : $11, $d4, $0d
	ld hl, $4127                                                  ; $0ddf : $21, $27, $41
	call Call_01_09d3                                                  ; $0de2 : $cd, $d3, $09
	ld a, ($412e)                                                  ; $0de5 : $3a, $2e, $41
	or a                                                  ; $0de8 : $b7
	jp z, $199a                                                  ; $0de9 : $ca, $9a, $19
	call Call_01_0907                                                  ; $0dec : $cd, $07, $09
	inc (hl)                                                  ; $0def : $34
	inc (hl)                                                  ; $0df0 : $34
	call Call_01_0e39                                                  ; $0df1 : $cd, $39, $0e
	ld hl, $4151                                                  ; $0df4 : $21, $51, $41
	ld (hl), c                                                  ; $0df7 : $71
	ld b, c                                                  ; $0df8 : $41

br_01_0df9:
	ld de, $414a                                                  ; $0df9 : $11, $4a, $41
	ld hl, $4127                                                  ; $0dfc : $21, $27, $41
	call Call_01_0d4b                                                  ; $0dff : $cd, $4b, $0d
	ld a, (de)                                                  ; $0e02 : $1a
	sbc a, c                                                  ; $0e03 : $99
	ccf                                                  ; $0e04 : $3f
	jr c, $0b                                                  ; $0e05 : $38, $0b

	ld de, $414a                                                  ; $0e07 : $11, $4a, $41
	ld hl, $4127                                                  ; $0e0a : $21, $27, $41
	call Call_01_0d39                                                  ; $0e0d : $cd, $39, $0d
	xor a                                                  ; $0e10 : $af
	jp c, $0412                                                  ; $0e11 : $da, $12, $04
	ld a, ($4123)                                                  ; $0e14 : $3a, $23, $41
	inc a                                                  ; $0e17 : $3c
	dec a                                                  ; $0e18 : $3d
	rra                                                  ; $0e19 : $1f
	jp m, Jump_01_0d11                                                  ; $0e1a : $fa, $11, $0d
	rla                                                  ; $0e1d : $17
	ld hl, $411d                                                  ; $0e1e : $21, $1d, $41
	ld c, $07                                                  ; $0e21 : $0e, $07
	call Call_01_0d99                                                  ; $0e23 : $cd, $99, $0d
	ld hl, $414a                                                  ; $0e26 : $21, $4a, $41
	call Call_01_0d97                                                  ; $0e29 : $cd, $97, $0d
	ld a, b                                                  ; $0e2c : $78
	or a                                                  ; $0e2d : $b7
	jr nz, br_01_0df9                                                  ; $0e2e : $20, $c9

	ld hl, $4124                                                  ; $0e30 : $21, $24, $41
	dec (hl)                                                  ; $0e33 : $35
	jr nz, br_01_0df9                                                  ; $0e34 : $20, $c3

	jp Jump_01_07b2                                                  ; $0e36 : $c3, $b2, $07


Call_01_0e39:
	ld a, c                                                  ; $0e39 : $79
	ld ($412d), a                                                  ; $0e3a : $32, $2d, $41
	dec hl                                                  ; $0e3d : $2b
	ld de, $4150                                                  ; $0e3e : $11, $50, $41
	ld bc, $0700                                                  ; $0e41 : $01, $00, $07

br_01_0e44:
	ld a, (hl)                                                  ; $0e44 : $7e
	ld (de), a                                                  ; $0e45 : $12
	ld (hl), c                                                  ; $0e46 : $71
	dec de                                                  ; $0e47 : $1b
	dec hl                                                  ; $0e48 : $2b
	dec b                                                  ; $0e49 : $05
	jr nz, br_01_0e44                                                  ; $0e4a : $20, $f8

	ret                                                  ; $0e4c : $c9


Call_01_0e4d:
	call Call_01_09fc                                                  ; $0e4d : $cd, $fc, $09
	ex de, hl                                                  ; $0e50 : $eb
	dec hl                                                  ; $0e51 : $2b
	ld a, (hl)                                                  ; $0e52 : $7e
	or a                                                  ; $0e53 : $b7
	ret z                                                  ; $0e54 : $c8

	add a, $02                                                  ; $0e55 : $c6, $02
	jp c, Jump_01_07b2                                                  ; $0e57 : $da, $b2, $07
	ld (hl), a                                                  ; $0e5a : $77
	push hl                                                  ; $0e5b : $e5
	call Call_01_0c77                                                  ; $0e5c : $cd, $77, $0c
	pop hl                                                  ; $0e5f : $e1
	inc (hl)                                                  ; $0e60 : $34
	ret nz                                                  ; $0e61 : $c0

	jp Jump_01_07b2                                                  ; $0e62 : $c3, $b2, $07


Call_01_0e65:
Jump_01_0e65:
	call Call_01_0778                                                  ; $0e65 : $cd, $78, $07
	call Call_01_0aec                                                  ; $0e68 : $cd, $ec, $0a
	or $af                                                  ; $0e6b : $f6, $af
	ex de, hl                                                  ; $0e6d : $eb
	ld bc, $00ff                                                  ; $0e6e : $01, $ff, $00
	ld h, b                                                  ; $0e71 : $60
	ld l, b                                                  ; $0e72 : $68
	call z, Call_01_0a9a                                                  ; $0e73 : $cc, $9a, $0a
	ex de, hl                                                  ; $0e76 : $eb
	ld a, (hl)                                                  ; $0e77 : $7e
	cp $2d                                                  ; $0e78 : $fe, $2d
	push af                                                  ; $0e7a : $f5
	jp z, Jump_01_0e83                                                  ; $0e7b : $ca, $83, $0e
	cp $2b                                                  ; $0e7e : $fe, $2b
	jr z, br_01_0e83                                                  ; $0e80 : $28, $01

	dec hl                                                  ; $0e82 : $2b

Jump_01_0e83:
br_01_0e83:
	rst $10                                                  ; $0e83 : $d7
	jp c, Jump_01_0f29                                                  ; $0e84 : $da, $29, $0f
	cp $2e                                                  ; $0e87 : $fe, $2e
	jp z, Jump_01_0ee4                                                  ; $0e89 : $ca, $e4, $0e
	cp $45                                                  ; $0e8c : $fe, $45
	jr z, br_01_0ea4                                                  ; $0e8e : $28, $14

	cp $25                                                  ; $0e90 : $fe, $25
	jp z, Jump_01_0eee                                                  ; $0e92 : $ca, $ee, $0e
	cp $23                                                  ; $0e95 : $fe, $23
	jp z, Jump_01_0ef5                                                  ; $0e97 : $ca, $f5, $0e
	cp $21                                                  ; $0e9a : $fe, $21
	jp z, Jump_01_0ef6                                                  ; $0e9c : $ca, $f6, $0e
	cp $44                                                  ; $0e9f : $fe, $44
	jr nz, br_01_0ec7                                                  ; $0ea1 : $20, $24

	or a                                                  ; $0ea3 : $b7

br_01_0ea4:
	call Call_01_0efb                                                  ; $0ea4 : $cd, $fb, $0e
	push hl                                                  ; $0ea7 : $e5
	ld hl, $0ebd                                                  ; $0ea8 : $21, $bd, $0e
	ex (sp), hl                                                  ; $0eab : $e3
	rst $10                                                  ; $0eac : $d7
	dec d                                                  ; $0ead : $15
	cp $ce                                                  ; $0eae : $fe, $ce
	ret z                                                  ; $0eb0 : $c8

	cp $2d                                                  ; $0eb1 : $fe, $2d
	ret z                                                  ; $0eb3 : $c8

	inc d                                                  ; $0eb4 : $14
	cp $cd                                                  ; $0eb5 : $fe, $cd
	ret z                                                  ; $0eb7 : $c8

	cp $2b                                                  ; $0eb8 : $fe, $2b
	ret z                                                  ; $0eba : $c8

	dec hl                                                  ; $0ebb : $2b
	pop af                                                  ; $0ebc : $f1

Jump_01_0ebd:
	rst $10                                                  ; $0ebd : $d7
	jp c, Jump_01_0f94                                                  ; $0ebe : $da, $94, $0f
	inc d                                                  ; $0ec1 : $14
	jr nz, br_01_0ec7                                                  ; $0ec2 : $20, $03

	xor a                                                  ; $0ec4 : $af
	sub e                                                  ; $0ec5 : $93
	ld e, a                                                  ; $0ec6 : $5f

br_01_0ec7:
	push hl                                                  ; $0ec7 : $e5
	ld a, e                                                  ; $0ec8 : $7b
	sub b                                                  ; $0ec9 : $90

br_01_0eca:
	call p, Call_01_0f0a                                                  ; $0eca : $f4, $0a, $0f
	call m, Call_01_0f18                                                  ; $0ecd : $fc, $18, $0f
	jr nz, br_01_0eca                                                  ; $0ed0 : $20, $f8

	pop hl                                                  ; $0ed2 : $e1
	pop af                                                  ; $0ed3 : $f1
	push hl                                                  ; $0ed4 : $e5
	call z, Call_01_097b                                                  ; $0ed5 : $cc, $7b, $09
	pop hl                                                  ; $0ed8 : $e1
	rst $20                                                  ; $0ed9 : $e7
	ret pe                                                  ; $0eda : $e8

	push hl                                                  ; $0edb : $e5
	ld hl, $0890                                                  ; $0edc : $21, $90, $08
	push hl                                                  ; $0edf : $e5
	call Call_01_0aa3                                                  ; $0ee0 : $cd, $a3, $0a
	ret                                                  ; $0ee3 : $c9


Jump_01_0ee4:
	rst $20                                                  ; $0ee4 : $e7
	inc c                                                  ; $0ee5 : $0c
	jr nz, br_01_0ec7                                                  ; $0ee6 : $20, $df

	call c, Call_01_0efb                                                  ; $0ee8 : $dc, $fb, $0e
	jp Jump_01_0e83                                                  ; $0eeb : $c3, $83, $0e


Jump_01_0eee:
	rst $20                                                  ; $0eee : $e7
	jp p, Jump_01_1997                                                  ; $0eef : $f2, $97, $19

br_01_0ef2:
	inc hl                                                  ; $0ef2 : $23
	jr br_01_0ec7                                                  ; $0ef3 : $18, $d2

Jump_01_0ef5:
	or a                                                  ; $0ef5 : $b7

Jump_01_0ef6:
	call Call_01_0efb                                                  ; $0ef6 : $cd, $fb, $0e
	jr br_01_0ef2                                                  ; $0ef9 : $18, $f7

Call_01_0efb:
	push hl                                                  ; $0efb : $e5
	push de                                                  ; $0efc : $d5
	push bc                                                  ; $0efd : $c5
	push af                                                  ; $0efe : $f5
	call z, Call_01_0ab1                                                  ; $0eff : $cc, $b1, $0a
	pop af                                                  ; $0f02 : $f1
	call nz, Call_01_0adb                                                  ; $0f03 : $c4, $db, $0a
	pop bc                                                  ; $0f06 : $c1
	pop de                                                  ; $0f07 : $d1
	pop hl                                                  ; $0f08 : $e1
	ret                                                  ; $0f09 : $c9


Call_01_0f0a:
	ret z                                                  ; $0f0a : $c8

Call_01_0f0b:
	push af                                                  ; $0f0b : $f5
	rst $20                                                  ; $0f0c : $e7
	push af                                                  ; $0f0d : $f5
	call po, Call_01_093e                                                  ; $0f0e : $e4, $3e, $09
	pop af                                                  ; $0f11 : $f1
	call pe, Call_01_0e4d                                                  ; $0f12 : $ec, $4d, $0e
	pop af                                                  ; $0f15 : $f1

Call_01_0f16:
	dec a                                                  ; $0f16 : $3d
	ret                                                  ; $0f17 : $c9


Call_01_0f18:
	push de                                                  ; $0f18 : $d5
	push hl                                                  ; $0f19 : $e5
	push af                                                  ; $0f1a : $f5
	rst $20                                                  ; $0f1b : $e7
	push af                                                  ; $0f1c : $f5
	call po, Call_01_0897                                                  ; $0f1d : $e4, $97, $08
	pop af                                                  ; $0f20 : $f1
	call pe, Call_01_0ddc                                                  ; $0f21 : $ec, $dc, $0d
	pop af                                                  ; $0f24 : $f1
	pop hl                                                  ; $0f25 : $e1
	pop de                                                  ; $0f26 : $d1
	inc a                                                  ; $0f27 : $3c
	ret                                                  ; $0f28 : $c9


Jump_01_0f29:
	push de                                                  ; $0f29 : $d5
	ld a, b                                                  ; $0f2a : $78
	adc a, c                                                  ; $0f2b : $89
	ld b, a                                                  ; $0f2c : $47
	push bc                                                  ; $0f2d : $c5
	push hl                                                  ; $0f2e : $e5
	ld a, (hl)                                                  ; $0f2f : $7e
	sub $30                                                  ; $0f30 : $d6, $30
	push af                                                  ; $0f32 : $f5
	rst $20                                                  ; $0f33 : $e7
	jp p, Jump_01_0f5d                                                  ; $0f34 : $f2, $5d, $0f
	ld hl, ($4121)                                                  ; $0f37 : $2a, $21, $41
	ld de, $0ccd                                                  ; $0f3a : $11, $cd, $0c
	rst $18                                                  ; $0f3d : $df
	jr nc, br_01_0f59                                                  ; $0f3e : $30, $19

	ld d, h                                                  ; $0f40 : $54
	ld e, l                                                  ; $0f41 : $5d
	add hl, hl                                                  ; $0f42 : $29
	add hl, hl                                                  ; $0f43 : $29
	add hl, de                                                  ; $0f44 : $19
	add hl, hl                                                  ; $0f45 : $29
	pop af                                                  ; $0f46 : $f1
	ld c, a                                                  ; $0f47 : $4f
	add hl, bc                                                  ; $0f48 : $09
	ld a, h                                                  ; $0f49 : $7c
	or a                                                  ; $0f4a : $b7
	jp m, Jump_01_0f57                                                  ; $0f4b : $fa, $57, $0f
	ld ($4121), hl                                                  ; $0f4e : $22, $21, $41

br_01_0f51:
	pop hl                                                  ; $0f51 : $e1
	pop bc                                                  ; $0f52 : $c1
	pop de                                                  ; $0f53 : $d1
	jp Jump_01_0e83                                                  ; $0f54 : $c3, $83, $0e


Jump_01_0f57:
	ld a, c                                                  ; $0f57 : $79
	push af                                                  ; $0f58 : $f5

br_01_0f59:
	call Call_01_0acc                                                  ; $0f59 : $cd, $cc, $0a
	scf                                                  ; $0f5c : $37

Jump_01_0f5d:
	jr nc, br_01_0f77                                                  ; $0f5d : $30, $18

	ld bc, $9474                                                  ; $0f5f : $01, $74, $94
	ld de, $2400                                                  ; $0f62 : $11, $00, $24
	call Call_01_0a0c                                                  ; $0f65 : $cd, $0c, $0a
	jp p, Jump_01_0f74                                                  ; $0f68 : $f2, $74, $0f
	call Call_01_093e                                                  ; $0f6b : $cd, $3e, $09
	pop af                                                  ; $0f6e : $f1
	call Call_01_0f89                                                  ; $0f6f : $cd, $89, $0f
	jr br_01_0f51                                                  ; $0f72 : $18, $dd

Jump_01_0f74:
	call Call_01_0ae3                                                  ; $0f74 : $cd, $e3, $0a

br_01_0f77:
	call Call_01_0e4d                                                  ; $0f77 : $cd, $4d, $0e
	call Call_01_09fc                                                  ; $0f7a : $cd, $fc, $09
	pop af                                                  ; $0f7d : $f1
	call Call_01_0964                                                  ; $0f7e : $cd, $64, $09
	call Call_01_0ae3                                                  ; $0f81 : $cd, $e3, $0a
	call Call_01_0c77                                                  ; $0f84 : $cd, $77, $0c
	jr br_01_0f51                                                  ; $0f87 : $18, $c8

Call_01_0f89:
	call Call_01_09a4                                                  ; $0f89 : $cd, $a4, $09
	call Call_01_0964                                                  ; $0f8c : $cd, $64, $09

Jump_01_0f8f:
	pop bc                                                  ; $0f8f : $c1
	pop de                                                  ; $0f90 : $d1
	jp Jump_01_0716                                                  ; $0f91 : $c3, $16, $07


Jump_01_0f94:
	ld a, e                                                  ; $0f94 : $7b
	cp $0a                                                  ; $0f95 : $fe, $0a
	jr nc, $09                                                  ; $0f97 : $30, $09

	rlca                                                  ; $0f99 : $07
	rlca                                                  ; $0f9a : $07
	add a, e                                                  ; $0f9b : $83
	rlca                                                  ; $0f9c : $07
	add a, (hl)                                                  ; $0f9d : $86
	sub $30                                                  ; $0f9e : $d6, $30
	ld e, a                                                  ; $0fa0 : $5f
	jp m, $321e                                                  ; $0fa1 : $fa, $1e, $32
	jp Jump_01_0ebd                                                  ; $0fa4 : $c3, $bd, $0e


Call_01_0fa7:
	push hl                                                  ; $0fa7 : $e5
	ld hl, $1924                                                  ; $0fa8 : $21, $24, $19
	call Call_01_28a7                                                  ; $0fab : $cd, $a7, $28
	pop hl                                                  ; $0fae : $e1

Call_01_0faf:
	call Call_01_0a9a                                                  ; $0faf : $cd, $9a, $0a
	xor a                                                  ; $0fb2 : $af
	call Call_01_1034                                                  ; $0fb3 : $cd, $34, $10
	or (hl)                                                  ; $0fb6 : $b6
	call Call_01_0fd9                                                  ; $0fb7 : $cd, $d9, $0f
	jp Jump_01_28a6                                                  ; $0fba : $c3, $a6, $28


Call_01_0fbd:
	xor a                                                  ; $0fbd : $af

Call_01_0fbe:
	call Call_01_1034                                                  ; $0fbe : $cd, $34, $10
	and $08                                                  ; $0fc1 : $e6, $08
	jr z, br_01_0fc7                                                  ; $0fc3 : $28, $02

	ld (hl), $2b                                                  ; $0fc5 : $36, $2b

br_01_0fc7:
	ex de, hl                                                  ; $0fc7 : $eb
	call Call_01_0994                                                  ; $0fc8 : $cd, $94, $09
	ex de, hl                                                  ; $0fcb : $eb
	jp p, Jump_01_0fd9                                                  ; $0fcc : $f2, $d9, $0f
	ld (hl), $2d                                                  ; $0fcf : $36, $2d
	push bc                                                  ; $0fd1 : $c5
	push hl                                                  ; $0fd2 : $e5
	call Call_01_097b                                                  ; $0fd3 : $cd, $7b, $09
	pop hl                                                  ; $0fd6 : $e1
	pop bc                                                  ; $0fd7 : $c1
	or h                                                  ; $0fd8 : $b4

Call_01_0fd9:
Jump_01_0fd9:
	inc hl                                                  ; $0fd9 : $23
	ld (hl), $30                                                  ; $0fda : $36, $30
	ld a, ($40d8)                                                  ; $0fdc : $3a, $d8, $40
	ld d, a                                                  ; $0fdf : $57
	rla                                                  ; $0fe0 : $17
	ld a, ($40af)                                                  ; $0fe1 : $3a, $af, $40
	jp c, Jump_01_109a                                                  ; $0fe4 : $da, $9a, $10
	jp z, Jump_01_1092                                                  ; $0fe7 : $ca, $92, $10
	cp $04                                                  ; $0fea : $fe, $04
	jp nc, Jump_01_103d                                                  ; $0fec : $d2, $3d, $10
	ld bc, $0000                                                  ; $0fef : $01, $00, $00
	call Call_01_132f                                                  ; $0ff2 : $cd, $2f, $13

Call_01_0ff5:
	ld hl, $4130                                                  ; $0ff5 : $21, $30, $41
	ld b, (hl)                                                  ; $0ff8 : $46
	ld c, $20                                                  ; $0ff9 : $0e, $20
	ld a, ($40d8)                                                  ; $0ffb : $3a, $d8, $40
	ld e, a                                                  ; $0ffe : $5f
	and $20                                                  ; $0fff : $e6, $20
	jr z, br_01_100a                                                  ; $1001 : $28, $07

	ld a, b                                                  ; $1003 : $78
	cp c                                                  ; $1004 : $b9
	ld c, $2a                                                  ; $1005 : $0e, $2a
	jr nz, br_01_100a                                                  ; $1007 : $20, $01

	ld b, c                                                  ; $1009 : $41

br_01_100a:
	ld (hl), c                                                  ; $100a : $71
	rst $10                                                  ; $100b : $d7
	jr z, br_01_1022                                                  ; $100c : $28, $14

	cp $45                                                  ; $100e : $fe, $45
	jr z, br_01_1022                                                  ; $1010 : $28, $10

	cp $44                                                  ; $1012 : $fe, $44
	jr z, br_01_1022                                                  ; $1014 : $28, $0c

	cp $30                                                  ; $1016 : $fe, $30
	jr z, br_01_100a                                                  ; $1018 : $28, $f0

	cp $2c                                                  ; $101a : $fe, $2c
	jr z, br_01_100a                                                  ; $101c : $28, $ec

	cp $2e                                                  ; $101e : $fe, $2e
	jr nz, br_01_1025                                                  ; $1020 : $20, $03

br_01_1022:
	dec hl                                                  ; $1022 : $2b
	ld (hl), $30                                                  ; $1023 : $36, $30

br_01_1025:
	ld a, e                                                  ; $1025 : $7b
	and $10                                                  ; $1026 : $e6, $10
	jr z, br_01_102d                                                  ; $1028 : $28, $03

	dec hl                                                  ; $102a : $2b
	ld (hl), $24                                                  ; $102b : $36, $24

br_01_102d:
	ld a, e                                                  ; $102d : $7b
	and $04                                                  ; $102e : $e6, $04
	ret nz                                                  ; $1030 : $c0

	dec hl                                                  ; $1031 : $2b
	ld (hl), b                                                  ; $1032 : $70
	ret                                                  ; $1033 : $c9


Call_01_1034:
	ld ($40d8), a                                                  ; $1034 : $32, $d8, $40
	ld hl, $4130                                                  ; $1037 : $21, $30, $41
	ld (hl), $20                                                  ; $103a : $36, $20
	ret                                                  ; $103c : $c9


Jump_01_103d:
	cp $05                                                  ; $103d : $fe, $05
	push hl                                                  ; $103f : $e5
	sbc a, $00                                                  ; $1040 : $de, $00
	rla                                                  ; $1042 : $17
	ld d, a                                                  ; $1043 : $57
	inc d                                                  ; $1044 : $14
	call Call_01_1201                                                  ; $1045 : $cd, $01, $12
	ld bc, $0300                                                  ; $1048 : $01, $00, $03
	add a, d                                                  ; $104b : $82
	jp m, Jump_01_1057                                                  ; $104c : $fa, $57, $10
	inc d                                                  ; $104f : $14
	cp d                                                  ; $1050 : $ba
	jr nc, br_01_1057                                                  ; $1051 : $30, $04

	inc a                                                  ; $1053 : $3c
	ld b, a                                                  ; $1054 : $47
	ld a, $02                                                  ; $1055 : $3e, $02

Jump_01_1057:
br_01_1057:
	sub $02                                                  ; $1057 : $d6, $02
	pop hl                                                  ; $1059 : $e1
	push af                                                  ; $105a : $f5
	call Call_01_1291                                                  ; $105b : $cd, $91, $12
	ld (hl), $30                                                  ; $105e : $36, $30
	call z, Call_01_09c9                                                  ; $1060 : $cc, $c9, $09
	call Call_01_12a4                                                  ; $1063 : $cd, $a4, $12

br_01_1066:
	dec hl                                                  ; $1066 : $2b
	ld a, (hl)                                                  ; $1067 : $7e
	cp $30                                                  ; $1068 : $fe, $30
	jr z, br_01_1066                                                  ; $106a : $28, $fa

	cp $2e                                                  ; $106c : $fe, $2e
	call nz, Call_01_09c9                                                  ; $106e : $c4, $c9, $09
	pop af                                                  ; $1071 : $f1
	jr z, br_01_1093                                                  ; $1072 : $28, $1f

Call_01_1074:
	push af                                                  ; $1074 : $f5
	rst $20                                                  ; $1075 : $e7
	ld a, $22                                                  ; $1076 : $3e, $22
	adc a, a                                                  ; $1078 : $8f
	ld (hl), a                                                  ; $1079 : $77
	inc hl                                                  ; $107a : $23
	pop af                                                  ; $107b : $f1
	ld (hl), $2b                                                  ; $107c : $36, $2b
	jp p, Jump_01_1085                                                  ; $107e : $f2, $85, $10
	ld (hl), $2d                                                  ; $1081 : $36, $2d
	cpl                                                  ; $1083 : $2f
	inc a                                                  ; $1084 : $3c

Jump_01_1085:
	ld b, $2f                                                  ; $1085 : $06, $2f

br_01_1087:
	inc b                                                  ; $1087 : $04
	sub $0a                                                  ; $1088 : $d6, $0a
	jr nc, br_01_1087                                                  ; $108a : $30, $fb

	add a, $3a                                                  ; $108c : $c6, $3a
	inc hl                                                  ; $108e : $23
	ld (hl), b                                                  ; $108f : $70
	inc hl                                                  ; $1090 : $23
	ld (hl), a                                                  ; $1091 : $77

Jump_01_1092:
	inc hl                                                  ; $1092 : $23

br_01_1093:
	ld (hl), $00                                                  ; $1093 : $36, $00
	ex de, hl                                                  ; $1095 : $eb
	ld hl, $4130                                                  ; $1096 : $21, $30, $41
	ret                                                  ; $1099 : $c9


Jump_01_109a:
	inc hl                                                  ; $109a : $23
	push bc                                                  ; $109b : $c5
	cp $04                                                  ; $109c : $fe, $04
	ld a, d                                                  ; $109e : $7a
	jp nc, Jump_01_1109                                                  ; $109f : $d2, $09, $11
	rra                                                  ; $10a2 : $1f
	jp c, Jump_01_11a3                                                  ; $10a3 : $da, $a3, $11
	ld bc, $0603                                                  ; $10a6 : $01, $03, $06
	call Call_01_1289                                                  ; $10a9 : $cd, $89, $12
	pop de                                                  ; $10ac : $d1
	ld a, d                                                  ; $10ad : $7a
	sub $05                                                  ; $10ae : $d6, $05
	call p, Call_01_1269                                                  ; $10b0 : $f4, $69, $12
	call Call_01_132f                                                  ; $10b3 : $cd, $2f, $13

Jump_01_10b6:
	ld a, e                                                  ; $10b6 : $7b
	or a                                                  ; $10b7 : $b7
	call z, Call_01_092f                                                  ; $10b8 : $cc, $2f, $09
	dec a                                                  ; $10bb : $3d
	call p, Call_01_1269                                                  ; $10bc : $f4, $69, $12

Jump_01_10bf:
	push hl                                                  ; $10bf : $e5
	call Call_01_0ff5                                                  ; $10c0 : $cd, $f5, $0f
	pop hl                                                  ; $10c3 : $e1
	jr z, br_01_10c8                                                  ; $10c4 : $28, $02

	ld (hl), b                                                  ; $10c6 : $70
	inc hl                                                  ; $10c7 : $23

br_01_10c8:
	ld (hl), $00                                                  ; $10c8 : $36, $00
	ld hl, $412f                                                  ; $10ca : $21, $2f, $41

br_01_10cd:
	inc hl                                                  ; $10cd : $23

Jump_01_10ce:
	ld a, ($40f3)                                                  ; $10ce : $3a, $f3, $40
	sub l                                                  ; $10d1 : $95
	sub d                                                  ; $10d2 : $92
	ret z                                                  ; $10d3 : $c8

	ld a, (hl)                                                  ; $10d4 : $7e
	cp $20                                                  ; $10d5 : $fe, $20
	jr z, br_01_10cd                                                  ; $10d7 : $28, $f4

	cp $2a                                                  ; $10d9 : $fe, $2a
	jr z, br_01_10cd                                                  ; $10db : $28, $f0

	dec hl                                                  ; $10dd : $2b
	push hl                                                  ; $10de : $e5
	push af                                                  ; $10df : $f5
	ld bc, $10df                                                  ; $10e0 : $01, $df, $10
	push bc                                                  ; $10e3 : $c5
	rst $10                                                  ; $10e4 : $d7
	cp $2d                                                  ; $10e5 : $fe, $2d
	ret z                                                  ; $10e7 : $c8

	cp $2b                                                  ; $10e8 : $fe, $2b
	ret z                                                  ; $10ea : $c8

	cp $24                                                  ; $10eb : $fe, $24
	ret z                                                  ; $10ed : $c8

	pop bc                                                  ; $10ee : $c1
	cp $30                                                  ; $10ef : $fe, $30
	jr nz, br_01_1102                                                  ; $10f1 : $20, $0f

	inc hl                                                  ; $10f3 : $23
	rst $10                                                  ; $10f4 : $d7
	jr nc, br_01_1102                                                  ; $10f5 : $30, $0b

	dec hl                                                  ; $10f7 : $2b
	ld bc, $772b                                                  ; $10f8 : $01, $2b, $77
	pop af                                                  ; $10fb : $f1
	jr z, -$05                                                  ; $10fc : $28, $fb

	pop bc                                                  ; $10fe : $c1
	jp Jump_01_10ce                                                  ; $10ff : $c3, $ce, $10


br_01_1102:
	pop af                                                  ; $1102 : $f1
	jr z, br_01_1102                                                  ; $1103 : $28, $fd

	pop hl                                                  ; $1105 : $e1
	ld (hl), $25                                                  ; $1106 : $36, $25
	ret                                                  ; $1108 : $c9


Jump_01_1109:
	push hl                                                  ; $1109 : $e5
	rra                                                  ; $110a : $1f
	jp c, Jump_01_11aa                                                  ; $110b : $da, $aa, $11
	jr z, br_01_1124                                                  ; $110e : $28, $14

	ld de, $1384                                                  ; $1110 : $11, $84, $13
	call Call_01_0a49                                                  ; $1113 : $cd, $49, $0a
	ld d, $10                                                  ; $1116 : $16, $10
	jp m, Jump_01_1132                                                  ; $1118 : $fa, $32, $11

Jump_01_111b:
	pop hl                                                  ; $111b : $e1
	pop bc                                                  ; $111c : $c1
	call Call_01_0fbd                                                  ; $111d : $cd, $bd, $0f
	dec hl                                                  ; $1120 : $2b
	ld (hl), $25                                                  ; $1121 : $36, $25
	ret                                                  ; $1123 : $c9


br_01_1124:
	ld bc, $b60e                                                  ; $1124 : $01, $0e, $b6
	ld de, $1bca                                                  ; $1127 : $11, $ca, $1b
	call Call_01_0a0c                                                  ; $112a : $cd, $0c, $0a
	jp p, Jump_01_111b                                                  ; $112d : $f2, $1b, $11
	ld d, $06                                                  ; $1130 : $16, $06

Jump_01_1132:
	call Call_01_0955                                                  ; $1132 : $cd, $55, $09
	call nz, Call_01_1201                                                  ; $1135 : $c4, $01, $12
	pop hl                                                  ; $1138 : $e1
	pop bc                                                  ; $1139 : $c1
	jp m, Jump_01_1157                                                  ; $113a : $fa, $57, $11
	push bc                                                  ; $113d : $c5
	ld e, a                                                  ; $113e : $5f
	ld a, b                                                  ; $113f : $78
	sub d                                                  ; $1140 : $92
	sub e                                                  ; $1141 : $93
	call p, Call_01_1269                                                  ; $1142 : $f4, $69, $12
	call Call_01_127d                                                  ; $1145 : $cd, $7d, $12
	call Call_01_12a4                                                  ; $1148 : $cd, $a4, $12
	or e                                                  ; $114b : $b3
	call nz, Call_01_1277                                                  ; $114c : $c4, $77, $12
	or e                                                  ; $114f : $b3
	call nz, Call_01_1291                                                  ; $1150 : $c4, $91, $12
	pop de                                                  ; $1153 : $d1
	jp Jump_01_10b6                                                  ; $1154 : $c3, $b6, $10


Jump_01_1157:
	ld e, a                                                  ; $1157 : $5f
	ld a, c                                                  ; $1158 : $79
	or a                                                  ; $1159 : $b7
	call nz, Call_01_0f16                                                  ; $115a : $c4, $16, $0f
	add a, e                                                  ; $115d : $83
	jp m, Jump_01_1162                                                  ; $115e : $fa, $62, $11
	xor a                                                  ; $1161 : $af

Jump_01_1162:
	push bc                                                  ; $1162 : $c5
	push af                                                  ; $1163 : $f5

Jump_01_1164:
	call m, Call_01_0f18                                                  ; $1164 : $fc, $18, $0f
	jp m, Jump_01_1164                                                  ; $1167 : $fa, $64, $11
	pop bc                                                  ; $116a : $c1
	ld a, e                                                  ; $116b : $7b
	sub b                                                  ; $116c : $90
	pop bc                                                  ; $116d : $c1
	ld e, a                                                  ; $116e : $5f
	add a, d                                                  ; $116f : $82
	ld a, b                                                  ; $1170 : $78
	jp m, Jump_01_117f                                                  ; $1171 : $fa, $7f, $11
	sub d                                                  ; $1174 : $92
	sub e                                                  ; $1175 : $93
	call p, Call_01_1269                                                  ; $1176 : $f4, $69, $12
	push bc                                                  ; $1179 : $c5
	call Call_01_127d                                                  ; $117a : $cd, $7d, $12
	jr br_01_1190                                                  ; $117d : $18, $11

Jump_01_117f:
	call Call_01_1269                                                  ; $117f : $cd, $69, $12
	ld a, c                                                  ; $1182 : $79
	call Call_01_1294                                                  ; $1183 : $cd, $94, $12
	ld c, a                                                  ; $1186 : $4f
	xor a                                                  ; $1187 : $af
	sub d                                                  ; $1188 : $92
	sub e                                                  ; $1189 : $93
	call Call_01_1269                                                  ; $118a : $cd, $69, $12
	push bc                                                  ; $118d : $c5
	ld b, a                                                  ; $118e : $47
	ld c, a                                                  ; $118f : $4f

br_01_1190:
	call Call_01_12a4                                                  ; $1190 : $cd, $a4, $12
	pop bc                                                  ; $1193 : $c1
	or c                                                  ; $1194 : $b1
	jr nz, br_01_119a                                                  ; $1195 : $20, $03

	ld hl, ($40f3)                                                  ; $1197 : $2a, $f3, $40

br_01_119a:
	add a, e                                                  ; $119a : $83
	dec a                                                  ; $119b : $3d
	call p, Call_01_1269                                                  ; $119c : $f4, $69, $12
	ld d, b                                                  ; $119f : $50
	jp Jump_01_10bf                                                  ; $11a0 : $c3, $bf, $10


Jump_01_11a3:
	push hl                                                  ; $11a3 : $e5
	push de                                                  ; $11a4 : $d5
	call Call_01_0acc                                                  ; $11a5 : $cd, $cc, $0a
	pop de                                                  ; $11a8 : $d1
	xor a                                                  ; $11a9 : $af

Jump_01_11aa:
	jp z, $11b0                                                  ; $11aa : $ca, $b0, $11
	ld e, $10                                                  ; $11ad : $1e, $10
	ld bc, $061e                                                  ; $11af : $01, $1e, $06
	call Call_01_0955                                                  ; $11b2 : $cd, $55, $09
	scf                                                  ; $11b5 : $37
	call nz, Call_01_1201                                                  ; $11b6 : $c4, $01, $12
	pop hl                                                  ; $11b9 : $e1
	pop bc                                                  ; $11ba : $c1
	push af                                                  ; $11bb : $f5
	ld a, c                                                  ; $11bc : $79
	or a                                                  ; $11bd : $b7
	push af                                                  ; $11be : $f5
	call nz, Call_01_0f16                                                  ; $11bf : $c4, $16, $0f
	add a, b                                                  ; $11c2 : $80
	ld c, a                                                  ; $11c3 : $4f
	ld a, d                                                  ; $11c4 : $7a
	and $04                                                  ; $11c5 : $e6, $04
	cp $01                                                  ; $11c7 : $fe, $01
	sbc a, a                                                  ; $11c9 : $9f
	ld d, a                                                  ; $11ca : $57
	add a, c                                                  ; $11cb : $81
	ld c, a                                                  ; $11cc : $4f
	sub e                                                  ; $11cd : $93
	push af                                                  ; $11ce : $f5
	push bc                                                  ; $11cf : $c5

Jump_01_11d0:
	call m, Call_01_0f18                                                  ; $11d0 : $fc, $18, $0f
	jp m, Jump_01_11d0                                                  ; $11d3 : $fa, $d0, $11
	pop bc                                                  ; $11d6 : $c1
	pop af                                                  ; $11d7 : $f1
	push bc                                                  ; $11d8 : $c5
	push af                                                  ; $11d9 : $f5
	jp m, Jump_01_11de                                                  ; $11da : $fa, $de, $11
	xor a                                                  ; $11dd : $af

Jump_01_11de:
	cpl                                                  ; $11de : $2f
	inc a                                                  ; $11df : $3c
	add a, b                                                  ; $11e0 : $80
	inc a                                                  ; $11e1 : $3c
	add a, d                                                  ; $11e2 : $82
	ld b, a                                                  ; $11e3 : $47
	ld c, $00                                                  ; $11e4 : $0e, $00
	call Call_01_12a4                                                  ; $11e6 : $cd, $a4, $12
	pop af                                                  ; $11e9 : $f1
	call p, Call_01_1271                                                  ; $11ea : $f4, $71, $12
	pop bc                                                  ; $11ed : $c1
	pop af                                                  ; $11ee : $f1
	call z, Call_01_092f                                                  ; $11ef : $cc, $2f, $09
	pop af                                                  ; $11f2 : $f1
	jr c, br_01_11f8                                                  ; $11f3 : $38, $03

	add a, e                                                  ; $11f5 : $83
	sub b                                                  ; $11f6 : $90
	sub d                                                  ; $11f7 : $92

br_01_11f8:
	push bc                                                  ; $11f8 : $c5
	call Call_01_1074                                                  ; $11f9 : $cd, $74, $10
	ex de, hl                                                  ; $11fc : $eb
	pop de                                                  ; $11fd : $d1
	jp Jump_01_10bf                                                  ; $11fe : $c3, $bf, $10


Call_01_1201:
	push de                                                  ; $1201 : $d5
	xor a                                                  ; $1202 : $af
	push af                                                  ; $1203 : $f5
	rst $20                                                  ; $1204 : $e7
	jp po, Jump_01_1222                                                  ; $1205 : $e2, $22, $12

br_01_1208:
	ld a, ($4124)                                                  ; $1208 : $3a, $24, $41
	cp $91                                                  ; $120b : $fe, $91
	jp nc, Jump_01_1222                                                  ; $120d : $d2, $22, $12
	ld de, $1364                                                  ; $1210 : $11, $64, $13
	ld hl, $4127                                                  ; $1213 : $21, $27, $41
	call Call_01_09d3                                                  ; $1216 : $cd, $d3, $09
	call Call_01_0da1                                                  ; $1219 : $cd, $a1, $0d
	pop af                                                  ; $121c : $f1
	sub $0a                                                  ; $121d : $d6, $0a
	push af                                                  ; $121f : $f5
	jr br_01_1208                                                  ; $1220 : $18, $e6

Jump_01_1222:
	call Call_01_124f                                                  ; $1222 : $cd, $4f, $12

br_01_1225:
	rst $20                                                  ; $1225 : $e7
	jp pe, Jump_01_1234                                                  ; $1226 : $ea, $34, $12
	ld bc, $9143                                                  ; $1229 : $01, $43, $91
	ld de, $4ff9                                                  ; $122c : $11, $f9, $4f
	call Call_01_0a0c                                                  ; $122f : $cd, $0c, $0a
	jr br_01_123a                                                  ; $1232 : $18, $06

Jump_01_1234:
	ld de, $136c                                                  ; $1234 : $11, $6c, $13
	call Call_01_0a49                                                  ; $1237 : $cd, $49, $0a

br_01_123a:
	jp p, Jump_01_124c                                                  ; $123a : $f2, $4c, $12
	pop af                                                  ; $123d : $f1
	call Call_01_0f0b                                                  ; $123e : $cd, $0b, $0f
	push af                                                  ; $1241 : $f5
	jr br_01_1225                                                  ; $1242 : $18, $e1

Jump_01_1244:
	pop af                                                  ; $1244 : $f1
	call Call_01_0f18                                                  ; $1245 : $cd, $18, $0f
	push af                                                  ; $1248 : $f5
	call Call_01_124f                                                  ; $1249 : $cd, $4f, $12

Jump_01_124c:
	pop af                                                  ; $124c : $f1
	pop de                                                  ; $124d : $d1
	ret                                                  ; $124e : $c9


Call_01_124f:
	rst $20                                                  ; $124f : $e7
	jp pe, Jump_01_125e                                                  ; $1250 : $ea, $5e, $12
	ld bc, $9474                                                  ; $1253 : $01, $74, $94
	ld de, $23f8                                                  ; $1256 : $11, $f8, $23
	call Call_01_0a0c                                                  ; $1259 : $cd, $0c, $0a
	jr br_01_1264                                                  ; $125c : $18, $06

Jump_01_125e:
	ld de, $1374                                                  ; $125e : $11, $74, $13
	call Call_01_0a49                                                  ; $1261 : $cd, $49, $0a

br_01_1264:
	pop hl                                                  ; $1264 : $e1
	jp p, Jump_01_1244                                                  ; $1265 : $f2, $44, $12
	jp (hl)                                                  ; $1268 : $e9


Call_01_1269:
	or a                                                  ; $1269 : $b7

br_01_126a:
	ret z                                                  ; $126a : $c8

	dec a                                                  ; $126b : $3d
	ld (hl), $30                                                  ; $126c : $36, $30
	inc hl                                                  ; $126e : $23
	jr br_01_126a                                                  ; $126f : $18, $f9

Call_01_1271:
	jr nz, br_01_1277                                                  ; $1271 : $20, $04

br_01_1273:
	ret z                                                  ; $1273 : $c8

	call Call_01_1291                                                  ; $1274 : $cd, $91, $12

Call_01_1277:
br_01_1277:
	ld (hl), $30                                                  ; $1277 : $36, $30
	inc hl                                                  ; $1279 : $23
	dec a                                                  ; $127a : $3d
	jr br_01_1273                                                  ; $127b : $18, $f6

Call_01_127d:
	ld a, e                                                  ; $127d : $7b
	add a, d                                                  ; $127e : $82
	inc a                                                  ; $127f : $3c
	ld b, a                                                  ; $1280 : $47
	inc a                                                  ; $1281 : $3c

br_01_1282:
	sub $03                                                  ; $1282 : $d6, $03
	jr nc, br_01_1282                                                  ; $1284 : $30, $fc

	add a, $05                                                  ; $1286 : $c6, $05
	ld c, a                                                  ; $1288 : $4f

Call_01_1289:
	ld a, ($40d8)                                                  ; $1289 : $3a, $d8, $40
	and $40                                                  ; $128c : $e6, $40
	ret nz                                                  ; $128e : $c0

	ld c, a                                                  ; $128f : $4f
	ret                                                  ; $1290 : $c9


Call_01_1291:
	dec b                                                  ; $1291 : $05
	jr nz, br_01_129c                                                  ; $1292 : $20, $08

Call_01_1294:
	ld (hl), $2e                                                  ; $1294 : $36, $2e
	ld ($40f3), hl                                                  ; $1296 : $22, $f3, $40
	inc hl                                                  ; $1299 : $23
	ld c, b                                                  ; $129a : $48
	ret                                                  ; $129b : $c9


br_01_129c:
	dec c                                                  ; $129c : $0d
	ret nz                                                  ; $129d : $c0

	ld (hl), $2c                                                  ; $129e : $36, $2c
	inc hl                                                  ; $12a0 : $23
	ld c, $03                                                  ; $12a1 : $0e, $03
	ret                                                  ; $12a3 : $c9


Call_01_12a4:
	push de                                                  ; $12a4 : $d5
	rst $20                                                  ; $12a5 : $e7
	jp po, Jump_01_12ea                                                  ; $12a6 : $e2, $ea, $12
	push bc                                                  ; $12a9 : $c5
	push hl                                                  ; $12aa : $e5
	call Call_01_09fc                                                  ; $12ab : $cd, $fc, $09
	ld hl, $137c                                                  ; $12ae : $21, $7c, $13
	call Call_01_09f7                                                  ; $12b1 : $cd, $f7, $09
	call Call_01_0c77                                                  ; $12b4 : $cd, $77, $0c
	xor a                                                  ; $12b7 : $af
	call Call_01_0b7b                                                  ; $12b8 : $cd, $7b, $0b
	pop hl                                                  ; $12bb : $e1
	pop bc                                                  ; $12bc : $c1
	ld de, $138c                                                  ; $12bd : $11, $8c, $13
	ld a, $0a                                                  ; $12c0 : $3e, $0a

br_01_12c2:
	call Call_01_1291                                                  ; $12c2 : $cd, $91, $12
	push bc                                                  ; $12c5 : $c5
	push af                                                  ; $12c6 : $f5
	push hl                                                  ; $12c7 : $e5
	push de                                                  ; $12c8 : $d5
	ld b, $2f                                                  ; $12c9 : $06, $2f

br_01_12cb:
	inc b                                                  ; $12cb : $04
	pop hl                                                  ; $12cc : $e1
	push hl                                                  ; $12cd : $e5
	call Call_01_0d48                                                  ; $12ce : $cd, $48, $0d
	jr nc, br_01_12cb                                                  ; $12d1 : $30, $f8

	pop hl                                                  ; $12d3 : $e1
	call Call_01_0d36                                                  ; $12d4 : $cd, $36, $0d
	ex de, hl                                                  ; $12d7 : $eb
	pop hl                                                  ; $12d8 : $e1
	ld (hl), b                                                  ; $12d9 : $70
	inc hl                                                  ; $12da : $23
	pop af                                                  ; $12db : $f1
	pop bc                                                  ; $12dc : $c1
	dec a                                                  ; $12dd : $3d
	jr nz, br_01_12c2                                                  ; $12de : $20, $e2

	push bc                                                  ; $12e0 : $c5
	push hl                                                  ; $12e1 : $e5
	ld hl, $411d                                                  ; $12e2 : $21, $1d, $41
	call Call_01_09b1                                                  ; $12e5 : $cd, $b1, $09
	jr br_01_12f6                                                  ; $12e8 : $18, $0c

Jump_01_12ea:
	push bc                                                  ; $12ea : $c5
	push hl                                                  ; $12eb : $e5
	call Call_01_0708                                                  ; $12ec : $cd, $08, $07
	inc a                                                  ; $12ef : $3c
	call Call_01_0afb                                                  ; $12f0 : $cd, $fb, $0a
	call Call_01_09b4                                                  ; $12f3 : $cd, $b4, $09

br_01_12f6:
	pop hl                                                  ; $12f6 : $e1
	pop bc                                                  ; $12f7 : $c1
	xor a                                                  ; $12f8 : $af
	ld de, $13d2                                                  ; $12f9 : $11, $d2, $13

br_01_12fc:
	ccf                                                  ; $12fc : $3f
	call Call_01_1291                                                  ; $12fd : $cd, $91, $12
	push bc                                                  ; $1300 : $c5
	push af                                                  ; $1301 : $f5
	push hl                                                  ; $1302 : $e5
	push de                                                  ; $1303 : $d5
	call Call_01_09bf                                                  ; $1304 : $cd, $bf, $09
	pop hl                                                  ; $1307 : $e1
	ld b, $2f                                                  ; $1308 : $06, $2f

br_01_130a:
	inc b                                                  ; $130a : $04
	ld a, e                                                  ; $130b : $7b
	sub (hl)                                                  ; $130c : $96
	ld e, a                                                  ; $130d : $5f
	inc hl                                                  ; $130e : $23
	ld a, d                                                  ; $130f : $7a
	sbc a, (hl)                                                  ; $1310 : $9e
	ld d, a                                                  ; $1311 : $57
	inc hl                                                  ; $1312 : $23
	ld a, c                                                  ; $1313 : $79
	sbc a, (hl)                                                  ; $1314 : $9e
	ld c, a                                                  ; $1315 : $4f
	dec hl                                                  ; $1316 : $2b
	dec hl                                                  ; $1317 : $2b
	jr nc, br_01_130a                                                  ; $1318 : $30, $f0

	call Call_01_07b7                                                  ; $131a : $cd, $b7, $07
	inc hl                                                  ; $131d : $23
	call Call_01_09b4                                                  ; $131e : $cd, $b4, $09
	ex de, hl                                                  ; $1321 : $eb
	pop hl                                                  ; $1322 : $e1
	ld (hl), b                                                  ; $1323 : $70
	inc hl                                                  ; $1324 : $23
	pop af                                                  ; $1325 : $f1
	pop bc                                                  ; $1326 : $c1
	jr c, br_01_12fc                                                  ; $1327 : $38, $d3

	inc de                                                  ; $1329 : $13
	inc de                                                  ; $132a : $13
	ld a, $04                                                  ; $132b : $3e, $04
	jr br_01_1335                                                  ; $132d : $18, $06

Call_01_132f:
	push de                                                  ; $132f : $d5
	ld de, $13d8                                                  ; $1330 : $11, $d8, $13
	ld a, $05                                                  ; $1333 : $3e, $05

br_01_1335:
	call Call_01_1291                                                  ; $1335 : $cd, $91, $12
	push bc                                                  ; $1338 : $c5
	push af                                                  ; $1339 : $f5
	push hl                                                  ; $133a : $e5
	ex de, hl                                                  ; $133b : $eb
	ld c, (hl)                                                  ; $133c : $4e
	inc hl                                                  ; $133d : $23
	ld b, (hl)                                                  ; $133e : $46
	push bc                                                  ; $133f : $c5
	inc hl                                                  ; $1340 : $23
	ex (sp), hl                                                  ; $1341 : $e3
	ex de, hl                                                  ; $1342 : $eb
	ld hl, ($4121)                                                  ; $1343 : $2a, $21, $41
	ld b, $2f                                                  ; $1346 : $06, $2f

br_01_1348:
	inc b                                                  ; $1348 : $04

br_01_1349:
	ld a, l                                                  ; $1349 : $7d
	sub e                                                  ; $134a : $93
	ld l, a                                                  ; $134b : $6f
	ld a, h                                                  ; $134c : $7c
	sbc a, d                                                  ; $134d : $9a
	ld h, a                                                  ; $134e : $67
	jr nc, br_01_1348                                                  ; $134f : $30, $f7

	add hl, de                                                  ; $1351 : $19
	ld ($4121), hl                                                  ; $1352 : $22, $21, $41
	pop de                                                  ; $1355 : $d1
	pop hl                                                  ; $1356 : $e1
	ld (hl), b                                                  ; $1357 : $70
	inc hl                                                  ; $1358 : $23
	pop af                                                  ; $1359 : $f1
	pop bc                                                  ; $135a : $c1
	dec a                                                  ; $135b : $3d
	jr nz, br_01_1335                                                  ; $135c : $20, $d7

	call Call_01_1291                                                  ; $135e : $cd, $91, $12
	ld (hl), a                                                  ; $1361 : $77
	pop de                                                  ; $1362 : $d1
	ret                                                  ; $1363 : $c9


	nop                                                  ; $1364 : $00
	nop                                                  ; $1365 : $00
	nop                                                  ; $1366 : $00
	nop                                                  ; $1367 : $00
	ld sp, hl                                                  ; $1368 : $f9
	ld (bc), a                                                  ; $1369 : $02
	dec d                                                  ; $136a : $15
	and d                                                  ; $136b : $a2
	.db $fd                                                  ; $136c : $fd
	rst $38                                                  ; $136d : $ff
	sbc a, a                                                  ; $136e : $9f
	ld sp, $5fa9                                                  ; $136f : $31, $a9, $5f
	ld h, e                                                  ; $1372 : $63
	or d                                                  ; $1373 : $b2
	cp $ff                                                  ; $1374 : $fe, $ff
	inc bc                                                  ; $1376 : $03
	cp a                                                  ; $1377 : $bf
	ret                                                  ; $1378 : $c9


	dec de                                                  ; $1379 : $1b
	ld c, $b6                                                  ; $137a : $0e, $b6
	nop                                                  ; $137c : $00
	nop                                                  ; $137d : $00
	nop                                                  ; $137e : $00
	nop                                                  ; $137f : $00
	nop                                                  ; $1380 : $00
	nop                                                  ; $1381 : $00
	nop                                                  ; $1382 : $00
	add a, b                                                  ; $1383 : $80
	nop                                                  ; $1384 : $00
	nop                                                  ; $1385 : $00
	inc b                                                  ; $1386 : $04
	cp a                                                  ; $1387 : $bf
	ret                                                  ; $1388 : $c9


	dec de                                                  ; $1389 : $1b
	ld c, $b6                                                  ; $138a : $0e, $b6
	nop                                                  ; $138c : $00
	add a, b                                                  ; $138d : $80
	add a, $a4                                                  ; $138e : $c6, $a4
	ld a, (hl)                                                  ; $1390 : $7e
	adc a, l                                                  ; $1391 : $8d
	inc bc                                                  ; $1392 : $03
	nop                                                  ; $1393 : $00
	ld b, b                                                  ; $1394 : $40
	ld a, d                                                  ; $1395 : $7a
	djnz -$0d                                                  ; $1396 : $10, $f3
	ld e, d                                                  ; $1398 : $5a
	nop                                                  ; $1399 : $00
	nop                                                  ; $139a : $00
	and b                                                  ; $139b : $a0
	ld (hl), d                                                  ; $139c : $72
	ld c, (hl)                                                  ; $139d : $4e
	jr br_01_13a9                                                  ; $139e : $18, $09

	nop                                                  ; $13a0 : $00
	nop                                                  ; $13a1 : $00
	djnz br_01_1349                                                  ; $13a2 : $10, $a5
	call nc, Call_01_00e8                                                  ; $13a4 : $d4, $e8, $00
	nop                                                  ; $13a7 : $00
	nop                                                  ; $13a8 : $00

br_01_13a9:
	ret pe                                                  ; $13a9 : $e8

	halt                                                  ; $13aa : $76
	ld c, b                                                  ; $13ab : $48
	rla                                                  ; $13ac : $17
	nop                                                  ; $13ad : $00
	nop                                                  ; $13ae : $00
	nop                                                  ; $13af : $00
	call po, $540b                                                  ; $13b0 : $e4, $0b, $54
	ld (bc), a                                                  ; $13b3 : $02
	nop                                                  ; $13b4 : $00
	nop                                                  ; $13b5 : $00
	nop                                                  ; $13b6 : $00
	jp z, Jump_01_3b9a                                                  ; $13b7 : $ca, $9a, $3b
	nop                                                  ; $13ba : $00
	nop                                                  ; $13bb : $00
	nop                                                  ; $13bc : $00
	nop                                                  ; $13bd : $00
	pop hl                                                  ; $13be : $e1
	push af                                                  ; $13bf : $f5
	dec b                                                  ; $13c0 : $05
	nop                                                  ; $13c1 : $00
	nop                                                  ; $13c2 : $00
	nop                                                  ; $13c3 : $00
	add a, b                                                  ; $13c4 : $80
	sub (hl)                                                  ; $13c5 : $96
	sbc a, b                                                  ; $13c6 : $98
	nop                                                  ; $13c7 : $00
	nop                                                  ; $13c8 : $00
	nop                                                  ; $13c9 : $00
	nop                                                  ; $13ca : $00
	ld b, b                                                  ; $13cb : $40
	ld b, d                                                  ; $13cc : $42
	rrca                                                  ; $13cd : $0f
	nop                                                  ; $13ce : $00
	nop                                                  ; $13cf : $00
	nop                                                  ; $13d0 : $00
	nop                                                  ; $13d1 : $00
	and b                                                  ; $13d2 : $a0
	add a, (hl)                                                  ; $13d3 : $86
	ld bc, $2710                                                  ; $13d4 : $01, $10, $27
	nop                                                  ; $13d7 : $00
	djnz br_01_1401                                                  ; $13d8 : $10, $27
	ret pe                                                  ; $13da : $e8

	inc bc                                                  ; $13db : $03
	ld h, h                                                  ; $13dc : $64
	nop                                                  ; $13dd : $00
	ld a, (bc)                                                  ; $13de : $0a
	nop                                                  ; $13df : $00
	ld bc, $2100                                                  ; $13e0 : $01, $00, $21
	add a, d                                                  ; $13e3 : $82
	add hl, bc                                                  ; $13e4 : $09
	ex (sp), hl                                                  ; $13e5 : $e3
	jp (hl)                                                  ; $13e6 : $e9


	call Call_01_09a4                                                  ; $13e7 : $cd, $a4, $09
	ld hl, $1380                                                  ; $13ea : $21, $80, $13
	call Call_01_09b1                                                  ; $13ed : $cd, $b1, $09
	jr br_01_13f5                                                  ; $13f0 : $18, $03

	call Call_01_0ab1                                                  ; $13f2 : $cd, $b1, $0a

br_01_13f5:
	pop bc                                                  ; $13f5 : $c1
	pop de                                                  ; $13f6 : $d1
	call Call_01_0955                                                  ; $13f7 : $cd, $55, $09
	ld a, b                                                  ; $13fa : $78
	jr z, br_01_1439                                                  ; $13fb : $28, $3c

	jp p, Jump_01_1404                                                  ; $13fd : $f2, $04, $14
	or a                                                  ; $1400 : $b7

br_01_1401:
	jp z, $199a                                                  ; $1401 : $ca, $9a, $19

Jump_01_1404:
	or a                                                  ; $1404 : $b7
	jp z, Jump_01_0779                                                  ; $1405 : $ca, $79, $07
	push de                                                  ; $1408 : $d5
	push bc                                                  ; $1409 : $c5
	ld a, c                                                  ; $140a : $79
	or $7f                                                  ; $140b : $f6, $7f
	call Call_01_09bf                                                  ; $140d : $cd, $bf, $09
	jp p, Jump_01_1421                                                  ; $1410 : $f2, $21, $14
	push de                                                  ; $1413 : $d5
	push bc                                                  ; $1414 : $c5
	call Call_01_0b40                                                  ; $1415 : $cd, $40, $0b
	pop bc                                                  ; $1418 : $c1
	pop de                                                  ; $1419 : $d1
	push af                                                  ; $141a : $f5
	call Call_01_0a0c                                                  ; $141b : $cd, $0c, $0a
	pop hl                                                  ; $141e : $e1
	ld a, h                                                  ; $141f : $7c
	rra                                                  ; $1420 : $1f

Jump_01_1421:
	pop hl                                                  ; $1421 : $e1
	ld ($4123), hl                                                  ; $1422 : $22, $23, $41
	pop hl                                                  ; $1425 : $e1
	ld ($4121), hl                                                  ; $1426 : $22, $21, $41
	call c, $13e2                                                  ; $1429 : $dc, $e2, $13
	call z, Call_01_0982                                                  ; $142c : $cc, $82, $09
	push de                                                  ; $142f : $d5
	push bc                                                  ; $1430 : $c5
	call Call_01_0809                                                  ; $1431 : $cd, $09, $08
	pop bc                                                  ; $1434 : $c1
	pop de                                                  ; $1435 : $d1
	call Call_01_0847                                                  ; $1436 : $cd, $47, $08

br_01_1439:
	call Call_01_09a4                                                  ; $1439 : $cd, $a4, $09
	ld bc, $8138                                                  ; $143c : $01, $38, $81
	ld de, $aa3b                                                  ; $143f : $11, $3b, $aa
	call Call_01_0847                                                  ; $1442 : $cd, $47, $08
	ld a, ($4124)                                                  ; $1445 : $3a, $24, $41
	cp $88                                                  ; $1448 : $fe, $88
	jp nc, Jump_01_0931                                                  ; $144a : $d2, $31, $09
	call Call_01_0b40                                                  ; $144d : $cd, $40, $0b
	add a, $80                                                  ; $1450 : $c6, $80
	add a, $02                                                  ; $1452 : $c6, $02
	jp c, Jump_01_0931                                                  ; $1454 : $da, $31, $09
	push af                                                  ; $1457 : $f5
	ld hl, $07f8                                                  ; $1458 : $21, $f8, $07
	call Call_01_070b                                                  ; $145b : $cd, $0b, $07
	call Call_01_0841                                                  ; $145e : $cd, $41, $08
	pop af                                                  ; $1461 : $f1
	pop bc                                                  ; $1462 : $c1
	pop de                                                  ; $1463 : $d1
	push af                                                  ; $1464 : $f5
	call Call_01_0713                                                  ; $1465 : $cd, $13, $07
	call Call_01_0982                                                  ; $1468 : $cd, $82, $09
	ld hl, $1479                                                  ; $146b : $21, $79, $14
	call Call_01_14a9                                                  ; $146e : $cd, $a9, $14
	ld de, $0000                                                  ; $1471 : $11, $00, $00
	pop bc                                                  ; $1474 : $c1
	ld c, d                                                  ; $1475 : $4a
	jp Jump_01_0847                                                  ; $1476 : $c3, $47, $08


	ex af, af'                                                  ; $1479 : $08
	ld b, b                                                  ; $147a : $40
	ld l, $94                                                  ; $147b : $2e, $94
	ld (hl), h                                                  ; $147d : $74
	ld (hl), b                                                  ; $147e : $70
	ld c, a                                                  ; $147f : $4f
	ld l, $77                                                  ; $1480 : $2e, $77
	ld l, (hl)                                                  ; $1482 : $6e
	ld (bc), a                                                  ; $1483 : $02
	adc a, b                                                  ; $1484 : $88
	ld a, d                                                  ; $1485 : $7a
	and $a0                                                  ; $1486 : $e6, $a0
	ld hl, ($507c)                                                  ; $1488 : $2a, $7c, $50
	xor d                                                  ; $148b : $aa
	xor d                                                  ; $148c : $aa
	ld a, (hl)                                                  ; $148d : $7e
	rst $38                                                  ; $148e : $ff
	rst $38                                                  ; $148f : $ff
	ld a, a                                                  ; $1490 : $7f
	ld a, a                                                  ; $1491 : $7f
	nop                                                  ; $1492 : $00
	nop                                                  ; $1493 : $00
	add a, b                                                  ; $1494 : $80
	add a, c                                                  ; $1495 : $81
	nop                                                  ; $1496 : $00
	nop                                                  ; $1497 : $00
	nop                                                  ; $1498 : $00
	add a, c                                                  ; $1499 : $81

Call_01_149a:
Jump_01_149a:
	call Call_01_09a4                                                  ; $149a : $cd, $a4, $09
	ld de, $0c32                                                  ; $149d : $11, $32, $0c
	push de                                                  ; $14a0 : $d5
	push hl                                                  ; $14a1 : $e5
	call Call_01_09bf                                                  ; $14a2 : $cd, $bf, $09
	call Call_01_0847                                                  ; $14a5 : $cd, $47, $08
	pop hl                                                  ; $14a8 : $e1

Call_01_14a9:
	call Call_01_09a4                                                  ; $14a9 : $cd, $a4, $09
	ld a, (hl)                                                  ; $14ac : $7e
	inc hl                                                  ; $14ad : $23
	call Call_01_09b1                                                  ; $14ae : $cd, $b1, $09
	ld b, $f1                                                  ; $14b1 : $06, $f1
	pop bc                                                  ; $14b3 : $c1
	pop de                                                  ; $14b4 : $d1
	dec a                                                  ; $14b5 : $3d
	ret z                                                  ; $14b6 : $c8

	push de                                                  ; $14b7 : $d5
	push bc                                                  ; $14b8 : $c5
	push af                                                  ; $14b9 : $f5
	push hl                                                  ; $14ba : $e5
	call Call_01_0847                                                  ; $14bb : $cd, $47, $08
	pop hl                                                  ; $14be : $e1
	call Call_01_09c2                                                  ; $14bf : $cd, $c2, $09
	push hl                                                  ; $14c2 : $e5
	call Call_01_0716                                                  ; $14c3 : $cd, $16, $07
	pop hl                                                  ; $14c6 : $e1
	jr -$17                                                  ; $14c7 : $18, $e9

	call Call_01_0a7f                                                  ; $14c9 : $cd, $7f, $0a
	ld a, h                                                  ; $14cc : $7c
	or a                                                  ; $14cd : $b7
	jp m, Jump_01_1e4a                                                  ; $14ce : $fa, $4a, $1e
	or l                                                  ; $14d1 : $b5
	jp z, Jump_01_14f0                                                  ; $14d2 : $ca, $f0, $14
	push hl                                                  ; $14d5 : $e5
	call Call_01_14f0                                                  ; $14d6 : $cd, $f0, $14
	call Call_01_09bf                                                  ; $14d9 : $cd, $bf, $09
	ex de, hl                                                  ; $14dc : $eb
	ex (sp), hl                                                  ; $14dd : $e3
	push bc                                                  ; $14de : $c5
	call Call_01_0acf                                                  ; $14df : $cd, $cf, $0a
	pop bc                                                  ; $14e2 : $c1
	pop de                                                  ; $14e3 : $d1
	call Call_01_0847                                                  ; $14e4 : $cd, $47, $08
	ld hl, $07f8                                                  ; $14e7 : $21, $f8, $07
	call Call_01_070b                                                  ; $14ea : $cd, $0b, $07
	jp Jump_01_0b40                                                  ; $14ed : $c3, $40, $0b


Call_01_14f0:
Jump_01_14f0:
	ld hl, $4090                                                  ; $14f0 : $21, $90, $40
	push hl                                                  ; $14f3 : $e5
	ld de, $0000                                                  ; $14f4 : $11, $00, $00
	ld c, e                                                  ; $14f7 : $4b
	ld h, $03                                                  ; $14f8 : $26, $03

Jump_01_14fa:
	ld l, $08                                                  ; $14fa : $2e, $08

Jump_01_14fc:
	ex de, hl                                                  ; $14fc : $eb
	add hl, hl                                                  ; $14fd : $29
	ex de, hl                                                  ; $14fe : $eb
	ld a, c                                                  ; $14ff : $79
	rla                                                  ; $1500 : $17
	ld c, a                                                  ; $1501 : $4f
	ex (sp), hl                                                  ; $1502 : $e3
	ld a, (hl)                                                  ; $1503 : $7e
	rlca                                                  ; $1504 : $07
	ld (hl), a                                                  ; $1505 : $77
	ex (sp), hl                                                  ; $1506 : $e3
	jp nc, Jump_01_1516                                                  ; $1507 : $d2, $16, $15
	push hl                                                  ; $150a : $e5
	ld hl, ($40aa)                                                  ; $150b : $2a, $aa, $40
	add hl, de                                                  ; $150e : $19
	ex de, hl                                                  ; $150f : $eb
	ld a, ($40ac)                                                  ; $1510 : $3a, $ac, $40
	adc a, c                                                  ; $1513 : $89
	ld c, a                                                  ; $1514 : $4f
	pop hl                                                  ; $1515 : $e1

Jump_01_1516:
	dec l                                                  ; $1516 : $2d
	jp nz, Jump_01_14fc                                                  ; $1517 : $c2, $fc, $14
	ex (sp), hl                                                  ; $151a : $e3
	inc hl                                                  ; $151b : $23
	ex (sp), hl                                                  ; $151c : $e3
	dec h                                                  ; $151d : $25
	jp nz, Jump_01_14fa                                                  ; $151e : $c2, $fa, $14
	pop hl                                                  ; $1521 : $e1
	ld hl, $b065                                                  ; $1522 : $21, $65, $b0
	add hl, de                                                  ; $1525 : $19
	ld ($40aa), hl                                                  ; $1526 : $22, $aa, $40
	call $0aef                                                  ; $1529 : $cd, $ef, $0a
	ld a, $05                                                  ; $152c : $3e, $05
	adc a, c                                                  ; $152e : $89
	ld ($40ac), a                                                  ; $152f : $32, $ac, $40
	ex de, hl                                                  ; $1532 : $eb
	ld b, $80                                                  ; $1533 : $06, $80
	ld hl, $4125                                                  ; $1535 : $21, $25, $41
	ld (hl), b                                                  ; $1538 : $70
	dec hl                                                  ; $1539 : $2b
	ld (hl), b                                                  ; $153a : $70
	ld c, a                                                  ; $153b : $4f
	ld b, $00                                                  ; $153c : $06, $00
	jp Jump_01_0765                                                  ; $153e : $c3, $65, $07


Call_01_1541:
	ld hl, $158b                                                  ; $1541 : $21, $8b, $15
	call Call_01_070b                                                  ; $1544 : $cd, $0b, $07

Call_01_1547:
	call Call_01_09a4                                                  ; $1547 : $cd, $a4, $09
	ld bc, $8349                                                  ; $154a : $01, $49, $83
	ld de, $0fdb                                                  ; $154d : $11, $db, $0f
	call Call_01_09b4                                                  ; $1550 : $cd, $b4, $09
	pop bc                                                  ; $1553 : $c1
	pop de                                                  ; $1554 : $d1
	call Call_01_08a2                                                  ; $1555 : $cd, $a2, $08
	call Call_01_09a4                                                  ; $1558 : $cd, $a4, $09
	call Call_01_0b40                                                  ; $155b : $cd, $40, $0b
	pop bc                                                  ; $155e : $c1
	pop de                                                  ; $155f : $d1
	call Call_01_0713                                                  ; $1560 : $cd, $13, $07
	ld hl, $158f                                                  ; $1563 : $21, $8f, $15
	call Call_01_0710                                                  ; $1566 : $cd, $10, $07
	call Call_01_0955                                                  ; $1569 : $cd, $55, $09
	scf                                                  ; $156c : $37
	jp p, Jump_01_1577                                                  ; $156d : $f2, $77, $15
	call Call_01_0708                                                  ; $1570 : $cd, $08, $07
	call Call_01_0955                                                  ; $1573 : $cd, $55, $09
	or a                                                  ; $1576 : $b7

Jump_01_1577:
	push af                                                  ; $1577 : $f5
	call p, Call_01_0982                                                  ; $1578 : $f4, $82, $09
	ld hl, $158f                                                  ; $157b : $21, $8f, $15
	call Call_01_070b                                                  ; $157e : $cd, $0b, $07
	pop af                                                  ; $1581 : $f1
	call nc, Call_01_0982                                                  ; $1582 : $d4, $82, $09
	ld hl, $1593                                                  ; $1585 : $21, $93, $15
	jp Jump_01_149a                                                  ; $1588 : $c3, $9a, $14


	in a, ($0f)                                                  ; $158b : $db, $0f
	ld c, c                                                  ; $158d : $49
	add a, c                                                  ; $158e : $81
	nop                                                  ; $158f : $00
	nop                                                  ; $1590 : $00
	nop                                                  ; $1591 : $00
	ld a, a                                                  ; $1592 : $7f
	dec b                                                  ; $1593 : $05
	cp d                                                  ; $1594 : $ba
	rst $10                                                  ; $1595 : $d7
	ld e, $86                                                  ; $1596 : $1e, $86
	ld h, h                                                  ; $1598 : $64
	ld h, $99                                                  ; $1599 : $26, $99
	add a, a                                                  ; $159b : $87
	ld e, b                                                  ; $159c : $58
	inc (hl)                                                  ; $159d : $34
	inc hl                                                  ; $159e : $23
	add a, a                                                  ; $159f : $87
	ret po                                                  ; $15a0 : $e0

	ld e, l                                                  ; $15a1 : $5d
	and l                                                  ; $15a2 : $a5
	add a, (hl)                                                  ; $15a3 : $86
	jp c, $490f                                                  ; $15a4 : $da, $0f, $49
	add a, e                                                  ; $15a7 : $83
	call Call_01_09a4                                                  ; $15a8 : $cd, $a4, $09
	call Call_01_1547                                                  ; $15ab : $cd, $47, $15
	pop bc                                                  ; $15ae : $c1
	pop hl                                                  ; $15af : $e1
	call Call_01_09a4                                                  ; $15b0 : $cd, $a4, $09
	ex de, hl                                                  ; $15b3 : $eb
	call Call_01_09b4                                                  ; $15b4 : $cd, $b4, $09
	call Call_01_1541                                                  ; $15b7 : $cd, $41, $15
	jp Jump_01_08a0                                                  ; $15ba : $c3, $a0, $08


	call Call_01_0955                                                  ; $15bd : $cd, $55, $09
	call m, $13e2                                                  ; $15c0 : $fc, $e2, $13
	call m, Call_01_0982                                                  ; $15c3 : $fc, $82, $09
	ld a, ($4124)                                                  ; $15c6 : $3a, $24, $41
	cp $81                                                  ; $15c9 : $fe, $81
	jr c, br_01_15d9                                                  ; $15cb : $38, $0c

	ld bc, $8100                                                  ; $15cd : $01, $00, $81
	ld d, c                                                  ; $15d0 : $51
	ld e, c                                                  ; $15d1 : $59
	call Call_01_08a2                                                  ; $15d2 : $cd, $a2, $08
	ld hl, $0710                                                  ; $15d5 : $21, $10, $07
	push hl                                                  ; $15d8 : $e5

br_01_15d9:
	ld hl, $15e3                                                  ; $15d9 : $21, $e3, $15
	call Call_01_149a                                                  ; $15dc : $cd, $9a, $14
	ld hl, $158b                                                  ; $15df : $21, $8b, $15
	ret                                                  ; $15e2 : $c9


	add hl, bc                                                  ; $15e3 : $09
	ld c, d                                                  ; $15e4 : $4a
	rst $10                                                  ; $15e5 : $d7
	dec sp                                                  ; $15e6 : $3b
	ld a, b                                                  ; $15e7 : $78
	ld (bc), a                                                  ; $15e8 : $02
	ld l, (hl)                                                  ; $15e9 : $6e
	add a, h                                                  ; $15ea : $84
	ld a, e                                                  ; $15eb : $7b
	cp $c1                                                  ; $15ec : $fe, $c1
	cpl                                                  ; $15ee : $2f
	ld a, h                                                  ; $15ef : $7c
	ld (hl), h                                                  ; $15f0 : $74
	ld sp, $7d9a                                                  ; $15f1 : $31, $9a, $7d
	add a, h                                                  ; $15f4 : $84
	dec a                                                  ; $15f5 : $3d
	ld e, d                                                  ; $15f6 : $5a
	ld a, l                                                  ; $15f7 : $7d
	ret z                                                  ; $15f8 : $c8

	ld a, a                                                  ; $15f9 : $7f
	sub c                                                  ; $15fa : $91
	ld a, (hl)                                                  ; $15fb : $7e
	call po, $4cbb                                                  ; $15fc : $e4, $bb, $4c
	ld a, (hl)                                                  ; $15ff : $7e
	ld l, h                                                  ; $1600 : $6c
	xor d                                                  ; $1601 : $aa
	xor d                                                  ; $1602 : $aa
	ld a, a                                                  ; $1603 : $7f
	nop                                                  ; $1604 : $00
	nop                                                  ; $1605 : $00
	nop                                                  ; $1606 : $00
	add a, c                                                  ; $1607 : $81
	adc a, d                                                  ; $1608 : $8a
	add hl, bc                                                  ; $1609 : $09
	scf                                                  ; $160a : $37
	dec bc                                                  ; $160b : $0b
	ld (hl), a                                                  ; $160c : $77
	add hl, bc                                                  ; $160d : $09
	call nc, $ef27                                                  ; $160e : $d4, $27, $ef
	ld hl, ($27f5)                                                  ; $1611 : $2a, $f5, $27
	rst $20                                                  ; $1614 : $e7
	inc de                                                  ; $1615 : $13
	ret                                                  ; $1616 : $c9


	inc d                                                  ; $1617 : $14
	add hl, bc                                                  ; $1618 : $09
	ex af, af'                                                  ; $1619 : $08
	add hl, sp                                                  ; $161a : $39
	inc d                                                  ; $161b : $14
	ld b, c                                                  ; $161c : $41
	dec d                                                  ; $161d : $15
	ld b, a                                                  ; $161e : $47
	dec d                                                  ; $161f : $15
	xor b                                                  ; $1620 : $a8
	dec d                                                  ; $1621 : $15
	cp l                                                  ; $1622 : $bd
	dec d                                                  ; $1623 : $15
	xor d                                                  ; $1624 : $aa
	inc l                                                  ; $1625 : $2c
	ld d, d                                                  ; $1626 : $52
	ld b, c                                                  ; $1627 : $41
	ld e, b                                                  ; $1628 : $58
	ld b, c                                                  ; $1629 : $41
	ld e, (hl)                                                  ; $162a : $5e
	ld b, c                                                  ; $162b : $41
	ld h, c                                                  ; $162c : $61
	ld b, c                                                  ; $162d : $41
	ld h, h                                                  ; $162e : $64
	ld b, c                                                  ; $162f : $41
	ld h, a                                                  ; $1630 : $67
	ld b, c                                                  ; $1631 : $41
	ld l, d                                                  ; $1632 : $6a
	ld b, c                                                  ; $1633 : $41
	ld l, l                                                  ; $1634 : $6d
	ld b, c                                                  ; $1635 : $41
	ld (hl), b                                                  ; $1636 : $70
	ld b, c                                                  ; $1637 : $41
	ld a, a                                                  ; $1638 : $7f
	ld a, (bc)                                                  ; $1639 : $0a
	or c                                                  ; $163a : $b1
	ld a, (bc)                                                  ; $163b : $0a
	in a, ($0a)                                                  ; $163c : $db, $0a
	ld h, $0b                                                  ; $163e : $26, $0b
	inc bc                                                  ; $1640 : $03
	ld hl, ($2836)                                                  ; $1641 : $2a, $36, $28
	push bc                                                  ; $1644 : $c5
	ld hl, ($2a0f)                                                  ; $1645 : $2a, $0f, $2a
	rra                                                  ; $1648 : $1f
	ld hl, ($2a61)                                                  ; $1649 : $2a, $61, $2a
	sub c                                                  ; $164c : $91
	ld hl, ($2a9a)                                                  ; $164d : $2a, $9a, $2a
	push bc                                                  ; $1650 : $c5
	ld c, (hl)                                                  ; $1651 : $4e
	ld b, h                                                  ; $1652 : $44
	add a, $4f                                                  ; $1653 : $c6, $4f
	ld d, d                                                  ; $1655 : $52
	add a, c                                                  ; $1656 : $81
	nop                                                  ; $1657 : $00
	nop                                                  ; $1658 : $00
	nop                                                  ; $1659 : $00
	nop                                                  ; $165a : $00
	add a, c                                                  ; $165b : $81
	nop                                                  ; $165c : $00
	nop                                                  ; $165d : $00
	add a, c                                                  ; $165e : $81
	nop                                                  ; $165f : $00
	nop                                                  ; $1660 : $00
	add a, c                                                  ; $1661 : $81
	nop                                                  ; $1662 : $00
	nop                                                  ; $1663 : $00
	add a, c                                                  ; $1664 : $81
	nop                                                  ; $1665 : $00
	nop                                                  ; $1666 : $00
	nop                                                  ; $1667 : $00
	nop                                                  ; $1668 : $00
	nop                                                  ; $1669 : $00
	adc a, $45                                                  ; $166a : $ce, $45
	ld e, b                                                  ; $166c : $58
	ld d, h                                                  ; $166d : $54
	call nz, $5441                                                  ; $166e : $c4, $41, $54
	ld b, c                                                  ; $1671 : $41
	ret                                                  ; $1672 : $c9


	ld c, (hl)                                                  ; $1673 : $4e
	ld d, b                                                  ; $1674 : $50
	ld d, l                                                  ; $1675 : $55
	ld d, h                                                  ; $1676 : $54
	call nz, $4d49                                                  ; $1677 : $c4, $49, $4d
	jp nc, $4145                                                  ; $167a : $d2, $45, $41
	ld b, h                                                  ; $167d : $44
	call z, $5445                                                  ; $167e : $cc, $45, $54
	rst $00                                                  ; $1681 : $c7
	ld c, a                                                  ; $1682 : $4f
	ld d, h                                                  ; $1683 : $54
	ld c, a                                                  ; $1684 : $4f
	jp nc, $4e55                                                  ; $1685 : $d2, $55, $4e
	ret                                                  ; $1688 : $c9


	ld b, (hl)                                                  ; $1689 : $46
	jp nc, $5345                                                  ; $168a : $d2, $45, $53
	ld d, h                                                  ; $168d : $54
	ld c, a                                                  ; $168e : $4f
	ld d, d                                                  ; $168f : $52
	ld b, l                                                  ; $1690 : $45
	rst $00                                                  ; $1691 : $c7
	ld c, a                                                  ; $1692 : $4f
	ld d, e                                                  ; $1693 : $53
	ld d, l                                                  ; $1694 : $55
	ld b, d                                                  ; $1695 : $42
	jp nc, $5445                                                  ; $1696 : $d2, $45, $54
	ld d, l                                                  ; $1699 : $55
	ld d, d                                                  ; $169a : $52
	ld c, (hl)                                                  ; $169b : $4e
	jp nc, $4d45                                                  ; $169c : $d2, $45, $4d
	out ($54), a                                                  ; $169f : $d3, $54
	ld c, a                                                  ; $16a1 : $4f
	ld d, b                                                  ; $16a2 : $50
	push bc                                                  ; $16a3 : $c5
	ld c, h                                                  ; $16a4 : $4c
	ld d, e                                                  ; $16a5 : $53
	ld b, l                                                  ; $16a6 : $45
	add a, c                                                  ; $16a7 : $81
	nop                                                  ; $16a8 : $00
	nop                                                  ; $16a9 : $00
	nop                                                  ; $16aa : $00
	add a, c                                                  ; $16ab : $81
	nop                                                  ; $16ac : $00
	nop                                                  ; $16ad : $00
	nop                                                  ; $16ae : $00
	nop                                                  ; $16af : $00
	add a, c                                                  ; $16b0 : $81
	nop                                                  ; $16b1 : $00
	nop                                                  ; $16b2 : $00
	nop                                                  ; $16b3 : $00
	nop                                                  ; $16b4 : $00
	nop                                                  ; $16b5 : $00
	add a, c                                                  ; $16b6 : $81
	nop                                                  ; $16b7 : $00
	nop                                                  ; $16b8 : $00
	nop                                                  ; $16b9 : $00
	nop                                                  ; $16ba : $00
	nop                                                  ; $16bb : $00
	add a, c                                                  ; $16bc : $81
	nop                                                  ; $16bd : $00
	nop                                                  ; $16be : $00
	nop                                                  ; $16bf : $00
	nop                                                  ; $16c0 : $00
	nop                                                  ; $16c1 : $00
	add a, c                                                  ; $16c2 : $81
	nop                                                  ; $16c3 : $00
	nop                                                  ; $16c4 : $00
	nop                                                  ; $16c5 : $00
	nop                                                  ; $16c6 : $00
	nop                                                  ; $16c7 : $00
	add a, c                                                  ; $16c8 : $81
	nop                                                  ; $16c9 : $00
	nop                                                  ; $16ca : $00
	nop                                                  ; $16cb : $00
	add a, c                                                  ; $16cc : $81
	nop                                                  ; $16cd : $00
	nop                                                  ; $16ce : $00
	nop                                                  ; $16cf : $00
	out ($4f), a                                                  ; $16d0 : $d3, $4f
	ld d, l                                                  ; $16d2 : $55
	ld c, (hl)                                                  ; $16d3 : $4e
	ld b, h                                                  ; $16d4 : $44
	add a, c                                                  ; $16d5 : $81
	nop                                                  ; $16d6 : $00
	nop                                                  ; $16d7 : $00
	nop                                                  ; $16d8 : $00
	nop                                                  ; $16d9 : $00
	nop                                                  ; $16da : $00
	add a, c                                                  ; $16db : $81
	nop                                                  ; $16dc : $00
	nop                                                  ; $16dd : $00
	rst $08                                                  ; $16de : $cf
	ld c, (hl)                                                  ; $16df : $4e
	add a, c                                                  ; $16e0 : $81
	nop                                                  ; $16e1 : $00
	nop                                                  ; $16e2 : $00
	nop                                                  ; $16e3 : $00
	add a, c                                                  ; $16e4 : $81
	nop                                                  ; $16e5 : $00
	nop                                                  ; $16e6 : $00
	nop                                                  ; $16e7 : $00
	nop                                                  ; $16e8 : $00
	add a, c                                                  ; $16e9 : $81
	nop                                                  ; $16ea : $00
	nop                                                  ; $16eb : $00
	add a, c                                                  ; $16ec : $81
	nop                                                  ; $16ed : $00
	nop                                                  ; $16ee : $00
	add a, c                                                  ; $16ef : $81
	nop                                                  ; $16f0 : $00
	nop                                                  ; $16f1 : $00
	nop                                                  ; $16f2 : $00
	nop                                                  ; $16f3 : $00
	add a, c                                                  ; $16f4 : $81
	nop                                                  ; $16f5 : $00
	nop                                                  ; $16f6 : $00
	nop                                                  ; $16f7 : $00
	add a, c                                                  ; $16f8 : $81
	nop                                                  ; $16f9 : $00
	nop                                                  ; $16fa : $00
	nop                                                  ; $16fb : $00
	nop                                                  ; $16fc : $00
	add a, c                                                  ; $16fd : $81
	nop                                                  ; $16fe : $00
	nop                                                  ; $16ff : $00
	nop                                                  ; $1700 : $00
	add a, c                                                  ; $1701 : $81
	nop                                                  ; $1702 : $00
	nop                                                  ; $1703 : $00
	nop                                                  ; $1704 : $00
	add a, c                                                  ; $1705 : $81
	nop                                                  ; $1706 : $00
	nop                                                  ; $1707 : $00
	nop                                                  ; $1708 : $00
	add a, c                                                  ; $1709 : $81
	nop                                                  ; $170a : $00
	nop                                                  ; $170b : $00
	nop                                                  ; $170c : $00
	add a, c                                                  ; $170d : $81
	nop                                                  ; $170e : $00
	nop                                                  ; $170f : $00
	nop                                                  ; $1710 : $00
	add a, c                                                  ; $1711 : $81
	nop                                                  ; $1712 : $00
	nop                                                  ; $1713 : $00
	nop                                                  ; $1714 : $00
	nop                                                  ; $1715 : $00
	nop                                                  ; $1716 : $00
	add a, c                                                  ; $1717 : $81
	nop                                                  ; $1718 : $00
	nop                                                  ; $1719 : $00
	nop                                                  ; $171a : $00
	nop                                                  ; $171b : $00
	nop                                                  ; $171c : $00
	add a, c                                                  ; $171d : $81
	nop                                                  ; $171e : $00
	nop                                                  ; $171f : $00
	add a, c                                                  ; $1720 : $81
	nop                                                  ; $1721 : $00
	nop                                                  ; $1722 : $00
	nop                                                  ; $1723 : $00
	ret nc                                                  ; $1724 : $d0

	ld d, d                                                  ; $1725 : $52
	ld c, c                                                  ; $1726 : $49
	ld c, (hl)                                                  ; $1727 : $4e
	ld d, h                                                  ; $1728 : $54
	jp $4e4f                                                  ; $1729 : $c3, $4f, $4e


	ld d, h                                                  ; $172c : $54
	call z, $5349                                                  ; $172d : $cc, $49, $53
	ld d, h                                                  ; $1730 : $54
	add a, c                                                  ; $1731 : $81
	nop                                                  ; $1732 : $00
	nop                                                  ; $1733 : $00
	nop                                                  ; $1734 : $00
	nop                                                  ; $1735 : $00
	add a, c                                                  ; $1736 : $81
	nop                                                  ; $1737 : $00
	nop                                                  ; $1738 : $00
	nop                                                  ; $1739 : $00
	nop                                                  ; $173a : $00
	nop                                                  ; $173b : $00
	add a, c                                                  ; $173c : $81
	nop                                                  ; $173d : $00
	nop                                                  ; $173e : $00
	nop                                                  ; $173f : $00
	jp $454c                                                  ; $1740 : $c3, $4c, $45


	ld b, c                                                  ; $1743 : $41
	ld d, d                                                  ; $1744 : $52
	add a, c                                                  ; $1745 : $81
	nop                                                  ; $1746 : $00
	nop                                                  ; $1747 : $00
	nop                                                  ; $1748 : $00
	nop                                                  ; $1749 : $00
	add a, c                                                  ; $174a : $81
	nop                                                  ; $174b : $00
	nop                                                  ; $174c : $00
	nop                                                  ; $174d : $00
	nop                                                  ; $174e : $00
	adc a, $45                                                  ; $174f : $ce, $45
	ld d, a                                                  ; $1751 : $57
	add a, c                                                  ; $1752 : $81
	nop                                                  ; $1753 : $00
	nop                                                  ; $1754 : $00
	nop                                                  ; $1755 : $00
	call nc, $814f                                                  ; $1756 : $d4, $4f, $81
	nop                                                  ; $1759 : $00
	add a, c                                                  ; $175a : $81
	nop                                                  ; $175b : $00
	nop                                                  ; $175c : $00
	nop                                                  ; $175d : $00
	nop                                                  ; $175e : $00
	add a, c                                                  ; $175f : $81
	nop                                                  ; $1760 : $00
	nop                                                  ; $1761 : $00
	nop                                                  ; $1762 : $00
	nop                                                  ; $1763 : $00
	nop                                                  ; $1764 : $00
	add a, c                                                  ; $1765 : $81
	nop                                                  ; $1766 : $00
	nop                                                  ; $1767 : $00
	add a, c                                                  ; $1768 : $81
	nop                                                  ; $1769 : $00
	nop                                                  ; $176a : $00
	add a, c                                                  ; $176b : $81
	nop                                                  ; $176c : $00
	nop                                                  ; $176d : $00
	add a, c                                                  ; $176e : $81
	nop                                                  ; $176f : $00
	nop                                                  ; $1770 : $00
	nop                                                  ; $1771 : $00
	nop                                                  ; $1772 : $00
	nop                                                  ; $1773 : $00
	nop                                                  ; $1774 : $00
	add a, c                                                  ; $1775 : $81
	nop                                                  ; $1776 : $00
	nop                                                  ; $1777 : $00
	nop                                                  ; $1778 : $00
	nop                                                  ; $1779 : $00
	add a, c                                                  ; $177a : $81
	nop                                                  ; $177b : $00
	nop                                                  ; $177c : $00
	nop                                                  ; $177d : $00
	nop                                                  ; $177e : $00
	add a, c                                                  ; $177f : $81
	nop                                                  ; $1780 : $00
	nop                                                  ; $1781 : $00
	nop                                                  ; $1782 : $00
	nop                                                  ; $1783 : $00
	add a, c                                                  ; $1784 : $81
	nop                                                  ; $1785 : $00
	nop                                                  ; $1786 : $00
	add a, c                                                  ; $1787 : $81
	nop                                                  ; $1788 : $00
	nop                                                  ; $1789 : $00
	nop                                                  ; $178a : $00
	nop                                                  ; $178b : $00
	nop                                                  ; $178c : $00
	call nc, $4548                                                  ; $178d : $d4, $48, $45
	ld c, (hl)                                                  ; $1790 : $4e
	adc a, $4f                                                  ; $1791 : $ce, $4f
	ld d, h                                                  ; $1793 : $54
	out ($54), a                                                  ; $1794 : $d3, $54
	ld b, l                                                  ; $1796 : $45
	ld d, b                                                  ; $1797 : $50
	xor e                                                  ; $1798 : $ab
	xor l                                                  ; $1799 : $ad
	xor d                                                  ; $179a : $aa
	xor a                                                  ; $179b : $af
	sbc a, $c1                                                  ; $179c : $de, $c1
	ld c, (hl)                                                  ; $179e : $4e
	ld b, h                                                  ; $179f : $44
	rst $08                                                  ; $17a0 : $cf
	ld d, d                                                  ; $17a1 : $52
	cp (hl)                                                  ; $17a2 : $be
	cp l                                                  ; $17a3 : $bd
	cp h                                                  ; $17a4 : $bc
	out ($47), a                                                  ; $17a5 : $d3, $47
	ld c, (hl)                                                  ; $17a7 : $4e
	ret                                                  ; $17a8 : $c9


	ld c, (hl)                                                  ; $17a9 : $4e
	ld d, h                                                  ; $17aa : $54
	pop bc                                                  ; $17ab : $c1
	ld b, d                                                  ; $17ac : $42
	ld d, e                                                  ; $17ad : $53
	add a, c                                                  ; $17ae : $81
	nop                                                  ; $17af : $00
	nop                                                  ; $17b0 : $00
	add a, c                                                  ; $17b1 : $81
	nop                                                  ; $17b2 : $00
	nop                                                  ; $17b3 : $00
	add a, c                                                  ; $17b4 : $81
	nop                                                  ; $17b5 : $00
	nop                                                  ; $17b6 : $00
	out ($51), a                                                  ; $17b7 : $d3, $51
	ld d, d                                                  ; $17b9 : $52
	jp nc, $444e                                                  ; $17ba : $d2, $4e, $44
	call z, $474f                                                  ; $17bd : $cc, $4f, $47
	push bc                                                  ; $17c0 : $c5
	ld e, b                                                  ; $17c1 : $58
	ld d, b                                                  ; $17c2 : $50
	jp $534f                                                  ; $17c3 : $c3, $4f, $53


	out ($49), a                                                  ; $17c6 : $d3, $49
	ld c, (hl)                                                  ; $17c8 : $4e
	call nc, $4e41                                                  ; $17c9 : $d4, $41, $4e
	pop bc                                                  ; $17cc : $c1
	ld d, h                                                  ; $17cd : $54
	ld c, (hl)                                                  ; $17ce : $4e
	add a, c                                                  ; $17cf : $81
	nop                                                  ; $17d0 : $00
	nop                                                  ; $17d1 : $00
	nop                                                  ; $17d2 : $00
	add a, c                                                  ; $17d3 : $81

br_01_17d4:
	nop                                                  ; $17d4 : $00
	nop                                                  ; $17d5 : $00
	add a, c                                                  ; $17d6 : $81
	nop                                                  ; $17d7 : $00
	nop                                                  ; $17d8 : $00
	add a, c                                                  ; $17d9 : $81
	nop                                                  ; $17da : $00
	nop                                                  ; $17db : $00
	add a, c                                                  ; $17dc : $81
	nop                                                  ; $17dd : $00
	nop                                                  ; $17de : $00
	add a, c                                                  ; $17df : $81
	nop                                                  ; $17e0 : $00
	nop                                                  ; $17e1 : $00
	add a, c                                                  ; $17e2 : $81
	nop                                                  ; $17e3 : $00
	nop                                                  ; $17e4 : $00
	add a, c                                                  ; $17e5 : $81
	nop                                                  ; $17e6 : $00
	nop                                                  ; $17e7 : $00
	nop                                                  ; $17e8 : $00
	add a, c                                                  ; $17e9 : $81
	nop                                                  ; $17ea : $00
	nop                                                  ; $17eb : $00
	nop                                                  ; $17ec : $00
	add a, c                                                  ; $17ed : $81
	nop                                                  ; $17ee : $00
	nop                                                  ; $17ef : $00
	nop                                                  ; $17f0 : $00
	add a, c                                                  ; $17f1 : $81
	nop                                                  ; $17f2 : $00
	nop                                                  ; $17f3 : $00
	nop                                                  ; $17f4 : $00
	add a, c                                                  ; $17f5 : $81
	nop                                                  ; $17f6 : $00
	nop                                                  ; $17f7 : $00
	nop                                                  ; $17f8 : $00
	add a, c                                                  ; $17f9 : $81
	nop                                                  ; $17fa : $00
	nop                                                  ; $17fb : $00
	nop                                                  ; $17fc : $00
	add a, c                                                  ; $17fd : $81
	nop                                                  ; $17fe : $00
	nop                                                  ; $17ff : $00
	call z, $4e45                                                  ; $1800 : $cc, $45, $4e
	out ($54), a                                                  ; $1803 : $d3, $54
	ld d, d                                                  ; $1805 : $52
	inc h                                                  ; $1806 : $24
	sub $41                                                  ; $1807 : $d6, $41
	ld c, h                                                  ; $1809 : $4c
	pop bc                                                  ; $180a : $c1
	ld d, e                                                  ; $180b : $53
	ld b, e                                                  ; $180c : $43
	jp $5248                                                  ; $180d : $c3, $48, $52


	inc h                                                  ; $1810 : $24
	call z, $4645                                                  ; $1811 : $cc, $45, $46
	ld d, h                                                  ; $1814 : $54
	inc h                                                  ; $1815 : $24
	jp nc, $4749                                                  ; $1816 : $d2, $49, $47
	ld c, b                                                  ; $1819 : $48
	ld d, h                                                  ; $181a : $54
	inc h                                                  ; $181b : $24
	call $4449                                                  ; $181c : $cd, $49, $44
	inc h                                                  ; $181f : $24
	and a                                                  ; $1820 : $a7
	add a, b                                                  ; $1821 : $80
	xor (hl)                                                  ; $1822 : $ae
	dec e                                                  ; $1823 : $1d
	and c                                                  ; $1824 : $a1
	inc e                                                  ; $1825 : $1c
	jr c, br_01_1829                                                  ; $1826 : $38, $01

	dec (hl)                                                  ; $1828 : $35

br_01_1829:
	ld bc, $01c9                                                  ; $1829 : $01, $c9, $01
	ld (hl), e                                                  ; $182c : $73
	ld b, c                                                  ; $182d : $41
	out ($01), a                                                  ; $182e : $d3, $01
	or (hl)                                                  ; $1830 : $b6
	ld ($1f05), hl                                                  ; $1831 : $22, $05, $1f
	sbc a, d                                                  ; $1834 : $9a
	ld hl, $2608                                                  ; $1835 : $21, $08, $26
	rst $28                                                  ; $1838 : $ef
	ld hl, $1f21                                                  ; $1839 : $21, $21, $1f
	jp nz, $a31e                                                  ; $183c : $c2, $1e, $a3
	ld e, $39                                                  ; $183f : $1e, $39
	jr nz, br_01_17d4                                                  ; $1841 : $20, $91

	dec e                                                  ; $1843 : $1d
	or c                                                  ; $1844 : $b1
	ld e, $de                                                  ; $1845 : $1e, $de
	ld e, $07                                                  ; $1847 : $1e, $07
	rra                                                  ; $1849 : $1f
	xor c                                                  ; $184a : $a9
	dec e                                                  ; $184b : $1d
	rlca                                                  ; $184c : $07
	rra                                                  ; $184d : $1f
	daa                                                  ; $184e : $27
	ld ($389d), a                                                  ; $184f : $32, $9d, $38
	jr c, $37                                                  ; $1852 : $38, $37

	inc bc                                                  ; $1854 : $03
	ld e, $06                                                  ; $1855 : $1e, $06
	ld e, $09                                                  ; $1857 : $1e, $09
	ld e, $2e                                                  ; $1859 : $1e, $2e
	scf                                                  ; $185b : $37
	ld h, e                                                  ; $185c : $63
	ld l, $f5                                                  ; $185d : $2e, $f5
	dec hl                                                  ; $185f : $2b
	xor a                                                  ; $1860 : $af
	rra                                                  ; $1861 : $1f
	ei                                                  ; $1862 : $fb
	ld hl, ($1f6c)                                                  ; $1863 : $2a, $6c, $1f
	ld a, c                                                  ; $1866 : $79
	ld b, c                                                  ; $1867 : $41
	ld a, h                                                  ; $1868 : $7c
	ld b, c                                                  ; $1869 : $41
	ld a, a                                                  ; $186a : $7f
	ld b, c                                                  ; $186b : $41
	add a, d                                                  ; $186c : $82

br_01_186d:
	ld b, c                                                  ; $186d : $41
	add a, l                                                  ; $186e : $85
	ld b, c                                                  ; $186f : $41
	adc a, b                                                  ; $1870 : $88
	ld b, c                                                  ; $1871 : $41
	adc a, e                                                  ; $1872 : $8b
	ld b, c                                                  ; $1873 : $41
	adc a, (hl)                                                  ; $1874 : $8e
	ld b, c                                                  ; $1875 : $41
	sub c                                                  ; $1876 : $91
	ld b, c                                                  ; $1877 : $41
	sub a                                                  ; $1878 : $97
	ld b, c                                                  ; $1879 : $41
	sbc a, d                                                  ; $187a : $9a
	ld b, c                                                  ; $187b : $41
	and b                                                  ; $187c : $a0
	ld b, c                                                  ; $187d : $41
	nop                                                  ; $187e : $00
	nop                                                  ; $187f : $00
	ld h, a                                                  ; $1880 : $67
	jr nz, br_01_18de                                                  ; $1881 : $20, $5b

	ld b, c                                                  ; $1883 : $41
	or c                                                  ; $1884 : $b1
	inc l                                                  ; $1885 : $2c
	ld l, a                                                  ; $1886 : $6f
	jr nz, br_01_186d                                                  ; $1887 : $20, $e4

	dec e                                                  ; $1889 : $1d
	ld l, $2b                                                  ; $188a : $2e, $2b
	add hl, hl                                                  ; $188c : $29
	dec hl                                                  ; $188d : $2b
	add a, $2b                                                  ; $188e : $c6, $2b
	ex af, af'                                                  ; $1890 : $08
	jr nz, br_01_190d                                                  ; $1891 : $20, $7a

	ld e, $56                                                  ; $1893 : $1e, $56
	ld (hl), $a9                                                  ; $1895 : $36, $a9
	inc (hl)                                                  ; $1897 : $34
	ld c, c                                                  ; $1898 : $49
	dec de                                                  ; $1899 : $1b
	ld a, c                                                  ; $189a : $79
	ld a, c                                                  ; $189b : $79
	ld a, h                                                  ; $189c : $7c
	ld a, h                                                  ; $189d : $7c
	ld a, a                                                  ; $189e : $7f
	ld d, b                                                  ; $189f : $50
	ld b, (hl)                                                  ; $18a0 : $46
	in a, ($0a)                                                  ; $18a1 : $db, $0a
	nop                                                  ; $18a3 : $00
	nop                                                  ; $18a4 : $00
	ld a, a                                                  ; $18a5 : $7f
	ld a, (bc)                                                  ; $18a6 : $0a
	call p, $b10a                                                  ; $18a7 : $f4, $0a, $b1
	ld a, (bc)                                                  ; $18aa : $0a
	ld (hl), a                                                  ; $18ab : $77
	inc c                                                  ; $18ac : $0c
	ld (hl), b                                                  ; $18ad : $70
	inc c                                                  ; $18ae : $0c
	and c                                                  ; $18af : $a1
	dec c                                                  ; $18b0 : $0d
	push hl                                                  ; $18b1 : $e5
	dec c                                                  ; $18b2 : $0d
	ld a, b                                                  ; $18b3 : $78
	ld a, (bc)                                                  ; $18b4 : $0a
	ld d, $07                                                  ; $18b5 : $16, $07
	inc de                                                  ; $18b7 : $13
	rlca                                                  ; $18b8 : $07
	ld b, a                                                  ; $18b9 : $47
	ex af, af'                                                  ; $18ba : $08
	and d                                                  ; $18bb : $a2
	ex af, af'                                                  ; $18bc : $08
	inc c                                                  ; $18bd : $0c
	ld a, (bc)                                                  ; $18be : $0a
	jp nc, $c70b                                                  ; $18bf : $d2, $0b, $c7
	dec bc                                                  ; $18c2 : $0b
	jp p, $900b                                                  ; $18c3 : $f2, $0b, $90
	inc h                                                  ; $18c6 : $24
	add hl, sp                                                  ; $18c7 : $39
	ld a, (bc)                                                  ; $18c8 : $0a
	ld c, (hl)                                                  ; $18c9 : $4e
	ld b, (hl)                                                  ; $18ca : $46
	ld d, e                                                  ; $18cb : $53
	ld c, (hl)                                                  ; $18cc : $4e
	ld d, d                                                  ; $18cd : $52
	ld b, a                                                  ; $18ce : $47
	ld c, a                                                  ; $18cf : $4f
	ld b, h                                                  ; $18d0 : $44
	ld b, (hl)                                                  ; $18d1 : $46
	ld b, e                                                  ; $18d2 : $43
	ld c, a                                                  ; $18d3 : $4f
	ld d, (hl)                                                  ; $18d4 : $56
	ld c, a                                                  ; $18d5 : $4f
	ld c, l                                                  ; $18d6 : $4d
	ld d, l                                                  ; $18d7 : $55
	ld c, h                                                  ; $18d8 : $4c
	ld b, d                                                  ; $18d9 : $42
	ld d, e                                                  ; $18da : $53
	ld b, h                                                  ; $18db : $44
	ld b, h                                                  ; $18dc : $44
	cpl                                                  ; $18dd : $2f

br_01_18de:
	jr nc, br_01_1929                                                  ; $18de : $30, $49

	ld b, h                                                  ; $18e0 : $44
	ld d, h                                                  ; $18e1 : $54
	ld c, l                                                  ; $18e2 : $4d

Call_01_18e3:
	ld c, a                                                  ; $18e3 : $4f
	ld d, e                                                  ; $18e4 : $53
	ld c, h                                                  ; $18e5 : $4c
	ld d, e                                                  ; $18e6 : $53
	ld d, e                                                  ; $18e7 : $53
	ld d, h                                                  ; $18e8 : $54
	ld b, e                                                  ; $18e9 : $43
	ld c, (hl)                                                  ; $18ea : $4e
	ld c, (hl)                                                  ; $18eb : $4e
	ld d, d                                                  ; $18ec : $52
	ld d, d                                                  ; $18ed : $52
	ld d, a                                                  ; $18ee : $57
	ld d, l                                                  ; $18ef : $55
	ld b, l                                                  ; $18f0 : $45
	ld c, l                                                  ; $18f1 : $4d
	ld c, a                                                  ; $18f2 : $4f
	ld b, (hl)                                                  ; $18f3 : $46
	ld b, h                                                  ; $18f4 : $44
	ld c, h                                                  ; $18f5 : $4c
	inc sp                                                  ; $18f6 : $33
	sub $00                                                  ; $18f7 : $d6, $00
	ld l, a                                                  ; $18f9 : $6f
	ld a, h                                                  ; $18fa : $7c
	sbc a, $00                                                  ; $18fb : $de, $00
	ld h, a                                                  ; $18fd : $67
	ld a, b                                                  ; $18fe : $78
	sbc a, $00                                                  ; $18ff : $de, $00
	ld b, a                                                  ; $1901 : $47
	ld a, $00                                                  ; $1902 : $3e, $00
	ret                                                  ; $1904 : $c9


	ld c, d                                                  ; $1905 : $4a
	ld e, $40                                                  ; $1906 : $1e, $40
	and $4d                                                  ; $1908 : $e6, $4d
	in a, ($00)                                                  ; $190a : $db, $00
	ret                                                  ; $190c : $c9


br_01_190d:
	out ($00), a                                                  ; $190d : $d3, $00
	ret                                                  ; $190f : $c9


	nop                                                  ; $1910 : $00
	nop                                                  ; $1911 : $00
	nop                                                  ; $1912 : $00
	nop                                                  ; $1913 : $00
	ld b, b                                                  ; $1914 : $40
	jr nc, br_01_1917                                                  ; $1915 : $30, $00

br_01_1917:
	ld c, h                                                  ; $1917 : $4c
	ld b, e                                                  ; $1918 : $43
	cp $ff                                                  ; $1919 : $fe, $ff
	jp (hl)                                                  ; $191b : $e9


	ld b, d                                                  ; $191c : $42
	jr nz, br_01_1964                                                  ; $191d : $20, $45

	ld d, d                                                  ; $191f : $52
	ld d, d                                                  ; $1920 : $52
	ld c, a                                                  ; $1921 : $4f
	ld d, d                                                  ; $1922 : $52
	nop                                                  ; $1923 : $00
	jr nz, br_01_196f                                                  ; $1924 : $20, $49

	ld c, (hl)                                                  ; $1926 : $4e
	jr nz, br_01_1929                                                  ; $1927 : $20, $00

br_01_1929:
	nop                                                  ; $1929 : $00
	ld b, l                                                  ; $192a : $45
	ld b, c                                                  ; $192b : $41
	ld b, h                                                  ; $192c : $44
	ld e, c                                                  ; $192d : $59
	dec c                                                  ; $192e : $0d
	nop                                                  ; $192f : $00
	ld b, d                                                  ; $1930 : $42
	ld d, d                                                  ; $1931 : $52
	ld b, l                                                  ; $1932 : $45
	ld b, c                                                  ; $1933 : $41
	ld c, e                                                  ; $1934 : $4b
	nop                                                  ; $1935 : $00

Call_01_1936:
	ld hl, $0004                                                  ; $1936 : $21, $04, $00
	add hl, sp                                                  ; $1939 : $39

br_01_193a:
	ld a, (hl)                                                  ; $193a : $7e
	inc hl                                                  ; $193b : $23
	cp $81                                                  ; $193c : $fe, $81
	ret nz                                                  ; $193e : $c0

	ld c, (hl)                                                  ; $193f : $4e
	inc hl                                                  ; $1940 : $23
	ld b, (hl)                                                  ; $1941 : $46
	inc hl                                                  ; $1942 : $23
	push hl                                                  ; $1943 : $e5
	ld l, c                                                  ; $1944 : $69
	ld h, b                                                  ; $1945 : $60
	ld a, d                                                  ; $1946 : $7a
	or e                                                  ; $1947 : $b3
	ex de, hl                                                  ; $1948 : $eb
	jr z, br_01_194d                                                  ; $1949 : $28, $02

	ex de, hl                                                  ; $194b : $eb
	rst $18                                                  ; $194c : $df

br_01_194d:
	ld bc, $000e                                                  ; $194d : $01, $0e, $00
	pop hl                                                  ; $1950 : $e1
	ret z                                                  ; $1951 : $c8

	add hl, bc                                                  ; $1952 : $09
	jr br_01_193a                                                  ; $1953 : $18, $e5

Call_01_1955:
	call $196c                                                  ; $1955 : $cd, $6c, $19

Call_01_1958:
	push bc                                                  ; $1958 : $c5
	ex (sp), hl                                                  ; $1959 : $e3
	pop bc                                                  ; $195a : $c1

br_01_195b:
	rst $18                                                  ; $195b : $df
	ld a, (hl)                                                  ; $195c : $7e
	ld (bc), a                                                  ; $195d : $02
	ret z                                                  ; $195e : $c8

	dec bc                                                  ; $195f : $0b
	dec hl                                                  ; $1960 : $2b
	jr br_01_195b                                                  ; $1961 : $18, $f8

Call_01_1963:
	push hl                                                  ; $1963 : $e5

br_01_1964:
	ld hl, ($40fd)                                                  ; $1964 : $2a, $fd, $40
	ld b, $00                                                  ; $1967 : $06, $00
	add hl, bc                                                  ; $1969 : $09
	add hl, bc                                                  ; $196a : $09
	ld a, $e5                                                  ; $196b : $3e, $e5
	ld a, $c6                                                  ; $196d : $3e, $c6

br_01_196f:
	sub l                                                  ; $196f : $95
	ld l, a                                                  ; $1970 : $6f
	ld a, $ff                                                  ; $1971 : $3e, $ff
	sbc a, h                                                  ; $1973 : $9c
	jr c, br_01_197a                                                  ; $1974 : $38, $04

	ld h, a                                                  ; $1976 : $67
	add hl, sp                                                  ; $1977 : $39
	pop hl                                                  ; $1978 : $e1
	ret c                                                  ; $1979 : $d8

Jump_01_197a:
br_01_197a:
	ld e, $0c                                                  ; $197a : $1e, $0c
	jr br_01_19a2                                                  ; $197c : $18, $24

Jump_01_197e:
	ld hl, ($40a2)                                                  ; $197e : $2a, $a2, $40
	ld a, h                                                  ; $1981 : $7c
	and l                                                  ; $1982 : $a5
	inc a                                                  ; $1983 : $3c
	jr z, br_01_198e                                                  ; $1984 : $28, $08

	ld a, ($40f2)                                                  ; $1986 : $3a, $f2, $40
	or a                                                  ; $1989 : $b7
	ld e, $22                                                  ; $198a : $1e, $22
	jr nz, br_01_19a2                                                  ; $198c : $20, $14

br_01_198e:
	jp Jump_01_1dc1                                                  ; $198e : $c3, $c1, $1d


Jump_01_1991:
	ld hl, ($40da)                                                  ; $1991 : $2a, $da, $40
	ld ($40a2), hl                                                  ; $1994 : $22, $a2, $40

Jump_01_1997:
	ld e, $02                                                  ; $1997 : $1e, $02
	ld bc, $141e                                                  ; $1999 : $01, $1e, $14
	ld bc, $001e                                                  ; $199c : $01, $1e, $00
	ld bc, $241e                                                  ; $199f : $01, $1e, $24

Jump_01_19a2:
br_01_19a2:
	jp Jump_01_392d                                                  ; $19a2 : $c3, $2d, $39


Jump_01_19a5:
	ld ($40ea), hl                                                  ; $19a5 : $22, $ea, $40
	ld ($40ec), hl                                                  ; $19a8 : $22, $ec, $40

Jump_01_19ab:
	ld bc, $19b4                                                  ; $19ab : $01, $b4, $19

Jump_01_19ae:
	ld hl, ($40e8)                                                  ; $19ae : $2a, $e8, $40
	jp Jump_01_1b9a                                                  ; $19b1 : $c3, $9a, $1b


	pop bc                                                  ; $19b4 : $c1
	ld a, e                                                  ; $19b5 : $7b
	ld c, e                                                  ; $19b6 : $4b
	ld ($409a), a                                                  ; $19b7 : $32, $9a, $40
	ld hl, ($40e6)                                                  ; $19ba : $2a, $e6, $40
	ld ($40ee), hl                                                  ; $19bd : $22, $ee, $40
	ex de, hl                                                  ; $19c0 : $eb
	ld hl, ($40ea)                                                  ; $19c1 : $2a, $ea, $40
	ld a, h                                                  ; $19c4 : $7c
	and l                                                  ; $19c5 : $a5
	inc a                                                  ; $19c6 : $3c
	jr z, br_01_19d0                                                  ; $19c7 : $28, $07

	ld ($40f5), hl                                                  ; $19c9 : $22, $f5, $40
	ex de, hl                                                  ; $19cc : $eb
	ld ($40f7), hl                                                  ; $19cd : $22, $f7, $40

br_01_19d0:
	ld hl, ($40f0)                                                  ; $19d0 : $2a, $f0, $40
	ld a, h                                                  ; $19d3 : $7c
	or l                                                  ; $19d4 : $b5
	ex de, hl                                                  ; $19d5 : $eb
	ld hl, $40f2                                                  ; $19d6 : $21, $f2, $40
	jr z, br_01_19e3                                                  ; $19d9 : $28, $08

	and (hl)                                                  ; $19db : $a6
	jr nz, br_01_19e3                                                  ; $19dc : $20, $05

	dec (hl)                                                  ; $19de : $35
	ex de, hl                                                  ; $19df : $eb
	jp Jump_01_1d36                                                  ; $19e0 : $c3, $36, $1d


br_01_19e3:
	xor a                                                  ; $19e3 : $af
	ld (hl), a                                                  ; $19e4 : $77
	ld e, c                                                  ; $19e5 : $59
	call Call_01_20f9                                                  ; $19e6 : $cd, $f9, $20
	ld hl, $18c9                                                  ; $19e9 : $21, $c9, $18
	call $41a6                                                  ; $19ec : $cd, $a6, $41
	ld d, a                                                  ; $19ef : $57
	ld a, $3f                                                  ; $19f0 : $3e, $3f
	call Call_01_032a                                                  ; $19f2 : $cd, $2a, $03
	add hl, de                                                  ; $19f5 : $19
	ld a, (hl)                                                  ; $19f6 : $7e
	call Call_01_032a                                                  ; $19f7 : $cd, $2a, $03
	rst $10                                                  ; $19fa : $d7
	call Call_01_032a                                                  ; $19fb : $cd, $2a, $03
	ld hl, $191d                                                  ; $19fe : $21, $1d, $19
	push hl                                                  ; $1a01 : $e5
	ld hl, ($40ea)                                                  ; $1a02 : $2a, $ea, $40
	ex (sp), hl                                                  ; $1a05 : $e3

Jump_01_1a06:
	call Call_01_28a7                                                  ; $1a06 : $cd, $a7, $28
	pop hl                                                  ; $1a09 : $e1
	ld de, $fffe                                                  ; $1a0a : $11, $fe, $ff
	rst $18                                                  ; $1a0d : $df
	jp z, Jump_01_0674                                                  ; $1a0e : $ca, $74, $06
	ld a, h                                                  ; $1a11 : $7c
	and l                                                  ; $1a12 : $a5
	inc a                                                  ; $1a13 : $3c
	jp Jump_01_3713                                                  ; $1a14 : $c3, $13, $37


	ld a, $c1                                                  ; $1a17 : $3e, $c1

Jump_01_1a19:
br_01_1a19:
	call Call_01_038b                                                  ; $1a19 : $cd, $8b, $03
	call $41ac                                                  ; $1a1c : $cd, $ac, $41
	nop                                                  ; $1a1f : $00
	nop                                                  ; $1a20 : $00
	nop                                                  ; $1a21 : $00
	call Call_01_20f9                                                  ; $1a22 : $cd, $f9, $20
	ld hl, $1929                                                  ; $1a25 : $21, $29, $19
	call Call_01_28a7                                                  ; $1a28 : $cd, $a7, $28
	ld a, ($409a)                                                  ; $1a2b : $3a, $9a, $40
	sub $02                                                  ; $1a2e : $d6, $02
	nop                                                  ; $1a30 : $00
	nop                                                  ; $1a31 : $00
	nop                                                  ; $1a32 : $00

Jump_01_1a33:
	ld hl, $ffff                                                  ; $1a33 : $21, $ff, $ff
	ld ($40a2), hl                                                  ; $1a36 : $22, $a2, $40
	ld a, ($40e1)                                                  ; $1a39 : $3a, $e1, $40
	or a                                                  ; $1a3c : $b7
	jr z, br_01_1a79                                                  ; $1a3d : $28, $3a

	ld hl, ($40e2)                                                  ; $1a3f : $2a, $e2, $40
	push hl                                                  ; $1a42 : $e5
	call Call_01_0faf                                                  ; $1a43 : $cd, $af, $0f
	ld a, $20                                                  ; $1a46 : $3e, $20
	call Call_01_032a                                                  ; $1a48 : $cd, $2a, $03
	pop de                                                  ; $1a4b : $d1
	push de                                                  ; $1a4c : $d5
	call Call_01_1b2c                                                  ; $1a4d : $cd, $2c, $1b
	call c, Call_01_2e53                                                  ; $1a50 : $dc, $53, $2e
	nop                                                  ; $1a53 : $00
	call Call_01_03e3                                                  ; $1a54 : $cd, $e3, $03
	pop de                                                  ; $1a57 : $d1
	jr nc, br_01_1a60                                                  ; $1a58 : $30, $06

br_01_1a5a:
	xor a                                                  ; $1a5a : $af
	ld ($40e1), a                                                  ; $1a5b : $32, $e1, $40
	jr br_01_1a19                                                  ; $1a5e : $18, $b9

br_01_1a60:
	ld hl, ($40e4)                                                  ; $1a60 : $2a, $e4, $40
	add hl, de                                                  ; $1a63 : $19
	jr c, br_01_1a5a                                                  ; $1a64 : $38, $f4

	push de                                                  ; $1a66 : $d5
	ld de, $fff9                                                  ; $1a67 : $11, $f9, $ff
	rst $18                                                  ; $1a6a : $df
	pop de                                                  ; $1a6b : $d1
	jr nc, br_01_1a5a                                                  ; $1a6c : $30, $ec

	ld ($40e2), hl                                                  ; $1a6e : $22, $e2, $40
	nop                                                  ; $1a71 : $00
	nop                                                  ; $1a72 : $00
	ld hl, $41e7                                                  ; $1a73 : $21, $e7, $41
	jp Jump_01_1a81                                                  ; $1a76 : $c3, $81, $1a


br_01_1a79:
	nop                                                  ; $1a79 : $00
	nop                                                  ; $1a7a : $00
	call Call_01_03e3                                                  ; $1a7b : $cd, $e3, $03
	jp c, Jump_01_1a33                                                  ; $1a7e : $da, $33, $1a

Jump_01_1a81:
	rst $10                                                  ; $1a81 : $d7
	inc a                                                  ; $1a82 : $3c
	dec a                                                  ; $1a83 : $3d
	jp z, Jump_01_1a33                                                  ; $1a84 : $ca, $33, $1a
	push af                                                  ; $1a87 : $f5
	call Call_01_1e5a                                                  ; $1a88 : $cd, $5a, $1e

br_01_1a8b:
	dec hl                                                  ; $1a8b : $2b
	ld a, (hl)                                                  ; $1a8c : $7e
	cp $20                                                  ; $1a8d : $fe, $20
	jr z, br_01_1a8b                                                  ; $1a8f : $28, $fa

	inc hl                                                  ; $1a91 : $23
	ld a, (hl)                                                  ; $1a92 : $7e
	cp $20                                                  ; $1a93 : $fe, $20
	call z, Call_01_09c9                                                  ; $1a95 : $cc, $c9, $09
	push de                                                  ; $1a98 : $d5
	call Call_01_1bc0                                                  ; $1a99 : $cd, $c0, $1b
	pop de                                                  ; $1a9c : $d1
	pop af                                                  ; $1a9d : $f1
	ld ($40e6), hl                                                  ; $1a9e : $22, $e6, $40
	call $41b2                                                  ; $1aa1 : $cd, $b2, $41
	jp nc, Jump_01_1d5a                                                  ; $1aa4 : $d2, $5a, $1d
	push de                                                  ; $1aa7 : $d5
	push bc                                                  ; $1aa8 : $c5
	xor a                                                  ; $1aa9 : $af
	ld ($40dd), a                                                  ; $1aaa : $32, $dd, $40
	rst $10                                                  ; $1aad : $d7
	or a                                                  ; $1aae : $b7
	push af                                                  ; $1aaf : $f5
	ex de, hl                                                  ; $1ab0 : $eb
	ld ($40ec), hl                                                  ; $1ab1 : $22, $ec, $40
	ex de, hl                                                  ; $1ab4 : $eb
	call Call_01_1b2c                                                  ; $1ab5 : $cd, $2c, $1b
	push bc                                                  ; $1ab8 : $c5
	call c, Call_01_2be4                                                  ; $1ab9 : $dc, $e4, $2b
	pop de                                                  ; $1abc : $d1
	pop af                                                  ; $1abd : $f1
	push de                                                  ; $1abe : $d5
	jr z, br_01_1ae8                                                  ; $1abf : $28, $27

	pop de                                                  ; $1ac1 : $d1
	ld hl, ($40f9)                                                  ; $1ac2 : $2a, $f9, $40
	ex (sp), hl                                                  ; $1ac5 : $e3
	pop bc                                                  ; $1ac6 : $c1
	add hl, bc                                                  ; $1ac7 : $09
	push hl                                                  ; $1ac8 : $e5
	call Call_01_1955                                                  ; $1ac9 : $cd, $55, $19
	pop hl                                                  ; $1acc : $e1
	ld ($40f9), hl                                                  ; $1acd : $22, $f9, $40
	ex de, hl                                                  ; $1ad0 : $eb
	ld (hl), h                                                  ; $1ad1 : $74
	pop de                                                  ; $1ad2 : $d1
	push hl                                                  ; $1ad3 : $e5
	inc hl                                                  ; $1ad4 : $23
	inc hl                                                  ; $1ad5 : $23
	ld (hl), e                                                  ; $1ad6 : $73
	inc hl                                                  ; $1ad7 : $23
	ld (hl), d                                                  ; $1ad8 : $72
	inc hl                                                  ; $1ad9 : $23
	ex de, hl                                                  ; $1ada : $eb
	ld hl, ($40a7)                                                  ; $1adb : $2a, $a7, $40
	ex de, hl                                                  ; $1ade : $eb
	dec de                                                  ; $1adf : $1b
	dec de                                                  ; $1ae0 : $1b

br_01_1ae1:
	ld a, (de)                                                  ; $1ae1 : $1a
	ld (hl), a                                                  ; $1ae2 : $77
	inc hl                                                  ; $1ae3 : $23
	inc de                                                  ; $1ae4 : $13
	or a                                                  ; $1ae5 : $b7
	jr nz, br_01_1ae1                                                  ; $1ae6 : $20, $f9

Jump_01_1ae8:
br_01_1ae8:
	pop de                                                  ; $1ae8 : $d1
	call Call_01_1afc                                                  ; $1ae9 : $cd, $fc, $1a
	call $41b5                                                  ; $1aec : $cd, $b5, $41
	call Call_01_1b5d                                                  ; $1aef : $cd, $5d, $1b
	call $41b8                                                  ; $1af2 : $cd, $b8, $41
	jp Jump_01_1a33                                                  ; $1af5 : $c3, $33, $1a


	ld hl, ($40a4)                                                  ; $1af8 : $2a, $a4, $40
	ex de, hl                                                  ; $1afb : $eb

Call_01_1afc:
br_01_1afc:
	ld h, d                                                  ; $1afc : $62
	ld l, e                                                  ; $1afd : $6b
	ld a, (hl)                                                  ; $1afe : $7e
	inc hl                                                  ; $1aff : $23
	or (hl)                                                  ; $1b00 : $b6
	ret z                                                  ; $1b01 : $c8

	inc hl                                                  ; $1b02 : $23
	inc hl                                                  ; $1b03 : $23
	inc hl                                                  ; $1b04 : $23
	xor a                                                  ; $1b05 : $af

br_01_1b06:
	cp (hl)                                                  ; $1b06 : $be
	inc hl                                                  ; $1b07 : $23
	jr nz, br_01_1b06                                                  ; $1b08 : $20, $fc

	ex de, hl                                                  ; $1b0a : $eb
	ld (hl), e                                                  ; $1b0b : $73
	inc hl                                                  ; $1b0c : $23
	ld (hl), d                                                  ; $1b0d : $72
	jr br_01_1afc                                                  ; $1b0e : $18, $ec

Call_01_1b10:
	ld de, $0000                                                  ; $1b10 : $11, $00, $00
	push de                                                  ; $1b13 : $d5
	jr z, $09                                                  ; $1b14 : $28, $09

	pop de                                                  ; $1b16 : $d1
	call Call_01_1e4f                                                  ; $1b17 : $cd, $4f, $1e
	push de                                                  ; $1b1a : $d5
	jr z, br_01_1b28                                                  ; $1b1b : $28, $0b

	rst $08                                                  ; $1b1d : $cf
	adc a, $11                                                  ; $1b1e : $ce, $11
	jp m, $c4ff                                                  ; $1b20 : $fa, $ff, $c4
	ld c, a                                                  ; $1b23 : $4f
	ld e, $c2                                                  ; $1b24 : $1e, $c2
	sub a                                                  ; $1b26 : $97
	add hl, de                                                  ; $1b27 : $19

br_01_1b28:
	ex de, hl                                                  ; $1b28 : $eb
	pop de                                                  ; $1b29 : $d1

Call_01_1b2a:
	ex (sp), hl                                                  ; $1b2a : $e3
	push hl                                                  ; $1b2b : $e5

Call_01_1b2c:
	ld hl, ($40a4)                                                  ; $1b2c : $2a, $a4, $40

Call_01_1b2f:
br_01_1b2f:
	ld b, h                                                  ; $1b2f : $44
	ld c, l                                                  ; $1b30 : $4d
	ld a, (hl)                                                  ; $1b31 : $7e
	inc hl                                                  ; $1b32 : $23
	or (hl)                                                  ; $1b33 : $b6
	dec hl                                                  ; $1b34 : $2b
	ret z                                                  ; $1b35 : $c8

	inc hl                                                  ; $1b36 : $23
	inc hl                                                  ; $1b37 : $23
	ld a, (hl)                                                  ; $1b38 : $7e
	inc hl                                                  ; $1b39 : $23
	ld h, (hl)                                                  ; $1b3a : $66
	ld l, a                                                  ; $1b3b : $6f
	rst $18                                                  ; $1b3c : $df
	ld h, b                                                  ; $1b3d : $60
	ld l, c                                                  ; $1b3e : $69
	ld a, (hl)                                                  ; $1b3f : $7e
	inc hl                                                  ; $1b40 : $23
	ld h, (hl)                                                  ; $1b41 : $66
	ld l, a                                                  ; $1b42 : $6f
	ccf                                                  ; $1b43 : $3f
	ret z                                                  ; $1b44 : $c8

	ccf                                                  ; $1b45 : $3f
	ret nc                                                  ; $1b46 : $d0

	jr br_01_1b2f                                                  ; $1b47 : $18, $e6

	ret nz                                                  ; $1b49 : $c0

	call Call_01_01c9                                                  ; $1b4a : $cd, $c9, $01

Call_01_1b4d:
	ld hl, ($40a4)                                                  ; $1b4d : $2a, $a4, $40
	call $1df8                                                  ; $1b50 : $cd, $f8, $1d
	ld ($40e1), a                                                  ; $1b53 : $32, $e1, $40
	ld (hl), a                                                  ; $1b56 : $77
	inc hl                                                  ; $1b57 : $23
	ld (hl), a                                                  ; $1b58 : $77
	inc hl                                                  ; $1b59 : $23
	ld ($40f9), hl                                                  ; $1b5a : $22, $f9, $40

Call_01_1b5d:
Jump_01_1b5d:
	ld hl, ($40a4)                                                  ; $1b5d : $2a, $a4, $40
	dec hl                                                  ; $1b60 : $2b

Call_01_1b61:
Jump_01_1b61:
	ld ($40df), hl                                                  ; $1b61 : $22, $df, $40
	ld b, $1a                                                  ; $1b64 : $06, $1a
	ld hl, $4101                                                  ; $1b66 : $21, $01, $41

br_01_1b69:
	ld (hl), $04                                                  ; $1b69 : $36, $04
	inc hl                                                  ; $1b6b : $23
	djnz br_01_1b69                                                  ; $1b6c : $10, $fb
	xor a                                                  ; $1b6e : $af
	ld ($40f2), a                                                  ; $1b6f : $32, $f2, $40
	ld l, a                                                  ; $1b72 : $6f
	ld h, a                                                  ; $1b73 : $67
	ld ($40f0), hl                                                  ; $1b74 : $22, $f0, $40
	ld ($40f7), hl                                                  ; $1b77 : $22, $f7, $40
	ld hl, ($40b1)                                                  ; $1b7a : $2a, $b1, $40
	ld ($40d6), hl                                                  ; $1b7d : $22, $d6, $40
	call Call_01_1d91                                                  ; $1b80 : $cd, $91, $1d
	ld hl, ($40f9)                                                  ; $1b83 : $2a, $f9, $40
	ld ($40fb), hl                                                  ; $1b86 : $22, $fb, $40
	ld ($40fd), hl                                                  ; $1b89 : $22, $fd, $40
	call $41bb                                                  ; $1b8c : $cd, $bb, $41

Call_01_1b8f:
	pop bc                                                  ; $1b8f : $c1
	ld hl, ($40a0)                                                  ; $1b90 : $2a, $a0, $40
	dec hl                                                  ; $1b93 : $2b
	dec hl                                                  ; $1b94 : $2b
	ld ($40e8), hl                                                  ; $1b95 : $22, $e8, $40
	inc hl                                                  ; $1b98 : $23
	inc hl                                                  ; $1b99 : $23

Jump_01_1b9a:
	ld sp, hl                                                  ; $1b9a : $f9
	ld hl, $40b5                                                  ; $1b9b : $21, $b5, $40
	ld ($40b3), hl                                                  ; $1b9e : $22, $b3, $40
	call Call_01_038b                                                  ; $1ba1 : $cd, $8b, $03
	call Call_01_2169                                                  ; $1ba4 : $cd, $69, $21
	xor a                                                  ; $1ba7 : $af
	ld h, a                                                  ; $1ba8 : $67
	ld l, a                                                  ; $1ba9 : $6f
	ld ($40dc), a                                                  ; $1baa : $32, $dc, $40
	push hl                                                  ; $1bad : $e5
	push bc                                                  ; $1bae : $c5
	ld hl, ($40df)                                                  ; $1baf : $2a, $df, $40
	ret                                                  ; $1bb2 : $c9


Call_01_1bb3:
	ld a, $5d                                                  ; $1bb3 : $3e, $5d
	call Call_01_032a                                                  ; $1bb5 : $cd, $2a, $03
	ld a, $20                                                  ; $1bb8 : $3e, $20
	call Call_01_032a                                                  ; $1bba : $cd, $2a, $03
	jp Jump_01_35e9                                                  ; $1bbd : $c3, $e9, $35


Call_01_1bc0:
	xor a                                                  ; $1bc0 : $af
	ld ($40b0), a                                                  ; $1bc1 : $32, $b0, $40
	ld c, a                                                  ; $1bc4 : $4f
	ex de, hl                                                  ; $1bc5 : $eb
	ld hl, ($40a7)                                                  ; $1bc6 : $2a, $a7, $40
	dec hl                                                  ; $1bc9 : $2b
	dec hl                                                  ; $1bca : $2b
	ex de, hl                                                  ; $1bcb : $eb

Jump_01_1bcc:
	ld a, (hl)                                                  ; $1bcc : $7e
	cp $20                                                  ; $1bcd : $fe, $20
	jp z, Jump_01_1c5b                                                  ; $1bcf : $ca, $5b, $1c
	ld b, a                                                  ; $1bd2 : $47
	cp $22                                                  ; $1bd3 : $fe, $22
	jp z, Jump_01_1c77                                                  ; $1bd5 : $ca, $77, $1c
	or a                                                  ; $1bd8 : $b7
	jp z, Jump_01_1c7d                                                  ; $1bd9 : $ca, $7d, $1c
	ld a, ($40b0)                                                  ; $1bdc : $3a, $b0, $40
	or a                                                  ; $1bdf : $b7
	ld a, (hl)                                                  ; $1be0 : $7e
	jp nz, Jump_01_1c5b                                                  ; $1be1 : $c2, $5b, $1c
	cp $3f                                                  ; $1be4 : $fe, $3f
	ld a, $b2                                                  ; $1be6 : $3e, $b2
	jp z, Jump_01_1c5b                                                  ; $1be8 : $ca, $5b, $1c
	ld a, (hl)                                                  ; $1beb : $7e
	cp $30                                                  ; $1bec : $fe, $30
	jr c, br_01_1bf5                                                  ; $1bee : $38, $05

	cp $3c                                                  ; $1bf0 : $fe, $3c
	jp c, Jump_01_1c5b                                                  ; $1bf2 : $da, $5b, $1c

br_01_1bf5:
	push de                                                  ; $1bf5 : $d5
	ld de, $164f                                                  ; $1bf6 : $11, $4f, $16
	push bc                                                  ; $1bf9 : $c5
	ld bc, $1c3d                                                  ; $1bfa : $01, $3d, $1c
	push bc                                                  ; $1bfd : $c5
	ld b, $7f                                                  ; $1bfe : $06, $7f
	ld a, (hl)                                                  ; $1c00 : $7e
	cp $61                                                  ; $1c01 : $fe, $61
	jr c, br_01_1c0c                                                  ; $1c03 : $38, $07

	cp $7b                                                  ; $1c05 : $fe, $7b
	jr nc, br_01_1c0c                                                  ; $1c07 : $30, $03

	and $5f                                                  ; $1c09 : $e6, $5f
	ld (hl), a                                                  ; $1c0b : $77

br_01_1c0c:
	ld c, (hl)                                                  ; $1c0c : $4e
	ex de, hl                                                  ; $1c0d : $eb

Jump_01_1c0e:
br_01_1c0e:
	inc hl                                                  ; $1c0e : $23
	or (hl)                                                  ; $1c0f : $b6
	jp p, Jump_01_1c0e                                                  ; $1c10 : $f2, $0e, $1c
	inc b                                                  ; $1c13 : $04
	ld a, (hl)                                                  ; $1c14 : $7e
	and $7f                                                  ; $1c15 : $e6, $7f
	ret z                                                  ; $1c17 : $c8

	cp c                                                  ; $1c18 : $b9
	jr nz, br_01_1c0e                                                  ; $1c19 : $20, $f3

	ex de, hl                                                  ; $1c1b : $eb
	push hl                                                  ; $1c1c : $e5

br_01_1c1d:
	inc de                                                  ; $1c1d : $13
	ld a, (de)                                                  ; $1c1e : $1a
	or a                                                  ; $1c1f : $b7
	jp m, Jump_01_1c39                                                  ; $1c20 : $fa, $39, $1c
	ld c, a                                                  ; $1c23 : $4f
	ld a, b                                                  ; $1c24 : $78
	cp $8d                                                  ; $1c25 : $fe, $8d
	jr nz, br_01_1c2b                                                  ; $1c27 : $20, $02

	rst $10                                                  ; $1c29 : $d7
	dec hl                                                  ; $1c2a : $2b

br_01_1c2b:
	inc hl                                                  ; $1c2b : $23
	ld a, (hl)                                                  ; $1c2c : $7e
	cp $61                                                  ; $1c2d : $fe, $61
	jr c, br_01_1c33                                                  ; $1c2f : $38, $02

	and $5f                                                  ; $1c31 : $e6, $5f

br_01_1c33:
	cp c                                                  ; $1c33 : $b9
	jr z, br_01_1c1d                                                  ; $1c34 : $28, $e7

	pop hl                                                  ; $1c36 : $e1
	jr br_01_1c0c                                                  ; $1c37 : $18, $d3

Jump_01_1c39:
	ld c, b                                                  ; $1c39 : $48
	pop af                                                  ; $1c3a : $f1
	ex de, hl                                                  ; $1c3b : $eb
	ret                                                  ; $1c3c : $c9


	ex de, hl                                                  ; $1c3d : $eb
	ld a, c                                                  ; $1c3e : $79
	pop bc                                                  ; $1c3f : $c1
	pop de                                                  ; $1c40 : $d1
	ex de, hl                                                  ; $1c41 : $eb
	cp $95                                                  ; $1c42 : $fe, $95
	ld (hl), $3a                                                  ; $1c44 : $36, $3a
	jr nz, br_01_1c4a                                                  ; $1c46 : $20, $02

	inc c                                                  ; $1c48 : $0c
	inc hl                                                  ; $1c49 : $23

br_01_1c4a:
	cp $fb                                                  ; $1c4a : $fe, $fb
	jr nz, br_01_1c5a                                                  ; $1c4c : $20, $0c

	ld (hl), $3a                                                  ; $1c4e : $36, $3a
	inc hl                                                  ; $1c50 : $23
	ld b, $93                                                  ; $1c51 : $06, $93
	ld (hl), b                                                  ; $1c53 : $70
	inc hl                                                  ; $1c54 : $23
	ex de, hl                                                  ; $1c55 : $eb
	inc c                                                  ; $1c56 : $0c
	inc c                                                  ; $1c57 : $0c
	jr br_01_1c77                                                  ; $1c58 : $18, $1d

br_01_1c5a:
	ex de, hl                                                  ; $1c5a : $eb

Jump_01_1c5b:
br_01_1c5b:
	inc hl                                                  ; $1c5b : $23
	ld (de), a                                                  ; $1c5c : $12
	inc de                                                  ; $1c5d : $13
	inc c                                                  ; $1c5e : $0c
	sub $3a                                                  ; $1c5f : $d6, $3a
	jr z, br_01_1c67                                                  ; $1c61 : $28, $04

	cp $4e                                                  ; $1c63 : $fe, $4e
	jr nz, br_01_1c6a                                                  ; $1c65 : $20, $03

br_01_1c67:
	ld ($40b0), a                                                  ; $1c67 : $32, $b0, $40

br_01_1c6a:
	sub $59                                                  ; $1c6a : $d6, $59
	jp nz, Jump_01_1bcc                                                  ; $1c6c : $c2, $cc, $1b
	ld b, a                                                  ; $1c6f : $47

br_01_1c70:
	ld a, (hl)                                                  ; $1c70 : $7e
	or a                                                  ; $1c71 : $b7
	jr z, br_01_1c7d                                                  ; $1c72 : $28, $09

	cp b                                                  ; $1c74 : $b8
	jr z, br_01_1c5b                                                  ; $1c75 : $28, $e4

Jump_01_1c77:
br_01_1c77:
	inc hl                                                  ; $1c77 : $23
	ld (de), a                                                  ; $1c78 : $12
	inc c                                                  ; $1c79 : $0c
	inc de                                                  ; $1c7a : $13
	jr br_01_1c70                                                  ; $1c7b : $18, $f3

Jump_01_1c7d:
br_01_1c7d:
	ld hl, $0005                                                  ; $1c7d : $21, $05, $00
	ld b, h                                                  ; $1c80 : $44
	add hl, bc                                                  ; $1c81 : $09
	ld b, h                                                  ; $1c82 : $44
	ld c, l                                                  ; $1c83 : $4d
	ld hl, ($40a7)                                                  ; $1c84 : $2a, $a7, $40
	dec hl                                                  ; $1c87 : $2b
	dec hl                                                  ; $1c88 : $2b
	dec hl                                                  ; $1c89 : $2b
	ld (de), a                                                  ; $1c8a : $12
	inc de                                                  ; $1c8b : $13
	ld (de), a                                                  ; $1c8c : $12
	inc de                                                  ; $1c8d : $13
	ld (de), a                                                  ; $1c8e : $12
	ret                                                  ; $1c8f : $c9


Jump_01_1c90:
	ld a, h                                                  ; $1c90 : $7c
	sub d                                                  ; $1c91 : $92
	ret nz                                                  ; $1c92 : $c0

	ld a, l                                                  ; $1c93 : $7d
	sub e                                                  ; $1c94 : $93
	ret                                                  ; $1c95 : $c9


Jump_01_1c96:
	ld a, (hl)                                                  ; $1c96 : $7e
	ex (sp), hl                                                  ; $1c97 : $e3
	cp (hl)                                                  ; $1c98 : $be
	inc hl                                                  ; $1c99 : $23
	ex (sp), hl                                                  ; $1c9a : $e3
	jp z, Jump_01_1d78                                                  ; $1c9b : $ca, $78, $1d
	jp Jump_01_1997                                                  ; $1c9e : $c3, $97, $19


	ld a, $64                                                  ; $1ca1 : $3e, $64
	ld ($40dc), a                                                  ; $1ca3 : $32, $dc, $40
	call Call_01_1f21                                                  ; $1ca6 : $cd, $21, $1f
	ex (sp), hl                                                  ; $1ca9 : $e3
	call Call_01_1936                                                  ; $1caa : $cd, $36, $19
	pop de                                                  ; $1cad : $d1
	jr nz, br_01_1cb5                                                  ; $1cae : $20, $05

	add hl, bc                                                  ; $1cb0 : $09
	ld sp, hl                                                  ; $1cb1 : $f9
	ld ($40e8), hl                                                  ; $1cb2 : $22, $e8, $40

br_01_1cb5:
	ex de, hl                                                  ; $1cb5 : $eb
	ld c, $08                                                  ; $1cb6 : $0e, $08
	call Call_01_1963                                                  ; $1cb8 : $cd, $63, $19
	push hl                                                  ; $1cbb : $e5
	call Call_01_1f05                                                  ; $1cbc : $cd, $05, $1f
	ex (sp), hl                                                  ; $1cbf : $e3
	push hl                                                  ; $1cc0 : $e5
	ld hl, ($40a2)                                                  ; $1cc1 : $2a, $a2, $40
	ex (sp), hl                                                  ; $1cc4 : $e3
	rst $08                                                  ; $1cc5 : $cf
	cp l                                                  ; $1cc6 : $bd
	rst $20                                                  ; $1cc7 : $e7
	jp z, Jump_01_0af6                                                  ; $1cc8 : $ca, $f6, $0a
	jp nc, Jump_01_0af6                                                  ; $1ccb : $d2, $f6, $0a
	push af                                                  ; $1cce : $f5
	call $2337                                                  ; $1ccf : $cd, $37, $23
	pop af                                                  ; $1cd2 : $f1
	push hl                                                  ; $1cd3 : $e5
	jp p, Jump_01_1cec                                                  ; $1cd4 : $f2, $ec, $1c
	call Call_01_0a7f                                                  ; $1cd7 : $cd, $7f, $0a
	ex (sp), hl                                                  ; $1cda : $e3
	ld de, $0001                                                  ; $1cdb : $11, $01, $00
	ld a, (hl)                                                  ; $1cde : $7e
	cp $cc                                                  ; $1cdf : $fe, $cc
	call z, Call_01_2b01                                                  ; $1ce1 : $cc, $01, $2b
	push de                                                  ; $1ce4 : $d5
	push hl                                                  ; $1ce5 : $e5
	ex de, hl                                                  ; $1ce6 : $eb
	call Call_01_099e                                                  ; $1ce7 : $cd, $9e, $09
	jr br_01_1d0e                                                  ; $1cea : $18, $22

Jump_01_1cec:
	call Call_01_0ab1                                                  ; $1cec : $cd, $b1, $0a
	call Call_01_09bf                                                  ; $1cef : $cd, $bf, $09
	pop hl                                                  ; $1cf2 : $e1
	push bc                                                  ; $1cf3 : $c5
	push de                                                  ; $1cf4 : $d5
	ld bc, $8100                                                  ; $1cf5 : $01, $00, $81
	ld d, c                                                  ; $1cf8 : $51
	ld e, d                                                  ; $1cf9 : $5a
	ld a, (hl)                                                  ; $1cfa : $7e
	cp $cc                                                  ; $1cfb : $fe, $cc
	ld a, $01                                                  ; $1cfd : $3e, $01
	jr nz, br_01_1d0f                                                  ; $1cff : $20, $0e

	call Call_01_2338                                                  ; $1d01 : $cd, $38, $23
	push hl                                                  ; $1d04 : $e5
	call Call_01_0ab1                                                  ; $1d05 : $cd, $b1, $0a
	call Call_01_09bf                                                  ; $1d08 : $cd, $bf, $09
	call Call_01_0955                                                  ; $1d0b : $cd, $55, $09

br_01_1d0e:
	pop hl                                                  ; $1d0e : $e1

br_01_1d0f:
	push bc                                                  ; $1d0f : $c5
	push de                                                  ; $1d10 : $d5
	ld c, a                                                  ; $1d11 : $4f
	rst $20                                                  ; $1d12 : $e7
	ld b, a                                                  ; $1d13 : $47
	push bc                                                  ; $1d14 : $c5
	push hl                                                  ; $1d15 : $e5
	ld hl, ($40df)                                                  ; $1d16 : $2a, $df, $40
	ex (sp), hl                                                  ; $1d19 : $e3

Jump_01_1d1a:
	ld b, $81                                                  ; $1d1a : $06, $81
	push bc                                                  ; $1d1c : $c5
	inc sp                                                  ; $1d1d : $33

Jump_01_1d1e:
	call Call_01_0358                                                  ; $1d1e : $cd, $58, $03
	or a                                                  ; $1d21 : $b7
	call nz, Call_01_1da0                                                  ; $1d22 : $c4, $a0, $1d
	ld ($40e6), hl                                                  ; $1d25 : $22, $e6, $40
	ld ($40e8), sp                                                  ; $1d28 : $ed, $73, $e8, $40
	ld a, (hl)                                                  ; $1d2c : $7e
	cp $3a                                                  ; $1d2d : $fe, $3a
	jr z, br_01_1d5a                                                  ; $1d2f : $28, $29

	or a                                                  ; $1d31 : $b7
	jp nz, Jump_01_1997                                                  ; $1d32 : $c2, $97, $19
	inc hl                                                  ; $1d35 : $23

Jump_01_1d36:
	ld a, (hl)                                                  ; $1d36 : $7e
	inc hl                                                  ; $1d37 : $23
	or (hl)                                                  ; $1d38 : $b6
	jp z, Jump_01_197e                                                  ; $1d39 : $ca, $7e, $19
	inc hl                                                  ; $1d3c : $23
	ld e, (hl)                                                  ; $1d3d : $5e
	inc hl                                                  ; $1d3e : $23
	ld d, (hl)                                                  ; $1d3f : $56
	ex de, hl                                                  ; $1d40 : $eb
	ld ($40a2), hl                                                  ; $1d41 : $22, $a2, $40
	ld a, ($411b)                                                  ; $1d44 : $3a, $1b, $41
	or a                                                  ; $1d47 : $b7
	jr z, br_01_1d59                                                  ; $1d48 : $28, $0f

	push de                                                  ; $1d4a : $d5
	ld a, $3c                                                  ; $1d4b : $3e, $3c
	call Call_01_032a                                                  ; $1d4d : $cd, $2a, $03
	call Call_01_0faf                                                  ; $1d50 : $cd, $af, $0f
	ld a, $3e                                                  ; $1d53 : $3e, $3e
	call Call_01_032a                                                  ; $1d55 : $cd, $2a, $03
	pop de                                                  ; $1d58 : $d1

br_01_1d59:
	ex de, hl                                                  ; $1d59 : $eb

Jump_01_1d5a:
br_01_1d5a:
	rst $10                                                  ; $1d5a : $d7
	ld de, $1d1e                                                  ; $1d5b : $11, $1e, $1d
	push de                                                  ; $1d5e : $d5

Jump_01_1d5f:
	ret z                                                  ; $1d5f : $c8

Jump_01_1d60:
	sub $80                                                  ; $1d60 : $d6, $80
	jp c, Jump_01_1f21                                                  ; $1d62 : $da, $21, $1f
	cp $3c                                                  ; $1d65 : $fe, $3c
	jp nc, Jump_01_2ae7                                                  ; $1d67 : $d2, $e7, $2a
	rlca                                                  ; $1d6a : $07
	ld c, a                                                  ; $1d6b : $4f
	ld b, $00                                                  ; $1d6c : $06, $00
	ex de, hl                                                  ; $1d6e : $eb
	ld hl, $1822                                                  ; $1d6f : $21, $22, $18
	add hl, bc                                                  ; $1d72 : $09
	ld c, (hl)                                                  ; $1d73 : $4e
	inc hl                                                  ; $1d74 : $23
	ld b, (hl)                                                  ; $1d75 : $46
	push bc                                                  ; $1d76 : $c5
	ex de, hl                                                  ; $1d77 : $eb

Call_01_1d78:
Jump_01_1d78:
	inc hl                                                  ; $1d78 : $23
	ld a, (hl)                                                  ; $1d79 : $7e
	cp $3a                                                  ; $1d7a : $fe, $3a
	ret nc                                                  ; $1d7c : $d0

	cp $20                                                  ; $1d7d : $fe, $20
	jp z, Jump_01_1d78                                                  ; $1d7f : $ca, $78, $1d
	cp $0b                                                  ; $1d82 : $fe, $0b
	jr nc, br_01_1d8b                                                  ; $1d84 : $30, $05

	cp $09                                                  ; $1d86 : $fe, $09
	jp nc, Jump_01_1d78                                                  ; $1d88 : $d2, $78, $1d

br_01_1d8b:
	cp $30                                                  ; $1d8b : $fe, $30
	ccf                                                  ; $1d8d : $3f
	inc a                                                  ; $1d8e : $3c
	dec a                                                  ; $1d8f : $3d
	ret                                                  ; $1d90 : $c9


Call_01_1d91:
	ex de, hl                                                  ; $1d91 : $eb
	ld hl, ($40a4)                                                  ; $1d92 : $2a, $a4, $40
	dec hl                                                  ; $1d95 : $2b

Jump_01_1d96:
	ld ($40ff), hl                                                  ; $1d96 : $22, $ff, $40
	ex de, hl                                                  ; $1d99 : $eb
	ret                                                  ; $1d9a : $c9


Call_01_1d9b:
	call Call_01_0358                                                  ; $1d9b : $cd, $58, $03
	or a                                                  ; $1d9e : $b7
	ret z                                                  ; $1d9f : $c8

Call_01_1da0:
Jump_01_1da0:
	call Call_01_379d                                                  ; $1da0 : $cd, $9d, $37
	nop                                                  ; $1da3 : $00
	nop                                                  ; $1da4 : $00
	ld ($4099), a                                                  ; $1da5 : $32, $99, $40
	dec a                                                  ; $1da8 : $3d
	ret nz                                                  ; $1da9 : $c0

	inc a                                                  ; $1daa : $3c
	jp Jump_01_1db4                                                  ; $1dab : $c3, $b4, $1d


	ret nz                                                  ; $1dae : $c0

	push af                                                  ; $1daf : $f5
	call z, $41bb                                                  ; $1db0 : $cc, $bb, $41
	pop af                                                  ; $1db3 : $f1

Jump_01_1db4:
	ld ($40e6), hl                                                  ; $1db4 : $22, $e6, $40
	ld hl, $40b5                                                  ; $1db7 : $21, $b5, $40
	ld ($40b3), hl                                                  ; $1dba : $22, $b3, $40
	ld hl, $fff6                                                  ; $1dbd : $21, $f6, $ff
	pop bc                                                  ; $1dc0 : $c1

Jump_01_1dc1:
	ld hl, ($40a2)                                                  ; $1dc1 : $2a, $a2, $40
	push hl                                                  ; $1dc4 : $e5
	push af                                                  ; $1dc5 : $f5
	ld a, l                                                  ; $1dc6 : $7d
	and h                                                  ; $1dc7 : $a4
	inc a                                                  ; $1dc8 : $3c
	jr z, br_01_1dd4                                                  ; $1dc9 : $28, $09

	ld ($40f5), hl                                                  ; $1dcb : $22, $f5, $40
	ld hl, ($40e6)                                                  ; $1dce : $2a, $e6, $40
	ld ($40f7), hl                                                  ; $1dd1 : $22, $f7, $40

br_01_1dd4:
	call Call_01_038b                                                  ; $1dd4 : $cd, $8b, $03
	jp Jump_01_37ac                                                  ; $1dd7 : $c3, $ac, $37


Jump_01_1dda:
	pop af                                                  ; $1dda : $f1
	ld hl, $1930                                                  ; $1ddb : $21, $30, $19
	jp nz, Jump_01_1a06                                                  ; $1dde : $c2, $06, $1a
	jp $1a18                                                  ; $1de1 : $c3, $18, $1a


	ld hl, ($40f7)                                                  ; $1de4 : $2a, $f7, $40
	ld a, h                                                  ; $1de7 : $7c
	or l                                                  ; $1de8 : $b5
	ld e, $20                                                  ; $1de9 : $1e, $20
	jp z, Jump_01_19a2                                                  ; $1deb : $ca, $a2, $19
	ex de, hl                                                  ; $1dee : $eb
	ld hl, ($40f5)                                                  ; $1def : $2a, $f5, $40
	ld ($40a2), hl                                                  ; $1df2 : $22, $a2, $40
	ex de, hl                                                  ; $1df5 : $eb
	ret                                                  ; $1df6 : $c9


	ld a, $af                                                  ; $1df7 : $3e, $af
	ld ($411b), a                                                  ; $1df9 : $32, $1b, $41
	ret                                                  ; $1dfc : $c9


	pop af                                                  ; $1dfd : $f1
	pop hl                                                  ; $1dfe : $e1
	ret                                                  ; $1dff : $c9


	ld e, $03                                                  ; $1e00 : $1e, $03
	ld bc, $021e                                                  ; $1e02 : $01, $1e, $02
	ld bc, $041e                                                  ; $1e05 : $01, $1e, $04
	ld bc, $081e                                                  ; $1e08 : $01, $1e, $08

br_01_1e0b:
	call Call_01_1e3d                                                  ; $1e0b : $cd, $3d, $1e
	ld bc, $1997                                                  ; $1e0e : $01, $97, $19
	push bc                                                  ; $1e11 : $c5
	ret c                                                  ; $1e12 : $d8

	sub $41                                                  ; $1e13 : $d6, $41
	ld c, a                                                  ; $1e15 : $4f
	ld b, a                                                  ; $1e16 : $47
	rst $10                                                  ; $1e17 : $d7
	cp $ce                                                  ; $1e18 : $fe, $ce
	jr nz, br_01_1e25                                                  ; $1e1a : $20, $09

	rst $10                                                  ; $1e1c : $d7
	call Call_01_1e3d                                                  ; $1e1d : $cd, $3d, $1e
	ret c                                                  ; $1e20 : $d8

	sub $41                                                  ; $1e21 : $d6, $41
	ld b, a                                                  ; $1e23 : $47
	rst $10                                                  ; $1e24 : $d7

br_01_1e25:
	ld a, b                                                  ; $1e25 : $78
	sub c                                                  ; $1e26 : $91
	ret c                                                  ; $1e27 : $d8

	inc a                                                  ; $1e28 : $3c
	ex (sp), hl                                                  ; $1e29 : $e3
	ld hl, $4101                                                  ; $1e2a : $21, $01, $41
	ld b, $00                                                  ; $1e2d : $06, $00
	add hl, bc                                                  ; $1e2f : $09

br_01_1e30:
	ld (hl), e                                                  ; $1e30 : $73
	inc hl                                                  ; $1e31 : $23
	dec a                                                  ; $1e32 : $3d
	jr nz, br_01_1e30                                                  ; $1e33 : $20, $fb

	pop hl                                                  ; $1e35 : $e1
	ld a, (hl)                                                  ; $1e36 : $7e
	cp $2c                                                  ; $1e37 : $fe, $2c
	ret nz                                                  ; $1e39 : $c0

	rst $10                                                  ; $1e3a : $d7
	jr br_01_1e0b                                                  ; $1e3b : $18, $ce

Call_01_1e3d:
	ld a, (hl)                                                  ; $1e3d : $7e
	cp $41                                                  ; $1e3e : $fe, $41
	ret c                                                  ; $1e40 : $d8

	cp $5b                                                  ; $1e41 : $fe, $5b
	ccf                                                  ; $1e43 : $3f
	ret                                                  ; $1e44 : $c9


Call_01_1e45:
	rst $10                                                  ; $1e45 : $d7

Call_01_1e46:
	call Call_01_2b02                                                  ; $1e46 : $cd, $02, $2b
	ret p                                                  ; $1e49 : $f0

Jump_01_1e4a:
	ld e, $08                                                  ; $1e4a : $1e, $08

Jump_01_1e4c:
	jp Jump_01_19a2                                                  ; $1e4c : $c3, $a2, $19


Call_01_1e4f:
	ld a, (hl)                                                  ; $1e4f : $7e
	cp $2e                                                  ; $1e50 : $fe, $2e
	ex de, hl                                                  ; $1e52 : $eb
	ld hl, ($40ec)                                                  ; $1e53 : $2a, $ec, $40
	ex de, hl                                                  ; $1e56 : $eb
	jp z, Jump_01_1d78                                                  ; $1e57 : $ca, $78, $1d

Call_01_1e5a:
	dec hl                                                  ; $1e5a : $2b

Call_01_1e5b:
	ld de, $0000                                                  ; $1e5b : $11, $00, $00

br_01_1e5e:
	rst $10                                                  ; $1e5e : $d7
	ret nc                                                  ; $1e5f : $d0

	push hl                                                  ; $1e60 : $e5
	push af                                                  ; $1e61 : $f5
	ld hl, $1998                                                  ; $1e62 : $21, $98, $19
	rst $18                                                  ; $1e65 : $df
	jp c, Jump_01_1997                                                  ; $1e66 : $da, $97, $19
	ld h, d                                                  ; $1e69 : $62
	ld l, e                                                  ; $1e6a : $6b
	add hl, de                                                  ; $1e6b : $19
	add hl, hl                                                  ; $1e6c : $29
	add hl, de                                                  ; $1e6d : $19
	add hl, hl                                                  ; $1e6e : $29
	pop af                                                  ; $1e6f : $f1
	sub $30                                                  ; $1e70 : $d6, $30
	ld e, a                                                  ; $1e72 : $5f
	ld d, $00                                                  ; $1e73 : $16, $00
	add hl, de                                                  ; $1e75 : $19
	ex de, hl                                                  ; $1e76 : $eb
	pop hl                                                  ; $1e77 : $e1
	jr br_01_1e5e                                                  ; $1e78 : $18, $e4

	jp z, Jump_01_1b61                                                  ; $1e7a : $ca, $61, $1b
	call Call_01_1e46                                                  ; $1e7d : $cd, $46, $1e
	dec hl                                                  ; $1e80 : $2b
	rst $10                                                  ; $1e81 : $d7
	ret nz                                                  ; $1e82 : $c0

	push hl                                                  ; $1e83 : $e5
	ld hl, ($40b1)                                                  ; $1e84 : $2a, $b1, $40
	ld a, l                                                  ; $1e87 : $7d
	sub e                                                  ; $1e88 : $93
	ld e, a                                                  ; $1e89 : $5f
	ld a, h                                                  ; $1e8a : $7c
	sbc a, d                                                  ; $1e8b : $9a
	ld d, a                                                  ; $1e8c : $57
	jp c, Jump_01_197a                                                  ; $1e8d : $da, $7a, $19
	ld hl, ($40f9)                                                  ; $1e90 : $2a, $f9, $40
	ld bc, $0040                                                  ; $1e93 : $01, $40, $00
	add hl, bc                                                  ; $1e96 : $09
	rst $18                                                  ; $1e97 : $df
	jp nc, Jump_01_197a                                                  ; $1e98 : $d2, $7a, $19
	ex de, hl                                                  ; $1e9b : $eb
	ld ($40a0), hl                                                  ; $1e9c : $22, $a0, $40
	pop hl                                                  ; $1e9f : $e1
	jp Jump_01_1b61                                                  ; $1ea0 : $c3, $61, $1b


	jp z, Jump_01_1b5d                                                  ; $1ea3 : $ca, $5d, $1b
	call $41c7                                                  ; $1ea6 : $cd, $c7, $41
	call Call_01_1b61                                                  ; $1ea9 : $cd, $61, $1b
	ld bc, $1d1e                                                  ; $1eac : $01, $1e, $1d
	jr br_01_1ec1                                                  ; $1eaf : $18, $10

	ld c, $03                                                  ; $1eb1 : $0e, $03
	call Call_01_1963                                                  ; $1eb3 : $cd, $63, $19
	pop bc                                                  ; $1eb6 : $c1
	push hl                                                  ; $1eb7 : $e5
	push hl                                                  ; $1eb8 : $e5
	ld hl, ($40a2)                                                  ; $1eb9 : $2a, $a2, $40
	ex (sp), hl                                                  ; $1ebc : $e3
	ld a, $91                                                  ; $1ebd : $3e, $91
	push af                                                  ; $1ebf : $f5
	inc sp                                                  ; $1ec0 : $33

br_01_1ec1:
	push bc                                                  ; $1ec1 : $c5

Jump_01_1ec2:
	call Call_01_1e5a                                                  ; $1ec2 : $cd, $5a, $1e

Jump_01_1ec5:
	call $1f07                                                  ; $1ec5 : $cd, $07, $1f
	push hl                                                  ; $1ec8 : $e5
	ld hl, ($40a2)                                                  ; $1ec9 : $2a, $a2, $40
	rst $18                                                  ; $1ecc : $df
	pop hl                                                  ; $1ecd : $e1
	inc hl                                                  ; $1ece : $23
	call c, Call_01_1b2f                                                  ; $1ecf : $dc, $2f, $1b
	call nc, Call_01_1b2c                                                  ; $1ed2 : $d4, $2c, $1b
	ld h, b                                                  ; $1ed5 : $60
	ld l, c                                                  ; $1ed6 : $69
	dec hl                                                  ; $1ed7 : $2b
	ret c                                                  ; $1ed8 : $d8

Jump_01_1ed9:
	ld e, $0e                                                  ; $1ed9 : $1e, $0e
	jp Jump_01_19a2                                                  ; $1edb : $c3, $a2, $19


	ret nz                                                  ; $1ede : $c0

	ld d, $ff                                                  ; $1edf : $16, $ff
	call Call_01_1936                                                  ; $1ee1 : $cd, $36, $19
	ld sp, hl                                                  ; $1ee4 : $f9
	ld ($40e8), hl                                                  ; $1ee5 : $22, $e8, $40
	cp $91                                                  ; $1ee8 : $fe, $91
	ld e, $04                                                  ; $1eea : $1e, $04
	jp nz, Jump_01_19a2                                                  ; $1eec : $c2, $a2, $19
	pop hl                                                  ; $1eef : $e1
	ld ($40a2), hl                                                  ; $1ef0 : $22, $a2, $40
	inc hl                                                  ; $1ef3 : $23
	ld a, h                                                  ; $1ef4 : $7c
	or l                                                  ; $1ef5 : $b5
	jr nz, br_01_1eff                                                  ; $1ef6 : $20, $07

	ld a, ($40dd)                                                  ; $1ef8 : $3a, $dd, $40
	or a                                                  ; $1efb : $b7
	jp nz, $1a18                                                  ; $1efc : $c2, $18, $1a

br_01_1eff:
	ld hl, $1d1e                                                  ; $1eff : $21, $1e, $1d
	ex (sp), hl                                                  ; $1f02 : $e3
	ld a, $e1                                                  ; $1f03 : $3e, $e1

Call_01_1f05:
Jump_01_1f05:
	ld bc, $0e3a                                                  ; $1f05 : $01, $3a, $0e
	nop                                                  ; $1f08 : $00
	ld b, $00                                                  ; $1f09 : $06, $00

br_01_1f0b:
	ld a, c                                                  ; $1f0b : $79
	ld c, b                                                  ; $1f0c : $48
	ld b, a                                                  ; $1f0d : $47

br_01_1f0e:
	ld a, (hl)                                                  ; $1f0e : $7e
	or a                                                  ; $1f0f : $b7
	ret z                                                  ; $1f10 : $c8

	cp b                                                  ; $1f11 : $b8
	ret z                                                  ; $1f12 : $c8

	inc hl                                                  ; $1f13 : $23
	cp $22                                                  ; $1f14 : $fe, $22
	jr z, br_01_1f0b                                                  ; $1f16 : $28, $f3

	sub $8f                                                  ; $1f18 : $d6, $8f
	jr nz, br_01_1f0e                                                  ; $1f1a : $20, $f2

	cp b                                                  ; $1f1c : $b8
	adc a, d                                                  ; $1f1d : $8a
	ld d, a                                                  ; $1f1e : $57
	jr br_01_1f0e                                                  ; $1f1f : $18, $ed

Call_01_1f21:
Jump_01_1f21:
	call $260d                                                  ; $1f21 : $cd, $0d, $26
	rst $08                                                  ; $1f24 : $cf
	push de                                                  ; $1f25 : $d5
	ex de, hl                                                  ; $1f26 : $eb
	ld ($40df), hl                                                  ; $1f27 : $22, $df, $40
	ex de, hl                                                  ; $1f2a : $eb
	push de                                                  ; $1f2b : $d5
	rst $20                                                  ; $1f2c : $e7
	push af                                                  ; $1f2d : $f5
	call $2337                                                  ; $1f2e : $cd, $37, $23
	pop af                                                  ; $1f31 : $f1
	ex (sp), hl                                                  ; $1f32 : $e3

Jump_01_1f33:
	add a, $03                                                  ; $1f33 : $c6, $03
	call Call_01_2819                                                  ; $1f35 : $cd, $19, $28
	call Call_01_0a03                                                  ; $1f38 : $cd, $03, $0a
	push hl                                                  ; $1f3b : $e5
	jr nz, br_01_1f66                                                  ; $1f3c : $20, $28

	ld hl, ($4121)                                                  ; $1f3e : $2a, $21, $41
	push hl                                                  ; $1f41 : $e5
	inc hl                                                  ; $1f42 : $23
	ld e, (hl)                                                  ; $1f43 : $5e
	inc hl                                                  ; $1f44 : $23
	ld d, (hl)                                                  ; $1f45 : $56
	ld hl, ($40a4)                                                  ; $1f46 : $2a, $a4, $40

Call_01_1f49:
	rst $18                                                  ; $1f49 : $df
	jr nc, $0e                                                  ; $1f4a : $30, $0e

	ld hl, ($40a0)                                                  ; $1f4c : $2a, $a0, $40
	rst $18                                                  ; $1f4f : $df
	pop de                                                  ; $1f50 : $d1
	jr nc, br_01_1f62                                                  ; $1f51 : $30, $0f

	ld hl, ($40f9)                                                  ; $1f53 : $2a, $f9, $40
	rst $18                                                  ; $1f56 : $df
	jr nc, br_01_1f62                                                  ; $1f57 : $30, $09

	ld a, $d1                                                  ; $1f59 : $3e, $d1
	call Call_01_29f5                                                  ; $1f5b : $cd, $f5, $29
	ex de, hl                                                  ; $1f5e : $eb
	call Call_01_2843                                                  ; $1f5f : $cd, $43, $28

br_01_1f62:
	call Call_01_29f5                                                  ; $1f62 : $cd, $f5, $29
	ex (sp), hl                                                  ; $1f65 : $e3

br_01_1f66:
	call Call_01_09d3                                                  ; $1f66 : $cd, $d3, $09
	pop de                                                  ; $1f69 : $d1
	pop hl                                                  ; $1f6a : $e1
	ret                                                  ; $1f6b : $c9


	cp $9e                                                  ; $1f6c : $fe, $9e
	jr nz, br_01_1f95                                                  ; $1f6e : $20, $25

	rst $10                                                  ; $1f70 : $d7
	rst $08                                                  ; $1f71 : $cf
	adc a, l                                                  ; $1f72 : $8d
	call Call_01_1e5a                                                  ; $1f73 : $cd, $5a, $1e
	ld a, d                                                  ; $1f76 : $7a
	or e                                                  ; $1f77 : $b3
	jr z, br_01_1f83                                                  ; $1f78 : $28, $09

	call Call_01_1b2a                                                  ; $1f7a : $cd, $2a, $1b
	ld d, b                                                  ; $1f7d : $50
	ld e, c                                                  ; $1f7e : $59
	pop hl                                                  ; $1f7f : $e1
	jp nc, Jump_01_1ed9                                                  ; $1f80 : $d2, $d9, $1e

br_01_1f83:
	ex de, hl                                                  ; $1f83 : $eb
	ld ($40f0), hl                                                  ; $1f84 : $22, $f0, $40
	ex de, hl                                                  ; $1f87 : $eb
	ret c                                                  ; $1f88 : $d8

	ld a, ($40f2)                                                  ; $1f89 : $3a, $f2, $40
	or a                                                  ; $1f8c : $b7
	ret z                                                  ; $1f8d : $c8

	ld a, ($409a)                                                  ; $1f8e : $3a, $9a, $40
	ld e, a                                                  ; $1f91 : $5f
	jp Jump_01_19ab                                                  ; $1f92 : $c3, $ab, $19


br_01_1f95:
	call Call_01_2b1c                                                  ; $1f95 : $cd, $1c, $2b
	ld a, (hl)                                                  ; $1f98 : $7e
	ld b, a                                                  ; $1f99 : $47
	cp $91                                                  ; $1f9a : $fe, $91
	jr z, br_01_1fa1                                                  ; $1f9c : $28, $03

	rst $08                                                  ; $1f9e : $cf
	adc a, l                                                  ; $1f9f : $8d
	dec hl                                                  ; $1fa0 : $2b

br_01_1fa1:
	ld c, e                                                  ; $1fa1 : $4b

br_01_1fa2:
	dec c                                                  ; $1fa2 : $0d
	ld a, b                                                  ; $1fa3 : $78
	jp z, Jump_01_1d60                                                  ; $1fa4 : $ca, $60, $1d
	call Call_01_1e5b                                                  ; $1fa7 : $cd, $5b, $1e
	cp $2c                                                  ; $1faa : $fe, $2c
	ret nz                                                  ; $1fac : $c0

	jr br_01_1fa2                                                  ; $1fad : $18, $f3

	ld de, $40f2                                                  ; $1faf : $11, $f2, $40
	ld a, (de)                                                  ; $1fb2 : $1a
	or a                                                  ; $1fb3 : $b7
	jp z, $19a0                                                  ; $1fb4 : $ca, $a0, $19
	inc a                                                  ; $1fb7 : $3c
	ld ($409a), a                                                  ; $1fb8 : $32, $9a, $40
	ld (de), a                                                  ; $1fbb : $12
	ld a, (hl)                                                  ; $1fbc : $7e
	cp $87                                                  ; $1fbd : $fe, $87
	jr z, br_01_1fcd                                                  ; $1fbf : $28, $0c

	call Call_01_1e5a                                                  ; $1fc1 : $cd, $5a, $1e
	ret nz                                                  ; $1fc4 : $c0

	ld a, d                                                  ; $1fc5 : $7a
	or e                                                  ; $1fc6 : $b3
	jp nz, Jump_01_1ec5                                                  ; $1fc7 : $c2, $c5, $1e
	inc a                                                  ; $1fca : $3c
	jr br_01_1fcf                                                  ; $1fcb : $18, $02

br_01_1fcd:
	rst $10                                                  ; $1fcd : $d7
	ret nz                                                  ; $1fce : $c0

br_01_1fcf:
	ld hl, ($40ee)                                                  ; $1fcf : $2a, $ee, $40
	ex de, hl                                                  ; $1fd2 : $eb
	ld hl, ($40ea)                                                  ; $1fd3 : $2a, $ea, $40
	ld ($40a2), hl                                                  ; $1fd6 : $22, $a2, $40
	ex de, hl                                                  ; $1fd9 : $eb
	ret nz                                                  ; $1fda : $c0

	ld a, (hl)                                                  ; $1fdb : $7e
	or a                                                  ; $1fdc : $b7
	jr nz, br_01_1fe3                                                  ; $1fdd : $20, $04

	inc hl                                                  ; $1fdf : $23
	inc hl                                                  ; $1fe0 : $23
	inc hl                                                  ; $1fe1 : $23
	inc hl                                                  ; $1fe2 : $23

br_01_1fe3:
	inc hl                                                  ; $1fe3 : $23
	ld a, d                                                  ; $1fe4 : $7a
	and e                                                  ; $1fe5 : $a3
	inc a                                                  ; $1fe6 : $3c
	jp nz, Jump_01_1f05                                                  ; $1fe7 : $c2, $05, $1f
	ld a, ($40dd)                                                  ; $1fea : $3a, $dd, $40
	dec a                                                  ; $1fed : $3d
	jp z, $1dbe                                                  ; $1fee : $ca, $be, $1d
	jp Jump_01_1f05                                                  ; $1ff1 : $c3, $05, $1f


	call Call_01_2b1c                                                  ; $1ff4 : $cd, $1c, $2b
	ret nz                                                  ; $1ff7 : $c0

	or a                                                  ; $1ff8 : $b7
	jp z, Jump_01_1e4a                                                  ; $1ff9 : $ca, $4a, $1e
	dec a                                                  ; $1ffc : $3d
	add a, a                                                  ; $1ffd : $87
	ld e, a                                                  ; $1ffe : $5f
	cp $2d                                                  ; $1fff : $fe, $2d
	jr c, br_01_2005                                                  ; $2001 : $38, $02

	ld e, $26                                                  ; $2003 : $1e, $26

br_01_2005:
	jp Jump_01_19a2                                                  ; $2005 : $c3, $a2, $19


	ld de, $000a                                                  ; $2008 : $11, $0a, $00
	push de                                                  ; $200b : $d5
	jr z, br_01_2025                                                  ; $200c : $28, $17

	call Call_01_1e4f                                                  ; $200e : $cd, $4f, $1e
	ex de, hl                                                  ; $2011 : $eb
	ex (sp), hl                                                  ; $2012 : $e3
	jr z, br_01_2026                                                  ; $2013 : $28, $11

	ex de, hl                                                  ; $2015 : $eb
	rst $08                                                  ; $2016 : $cf
	inc l                                                  ; $2017 : $2c
	ex de, hl                                                  ; $2018 : $eb
	ld hl, ($40e4)                                                  ; $2019 : $2a, $e4, $40
	ex de, hl                                                  ; $201c : $eb
	jr z, br_01_2025                                                  ; $201d : $28, $06

	call Call_01_1e5a                                                  ; $201f : $cd, $5a, $1e
	jp nz, Jump_01_1997                                                  ; $2022 : $c2, $97, $19

br_01_2025:
	ex de, hl                                                  ; $2025 : $eb

br_01_2026:
	ld a, h                                                  ; $2026 : $7c
	or l                                                  ; $2027 : $b5
	jp z, Jump_01_1e4a                                                  ; $2028 : $ca, $4a, $1e
	ld ($40e4), hl                                                  ; $202b : $22, $e4, $40
	ld ($40e1), a                                                  ; $202e : $32, $e1, $40
	pop hl                                                  ; $2031 : $e1
	ld ($40e2), hl                                                  ; $2032 : $22, $e2, $40
	pop bc                                                  ; $2035 : $c1
	jp Jump_01_1a33                                                  ; $2036 : $c3, $33, $1a


	call $2337                                                  ; $2039 : $cd, $37, $23
	ld a, (hl)                                                  ; $203c : $7e
	cp $2c                                                  ; $203d : $fe, $2c
	call z, Call_01_1d78                                                  ; $203f : $cc, $78, $1d
	cp $ca                                                  ; $2042 : $fe, $ca
	call z, Call_01_1d78                                                  ; $2044 : $cc, $78, $1d
	dec hl                                                  ; $2047 : $2b
	push hl                                                  ; $2048 : $e5
	call Call_01_0994                                                  ; $2049 : $cd, $94, $09
	pop hl                                                  ; $204c : $e1
	jr z, br_01_2056                                                  ; $204d : $28, $07

br_01_204f:
	rst $10                                                  ; $204f : $d7
	jp c, Jump_01_1ec2                                                  ; $2050 : $da, $c2, $1e
	jp Jump_01_1d5f                                                  ; $2053 : $c3, $5f, $1d


br_01_2056:
	ld d, $01                                                  ; $2056 : $16, $01

br_01_2058:
	call Call_01_1f05                                                  ; $2058 : $cd, $05, $1f
	or a                                                  ; $205b : $b7
	ret z                                                  ; $205c : $c8

	rst $10                                                  ; $205d : $d7
	cp $95                                                  ; $205e : $fe, $95
	jr nz, br_01_2058                                                  ; $2060 : $20, $f6

	dec d                                                  ; $2062 : $15
	jr nz, br_01_2058                                                  ; $2063 : $20, $f3

	jr br_01_204f                                                  ; $2065 : $18, $e8

	ld a, $01                                                  ; $2067 : $3e, $01
	ld ($409c), a                                                  ; $2069 : $32, $9c, $40
	jp Jump_01_209b                                                  ; $206c : $c3, $9b, $20


	call $41ca                                                  ; $206f : $cd, $ca, $41
	cp $40                                                  ; $2072 : $fe, $40
	jr nz, br_01_208f                                                  ; $2074 : $20, $19

	jp Jump_01_1997                                                  ; $2076 : $c3, $97, $19


	cp $02                                                  ; $2079 : $fe, $02
	jp nc, Jump_01_1e4a                                                  ; $207b : $d2, $4a, $1e
	push hl                                                  ; $207e : $e5
	ld hl, $7000                                                  ; $207f : $21, $00, $70
	add hl, de                                                  ; $2082 : $19
	ld ($4020), hl                                                  ; $2083 : $22, $20, $40
	ld a, e                                                  ; $2086 : $7b
	and $3f                                                  ; $2087 : $e6, $3f
	ld ($40a6), a                                                  ; $2089 : $32, $a6, $40
	pop hl                                                  ; $208c : $e1
	rst $08                                                  ; $208d : $cf
	inc l                                                  ; $208e : $2c

br_01_208f:
	cp $23                                                  ; $208f : $fe, $23
	jr nz, br_01_209b                                                  ; $2091 : $20, $08

	jp Jump_01_1997                                                  ; $2093 : $c3, $97, $19


	ld a, $80                                                  ; $2096 : $3e, $80
	ld ($409c), a                                                  ; $2098 : $32, $9c, $40

Jump_01_209b:
br_01_209b:
	dec hl                                                  ; $209b : $2b
	rst $10                                                  ; $209c : $d7
	jp z, Jump_01_3740                                                  ; $209d : $ca, $40, $37

Jump_01_20a0:
	jp z, Jump_01_2169                                                  ; $20a0 : $ca, $69, $21
	cp $bf                                                  ; $20a3 : $fe, $bf
	jp z, Jump_01_2cbd                                                  ; $20a5 : $ca, $bd, $2c
	cp $bc                                                  ; $20a8 : $fe, $bc
	jp z, Jump_01_2137                                                  ; $20aa : $ca, $37, $21
	jp Jump_01_3a50                                                  ; $20ad : $c3, $50, $3a


	jp z, Jump_01_3b0c                                                  ; $20b0 : $ca, $0c, $3b

Jump_01_20b3:
	cp $3b                                                  ; $20b3 : $fe, $3b
	jp z, Jump_01_3b0c                                                  ; $20b5 : $ca, $0c, $3b
	pop bc                                                  ; $20b8 : $c1
	call $2337                                                  ; $20b9 : $cd, $37, $23
	push hl                                                  ; $20bc : $e5
	rst $20                                                  ; $20bd : $e7
	jr z, br_01_20f2                                                  ; $20be : $28, $32

	call Call_01_0fbd                                                  ; $20c0 : $cd, $bd, $0f
	call Call_01_2865                                                  ; $20c3 : $cd, $65, $28
	call $41cd                                                  ; $20c6 : $cd, $cd, $41
	ld hl, ($4121)                                                  ; $20c9 : $2a, $21, $41
	ld a, ($409c)                                                  ; $20cc : $3a, $9c, $40
	or a                                                  ; $20cf : $b7
	jp m, Jump_01_20e9                                                  ; $20d0 : $fa, $e9, $20
	jr z, br_01_20dd                                                  ; $20d3 : $28, $08

	ld a, ($409b)                                                  ; $20d5 : $3a, $9b, $40
	add a, (hl)                                                  ; $20d8 : $86
	cp $84                                                  ; $20d9 : $fe, $84
	jr br_01_20e6                                                  ; $20db : $18, $09

br_01_20dd:
	ld a, $13                                                  ; $20dd : $3e, $13
	nop                                                  ; $20df : $00
	ld b, a                                                  ; $20e0 : $47
	ld a, ($4233)                                                  ; $20e1 : $3a, $33, $42
	add a, (hl)                                                  ; $20e4 : $86
	cp b                                                  ; $20e5 : $b8

br_01_20e6:
	jp nc, Jump_01_3920                                                  ; $20e6 : $d2, $20, $39

Jump_01_20e9:
	call Call_01_38e8                                                  ; $20e9 : $cd, $e8, $38
	ld a, $20                                                  ; $20ec : $3e, $20
	call Call_01_032a                                                  ; $20ee : $cd, $2a, $03
	or a                                                  ; $20f1 : $b7

br_01_20f2:
	call z, Call_01_38e8                                                  ; $20f2 : $cc, $e8, $38
	pop hl                                                  ; $20f5 : $e1
	jp Jump_01_209b                                                  ; $20f6 : $c3, $9b, $20


Call_01_20f9:
	call Call_01_3b1c                                                  ; $20f9 : $cd, $1c, $3b
	or a                                                  ; $20fc : $b7
	ret z                                                  ; $20fd : $c8

Call_01_20fe:
	ld a, $0d                                                  ; $20fe : $3e, $0d
	call Call_01_032a                                                  ; $2100 : $cd, $2a, $03

Call_01_2103:
	call $41d0                                                  ; $2103 : $cd, $d0, $41
	xor a                                                  ; $2106 : $af
	ret                                                  ; $2107 : $c9


	call $41d3                                                  ; $2108 : $cd, $d3, $41
	ld a, ($409c)                                                  ; $210b : $3a, $9c, $40
	or a                                                  ; $210e : $b7
	jp p, Jump_01_2119                                                  ; $210f : $f2, $19, $21
	ld a, $2c                                                  ; $2112 : $3e, $2c
	call Call_01_032a                                                  ; $2114 : $cd, $2a, $03
	jr br_01_2164                                                  ; $2117 : $18, $4b

Jump_01_2119:
	jr z, br_01_2123                                                  ; $2119 : $28, $08

	ld a, ($409b)                                                  ; $211b : $3a, $9b, $40
	cp $70                                                  ; $211e : $fe, $70
	jp Jump_01_212b                                                  ; $2120 : $c3, $2b, $21


br_01_2123:
	ld a, ($409e)                                                  ; $2123 : $3a, $9e, $40
	ld b, a                                                  ; $2126 : $47
	ld a, ($42ae)                                                  ; $2127 : $3a, $ae, $42
	cp b                                                  ; $212a : $b8

Jump_01_212b:
	call nc, Call_01_3740                                                  ; $212b : $d4, $40, $37
	jr nc, br_01_2164                                                  ; $212e : $30, $34

br_01_2130:
	sub $10                                                  ; $2130 : $d6, $10
	jr nc, br_01_2130                                                  ; $2132 : $30, $fc

	cpl                                                  ; $2134 : $2f
	jr br_01_215a                                                  ; $2135 : $18, $23

Jump_01_2137:
	call Call_01_2b1b                                                  ; $2137 : $cd, $1b, $2b
	and $3f                                                  ; $213a : $e6, $3f
	ld e, a                                                  ; $213c : $5f
	rst $08                                                  ; $213d : $cf
	add hl, hl                                                  ; $213e : $29
	dec hl                                                  ; $213f : $2b
	push hl                                                  ; $2140 : $e5
	call $41d3                                                  ; $2141 : $cd, $d3, $41
	ld a, ($409c)                                                  ; $2144 : $3a, $9c, $40
	or a                                                  ; $2147 : $b7
	jp m, Jump_01_1e4a                                                  ; $2148 : $fa, $4a, $1e
	jp z, Jump_01_2153                                                  ; $214b : $ca, $53, $21
	ld a, ($409b)                                                  ; $214e : $3a, $9b, $40
	jr br_01_2156                                                  ; $2151 : $18, $03

Jump_01_2153:
	ld a, ($40a6)                                                  ; $2153 : $3a, $a6, $40

br_01_2156:
	cpl                                                  ; $2156 : $2f
	add a, e                                                  ; $2157 : $83
	jr nc, br_01_2164                                                  ; $2158 : $30, $0a

br_01_215a:
	inc a                                                  ; $215a : $3c
	ld b, a                                                  ; $215b : $47
	ld a, $20                                                  ; $215c : $3e, $20

br_01_215e:
	call Call_01_032a                                                  ; $215e : $cd, $2a, $03
	dec b                                                  ; $2161 : $05
	jr nz, br_01_215e                                                  ; $2162 : $20, $fa

Jump_01_2164:
br_01_2164:
	pop hl                                                  ; $2164 : $e1
	rst $10                                                  ; $2165 : $d7
	jp Jump_01_20a0                                                  ; $2166 : $c3, $a0, $20


Call_01_2169:
Jump_01_2169:
	ld a, ($409c)                                                  ; $2169 : $3a, $9c, $40
	nop                                                  ; $216c : $00
	nop                                                  ; $216d : $00
	nop                                                  ; $216e : $00
	nop                                                  ; $216f : $00
	xor a                                                  ; $2170 : $af
	ld ($409c), a                                                  ; $2171 : $32, $9c, $40
	call $41be                                                  ; $2174 : $cd, $be, $41
	ret                                                  ; $2177 : $c9


	ccf                                                  ; $2178 : $3f
	ld d, d                                                  ; $2179 : $52
	ld b, l                                                  ; $217a : $45
	ld b, h                                                  ; $217b : $44
	ld c, a                                                  ; $217c : $4f
	dec c                                                  ; $217d : $0d
	nop                                                  ; $217e : $00

Jump_01_217f:
	ld a, ($40de)                                                  ; $217f : $3a, $de, $40
	or a                                                  ; $2182 : $b7
	jp nz, Jump_01_1991                                                  ; $2183 : $c2, $91, $19
	ld a, ($40a9)                                                  ; $2186 : $3a, $a9, $40
	or a                                                  ; $2189 : $b7
	ld e, $2a                                                  ; $218a : $1e, $2a
	jp z, Jump_01_19a2                                                  ; $218c : $ca, $a2, $19
	pop bc                                                  ; $218f : $c1
	ld hl, $2178                                                  ; $2190 : $21, $78, $21
	call Call_01_28a7                                                  ; $2193 : $cd, $a7, $28
	jp Jump_01_3ebe                                                  ; $2196 : $c3, $be, $3e


	ret                                                  ; $2199 : $c9


	call Call_01_2828                                                  ; $219a : $cd, $28, $28
	ld a, (hl)                                                  ; $219d : $7e
	call $41d6                                                  ; $219e : $cd, $d6, $41
	sub $23                                                  ; $21a1 : $d6, $23
	ld ($40a9), a                                                  ; $21a3 : $32, $a9, $40
	ld a, (hl)                                                  ; $21a6 : $7e
	jr nz, br_01_21c9                                                  ; $21a7 : $20, $20

	jp Jump_01_1997                                                  ; $21a9 : $c3, $97, $19


	push hl                                                  ; $21ac : $e5
	ld b, $fa                                                  ; $21ad : $06, $fa
	ld hl, ($40a7)                                                  ; $21af : $2a, $a7, $40

br_01_21b2:
	call $3b88                                                  ; $21b2 : $cd, $88, $3b
	ld (hl), a                                                  ; $21b5 : $77
	inc hl                                                  ; $21b6 : $23
	cp $0d                                                  ; $21b7 : $fe, $0d
	jr z, br_01_21bd                                                  ; $21b9 : $28, $02

	djnz br_01_21b2                                                  ; $21bb : $10, $f5

br_01_21bd:
	dec hl                                                  ; $21bd : $2b
	ld (hl), $00                                                  ; $21be : $36, $00
	nop                                                  ; $21c0 : $00
	nop                                                  ; $21c1 : $00
	nop                                                  ; $21c2 : $00
	ld hl, ($40a7)                                                  ; $21c3 : $2a, $a7, $40
	dec hl                                                  ; $21c6 : $2b
	jr br_01_21eb                                                  ; $21c7 : $18, $22

br_01_21c9:
	ld bc, $21db                                                  ; $21c9 : $01, $db, $21
	push bc                                                  ; $21cc : $c5
	cp $22                                                  ; $21cd : $fe, $22
	ret nz                                                  ; $21cf : $c0

	call Call_01_2866                                                  ; $21d0 : $cd, $66, $28
	rst $08                                                  ; $21d3 : $cf
	dec sp                                                  ; $21d4 : $3b
	push hl                                                  ; $21d5 : $e5
	call Call_01_28aa                                                  ; $21d6 : $cd, $aa, $28
	pop hl                                                  ; $21d9 : $e1
	ret                                                  ; $21da : $c9


	push hl                                                  ; $21db : $e5
	call Call_01_1bb3                                                  ; $21dc : $cd, $b3, $1b
	pop bc                                                  ; $21df : $c1
	jp c, $1dbe                                                  ; $21e0 : $da, $be, $1d
	inc hl                                                  ; $21e3 : $23
	ld a, (hl)                                                  ; $21e4 : $7e
	or a                                                  ; $21e5 : $b7
	dec hl                                                  ; $21e6 : $2b
	push bc                                                  ; $21e7 : $c5
	jp z, $1f04                                                  ; $21e8 : $ca, $04, $1f

br_01_21eb:
	ld (hl), $2c                                                  ; $21eb : $36, $2c
	jr $05                                                  ; $21ed : $18, $05

	push hl                                                  ; $21ef : $e5
	ld hl, ($40ff)                                                  ; $21f0 : $2a, $ff, $40
	or $af                                                  ; $21f3 : $f6, $af
	ld ($40de), a                                                  ; $21f5 : $32, $de, $40
	ex (sp), hl                                                  ; $21f8 : $e3
	jr br_01_21fd                                                  ; $21f9 : $18, $02

Jump_01_21fb:
	rst $08                                                  ; $21fb : $cf
	inc l                                                  ; $21fc : $2c

br_01_21fd:
	call $260d                                                  ; $21fd : $cd, $0d, $26
	ex (sp), hl                                                  ; $2200 : $e3
	push de                                                  ; $2201 : $d5
	ld a, (hl)                                                  ; $2202 : $7e
	cp $2c                                                  ; $2203 : $fe, $2c
	jr z, br_01_222d                                                  ; $2205 : $28, $26

	ld a, ($40de)                                                  ; $2207 : $3a, $de, $40
	or a                                                  ; $220a : $b7
	jp nz, Jump_01_2296                                                  ; $220b : $c2, $96, $22
	ld a, ($40a9)                                                  ; $220e : $3a, $a9, $40
	or a                                                  ; $2211 : $b7
	ld e, $06                                                  ; $2212 : $1e, $06
	jp z, Jump_01_19a2                                                  ; $2214 : $ca, $a2, $19
	nop                                                  ; $2217 : $00
	nop                                                  ; $2218 : $00
	nop                                                  ; $2219 : $00
	nop                                                  ; $221a : $00
	nop                                                  ; $221b : $00
	call Call_01_1bb3                                                  ; $221c : $cd, $b3, $1b
	pop de                                                  ; $221f : $d1
	pop bc                                                  ; $2220 : $c1
	jp c, $1dbe                                                  ; $2221 : $da, $be, $1d
	inc hl                                                  ; $2224 : $23
	ld a, (hl)                                                  ; $2225 : $7e
	or a                                                  ; $2226 : $b7
	dec hl                                                  ; $2227 : $2b
	push bc                                                  ; $2228 : $c5
	jp z, $1f04                                                  ; $2229 : $ca, $04, $1f
	push de                                                  ; $222c : $d5

Jump_01_222d:
br_01_222d:
	call $41dc                                                  ; $222d : $cd, $dc, $41
	rst $20                                                  ; $2230 : $e7
	push af                                                  ; $2231 : $f5
	jr nz, br_01_224d                                                  ; $2232 : $20, $19

	rst $10                                                  ; $2234 : $d7
	ld d, a                                                  ; $2235 : $57
	ld b, a                                                  ; $2236 : $47
	cp $22                                                  ; $2237 : $fe, $22
	jr z, br_01_2240                                                  ; $2239 : $28, $05

	ld d, $3a                                                  ; $223b : $16, $3a
	ld b, $2c                                                  ; $223d : $06, $2c
	dec hl                                                  ; $223f : $2b

br_01_2240:
	jp Jump_01_36d1                                                  ; $2240 : $c3, $d1, $36


Jump_01_2243:
	pop af                                                  ; $2243 : $f1
	ex de, hl                                                  ; $2244 : $eb
	ld hl, $225a                                                  ; $2245 : $21, $5a, $22
	ex (sp), hl                                                  ; $2248 : $e3
	push de                                                  ; $2249 : $d5
	jp Jump_01_1f33                                                  ; $224a : $c3, $33, $1f


br_01_224d:
	rst $10                                                  ; $224d : $d7
	pop af                                                  ; $224e : $f1
	push af                                                  ; $224f : $f5
	jp Jump_01_36f8                                                  ; $2250 : $c3, $f8, $36


Jump_01_2253:
	push bc                                                  ; $2253 : $c5
	jp c, $0e6c                                                  ; $2254 : $da, $6c, $0e
	jp nc, Jump_01_0e65                                                  ; $2257 : $d2, $65, $0e
	dec hl                                                  ; $225a : $2b
	rst $10                                                  ; $225b : $d7
	jr z, br_01_2263                                                  ; $225c : $28, $05

	cp $2c                                                  ; $225e : $fe, $2c
	jp nz, Jump_01_217f                                                  ; $2260 : $c2, $7f, $21

br_01_2263:
	ex (sp), hl                                                  ; $2263 : $e3
	dec hl                                                  ; $2264 : $2b
	rst $10                                                  ; $2265 : $d7
	jp nz, Jump_01_21fb                                                  ; $2266 : $c2, $fb, $21
	pop de                                                  ; $2269 : $d1
	nop                                                  ; $226a : $00
	nop                                                  ; $226b : $00
	nop                                                  ; $226c : $00
	nop                                                  ; $226d : $00
	nop                                                  ; $226e : $00
	ld a, ($40de)                                                  ; $226f : $3a, $de, $40
	or a                                                  ; $2272 : $b7
	ex de, hl                                                  ; $2273 : $eb
	jp nz, Jump_01_1d96                                                  ; $2274 : $c2, $96, $1d
	push de                                                  ; $2277 : $d5
	call $41df                                                  ; $2278 : $cd, $df, $41
	or (hl)                                                  ; $227b : $b6
	ld hl, $2286                                                  ; $227c : $21, $86, $22
	jp nz, Jump_01_3ecb                                                  ; $227f : $c2, $cb, $3e

Jump_01_2282:
	pop hl                                                  ; $2282 : $e1
	jp Jump_01_2169                                                  ; $2283 : $c3, $69, $21


	ccf                                                  ; $2286 : $3f
	ld b, l                                                  ; $2287 : $45
	ld e, b                                                  ; $2288 : $58
	ld d, h                                                  ; $2289 : $54
	ld d, d                                                  ; $228a : $52
	ld b, c                                                  ; $228b : $41
	jr nz, br_01_22d7                                                  ; $228c : $20, $49

	ld b, a                                                  ; $228e : $47
	ld c, (hl)                                                  ; $228f : $4e
	ld c, a                                                  ; $2290 : $4f
	ld d, d                                                  ; $2291 : $52
	ld b, l                                                  ; $2292 : $45
	ld b, h                                                  ; $2293 : $44
	dec c                                                  ; $2294 : $0d
	nop                                                  ; $2295 : $00

Jump_01_2296:
br_01_2296:
	call Call_01_1f05                                                  ; $2296 : $cd, $05, $1f
	or a                                                  ; $2299 : $b7
	jr nz, br_01_22ae                                                  ; $229a : $20, $12

	inc hl                                                  ; $229c : $23
	ld a, (hl)                                                  ; $229d : $7e
	inc hl                                                  ; $229e : $23
	or (hl)                                                  ; $229f : $b6
	ld e, $06                                                  ; $22a0 : $1e, $06
	jp z, Jump_01_19a2                                                  ; $22a2 : $ca, $a2, $19
	inc hl                                                  ; $22a5 : $23
	ld e, (hl)                                                  ; $22a6 : $5e
	inc hl                                                  ; $22a7 : $23
	ld d, (hl)                                                  ; $22a8 : $56
	ex de, hl                                                  ; $22a9 : $eb
	ld ($40da), hl                                                  ; $22aa : $22, $da, $40
	ex de, hl                                                  ; $22ad : $eb

br_01_22ae:
	rst $10                                                  ; $22ae : $d7
	cp $88                                                  ; $22af : $fe, $88
	jr nz, br_01_2296                                                  ; $22b1 : $20, $e3

	jp Jump_01_222d                                                  ; $22b3 : $c3, $2d, $22


	ld de, $0000                                                  ; $22b6 : $11, $00, $00

Call_01_22b9:
	call nz, $260d                                                  ; $22b9 : $c4, $0d, $26
	ld ($40df), hl                                                  ; $22bc : $22, $df, $40
	call Call_01_1936                                                  ; $22bf : $cd, $36, $19
	jp nz, $199d                                                  ; $22c2 : $c2, $9d, $19
	ld sp, hl                                                  ; $22c5 : $f9
	ld ($40e8), hl                                                  ; $22c6 : $22, $e8, $40
	push de                                                  ; $22c9 : $d5
	ld a, (hl)                                                  ; $22ca : $7e
	inc hl                                                  ; $22cb : $23
	push af                                                  ; $22cc : $f5
	push de                                                  ; $22cd : $d5
	ld a, (hl)                                                  ; $22ce : $7e
	inc hl                                                  ; $22cf : $23
	or a                                                  ; $22d0 : $b7
	jp m, Jump_01_22ea                                                  ; $22d1 : $fa, $ea, $22
	call Call_01_09b1                                                  ; $22d4 : $cd, $b1, $09

br_01_22d7:
	ex (sp), hl                                                  ; $22d7 : $e3
	push hl                                                  ; $22d8 : $e5
	call Call_01_070b                                                  ; $22d9 : $cd, $0b, $07
	pop hl                                                  ; $22dc : $e1
	call Call_01_09cb                                                  ; $22dd : $cd, $cb, $09
	pop hl                                                  ; $22e0 : $e1
	call Call_01_09c2                                                  ; $22e1 : $cd, $c2, $09
	push hl                                                  ; $22e4 : $e5
	call Call_01_0a0c                                                  ; $22e5 : $cd, $0c, $0a
	jr br_01_2313                                                  ; $22e8 : $18, $29

Jump_01_22ea:
	inc hl                                                  ; $22ea : $23
	inc hl                                                  ; $22eb : $23
	inc hl                                                  ; $22ec : $23
	inc hl                                                  ; $22ed : $23
	ld c, (hl)                                                  ; $22ee : $4e
	inc hl                                                  ; $22ef : $23
	ld b, (hl)                                                  ; $22f0 : $46
	inc hl                                                  ; $22f1 : $23
	ex (sp), hl                                                  ; $22f2 : $e3
	ld e, (hl)                                                  ; $22f3 : $5e
	inc hl                                                  ; $22f4 : $23
	ld d, (hl)                                                  ; $22f5 : $56
	push hl                                                  ; $22f6 : $e5
	ld l, c                                                  ; $22f7 : $69
	ld h, b                                                  ; $22f8 : $60
	call Call_01_0bd2                                                  ; $22f9 : $cd, $d2, $0b
	ld a, ($40af)                                                  ; $22fc : $3a, $af, $40
	cp $04                                                  ; $22ff : $fe, $04
	jp z, Jump_01_07b2                                                  ; $2301 : $ca, $b2, $07
	ex de, hl                                                  ; $2304 : $eb
	pop hl                                                  ; $2305 : $e1
	ld (hl), d                                                  ; $2306 : $72
	dec hl                                                  ; $2307 : $2b
	ld (hl), e                                                  ; $2308 : $73
	pop hl                                                  ; $2309 : $e1
	push de                                                  ; $230a : $d5
	ld e, (hl)                                                  ; $230b : $5e
	inc hl                                                  ; $230c : $23
	ld d, (hl)                                                  ; $230d : $56
	inc hl                                                  ; $230e : $23
	ex (sp), hl                                                  ; $230f : $e3
	call Call_01_0a39                                                  ; $2310 : $cd, $39, $0a

br_01_2313:
	pop hl                                                  ; $2313 : $e1
	pop bc                                                  ; $2314 : $c1
	sub b                                                  ; $2315 : $90
	call Call_01_09c2                                                  ; $2316 : $cd, $c2, $09
	jr z, br_01_2324                                                  ; $2319 : $28, $09

	ex de, hl                                                  ; $231b : $eb
	ld ($40a2), hl                                                  ; $231c : $22, $a2, $40
	ld l, c                                                  ; $231f : $69
	ld h, b                                                  ; $2320 : $60
	jp Jump_01_1d1a                                                  ; $2321 : $c3, $1a, $1d


br_01_2324:
	ld sp, hl                                                  ; $2324 : $f9
	ld ($40e8), hl                                                  ; $2325 : $22, $e8, $40
	ld hl, ($40df)                                                  ; $2328 : $2a, $df, $40
	ld a, (hl)                                                  ; $232b : $7e
	cp $2c                                                  ; $232c : $fe, $2c
	jp nz, Jump_01_1d1e                                                  ; $232e : $c2, $1e, $1d
	rst $10                                                  ; $2331 : $d7
	call Call_01_22b9                                                  ; $2332 : $cd, $b9, $22

Call_01_2335:
	rst $08                                                  ; $2335 : $cf
	jr z, $2b                                                  ; $2336 : $28, $2b

Call_01_2338:
	ld d, $00                                                  ; $2338 : $16, $00

Call_01_233a:
Jump_01_233a:
	push de                                                  ; $233a : $d5
	ld c, $01                                                  ; $233b : $0e, $01
	call Call_01_1963                                                  ; $233d : $cd, $63, $19
	call Call_01_249f                                                  ; $2340 : $cd, $9f, $24
	ld ($40f3), hl                                                  ; $2343 : $22, $f3, $40

Jump_01_2346:
	ld hl, ($40f3)                                                  ; $2346 : $2a, $f3, $40
	pop bc                                                  ; $2349 : $c1
	ld a, (hl)                                                  ; $234a : $7e
	ld d, $00                                                  ; $234b : $16, $00

br_01_234d:
	sub $d4                                                  ; $234d : $d6, $d4
	jr c, br_01_2364                                                  ; $234f : $38, $13

	cp $03                                                  ; $2351 : $fe, $03
	jr nc, br_01_2364                                                  ; $2353 : $30, $0f

	cp $01                                                  ; $2355 : $fe, $01
	rla                                                  ; $2357 : $17
	xor d                                                  ; $2358 : $aa
	cp d                                                  ; $2359 : $ba
	ld d, a                                                  ; $235a : $57
	jp c, Jump_01_1997                                                  ; $235b : $da, $97, $19
	ld ($40d8), hl                                                  ; $235e : $22, $d8, $40
	rst $10                                                  ; $2361 : $d7
	jr br_01_234d                                                  ; $2362 : $18, $e9

br_01_2364:
	ld a, d                                                  ; $2364 : $7a
	or a                                                  ; $2365 : $b7
	jp nz, Jump_01_23ec                                                  ; $2366 : $c2, $ec, $23
	ld a, (hl)                                                  ; $2369 : $7e
	ld ($40d8), hl                                                  ; $236a : $22, $d8, $40
	sub $cd                                                  ; $236d : $d6, $cd
	ret c                                                  ; $236f : $d8

	cp $07                                                  ; $2370 : $fe, $07
	ret nc                                                  ; $2372 : $d0

	ld e, a                                                  ; $2373 : $5f
	ld a, ($40af)                                                  ; $2374 : $3a, $af, $40
	sub $03                                                  ; $2377 : $d6, $03
	or e                                                  ; $2379 : $b3
	jp z, Jump_01_298f                                                  ; $237a : $ca, $8f, $29
	ld hl, $189a                                                  ; $237d : $21, $9a, $18
	add hl, de                                                  ; $2380 : $19
	ld a, b                                                  ; $2381 : $78
	ld d, (hl)                                                  ; $2382 : $56
	cp d                                                  ; $2383 : $ba
	ret nc                                                  ; $2384 : $d0

	push bc                                                  ; $2385 : $c5
	ld bc, $2346                                                  ; $2386 : $01, $46, $23
	push bc                                                  ; $2389 : $c5
	ld a, d                                                  ; $238a : $7a
	cp $7f                                                  ; $238b : $fe, $7f
	jp z, Jump_01_23d4                                                  ; $238d : $ca, $d4, $23
	cp $51                                                  ; $2390 : $fe, $51
	jp c, Jump_01_23e1                                                  ; $2392 : $da, $e1, $23

Jump_01_2395:
	ld hl, $4121                                                  ; $2395 : $21, $21, $41
	or a                                                  ; $2398 : $b7
	ld a, ($40af)                                                  ; $2399 : $3a, $af, $40
	dec a                                                  ; $239c : $3d
	dec a                                                  ; $239d : $3d
	dec a                                                  ; $239e : $3d
	jp z, Jump_01_0af6                                                  ; $239f : $ca, $f6, $0a
	ld c, (hl)                                                  ; $23a2 : $4e
	inc hl                                                  ; $23a3 : $23
	ld b, (hl)                                                  ; $23a4 : $46
	push bc                                                  ; $23a5 : $c5
	jp m, Jump_01_23c5                                                  ; $23a6 : $fa, $c5, $23
	inc hl                                                  ; $23a9 : $23
	ld c, (hl)                                                  ; $23aa : $4e
	inc hl                                                  ; $23ab : $23
	ld b, (hl)                                                  ; $23ac : $46
	push bc                                                  ; $23ad : $c5
	push af                                                  ; $23ae : $f5
	or a                                                  ; $23af : $b7
	jp po, $23c4                                                  ; $23b0 : $e2, $c4, $23
	pop af                                                  ; $23b3 : $f1
	inc hl                                                  ; $23b4 : $23
	jr c, br_01_23ba                                                  ; $23b5 : $38, $03

	ld hl, $411d                                                  ; $23b7 : $21, $1d, $41

br_01_23ba:
	ld c, (hl)                                                  ; $23ba : $4e
	inc hl                                                  ; $23bb : $23
	ld b, (hl)                                                  ; $23bc : $46
	inc hl                                                  ; $23bd : $23
	push bc                                                  ; $23be : $c5
	ld c, (hl)                                                  ; $23bf : $4e
	inc hl                                                  ; $23c0 : $23
	ld b, (hl)                                                  ; $23c1 : $46
	push bc                                                  ; $23c2 : $c5
	ld b, $f1                                                  ; $23c3 : $06, $f1

Jump_01_23c5:
	add a, $03                                                  ; $23c5 : $c6, $03
	ld c, e                                                  ; $23c7 : $4b
	ld b, a                                                  ; $23c8 : $47
	push bc                                                  ; $23c9 : $c5
	ld bc, $2406                                                  ; $23ca : $01, $06, $24

br_01_23cd:
	push bc                                                  ; $23cd : $c5
	ld hl, ($40d8)                                                  ; $23ce : $2a, $d8, $40
	jp Jump_01_233a                                                  ; $23d1 : $c3, $3a, $23


Jump_01_23d4:
	call Call_01_0ab1                                                  ; $23d4 : $cd, $b1, $0a
	call Call_01_09a4                                                  ; $23d7 : $cd, $a4, $09
	ld bc, $13f2                                                  ; $23da : $01, $f2, $13
	ld d, $7f                                                  ; $23dd : $16, $7f
	jr br_01_23cd                                                  ; $23df : $18, $ec

Jump_01_23e1:
	push de                                                  ; $23e1 : $d5
	call Call_01_0a7f                                                  ; $23e2 : $cd, $7f, $0a
	pop de                                                  ; $23e5 : $d1
	push hl                                                  ; $23e6 : $e5
	ld bc, $25e9                                                  ; $23e7 : $01, $e9, $25
	jr br_01_23cd                                                  ; $23ea : $18, $e1

Jump_01_23ec:
	ld a, b                                                  ; $23ec : $78
	cp $64                                                  ; $23ed : $fe, $64
	ret nc                                                  ; $23ef : $d0

	push bc                                                  ; $23f0 : $c5
	push de                                                  ; $23f1 : $d5
	ld de, $6404                                                  ; $23f2 : $11, $04, $64
	ld hl, $25b8                                                  ; $23f5 : $21, $b8, $25
	push hl                                                  ; $23f8 : $e5
	rst $20                                                  ; $23f9 : $e7
	jp nz, Jump_01_2395                                                  ; $23fa : $c2, $95, $23
	ld hl, ($4121)                                                  ; $23fd : $2a, $21, $41
	push hl                                                  ; $2400 : $e5
	ld bc, $258c                                                  ; $2401 : $01, $8c, $25
	jr br_01_23cd                                                  ; $2404 : $18, $c7

	pop bc                                                  ; $2406 : $c1
	ld a, c                                                  ; $2407 : $79
	ld ($40b0), a                                                  ; $2408 : $32, $b0, $40
	ld a, b                                                  ; $240b : $78
	cp $08                                                  ; $240c : $fe, $08
	jr z, br_01_2438                                                  ; $240e : $28, $28

	ld a, ($40af)                                                  ; $2410 : $3a, $af, $40
	cp $08                                                  ; $2413 : $fe, $08
	jp z, Jump_01_2460                                                  ; $2415 : $ca, $60, $24
	ld d, a                                                  ; $2418 : $57
	ld a, b                                                  ; $2419 : $78
	cp $04                                                  ; $241a : $fe, $04
	jp z, Jump_01_2472                                                  ; $241c : $ca, $72, $24
	ld a, d                                                  ; $241f : $7a
	cp $03                                                  ; $2420 : $fe, $03
	jp z, Jump_01_0af6                                                  ; $2422 : $ca, $f6, $0a
	jp nc, Jump_01_247c                                                  ; $2425 : $d2, $7c, $24
	ld hl, $18bf                                                  ; $2428 : $21, $bf, $18
	ld b, $00                                                  ; $242b : $06, $00
	add hl, bc                                                  ; $242d : $09
	add hl, bc                                                  ; $242e : $09
	ld c, (hl)                                                  ; $242f : $4e
	inc hl                                                  ; $2430 : $23
	ld b, (hl)                                                  ; $2431 : $46
	pop de                                                  ; $2432 : $d1
	ld hl, ($4121)                                                  ; $2433 : $2a, $21, $41
	push bc                                                  ; $2436 : $c5
	ret                                                  ; $2437 : $c9


br_01_2438:
	call Call_01_0adb                                                  ; $2438 : $cd, $db, $0a
	call Call_01_09fc                                                  ; $243b : $cd, $fc, $09
	pop hl                                                  ; $243e : $e1
	ld ($411f), hl                                                  ; $243f : $22, $1f, $41
	pop hl                                                  ; $2442 : $e1
	ld ($411d), hl                                                  ; $2443 : $22, $1d, $41

br_01_2446:
	pop bc                                                  ; $2446 : $c1
	pop de                                                  ; $2447 : $d1
	call Call_01_09b4                                                  ; $2448 : $cd, $b4, $09

br_01_244b:
	call Call_01_0adb                                                  ; $244b : $cd, $db, $0a
	ld hl, $18ab                                                  ; $244e : $21, $ab, $18

br_01_2451:
	ld a, ($40b0)                                                  ; $2451 : $3a, $b0, $40
	rlca                                                  ; $2454 : $07
	push bc                                                  ; $2455 : $c5
	ld c, a                                                  ; $2456 : $4f
	ld b, $00                                                  ; $2457 : $06, $00
	add hl, bc                                                  ; $2459 : $09
	pop bc                                                  ; $245a : $c1
	ld a, (hl)                                                  ; $245b : $7e
	inc hl                                                  ; $245c : $23
	ld h, (hl)                                                  ; $245d : $66
	ld l, a                                                  ; $245e : $6f
	jp (hl)                                                  ; $245f : $e9


Jump_01_2460:
	push bc                                                  ; $2460 : $c5
	call Call_01_09fc                                                  ; $2461 : $cd, $fc, $09
	pop af                                                  ; $2464 : $f1
	ld ($40af), a                                                  ; $2465 : $32, $af, $40
	cp $04                                                  ; $2468 : $fe, $04
	jr z, br_01_2446                                                  ; $246a : $28, $da

	pop hl                                                  ; $246c : $e1
	ld ($4121), hl                                                  ; $246d : $22, $21, $41
	jr br_01_244b                                                  ; $2470 : $18, $d9

Jump_01_2472:
	call Call_01_0ab1                                                  ; $2472 : $cd, $b1, $0a
	pop bc                                                  ; $2475 : $c1
	pop de                                                  ; $2476 : $d1

br_01_2477:
	ld hl, $18b5                                                  ; $2477 : $21, $b5, $18
	jr br_01_2451                                                  ; $247a : $18, $d5

Jump_01_247c:
	pop hl                                                  ; $247c : $e1
	call Call_01_09a4                                                  ; $247d : $cd, $a4, $09
	call Call_01_0acf                                                  ; $2480 : $cd, $cf, $0a
	call Call_01_09bf                                                  ; $2483 : $cd, $bf, $09
	pop hl                                                  ; $2486 : $e1
	ld ($4123), hl                                                  ; $2487 : $22, $23, $41
	pop hl                                                  ; $248a : $e1
	ld ($4121), hl                                                  ; $248b : $22, $21, $41
	jr br_01_2477                                                  ; $248e : $18, $e7

	push hl                                                  ; $2490 : $e5
	ex de, hl                                                  ; $2491 : $eb
	call Call_01_0acf                                                  ; $2492 : $cd, $cf, $0a
	pop hl                                                  ; $2495 : $e1
	call Call_01_09a4                                                  ; $2496 : $cd, $a4, $09
	call Call_01_0acf                                                  ; $2499 : $cd, $cf, $0a
	jp Jump_01_08a0                                                  ; $249c : $c3, $a0, $08


Call_01_249f:
br_01_249f:
	rst $10                                                  ; $249f : $d7
	ld e, $28                                                  ; $24a0 : $1e, $28
	jp z, Jump_01_19a2                                                  ; $24a2 : $ca, $a2, $19
	jp c, $0e6c                                                  ; $24a5 : $da, $6c, $0e
	call Call_01_1e3d                                                  ; $24a8 : $cd, $3d, $1e
	jp nc, Jump_01_2540                                                  ; $24ab : $d2, $40, $25
	cp $cd                                                  ; $24ae : $fe, $cd
	jr z, br_01_249f                                                  ; $24b0 : $28, $ed

	cp $2e                                                  ; $24b2 : $fe, $2e
	jp z, $0e6c                                                  ; $24b4 : $ca, $6c, $0e
	cp $ce                                                  ; $24b7 : $fe, $ce
	jp z, Jump_01_2532                                                  ; $24b9 : $ca, $32, $25

br_01_24bc:
	cp $22                                                  ; $24bc : $fe, $22
	jp z, Jump_01_2866                                                  ; $24be : $ca, $66, $28
	cp $cb                                                  ; $24c1 : $fe, $cb
	jp z, Jump_01_25c4                                                  ; $24c3 : $ca, $c4, $25
	cp $26                                                  ; $24c6 : $fe, $26
	jp z, $4194                                                  ; $24c8 : $ca, $94, $41
	cp $c3                                                  ; $24cb : $fe, $c3
	jr nz, br_01_24d9                                                  ; $24cd : $20, $0a

	rst $10                                                  ; $24cf : $d7
	ld a, ($409a)                                                  ; $24d0 : $3a, $9a, $40
	push hl                                                  ; $24d3 : $e5
	call Call_01_27f8                                                  ; $24d4 : $cd, $f8, $27
	pop hl                                                  ; $24d7 : $e1
	ret                                                  ; $24d8 : $c9


br_01_24d9:
	cp $c2                                                  ; $24d9 : $fe, $c2
	jr nz, br_01_24e7                                                  ; $24db : $20, $0a

	rst $10                                                  ; $24dd : $d7
	push hl                                                  ; $24de : $e5
	ld hl, ($40ea)                                                  ; $24df : $2a, $ea, $40
	call Call_01_0c66                                                  ; $24e2 : $cd, $66, $0c
	pop hl                                                  ; $24e5 : $e1
	ret                                                  ; $24e6 : $c9


br_01_24e7:
	cp $c0                                                  ; $24e7 : $fe, $c0
	jr nz, br_01_24ff                                                  ; $24e9 : $20, $14

	rst $10                                                  ; $24eb : $d7
	rst $08                                                  ; $24ec : $cf
	jr z, br_01_24bc                                                  ; $24ed : $28, $cd

	dec c                                                  ; $24ef : $0d
	ld h, $cf                                                  ; $24f0 : $26, $cf
	add hl, hl                                                  ; $24f2 : $29
	push hl                                                  ; $24f3 : $e5
	ex de, hl                                                  ; $24f4 : $eb
	ld a, h                                                  ; $24f5 : $7c
	or l                                                  ; $24f6 : $b5
	jp z, Jump_01_1e4a                                                  ; $24f7 : $ca, $4a, $1e
	call Call_01_0a9a                                                  ; $24fa : $cd, $9a, $0a
	pop hl                                                  ; $24fd : $e1
	ret                                                  ; $24fe : $c9


br_01_24ff:
	cp $c1                                                  ; $24ff : $fe, $c1
	jp z, Jump_01_27fe                                                  ; $2501 : $ca, $fe, $27
	cp $c5                                                  ; $2504 : $fe, $c5
	jp z, $419d                                                  ; $2506 : $ca, $9d, $41
	cp $c8                                                  ; $2509 : $fe, $c8
	jp z, Jump_01_27c9                                                  ; $250b : $ca, $c9, $27
	cp $c7                                                  ; $250e : $fe, $c7
	jp z, $4176                                                  ; $2510 : $ca, $76, $41
	cp $c6                                                  ; $2513 : $fe, $c6
	jp z, Jump_01_0132                                                  ; $2515 : $ca, $32, $01
	cp $c9                                                  ; $2518 : $fe, $c9
	jp z, $019d                                                  ; $251a : $ca, $9d, $01
	cp $c4                                                  ; $251d : $fe, $c4
	jp z, Jump_01_2a2f                                                  ; $251f : $ca, $2f, $2a
	cp $be                                                  ; $2522 : $fe, $be
	jp z, $4155                                                  ; $2524 : $ca, $55, $41
	sub $d7                                                  ; $2527 : $d6, $d7
	jp nc, Jump_01_254e                                                  ; $2529 : $d2, $4e, $25

Call_01_252c:
	call Call_01_2335                                                  ; $252c : $cd, $35, $23
	rst $08                                                  ; $252f : $cf
	add hl, hl                                                  ; $2530 : $29
	ret                                                  ; $2531 : $c9


Jump_01_2532:
	ld d, $7d                                                  ; $2532 : $16, $7d
	call Call_01_233a                                                  ; $2534 : $cd, $3a, $23
	ld hl, ($40f3)                                                  ; $2537 : $2a, $f3, $40
	push hl                                                  ; $253a : $e5
	call Call_01_097b                                                  ; $253b : $cd, $7b, $09
	pop hl                                                  ; $253e : $e1
	ret                                                  ; $253f : $c9


Jump_01_2540:
	call $260d                                                  ; $2540 : $cd, $0d, $26
	push hl                                                  ; $2543 : $e5
	ex de, hl                                                  ; $2544 : $eb
	ld ($4121), hl                                                  ; $2545 : $22, $21, $41
	rst $20                                                  ; $2548 : $e7
	call nz, Call_01_09f7                                                  ; $2549 : $c4, $f7, $09
	pop hl                                                  ; $254c : $e1
	ret                                                  ; $254d : $c9


Jump_01_254e:
	ld b, $00                                                  ; $254e : $06, $00
	rlca                                                  ; $2550 : $07
	ld c, a                                                  ; $2551 : $4f
	push bc                                                  ; $2552 : $c5
	rst $10                                                  ; $2553 : $d7
	ld a, c                                                  ; $2554 : $79
	cp $41                                                  ; $2555 : $fe, $41
	jr c, br_01_256f                                                  ; $2557 : $38, $16

	call Call_01_2335                                                  ; $2559 : $cd, $35, $23
	rst $08                                                  ; $255c : $cf
	inc l                                                  ; $255d : $2c
	call Call_01_0af4                                                  ; $255e : $cd, $f4, $0a
	ex de, hl                                                  ; $2561 : $eb
	ld hl, ($4121)                                                  ; $2562 : $2a, $21, $41
	ex (sp), hl                                                  ; $2565 : $e3
	push hl                                                  ; $2566 : $e5
	ex de, hl                                                  ; $2567 : $eb
	call Call_01_2b1c                                                  ; $2568 : $cd, $1c, $2b
	ex de, hl                                                  ; $256b : $eb
	ex (sp), hl                                                  ; $256c : $e3
	jr br_01_2583                                                  ; $256d : $18, $14

br_01_256f:
	call Call_01_252c                                                  ; $256f : $cd, $2c, $25
	ex (sp), hl                                                  ; $2572 : $e3
	ld a, l                                                  ; $2573 : $7d
	cp $0c                                                  ; $2574 : $fe, $0c
	jr c, br_01_257f                                                  ; $2576 : $38, $07

	cp $1b                                                  ; $2578 : $fe, $1b
	push hl                                                  ; $257a : $e5
	call c, Call_01_0ab1                                                  ; $257b : $dc, $b1, $0a
	pop hl                                                  ; $257e : $e1

br_01_257f:
	ld de, $253e                                                  ; $257f : $11, $3e, $25
	push de                                                  ; $2582 : $d5

br_01_2583:
	ld bc, $1608                                                  ; $2583 : $01, $08, $16

Call_01_2586:
	add hl, bc                                                  ; $2586 : $09
	ld c, (hl)                                                  ; $2587 : $4e
	inc hl                                                  ; $2588 : $23
	ld h, (hl)                                                  ; $2589 : $66
	ld l, c                                                  ; $258a : $69
	jp (hl)                                                  ; $258b : $e9


	call Call_01_29d7                                                  ; $258c : $cd, $d7, $29
	ld a, (hl)                                                  ; $258f : $7e
	inc hl                                                  ; $2590 : $23
	ld c, (hl)                                                  ; $2591 : $4e
	inc hl                                                  ; $2592 : $23
	ld b, (hl)                                                  ; $2593 : $46
	pop de                                                  ; $2594 : $d1
	push bc                                                  ; $2595 : $c5
	push af                                                  ; $2596 : $f5
	call Call_01_29de                                                  ; $2597 : $cd, $de, $29
	pop de                                                  ; $259a : $d1
	ld e, (hl)                                                  ; $259b : $5e
	inc hl                                                  ; $259c : $23
	ld c, (hl)                                                  ; $259d : $4e
	inc hl                                                  ; $259e : $23
	ld b, (hl)                                                  ; $259f : $46
	pop hl                                                  ; $25a0 : $e1

br_01_25a1:
	ld a, e                                                  ; $25a1 : $7b
	or d                                                  ; $25a2 : $b2
	ret z                                                  ; $25a3 : $c8

	ld a, d                                                  ; $25a4 : $7a
	sub $01                                                  ; $25a5 : $d6, $01
	ret c                                                  ; $25a7 : $d8

	xor a                                                  ; $25a8 : $af
	cp e                                                  ; $25a9 : $bb
	inc a                                                  ; $25aa : $3c
	ret nc                                                  ; $25ab : $d0

	dec d                                                  ; $25ac : $15
	dec e                                                  ; $25ad : $1d
	ld a, (bc)                                                  ; $25ae : $0a
	cp (hl)                                                  ; $25af : $be
	inc hl                                                  ; $25b0 : $23
	inc bc                                                  ; $25b1 : $03
	jr z, br_01_25a1                                                  ; $25b2 : $28, $ed

	ccf                                                  ; $25b4 : $3f
	jp Jump_01_0960                                                  ; $25b5 : $c3, $60, $09


	inc a                                                  ; $25b8 : $3c
	adc a, a                                                  ; $25b9 : $8f
	pop bc                                                  ; $25ba : $c1
	and b                                                  ; $25bb : $a0
	add a, $ff                                                  ; $25bc : $c6, $ff
	sbc a, a                                                  ; $25be : $9f
	call Call_01_098d                                                  ; $25bf : $cd, $8d, $09
	jr br_01_25d6                                                  ; $25c2 : $18, $12

Jump_01_25c4:
	ld d, $5a                                                  ; $25c4 : $16, $5a
	call Call_01_233a                                                  ; $25c6 : $cd, $3a, $23
	call Call_01_0a7f                                                  ; $25c9 : $cd, $7f, $0a
	ld a, l                                                  ; $25cc : $7d
	cpl                                                  ; $25cd : $2f
	ld l, a                                                  ; $25ce : $6f
	ld a, h                                                  ; $25cf : $7c
	cpl                                                  ; $25d0 : $2f
	ld h, a                                                  ; $25d1 : $67
	ld ($4121), hl                                                  ; $25d2 : $22, $21, $41
	pop bc                                                  ; $25d5 : $c1

br_01_25d6:
	jp Jump_01_2346                                                  ; $25d6 : $c3, $46, $23


Jump_01_25d9:
	ld a, ($40af)                                                  ; $25d9 : $3a, $af, $40
	cp $08                                                  ; $25dc : $fe, $08
	jr nc, br_01_25e5                                                  ; $25de : $30, $05

	sub $03                                                  ; $25e0 : $d6, $03
	or a                                                  ; $25e2 : $b7
	scf                                                  ; $25e3 : $37
	ret                                                  ; $25e4 : $c9


br_01_25e5:
	sub $03                                                  ; $25e5 : $d6, $03
	or a                                                  ; $25e7 : $b7
	ret                                                  ; $25e8 : $c9


	push bc                                                  ; $25e9 : $c5
	call Call_01_0a7f                                                  ; $25ea : $cd, $7f, $0a
	pop af                                                  ; $25ed : $f1
	pop de                                                  ; $25ee : $d1
	ld bc, $27fa                                                  ; $25ef : $01, $fa, $27
	push bc                                                  ; $25f2 : $c5
	cp $46                                                  ; $25f3 : $fe, $46
	jr nz, br_01_25fd                                                  ; $25f5 : $20, $06

	ld a, e                                                  ; $25f7 : $7b
	or l                                                  ; $25f8 : $b5
	ld l, a                                                  ; $25f9 : $6f
	ld a, h                                                  ; $25fa : $7c
	or d                                                  ; $25fb : $b2
	ret                                                  ; $25fc : $c9


br_01_25fd:
	ld a, e                                                  ; $25fd : $7b
	and l                                                  ; $25fe : $a5
	ld l, a                                                  ; $25ff : $6f
	ld a, h                                                  ; $2600 : $7c
	and d                                                  ; $2601 : $a2
	ret                                                  ; $2602 : $c9


	dec hl                                                  ; $2603 : $2b
	rst $10                                                  ; $2604 : $d7
	ret z                                                  ; $2605 : $c8

	rst $08                                                  ; $2606 : $cf
	inc l                                                  ; $2607 : $2c
	ld bc, $2603                                                  ; $2608 : $01, $03, $26
	push bc                                                  ; $260b : $c5
	or $af                                                  ; $260c : $f6, $af
	ld ($40ae), a                                                  ; $260e : $32, $ae, $40
	ld b, (hl)                                                  ; $2611 : $46
	call Call_01_1e3d                                                  ; $2612 : $cd, $3d, $1e
	jp c, Jump_01_1997                                                  ; $2615 : $da, $97, $19
	xor a                                                  ; $2618 : $af
	ld c, a                                                  ; $2619 : $4f
	rst $10                                                  ; $261a : $d7
	jr c, br_01_2622                                                  ; $261b : $38, $05

	call Call_01_1e3d                                                  ; $261d : $cd, $3d, $1e
	jr c, br_01_262b                                                  ; $2620 : $38, $09

br_01_2622:
	ld c, a                                                  ; $2622 : $4f

br_01_2623:
	rst $10                                                  ; $2623 : $d7
	jr c, br_01_2623                                                  ; $2624 : $38, $fd

	call Call_01_1e3d                                                  ; $2626 : $cd, $3d, $1e
	jr nc, br_01_2623                                                  ; $2629 : $30, $f8

br_01_262b:
	ld de, $2652                                                  ; $262b : $11, $52, $26
	push de                                                  ; $262e : $d5
	ld d, $02                                                  ; $262f : $16, $02
	cp $25                                                  ; $2631 : $fe, $25
	ret z                                                  ; $2633 : $c8

	inc d                                                  ; $2634 : $14
	cp $24                                                  ; $2635 : $fe, $24
	ret z                                                  ; $2637 : $c8

	nop                                                  ; $2638 : $00
	nop                                                  ; $2639 : $00
	nop                                                  ; $263a : $00
	nop                                                  ; $263b : $00
	nop                                                  ; $263c : $00
	nop                                                  ; $263d : $00
	nop                                                  ; $263e : $00
	nop                                                  ; $263f : $00
	nop                                                  ; $2640 : $00
	ld a, b                                                  ; $2641 : $78
	sub $41                                                  ; $2642 : $d6, $41
	and $7f                                                  ; $2644 : $e6, $7f
	ld e, a                                                  ; $2646 : $5f
	ld d, $00                                                  ; $2647 : $16, $00
	push hl                                                  ; $2649 : $e5
	ld hl, $4101                                                  ; $264a : $21, $01, $41
	add hl, de                                                  ; $264d : $19
	ld d, (hl)                                                  ; $264e : $56
	pop hl                                                  ; $264f : $e1
	dec hl                                                  ; $2650 : $2b
	ret                                                  ; $2651 : $c9


	ld a, d                                                  ; $2652 : $7a
	ld ($40af), a                                                  ; $2653 : $32, $af, $40
	rst $10                                                  ; $2656 : $d7
	ld a, ($40dc)                                                  ; $2657 : $3a, $dc, $40
	or a                                                  ; $265a : $b7
	jp nz, Jump_01_2664                                                  ; $265b : $c2, $64, $26
	ld a, (hl)                                                  ; $265e : $7e
	sub $28                                                  ; $265f : $d6, $28
	jp z, Jump_01_26e9                                                  ; $2661 : $ca, $e9, $26

Jump_01_2664:
	xor a                                                  ; $2664 : $af
	ld ($40dc), a                                                  ; $2665 : $32, $dc, $40
	push hl                                                  ; $2668 : $e5
	push de                                                  ; $2669 : $d5
	ld hl, ($40f9)                                                  ; $266a : $2a, $f9, $40

br_01_266d:
	ex de, hl                                                  ; $266d : $eb
	ld hl, ($40fb)                                                  ; $266e : $2a, $fb, $40
	rst $18                                                  ; $2671 : $df
	pop hl                                                  ; $2672 : $e1
	jr z, br_01_268e                                                  ; $2673 : $28, $19

	ld a, (de)                                                  ; $2675 : $1a
	ld l, a                                                  ; $2676 : $6f
	cp h                                                  ; $2677 : $bc
	inc de                                                  ; $2678 : $13
	jr nz, $0b                                                  ; $2679 : $20, $0b

	ld a, (de)                                                  ; $267b : $1a
	cp c                                                  ; $267c : $b9
	jr nz, $07                                                  ; $267d : $20, $07

	inc de                                                  ; $267f : $13
	ld a, (de)                                                  ; $2680 : $1a
	cp b                                                  ; $2681 : $b8
	jp z, Jump_01_26cc                                                  ; $2682 : $ca, $cc, $26
	ld a, $13                                                  ; $2685 : $3e, $13
	inc de                                                  ; $2687 : $13
	push hl                                                  ; $2688 : $e5
	ld h, $00                                                  ; $2689 : $26, $00
	add hl, de                                                  ; $268b : $19
	jr br_01_266d                                                  ; $268c : $18, $df

br_01_268e:
	ld a, h                                                  ; $268e : $7c
	pop hl                                                  ; $268f : $e1
	ex (sp), hl                                                  ; $2690 : $e3
	push af                                                  ; $2691 : $f5
	push de                                                  ; $2692 : $d5
	ld de, $24f1                                                  ; $2693 : $11, $f1, $24
	rst $18                                                  ; $2696 : $df
	jr z, br_01_26cf                                                  ; $2697 : $28, $36

	ld de, $2543                                                  ; $2699 : $11, $43, $25
	rst $18                                                  ; $269c : $df
	pop de                                                  ; $269d : $d1
	jr z, br_01_26d5                                                  ; $269e : $28, $35

	pop af                                                  ; $26a0 : $f1
	ex (sp), hl                                                  ; $26a1 : $e3
	push hl                                                  ; $26a2 : $e5
	push bc                                                  ; $26a3 : $c5
	ld c, a                                                  ; $26a4 : $4f
	ld b, $00                                                  ; $26a5 : $06, $00
	push bc                                                  ; $26a7 : $c5
	inc bc                                                  ; $26a8 : $03
	inc bc                                                  ; $26a9 : $03
	inc bc                                                  ; $26aa : $03
	ld hl, ($40fd)                                                  ; $26ab : $2a, $fd, $40
	push hl                                                  ; $26ae : $e5
	add hl, bc                                                  ; $26af : $09
	pop bc                                                  ; $26b0 : $c1
	push hl                                                  ; $26b1 : $e5
	call Call_01_1955                                                  ; $26b2 : $cd, $55, $19
	pop hl                                                  ; $26b5 : $e1
	ld ($40fd), hl                                                  ; $26b6 : $22, $fd, $40
	ld h, b                                                  ; $26b9 : $60
	ld l, c                                                  ; $26ba : $69
	ld ($40fb), hl                                                  ; $26bb : $22, $fb, $40

br_01_26be:
	dec hl                                                  ; $26be : $2b
	ld (hl), $00                                                  ; $26bf : $36, $00
	rst $18                                                  ; $26c1 : $df
	jr nz, br_01_26be                                                  ; $26c2 : $20, $fa

	pop de                                                  ; $26c4 : $d1
	ld (hl), e                                                  ; $26c5 : $73
	inc hl                                                  ; $26c6 : $23
	pop de                                                  ; $26c7 : $d1
	ld (hl), e                                                  ; $26c8 : $73
	inc hl                                                  ; $26c9 : $23
	ld (hl), d                                                  ; $26ca : $72
	ex de, hl                                                  ; $26cb : $eb

Jump_01_26cc:
	inc de                                                  ; $26cc : $13
	pop hl                                                  ; $26cd : $e1
	ret                                                  ; $26ce : $c9


br_01_26cf:
	ld d, a                                                  ; $26cf : $57
	ld e, a                                                  ; $26d0 : $5f
	pop af                                                  ; $26d1 : $f1
	pop af                                                  ; $26d2 : $f1
	ex (sp), hl                                                  ; $26d3 : $e3
	ret                                                  ; $26d4 : $c9


br_01_26d5:
	ld ($4124), a                                                  ; $26d5 : $32, $24, $41
	pop bc                                                  ; $26d8 : $c1
	ld h, a                                                  ; $26d9 : $67
	ld l, a                                                  ; $26da : $6f
	ld ($4121), hl                                                  ; $26db : $22, $21, $41
	rst $20                                                  ; $26de : $e7
	jr nz, br_01_26e7                                                  ; $26df : $20, $06

	ld hl, $1928                                                  ; $26e1 : $21, $28, $19
	ld ($4121), hl                                                  ; $26e4 : $22, $21, $41

br_01_26e7:
	pop hl                                                  ; $26e7 : $e1
	ret                                                  ; $26e8 : $c9


Jump_01_26e9:
	push hl                                                  ; $26e9 : $e5
	ld hl, ($40ae)                                                  ; $26ea : $2a, $ae, $40
	ex (sp), hl                                                  ; $26ed : $e3
	ld d, a                                                  ; $26ee : $57

br_01_26ef:
	push de                                                  ; $26ef : $d5
	push bc                                                  ; $26f0 : $c5
	call Call_01_1e45                                                  ; $26f1 : $cd, $45, $1e
	pop bc                                                  ; $26f4 : $c1
	pop af                                                  ; $26f5 : $f1
	ex de, hl                                                  ; $26f6 : $eb
	ex (sp), hl                                                  ; $26f7 : $e3
	push hl                                                  ; $26f8 : $e5
	ex de, hl                                                  ; $26f9 : $eb
	inc a                                                  ; $26fa : $3c
	ld d, a                                                  ; $26fb : $57
	ld a, (hl)                                                  ; $26fc : $7e
	cp $2c                                                  ; $26fd : $fe, $2c
	jr z, br_01_26ef                                                  ; $26ff : $28, $ee

	rst $08                                                  ; $2701 : $cf
	add hl, hl                                                  ; $2702 : $29
	ld ($40f3), hl                                                  ; $2703 : $22, $f3, $40
	pop hl                                                  ; $2706 : $e1
	ld ($40ae), hl                                                  ; $2707 : $22, $ae, $40
	push de                                                  ; $270a : $d5
	ld hl, ($40fb)                                                  ; $270b : $2a, $fb, $40
	ld a, $19                                                  ; $270e : $3e, $19
	ex de, hl                                                  ; $2710 : $eb
	ld hl, ($40fd)                                                  ; $2711 : $2a, $fd, $40
	ex de, hl                                                  ; $2714 : $eb
	rst $18                                                  ; $2715 : $df
	ld a, ($40af)                                                  ; $2716 : $3a, $af, $40
	jr z, br_01_2742                                                  ; $2719 : $28, $27

	cp (hl)                                                  ; $271b : $be
	inc hl                                                  ; $271c : $23
	jr nz, $08                                                  ; $271d : $20, $08

	ld a, (hl)                                                  ; $271f : $7e
	cp c                                                  ; $2720 : $b9
	inc hl                                                  ; $2721 : $23
	jr nz, br_01_2728                                                  ; $2722 : $20, $04

	ld a, (hl)                                                  ; $2724 : $7e
	cp b                                                  ; $2725 : $b8
	ld a, $23                                                  ; $2726 : $3e, $23

br_01_2728:
	inc hl                                                  ; $2728 : $23
	ld e, (hl)                                                  ; $2729 : $5e
	inc hl                                                  ; $272a : $23
	ld d, (hl)                                                  ; $272b : $56
	inc hl                                                  ; $272c : $23
	jr nz, -$20                                                  ; $272d : $20, $e0

	ld a, ($40ae)                                                  ; $272f : $3a, $ae, $40
	or a                                                  ; $2732 : $b7
	ld e, $12                                                  ; $2733 : $1e, $12
	jp nz, Jump_01_19a2                                                  ; $2735 : $c2, $a2, $19
	pop af                                                  ; $2738 : $f1
	sub (hl)                                                  ; $2739 : $96
	jp z, Jump_01_2795                                                  ; $273a : $ca, $95, $27

Jump_01_273d:
br_01_273d:
	ld e, $10                                                  ; $273d : $1e, $10
	jp Jump_01_19a2                                                  ; $273f : $c3, $a2, $19


br_01_2742:
	ld (hl), a                                                  ; $2742 : $77
	inc hl                                                  ; $2743 : $23
	ld e, a                                                  ; $2744 : $5f
	ld d, $00                                                  ; $2745 : $16, $00
	pop af                                                  ; $2747 : $f1
	ld (hl), c                                                  ; $2748 : $71
	inc hl                                                  ; $2749 : $23
	ld (hl), b                                                  ; $274a : $70
	inc hl                                                  ; $274b : $23
	ld c, a                                                  ; $274c : $4f
	call Call_01_1963                                                  ; $274d : $cd, $63, $19
	inc hl                                                  ; $2750 : $23
	inc hl                                                  ; $2751 : $23
	ld ($40d8), hl                                                  ; $2752 : $22, $d8, $40
	ld (hl), c                                                  ; $2755 : $71
	inc hl                                                  ; $2756 : $23
	ld a, ($40ae)                                                  ; $2757 : $3a, $ae, $40
	rla                                                  ; $275a : $17
	ld a, c                                                  ; $275b : $79

br_01_275c:
	ld bc, $000b                                                  ; $275c : $01, $0b, $00
	jr nc, br_01_2763                                                  ; $275f : $30, $02

	pop bc                                                  ; $2761 : $c1
	inc bc                                                  ; $2762 : $03

br_01_2763:
	ld (hl), c                                                  ; $2763 : $71
	inc hl                                                  ; $2764 : $23
	ld (hl), b                                                  ; $2765 : $70
	inc hl                                                  ; $2766 : $23
	push af                                                  ; $2767 : $f5
	call Call_01_0baa                                                  ; $2768 : $cd, $aa, $0b
	pop af                                                  ; $276b : $f1
	dec a                                                  ; $276c : $3d
	jr nz, br_01_275c                                                  ; $276d : $20, $ed

	push af                                                  ; $276f : $f5
	ld b, d                                                  ; $2770 : $42
	ld c, e                                                  ; $2771 : $4b
	ex de, hl                                                  ; $2772 : $eb
	add hl, de                                                  ; $2773 : $19
	jr c, br_01_273d                                                  ; $2774 : $38, $c7

	call $196c                                                  ; $2776 : $cd, $6c, $19
	ld ($40fd), hl                                                  ; $2779 : $22, $fd, $40

br_01_277c:
	dec hl                                                  ; $277c : $2b
	ld (hl), $00                                                  ; $277d : $36, $00
	rst $18                                                  ; $277f : $df
	jr nz, br_01_277c                                                  ; $2780 : $20, $fa

	inc bc                                                  ; $2782 : $03
	ld d, a                                                  ; $2783 : $57
	ld hl, ($40d8)                                                  ; $2784 : $2a, $d8, $40
	ld e, (hl)                                                  ; $2787 : $5e
	ex de, hl                                                  ; $2788 : $eb
	add hl, hl                                                  ; $2789 : $29
	add hl, bc                                                  ; $278a : $09
	ex de, hl                                                  ; $278b : $eb
	dec hl                                                  ; $278c : $2b
	dec hl                                                  ; $278d : $2b
	ld (hl), e                                                  ; $278e : $73
	inc hl                                                  ; $278f : $23
	ld (hl), d                                                  ; $2790 : $72
	inc hl                                                  ; $2791 : $23
	pop af                                                  ; $2792 : $f1
	jr c, br_01_27c5                                                  ; $2793 : $38, $30

Jump_01_2795:
	ld b, a                                                  ; $2795 : $47
	ld c, a                                                  ; $2796 : $4f
	ld a, (hl)                                                  ; $2797 : $7e
	inc hl                                                  ; $2798 : $23
	ld d, $e1                                                  ; $2799 : $16, $e1
	ld e, (hl)                                                  ; $279b : $5e
	inc hl                                                  ; $279c : $23
	ld d, (hl)                                                  ; $279d : $56
	inc hl                                                  ; $279e : $23
	ex (sp), hl                                                  ; $279f : $e3
	push af                                                  ; $27a0 : $f5
	rst $18                                                  ; $27a1 : $df
	jp nc, Jump_01_273d                                                  ; $27a2 : $d2, $3d, $27
	call Call_01_0baa                                                  ; $27a5 : $cd, $aa, $0b
	add hl, de                                                  ; $27a8 : $19
	pop af                                                  ; $27a9 : $f1
	dec a                                                  ; $27aa : $3d
	ld b, h                                                  ; $27ab : $44
	ld c, l                                                  ; $27ac : $4d
	jr nz, -$15                                                  ; $27ad : $20, $eb

	ld a, ($40af)                                                  ; $27af : $3a, $af, $40
	ld b, h                                                  ; $27b2 : $44
	ld c, l                                                  ; $27b3 : $4d
	add hl, hl                                                  ; $27b4 : $29
	sub $04                                                  ; $27b5 : $d6, $04
	jr c, br_01_27bd                                                  ; $27b7 : $38, $04

	add hl, hl                                                  ; $27b9 : $29
	jr z, br_01_27c2                                                  ; $27ba : $28, $06

	add hl, hl                                                  ; $27bc : $29

br_01_27bd:
	or a                                                  ; $27bd : $b7
	jp po, Jump_01_27c2                                                  ; $27be : $e2, $c2, $27
	add hl, bc                                                  ; $27c1 : $09

Jump_01_27c2:
br_01_27c2:
	pop bc                                                  ; $27c2 : $c1
	add hl, bc                                                  ; $27c3 : $09
	ex de, hl                                                  ; $27c4 : $eb

br_01_27c5:
	ld hl, ($40f3)                                                  ; $27c5 : $2a, $f3, $40
	ret                                                  ; $27c8 : $c9


Jump_01_27c9:
	xor a                                                  ; $27c9 : $af
	push hl                                                  ; $27ca : $e5
	ld ($40af), a                                                  ; $27cb : $32, $af, $40
	call Call_01_27d4                                                  ; $27ce : $cd, $d4, $27
	pop hl                                                  ; $27d1 : $e1
	rst $10                                                  ; $27d2 : $d7
	ret                                                  ; $27d3 : $c9


Call_01_27d4:
	ld hl, ($40fd)                                                  ; $27d4 : $2a, $fd, $40
	ex de, hl                                                  ; $27d7 : $eb
	ld hl, $0000                                                  ; $27d8 : $21, $00, $00
	add hl, sp                                                  ; $27db : $39
	rst $20                                                  ; $27dc : $e7
	jr nz, br_01_27ec                                                  ; $27dd : $20, $0d

	call Call_01_29da                                                  ; $27df : $cd, $da, $29
	call Call_01_28e6                                                  ; $27e2 : $cd, $e6, $28
	ld hl, ($40a0)                                                  ; $27e5 : $2a, $a0, $40
	ex de, hl                                                  ; $27e8 : $eb
	ld hl, ($40d6)                                                  ; $27e9 : $2a, $d6, $40

br_01_27ec:
	ld a, l                                                  ; $27ec : $7d
	sub e                                                  ; $27ed : $93
	ld l, a                                                  ; $27ee : $6f
	ld a, h                                                  ; $27ef : $7c
	sbc a, d                                                  ; $27f0 : $9a
	ld h, a                                                  ; $27f1 : $67
	jp Jump_01_0c66                                                  ; $27f2 : $c3, $66, $0c


	ld a, ($40a6)                                                  ; $27f5 : $3a, $a6, $40

Call_01_27f8:
Jump_01_27f8:
	ld l, a                                                  ; $27f8 : $6f
	xor a                                                  ; $27f9 : $af
	ld h, a                                                  ; $27fa : $67
	jp Jump_01_0a9a                                                  ; $27fb : $c3, $9a, $0a


Jump_01_27fe:
	call $41a9                                                  ; $27fe : $cd, $a9, $41
	rst $10                                                  ; $2801 : $d7
	call Call_01_252c                                                  ; $2802 : $cd, $2c, $25
	push hl                                                  ; $2805 : $e5
	ld hl, $0890                                                  ; $2806 : $21, $90, $08
	push hl                                                  ; $2809 : $e5
	ld a, ($40af)                                                  ; $280a : $3a, $af, $40
	push af                                                  ; $280d : $f5
	cp $03                                                  ; $280e : $fe, $03
	call z, Call_01_29da                                                  ; $2810 : $cc, $da, $29
	pop af                                                  ; $2813 : $f1
	ex de, hl                                                  ; $2814 : $eb
	ld hl, ($408e)                                                  ; $2815 : $2a, $8e, $40
	jp (hl)                                                  ; $2818 : $e9


Call_01_2819:
	push hl                                                  ; $2819 : $e5
	and $07                                                  ; $281a : $e6, $07
	ld hl, $18a1                                                  ; $281c : $21, $a1, $18
	ld c, a                                                  ; $281f : $4f
	ld b, $00                                                  ; $2820 : $06, $00
	add hl, bc                                                  ; $2822 : $09
	call Call_01_2586                                                  ; $2823 : $cd, $86, $25
	pop hl                                                  ; $2826 : $e1
	ret                                                  ; $2827 : $c9


Call_01_2828:
	push hl                                                  ; $2828 : $e5
	ld hl, ($40a2)                                                  ; $2829 : $2a, $a2, $40
	inc hl                                                  ; $282c : $23
	ld a, h                                                  ; $282d : $7c
	or l                                                  ; $282e : $b5
	pop hl                                                  ; $282f : $e1
	ret nz                                                  ; $2830 : $c0

	ld e, $16                                                  ; $2831 : $1e, $16
	jp Jump_01_19a2                                                  ; $2833 : $c3, $a2, $19


	call Call_01_0fbd                                                  ; $2836 : $cd, $bd, $0f
	call Call_01_2865                                                  ; $2839 : $cd, $65, $28
	call Call_01_29da                                                  ; $283c : $cd, $da, $29
	ld bc, $2a2b                                                  ; $283f : $01, $2b, $2a
	push bc                                                  ; $2842 : $c5

Call_01_2843:
	ld a, (hl)                                                  ; $2843 : $7e
	inc hl                                                  ; $2844 : $23
	push hl                                                  ; $2845 : $e5
	call Call_01_28bf                                                  ; $2846 : $cd, $bf, $28
	pop hl                                                  ; $2849 : $e1
	ld c, (hl)                                                  ; $284a : $4e
	inc hl                                                  ; $284b : $23
	ld b, (hl)                                                  ; $284c : $46
	call Call_01_285a                                                  ; $284d : $cd, $5a, $28
	push hl                                                  ; $2850 : $e5
	ld l, a                                                  ; $2851 : $6f
	call Call_01_29ce                                                  ; $2852 : $cd, $ce, $29
	pop de                                                  ; $2855 : $d1
	ret                                                  ; $2856 : $c9


Call_01_2857:
	call Call_01_28bf                                                  ; $2857 : $cd, $bf, $28

Call_01_285a:
	ld hl, $40d3                                                  ; $285a : $21, $d3, $40
	push hl                                                  ; $285d : $e5
	ld (hl), a                                                  ; $285e : $77
	inc hl                                                  ; $285f : $23
	ld (hl), e                                                  ; $2860 : $73
	inc hl                                                  ; $2861 : $23
	ld (hl), d                                                  ; $2862 : $72
	pop hl                                                  ; $2863 : $e1
	ret                                                  ; $2864 : $c9


Call_01_2865:
	dec hl                                                  ; $2865 : $2b

Call_01_2866:
Jump_01_2866:
	ld b, $22                                                  ; $2866 : $06, $22
	ld d, b                                                  ; $2868 : $50

Call_01_2869:
	push hl                                                  ; $2869 : $e5
	ld c, $ff                                                  ; $286a : $0e, $ff

br_01_286c:
	inc hl                                                  ; $286c : $23
	ld a, (hl)                                                  ; $286d : $7e
	inc c                                                  ; $286e : $0c
	or a                                                  ; $286f : $b7
	jr z, br_01_2878                                                  ; $2870 : $28, $06

	cp d                                                  ; $2872 : $ba
	jr z, br_01_2878                                                  ; $2873 : $28, $03

	cp b                                                  ; $2875 : $b8
	jr nz, br_01_286c                                                  ; $2876 : $20, $f4

br_01_2878:
	cp $22                                                  ; $2878 : $fe, $22
	call z, Call_01_1d78                                                  ; $287a : $cc, $78, $1d
	ex (sp), hl                                                  ; $287d : $e3
	inc hl                                                  ; $287e : $23
	ex de, hl                                                  ; $287f : $eb
	ld a, c                                                  ; $2880 : $79
	call Call_01_285a                                                  ; $2881 : $cd, $5a, $28

Jump_01_2884:
	ld de, $40d3                                                  ; $2884 : $11, $d3, $40
	ld a, $d5                                                  ; $2887 : $3e, $d5
	ld hl, ($40b3)                                                  ; $2889 : $2a, $b3, $40
	ld ($4121), hl                                                  ; $288c : $22, $21, $41
	ld a, $03                                                  ; $288f : $3e, $03
	ld ($40af), a                                                  ; $2891 : $32, $af, $40
	call Call_01_09d3                                                  ; $2894 : $cd, $d3, $09
	ld de, $40d6                                                  ; $2897 : $11, $d6, $40
	rst $18                                                  ; $289a : $df
	ld ($40b3), hl                                                  ; $289b : $22, $b3, $40
	pop hl                                                  ; $289e : $e1
	ld a, (hl)                                                  ; $289f : $7e
	ret nz                                                  ; $28a0 : $c0

	ld e, $1e                                                  ; $28a1 : $1e, $1e
	jp Jump_01_19a2                                                  ; $28a3 : $c3, $a2, $19


Jump_01_28a6:
	inc hl                                                  ; $28a6 : $23

Call_01_28a7:
	call Call_01_2865                                                  ; $28a7 : $cd, $65, $28

Call_01_28aa:
	call Call_01_29da                                                  ; $28aa : $cd, $da, $29
	call Call_01_09c4                                                  ; $28ad : $cd, $c4, $09
	inc d                                                  ; $28b0 : $14

br_01_28b1:
	dec d                                                  ; $28b1 : $15
	ret z                                                  ; $28b2 : $c8

	ld a, (bc)                                                  ; $28b3 : $0a
	call Call_01_032a                                                  ; $28b4 : $cd, $2a, $03
	cp $0d                                                  ; $28b7 : $fe, $0d
	call z, Call_01_2103                                                  ; $28b9 : $cc, $03, $21
	inc bc                                                  ; $28bc : $03
	jr br_01_28b1                                                  ; $28bd : $18, $f2

Call_01_28bf:
	or a                                                  ; $28bf : $b7
	ld c, $f1                                                  ; $28c0 : $0e, $f1
	push af                                                  ; $28c2 : $f5
	ld hl, ($40a0)                                                  ; $28c3 : $2a, $a0, $40
	ex de, hl                                                  ; $28c6 : $eb
	ld hl, ($40d6)                                                  ; $28c7 : $2a, $d6, $40
	cpl                                                  ; $28ca : $2f
	ld c, a                                                  ; $28cb : $4f
	ld b, $ff                                                  ; $28cc : $06, $ff
	add hl, bc                                                  ; $28ce : $09
	inc hl                                                  ; $28cf : $23
	rst $18                                                  ; $28d0 : $df
	jr c, br_01_28da                                                  ; $28d1 : $38, $07

	ld ($40d6), hl                                                  ; $28d3 : $22, $d6, $40
	inc hl                                                  ; $28d6 : $23
	ex de, hl                                                  ; $28d7 : $eb

Jump_01_28d8:
	pop af                                                  ; $28d8 : $f1
	ret                                                  ; $28d9 : $c9


br_01_28da:
	pop af                                                  ; $28da : $f1
	ld e, $1a                                                  ; $28db : $1e, $1a
	jp z, Jump_01_19a2                                                  ; $28dd : $ca, $a2, $19
	cp a                                                  ; $28e0 : $bf
	push af                                                  ; $28e1 : $f5
	ld bc, $28c1                                                  ; $28e2 : $01, $c1, $28
	push bc                                                  ; $28e5 : $c5

Call_01_28e6:
	ld hl, ($40b1)                                                  ; $28e6 : $2a, $b1, $40

Jump_01_28e9:
	ld ($40d6), hl                                                  ; $28e9 : $22, $d6, $40
	ld hl, $0000                                                  ; $28ec : $21, $00, $00
	push hl                                                  ; $28ef : $e5
	ld hl, ($40a0)                                                  ; $28f0 : $2a, $a0, $40
	push hl                                                  ; $28f3 : $e5
	ld hl, $40b5                                                  ; $28f4 : $21, $b5, $40
	ex de, hl                                                  ; $28f7 : $eb
	ld hl, ($40b3)                                                  ; $28f8 : $2a, $b3, $40
	ex de, hl                                                  ; $28fb : $eb
	rst $18                                                  ; $28fc : $df
	ld bc, $28f7                                                  ; $28fd : $01, $f7, $28
	jp nz, Jump_01_294a                                                  ; $2900 : $c2, $4a, $29
	ld hl, ($40f9)                                                  ; $2903 : $2a, $f9, $40

br_01_2906:
	ex de, hl                                                  ; $2906 : $eb
	ld hl, ($40fb)                                                  ; $2907 : $2a, $fb, $40
	ex de, hl                                                  ; $290a : $eb
	rst $18                                                  ; $290b : $df
	jr z, br_01_2921                                                  ; $290c : $28, $13

	ld a, (hl)                                                  ; $290e : $7e
	inc hl                                                  ; $290f : $23
	inc hl                                                  ; $2910 : $23
	inc hl                                                  ; $2911 : $23
	cp $03                                                  ; $2912 : $fe, $03
	jr nz, br_01_291a                                                  ; $2914 : $20, $04

	call Call_01_294b                                                  ; $2916 : $cd, $4b, $29
	xor a                                                  ; $2919 : $af

br_01_291a:
	ld e, a                                                  ; $291a : $5f
	ld d, $00                                                  ; $291b : $16, $00
	add hl, de                                                  ; $291d : $19
	jr br_01_2906                                                  ; $291e : $18, $e6

br_01_2920:
	pop bc                                                  ; $2920 : $c1

br_01_2921:
	ex de, hl                                                  ; $2921 : $eb
	ld hl, ($40fd)                                                  ; $2922 : $2a, $fd, $40
	ex de, hl                                                  ; $2925 : $eb
	rst $18                                                  ; $2926 : $df
	jp z, Jump_01_296b                                                  ; $2927 : $ca, $6b, $29
	ld a, (hl)                                                  ; $292a : $7e
	inc hl                                                  ; $292b : $23
	call Call_01_09c2                                                  ; $292c : $cd, $c2, $09
	push hl                                                  ; $292f : $e5
	add hl, bc                                                  ; $2930 : $09
	cp $03                                                  ; $2931 : $fe, $03
	jr nz, br_01_2920                                                  ; $2933 : $20, $eb

	ld ($40d8), hl                                                  ; $2935 : $22, $d8, $40
	pop hl                                                  ; $2938 : $e1
	ld c, (hl)                                                  ; $2939 : $4e
	ld b, $00                                                  ; $293a : $06, $00
	add hl, bc                                                  ; $293c : $09
	add hl, bc                                                  ; $293d : $09
	inc hl                                                  ; $293e : $23
	ex de, hl                                                  ; $293f : $eb
	ld hl, ($40d8)                                                  ; $2940 : $2a, $d8, $40
	ex de, hl                                                  ; $2943 : $eb
	rst $18                                                  ; $2944 : $df
	jr z, br_01_2921                                                  ; $2945 : $28, $da

	ld bc, $293f                                                  ; $2947 : $01, $3f, $29

Jump_01_294a:
	push bc                                                  ; $294a : $c5

Call_01_294b:
	xor a                                                  ; $294b : $af
	or (hl)                                                  ; $294c : $b6
	inc hl                                                  ; $294d : $23
	ld e, (hl)                                                  ; $294e : $5e
	inc hl                                                  ; $294f : $23
	ld d, (hl)                                                  ; $2950 : $56
	inc hl                                                  ; $2951 : $23
	ret z                                                  ; $2952 : $c8

	ld b, h                                                  ; $2953 : $44
	ld c, l                                                  ; $2954 : $4d
	ld hl, ($40d6)                                                  ; $2955 : $2a, $d6, $40
	rst $18                                                  ; $2958 : $df
	ld h, b                                                  ; $2959 : $60
	ld l, c                                                  ; $295a : $69
	ret c                                                  ; $295b : $d8

	pop hl                                                  ; $295c : $e1
	ex (sp), hl                                                  ; $295d : $e3
	rst $18                                                  ; $295e : $df
	ex (sp), hl                                                  ; $295f : $e3
	push hl                                                  ; $2960 : $e5
	ld h, b                                                  ; $2961 : $60
	ld l, c                                                  ; $2962 : $69
	ret nc                                                  ; $2963 : $d0

	pop bc                                                  ; $2964 : $c1
	pop af                                                  ; $2965 : $f1
	pop af                                                  ; $2966 : $f1
	push hl                                                  ; $2967 : $e5
	push de                                                  ; $2968 : $d5
	push bc                                                  ; $2969 : $c5
	ret                                                  ; $296a : $c9


Jump_01_296b:
	pop de                                                  ; $296b : $d1
	pop hl                                                  ; $296c : $e1
	ld a, l                                                  ; $296d : $7d
	or h                                                  ; $296e : $b4
	ret z                                                  ; $296f : $c8

	dec hl                                                  ; $2970 : $2b
	ld b, (hl)                                                  ; $2971 : $46
	dec hl                                                  ; $2972 : $2b
	ld c, (hl)                                                  ; $2973 : $4e
	push hl                                                  ; $2974 : $e5
	dec hl                                                  ; $2975 : $2b
	ld l, (hl)                                                  ; $2976 : $6e
	ld h, $00                                                  ; $2977 : $26, $00
	add hl, bc                                                  ; $2979 : $09
	ld d, b                                                  ; $297a : $50
	ld e, c                                                  ; $297b : $59
	dec hl                                                  ; $297c : $2b
	ld b, h                                                  ; $297d : $44
	ld c, l                                                  ; $297e : $4d
	ld hl, ($40d6)                                                  ; $297f : $2a, $d6, $40
	call Call_01_1958                                                  ; $2982 : $cd, $58, $19
	pop hl                                                  ; $2985 : $e1
	ld (hl), c                                                  ; $2986 : $71
	inc hl                                                  ; $2987 : $23
	ld (hl), b                                                  ; $2988 : $70
	ld l, c                                                  ; $2989 : $69
	ld h, b                                                  ; $298a : $60
	dec hl                                                  ; $298b : $2b
	jp Jump_01_28e9                                                  ; $298c : $c3, $e9, $28


Jump_01_298f:
	push bc                                                  ; $298f : $c5
	push hl                                                  ; $2990 : $e5
	ld hl, ($4121)                                                  ; $2991 : $2a, $21, $41
	ex (sp), hl                                                  ; $2994 : $e3
	call Call_01_249f                                                  ; $2995 : $cd, $9f, $24
	ex (sp), hl                                                  ; $2998 : $e3
	call Call_01_0af4                                                  ; $2999 : $cd, $f4, $0a
	ld a, (hl)                                                  ; $299c : $7e
	push hl                                                  ; $299d : $e5
	ld hl, ($4121)                                                  ; $299e : $2a, $21, $41
	push hl                                                  ; $29a1 : $e5
	add a, (hl)                                                  ; $29a2 : $86
	ld e, $1c                                                  ; $29a3 : $1e, $1c
	jp c, Jump_01_19a2                                                  ; $29a5 : $da, $a2, $19
	call Call_01_2857                                                  ; $29a8 : $cd, $57, $28
	pop de                                                  ; $29ab : $d1
	call Call_01_29de                                                  ; $29ac : $cd, $de, $29
	ex (sp), hl                                                  ; $29af : $e3
	call Call_01_29dd                                                  ; $29b0 : $cd, $dd, $29
	push hl                                                  ; $29b3 : $e5
	ld hl, ($40d4)                                                  ; $29b4 : $2a, $d4, $40
	ex de, hl                                                  ; $29b7 : $eb
	call Call_01_29c6                                                  ; $29b8 : $cd, $c6, $29
	call Call_01_29c6                                                  ; $29bb : $cd, $c6, $29
	ld hl, $2349                                                  ; $29be : $21, $49, $23
	ex (sp), hl                                                  ; $29c1 : $e3
	push hl                                                  ; $29c2 : $e5
	jp Jump_01_2884                                                  ; $29c3 : $c3, $84, $28


Call_01_29c6:
	pop hl                                                  ; $29c6 : $e1
	ex (sp), hl                                                  ; $29c7 : $e3
	ld a, (hl)                                                  ; $29c8 : $7e
	inc hl                                                  ; $29c9 : $23
	ld c, (hl)                                                  ; $29ca : $4e
	inc hl                                                  ; $29cb : $23
	ld b, (hl)                                                  ; $29cc : $46
	ld l, a                                                  ; $29cd : $6f

Call_01_29ce:
	inc l                                                  ; $29ce : $2c

br_01_29cf:
	dec l                                                  ; $29cf : $2d
	ret z                                                  ; $29d0 : $c8

	ld a, (bc)                                                  ; $29d1 : $0a
	ld (de), a                                                  ; $29d2 : $12
	inc bc                                                  ; $29d3 : $03
	inc de                                                  ; $29d4 : $13
	jr br_01_29cf                                                  ; $29d5 : $18, $f8

Call_01_29d7:
	call Call_01_0af4                                                  ; $29d7 : $cd, $f4, $0a

Call_01_29da:
	ld hl, ($4121)                                                  ; $29da : $2a, $21, $41

Call_01_29dd:
	ex de, hl                                                  ; $29dd : $eb

Call_01_29de:
	call Call_01_29f5                                                  ; $29de : $cd, $f5, $29
	ex de, hl                                                  ; $29e1 : $eb
	ret nz                                                  ; $29e2 : $c0

	push de                                                  ; $29e3 : $d5
	ld d, b                                                  ; $29e4 : $50
	ld e, c                                                  ; $29e5 : $59
	dec de                                                  ; $29e6 : $1b
	ld c, (hl)                                                  ; $29e7 : $4e
	ld hl, ($40d6)                                                  ; $29e8 : $2a, $d6, $40
	rst $18                                                  ; $29eb : $df
	jr nz, br_01_29f3                                                  ; $29ec : $20, $05

	ld b, a                                                  ; $29ee : $47
	add hl, bc                                                  ; $29ef : $09
	ld ($40d6), hl                                                  ; $29f0 : $22, $d6, $40

br_01_29f3:
	pop hl                                                  ; $29f3 : $e1
	ret                                                  ; $29f4 : $c9


Call_01_29f5:
	ld hl, ($40b3)                                                  ; $29f5 : $2a, $b3, $40
	dec hl                                                  ; $29f8 : $2b
	ld b, (hl)                                                  ; $29f9 : $46
	dec hl                                                  ; $29fa : $2b
	ld c, (hl)                                                  ; $29fb : $4e
	dec hl                                                  ; $29fc : $2b
	rst $18                                                  ; $29fd : $df
	ret nz                                                  ; $29fe : $c0

	ld ($40b3), hl                                                  ; $29ff : $22, $b3, $40
	ret                                                  ; $2a02 : $c9


	ld bc, $27f8                                                  ; $2a03 : $01, $f8, $27
	push bc                                                  ; $2a06 : $c5

Call_01_2a07:
	call Call_01_29d7                                                  ; $2a07 : $cd, $d7, $29
	xor a                                                  ; $2a0a : $af
	ld d, a                                                  ; $2a0b : $57
	ld a, (hl)                                                  ; $2a0c : $7e
	or a                                                  ; $2a0d : $b7
	ret                                                  ; $2a0e : $c9


	ld bc, $27f8                                                  ; $2a0f : $01, $f8, $27
	push bc                                                  ; $2a12 : $c5

Call_01_2a13:
	call Call_01_2a07                                                  ; $2a13 : $cd, $07, $2a
	jp z, Jump_01_1e4a                                                  ; $2a16 : $ca, $4a, $1e
	inc hl                                                  ; $2a19 : $23
	ld e, (hl)                                                  ; $2a1a : $5e
	inc hl                                                  ; $2a1b : $23
	ld d, (hl)                                                  ; $2a1c : $56
	ld a, (de)                                                  ; $2a1d : $1a
	ret                                                  ; $2a1e : $c9


	ld a, $01                                                  ; $2a1f : $3e, $01
	call Call_01_2857                                                  ; $2a21 : $cd, $57, $28
	call Call_01_2b1f                                                  ; $2a24 : $cd, $1f, $2b
	jp Jump_01_3a3a                                                  ; $2a27 : $c3, $3a, $3a


Jump_01_2a2a:
	ld (hl), e                                                  ; $2a2a : $73

br_01_2a2b:
	pop bc                                                  ; $2a2b : $c1
	jp Jump_01_2884                                                  ; $2a2c : $c3, $84, $28


Jump_01_2a2f:
	rst $10                                                  ; $2a2f : $d7
	rst $08                                                  ; $2a30 : $cf
	jr z, -$33                                                  ; $2a31 : $28, $cd

	inc e                                                  ; $2a33 : $1c
	dec hl                                                  ; $2a34 : $2b
	push de                                                  ; $2a35 : $d5
	rst $08                                                  ; $2a36 : $cf
	inc l                                                  ; $2a37 : $2c
	call $2337                                                  ; $2a38 : $cd, $37, $23
	rst $08                                                  ; $2a3b : $cf
	add hl, hl                                                  ; $2a3c : $29
	ex (sp), hl                                                  ; $2a3d : $e3
	push hl                                                  ; $2a3e : $e5
	rst $20                                                  ; $2a3f : $e7
	jr z, br_01_2a47                                                  ; $2a40 : $28, $05

	call Call_01_2b1f                                                  ; $2a42 : $cd, $1f, $2b
	jr br_01_2a4a                                                  ; $2a45 : $18, $03

br_01_2a47:
	call Call_01_2a13                                                  ; $2a47 : $cd, $13, $2a

br_01_2a4a:
	pop de                                                  ; $2a4a : $d1
	push af                                                  ; $2a4b : $f5
	push af                                                  ; $2a4c : $f5
	ld a, e                                                  ; $2a4d : $7b
	call Call_01_2857                                                  ; $2a4e : $cd, $57, $28
	ld e, a                                                  ; $2a51 : $5f
	pop af                                                  ; $2a52 : $f1
	inc e                                                  ; $2a53 : $1c
	dec e                                                  ; $2a54 : $1d
	jr z, br_01_2a2b                                                  ; $2a55 : $28, $d4

	ld hl, ($40d4)                                                  ; $2a57 : $2a, $d4, $40

br_01_2a5a:
	ld (hl), a                                                  ; $2a5a : $77
	inc hl                                                  ; $2a5b : $23
	dec e                                                  ; $2a5c : $1d
	jr nz, br_01_2a5a                                                  ; $2a5d : $20, $fb

	jr br_01_2a2b                                                  ; $2a5f : $18, $ca

	call Call_01_2adf                                                  ; $2a61 : $cd, $df, $2a
	xor a                                                  ; $2a64 : $af

br_01_2a65:
	ex (sp), hl                                                  ; $2a65 : $e3
	ld c, a                                                  ; $2a66 : $4f
	ld a, $e5                                                  ; $2a67 : $3e, $e5
	push hl                                                  ; $2a69 : $e5
	ld a, (hl)                                                  ; $2a6a : $7e
	cp b                                                  ; $2a6b : $b8
	jr c, $02                                                  ; $2a6c : $38, $02

	ld a, b                                                  ; $2a6e : $78
	ld de, $000e                                                  ; $2a6f : $11, $0e, $00
	push bc                                                  ; $2a72 : $c5
	call Call_01_28bf                                                  ; $2a73 : $cd, $bf, $28
	pop bc                                                  ; $2a76 : $c1
	pop hl                                                  ; $2a77 : $e1
	push hl                                                  ; $2a78 : $e5
	inc hl                                                  ; $2a79 : $23
	ld b, (hl)                                                  ; $2a7a : $46
	inc hl                                                  ; $2a7b : $23
	ld h, (hl)                                                  ; $2a7c : $66
	ld l, b                                                  ; $2a7d : $68
	ld b, $00                                                  ; $2a7e : $06, $00
	add hl, bc                                                  ; $2a80 : $09
	ld b, h                                                  ; $2a81 : $44
	ld c, l                                                  ; $2a82 : $4d
	call Call_01_285a                                                  ; $2a83 : $cd, $5a, $28
	ld l, a                                                  ; $2a86 : $6f
	call Call_01_29ce                                                  ; $2a87 : $cd, $ce, $29
	pop de                                                  ; $2a8a : $d1
	call Call_01_29de                                                  ; $2a8b : $cd, $de, $29
	jp Jump_01_2884                                                  ; $2a8e : $c3, $84, $28


	call Call_01_2adf                                                  ; $2a91 : $cd, $df, $2a
	pop de                                                  ; $2a94 : $d1
	push de                                                  ; $2a95 : $d5
	ld a, (de)                                                  ; $2a96 : $1a
	sub b                                                  ; $2a97 : $90
	jr br_01_2a65                                                  ; $2a98 : $18, $cb

	ex de, hl                                                  ; $2a9a : $eb
	ld a, (hl)                                                  ; $2a9b : $7e
	call Call_01_2ae2                                                  ; $2a9c : $cd, $e2, $2a
	inc b                                                  ; $2a9f : $04
	dec b                                                  ; $2aa0 : $05
	jp z, Jump_01_1e4a                                                  ; $2aa1 : $ca, $4a, $1e
	push bc                                                  ; $2aa4 : $c5
	ld e, $ff                                                  ; $2aa5 : $1e, $ff
	cp $29                                                  ; $2aa7 : $fe, $29
	jr z, br_01_2ab0                                                  ; $2aa9 : $28, $05

	rst $08                                                  ; $2aab : $cf
	inc l                                                  ; $2aac : $2c
	call Call_01_2b1c                                                  ; $2aad : $cd, $1c, $2b

br_01_2ab0:
	rst $08                                                  ; $2ab0 : $cf
	add hl, hl                                                  ; $2ab1 : $29
	pop af                                                  ; $2ab2 : $f1
	ex (sp), hl                                                  ; $2ab3 : $e3
	ld bc, $2a69                                                  ; $2ab4 : $01, $69, $2a
	push bc                                                  ; $2ab7 : $c5
	dec a                                                  ; $2ab8 : $3d
	cp (hl)                                                  ; $2ab9 : $be
	ld b, $00                                                  ; $2aba : $06, $00
	ret nc                                                  ; $2abc : $d0

	ld c, a                                                  ; $2abd : $4f
	ld a, (hl)                                                  ; $2abe : $7e
	sub c                                                  ; $2abf : $91
	cp e                                                  ; $2ac0 : $bb
	ld b, a                                                  ; $2ac1 : $47
	ret c                                                  ; $2ac2 : $d8

	ld b, e                                                  ; $2ac3 : $43
	ret                                                  ; $2ac4 : $c9


	call Call_01_2a07                                                  ; $2ac5 : $cd, $07, $2a
	jp z, Jump_01_27f8                                                  ; $2ac8 : $ca, $f8, $27
	ld e, a                                                  ; $2acb : $5f
	inc hl                                                  ; $2acc : $23
	ld a, (hl)                                                  ; $2acd : $7e
	inc hl                                                  ; $2ace : $23
	ld h, (hl)                                                  ; $2acf : $66
	ld l, a                                                  ; $2ad0 : $6f
	push hl                                                  ; $2ad1 : $e5
	add hl, de                                                  ; $2ad2 : $19
	ld b, (hl)                                                  ; $2ad3 : $46
	ld (hl), d                                                  ; $2ad4 : $72
	ex (sp), hl                                                  ; $2ad5 : $e3
	push bc                                                  ; $2ad6 : $c5
	ld a, (hl)                                                  ; $2ad7 : $7e
	call Call_01_0e65                                                  ; $2ad8 : $cd, $65, $0e
	pop bc                                                  ; $2adb : $c1
	pop hl                                                  ; $2adc : $e1
	ld (hl), b                                                  ; $2add : $70
	ret                                                  ; $2ade : $c9


Call_01_2adf:
	ex de, hl                                                  ; $2adf : $eb
	rst $08                                                  ; $2ae0 : $cf
	add hl, hl                                                  ; $2ae1 : $29

Call_01_2ae2:
	pop bc                                                  ; $2ae2 : $c1
	pop de                                                  ; $2ae3 : $d1
	push bc                                                  ; $2ae4 : $c5
	ld b, e                                                  ; $2ae5 : $43
	ret                                                  ; $2ae6 : $c9


Jump_01_2ae7:
	cp $7a                                                  ; $2ae7 : $fe, $7a
	jp nz, Jump_01_1997                                                  ; $2ae9 : $c2, $97, $19
	jp $41d9                                                  ; $2aec : $c3, $d9, $41


	call Call_01_2b1f                                                  ; $2aef : $cd, $1f, $2b
	ld ($4094), a                                                  ; $2af2 : $32, $94, $40
	call $4093                                                  ; $2af5 : $cd, $93, $40
	jp Jump_01_27f8                                                  ; $2af8 : $c3, $f8, $27


	call Call_01_2b0e                                                  ; $2afb : $cd, $0e, $2b
	jp $4096                                                  ; $2afe : $c3, $96, $40


Call_01_2b01:
	rst $10                                                  ; $2b01 : $d7

Call_01_2b02:
	call $2337                                                  ; $2b02 : $cd, $37, $23

Call_01_2b05:
	push hl                                                  ; $2b05 : $e5
	call Call_01_0a7f                                                  ; $2b06 : $cd, $7f, $0a
	ex de, hl                                                  ; $2b09 : $eb
	pop hl                                                  ; $2b0a : $e1
	ld a, d                                                  ; $2b0b : $7a
	or a                                                  ; $2b0c : $b7
	ret                                                  ; $2b0d : $c9


Call_01_2b0e:
	call Call_01_2b1c                                                  ; $2b0e : $cd, $1c, $2b
	ld ($4094), a                                                  ; $2b11 : $32, $94, $40
	ld ($4097), a                                                  ; $2b14 : $32, $97, $40
	rst $08                                                  ; $2b17 : $cf
	inc l                                                  ; $2b18 : $2c
	jr br_01_2b1c                                                  ; $2b19 : $18, $01

Call_01_2b1b:
	rst $10                                                  ; $2b1b : $d7

Call_01_2b1c:
br_01_2b1c:
	call $2337                                                  ; $2b1c : $cd, $37, $23

Call_01_2b1f:
	call Call_01_2b05                                                  ; $2b1f : $cd, $05, $2b
	jp nz, Jump_01_1e4a                                                  ; $2b22 : $c2, $4a, $1e
	dec hl                                                  ; $2b25 : $2b
	rst $10                                                  ; $2b26 : $d7
	ld a, e                                                  ; $2b27 : $7b
	ret                                                  ; $2b28 : $c9


	ld a, $01                                                  ; $2b29 : $3e, $01
	ld ($409c), a                                                  ; $2b2b : $32, $9c, $40
	pop bc                                                  ; $2b2e : $c1
	call Call_01_1b10                                                  ; $2b2f : $cd, $10, $1b
	push bc                                                  ; $2b32 : $c5

br_01_2b33:
	ld hl, $ffff                                                  ; $2b33 : $21, $ff, $ff
	ld ($40a2), hl                                                  ; $2b36 : $22, $a2, $40
	pop hl                                                  ; $2b39 : $e1
	pop de                                                  ; $2b3a : $d1
	ld c, (hl)                                                  ; $2b3b : $4e
	inc hl                                                  ; $2b3c : $23
	ld b, (hl)                                                  ; $2b3d : $46
	inc hl                                                  ; $2b3e : $23
	ld a, b                                                  ; $2b3f : $78
	or c                                                  ; $2b40 : $b1
	jp z, Jump_01_1a19                                                  ; $2b41 : $ca, $19, $1a
	call $41df                                                  ; $2b44 : $cd, $df, $41
	call Call_01_1d9b                                                  ; $2b47 : $cd, $9b, $1d
	push bc                                                  ; $2b4a : $c5
	ld c, (hl)                                                  ; $2b4b : $4e
	inc hl                                                  ; $2b4c : $23
	ld b, (hl)                                                  ; $2b4d : $46
	inc hl                                                  ; $2b4e : $23
	push bc                                                  ; $2b4f : $c5
	ex (sp), hl                                                  ; $2b50 : $e3
	ex de, hl                                                  ; $2b51 : $eb
	rst $18                                                  ; $2b52 : $df
	pop bc                                                  ; $2b53 : $c1
	jp c, $1a18                                                  ; $2b54 : $da, $18, $1a
	ex (sp), hl                                                  ; $2b57 : $e3
	push hl                                                  ; $2b58 : $e5
	push bc                                                  ; $2b59 : $c5
	ex de, hl                                                  ; $2b5a : $eb
	ld ($40ec), hl                                                  ; $2b5b : $22, $ec, $40
	call Call_01_0faf                                                  ; $2b5e : $cd, $af, $0f
	ld a, $20                                                  ; $2b61 : $3e, $20
	pop hl                                                  ; $2b63 : $e1
	call Call_01_032a                                                  ; $2b64 : $cd, $2a, $03
	call Call_01_2b7e                                                  ; $2b67 : $cd, $7e, $2b
	ld hl, ($40a7)                                                  ; $2b6a : $2a, $a7, $40
	call Call_01_2b75                                                  ; $2b6d : $cd, $75, $2b
	call Call_01_3b2e                                                  ; $2b70 : $cd, $2e, $3b
	jr br_01_2b33                                                  ; $2b73 : $18, $be

Call_01_2b75:
br_01_2b75:
	ld a, (hl)                                                  ; $2b75 : $7e
	or a                                                  ; $2b76 : $b7
	ret z                                                  ; $2b77 : $c8

	call Call_01_032a                                                  ; $2b78 : $cd, $2a, $03
	inc hl                                                  ; $2b7b : $23
	jr br_01_2b75                                                  ; $2b7c : $18, $f7

Call_01_2b7e:
	push hl                                                  ; $2b7e : $e5
	ld hl, ($40a7)                                                  ; $2b7f : $2a, $a7, $40
	ld b, h                                                  ; $2b82 : $44
	ld c, l                                                  ; $2b83 : $4d
	pop hl                                                  ; $2b84 : $e1
	ld d, $ff                                                  ; $2b85 : $16, $ff
	jr br_01_2b8c                                                  ; $2b87 : $18, $03

Jump_01_2b89:
	inc bc                                                  ; $2b89 : $03
	dec d                                                  ; $2b8a : $15
	ret z                                                  ; $2b8b : $c8

br_01_2b8c:
	ld a, (hl)                                                  ; $2b8c : $7e
	or a                                                  ; $2b8d : $b7
	inc hl                                                  ; $2b8e : $23
	ld (bc), a                                                  ; $2b8f : $02
	ret z                                                  ; $2b90 : $c8

	jp Jump_01_2e9d                                                  ; $2b91 : $c3, $9d, $2e


Jump_01_2b94:
	cp $fb                                                  ; $2b94 : $fe, $fb
	jr nz, br_01_2ba0                                                  ; $2b96 : $20, $08

	dec bc                                                  ; $2b98 : $0b
	dec bc                                                  ; $2b99 : $0b
	dec bc                                                  ; $2b9a : $0b
	dec bc                                                  ; $2b9b : $0b
	inc d                                                  ; $2b9c : $14
	inc d                                                  ; $2b9d : $14
	inc d                                                  ; $2b9e : $14
	inc d                                                  ; $2b9f : $14

br_01_2ba0:
	cp $95                                                  ; $2ba0 : $fe, $95
	call z, Call_01_0b24                                                  ; $2ba2 : $cc, $24, $0b
	sub $7f                                                  ; $2ba5 : $d6, $7f
	push hl                                                  ; $2ba7 : $e5
	ld e, a                                                  ; $2ba8 : $5f
	ld hl, $1650                                                  ; $2ba9 : $21, $50, $16

Jump_01_2bac:
br_01_2bac:
	ld a, (hl)                                                  ; $2bac : $7e
	or a                                                  ; $2bad : $b7
	inc hl                                                  ; $2bae : $23
	jp p, Jump_01_2bac                                                  ; $2baf : $f2, $ac, $2b
	dec e                                                  ; $2bb2 : $1d
	jr nz, br_01_2bac                                                  ; $2bb3 : $20, $f7

	and $7f                                                  ; $2bb5 : $e6, $7f

Jump_01_2bb7:
	ld (bc), a                                                  ; $2bb7 : $02
	inc bc                                                  ; $2bb8 : $03
	dec d                                                  ; $2bb9 : $15
	jp z, Jump_01_28d8                                                  ; $2bba : $ca, $d8, $28
	ld a, (hl)                                                  ; $2bbd : $7e
	inc hl                                                  ; $2bbe : $23
	or a                                                  ; $2bbf : $b7
	jp p, Jump_01_2bb7                                                  ; $2bc0 : $f2, $b7, $2b
	pop hl                                                  ; $2bc3 : $e1
	jr br_01_2b8c                                                  ; $2bc4 : $18, $c6

	call Call_01_1b10                                                  ; $2bc6 : $cd, $10, $1b
	pop de                                                  ; $2bc9 : $d1
	push bc                                                  ; $2bca : $c5
	push bc                                                  ; $2bcb : $c5
	call Call_01_1b2c                                                  ; $2bcc : $cd, $2c, $1b
	jr nc, br_01_2bd6                                                  ; $2bcf : $30, $05

	ld d, h                                                  ; $2bd1 : $54
	ld e, l                                                  ; $2bd2 : $5d
	ex (sp), hl                                                  ; $2bd3 : $e3
	push hl                                                  ; $2bd4 : $e5
	rst $18                                                  ; $2bd5 : $df

br_01_2bd6:
	jp nc, Jump_01_1e4a                                                  ; $2bd6 : $d2, $4a, $1e
	ld hl, $1929                                                  ; $2bd9 : $21, $29, $19
	call Call_01_28a7                                                  ; $2bdc : $cd, $a7, $28
	pop bc                                                  ; $2bdf : $c1
	ld hl, $1ae8                                                  ; $2be0 : $21, $e8, $1a
	ex (sp), hl                                                  ; $2be3 : $e3

Call_01_2be4:
	ex de, hl                                                  ; $2be4 : $eb
	ld hl, ($40f9)                                                  ; $2be5 : $2a, $f9, $40

br_01_2be8:
	ld a, (de)                                                  ; $2be8 : $1a
	ld (bc), a                                                  ; $2be9 : $02
	inc bc                                                  ; $2bea : $03
	inc de                                                  ; $2beb : $13
	rst $18                                                  ; $2bec : $df
	jr nz, br_01_2be8                                                  ; $2bed : $20, $f9

	ld h, b                                                  ; $2bef : $60
	ld l, c                                                  ; $2bf0 : $69
	ld ($40f9), hl                                                  ; $2bf1 : $22, $f9, $40
	ret                                                  ; $2bf4 : $c9


Jump_01_2bf5:
	call Call_01_2b1c                                                  ; $2bf5 : $cd, $1c, $2b
	cp $20                                                  ; $2bf8 : $fe, $20
	jp nc, Jump_01_1e4a                                                  ; $2bfa : $d2, $4a, $1e
	ld ($42d2), a                                                  ; $2bfd : $32, $d2, $42
	rst $08                                                  ; $2c00 : $cf
	inc l                                                  ; $2c01 : $2c
	call Call_01_2b1c                                                  ; $2c02 : $cd, $1c, $2b
	or a                                                  ; $2c05 : $b7
	jp z, Jump_01_1e4a                                                  ; $2c06 : $ca, $4a, $1e
	cp $0a                                                  ; $2c09 : $fe, $0a
	jp nc, Jump_01_1e4a                                                  ; $2c0b : $d2, $4a, $1e
	di                                                  ; $2c0e : $f3
	push hl                                                  ; $2c0f : $e5
	dec a                                                  ; $2c10 : $3d
	push af                                                  ; $2c11 : $f5
	ld a, ($42d2)                                                  ; $2c12 : $3a, $d2, $42
	or a                                                  ; $2c15 : $b7
	jr z, br_01_2c58                                                  ; $2c16 : $28, $40

	dec a                                                  ; $2c18 : $3d
	sla a                                                  ; $2c19 : $cb, $27
	ld c, a                                                  ; $2c1b : $4f
	xor a                                                  ; $2c1c : $af
	ld b, a                                                  ; $2c1d : $47
	pop af                                                  ; $2c1e : $f1
	ld hl, $02cf                                                  ; $2c1f : $21, $cf, $02
	add hl, bc                                                  ; $2c22 : $09
	ld e, (hl)                                                  ; $2c23 : $5e
	inc hl                                                  ; $2c24 : $23
	ld d, (hl)                                                  ; $2c25 : $56
	push de                                                  ; $2c26 : $d5
	ld hl, $0361                                                  ; $2c27 : $21, $61, $03
	srl c                                                  ; $2c2a : $cb, $39
	add hl, bc                                                  ; $2c2c : $09
	ld e, (hl)                                                  ; $2c2d : $5e
	ld d, $00                                                  ; $2c2e : $16, $00
	ld hl, $0321                                                  ; $2c30 : $21, $21, $03
	ld c, a                                                  ; $2c33 : $4f
	add hl, bc                                                  ; $2c34 : $09
	ld b, (hl)                                                  ; $2c35 : $46
	push de                                                  ; $2c36 : $d5
	pop hl                                                  ; $2c37 : $e1

br_01_2c38:
	add hl, de                                                  ; $2c38 : $19
	djnz br_01_2c38                                                  ; $2c39 : $10, $fd
	push hl                                                  ; $2c3b : $e5
	pop bc                                                  ; $2c3c : $c1
	pop hl                                                  ; $2c3d : $e1

br_01_2c3e:
	call Call_01_3af8                                                  ; $2c3e : $cd, $f8, $3a
	ld a, ($403b)                                                  ; $2c41 : $3a, $3b, $40
	ld d, a                                                  ; $2c44 : $57
	call Call_01_3469                                                  ; $2c45 : $cd, $69, $34
	dec bc                                                  ; $2c48 : $0b
	ld a, c                                                  ; $2c49 : $79
	or b                                                  ; $2c4a : $b0
	jr nz, br_01_2c3e                                                  ; $2c4b : $20, $f1

br_01_2c4d:
	pop hl                                                  ; $2c4d : $e1
	ei                                                  ; $2c4e : $fb
	ld a, (hl)                                                  ; $2c4f : $7e
	inc hl                                                  ; $2c50 : $23
	cp $3b                                                  ; $2c51 : $fe, $3b
	jp z, Jump_01_2bf5                                                  ; $2c53 : $ca, $f5, $2b
	dec hl                                                  ; $2c56 : $2b
	ret                                                  ; $2c57 : $c9


br_01_2c58:
	pop af                                                  ; $2c58 : $f1
	ld c, a                                                  ; $2c59 : $4f
	xor a                                                  ; $2c5a : $af
	ld b, a                                                  ; $2c5b : $47
	ld hl, $0321                                                  ; $2c5c : $21, $21, $03
	add hl, bc                                                  ; $2c5f : $09
	ld b, (hl)                                                  ; $2c60 : $46
	ld hl, $1936                                                  ; $2c61 : $21, $36, $19
	push hl                                                  ; $2c64 : $e5
	pop de                                                  ; $2c65 : $d1

br_01_2c66:
	add hl, de                                                  ; $2c66 : $19
	djnz br_01_2c66                                                  ; $2c67 : $10, $fd

br_01_2c69:
	call Call_01_3af8                                                  ; $2c69 : $cd, $f8, $3a
	dec hl                                                  ; $2c6c : $2b
	ld a, l                                                  ; $2c6d : $7d
	or h                                                  ; $2c6e : $b4
	jr nz, br_01_2c69                                                  ; $2c6f : $20, $f8

	jr br_01_2c4d                                                  ; $2c71 : $18, $da

Jump_01_2c73:
	push bc                                                  ; $2c73 : $c5
	ld b, a                                                  ; $2c74 : $47
	ld a, $08                                                  ; $2c75 : $3e, $08
	call Call_01_3aba                                                  ; $2c77 : $cd, $ba, $3a
	ld a, b                                                  ; $2c7a : $78
	and $0f                                                  ; $2c7b : $e6, $0f
	push hl                                                  ; $2c7d : $e5
	sla a                                                  ; $2c7e : $cb, $27
	ld c, a                                                  ; $2c80 : $4f
	xor a                                                  ; $2c81 : $af
	ld b, a                                                  ; $2c82 : $47
	ld hl, $02af                                                  ; $2c83 : $21, $af, $02
	add hl, bc                                                  ; $2c86 : $09
	ld a, (hl)                                                  ; $2c87 : $7e
	ld b, a                                                  ; $2c88 : $47
	inc hl                                                  ; $2c89 : $23
	ld a, (hl)                                                  ; $2c8a : $7e
	ld c, a                                                  ; $2c8b : $4f
	ld a, b                                                  ; $2c8c : $78
	call Call_01_3aba                                                  ; $2c8d : $cd, $ba, $3a
	call Call_01_3aba                                                  ; $2c90 : $cd, $ba, $3a
	call Call_01_3aba                                                  ; $2c93 : $cd, $ba, $3a
	ld a, c                                                  ; $2c96 : $79
	call Call_01_3aba                                                  ; $2c97 : $cd, $ba, $3a
	call Call_01_3aba                                                  ; $2c9a : $cd, $ba, $3a
	call Call_01_3aba                                                  ; $2c9d : $cd, $ba, $3a
	pop hl                                                  ; $2ca0 : $e1
	pop bc                                                  ; $2ca1 : $c1
	ld a, $0f                                                  ; $2ca2 : $3e, $0f
	call Call_01_3aba                                                  ; $2ca4 : $cd, $ba, $3a
	ret                                                  ; $2ca7 : $c9


	adc a, b                                                  ; $2ca8 : $88
	sbc a, d                                                  ; $2ca9 : $9a
	call Call_01_0a7f                                                  ; $2caa : $cd, $7f, $0a
	ld a, (hl)                                                  ; $2cad : $7e
	jp Jump_01_27f8                                                  ; $2cae : $c3, $f8, $27


	call Call_01_2b02                                                  ; $2cb1 : $cd, $02, $2b
	push de                                                  ; $2cb4 : $d5
	rst $08                                                  ; $2cb5 : $cf
	inc l                                                  ; $2cb6 : $2c
	call Call_01_2b1c                                                  ; $2cb7 : $cd, $1c, $2b
	pop de                                                  ; $2cba : $d1
	ld (de), a                                                  ; $2cbb : $12
	ret                                                  ; $2cbc : $c9


Jump_01_2cbd:
	call Call_01_2338                                                  ; $2cbd : $cd, $38, $23
	call Call_01_0af4                                                  ; $2cc0 : $cd, $f4, $0a
	rst $08                                                  ; $2cc3 : $cf
	dec sp                                                  ; $2cc4 : $3b
	ex de, hl                                                  ; $2cc5 : $eb
	ld hl, ($4121)                                                  ; $2cc6 : $2a, $21, $41
	jr br_01_2cd3                                                  ; $2cc9 : $18, $08

Jump_01_2ccb:
	ld a, ($40de)                                                  ; $2ccb : $3a, $de, $40
	or a                                                  ; $2cce : $b7
	jr z, br_01_2cdd                                                  ; $2ccf : $28, $0c

	pop de                                                  ; $2cd1 : $d1
	ex de, hl                                                  ; $2cd2 : $eb

br_01_2cd3:
	push hl                                                  ; $2cd3 : $e5
	xor a                                                  ; $2cd4 : $af
	ld ($40de), a                                                  ; $2cd5 : $32, $de, $40
	cp d                                                  ; $2cd8 : $ba
	push af                                                  ; $2cd9 : $f5
	push de                                                  ; $2cda : $d5
	ld b, (hl)                                                  ; $2cdb : $46
	or b                                                  ; $2cdc : $b0

br_01_2cdd:
	jp z, Jump_01_1e4a                                                  ; $2cdd : $ca, $4a, $1e
	inc hl                                                  ; $2ce0 : $23
	ld c, (hl)                                                  ; $2ce1 : $4e
	inc hl                                                  ; $2ce2 : $23
	ld h, (hl)                                                  ; $2ce3 : $66
	ld l, c                                                  ; $2ce4 : $69
	jr br_01_2d03                                                  ; $2ce5 : $18, $1c

br_01_2ce7:
	ld e, b                                                  ; $2ce7 : $58
	push hl                                                  ; $2ce8 : $e5
	ld c, $02                                                  ; $2ce9 : $0e, $02

br_01_2ceb:
	ld a, (hl)                                                  ; $2ceb : $7e
	inc hl                                                  ; $2cec : $23
	cp $25                                                  ; $2ced : $fe, $25
	jp z, $2e17                                                  ; $2cef : $ca, $17, $2e
	cp $20                                                  ; $2cf2 : $fe, $20
	jr nz, br_01_2cf9                                                  ; $2cf4 : $20, $03

	inc c                                                  ; $2cf6 : $0c
	djnz br_01_2ceb                                                  ; $2cf7 : $10, $f2

br_01_2cf9:
	pop hl                                                  ; $2cf9 : $e1
	ld b, e                                                  ; $2cfa : $43
	ld a, $25                                                  ; $2cfb : $3e, $25

br_01_2cfd:
	call Call_01_2e49                                                  ; $2cfd : $cd, $49, $2e
	call Call_01_032a                                                  ; $2d00 : $cd, $2a, $03

Jump_01_2d03:
br_01_2d03:
	xor a                                                  ; $2d03 : $af
	ld e, a                                                  ; $2d04 : $5f
	ld d, a                                                  ; $2d05 : $57

br_01_2d06:
	call Call_01_2e49                                                  ; $2d06 : $cd, $49, $2e
	ld d, a                                                  ; $2d09 : $57
	ld a, (hl)                                                  ; $2d0a : $7e
	inc hl                                                  ; $2d0b : $23
	cp $21                                                  ; $2d0c : $fe, $21
	jp z, Jump_01_2e14                                                  ; $2d0e : $ca, $14, $2e
	cp $23                                                  ; $2d11 : $fe, $23
	jr z, br_01_2d4c                                                  ; $2d13 : $28, $37

	dec b                                                  ; $2d15 : $05
	jp z, Jump_01_2dfe                                                  ; $2d16 : $ca, $fe, $2d
	cp $2b                                                  ; $2d19 : $fe, $2b
	ld a, $08                                                  ; $2d1b : $3e, $08
	jr z, br_01_2d06                                                  ; $2d1d : $28, $e7

	dec hl                                                  ; $2d1f : $2b
	ld a, (hl)                                                  ; $2d20 : $7e
	inc hl                                                  ; $2d21 : $23
	cp $2e                                                  ; $2d22 : $fe, $2e
	jr z, br_01_2d66                                                  ; $2d24 : $28, $40

	cp $25                                                  ; $2d26 : $fe, $25
	jr z, br_01_2ce7                                                  ; $2d28 : $28, $bd

	cp (hl)                                                  ; $2d2a : $be
	jr nz, br_01_2cfd                                                  ; $2d2b : $20, $d0

	cp $24                                                  ; $2d2d : $fe, $24
	jr z, $14                                                  ; $2d2f : $28, $14

	cp $2a                                                  ; $2d31 : $fe, $2a
	jr nz, br_01_2cfd                                                  ; $2d33 : $20, $c8

	ld a, b                                                  ; $2d35 : $78
	cp $02                                                  ; $2d36 : $fe, $02
	inc hl                                                  ; $2d38 : $23
	jr c, br_01_2d3e                                                  ; $2d39 : $38, $03

	ld a, (hl)                                                  ; $2d3b : $7e
	cp $24                                                  ; $2d3c : $fe, $24

br_01_2d3e:
	ld a, $20                                                  ; $2d3e : $3e, $20
	jr nz, br_01_2d49                                                  ; $2d40 : $20, $07

	dec b                                                  ; $2d42 : $05
	inc e                                                  ; $2d43 : $1c
	cp $af                                                  ; $2d44 : $fe, $af
	add a, $10                                                  ; $2d46 : $c6, $10
	inc hl                                                  ; $2d48 : $23

br_01_2d49:
	inc e                                                  ; $2d49 : $1c
	add a, d                                                  ; $2d4a : $82
	ld d, a                                                  ; $2d4b : $57

br_01_2d4c:
	inc e                                                  ; $2d4c : $1c
	ld c, $00                                                  ; $2d4d : $0e, $00
	dec b                                                  ; $2d4f : $05
	jr z, br_01_2d99                                                  ; $2d50 : $28, $47

	ld a, (hl)                                                  ; $2d52 : $7e
	inc hl                                                  ; $2d53 : $23
	cp $2e                                                  ; $2d54 : $fe, $2e
	jr z, br_01_2d70                                                  ; $2d56 : $28, $18

	cp $23                                                  ; $2d58 : $fe, $23
	jr z, br_01_2d4c                                                  ; $2d5a : $28, $f0

	cp $2c                                                  ; $2d5c : $fe, $2c
	jr nz, br_01_2d7a                                                  ; $2d5e : $20, $1a

	ld a, d                                                  ; $2d60 : $7a
	or $40                                                  ; $2d61 : $f6, $40
	ld d, a                                                  ; $2d63 : $57
	jr br_01_2d4c                                                  ; $2d64 : $18, $e6

br_01_2d66:
	ld a, (hl)                                                  ; $2d66 : $7e
	cp $23                                                  ; $2d67 : $fe, $23
	ld a, $2e                                                  ; $2d69 : $3e, $2e
	jr nz, br_01_2cfd                                                  ; $2d6b : $20, $90

	ld c, $01                                                  ; $2d6d : $0e, $01
	inc hl                                                  ; $2d6f : $23

br_01_2d70:
	inc c                                                  ; $2d70 : $0c
	dec b                                                  ; $2d71 : $05
	jr z, br_01_2d99                                                  ; $2d72 : $28, $25

	ld a, (hl)                                                  ; $2d74 : $7e
	inc hl                                                  ; $2d75 : $23
	cp $23                                                  ; $2d76 : $fe, $23
	jr z, br_01_2d70                                                  ; $2d78 : $28, $f6

br_01_2d7a:
	push de                                                  ; $2d7a : $d5
	ld de, $2d97                                                  ; $2d7b : $11, $97, $2d
	push de                                                  ; $2d7e : $d5
	ld d, h                                                  ; $2d7f : $54
	ld e, l                                                  ; $2d80 : $5d
	cp $5b                                                  ; $2d81 : $fe, $5b
	ret nz                                                  ; $2d83 : $c0

	cp (hl)                                                  ; $2d84 : $be
	ret nz                                                  ; $2d85 : $c0

	inc hl                                                  ; $2d86 : $23
	cp (hl)                                                  ; $2d87 : $be
	ret nz                                                  ; $2d88 : $c0

	inc hl                                                  ; $2d89 : $23
	cp (hl)                                                  ; $2d8a : $be
	ret nz                                                  ; $2d8b : $c0

	inc hl                                                  ; $2d8c : $23
	ld a, b                                                  ; $2d8d : $78
	sub $04                                                  ; $2d8e : $d6, $04
	ret c                                                  ; $2d90 : $d8

	pop de                                                  ; $2d91 : $d1
	pop de                                                  ; $2d92 : $d1
	ld b, a                                                  ; $2d93 : $47
	inc d                                                  ; $2d94 : $14
	inc hl                                                  ; $2d95 : $23
	jp z, $d1eb                                                  ; $2d96 : $ca, $eb, $d1

br_01_2d99:
	ld a, d                                                  ; $2d99 : $7a
	dec hl                                                  ; $2d9a : $2b
	inc e                                                  ; $2d9b : $1c
	and $08                                                  ; $2d9c : $e6, $08
	jr nz, br_01_2db5                                                  ; $2d9e : $20, $15

	dec e                                                  ; $2da0 : $1d
	ld a, b                                                  ; $2da1 : $78
	or a                                                  ; $2da2 : $b7
	jr z, br_01_2db5                                                  ; $2da3 : $28, $10

	ld a, (hl)                                                  ; $2da5 : $7e
	sub $2d                                                  ; $2da6 : $d6, $2d
	jr z, br_01_2db0                                                  ; $2da8 : $28, $06

	cp $fe                                                  ; $2daa : $fe, $fe
	jr nz, br_01_2db5                                                  ; $2dac : $20, $07

	ld a, $08                                                  ; $2dae : $3e, $08

br_01_2db0:
	add a, $04                                                  ; $2db0 : $c6, $04
	add a, d                                                  ; $2db2 : $82
	ld d, a                                                  ; $2db3 : $57
	dec b                                                  ; $2db4 : $05

br_01_2db5:
	pop hl                                                  ; $2db5 : $e1
	pop af                                                  ; $2db6 : $f1
	jr z, br_01_2e09                                                  ; $2db7 : $28, $50

	push bc                                                  ; $2db9 : $c5
	push de                                                  ; $2dba : $d5
	call $2337                                                  ; $2dbb : $cd, $37, $23
	pop de                                                  ; $2dbe : $d1
	pop bc                                                  ; $2dbf : $c1
	push bc                                                  ; $2dc0 : $c5
	push hl                                                  ; $2dc1 : $e5
	ld b, e                                                  ; $2dc2 : $43
	ld a, b                                                  ; $2dc3 : $78
	add a, c                                                  ; $2dc4 : $81
	cp $19                                                  ; $2dc5 : $fe, $19
	jp nc, Jump_01_1e4a                                                  ; $2dc7 : $d2, $4a, $1e
	ld a, d                                                  ; $2dca : $7a
	or $80                                                  ; $2dcb : $f6, $80
	call Call_01_0fbe                                                  ; $2dcd : $cd, $be, $0f
	call Call_01_28a7                                                  ; $2dd0 : $cd, $a7, $28

Jump_01_2dd3:
	pop hl                                                  ; $2dd3 : $e1
	dec hl                                                  ; $2dd4 : $2b
	rst $10                                                  ; $2dd5 : $d7
	scf                                                  ; $2dd6 : $37
	jr z, br_01_2de6                                                  ; $2dd7 : $28, $0d

	ld ($40de), a                                                  ; $2dd9 : $32, $de, $40
	cp $3b                                                  ; $2ddc : $fe, $3b
	jr z, br_01_2de5                                                  ; $2dde : $28, $05

	cp $2c                                                  ; $2de0 : $fe, $2c
	jp nz, Jump_01_1997                                                  ; $2de2 : $c2, $97, $19

br_01_2de5:
	rst $10                                                  ; $2de5 : $d7

br_01_2de6:
	pop bc                                                  ; $2de6 : $c1
	ex de, hl                                                  ; $2de7 : $eb
	pop hl                                                  ; $2de8 : $e1
	push hl                                                  ; $2de9 : $e5
	push af                                                  ; $2dea : $f5
	push de                                                  ; $2deb : $d5
	ld a, (hl)                                                  ; $2dec : $7e
	sub b                                                  ; $2ded : $90
	inc hl                                                  ; $2dee : $23
	ld c, (hl)                                                  ; $2def : $4e
	inc hl                                                  ; $2df0 : $23
	ld h, (hl)                                                  ; $2df1 : $66
	ld l, c                                                  ; $2df2 : $69
	ld d, $00                                                  ; $2df3 : $16, $00
	ld e, a                                                  ; $2df5 : $5f
	add hl, de                                                  ; $2df6 : $19
	ld a, b                                                  ; $2df7 : $78
	or a                                                  ; $2df8 : $b7
	jp nz, Jump_01_2d03                                                  ; $2df9 : $c2, $03, $2d
	jr br_01_2e04                                                  ; $2dfc : $18, $06

Jump_01_2dfe:
	call Call_01_2e49                                                  ; $2dfe : $cd, $49, $2e
	call Call_01_032a                                                  ; $2e01 : $cd, $2a, $03

br_01_2e04:
	pop hl                                                  ; $2e04 : $e1
	pop af                                                  ; $2e05 : $f1
	jp nz, Jump_01_2ccb                                                  ; $2e06 : $c2, $cb, $2c

br_01_2e09:
	call c, Call_01_20fe                                                  ; $2e09 : $dc, $fe, $20
	ex (sp), hl                                                  ; $2e0c : $e3
	call Call_01_29dd                                                  ; $2e0d : $cd, $dd, $29
	pop hl                                                  ; $2e10 : $e1
	jp Jump_01_2169                                                  ; $2e11 : $c3, $69, $21


Jump_01_2e14:
	ld c, $01                                                  ; $2e14 : $0e, $01
	ld a, $f1                                                  ; $2e16 : $3e, $f1
	dec b                                                  ; $2e18 : $05
	call Call_01_2e49                                                  ; $2e19 : $cd, $49, $2e
	pop hl                                                  ; $2e1c : $e1
	pop af                                                  ; $2e1d : $f1
	jr z, br_01_2e09                                                  ; $2e1e : $28, $e9

	push bc                                                  ; $2e20 : $c5
	call $2337                                                  ; $2e21 : $cd, $37, $23
	call Call_01_0af4                                                  ; $2e24 : $cd, $f4, $0a
	pop bc                                                  ; $2e27 : $c1
	push bc                                                  ; $2e28 : $c5
	push hl                                                  ; $2e29 : $e5
	ld hl, ($4121)                                                  ; $2e2a : $2a, $21, $41
	ld b, c                                                  ; $2e2d : $41
	ld c, $00                                                  ; $2e2e : $0e, $00
	push bc                                                  ; $2e30 : $c5
	call $2a68                                                  ; $2e31 : $cd, $68, $2a
	call Call_01_28aa                                                  ; $2e34 : $cd, $aa, $28
	ld hl, ($4121)                                                  ; $2e37 : $2a, $21, $41
	pop af                                                  ; $2e3a : $f1
	sub (hl)                                                  ; $2e3b : $96
	ld b, a                                                  ; $2e3c : $47
	ld a, $20                                                  ; $2e3d : $3e, $20
	inc b                                                  ; $2e3f : $04

br_01_2e40:
	dec b                                                  ; $2e40 : $05
	jp z, Jump_01_2dd3                                                  ; $2e41 : $ca, $d3, $2d
	call Call_01_032a                                                  ; $2e44 : $cd, $2a, $03
	jr br_01_2e40                                                  ; $2e47 : $18, $f7

Call_01_2e49:
	push af                                                  ; $2e49 : $f5
	ld a, d                                                  ; $2e4a : $7a
	or a                                                  ; $2e4b : $b7
	ld a, $2b                                                  ; $2e4c : $3e, $2b
	call nz, Call_01_032a                                                  ; $2e4e : $c4, $2a, $03
	pop af                                                  ; $2e51 : $f1
	ret                                                  ; $2e52 : $c9


Call_01_2e53:
	ld h, b                                                  ; $2e53 : $60
	ld l, c                                                  ; $2e54 : $69
	inc hl                                                  ; $2e55 : $23
	inc hl                                                  ; $2e56 : $23
	inc hl                                                  ; $2e57 : $23
	inc hl                                                  ; $2e58 : $23
	call Call_01_2b7e                                                  ; $2e59 : $cd, $7e, $2b
	ld hl, ($40a7)                                                  ; $2e5c : $2a, $a7, $40
	call Call_01_2b75                                                  ; $2e5f : $cd, $75, $2b
	ret                                                  ; $2e62 : $c9


	rst $08                                                  ; $2e63 : $cf
	jr z, -$33                                                  ; $2e64 : $28, $cd

	inc e                                                  ; $2e66 : $1c
	dec hl                                                  ; $2e67 : $2b
	or a                                                  ; $2e68 : $b7
	jr z, br_01_2e7d                                                  ; $2e69 : $28, $12

	dec a                                                  ; $2e6b : $3d
	jr z, br_01_2e71                                                  ; $2e6c : $28, $03

	jp Jump_01_1e4a                                                  ; $2e6e : $c3, $4a, $1e


br_01_2e71:
	ld d, $00                                                  ; $2e71 : $16, $00
	ld a, ($403b)                                                  ; $2e73 : $3a, $3b, $40
	or $08                                                  ; $2e76 : $f6, $08
	ld ($403b), a                                                  ; $2e78 : $32, $3b, $40
	jr br_01_2e87                                                  ; $2e7b : $18, $0a

br_01_2e7d:
	ld d, $20                                                  ; $2e7d : $16, $20
	ld a, ($403b)                                                  ; $2e7f : $3a, $3b, $40
	and $f7                                                  ; $2e82 : $e6, $f7
	ld ($403b), a                                                  ; $2e84 : $32, $3b, $40

br_01_2e87:
	nop                                                  ; $2e87 : $00
	nop                                                  ; $2e88 : $00
	nop                                                  ; $2e89 : $00
	push hl                                                  ; $2e8a : $e5
	ld hl, $7000                                                  ; $2e8b : $21, $00, $70
	ld bc, $0800                                                  ; $2e8e : $01, $00, $08

br_01_2e91:
	ld a, d                                                  ; $2e91 : $7a
	nop                                                  ; $2e92 : $00
	inc hl                                                  ; $2e93 : $23
	dec bc                                                  ; $2e94 : $0b
	ld a, b                                                  ; $2e95 : $78
	or c                                                  ; $2e96 : $b1
	jr nz, br_01_2e91                                                  ; $2e97 : $20, $f8

	pop hl                                                  ; $2e99 : $e1
	rst $08                                                  ; $2e9a : $cf
	add hl, hl                                                  ; $2e9b : $29
	ret                                                  ; $2e9c : $c9


Jump_01_2e9d:
	cp $22                                                  ; $2e9d : $fe, $22
	jp z, Jump_01_2eb3                                                  ; $2e9f : $ca, $b3, $2e
	or a                                                  ; $2ea2 : $b7
	jp p, Jump_01_2b89                                                  ; $2ea3 : $f2, $89, $2b
	jp Jump_01_2b94                                                  ; $2ea6 : $c3, $94, $2b


br_01_2ea9:
	ld a, (hl)                                                  ; $2ea9 : $7e
	or a                                                  ; $2eaa : $b7
	inc hl                                                  ; $2eab : $23
	ld (bc), a                                                  ; $2eac : $02
	ret z                                                  ; $2ead : $c8

	cp $22                                                  ; $2eae : $fe, $22
	jp z, Jump_01_2b89                                                  ; $2eb0 : $ca, $89, $2b

Jump_01_2eb3:
	inc bc                                                  ; $2eb3 : $03
	dec d                                                  ; $2eb4 : $15
	ret z                                                  ; $2eb5 : $c8

	jr br_01_2ea9                                                  ; $2eb6 : $18, $f1

Jump_01_2eb8:
	push af                                                  ; $2eb8 : $f5
	push bc                                                  ; $2eb9 : $c5
	push de                                                  ; $2eba : $d5
	push hl                                                  ; $2ebb : $e5
	call $407d                                                  ; $2ebc : $cd, $7d, $40
	call Call_01_30e8                                                  ; $2ebf : $cd, $e8, $30
	call Call_01_2edc                                                  ; $2ec2 : $cd, $dc, $2e
	call Call_01_2efd                                                  ; $2ec5 : $cd, $fd, $2e
	push af                                                  ; $2ec8 : $f5
	ld hl, $4039                                                  ; $2ec9 : $21, $39, $40
	bit 0, (hl)                                                  ; $2ecc : $cb, $46
	call z, Call_01_301b                                                  ; $2ece : $cc, $1b, $30
	pop af                                                  ; $2ed1 : $f1
	call Call_01_3430                                                  ; $2ed2 : $cd, $30, $34
	pop hl                                                  ; $2ed5 : $e1
	pop de                                                  ; $2ed6 : $d1
	pop bc                                                  ; $2ed7 : $c1
	pop af                                                  ; $2ed8 : $f1
	ei                                                  ; $2ed9 : $fb
	reti                                                  ; $2eda : $ed, $4d

Call_01_2edc:
	ld a, ($4039)                                                  ; $2edc : $3a, $39, $40
	bit 0, a                                                  ; $2edf : $cb, $47
	ret nz                                                  ; $2ee1 : $c0

	ld hl, $4041                                                  ; $2ee2 : $21, $41, $40
	dec (hl)                                                  ; $2ee5 : $35
	ret nz                                                  ; $2ee6 : $c0

	ld a, $10                                                  ; $2ee7 : $3e, $10
	ld ($4041), a                                                  ; $2ee9 : $32, $41, $40
	ld hl, ($4020)                                                  ; $2eec : $2a, $20, $40
	ld a, $40                                                  ; $2eef : $3e, $40
	nop                                                  ; $2ef1 : $00
	nop                                                  ; $2ef2 : $00
	ret                                                  ; $2ef3 : $c9


	call Call_01_2efd                                                  ; $2ef4 : $cd, $fd, $2e
	push af                                                  ; $2ef7 : $f5
	call Call_01_2f0e                                                  ; $2ef8 : $cd, $0e, $2f
	pop af                                                  ; $2efb : $f1
	ret                                                  ; $2efc : $c9


Call_01_2efd:
Jump_01_2efd:
	ld bc, $0100                                                  ; $2efd : $01, $00, $01
	in a, (c)                                                  ; $2f00 : $ed, $78
	cp $ff                                                  ; $2f02 : $fe, $ff
	jp z, Jump_01_2f0e                                                  ; $2f04 : $ca, $0e, $2f
	call Call_01_2f28                                                  ; $2f07 : $cd, $28, $2f
	or a                                                  ; $2f0a : $b7
	jp nz, Jump_01_05d7                                                  ; $2f0b : $c2, $d7, $05

Call_01_2f0e:
Jump_01_2f0e:
	ld hl, $4038                                                  ; $2f0e : $21, $38, $40
	bit 2, (hl)                                                  ; $2f11 : $cb, $56
	jr z, br_01_2f1d                                                  ; $2f13 : $28, $08

	ld a, ($403a)                                                  ; $2f15 : $3a, $3a, $40
	or a                                                  ; $2f18 : $b7
	jr z, br_01_2f1d                                                  ; $2f19 : $28, $02

	res 2, (hl)                                                  ; $2f1b : $cb, $96

br_01_2f1d:
	ld a, (hl)                                                  ; $2f1d : $7e
	and $06                                                  ; $2f1e : $e6, $06
	ld ($4038), a                                                  ; $2f20 : $32, $38, $40
	xor a                                                  ; $2f23 : $af
	ld ($4036), a                                                  ; $2f24 : $32, $36, $40
	ret                                                  ; $2f27 : $c9


Call_01_2f28:
	ld hl, $01fe                                                  ; $2f28 : $21, $fe, $01
	ld c, $08                                                  ; $2f2b : $0e, $08

br_01_2f2d:
	ld b, $08                                                  ; $2f2d : $06, $08
	call Call_01_2fb1                                                  ; $2f2f : $cd, $b1, $2f

br_01_2f32:
	rra                                                  ; $2f32 : $1f
	jr nc, br_01_2f3f                                                  ; $2f33 : $30, $0a

Call_01_2f35:
br_01_2f35:
	djnz br_01_2f32                                                  ; $2f35 : $10, $fb
	rlc l                                                  ; $2f37 : $cb, $05
	dec c                                                  ; $2f39 : $0d
	jr nz, br_01_2f2d                                                  ; $2f3a : $20, $f1

	jp Jump_01_2f0e                                                  ; $2f3c : $c3, $0e, $2f


br_01_2f3f:
	push af                                                  ; $2f3f : $f5
	ld a, b                                                  ; $2f40 : $78
	cp $02                                                  ; $2f41 : $fe, $02
	jr nz, br_01_2f4d                                                  ; $2f43 : $20, $08

	ld a, l                                                  ; $2f45 : $7d
	cp $fb                                                  ; $2f46 : $fe, $fb
	jr nz, br_01_2f4d                                                  ; $2f48 : $20, $03

	pop af                                                  ; $2f4a : $f1
	jr br_01_2f35                                                  ; $2f4b : $18, $e8

br_01_2f4d:
	pop af                                                  ; $2f4d : $f1
	ld e, a                                                  ; $2f4e : $5f
	ld a, $08                                                  ; $2f4f : $3e, $08
	sub b                                                  ; $2f51 : $90
	sla a                                                  ; $2f52 : $cb, $27
	sla a                                                  ; $2f54 : $cb, $27
	sla a                                                  ; $2f56 : $cb, $27
	add a, $08                                                  ; $2f58 : $c6, $08
	sub c                                                  ; $2f5a : $91
	ld ($4042), bc                                                  ; $2f5b : $ed, $43, $42, $40
	ld ($4044), hl                                                  ; $2f5f : $22, $44, $40
	ld hl, $01d9                                                  ; $2f62 : $21, $d9, $01
	ld c, a                                                  ; $2f65 : $4f
	ld b, $00                                                  ; $2f66 : $06, $00
	call Call_01_2fb8                                                  ; $2f68 : $cd, $b8, $2f
	jr nz, br_01_2f75                                                  ; $2f6b : $20, $08

	ld hl, $4038                                                  ; $2f6d : $21, $38, $40
	set 0, (hl)                                                  ; $2f70 : $cb, $c6
	ld hl, $0219                                                  ; $2f72 : $21, $19, $02

br_01_2f75:
	push hl                                                  ; $2f75 : $e5
	ld hl, $423a                                                  ; $2f76 : $21, $3a, $42
	ld (hl), $00                                                  ; $2f79 : $36, $00
	inc l                                                  ; $2f7b : $2c
	ld (hl), $00                                                  ; $2f7c : $36, $00
	pop hl                                                  ; $2f7e : $e1
	add hl, bc                                                  ; $2f7f : $09
	ld a, (hl)                                                  ; $2f80 : $7e
	ret                                                  ; $2f81 : $c9


	push hl                                                  ; $2f82 : $e5
	jp Jump_01_3e90                                                  ; $2f83 : $c3, $90, $3e


Jump_01_2f86:
	inc (hl)                                                  ; $2f86 : $34
	push af                                                  ; $2f87 : $f5
	inc hl                                                  ; $2f88 : $23
	pop af                                                  ; $2f89 : $f1
	jr nz, br_01_2f8d                                                  ; $2f8a : $20, $01

	inc (hl)                                                  ; $2f8c : $34

br_01_2f8d:
	ld a, (hl)                                                  ; $2f8d : $7e
	cp $ff                                                  ; $2f8e : $fe, $ff
	jr z, br_01_2fa9                                                  ; $2f90 : $28, $17

	cp $c0                                                  ; $2f92 : $fe, $c0
	jr z, br_01_2f9e                                                  ; $2f94 : $28, $08

	cp $e0                                                  ; $2f96 : $fe, $e0
	jr z, br_01_2f9e                                                  ; $2f98 : $28, $04

br_01_2f9a:
	pop hl                                                  ; $2f9a : $e1
	jp Jump_01_2f0e                                                  ; $2f9b : $c3, $0e, $2f


br_01_2f9e:
	push bc                                                  ; $2f9e : $c5
	ld b, $ff                                                  ; $2f9f : $06, $ff

br_01_2fa1:
	djnz br_01_2fa1                                                  ; $2fa1 : $10, $fe
	pop bc                                                  ; $2fa3 : $c1
	call Call_01_3450                                                  ; $2fa4 : $cd, $50, $34
	jr br_01_2f9a                                                  ; $2fa7 : $18, $f1

br_01_2fa9:
	ld a, $0c                                                  ; $2fa9 : $3e, $0c
	call Call_01_355f                                                  ; $2fab : $cd, $5f, $35
	halt                                                  ; $2fae : $76

br_01_2faf:
	jr br_01_2faf                                                  ; $2faf : $18, $fe

Call_01_2fb1:
	push bc                                                  ; $2fb1 : $c5
	push hl                                                  ; $2fb2 : $e5
	pop bc                                                  ; $2fb3 : $c1
	in a, (c)                                                  ; $2fb4 : $ed, $78
	pop bc                                                  ; $2fb6 : $c1
	ret                                                  ; $2fb7 : $c9


Call_01_2fb8:
	push bc                                                  ; $2fb8 : $c5
	ld bc, $01fb                                                  ; $2fb9 : $01, $fb, $01
	in a, (c)                                                  ; $2fbc : $ed, $78
	and $40                                                  ; $2fbe : $e6, $40
	pop bc                                                  ; $2fc0 : $c1
	ret                                                  ; $2fc1 : $c9


	ld a, ($c940)                                                  ; $2fc2 : $3a, $40, $c9
	res 2, (hl)                                                  ; $2fc5 : $cb, $96
	ld hl, $0239                                                  ; $2fc7 : $21, $39, $02

br_01_2fca:
	add hl, bc                                                  ; $2fca : $09
	ld a, (hl)                                                  ; $2fcb : $7e
	ret                                                  ; $2fcc : $c9


	ld a, ($4038)                                                  ; $2fcd : $3a, $38, $40
	and $81                                                  ; $2fd0 : $e6, $81
	jr z, br_01_2fca                                                  ; $2fd2 : $28, $f6

	xor a                                                  ; $2fd4 : $af
	pop hl                                                  ; $2fd5 : $e1
	ret                                                  ; $2fd6 : $c9


Jump_01_2fd7:
	ld hl, $4038                                                  ; $2fd7 : $21, $38, $40
	bit 5, (hl)                                                  ; $2fda : $cb, $6e
	jr z, br_01_3003                                                  ; $2fdc : $28, $25

	ld a, ($403a)                                                  ; $2fde : $3a, $3a, $40
	inc a                                                  ; $2fe1 : $3c
	ld ($403a), a                                                  ; $2fe2 : $32, $3a, $40
	cp $2a                                                  ; $2fe5 : $fe, $2a
	jr z, br_01_2feb                                                  ; $2fe7 : $28, $02

	xor a                                                  ; $2fe9 : $af
	ret                                                  ; $2fea : $c9


br_01_2feb:
	ld a, (hl)                                                  ; $2feb : $7e
	and $df                                                  ; $2fec : $e6, $df
	or $40                                                  ; $2fee : $f6, $40

Jump_01_2ff0:
	ld ($4038), a                                                  ; $2ff0 : $32, $38, $40

br_01_2ff3:
	xor a                                                  ; $2ff3 : $af
	ld ($403a), a                                                  ; $2ff4 : $32, $3a, $40
	bit 4, (hl)                                                  ; $2ff7 : $cb, $66
	jr nz, br_01_2fff                                                  ; $2ff9 : $20, $04

	xor a                                                  ; $2ffb : $af
	nop                                                  ; $2ffc : $00
	nop                                                  ; $2ffd : $00
	ret                                                  ; $2ffe : $c9


br_01_2fff:
	xor a                                                  ; $2fff : $af
	nop                                                  ; $3000 : $00
	nop                                                  ; $3001 : $00
	ret                                                  ; $3002 : $c9


br_01_3003:
	bit 6, (hl)                                                  ; $3003 : $cb, $76
	jr nz, br_01_300e                                                  ; $3005 : $20, $07

	set 5, (hl)                                                  ; $3007 : $cb, $ee
	xor a                                                  ; $3009 : $af
	ld ($403a), a                                                  ; $300a : $32, $3a, $40
	ret                                                  ; $300d : $c9


br_01_300e:
	ld a, ($403a)                                                  ; $300e : $3a, $3a, $40
	inc a                                                  ; $3011 : $3c
	ld ($403a), a                                                  ; $3012 : $32, $3a, $40
	cp $06                                                  ; $3015 : $fe, $06
	jr z, br_01_2ff3                                                  ; $3017 : $28, $da

	xor a                                                  ; $3019 : $af
	ret                                                  ; $301a : $c9


Call_01_301b:
	or a                                                  ; $301b : $b7
	ret z                                                  ; $301c : $c8

	push af                                                  ; $301d : $f5
	call Call_01_3039                                                  ; $301e : $cd, $39, $30
	pop af                                                  ; $3021 : $f1
	cp $0d                                                  ; $3022 : $fe, $0d
	ret z                                                  ; $3024 : $c8

	cp $01                                                  ; $3025 : $fe, $01
	ret z                                                  ; $3027 : $c8

	ld a, ($4039)                                                  ; $3028 : $3a, $39, $40
	bit 0, a                                                  ; $302b : $cb, $47
	ret nz                                                  ; $302d : $c0

	ld a, $20                                                  ; $302e : $3e, $20
	ld ($4041), a                                                  ; $3030 : $32, $41, $40
	ld hl, ($4020)                                                  ; $3033 : $2a, $20, $40
	nop                                                  ; $3036 : $00
	nop                                                  ; $3037 : $00
	ret                                                  ; $3038 : $c9


Call_01_3039:
	ld hl, $4038                                                  ; $3039 : $21, $38, $40
	bit 7, (hl)                                                  ; $303c : $cb, $7e
	jp z, Jump_01_3157                                                  ; $303e : $ca, $57, $31
	or a                                                  ; $3041 : $b7
	jp p, Jump_01_3157                                                  ; $3042 : $f2, $57, $31
	push af                                                  ; $3045 : $f5
	sub $80                                                  ; $3046 : $d6, $80
	inc a                                                  ; $3048 : $3c
	ld b, a                                                  ; $3049 : $47
	ld hl, $164f                                                  ; $304a : $21, $4f, $16

br_01_304d:
	inc hl                                                  ; $304d : $23
	bit 7, (hl)                                                  ; $304e : $cb, $7e
	jr z, br_01_304d                                                  ; $3050 : $28, $fb

	djnz br_01_304d                                                  ; $3052 : $10, $f9
	ld a, (hl)                                                  ; $3054 : $7e

br_01_3055:
	call Call_01_3082                                                  ; $3055 : $cd, $82, $30
	ld a, (hl)                                                  ; $3058 : $7e
	bit 7, a                                                  ; $3059 : $cb, $7f
	jr z, br_01_3055                                                  ; $305b : $28, $f8

	pop af                                                  ; $305d : $f1
	ld b, $16                                                  ; $305e : $06, $16
	ld hl, $0299                                                  ; $3060 : $21, $99, $02

br_01_3063:
	cp (hl)                                                  ; $3063 : $be
	jr z, br_01_307c                                                  ; $3064 : $28, $16

	inc hl                                                  ; $3066 : $23
	djnz br_01_3063                                                  ; $3067 : $10, $fa
	cp $b0                                                  ; $3069 : $fe, $b0
	ret nz                                                  ; $306b : $c0

	ld a, $20                                                  ; $306c : $3e, $20
	call Call_01_3082                                                  ; $306e : $cd, $82, $30
	ld a, $46                                                  ; $3071 : $3e, $46
	call Call_01_3082                                                  ; $3073 : $cd, $82, $30
	ld a, $4e                                                  ; $3076 : $3e, $4e
	call Call_01_3082                                                  ; $3078 : $cd, $82, $30
	ret                                                  ; $307b : $c9


br_01_307c:
	ld a, $28                                                  ; $307c : $3e, $28
	call Call_01_3082                                                  ; $307e : $cd, $82, $30
	ret                                                  ; $3081 : $c9


Call_01_3082:
	and $7f                                                  ; $3082 : $e6, $7f
	push hl                                                  ; $3084 : $e5
	call Call_01_3157                                                  ; $3085 : $cd, $57, $31
	pop hl                                                  ; $3088 : $e1
	inc hl                                                  ; $3089 : $23
	ret                                                  ; $308a : $c9


Call_01_308b:
	push af                                                  ; $308b : $f5
	ld a, ($403b)                                                  ; $308c : $3a, $3b, $40
	bit 3, a                                                  ; $308f : $cb, $5f
	jr z, br_01_30aa                                                  ; $3091 : $28, $17

	and $f7                                                  ; $3093 : $e6, $f7
	ld ($403b), a                                                  ; $3095 : $32, $3b, $40
	nop                                                  ; $3098 : $00
	nop                                                  ; $3099 : $00
	nop                                                  ; $309a : $00
	ld bc, $0200                                                  ; $309b : $01, $00, $02
	ld hl, $7000                                                  ; $309e : $21, $00, $70

br_01_30a1:
	ld a, $20                                                  ; $30a1 : $3e, $20
	nop                                                  ; $30a3 : $00
	inc hl                                                  ; $30a4 : $23
	dec bc                                                  ; $30a5 : $0b
	ld a, c                                                  ; $30a6 : $79
	or b                                                  ; $30a7 : $b0
	jr nz, br_01_30a1                                                  ; $30a8 : $20, $f7

br_01_30aa:
	pop af                                                  ; $30aa : $f1
	ld hl, $4039                                                  ; $30ab : $21, $39, $40
	bit 5, (hl)                                                  ; $30ae : $cb, $6e
	jp z, Jump_01_3106                                                  ; $30b0 : $ca, $06, $31
	cp $20                                                  ; $30b3 : $fe, $20
	jp nc, Jump_01_30c0                                                  ; $30b5 : $d2, $c0, $30
	push af                                                  ; $30b8 : $f5

br_01_30b9:
	ld a, ($42af)                                                  ; $30b9 : $3a, $af, $42
	or a                                                  ; $30bc : $b7
	jr nz, br_01_30b9                                                  ; $30bd : $20, $fa

	pop af                                                  ; $30bf : $f1

Jump_01_30c0:
	di                                                  ; $30c0 : $f3
	ld hl, ($42b0)                                                  ; $30c1 : $2a, $b0, $42
	ld (hl), a                                                  ; $30c4 : $77
	inc hl                                                  ; $30c5 : $23
	ld ($42b0), hl                                                  ; $30c6 : $22, $b0, $42
	ld hl, $42af                                                  ; $30c9 : $21, $af, $42
	inc (hl)                                                  ; $30cc : $34
	push af                                                  ; $30cd : $f5
	ld a, ($40a6)                                                  ; $30ce : $3a, $a6, $40
	add a, (hl)                                                  ; $30d1 : $86
	ld ($42ae), a                                                  ; $30d2 : $32, $ae, $42
	pop af                                                  ; $30d5 : $f1
	ei                                                  ; $30d6 : $fb
	cp $20                                                  ; $30d7 : $fe, $20
	jp c, Jump_01_30e3                                                  ; $30d9 : $da, $e3, $30
	ld a, $14                                                  ; $30dc : $3e, $14

Jump_01_30de:
	cp (hl)                                                  ; $30de : $be
	jp c, Jump_01_30de                                                  ; $30df : $da, $de, $30
	ret                                                  ; $30e2 : $c9


Jump_01_30e3:
	xor a                                                  ; $30e3 : $af

br_01_30e4:
	cp (hl)                                                  ; $30e4 : $be
	jr nz, br_01_30e4                                                  ; $30e5 : $20, $fd

	ret                                                  ; $30e7 : $c9


Call_01_30e8:
	ld a, ($42af)                                                  ; $30e8 : $3a, $af, $42
	or a                                                  ; $30eb : $b7
	ret z                                                  ; $30ec : $c8

	ld b, a                                                  ; $30ed : $47
	ld hl, $42b2                                                  ; $30ee : $21, $b2, $42
	push hl                                                  ; $30f1 : $e5

br_01_30f2:
	ld a, (hl)                                                  ; $30f2 : $7e
	inc hl                                                  ; $30f3 : $23
	push hl                                                  ; $30f4 : $e5
	push bc                                                  ; $30f5 : $c5
	call Call_01_3106                                                  ; $30f6 : $cd, $06, $31
	pop bc                                                  ; $30f9 : $c1
	pop hl                                                  ; $30fa : $e1
	djnz br_01_30f2                                                  ; $30fb : $10, $f5
	pop hl                                                  ; $30fd : $e1
	ld ($42b0), hl                                                  ; $30fe : $22, $b0, $42
	xor a                                                  ; $3101 : $af
	ld ($42af), a                                                  ; $3102 : $32, $af, $42
	ret                                                  ; $3105 : $c9


Call_01_3106:
Jump_01_3106:
	call Call_01_030d                                                  ; $3106 : $cd, $0d, $03
	or a                                                  ; $3109 : $b7
	jr z, br_01_3110                                                  ; $310a : $28, $04

	cp $0d                                                  ; $310c : $fe, $0d
	jr nz, br_01_315a                                                  ; $310e : $20, $4a

br_01_3110:
	jp Jump_01_35bf                                                  ; $3110 : $c3, $bf, $35


	ld b, b                                                  ; $3113 : $40
	ld a, ($40a6)                                                  ; $3114 : $3a, $a6, $40
	ld c, a                                                  ; $3117 : $4f
	xor a                                                  ; $3118 : $af
	ld b, a                                                  ; $3119 : $47
	ld ($40a6), a                                                  ; $311a : $32, $a6, $40
	sbc hl, bc                                                  ; $311d : $ed, $42
	ld bc, $0020                                                  ; $311f : $01, $20, $00
	add hl, bc                                                  ; $3122 : $09
	ld a, h                                                  ; $3123 : $7c
	cp $72                                                  ; $3124 : $fe, $72
	call p, Call_01_33f3                                                  ; $3126 : $f4, $f3, $33
	ld ($4020), hl                                                  ; $3129 : $22, $20, $40
	call Call_01_0053                                                  ; $312c : $cd, $53, $00

Jump_01_312f:
	pop af                                                  ; $312f : $f1
	or a                                                  ; $3130 : $b7
	ret z                                                  ; $3131 : $c8

	call Call_01_33a8                                                  ; $3132 : $cd, $a8, $33
	cp $80                                                  ; $3135 : $fe, $80
	ret z                                                  ; $3137 : $c8

	cp $81                                                  ; $3138 : $fe, $81
	jr nz, br_01_3141                                                  ; $313a : $20, $05

	dec a                                                  ; $313c : $3d
	ld (hl), a                                                  ; $313d : $77
	inc hl                                                  ; $313e : $23
	ld (hl), a                                                  ; $313f : $77
	ret                                                  ; $3140 : $c9


br_01_3141:
	ld a, $80                                                  ; $3141 : $3e, $80
	ld (hl), a                                                  ; $3143 : $77
	ret                                                  ; $3144 : $c9


	bit 6, a                                                  ; $3145 : $cb, $77
	jr z, br_01_314d                                                  ; $3147 : $28, $04

	and $7f                                                  ; $3149 : $e6, $7f
	jr br_01_3154                                                  ; $314b : $18, $07

br_01_314d:
	and $8f                                                  ; $314d : $e6, $8f
	ld b, a                                                  ; $314f : $47
	ld a, ($4046)                                                  ; $3150 : $3a, $46, $40
	or b                                                  ; $3153 : $b0

br_01_3154:
	ld b, a                                                  ; $3154 : $47
	jr br_01_31b6                                                  ; $3155 : $18, $5f

Call_01_3157:
Jump_01_3157:
	nop                                                  ; $3157 : $00
	nop                                                  ; $3158 : $00
	nop                                                  ; $3159 : $00

br_01_315a:
	or a                                                  ; $315a : $b7
	jp m, Jump_01_35f2                                                  ; $315b : $fa, $f2, $35
	cp $01                                                  ; $315e : $fe, $01
	jr nz, br_01_3166                                                  ; $3160 : $20, $04

	call Call_01_379d                                                  ; $3162 : $cd, $9d, $37
	ret                                                  ; $3165 : $c9


br_01_3166:
	cp $0d                                                  ; $3166 : $fe, $0d
	jr z, br_01_3170                                                  ; $3168 : $28, $06

	cp $20                                                  ; $316a : $fe, $20
	ret m                                                  ; $316c : $f8

	jp Jump_01_31a8                                                  ; $316d : $c3, $a8, $31


br_01_3170:
	push hl                                                  ; $3170 : $e5
	push de                                                  ; $3171 : $d5
	push bc                                                  ; $3172 : $c5
	call Call_01_37fe                                                  ; $3173 : $cd, $fe, $37
	ld b, $3c                                                  ; $3176 : $06, $3c
	ld hl, $429b                                                  ; $3178 : $21, $9b, $42

br_01_317b:
	ld a, (hl)                                                  ; $317b : $7e
	cp $20                                                  ; $317c : $fe, $20
	jr nz, br_01_3198                                                  ; $317e : $20, $18

	dec hl                                                  ; $3180 : $2b
	djnz br_01_317b                                                  ; $3181 : $10, $f8

br_01_3183:
	inc hl                                                  ; $3183 : $23
	ld (hl), $00                                                  ; $3184 : $36, $00
	ld hl, $4260                                                  ; $3186 : $21, $60, $42
	ld de, $41e8                                                  ; $3189 : $11, $e8, $41
	ld bc, $0040                                                  ; $318c : $01, $40, $00
	ldir                                                  ; $318f : $ed, $b0
	call Call_01_34e3                                                  ; $3191 : $cd, $e3, $34
	pop bc                                                  ; $3194 : $c1
	pop de                                                  ; $3195 : $d1
	pop hl                                                  ; $3196 : $e1
	ret                                                  ; $3197 : $c9


br_01_3198:
	cp $5d                                                  ; $3198 : $fe, $5d
	jr nz, br_01_3183                                                  ; $319a : $20, $e7

	inc hl                                                  ; $319c : $23
	jr br_01_3183                                                  ; $319d : $18, $e4

	ld ($1ffe), a                                                  ; $319f : $32, $fe, $1f
	jp z, Jump_01_3292                                                  ; $31a2 : $ca, $92, $32
	cp $20                                                  ; $31a5 : $fe, $20
	ret m                                                  ; $31a7 : $f8

Jump_01_31a8:
	jp Jump_01_3581                                                  ; $31a8 : $c3, $81, $35


	ld hl, $4038                                                  ; $31ab : $21, $38, $40
	bit 1, (hl)                                                  ; $31ae : $cb, $4e
	pop hl                                                  ; $31b0 : $e1
	jr z, br_01_31b5                                                  ; $31b1 : $28, $02

	or $40                                                  ; $31b3 : $f6, $40

Jump_01_31b5:
br_01_31b5:
	ld b, a                                                  ; $31b5 : $47

br_01_31b6:
	ld a, b                                                  ; $31b6 : $78
	nop                                                  ; $31b7 : $00
	nop                                                  ; $31b8 : $00
	nop                                                  ; $31b9 : $00
	nop                                                  ; $31ba : $00
	nop                                                  ; $31bb : $00
	nop                                                  ; $31bc : $00
	nop                                                  ; $31bd : $00
	ret                                                  ; $31be : $c9


	ld a, ($40a6)                                                  ; $31bf : $3a, $a6, $40
	inc a                                                  ; $31c2 : $3c
	cp $20                                                  ; $31c3 : $fe, $20
	jr nz, br_01_31f2                                                  ; $31c5 : $20, $2b

	call Call_01_33a8                                                  ; $31c7 : $cd, $a8, $33
	cp $81                                                  ; $31ca : $fe, $81
	jr z, br_01_31f1                                                  ; $31cc : $28, $23

	or a                                                  ; $31ce : $b7
	jr nz, br_01_3206                                                  ; $31cf : $20, $35

	ld b, a                                                  ; $31d1 : $47
	ld a, ($4039)                                                  ; $31d2 : $3a, $39, $40
	bit 0, a                                                  ; $31d5 : $cb, $47
	ld a, b                                                  ; $31d7 : $78
	ret z                                                  ; $31d8 : $c8

Jump_01_31d9:
	xor a                                                  ; $31d9 : $af
	inc hl                                                  ; $31da : $23
	ld (hl), a                                                  ; $31db : $77
	inc hl                                                  ; $31dc : $23
	push hl                                                  ; $31dd : $e5
	ld bc, ($40a4)                                                  ; $31de : $ed, $4b, $a4, $40
	dec bc                                                  ; $31e2 : $0b
	dec bc                                                  ; $31e3 : $0b
	or a                                                  ; $31e4 : $b7
	sbc hl, bc                                                  ; $31e5 : $ed, $42
	pop hl                                                  ; $31e7 : $e1
	jr nc, br_01_31f1                                                  ; $31e8 : $30, $07

	ld a, (hl)                                                  ; $31ea : $7e
	or a                                                  ; $31eb : $b7
	jr nz, br_01_31f1                                                  ; $31ec : $20, $03

	ld a, $80                                                  ; $31ee : $3e, $80
	ld (hl), a                                                  ; $31f0 : $77

br_01_31f1:
	xor a                                                  ; $31f1 : $af

br_01_31f2:
	ld ($40a6), a                                                  ; $31f2 : $32, $a6, $40
	ld hl, ($4020)                                                  ; $31f5 : $2a, $20, $40
	ld bc, $0001                                                  ; $31f8 : $01, $01, $00
	add hl, bc                                                  ; $31fb : $09
	ld a, h                                                  ; $31fc : $7c
	cp $72                                                  ; $31fd : $fe, $72
	call p, Call_01_33f3                                                  ; $31ff : $f4, $f3, $33
	ld ($4020), hl                                                  ; $3202 : $22, $20, $40
	ret                                                  ; $3205 : $c9


br_01_3206:
	push af                                                  ; $3206 : $f5
	ld de, ($4020)                                                  ; $3207 : $ed, $5b, $20, $40
	inc de                                                  ; $320b : $13
	ld a, d                                                  ; $320c : $7a
	cp $72                                                  ; $320d : $fe, $72
	jr z, br_01_3221                                                  ; $320f : $28, $10

	push hl                                                  ; $3211 : $e5
	ld hl, $4039                                                  ; $3212 : $21, $39, $40
	bit 0, (hl)                                                  ; $3215 : $cb, $46
	jr nz, br_01_3220                                                  ; $3217 : $20, $07

	bit 4, (hl)                                                  ; $3219 : $cb, $66
	jr nz, br_01_3220                                                  ; $321b : $20, $03

	call Call_01_332c                                                  ; $321d : $cd, $2c, $33

br_01_3220:
	pop hl                                                  ; $3220 : $e1

br_01_3221:
	pop af                                                  ; $3221 : $f1
	inc a                                                  ; $3222 : $3c
	ld (hl), a                                                  ; $3223 : $77
	jp Jump_01_31d9                                                  ; $3224 : $c3, $d9, $31


	call Call_01_2b02                                                  ; $3227 : $cd, $02, $2b
	ld bc, $3230                                                  ; $322a : $01, $30, $32
	push bc                                                  ; $322d : $c5
	push de                                                  ; $322e : $d5
	ret                                                  ; $322f : $c9


	ret                                                  ; $3230 : $c9


	or a                                                  ; $3231 : $b7
	ret nz                                                  ; $3232 : $c0

	ld a, $1f                                                  ; $3233 : $3e, $1f
	ld ($40a6), a                                                  ; $3235 : $32, $a6, $40
	ld bc, $0001                                                  ; $3238 : $01, $01, $00
	ld hl, ($4020)                                                  ; $323b : $2a, $20, $40
	xor a                                                  ; $323e : $af
	sbc hl, bc                                                  ; $323f : $ed, $42
	ld a, h                                                  ; $3241 : $7c
	cp $70                                                  ; $3242 : $fe, $70
	jp c, Jump_01_324e                                                  ; $3244 : $da, $4e, $32
	ld ($4020), hl                                                  ; $3247 : $22, $20, $40
	call Call_01_0053                                                  ; $324a : $cd, $53, $00
	ret                                                  ; $324d : $c9


Jump_01_324e:
	xor a                                                  ; $324e : $af
	ld ($40a6), a                                                  ; $324f : $32, $a6, $40
	ret                                                  ; $3252 : $c9


	ld hl, $4039                                                  ; $3253 : $21, $39, $40
	bit 4, (hl)                                                  ; $3256 : $cb, $66
	ret nz                                                  ; $3258 : $c0

	ld bc, $0020                                                  ; $3259 : $01, $20, $00
	ld hl, ($4020)                                                  ; $325c : $2a, $20, $40
	xor a                                                  ; $325f : $af
	sbc hl, bc                                                  ; $3260 : $ed, $42
	ld a, h                                                  ; $3262 : $7c
	cp $70                                                  ; $3263 : $fe, $70
	ret m                                                  ; $3265 : $f8

	ld ($4020), hl                                                  ; $3266 : $22, $20, $40
	call Call_01_0053                                                  ; $3269 : $cd, $53, $00
	ret                                                  ; $326c : $c9


	ld hl, $4039                                                  ; $326d : $21, $39, $40
	bit 4, (hl)                                                  ; $3270 : $cb, $66
	ret nz                                                  ; $3272 : $c0

	ld bc, $0020                                                  ; $3273 : $01, $20, $00
	ld hl, ($4020)                                                  ; $3276 : $2a, $20, $40
	add hl, bc                                                  ; $3279 : $09
	ld a, h                                                  ; $327a : $7c
	cp $72                                                  ; $327b : $fe, $72
	call p, Call_01_3424                                                  ; $327d : $f4, $24, $34
	ld ($4020), hl                                                  ; $3280 : $22, $20, $40
	call Call_01_0053                                                  ; $3283 : $cd, $53, $00
	ret                                                  ; $3286 : $c9


	ld hl, $7000                                                  ; $3287 : $21, $00, $70
	ld ($4020), hl                                                  ; $328a : $22, $20, $40
	xor a                                                  ; $328d : $af
	ld ($40a6), a                                                  ; $328e : $32, $a6, $40
	ret                                                  ; $3291 : $c9


Jump_01_3292:
	ld hl, $7000                                                  ; $3292 : $21, $00, $70
	ld ($4020), hl                                                  ; $3295 : $22, $20, $40
	ld bc, $0200                                                  ; $3298 : $01, $00, $02

br_01_329b:
	ld a, $20                                                  ; $329b : $3e, $20
	nop                                                  ; $329d : $00
	inc hl                                                  ; $329e : $23
	dec bc                                                  ; $329f : $0b
	ld a, c                                                  ; $32a0 : $79
	or b                                                  ; $32a1 : $b0
	jr nz, br_01_329b                                                  ; $32a2 : $20, $f7

	xor a                                                  ; $32a4 : $af
	ld ($40a6), a                                                  ; $32a5 : $32, $a6, $40
	ld b, $10                                                  ; $32a8 : $06, $10
	ld a, $80                                                  ; $32aa : $3e, $80
	ld hl, $42d7                                                  ; $32ac : $21, $d7, $42

br_01_32af:
	ld (hl), a                                                  ; $32af : $77
	inc hl                                                  ; $32b0 : $23
	djnz br_01_32af                                                  ; $32b1 : $10, $fc
	ret                                                  ; $32b3 : $c9


	ld hl, ($4020)                                                  ; $32b4 : $2a, $20, $40
	ld a, ($40a6)                                                  ; $32b7 : $3a, $a6, $40
	ld c, a                                                  ; $32ba : $4f
	xor a                                                  ; $32bb : $af
	ld b, a                                                  ; $32bc : $47
	ld ($40a6), a                                                  ; $32bd : $32, $a6, $40
	sbc hl, bc                                                  ; $32c0 : $ed, $42
	ld ($4020), hl                                                  ; $32c2 : $22, $20, $40
	ret                                                  ; $32c5 : $c9


	call Call_01_33a8                                                  ; $32c6 : $cd, $a8, $33
	cp $81                                                  ; $32c9 : $fe, $81
	jr z, br_01_32fe                                                  ; $32cb : $28, $31

	ld a, ($40a6)                                                  ; $32cd : $3a, $a6, $40
	cp $1f                                                  ; $32d0 : $fe, $1f
	jr z, br_01_32f9                                                  ; $32d2 : $28, $25

	ld c, a                                                  ; $32d4 : $4f
	xor a                                                  ; $32d5 : $af
	ld b, a                                                  ; $32d6 : $47
	ld hl, ($4020)                                                  ; $32d7 : $2a, $20, $40
	sbc hl, bc                                                  ; $32da : $ed, $42
	ld bc, $001f                                                  ; $32dc : $01, $1f, $00
	add hl, bc                                                  ; $32df : $09
	ld a, (hl)                                                  ; $32e0 : $7e
	cp $20                                                  ; $32e1 : $fe, $20
	jr nz, br_01_32f9                                                  ; $32e3 : $20, $14

	push hl                                                  ; $32e5 : $e5
	pop de                                                  ; $32e6 : $d1
	dec hl                                                  ; $32e7 : $2b
	ld a, ($40a6)                                                  ; $32e8 : $3a, $a6, $40
	ld c, a                                                  ; $32eb : $4f
	ld a, $1f                                                  ; $32ec : $3e, $1f

br_01_32ee:
	sub c                                                  ; $32ee : $91
	ld c, a                                                  ; $32ef : $4f
	lddr                                                  ; $32f0 : $ed, $b8
	ld a, $20                                                  ; $32f2 : $3e, $20
	ld ($403c), a                                                  ; $32f4 : $32, $3c, $40
	ld (de), a                                                  ; $32f7 : $12
	ret                                                  ; $32f8 : $c9


br_01_32f9:
	call Call_01_33a8                                                  ; $32f9 : $cd, $a8, $33
	or a                                                  ; $32fc : $b7
	ret z                                                  ; $32fd : $c8

br_01_32fe:
	cp $80                                                  ; $32fe : $fe, $80
	jr z, br_01_3320                                                  ; $3300 : $28, $1e

	ld a, ($40a6)                                                  ; $3302 : $3a, $a6, $40
	ld c, a                                                  ; $3305 : $4f
	xor a                                                  ; $3306 : $af
	ld b, a                                                  ; $3307 : $47
	ld hl, ($4020)                                                  ; $3308 : $2a, $20, $40
	sbc hl, bc                                                  ; $330b : $ed, $42
	ld bc, $003f                                                  ; $330d : $01, $3f, $00
	add hl, bc                                                  ; $3310 : $09
	ld a, (hl)                                                  ; $3311 : $7e
	cp $20                                                  ; $3312 : $fe, $20
	ret nz                                                  ; $3314 : $c0

	push hl                                                  ; $3315 : $e5
	pop de                                                  ; $3316 : $d1
	dec hl                                                  ; $3317 : $2b
	ld a, ($40a6)                                                  ; $3318 : $3a, $a6, $40
	ld c, a                                                  ; $331b : $4f
	ld a, $3f                                                  ; $331c : $3e, $3f
	jr br_01_32ee                                                  ; $331e : $18, $ce

br_01_3320:
	push hl                                                  ; $3320 : $e5
	call Call_01_332c                                                  ; $3321 : $cd, $2c, $33
	pop hl                                                  ; $3324 : $e1
	ld a, $81                                                  ; $3325 : $3e, $81
	ld (hl), a                                                  ; $3327 : $77
	inc hl                                                  ; $3328 : $23
	xor a                                                  ; $3329 : $af
	ld (hl), a                                                  ; $332a : $77
	ret                                                  ; $332b : $c9


Call_01_332c:
	ld hl, ($4020)                                                  ; $332c : $2a, $20, $40
	ld a, h                                                  ; $332f : $7c
	cp $71                                                  ; $3330 : $fe, $71
	jr nz, br_01_335f                                                  ; $3332 : $20, $2b

	ld a, l                                                  ; $3334 : $7d
	cp $e0                                                  ; $3335 : $fe, $e0
	jp c, Jump_01_335f                                                  ; $3337 : $da, $5f, $33
	ld a, ($40a6)                                                  ; $333a : $3a, $a6, $40
	push af                                                  ; $333d : $f5
	ld a, ($42d7)                                                  ; $333e : $3a, $d7, $42
	cp $81                                                  ; $3341 : $fe, $81
	jr nz, br_01_334d                                                  ; $3343 : $20, $08

	push hl                                                  ; $3345 : $e5
	call Call_01_33f3                                                  ; $3346 : $cd, $f3, $33
	pop hl                                                  ; $3349 : $e1
	call Call_01_0317                                                  ; $334a : $cd, $17, $03

br_01_334d:
	push hl                                                  ; $334d : $e5
	call Call_01_33f3                                                  ; $334e : $cd, $f3, $33
	pop hl                                                  ; $3351 : $e1
	call Call_01_0317                                                  ; $3352 : $cd, $17, $03
	pop af                                                  ; $3355 : $f1
	ld ($40a6), a                                                  ; $3356 : $32, $a6, $40
	pop de                                                  ; $3359 : $d1
	pop hl                                                  ; $335a : $e1
	dec hl                                                  ; $335b : $2b
	push hl                                                  ; $335c : $e5
	push de                                                  ; $335d : $d5
	ret                                                  ; $335e : $c9


Jump_01_335f:
br_01_335f:
	ld a, ($40a6)                                                  ; $335f : $3a, $a6, $40
	ld c, a                                                  ; $3362 : $4f
	xor a                                                  ; $3363 : $af
	ld b, a                                                  ; $3364 : $47
	sbc hl, bc                                                  ; $3365 : $ed, $42
	ld bc, $0040                                                  ; $3367 : $01, $40, $00
	add hl, bc                                                  ; $336a : $09
	push hl                                                  ; $336b : $e5
	ex de, hl                                                  ; $336c : $eb
	ld hl, $7200                                                  ; $336d : $21, $00, $72
	sbc hl, de                                                  ; $3370 : $ed, $52
	push hl                                                  ; $3372 : $e5
	pop bc                                                  ; $3373 : $c1
	ld hl, $71df                                                  ; $3374 : $21, $df, $71
	ld de, $71ff                                                  ; $3377 : $11, $ff, $71
	ld a, c                                                  ; $337a : $79
	or b                                                  ; $337b : $b0
	jr z, br_01_3380                                                  ; $337c : $28, $02

	lddr                                                  ; $337e : $ed, $b8

br_01_3380:
	pop hl                                                  ; $3380 : $e1
	ld b, $20                                                  ; $3381 : $06, $20
	ld a, $20                                                  ; $3383 : $3e, $20

br_01_3385:
	ld (de), a                                                  ; $3385 : $12
	dec de                                                  ; $3386 : $1b
	djnz br_01_3385                                                  ; $3387 : $10, $fc
	call Call_01_33a8                                                  ; $3389 : $cd, $a8, $33
	push hl                                                  ; $338c : $e5
	pop bc                                                  ; $338d : $c1
	ld hl, $42e6                                                  ; $338e : $21, $e6, $42
	push hl                                                  ; $3391 : $e5
	or a                                                  ; $3392 : $b7
	sbc hl, bc                                                  ; $3393 : $ed, $42
	push hl                                                  ; $3395 : $e5
	pop bc                                                  ; $3396 : $c1
	pop hl                                                  ; $3397 : $e1
	push hl                                                  ; $3398 : $e5
	pop de                                                  ; $3399 : $d1
	dec hl                                                  ; $339a : $2b
	lddr                                                  ; $339b : $ed, $b8
	ld a, ($42e6)                                                  ; $339d : $3a, $e6, $42
	cp $81                                                  ; $33a0 : $fe, $81
	ret nz                                                  ; $33a2 : $c0

	ld hl, ($4020)                                                  ; $33a3 : $2a, $20, $40
	jr br_01_335f                                                  ; $33a6 : $18, $b7

Call_01_33a8:
	ld a, ($40a6)                                                  ; $33a8 : $3a, $a6, $40
	ld c, a                                                  ; $33ab : $4f
	xor a                                                  ; $33ac : $af
	ld b, a                                                  ; $33ad : $47
	ld hl, ($4020)                                                  ; $33ae : $2a, $20, $40
	sbc hl, bc                                                  ; $33b1 : $ed, $42
	push hl                                                  ; $33b3 : $e5
	pop bc                                                  ; $33b4 : $c1
	ld a, b                                                  ; $33b5 : $78
	and $0f                                                  ; $33b6 : $e6, $0f
	srl a                                                  ; $33b8 : $cb, $3f
	ld b, a                                                  ; $33ba : $47
	rr c                                                  ; $33bb : $cb, $19
	srl c                                                  ; $33bd : $cb, $39
	srl c                                                  ; $33bf : $cb, $39
	srl c                                                  ; $33c1 : $cb, $39
	srl c                                                  ; $33c3 : $cb, $39
	ld hl, $42d7                                                  ; $33c5 : $21, $d7, $42
	add hl, bc                                                  ; $33c8 : $09
	ld a, (hl)                                                  ; $33c9 : $7e
	ret                                                  ; $33ca : $c9


	call Call_01_33a8                                                  ; $33cb : $cd, $a8, $33
	cp $81                                                  ; $33ce : $fe, $81
	ld hl, ($4020)                                                  ; $33d0 : $2a, $20, $40
	push hl                                                  ; $33d3 : $e5
	pop de                                                  ; $33d4 : $d1
	inc hl                                                  ; $33d5 : $23
	ld a, ($40a6)                                                  ; $33d6 : $3a, $a6, $40
	ld c, a                                                  ; $33d9 : $4f
	jr z, br_01_33ef                                                  ; $33da : $28, $13

	cp $1f                                                  ; $33dc : $fe, $1f
	jr z, br_01_33e8                                                  ; $33de : $28, $08

	ld a, $1f                                                  ; $33e0 : $3e, $1f

br_01_33e2:
	sub c                                                  ; $33e2 : $91
	ld c, a                                                  ; $33e3 : $4f
	xor a                                                  ; $33e4 : $af
	ld b, a                                                  ; $33e5 : $47
	ldir                                                  ; $33e6 : $ed, $b0

br_01_33e8:
	ld a, $20                                                  ; $33e8 : $3e, $20
	ld (de), a                                                  ; $33ea : $12
	call Call_01_0050                                                  ; $33eb : $cd, $50, $00
	ret                                                  ; $33ee : $c9


br_01_33ef:
	ld a, $3f                                                  ; $33ef : $3e, $3f
	jr br_01_33e2                                                  ; $33f1 : $18, $ef

Call_01_33f3:
	ld de, $7000                                                  ; $33f3 : $11, $00, $70
	ld hl, $7020                                                  ; $33f6 : $21, $20, $70
	ld bc, $01e0                                                  ; $33f9 : $01, $e0, $01
	ldir                                                  ; $33fc : $ed, $b0
	ld b, $20                                                  ; $33fe : $06, $20
	ld a, $20                                                  ; $3400 : $3e, $20

br_01_3402:
	ld (de), a                                                  ; $3402 : $12
	inc de                                                  ; $3403 : $13
	djnz br_01_3402                                                  ; $3404 : $10, $fc
	ld hl, $42d7                                                  ; $3406 : $21, $d7, $42
	push hl                                                  ; $3409 : $e5
	pop de                                                  ; $340a : $d1
	inc hl                                                  ; $340b : $23
	ld bc, $000f                                                  ; $340c : $01, $0f, $00
	ldir                                                  ; $340f : $ed, $b0
	ld a, (de)                                                  ; $3411 : $1a
	cp $81                                                  ; $3412 : $fe, $81
	jr nz, br_01_3419                                                  ; $3414 : $20, $03

	xor a                                                  ; $3416 : $af
	jr br_01_341b                                                  ; $3417 : $18, $02

br_01_3419:
	ld a, $80                                                  ; $3419 : $3e, $80

br_01_341b:
	ld (de), a                                                  ; $341b : $12
	xor a                                                  ; $341c : $af
	ld ($40a6), a                                                  ; $341d : $32, $a6, $40
	ld hl, $71e0                                                  ; $3420 : $21, $e0, $71
	ret                                                  ; $3423 : $c9


Call_01_3424:
	ld a, ($42d7)                                                  ; $3424 : $3a, $d7, $42
	cp $81                                                  ; $3427 : $fe, $81
	call z, Call_01_33f3                                                  ; $3429 : $cc, $f3, $33
	call Call_01_33f3                                                  ; $342c : $cd, $f3, $33
	ret                                                  ; $342f : $c9


Call_01_3430:
	ld hl, $4039                                                  ; $3430 : $21, $39, $40
	or a                                                  ; $3433 : $b7
	jr nz, br_01_3441                                                  ; $3434 : $20, $0b

	set 1, (hl)                                                  ; $3436 : $cb, $ce
	ld bc, $01ff                                                  ; $3438 : $01, $ff, $01

br_01_343b:
	dec bc                                                  ; $343b : $0b
	ld a, c                                                  ; $343c : $79
	or b                                                  ; $343d : $b0
	jr nz, br_01_343b                                                  ; $343e : $20, $fb

	ret                                                  ; $3440 : $c9


br_01_3441:
	bit 0, (hl)                                                  ; $3441 : $cb, $46
	ret nz                                                  ; $3443 : $c0

	cp $0d                                                  ; $3444 : $fe, $0d
	jp Jump_01_389e                                                  ; $3446 : $c3, $9e, $38


	ld bc, $0420                                                  ; $3449 : $01, $20, $04
	set 2, (hl)                                                  ; $344c : $cb, $d6
	set 0, (hl)                                                  ; $344e : $cb, $c6

Call_01_3450:
	push hl                                                  ; $3450 : $e5
	ld hl, $00a0                                                  ; $3451 : $21, $a0, $00
	ld bc, $0006                                                  ; $3454 : $01, $06, $00
	call Call_01_345c                                                  ; $3457 : $cd, $5c, $34
	pop hl                                                  ; $345a : $e1
	ret                                                  ; $345b : $c9


Call_01_345c:
	ld a, ($403b)                                                  ; $345c : $3a, $3b, $40
	ld d, a                                                  ; $345f : $57

br_01_3460:
	call Call_01_3469                                                  ; $3460 : $cd, $69, $34
	dec bc                                                  ; $3463 : $0b
	ld a, c                                                  ; $3464 : $79
	or b                                                  ; $3465 : $b0
	jr nz, br_01_3460                                                  ; $3466 : $20, $f8

	ret                                                  ; $3468 : $c9


Call_01_3469:
	push bc                                                  ; $3469 : $c5
	push hl                                                  ; $346a : $e5
	ld hl, ($4230)                                                  ; $346b : $2a, $30, $42
	res 1, l                                                  ; $346e : $cb, $8d
	push hl                                                  ; $3470 : $e5
	pop bc                                                  ; $3471 : $c1
	out (c), a                                                  ; $3472 : $ed, $79
	pop bc                                                  ; $3474 : $c1
	push bc                                                  ; $3475 : $c5
	call Call_01_3e80                                                  ; $3476 : $cd, $80, $3e
	ld hl, ($4230)                                                  ; $3479 : $2a, $30, $42
	res 2, l                                                  ; $347c : $cb, $95
	push hl                                                  ; $347e : $e5
	pop bc                                                  ; $347f : $c1
	jp Jump_01_3e86                                                  ; $3480 : $c3, $86, $3e


	nop                                                  ; $3483 : $00

Call_01_3484:
	ld a, $20                                                  ; $3484 : $3e, $20
	ld ($403c), a                                                  ; $3486 : $32, $3c, $40
	ld ($403b), a                                                  ; $3489 : $32, $3b, $40
	nop                                                  ; $348c : $00
	nop                                                  ; $348d : $00
	nop                                                  ; $348e : $00
	ld a, $3c                                                  ; $348f : $3e, $3c
	ld ($403a), a                                                  ; $3491 : $32, $3a, $40
	ld a, $10                                                  ; $3494 : $3e, $10
	ld ($4041), a                                                  ; $3496 : $32, $41, $40
	xor a                                                  ; $3499 : $af
	ld ($42af), a                                                  ; $349a : $32, $af, $42
	ld hl, $42b2                                                  ; $349d : $21, $b2, $42
	ld ($42b0), hl                                                  ; $34a0 : $22, $b0, $42
	ld a, $c9                                                  ; $34a3 : $3e, $c9
	ld ($407d), a                                                  ; $34a5 : $32, $7d, $40
	ret                                                  ; $34a8 : $c9


Jump_01_34a9:
	push bc                                                  ; $34a9 : $c5
	push de                                                  ; $34aa : $d5
	push hl                                                  ; $34ab : $e5
	ld a, $10                                                  ; $34ac : $3e, $10
	call Call_01_355f                                                  ; $34ae : $cd, $5f, $35
	ld a, $13                                                  ; $34b1 : $3e, $13
	call Call_01_355f                                                  ; $34b3 : $cd, $5f, $35
	ld a, $80                                                  ; $34b6 : $3e, $80

Call_01_34b8:
	ld ($4232), a                                                  ; $34b8 : $32, $32, $42
	call Call_01_34ef                                                  ; $34bb : $cd, $ef, $34
	ld a, $08                                                  ; $34be : $3e, $08
	call Call_01_355f                                                  ; $34c0 : $cd, $5f, $35
	ld a, $0b                                                  ; $34c3 : $3e, $0b
	call Call_01_355f                                                  ; $34c5 : $cd, $5f, $35
	ld a, $0f                                                  ; $34c8 : $3e, $0f
	call Call_01_355f                                                  ; $34ca : $cd, $5f, $35
	call Call_01_34e3                                                  ; $34cd : $cd, $e3, $34
	call Call_01_34fd                                                  ; $34d0 : $cd, $fd, $34
	ld a, $0d                                                  ; $34d3 : $3e, $0d
	call Call_01_355f                                                  ; $34d5 : $cd, $5f, $35
	pop hl                                                  ; $34d8 : $e1
	pop de                                                  ; $34d9 : $d1
	pop bc                                                  ; $34da : $c1
	ld a, $1c                                                  ; $34db : $3e, $1c
	call Call_01_033a                                                  ; $34dd : $cd, $3a, $03
	jp $01ce                                                  ; $34e0 : $c3, $ce, $01


Call_01_34e3:
	ld hl, $4260                                                  ; $34e3 : $21, $60, $42
	ld b, $40                                                  ; $34e6 : $06, $40
	ld a, $20                                                  ; $34e8 : $3e, $20

br_01_34ea:
	ld (hl), a                                                  ; $34ea : $77
	inc hl                                                  ; $34eb : $23
	djnz br_01_34ea                                                  ; $34ec : $10, $fc
	ret                                                  ; $34ee : $c9


Call_01_34ef:
	xor a                                                  ; $34ef : $af
	ld ($4236), a                                                  ; $34f0 : $32, $36, $42
	ld ($4233), a                                                  ; $34f3 : $32, $33, $42
	ld hl, $4260                                                  ; $34f6 : $21, $60, $42
	ld ($4237), hl                                                  ; $34f9 : $22, $37, $42
	ret                                                  ; $34fc : $c9


Call_01_34fd:
	ld a, $80                                                  ; $34fd : $3e, $80
	ld ($4232), a                                                  ; $34ff : $32, $32, $42
	call Call_01_355f                                                  ; $3502 : $cd, $5f, $35
	ld hl, $4260                                                  ; $3505 : $21, $60, $42
	ld a, ($4236)                                                  ; $3508 : $3a, $36, $42
	ld c, a                                                  ; $350b : $4f
	ld b, $00                                                  ; $350c : $06, $00
	add hl, bc                                                  ; $350e : $09

br_01_350f:
	ld a, (hl)                                                  ; $350f : $7e
	or a                                                  ; $3510 : $b7
	jr nz, br_01_3515                                                  ; $3511 : $20, $02

	ld a, $20                                                  ; $3513 : $3e, $20

br_01_3515:
	call Call_01_3551                                                  ; $3515 : $cd, $51, $35
	inc hl                                                  ; $3518 : $23
	ld a, ($4232)                                                  ; $3519 : $3a, $32, $42
	inc a                                                  ; $351c : $3c
	cp $8a                                                  ; $351d : $fe, $8a
	jr z, br_01_352a                                                  ; $351f : $28, $09

	cp $ca                                                  ; $3521 : $fe, $ca
	jr z, br_01_3534                                                  ; $3523 : $28, $0f

	ld ($4232), a                                                  ; $3525 : $32, $32, $42
	jr br_01_350f                                                  ; $3528 : $18, $e5

br_01_352a:
	ld a, $c0                                                  ; $352a : $3e, $c0
	ld ($4232), a                                                  ; $352c : $32, $32, $42
	call Call_01_355f                                                  ; $352f : $cd, $5f, $35
	jr br_01_350f                                                  ; $3532 : $18, $db

br_01_3534:
	ld hl, $4232                                                  ; $3534 : $21, $32, $42
	ld a, $80                                                  ; $3537 : $3e, $80
	ld (hl), a                                                  ; $3539 : $77
	ld a, ($4236)                                                  ; $353a : $3a, $36, $42
	ld b, a                                                  ; $353d : $47
	ld a, ($4233)                                                  ; $353e : $3a, $33, $42
	sub b                                                  ; $3541 : $90
	cp $0a                                                  ; $3542 : $fe, $0a
	jr c, br_01_354b                                                  ; $3544 : $38, $05

	push af                                                  ; $3546 : $f5
	ld a, $b6                                                  ; $3547 : $3e, $b6
	ld (hl), a                                                  ; $3549 : $77
	pop af                                                  ; $354a : $f1

br_01_354b:
	add a, (hl)                                                  ; $354b : $86
	ld (hl), a                                                  ; $354c : $77
	call Call_01_355f                                                  ; $354d : $cd, $5f, $35
	ret                                                  ; $3550 : $c9


Call_01_3551:
	push hl                                                  ; $3551 : $e5
	push bc                                                  ; $3552 : $c5
	ld hl, ($4230)                                                  ; $3553 : $2a, $30, $42
	ld d, a                                                  ; $3556 : $57
	rra                                                  ; $3557 : $1f
	rra                                                  ; $3558 : $1f
	rra                                                  ; $3559 : $1f
	rra                                                  ; $355a : $1f
	set 0, h                                                  ; $355b : $cb, $c4
	jr br_01_3569                                                  ; $355d : $18, $0a

Call_01_355f:
	push hl                                                  ; $355f : $e5
	push bc                                                  ; $3560 : $c5
	ld hl, ($4230)                                                  ; $3561 : $2a, $30, $42
	ld d, a                                                  ; $3564 : $57
	rra                                                  ; $3565 : $1f
	rra                                                  ; $3566 : $1f
	rra                                                  ; $3567 : $1f
	rra                                                  ; $3568 : $1f

br_01_3569:
	res 0, l                                                  ; $3569 : $cb, $85
	push hl                                                  ; $356b : $e5
	pop bc                                                  ; $356c : $c1
	out (c), a                                                  ; $356d : $ed, $79
	ld a, d                                                  ; $356f : $7a
	out (c), a                                                  ; $3570 : $ed, $79
	res 0, b                                                  ; $3572 : $cb, $80

br_01_3574:
	in a, (c)                                                  ; $3574 : $ed, $78
	bit 3, a                                                  ; $3576 : $cb, $5f
	jr nz, br_01_3574                                                  ; $3578 : $20, $fa

	set 0, c                                                  ; $357a : $cb, $c1
	out (c), a                                                  ; $357c : $ed, $79
	pop bc                                                  ; $357e : $c1
	pop hl                                                  ; $357f : $e1
	ret                                                  ; $3580 : $c9


Jump_01_3581:
	push hl                                                  ; $3581 : $e5
	push de                                                  ; $3582 : $d5
	push bc                                                  ; $3583 : $c5
	push af                                                  ; $3584 : $f5
	call Call_01_35a7                                                  ; $3585 : $cd, $a7, $35
	pop af                                                  ; $3588 : $f1
	push af                                                  ; $3589 : $f5
	ld (hl), a                                                  ; $358a : $77
	ld hl, $4233                                                  ; $358b : $21, $33, $42
	ld a, (hl)                                                  ; $358e : $7e
	cp $3b                                                  ; $358f : $fe, $3b
	jr z, br_01_3594                                                  ; $3591 : $28, $01

	inc (hl)                                                  ; $3593 : $34

br_01_3594:
	call Call_01_35a7                                                  ; $3594 : $cd, $a7, $35
	ld ($4237), hl                                                  ; $3597 : $22, $37, $42
	call Call_01_35b2                                                  ; $359a : $cd, $b2, $35
	call Call_01_34fd                                                  ; $359d : $cd, $fd, $34
	pop af                                                  ; $35a0 : $f1
	pop bc                                                  ; $35a1 : $c1
	pop de                                                  ; $35a2 : $d1
	pop hl                                                  ; $35a3 : $e1
	jp Jump_01_31b5                                                  ; $35a4 : $c3, $b5, $31


Call_01_35a7:
	ld hl, $4260                                                  ; $35a7 : $21, $60, $42
	ld a, ($4233)                                                  ; $35aa : $3a, $33, $42
	ld c, a                                                  ; $35ad : $4f
	ld b, $00                                                  ; $35ae : $06, $00
	add hl, bc                                                  ; $35b0 : $09
	ret                                                  ; $35b1 : $c9


Call_01_35b2:
	ld a, ($4233)                                                  ; $35b2 : $3a, $33, $42
	ld hl, $4236                                                  ; $35b5 : $21, $36, $42
	sub (hl)                                                  ; $35b8 : $96
	cp $14                                                  ; $35b9 : $fe, $14
	jr c, br_01_35be                                                  ; $35bb : $38, $01

	inc (hl)                                                  ; $35bd : $34

br_01_35be:
	ret                                                  ; $35be : $c9


Jump_01_35bf:
	push af                                                  ; $35bf : $f5
	call Call_01_34ef                                                  ; $35c0 : $cd, $ef, $34
	push de                                                  ; $35c3 : $d5
	call Call_01_34fd                                                  ; $35c4 : $cd, $fd, $34
	pop de                                                  ; $35c7 : $d1
	ld hl, $7000                                                  ; $35c8 : $21, $00, $70
	ld ($4020), hl                                                  ; $35cb : $22, $20, $40
	jp Jump_01_312f                                                  ; $35ce : $c3, $2f, $31


Jump_01_35d1:
	xor a                                                  ; $35d1 : $af
	ld ($423a), a                                                  ; $35d2 : $32, $3a, $42
	ld ($423b), a                                                  ; $35d5 : $32, $3b, $42
	ld ($4234), a                                                  ; $35d8 : $32, $34, $42
	ld hl, $4230                                                  ; $35db : $21, $30, $42
	ld (hl), $ff                                                  ; $35de : $36, $ff
	inc hl                                                  ; $35e0 : $23
	ld (hl), $40                                                  ; $35e1 : $36, $40
	ld sp, $41f8                                                  ; $35e3 : $31, $f8, $41
	jp Jump_01_0674                                                  ; $35e6 : $c3, $74, $06


Jump_01_35e9:
	ld hl, $4260                                                  ; $35e9 : $21, $60, $42
	ld ($4237), hl                                                  ; $35ec : $22, $37, $42
	jp $0545                                                  ; $35ef : $c3, $45, $05


Jump_01_35f2:
	cp $f0                                                  ; $35f2 : $fe, $f0
	jr c, br_01_361a                                                  ; $35f4 : $38, $24

	jp Jump_01_3986                                                  ; $35f6 : $c3, $86, $39


	ld a, $02                                                  ; $35f9 : $3e, $02
	ld bc, $8000                                                  ; $35fb : $01, $00, $80
	out (c), a                                                  ; $35fe : $ed, $79
	nop                                                  ; $3600 : $00
	nop                                                  ; $3601 : $00
	nop                                                  ; $3602 : $00
	nop                                                  ; $3603 : $00
	ld hl, $4100                                                  ; $3604 : $21, $00, $41
	ld bc, $01e0                                                  ; $3607 : $01, $e0, $01

br_01_360a:
	xor a                                                  ; $360a : $af
	ld (hl), a                                                  ; $360b : $77
	inc hl                                                  ; $360c : $23
	dec bc                                                  ; $360d : $0b
	ld a, b                                                  ; $360e : $78
	or c                                                  ; $360f : $b1
	jr nz, br_01_360a                                                  ; $3610 : $20, $f8

	pop af                                                  ; $3612 : $f1
	ld ($4113), a                                                  ; $3613 : $32, $13, $41
	nop                                                  ; $3616 : $00
	jp Jump_01_2ff0                                                  ; $3617 : $c3, $f0, $2f


br_01_361a:
	cp $e1                                                  ; $361a : $fe, $e1
	jp z, Jump_01_3634                                                  ; $361c : $ca, $34, $36
	cp $e2                                                  ; $361f : $fe, $e2
	jp z, Jump_01_3689                                                  ; $3621 : $ca, $89, $36
	cp $e7                                                  ; $3624 : $fe, $e7
	jp z, Jump_01_36a5                                                  ; $3626 : $ca, $a5, $36
	cp $ec                                                  ; $3629 : $fe, $ec
	jp z, Jump_01_37b5                                                  ; $362b : $ca, $b5, $37
	cp $ed                                                  ; $362e : $fe, $ed
	jp z, Jump_01_37e0                                                  ; $3630 : $ca, $e0, $37
	ret                                                  ; $3633 : $c9


Call_01_3634:
Jump_01_3634:
	push hl                                                  ; $3634 : $e5
	push de                                                  ; $3635 : $d5
	push bc                                                  ; $3636 : $c5
	ld a, $0a                                                  ; $3637 : $3e, $0a
	call Call_01_355f                                                  ; $3639 : $cd, $5f, $35

br_01_363c:
	ld hl, $4233                                                  ; $363c : $21, $33, $42
	xor a                                                  ; $363f : $af
	cp (hl)                                                  ; $3640 : $be
	jr z, br_01_3660                                                  ; $3641 : $28, $1d

	push hl                                                  ; $3643 : $e5
	call Call_01_35a7                                                  ; $3644 : $cd, $a7, $35
	dec hl                                                  ; $3647 : $2b
	ld a, (hl)                                                  ; $3648 : $7e
	cp $20                                                  ; $3649 : $fe, $20
	jr nz, br_01_3656                                                  ; $364b : $20, $09

	dec hl                                                  ; $364d : $2b
	ld a, (hl)                                                  ; $364e : $7e
	cp $5d                                                  ; $364f : $fe, $5d
	jr nz, br_01_3656                                                  ; $3651 : $20, $03

	pop hl                                                  ; $3653 : $e1
	jr br_01_3658                                                  ; $3654 : $18, $02

br_01_3656:
	pop hl                                                  ; $3656 : $e1
	dec (hl)                                                  ; $3657 : $35

br_01_3658:
	push hl                                                  ; $3658 : $e5
	call Call_01_35a7                                                  ; $3659 : $cd, $a7, $35
	ld ($4237), hl                                                  ; $365c : $22, $37, $42
	pop hl                                                  ; $365f : $e1

br_01_3660:
	ld a, ($4236)                                                  ; $3660 : $3a, $36, $42
	cp (hl)                                                  ; $3663 : $be
	jr c, br_01_366a                                                  ; $3664 : $38, $04

	ld a, (hl)                                                  ; $3666 : $7e
	ld ($4236), a                                                  ; $3667 : $32, $36, $42

br_01_366a:
	call Call_01_34fd                                                  ; $366a : $cd, $fd, $34
	ld hl, $4000                                                  ; $366d : $21, $00, $40
	call Call_01_3b28                                                  ; $3670 : $cd, $28, $3b
	ld bc, $01fd                                                  ; $3673 : $01, $fd, $01
	in a, (c)                                                  ; $3676 : $ed, $78
	bit 2, a                                                  ; $3678 : $cb, $57
	jr z, br_01_363c                                                  ; $367a : $28, $c0

	bit 3, a                                                  ; $367c : $cb, $5f
	jr z, br_01_3691                                                  ; $367e : $28, $11

	ld a, $0b                                                  ; $3680 : $3e, $0b
	call Call_01_355f                                                  ; $3682 : $cd, $5f, $35
	pop bc                                                  ; $3685 : $c1
	pop de                                                  ; $3686 : $d1
	pop hl                                                  ; $3687 : $e1
	ret                                                  ; $3688 : $c9


Call_01_3689:
Jump_01_3689:
	push hl                                                  ; $3689 : $e5
	push de                                                  ; $368a : $d5
	push bc                                                  ; $368b : $c5
	ld a, $0a                                                  ; $368c : $3e, $0a
	call Call_01_355f                                                  ; $368e : $cd, $5f, $35

br_01_3691:
	ld hl, $4233                                                  ; $3691 : $21, $33, $42
	ld a, $3b                                                  ; $3694 : $3e, $3b
	cp (hl)                                                  ; $3696 : $be
	jr z, br_01_369a                                                  ; $3697 : $28, $01

	inc (hl)                                                  ; $3699 : $34

br_01_369a:
	call Call_01_35a7                                                  ; $369a : $cd, $a7, $35
	ld ($4237), hl                                                  ; $369d : $22, $37, $42
	call Call_01_35b2                                                  ; $36a0 : $cd, $b2, $35
	jr br_01_366a                                                  ; $36a3 : $18, $c5

Jump_01_36a5:
	push hl                                                  ; $36a5 : $e5
	push de                                                  ; $36a6 : $d5
	push bc                                                  ; $36a7 : $c5
	ld hl, $429f                                                  ; $36a8 : $21, $9f, $42
	ld b, $40                                                  ; $36ab : $06, $40

br_01_36ad:
	ld a, (hl)                                                  ; $36ad : $7e
	cp $5d                                                  ; $36ae : $fe, $5d
	jr z, br_01_36b9                                                  ; $36b0 : $28, $07

	ld (hl), $20                                                  ; $36b2 : $36, $20
	dec hl                                                  ; $36b4 : $2b
	djnz br_01_36ad                                                  ; $36b5 : $10, $f6
	jr br_01_36ba                                                  ; $36b7 : $18, $01

br_01_36b9:
	inc hl                                                  ; $36b9 : $23

br_01_36ba:
	inc hl                                                  ; $36ba : $23
	ld ($4237), hl                                                  ; $36bb : $22, $37, $42
	ld a, l                                                  ; $36be : $7d
	sub $60                                                  ; $36bf : $d6, $60
	ld ($4233), a                                                  ; $36c1 : $32, $33, $42
	sub $14                                                  ; $36c4 : $d6, $14
	jr c, br_01_36ce                                                  ; $36c6 : $38, $06

	inc a                                                  ; $36c8 : $3c

br_01_36c9:
	ld ($4236), a                                                  ; $36c9 : $32, $36, $42
	jr br_01_366a                                                  ; $36cc : $18, $9c

br_01_36ce:
	xor a                                                  ; $36ce : $af

Jump_01_36cf:
	jr br_01_36c9                                                  ; $36cf : $18, $f8

Jump_01_36d1:
	push af                                                  ; $36d1 : $f5
	ld a, ($40de)                                                  ; $36d2 : $3a, $de, $40
	or a                                                  ; $36d5 : $b7
	jr nz, br_01_36ed                                                  ; $36d6 : $20, $15

	ld hl, $41e8                                                  ; $36d8 : $21, $e8, $41

br_01_36db:
	ld a, (hl)                                                  ; $36db : $7e
	cp $5d                                                  ; $36dc : $fe, $5d
	jr z, br_01_36e3                                                  ; $36de : $28, $03

	inc hl                                                  ; $36e0 : $23
	jr br_01_36db                                                  ; $36e1 : $18, $f8

br_01_36e3:
	inc hl                                                  ; $36e3 : $23
	ld a, (hl)                                                  ; $36e4 : $7e
	cp $00                                                  ; $36e5 : $fe, $00
	jr z, br_01_36f4                                                  ; $36e7 : $28, $0b

	nop                                                  ; $36e9 : $00
	nop                                                  ; $36ea : $00
	nop                                                  ; $36eb : $00
	nop                                                  ; $36ec : $00

br_01_36ed:
	pop af                                                  ; $36ed : $f1
	call Call_01_2869                                                  ; $36ee : $cd, $69, $28
	jp Jump_01_2243                                                  ; $36f1 : $c3, $43, $22


br_01_36f4:
	dec hl                                                  ; $36f4 : $2b
	dec hl                                                  ; $36f5 : $2b
	jr br_01_36ed                                                  ; $36f6 : $18, $f5

Jump_01_36f8:
	ld a, ($40de)                                                  ; $36f8 : $3a, $de, $40
	or a                                                  ; $36fb : $b7
	jr nz, br_01_370b                                                  ; $36fc : $20, $0d

	ld hl, $41e8                                                  ; $36fe : $21, $e8, $41

br_01_3701:
	ld a, (hl)                                                  ; $3701 : $7e
	cp $5d                                                  ; $3702 : $fe, $5d
	jr z, br_01_3709                                                  ; $3704 : $28, $03

	inc hl                                                  ; $3706 : $23
	jr br_01_3701                                                  ; $3707 : $18, $f8

br_01_3709:
	inc hl                                                  ; $3709 : $23
	inc hl                                                  ; $370a : $23

br_01_370b:
	pop af                                                  ; $370b : $f1
	push af                                                  ; $370c : $f5
	ld bc, $2243                                                  ; $370d : $01, $43, $22
	jp Jump_01_2253                                                  ; $3710 : $c3, $53, $22


Jump_01_3713:
	jp $3a90                                                  ; $3713 : $c3, $90, $3a


Jump_01_3716:
	call Call_01_038b                                                  ; $3716 : $cd, $8b, $03
	call $41ac                                                  ; $3719 : $cd, $ac, $41
	call Call_01_20f9                                                  ; $371c : $cd, $f9, $20
	di                                                  ; $371f : $f3
	push hl                                                  ; $3720 : $e5
	push de                                                  ; $3721 : $d5
	push bc                                                  ; $3722 : $c5
	push af                                                  ; $3723 : $f5

br_01_3724:
	jp Jump_01_3996                                                  ; $3724 : $c3, $96, $39


Jump_01_3727:
	in a, (c)                                                  ; $3727 : $ed, $78
	bit 4, a                                                  ; $3729 : $cb, $67
	jr z, br_01_3732                                                  ; $372b : $28, $05

	call Call_01_3ae8                                                  ; $372d : $cd, $e8, $3a
	jr nz, br_01_3724                                                  ; $3730 : $20, $f2

br_01_3732:
	call Call_01_3b25                                                  ; $3732 : $cd, $25, $3b
	call Call_01_34e3                                                  ; $3735 : $cd, $e3, $34
	pop af                                                  ; $3738 : $f1
	pop bc                                                  ; $3739 : $c1
	pop de                                                  ; $373a : $d1
	pop hl                                                  ; $373b : $e1
	ei                                                  ; $373c : $fb
	jp Jump_01_1a33                                                  ; $373d : $c3, $33, $1a


Call_01_3740:
Jump_01_3740:
	call Call_01_3749                                                  ; $3740 : $cd, $49, $37
	call Call_01_379d                                                  ; $3743 : $cd, $9d, $37
	jp Jump_01_20a0                                                  ; $3746 : $c3, $a0, $20


Call_01_3749:
	call Call_01_20fe                                                  ; $3749 : $cd, $fe, $20
	push hl                                                  ; $374c : $e5
	push de                                                  ; $374d : $d5
	push bc                                                  ; $374e : $c5
	push af                                                  ; $374f : $f5
	di                                                  ; $3750 : $f3

br_01_3751:
	ld bc, $01fd                                                  ; $3751 : $01, $fd, $01
	in a, (c)                                                  ; $3754 : $ed, $78
	bit 4, a                                                  ; $3756 : $cb, $67
	jr z, br_01_3751                                                  ; $3758 : $28, $f7

	jp Jump_01_399f                                                  ; $375a : $c3, $9f, $39


Jump_01_375d:
	ld bc, $01fd                                                  ; $375d : $01, $fd, $01
	in a, (c)                                                  ; $3760 : $ed, $78
	bit 4, a                                                  ; $3762 : $cb, $67
	jr z, br_01_3792                                                  ; $3764 : $28, $2c

	call Call_01_3ae8                                                  ; $3766 : $cd, $e8, $3a
	jr nc, br_01_3773                                                  ; $3769 : $30, $08

	pop af                                                  ; $376b : $f1
	pop bc                                                  ; $376c : $c1
	pop de                                                  ; $376d : $d1
	pop hl                                                  ; $376e : $e1
	pop bc                                                  ; $376f : $c1
	jp Jump_01_3afe                                                  ; $3770 : $c3, $fe, $3a


br_01_3773:
	ld bc, $01fd                                                  ; $3773 : $01, $fd, $01
	in a, (c)                                                  ; $3776 : $ed, $78
	bit 2, a                                                  ; $3778 : $cb, $57
	jr z, br_01_3782                                                  ; $377a : $28, $06

	bit 3, a                                                  ; $377c : $cb, $5f
	jr z, br_01_378d                                                  ; $377e : $28, $0d

	jr br_01_3751                                                  ; $3780 : $18, $cf

br_01_3782:
	call Call_01_3634                                                  ; $3782 : $cd, $34, $36

br_01_3785:
	ld hl, $4000                                                  ; $3785 : $21, $00, $40
	call Call_01_3b28                                                  ; $3788 : $cd, $28, $3b
	jr br_01_3751                                                  ; $378b : $18, $c4

br_01_378d:
	call Call_01_3689                                                  ; $378d : $cd, $89, $36
	jr br_01_3785                                                  ; $3790 : $18, $f3

br_01_3792:
	call Call_01_3b25                                                  ; $3792 : $cd, $25, $3b
	call Call_01_38dc                                                  ; $3795 : $cd, $dc, $38
	pop af                                                  ; $3798 : $f1
	pop bc                                                  ; $3799 : $c1
	pop de                                                  ; $379a : $d1
	pop hl                                                  ; $379b : $e1
	ret                                                  ; $379c : $c9


Call_01_379d:
	push hl                                                  ; $379d : $e5
	push de                                                  ; $379e : $d5
	push bc                                                  ; $379f : $c5
	push af                                                  ; $37a0 : $f5
	call Call_01_34e3                                                  ; $37a1 : $cd, $e3, $34
	call Call_01_34ef                                                  ; $37a4 : $cd, $ef, $34
	pop af                                                  ; $37a7 : $f1
	pop bc                                                  ; $37a8 : $c1
	pop de                                                  ; $37a9 : $d1
	pop hl                                                  ; $37aa : $e1
	ret                                                  ; $37ab : $c9


Jump_01_37ac:
	call Call_01_379d                                                  ; $37ac : $cd, $9d, $37
	call Call_01_20f9                                                  ; $37af : $cd, $f9, $20
	jp Jump_01_1dda                                                  ; $37b2 : $c3, $da, $1d


Jump_01_37b5:
	push hl                                                  ; $37b5 : $e5
	push de                                                  ; $37b6 : $d5
	push bc                                                  ; $37b7 : $c5
	ld hl, $429b                                                  ; $37b8 : $21, $9b, $42
	ld a, (hl)                                                  ; $37bb : $7e
	cp $20                                                  ; $37bc : $fe, $20
	jr nz, br_01_37d9                                                  ; $37be : $20, $19

	ld hl, $4233                                                  ; $37c0 : $21, $33, $42
	ld a, $3b                                                  ; $37c3 : $3e, $3b
	cp (hl)                                                  ; $37c5 : $be
	jr z, br_01_37d9                                                  ; $37c6 : $28, $11

	sub (hl)                                                  ; $37c8 : $96
	ld b, a                                                  ; $37c9 : $47
	ld hl, $429a                                                  ; $37ca : $21, $9a, $42

br_01_37cd:
	ld a, (hl)                                                  ; $37cd : $7e
	inc hl                                                  ; $37ce : $23
	ld (hl), a                                                  ; $37cf : $77
	dec hl                                                  ; $37d0 : $2b
	dec hl                                                  ; $37d1 : $2b
	djnz br_01_37cd                                                  ; $37d2 : $10, $f9
	ld hl, ($4237)                                                  ; $37d4 : $2a, $37, $42
	ld (hl), $20                                                  ; $37d7 : $36, $20

Jump_01_37d9:
br_01_37d9:
	call Call_01_34fd                                                  ; $37d9 : $cd, $fd, $34
	pop bc                                                  ; $37dc : $c1
	pop de                                                  ; $37dd : $d1
	pop hl                                                  ; $37de : $e1
	ret                                                  ; $37df : $c9


Jump_01_37e0:
	push hl                                                  ; $37e0 : $e5
	push de                                                  ; $37e1 : $d5
	push bc                                                  ; $37e2 : $c5
	ld hl, $4233                                                  ; $37e3 : $21, $33, $42
	ld a, $3b                                                  ; $37e6 : $3e, $3b
	cp (hl)                                                  ; $37e8 : $be
	jp Jump_01_39a8                                                  ; $37e9 : $c3, $a8, $39


Jump_01_37ec:
	ld c, a                                                  ; $37ec : $4f
	ld b, $00                                                  ; $37ed : $06, $00
	ld hl, ($4237)                                                  ; $37ef : $2a, $37, $42
	push hl                                                  ; $37f2 : $e5
	pop de                                                  ; $37f3 : $d1
	inc hl                                                  ; $37f4 : $23
	ldir                                                  ; $37f5 : $ed, $b0
	ld hl, $429b                                                  ; $37f7 : $21, $9b, $42
	ld (hl), $20                                                  ; $37fa : $36, $20
	jr br_01_37d9                                                  ; $37fc : $18, $db

Call_01_37fe:
	ld hl, $4260                                                  ; $37fe : $21, $60, $42
	ld b, $3b                                                  ; $3801 : $06, $3b

br_01_3803:
	ld a, (hl)                                                  ; $3803 : $7e
	cp $20                                                  ; $3804 : $fe, $20
	jr nz, br_01_380c                                                  ; $3806 : $20, $04

	inc hl                                                  ; $3808 : $23
	djnz br_01_3803                                                  ; $3809 : $10, $f8
	ret                                                  ; $380b : $c9


br_01_380c:
	cp $4c                                                  ; $380c : $fe, $4c
	jr z, br_01_3815                                                  ; $380e : $28, $05

	cp $45                                                  ; $3810 : $fe, $45
	jr z, br_01_3843                                                  ; $3812 : $28, $2f

	ret                                                  ; $3814 : $c9


br_01_3815:
	call Call_01_3881                                                  ; $3815 : $cd, $81, $38
	cp $49                                                  ; $3818 : $fe, $49
	ret nz                                                  ; $381a : $c0

	call Call_01_3881                                                  ; $381b : $cd, $81, $38
	cp $53                                                  ; $381e : $fe, $53
	ret nz                                                  ; $3820 : $c0

	call Call_01_3881                                                  ; $3821 : $cd, $81, $38
	cp $54                                                  ; $3824 : $fe, $54
	ret nz                                                  ; $3826 : $c0

	push hl                                                  ; $3827 : $e5
	ld hl, $4234                                                  ; $3828 : $21, $34, $42
	res 0, (hl)                                                  ; $382b : $cb, $86
	pop hl                                                  ; $382d : $e1
	call Call_01_3881                                                  ; $382e : $cd, $81, $38

br_01_3831:
	ld a, (hl)                                                  ; $3831 : $7e
	cp $20                                                  ; $3832 : $fe, $20
	jr nz, br_01_383a                                                  ; $3834 : $20, $04

	inc hl                                                  ; $3836 : $23
	djnz br_01_3831                                                  ; $3837 : $10, $f8
	ret                                                  ; $3839 : $c9


br_01_383a:
	call Call_01_3889                                                  ; $383a : $cd, $89, $38
	ld hl, $429b                                                  ; $383d : $21, $9b, $42
	ld (hl), $2d                                                  ; $3840 : $36, $2d
	ret                                                  ; $3842 : $c9


br_01_3843:
	call Call_01_3881                                                  ; $3843 : $cd, $81, $38
	cp $44                                                  ; $3846 : $fe, $44
	ret nz                                                  ; $3848 : $c0

	call Call_01_3881                                                  ; $3849 : $cd, $81, $38
	cp $49                                                  ; $384c : $fe, $49
	ret nz                                                  ; $384e : $c0

	call Call_01_3881                                                  ; $384f : $cd, $81, $38
	cp $54                                                  ; $3852 : $fe, $54
	ret nz                                                  ; $3854 : $c0

	push hl                                                  ; $3855 : $e5
	ld hl, $4234                                                  ; $3856 : $21, $34, $42
	set 0, (hl)                                                  ; $3859 : $cb, $c6
	pop hl                                                  ; $385b : $e1
	call Call_01_3881                                                  ; $385c : $cd, $81, $38

br_01_385f:
	ld a, (hl)                                                  ; $385f : $7e
	cp $20                                                  ; $3860 : $fe, $20
	jr nz, br_01_3868                                                  ; $3862 : $20, $04

	inc hl                                                  ; $3864 : $23
	djnz br_01_385f                                                  ; $3865 : $10, $f8
	ret                                                  ; $3867 : $c9


br_01_3868:
	jp Jump_01_39b6                                                  ; $3868 : $c3, $b6, $39


Jump_01_386b:
	ld hl, $4260                                                  ; $386b : $21, $60, $42

br_01_386e:
	ld a, (hl)                                                  ; $386e : $7e
	inc hl                                                  ; $386f : $23
	cp $45                                                  ; $3870 : $fe, $45
	jr nz, br_01_386e                                                  ; $3872 : $20, $fa

	dec hl                                                  ; $3874 : $2b
	ld (hl), $4c                                                  ; $3875 : $36, $4c
	inc hl                                                  ; $3877 : $23
	ld (hl), $49                                                  ; $3878 : $36, $49
	inc hl                                                  ; $387a : $23
	ld (hl), $53                                                  ; $387b : $36, $53
	inc hl                                                  ; $387d : $23
	ld (hl), $54                                                  ; $387e : $36, $54
	ret                                                  ; $3880 : $c9


Call_01_3881:
	inc hl                                                  ; $3881 : $23
	dec b                                                  ; $3882 : $05
	jr z, br_01_3887                                                  ; $3883 : $28, $02

	ld a, (hl)                                                  ; $3885 : $7e
	ret                                                  ; $3886 : $c9


br_01_3887:
	pop de                                                  ; $3887 : $d1
	ret                                                  ; $3888 : $c9


Call_01_3889:
br_01_3889:
	ld a, (hl)                                                  ; $3889 : $7e
	cp $30                                                  ; $388a : $fe, $30
	jr c, br_01_3897                                                  ; $388c : $38, $09

	cp $3a                                                  ; $388e : $fe, $3a
	jr nc, br_01_3897                                                  ; $3890 : $30, $05

	inc hl                                                  ; $3892 : $23
	dec b                                                  ; $3893 : $05
	ret z                                                  ; $3894 : $c8

	jr br_01_3889                                                  ; $3895 : $18, $f2

br_01_3897:
	ld (hl), $20                                                  ; $3897 : $36, $20
	inc hl                                                  ; $3899 : $23
	dec b                                                  ; $389a : $05
	ret z                                                  ; $389b : $c8

	jr br_01_3897                                                  ; $389c : $18, $f9

Jump_01_389e:
	jr z, br_01_38a5                                                  ; $389e : $28, $05

	cp $01                                                  ; $38a0 : $fe, $01
	ret nz                                                  ; $38a2 : $c0

	set 2, (hl)                                                  ; $38a3 : $cb, $d6

br_01_38a5:
	set 0, (hl)                                                  ; $38a5 : $cb, $c6
	ret                                                  ; $38a7 : $c9


Jump_01_38a8:
br_01_38a8:
	ld a, ($42af)                                                  ; $38a8 : $3a, $af, $42
	or a                                                  ; $38ab : $b7
	jr nz, br_01_38a8                                                  ; $38ac : $20, $fa

	di                                                  ; $38ae : $f3
	push de                                                  ; $38af : $d5
	call Call_01_38dc                                                  ; $38b0 : $cd, $dc, $38
	push hl                                                  ; $38b3 : $e5
	call Call_01_3b25                                                  ; $38b4 : $cd, $25, $3b
	pop hl                                                  ; $38b7 : $e1

br_01_38b8:
	jp Jump_01_39c3                                                  ; $38b8 : $c3, $c3, $39


Jump_01_38bb:
	in a, (c)                                                  ; $38bb : $ed, $78
	bit 4, a                                                  ; $38bd : $cb, $67
	jr z, br_01_38cc                                                  ; $38bf : $28, $0b

	call Call_01_3ae8                                                  ; $38c1 : $cd, $e8, $3a
	jr nc, br_01_38b8                                                  ; $38c4 : $30, $f2

	pop de                                                  ; $38c6 : $d1
	inc hl                                                  ; $38c7 : $23
	pop bc                                                  ; $38c8 : $c1
	jp Jump_01_3afe                                                  ; $38c9 : $c3, $fe, $3a


br_01_38cc:
	call Call_01_3b25                                                  ; $38cc : $cd, $25, $3b
	ld bc, $01fd                                                  ; $38cf : $01, $fd, $01

br_01_38d2:
	in a, (c)                                                  ; $38d2 : $ed, $78
	bit 4, a                                                  ; $38d4 : $cb, $67
	jr z, br_01_38d2                                                  ; $38d6 : $28, $fa

	pop de                                                  ; $38d8 : $d1
	jp Jump_01_2164                                                  ; $38d9 : $c3, $64, $21


Call_01_38dc:
	push bc                                                  ; $38dc : $c5
	ld bc, $0100                                                  ; $38dd : $01, $00, $01

br_01_38e0:
	in a, (c)                                                  ; $38e0 : $ed, $78
	cp $ff                                                  ; $38e2 : $fe, $ff
	jr nz, br_01_38e0                                                  ; $38e4 : $20, $fa

	pop bc                                                  ; $38e6 : $c1

Jump_01_38e7:
	ret                                                  ; $38e7 : $c9


Call_01_38e8:
	call Call_01_29da                                                  ; $38e8 : $cd, $da, $29
	call Call_01_09c4                                                  ; $38eb : $cd, $c4, $09
	jp Jump_01_39fc                                                  ; $38ee : $c3, $fc, $39


	jr c, br_01_38f8                                                  ; $38f1 : $38, $05

	inc a                                                  ; $38f3 : $3c
	ld d, $13                                                  ; $38f4 : $16, $13
	jr br_01_38f9                                                  ; $38f6 : $18, $01

Jump_01_38f8:
br_01_38f8:
	xor a                                                  ; $38f8 : $af

Jump_01_38f9:
br_01_38f9:
	push af                                                  ; $38f9 : $f5
	inc d                                                  ; $38fa : $14

br_01_38fb:
	dec d                                                  ; $38fb : $15
	jr z, br_01_390a                                                  ; $38fc : $28, $0c

	ld a, (bc)                                                  ; $38fe : $0a
	call Call_01_032a                                                  ; $38ff : $cd, $2a, $03
	cp $0d                                                  ; $3902 : $fe, $0d
	call z, Call_01_2103                                                  ; $3904 : $cc, $03, $21
	inc bc                                                  ; $3907 : $03
	jr br_01_38fb                                                  ; $3908 : $18, $f1

br_01_390a:
	jp Jump_01_3a11                                                  ; $390a : $c3, $11, $3a


	push af                                                  ; $390d : $f5
	push hl                                                  ; $390e : $e5
	ld hl, $ffff                                                  ; $390f : $21, $ff, $ff
	call Call_01_3b28                                                  ; $3912 : $cd, $28, $3b
	pop hl                                                  ; $3915 : $e1
	call Call_01_20fe                                                  ; $3916 : $cd, $fe, $20
	call Call_01_379d                                                  ; $3919 : $cd, $9d, $37
	pop af                                                  ; $391c : $f1
	ld d, a                                                  ; $391d : $57
	jr br_01_38f8                                                  ; $391e : $18, $d8

Jump_01_3920:
	call Call_01_20fe                                                  ; $3920 : $cd, $fe, $20
	call Call_01_379d                                                  ; $3923 : $cd, $9d, $37
	jp Jump_01_20e9                                                  ; $3926 : $c3, $e9, $20


	pop hl                                                  ; $3929 : $e1
	jp Jump_01_1997                                                  ; $392a : $c3, $97, $19


Jump_01_392d:
	call Call_01_379d                                                  ; $392d : $cd, $9d, $37
	ld hl, ($40a2)                                                  ; $3930 : $2a, $a2, $40
	jp Jump_01_19a5                                                  ; $3933 : $c3, $a5, $19


Jump_01_3936:
	ld a, ($4060)                                                  ; $3936 : $3a, $60, $40
	or a                                                  ; $3939 : $b7
	jp z, Jump_01_1a19                                                  ; $393a : $ca, $19, $1a
	di                                                  ; $393d : $f3
	ld a, $05                                                  ; $393e : $3e, $05
	ld bc, $8000                                                  ; $3940 : $01, $00, $80
	out (c), a                                                  ; $3943 : $ed, $79
	ld a, ($4061)                                                  ; $3945 : $3a, $61, $40
	ld b, a                                                  ; $3948 : $47
	ld hl, $fef8                                                  ; $3949 : $21, $f8, $fe
	ld de, $0008                                                  ; $394c : $11, $08, $00

br_01_394f:
	add hl, de                                                  ; $394f : $19
	djnz br_01_394f                                                  ; $3950 : $10, $fd
	ld a, (hl)                                                  ; $3952 : $7e
	ld ($4060), a                                                  ; $3953 : $32, $60, $40

Jump_01_3956:
	inc hl                                                  ; $3956 : $23
	ld a, (hl)                                                  ; $3957 : $7e
	ld ($4061), a                                                  ; $3958 : $32, $61, $40
	inc hl                                                  ; $395b : $23
	ex de, hl                                                  ; $395c : $eb
	ld hl, ($4060)                                                  ; $395d : $2a, $60, $40
	ld ($40f9), hl                                                  ; $3960 : $22, $f9, $40
	ld ($40fb), hl                                                  ; $3963 : $22, $fb, $40
	ld ($40fd), hl                                                  ; $3966 : $22, $fd, $40
	ex de, hl                                                  ; $3969 : $eb
	ld e, (hl)                                                  ; $396a : $5e
	inc hl                                                  ; $396b : $23
	ld d, (hl)                                                  ; $396c : $56
	inc hl                                                  ; $396d : $23
	ld c, (hl)                                                  ; $396e : $4e
	inc hl                                                  ; $396f : $23
	ld b, (hl)                                                  ; $3970 : $46
	ld hl, $42e9                                                  ; $3971 : $21, $e9, $42
	ex de, hl                                                  ; $3974 : $eb
	ldir                                                  ; $3975 : $ed, $b0
	ld a, $03                                                  ; $3977 : $3e, $03
	ld bc, $8000                                                  ; $3979 : $01, $00, $80
	out (c), a                                                  ; $397c : $ed, $79
	ld hl, ($40a4)                                                  ; $397e : $2a, $a4, $40
	push hl                                                  ; $3981 : $e5
	ei                                                  ; $3982 : $fb
	jp Jump_01_1ae8                                                  ; $3983 : $c3, $e8, $1a


Jump_01_3986:
	di                                                  ; $3986 : $f3
	ld hl, $35f9                                                  ; $3987 : $21, $f9, $35
	ld de, $4000                                                  ; $398a : $11, $00, $40
	ld bc, $0030                                                  ; $398d : $01, $30, $00
	ldir                                                  ; $3990 : $ed, $b0
	push af                                                  ; $3992 : $f5
	jp $4000                                                  ; $3993 : $c3, $00, $40


Jump_01_3996:
	call Call_01_39cc                                                  ; $3996 : $cd, $cc, $39
	ld bc, $01fd                                                  ; $3999 : $01, $fd, $01
	jp Jump_01_3727                                                  ; $399c : $c3, $27, $37


Jump_01_399f:
	call Call_01_3b25                                                  ; $399f : $cd, $25, $3b
	call Call_01_39cc                                                  ; $39a2 : $cd, $cc, $39
	jp Jump_01_375d                                                  ; $39a5 : $c3, $5d, $37


Jump_01_39a8:
	jr z, br_01_39ae                                                  ; $39a8 : $28, $04

	sub (hl)                                                  ; $39aa : $96
	jp Jump_01_37ec                                                  ; $39ab : $c3, $ec, $37


br_01_39ae:
	ld hl, ($4237)                                                  ; $39ae : $2a, $37, $42
	ld (hl), $20                                                  ; $39b1 : $36, $20
	jp Jump_01_37d9                                                  ; $39b3 : $c3, $d9, $37


Jump_01_39b6:
	ld a, (hl)                                                  ; $39b6 : $7e
	cp $30                                                  ; $39b7 : $fe, $30
	ret c                                                  ; $39b9 : $d8

	cp $3a                                                  ; $39ba : $fe, $3a
	ret nc                                                  ; $39bc : $d0

	call Call_01_3889                                                  ; $39bd : $cd, $89, $38
	jp Jump_01_386b                                                  ; $39c0 : $c3, $6b, $38


Jump_01_39c3:
	call Call_01_39cc                                                  ; $39c3 : $cd, $cc, $39
	ld bc, $01fd                                                  ; $39c6 : $01, $fd, $01
	jp Jump_01_38bb                                                  ; $39c9 : $c3, $bb, $38


Call_01_39cc:
	push hl                                                  ; $39cc : $e5
	push de                                                  ; $39cd : $d5
	push bc                                                  ; $39ce : $c5
	ld bc, $01fe                                                  ; $39cf : $01, $fe, $01
	in a, (c)                                                  ; $39d2 : $ed, $78
	ld b, $08                                                  ; $39d4 : $06, $08

br_01_39d6:
	sla a                                                  ; $39d6 : $cb, $27
	jr nc, br_01_39f5                                                  ; $39d8 : $30, $1b

	djnz br_01_39d6                                                  ; $39da : $10, $fa
	ld bc, $01fd                                                  ; $39dc : $01, $fd, $01
	in a, (c)                                                  ; $39df : $ed, $78
	bit 0, a                                                  ; $39e1 : $cb, $47
	jr nz, br_01_39e9                                                  ; $39e3 : $20, $04

	ld a, $f9                                                  ; $39e5 : $3e, $f9
	jr br_01_39f9                                                  ; $39e7 : $18, $10

br_01_39e9:
	bit 7, a                                                  ; $39e9 : $cb, $7f
	jr nz, br_01_39f1                                                  ; $39eb : $20, $04

	ld a, $f8                                                  ; $39ed : $3e, $f8
	jr br_01_39f9                                                  ; $39ef : $18, $08

br_01_39f1:
	pop bc                                                  ; $39f1 : $c1
	pop de                                                  ; $39f2 : $d1
	pop hl                                                  ; $39f3 : $e1
	ret                                                  ; $39f4 : $c9


br_01_39f5:
	dec b                                                  ; $39f5 : $05
	ld a, $f0                                                  ; $39f6 : $3e, $f0
	add a, b                                                  ; $39f8 : $80

br_01_39f9:
	jp Jump_01_3986                                                  ; $39f9 : $c3, $86, $39


Jump_01_39fc:
	ld a, ($4233)                                                  ; $39fc : $3a, $33, $42
	add a, d                                                  ; $39ff : $82
	sub $13                                                  ; $3a00 : $d6, $13
	jp c, Jump_01_38f8                                                  ; $3a02 : $da, $f8, $38
	push bc                                                  ; $3a05 : $c5
	inc a                                                  ; $3a06 : $3c
	ld c, a                                                  ; $3a07 : $4f
	ld a, d                                                  ; $3a08 : $7a
	sub c                                                  ; $3a09 : $91
	inc a                                                  ; $3a0a : $3c
	ld d, a                                                  ; $3a0b : $57
	ld a, c                                                  ; $3a0c : $79
	pop bc                                                  ; $3a0d : $c1
	jp Jump_01_38f9                                                  ; $3a0e : $c3, $f9, $38


Jump_01_3a11:
	pop af                                                  ; $3a11 : $f1
	or a                                                  ; $3a12 : $b7
	ret z                                                  ; $3a13 : $c8

	dec a                                                  ; $3a14 : $3d
	push af                                                  ; $3a15 : $f5
	push hl                                                  ; $3a16 : $e5
	ld hl, $ffff                                                  ; $3a17 : $21, $ff, $ff
	call Call_01_3b28                                                  ; $3a1a : $cd, $28, $3b
	ld hl, $ffff                                                  ; $3a1d : $21, $ff, $ff
	call Call_01_3b28                                                  ; $3a20 : $cd, $28, $3b
	pop hl                                                  ; $3a23 : $e1
	call Call_01_20fe                                                  ; $3a24 : $cd, $fe, $20
	call Call_01_379d                                                  ; $3a27 : $cd, $9d, $37
	push af                                                  ; $3a2a : $f5
	push bc                                                  ; $3a2b : $c5
	push de                                                  ; $3a2c : $d5
	push hl                                                  ; $3a2d : $e5
	call Call_01_34fd                                                  ; $3a2e : $cd, $fd, $34
	pop hl                                                  ; $3a31 : $e1
	pop de                                                  ; $3a32 : $d1
	pop bc                                                  ; $3a33 : $c1
	pop af                                                  ; $3a34 : $f1
	pop af                                                  ; $3a35 : $f1
	ld d, a                                                  ; $3a36 : $57
	jp Jump_01_38f8                                                  ; $3a37 : $c3, $f8, $38


Jump_01_3a3a:
	ld a, e                                                  ; $3a3a : $7b
	cp $20                                                  ; $3a3b : $fe, $20
	jr c, br_01_3a4a                                                  ; $3a3d : $38, $0b

	cp $80                                                  ; $3a3f : $fe, $80
	jp nc, Jump_01_3a4a                                                  ; $3a41 : $d2, $4a, $3a
	ld hl, ($40d4)                                                  ; $3a44 : $2a, $d4, $40
	jp Jump_01_2a2a                                                  ; $3a47 : $c3, $2a, $2a


Jump_01_3a4a:
br_01_3a4a:
	pop bc                                                  ; $3a4a : $c1
	ld e, $08                                                  ; $3a4b : $1e, $08
	jp Jump_01_1e4c                                                  ; $3a4d : $c3, $4c, $1e


Jump_01_3a50:
	cp $22                                                  ; $3a50 : $fe, $22
	jp z, Jump_01_3a60                                                  ; $3a52 : $ca, $60, $3a

Jump_01_3a55:
	push hl                                                  ; $3a55 : $e5
	cp $2c                                                  ; $3a56 : $fe, $2c
	jp z, Jump_01_3b0c                                                  ; $3a58 : $ca, $0c, $3b
	jp Jump_01_20b3                                                  ; $3a5b : $c3, $b3, $20


	nop                                                  ; $3a5e : $00
	nop                                                  ; $3a5f : $00

Jump_01_3a60:
	push af                                                  ; $3a60 : $f5
	push bc                                                  ; $3a61 : $c5
	ld b, $00                                                  ; $3a62 : $06, $00

Jump_01_3a64:
	dec hl                                                  ; $3a64 : $2b
	inc b                                                  ; $3a65 : $04
	ld a, (hl)                                                  ; $3a66 : $7e
	cp $22                                                  ; $3a67 : $fe, $22
	jp z, Jump_01_3a79                                                  ; $3a69 : $ca, $79, $3a
	cp $20                                                  ; $3a6c : $fe, $20
	jp z, Jump_01_3a64                                                  ; $3a6e : $ca, $64, $3a

br_01_3a71:
	inc hl                                                  ; $3a71 : $23
	djnz br_01_3a71                                                  ; $3a72 : $10, $fd
	pop bc                                                  ; $3a74 : $c1
	pop af                                                  ; $3a75 : $f1
	jp Jump_01_3a55                                                  ; $3a76 : $c3, $55, $3a


Jump_01_3a79:
br_01_3a79:
	inc hl                                                  ; $3a79 : $23
	djnz br_01_3a79                                                  ; $3a7a : $10, $fd
	pop bc                                                  ; $3a7c : $c1
	pop bc                                                  ; $3a7d : $c1
	pop bc                                                  ; $3a7e : $c1
	call Call_01_379d                                                  ; $3a7f : $cd, $9d, $37
	jp Jump_01_1997                                                  ; $3a82 : $c3, $97, $19


	sbc a, l                                                  ; $3a85 : $9d
	scf                                                  ; $3a86 : $37
	call Call_01_34fd                                                  ; $3a87 : $cd, $fd, $34
	pop af                                                  ; $3a8a : $f1
	pop bc                                                  ; $3a8b : $c1
	pop de                                                  ; $3a8c : $d1
	pop hl                                                  ; $3a8d : $e1
	call nz, $e5a7                                                  ; $3a8e : $c4, $a7, $e5
	push de                                                  ; $3a91 : $d5
	push bc                                                  ; $3a92 : $c5
	push af                                                  ; $3a93 : $f5
	call Call_01_379d                                                  ; $3a94 : $cd, $9d, $37
	call $37fd                                                  ; $3a97 : $cd, $fd, $37
	pop af                                                  ; $3a9a : $f1

br_01_3a9b:
	pop bc                                                  ; $3a9b : $c1
	pop de                                                  ; $3a9c : $d1
	pop hl                                                  ; $3a9d : $e1
	call nz, Call_01_0fa7                                                  ; $3a9e : $c4, $a7, $0f
	jp Jump_01_3716                                                  ; $3aa1 : $c3, $16, $37


	and $07                                                  ; $3aa4 : $e6, $07
	jr br_01_3aa9                                                  ; $3aa6 : $18, $01

	pop af                                                  ; $3aa8 : $f1

br_01_3aa9:
	or $80                                                  ; $3aa9 : $f6, $80
	call Call_01_3aba                                                  ; $3aab : $cd, $ba, $3a
	ret                                                  ; $3aae : $c9


	pop af                                                  ; $3aaf : $f1
	jr br_01_3a9b                                                  ; $3ab0 : $18, $e9

	pop af                                                  ; $3ab2 : $f1
	rra                                                  ; $3ab3 : $1f
	jr br_01_3a9b                                                  ; $3ab4 : $18, $e5

Call_01_3ab6:
	or a                                                  ; $3ab6 : $b7
	jp m, Jump_01_3ad8                                                  ; $3ab7 : $fa, $d8, $3a

Call_01_3aba:
br_01_3aba:
	push af                                                  ; $3aba : $f5

br_01_3abb:
	call Call_01_3ae8                                                  ; $3abb : $cd, $e8, $3a
	jp nc, Jump_01_3ac4                                                  ; $3abe : $d2, $c4, $3a
	pop af                                                  ; $3ac1 : $f1
	scf                                                  ; $3ac2 : $37
	ret                                                  ; $3ac3 : $c9


Jump_01_3ac4:
	in a, ($00)                                                  ; $3ac4 : $db, $00
	bit 0, a                                                  ; $3ac6 : $cb, $47
	jr nz, br_01_3abb                                                  ; $3ac8 : $20, $f1

	pop af                                                  ; $3aca : $f1
	out ($0e), a                                                  ; $3acb : $d3, $0e
	out ($0d), a                                                  ; $3acd : $d3, $0d
	cp $0d                                                  ; $3acf : $fe, $0d
	scf                                                  ; $3ad1 : $37
	ccf                                                  ; $3ad2 : $3f
	ret nz                                                  ; $3ad3 : $c0

	ld a, $0a                                                  ; $3ad4 : $3e, $0a
	jr br_01_3aba                                                  ; $3ad6 : $18, $e2

Jump_01_3ad8:
	bit 6, a                                                  ; $3ad8 : $cb, $77
	jp z, Jump_01_2c73                                                  ; $3ada : $ca, $73, $2c
	and $3f                                                  ; $3add : $e6, $3f
	jp Jump_01_3956                                                  ; $3adf : $c3, $56, $39


Call_01_3ae2:
	ld a, $0d                                                  ; $3ae2 : $3e, $0d
	call Call_01_3aba                                                  ; $3ae4 : $cd, $ba, $3a
	ret                                                  ; $3ae7 : $c9


Call_01_3ae8:
	push bc                                                  ; $3ae8 : $c5
	or a                                                  ; $3ae9 : $b7
	jp Jump_01_0269                                                  ; $3aea : $c3, $69, $02


Jump_01_3aed:
	in a, (c)                                                  ; $3aed : $ed, $78
	pop bc                                                  ; $3aef : $c1
	bit 0, a                                                  ; $3af0 : $cb, $47
	ret nz                                                  ; $3af2 : $c0

	ccf                                                  ; $3af3 : $3f
	ret                                                  ; $3af4 : $c9


	ret z                                                  ; $3af5 : $c8

	ccf                                                  ; $3af6 : $3f
	ret                                                  ; $3af7 : $c9


Call_01_3af8:
	call Call_01_3ae8                                                  ; $3af8 : $cd, $e8, $3a
	ret nc                                                  ; $3afb : $d0

	pop hl                                                  ; $3afc : $e1
	pop hl                                                  ; $3afd : $e1

Jump_01_3afe:
	ld a, ($4039)                                                  ; $3afe : $3a, $39, $40
	and $b7                                                  ; $3b01 : $e6, $b7
	ld ($4039), a                                                  ; $3b03 : $32, $39, $40
	ld a, $01                                                  ; $3b06 : $3e, $01
	ei                                                  ; $3b08 : $fb
	jp Jump_01_1da0                                                  ; $3b09 : $c3, $a0, $1d


Jump_01_3b0c:
	ld a, ($409c)                                                  ; $3b0c : $3a, $9c, $40
	or a                                                  ; $3b0f : $b7
	jp nz, Jump_01_2164                                                  ; $3b10 : $c2, $64, $21

br_01_3b13:
	jp Jump_01_38a8                                                  ; $3b13 : $c3, $a8, $38


	or a                                                  ; $3b16 : $b7
	jr nz, br_01_3b13                                                  ; $3b17 : $20, $fa

	jp Jump_01_2164                                                  ; $3b19 : $c3, $64, $21


Call_01_3b1c:
	ld a, ($42af)                                                  ; $3b1c : $3a, $af, $42
	or a                                                  ; $3b1f : $b7
	ret nz                                                  ; $3b20 : $c0

	ld a, ($40a6)                                                  ; $3b21 : $3a, $a6, $40
	ret                                                  ; $3b24 : $c9


Call_01_3b25:
	ld hl, $07ff                                                  ; $3b25 : $21, $ff, $07

Call_01_3b28:
br_01_3b28:
	dec hl                                                  ; $3b28 : $2b
	ld a, l                                                  ; $3b29 : $7d
	or h                                                  ; $3b2a : $b4
	jr nz, br_01_3b28                                                  ; $3b2b : $20, $fb

	ret                                                  ; $3b2d : $c9


Call_01_3b2e:
	call Call_01_20fe                                                  ; $3b2e : $cd, $fe, $20
	ld hl, $4234                                                  ; $3b31 : $21, $34, $42
	bit 0, (hl)                                                  ; $3b34 : $cb, $46
	ret nz                                                  ; $3b36 : $c0

	di                                                  ; $3b37 : $f3
	push hl                                                  ; $3b38 : $e5

br_01_3b39:
	push bc                                                  ; $3b39 : $c5
	ld bc, $01fd                                                  ; $3b3a : $01, $fd, $01
	in a, (c)                                                  ; $3b3d : $ed, $78
	pop bc                                                  ; $3b3f : $c1
	bit 4, a                                                  ; $3b40 : $cb, $67
	jr z, br_01_3b39                                                  ; $3b42 : $28, $f5

	jp Jump_01_3b8f                                                  ; $3b44 : $c3, $8f, $3b


	dec sp                                                  ; $3b47 : $3b
	pop hl                                                  ; $3b48 : $e1

Jump_01_3b49:
	push bc                                                  ; $3b49 : $c5
	ld bc, $01fd                                                  ; $3b4a : $01, $fd, $01
	in a, (c)                                                  ; $3b4d : $ed, $78
	pop bc                                                  ; $3b4f : $c1
	bit 4, a                                                  ; $3b50 : $cb, $67
	jr z, br_01_3b78                                                  ; $3b52 : $28, $24

Jump_01_3b54:
	call Call_01_3af8                                                  ; $3b54 : $cd, $f8, $3a
	push bc                                                  ; $3b57 : $c5
	ld bc, $01fd                                                  ; $3b58 : $01, $fd, $01
	in a, (c)                                                  ; $3b5b : $ed, $78
	pop bc                                                  ; $3b5d : $c1
	bit 2, a                                                  ; $3b5e : $cb, $57
	jr z, br_01_3b68                                                  ; $3b60 : $28, $06

	bit 3, a                                                  ; $3b62 : $cb, $5f
	jr z, br_01_3b73                                                  ; $3b64 : $28, $0d

	jr br_01_3b39                                                  ; $3b66 : $18, $d1

br_01_3b68:
	call Call_01_3634                                                  ; $3b68 : $cd, $34, $36

br_01_3b6b:
	ld hl, $4000                                                  ; $3b6b : $21, $00, $40
	call Call_01_3b28                                                  ; $3b6e : $cd, $28, $3b
	jr br_01_3b39                                                  ; $3b71 : $18, $c6

br_01_3b73:
	call Call_01_3689                                                  ; $3b73 : $cd, $89, $36
	jr br_01_3b6b                                                  ; $3b76 : $18, $f3

br_01_3b78:
	push bc                                                  ; $3b78 : $c5
	ld bc, $01fd                                                  ; $3b79 : $01, $fd, $01
	in a, (c)                                                  ; $3b7c : $ed, $78
	pop bc                                                  ; $3b7e : $c1
	bit 4, a                                                  ; $3b7f : $cb, $67
	jr z, br_01_3b78                                                  ; $3b81 : $28, $f5

	call Call_01_3b25                                                  ; $3b83 : $cd, $25, $3b
	pop hl                                                  ; $3b86 : $e1
	call Call_01_34e3                                                  ; $3b87 : $cd, $e3, $34
	call Call_01_34ef                                                  ; $3b8a : $cd, $ef, $34
	ei                                                  ; $3b8d : $fb
	ret                                                  ; $3b8e : $c9


Jump_01_3b8f:
	push hl                                                  ; $3b8f : $e5
	call Call_01_3b25                                                  ; $3b90 : $cd, $25, $3b
	pop hl                                                  ; $3b93 : $e1
	call Call_01_39cc                                                  ; $3b94 : $cd, $cc, $39
	jp Jump_01_3b49                                                  ; $3b97 : $c3, $49, $3b


Jump_01_3b9a:
	.db $ed                                                  ; $3b9a : $ed
	xor $ed                                                  ; $3b9b : $ee, $ed
	add a, e                                                  ; $3b9d : $83
	add a, b                                                  ; $3b9e : $80
	or (hl)                                                  ; $3b9f : $b6
	or (hl)                                                  ; $3ba0 : $b6
	or (hl)                                                  ; $3ba1 : $b6
	pop bc                                                  ; $3ba2 : $c1
	pop bc                                                  ; $3ba3 : $c1
	cp (hl)                                                  ; $3ba4 : $be
	cp (hl)                                                  ; $3ba5 : $be
	cp (hl)                                                  ; $3ba6 : $be
	.db $dd                                                  ; $3ba7 : $dd
	add a, b                                                  ; $3ba8 : $80
	cp (hl)                                                  ; $3ba9 : $be
	cp (hl)                                                  ; $3baa : $be
	cp (hl)                                                  ; $3bab : $be
	pop bc                                                  ; $3bac : $c1
	add a, b                                                  ; $3bad : $80
	or (hl)                                                  ; $3bae : $b6
	or (hl)                                                  ; $3baf : $b6
	or (hl)                                                  ; $3bb0 : $b6
	cp (hl)                                                  ; $3bb1 : $be
	add a, b                                                  ; $3bb2 : $80
	or $f6                                                  ; $3bb3 : $f6, $f6
	or $fe                                                  ; $3bb5 : $f6, $fe
	pop bc                                                  ; $3bb7 : $c1
	cp (hl)                                                  ; $3bb8 : $be
	cp (hl)                                                  ; $3bb9 : $be
	xor (hl)                                                  ; $3bba : $ae
	adc a, h                                                  ; $3bbb : $8c
	add a, b                                                  ; $3bbc : $80
	rst $30                                                  ; $3bbd : $f7
	rst $30                                                  ; $3bbe : $f7
	rst $30                                                  ; $3bbf : $f7
	add a, b                                                  ; $3bc0 : $80
	rst $38                                                  ; $3bc1 : $ff
	cp (hl)                                                  ; $3bc2 : $be
	add a, b                                                  ; $3bc3 : $80
	cp (hl)                                                  ; $3bc4 : $be
	rst $38                                                  ; $3bc5 : $ff
	rst $18                                                  ; $3bc6 : $df
	cp a                                                  ; $3bc7 : $bf
	cp a                                                  ; $3bc8 : $bf
	ret nz                                                  ; $3bc9 : $c0

	cp $80                                                  ; $3bca : $fe, $80
	rst $30                                                  ; $3bcc : $f7
	ex de, hl                                                  ; $3bcd : $eb
	cp (ix-$80)                                                  ; $3bce : $dd, $be, $80
	cp a                                                  ; $3bd1 : $bf
	cp a                                                  ; $3bd2 : $bf
	cp a                                                  ; $3bd3 : $bf
	cp a                                                  ; $3bd4 : $bf
	add a, b                                                  ; $3bd5 : $80
	.db $fd                                                  ; $3bd6 : $fd
	di                                                  ; $3bd7 : $f3
	.db $fd                                                  ; $3bd8 : $fd
	add a, b                                                  ; $3bd9 : $80
	add a, b                                                  ; $3bda : $80
	.db $fd                                                  ; $3bdb : $fd
	ei                                                  ; $3bdc : $fb
	rst $30                                                  ; $3bdd : $f7
	add a, b                                                  ; $3bde : $80
	pop bc                                                  ; $3bdf : $c1
	cp (hl)                                                  ; $3be0 : $be
	cp (hl)                                                  ; $3be1 : $be
	cp (hl)                                                  ; $3be2 : $be
	pop bc                                                  ; $3be3 : $c1
	add a, b                                                  ; $3be4 : $80
	or $f6                                                  ; $3be5 : $f6, $f6
	or $f9                                                  ; $3be7 : $f6, $f9
	pop bc                                                  ; $3be9 : $c1
	cp (hl)                                                  ; $3bea : $be
	xor (hl)                                                  ; $3beb : $ae
	sbc a, $a1                                                  ; $3bec : $de, $a1
	add a, b                                                  ; $3bee : $80
	or $e6                                                  ; $3bef : $f6, $e6
	sub $b9                                                  ; $3bf1 : $d6, $b9
	exx                                                  ; $3bf3 : $d9
	or (hl)                                                  ; $3bf4 : $b6
	or (hl)                                                  ; $3bf5 : $b6
	or (hl)                                                  ; $3bf6 : $b6
	call $fefe                                                  ; $3bf7 : $cd, $fe, $fe
	add a, b                                                  ; $3bfa : $80
	cp $fe                                                  ; $3bfb : $fe, $fe
	ret nz                                                  ; $3bfd : $c0

	cp a                                                  ; $3bfe : $bf
	cp a                                                  ; $3bff : $bf
	cp a                                                  ; $3c00 : $bf
	ret nz                                                  ; $3c01 : $c0

	ret m                                                  ; $3c02 : $f8

	rst $20                                                  ; $3c03 : $e7
	sbc a, a                                                  ; $3c04 : $9f
	rst $20                                                  ; $3c05 : $e7
	ret m                                                  ; $3c06 : $f8

	add a, b                                                  ; $3c07 : $80
	rst $18                                                  ; $3c08 : $df
	rst $20                                                  ; $3c09 : $e7
	rst $18                                                  ; $3c0a : $df
	add a, b                                                  ; $3c0b : $80
	sbc a, h                                                  ; $3c0c : $9c
	.db $ed                                                  ; $3c0d : $ed
	rst $30                                                  ; $3c0e : $f7
	ex de, hl                                                  ; $3c0f : $eb
	sbc a, h                                                  ; $3c10 : $9c
	call m, $87fb                                                  ; $3c11 : $fc, $fb, $87
	ei                                                  ; $3c14 : $fb
	call m, $ae9e                                                  ; $3c15 : $fc, $9e, $ae
	or (hl)                                                  ; $3c18 : $b6
	cp d                                                  ; $3c19 : $ba
	cp h                                                  ; $3c1a : $bc
	rst $38                                                  ; $3c1b : $ff
	add a, b                                                  ; $3c1c : $80
	cp (hl)                                                  ; $3c1d : $be
	cp (hl)                                                  ; $3c1e : $be
	rst $38                                                  ; $3c1f : $ff
	.db $fd                                                  ; $3c20 : $fd
	ei                                                  ; $3c21 : $fb
	rst $30                                                  ; $3c22 : $f7
	rst $28                                                  ; $3c23 : $ef
	rst $18                                                  ; $3c24 : $df
	rst $38                                                  ; $3c25 : $ff
	cp (hl)                                                  ; $3c26 : $be
	cp (hl)                                                  ; $3c27 : $be
	add a, b                                                  ; $3c28 : $80
	rst $38                                                  ; $3c29 : $ff
	ei                                                  ; $3c2a : $fb
	.db $fd                                                  ; $3c2b : $fd
	add a, b                                                  ; $3c2c : $80
	.db $fd                                                  ; $3c2d : $fd
	ei                                                  ; $3c2e : $fb
	rst $30                                                  ; $3c2f : $f7
	ex (sp), hl                                                  ; $3c30 : $e3
	sub $f7                                                  ; $3c31 : $d6, $f7
	rst $30                                                  ; $3c33 : $f7
	rst $38                                                  ; $3c34 : $ff
	rst $38                                                  ; $3c35 : $ff
	rst $38                                                  ; $3c36 : $ff
	rst $38                                                  ; $3c37 : $ff
	rst $38                                                  ; $3c38 : $ff
	rst $38                                                  ; $3c39 : $ff
	rst $38                                                  ; $3c3a : $ff
	and b                                                  ; $3c3b : $a0
	rst $38                                                  ; $3c3c : $ff
	rst $38                                                  ; $3c3d : $ff
	rst $38                                                  ; $3c3e : $ff
	ret m                                                  ; $3c3f : $f8

	rst $38                                                  ; $3c40 : $ff
	ret m                                                  ; $3c41 : $f8

	rst $38                                                  ; $3c42 : $ff
	ex de, hl                                                  ; $3c43 : $eb
	add a, b                                                  ; $3c44 : $80
	ex de, hl                                                  ; $3c45 : $eb
	add a, b                                                  ; $3c46 : $80
	.db $ed                                                  ; $3c47 : $ed
	in a, ($d6)                                                  ; $3c48 : $db, $d6
	add a, b                                                  ; $3c4a : $80
	sub $ed                                                  ; $3c4b : $d6, $ed
	exx                                                  ; $3c4d : $d9
	jp (hl)                                                  ; $3c4e : $e9


	rst $30                                                  ; $3c4f : $f7
	set 1, l                                                  ; $3c50 : $cb, $cd
	ret                                                  ; $3c52 : $c9


	sub $a9                                                  ; $3c53 : $d6, $a9
	rst $18                                                  ; $3c55 : $df
	xor a                                                  ; $3c56 : $af
	rst $30                                                  ; $3c57 : $f7
	ret m                                                  ; $3c58 : $f8

	call m, $ffff                                                  ; $3c59 : $fc, $ff, $ff
	rst $38                                                  ; $3c5c : $ff
	ex (sp), hl                                                  ; $3c5d : $e3
	cp (ix-$01)                                                  ; $3c5e : $dd, $be, $ff
	rst $38                                                  ; $3c61 : $ff
	cp (hl)                                                  ; $3c62 : $be
	ex (sp), ix                                                  ; $3c63 : $dd, $e3
	rst $38                                                  ; $3c65 : $ff
	sub $e3                                                  ; $3c66 : $d6, $e3
	add a, b                                                  ; $3c68 : $80
	ex (sp), hl                                                  ; $3c69 : $e3
	push de                                                  ; $3c6a : $d5
	rst $30                                                  ; $3c6b : $f7
	rst $30                                                  ; $3c6c : $f7
	pop bc                                                  ; $3c6d : $c1
	rst $30                                                  ; $3c6e : $f7
	rst $30                                                  ; $3c6f : $f7
	rst $18                                                  ; $3c70 : $df
	rst $00                                                  ; $3c71 : $c7
	rst $30                                                  ; $3c72 : $f7
	rst $38                                                  ; $3c73 : $ff
	rst $38                                                  ; $3c74 : $ff
	rst $30                                                  ; $3c75 : $f7
	rst $30                                                  ; $3c76 : $f7
	rst $30                                                  ; $3c77 : $f7
	rst $30                                                  ; $3c78 : $f7
	rst $30                                                  ; $3c79 : $f7
	rst $38                                                  ; $3c7a : $ff
	sbc a, a                                                  ; $3c7b : $9f
	sbc a, a                                                  ; $3c7c : $9f
	rst $38                                                  ; $3c7d : $ff
	rst $38                                                  ; $3c7e : $ff
	rst $18                                                  ; $3c7f : $df
	rst $28                                                  ; $3c80 : $ef
	rst $30                                                  ; $3c81 : $f7
	ei                                                  ; $3c82 : $fb
	.db $fd                                                  ; $3c83 : $fd
	pop bc                                                  ; $3c84 : $c1
	xor (hl)                                                  ; $3c85 : $ae
	or (hl)                                                  ; $3c86 : $b6
	cp d                                                  ; $3c87 : $ba
	pop bc                                                  ; $3c88 : $c1
	rst $38                                                  ; $3c89 : $ff
	cp l                                                  ; $3c8a : $bd
	add a, b                                                  ; $3c8b : $80
	cp a                                                  ; $3c8c : $bf
	rst $38                                                  ; $3c8d : $ff
	sbc a, l                                                  ; $3c8e : $9d
	xor (hl)                                                  ; $3c8f : $ae
	or (hl)                                                  ; $3c90 : $b6
	cp d                                                  ; $3c91 : $ba
	cp l                                                  ; $3c92 : $bd
	.db $dd                                                  ; $3c93 : $dd
	cp e                                                  ; $3c94 : $bb
	cp e                                                  ; $3c95 : $bb
	cp e                                                  ; $3c96 : $bb
	ret                                                  ; $3c97 : $c9


	rst $20                                                  ; $3c98 : $e7
	ex de, hl                                                  ; $3c99 : $eb
	.db $ed                                                  ; $3c9a : $ed
	add a, b                                                  ; $3c9b : $80
	rst $28                                                  ; $3c9c : $ef
	ret c                                                  ; $3c9d : $d8

	cp d                                                  ; $3c9e : $ba
	jp c, $c6da                                                  ; $3c9f : $da, $da, $c6
	pop bc                                                  ; $3ca2 : $c1
	or (hl)                                                  ; $3ca3 : $b6
	or (hl)                                                  ; $3ca4 : $b6
	or (hl)                                                  ; $3ca5 : $b6
	rst $08                                                  ; $3ca6 : $cf
	call m, $86fe                                                  ; $3ca7 : $fc, $fe, $86
	jp m, $c9fc                                                  ; $3caa : $fa, $fc, $c9
	or (hl)                                                  ; $3cad : $b6
	or (hl)                                                  ; $3cae : $b6
	or (hl)                                                  ; $3caf : $b6
	ret                                                  ; $3cb0 : $c9


	ld sp, hl                                                  ; $3cb1 : $f9
	or (hl)                                                  ; $3cb2 : $b6
	or (hl)                                                  ; $3cb3 : $b6
	or (hl)                                                  ; $3cb4 : $b6
	pop bc                                                  ; $3cb5 : $c1
	rst $38                                                  ; $3cb6 : $ff
	ret                                                  ; $3cb7 : $c9


	ret                                                  ; $3cb8 : $c9


	rst $38                                                  ; $3cb9 : $ff
	rst $38                                                  ; $3cba : $ff
	cp a                                                  ; $3cbb : $bf
	call nz, $ffe4                                                  ; $3cbc : $c4, $e4, $ff
	rst $38                                                  ; $3cbf : $ff
	rst $30                                                  ; $3cc0 : $f7
	ex de, hl                                                  ; $3cc1 : $eb
	.db $dd                                                  ; $3cc2 : $dd
	sbc a, $de                                                  ; $3cc3 : $de, $de
	ex de, hl                                                  ; $3cc5 : $eb
	ex de, hl                                                  ; $3cc6 : $eb
	ex de, hl                                                  ; $3cc7 : $eb
	ex de, hl                                                  ; $3cc8 : $eb
	ex de, hl                                                  ; $3cc9 : $eb
	sbc a, $de                                                  ; $3cca : $de, $de
	.db $dd                                                  ; $3ccc : $dd
	ex de, hl                                                  ; $3ccd : $eb
	rst $30                                                  ; $3cce : $f7
	.db $fd                                                  ; $3ccf : $fd
	cp $a6                                                  ; $3cd0 : $fe, $a6
	jp m, $cbfd                                                  ; $3cd2 : $fa, $fd, $cb
	dec sp                                                  ; $3cd5 : $3b
	inc e                                                  ; $3cd6 : $1c

Jump_01_3cd7:
br_01_3cd7:
	ld a, (hl)                                                  ; $3cd7 : $7e
	inc hl                                                  ; $3cd8 : $23
	or a                                                  ; $3cd9 : $b7
	jp p, Jump_01_3cd7                                                  ; $3cda : $f2, $d7, $3c
	dec e                                                  ; $3cdd : $1d
	jr nz, br_01_3cd7                                                  ; $3cde : $20, $f7

	and $7f                                                  ; $3ce0 : $e6, $7f

Jump_01_3ce2:
	call Call_01_032a                                                  ; $3ce2 : $cd, $2a, $03
	ld a, (hl)                                                  ; $3ce5 : $7e
	inc hl                                                  ; $3ce6 : $23
	or a                                                  ; $3ce7 : $b7
	jp p, Jump_01_3ce2                                                  ; $3ce8 : $f2, $e2, $3c
	ret                                                  ; $3ceb : $c9


	adc a, $45                                                  ; $3cec : $ce, $45
	ld e, b                                                  ; $3cee : $58
	ld d, h                                                  ; $3cef : $54
	jr nz, br_01_3d49                                                  ; $3cf0 : $20, $57

	ld c, c                                                  ; $3cf2 : $49
	ld d, h                                                  ; $3cf3 : $54
	ld c, b                                                  ; $3cf4 : $48
	ld c, a                                                  ; $3cf5 : $4f
	ld d, l                                                  ; $3cf6 : $55
	ld d, h                                                  ; $3cf7 : $54
	jr nz, br_01_3d40                                                  ; $3cf8 : $20, $46

	ld c, a                                                  ; $3cfa : $4f
	ld d, d                                                  ; $3cfb : $52
	out ($59), a                                                  ; $3cfc : $d3, $59
	ld c, (hl)                                                  ; $3cfe : $4e
	ld d, h                                                  ; $3cff : $54
	ld b, c                                                  ; $3d00 : $41
	ld e, b                                                  ; $3d01 : $58
	jp nc, $5445                                                  ; $3d02 : $d2, $45, $54
	daa                                                  ; $3d05 : $27
	ld c, (hl)                                                  ; $3d06 : $4e
	jr nz, br_01_3d60                                                  ; $3d07 : $20, $57

	ld c, c                                                  ; $3d09 : $49
	ld d, h                                                  ; $3d0a : $54
	ld c, b                                                  ; $3d0b : $48
	ld c, a                                                  ; $3d0c : $4f
	ld d, l                                                  ; $3d0d : $55
	ld d, h                                                  ; $3d0e : $54
	jr nz, br_01_3d58                                                  ; $3d0f : $20, $47

	ld c, a                                                  ; $3d11 : $4f
	ld d, e                                                  ; $3d12 : $53
	ld d, l                                                  ; $3d13 : $55
	ld b, d                                                  ; $3d14 : $42
	rst $08                                                  ; $3d15 : $cf
	ld d, l                                                  ; $3d16 : $55
	ld d, h                                                  ; $3d17 : $54
	jr nz, br_01_3d69                                                  ; $3d18 : $20, $4f

	ld b, (hl)                                                  ; $3d1a : $46
	jr nz, $44                                                  ; $3d1b : $20, $44

	ld b, c                                                  ; $3d1d : $41
	ld d, h                                                  ; $3d1e : $54
	ld b, c                                                  ; $3d1f : $41
	add a, $55                                                  ; $3d20 : $c6, $55
	ld c, (hl)                                                  ; $3d22 : $4e
	ld b, e                                                  ; $3d23 : $43
	ld d, h                                                  ; $3d24 : $54
	ld c, c                                                  ; $3d25 : $49
	ld c, a                                                  ; $3d26 : $4f
	ld c, (hl)                                                  ; $3d27 : $4e
	jr nz, br_01_3d6d                                                  ; $3d28 : $20, $43

	ld c, a                                                  ; $3d2a : $4f
	ld b, h                                                  ; $3d2b : $44
	ld b, l                                                  ; $3d2c : $45
	rst $08                                                  ; $3d2d : $cf
	ld d, (hl)                                                  ; $3d2e : $56
	ld b, l                                                  ; $3d2f : $45
	ld d, d                                                  ; $3d30 : $52
	ld b, (hl)                                                  ; $3d31 : $46
	ld c, h                                                  ; $3d32 : $4c
	ld c, a                                                  ; $3d33 : $4f
	ld d, a                                                  ; $3d34 : $57
	rst $08                                                  ; $3d35 : $cf
	ld d, l                                                  ; $3d36 : $55
	ld d, h                                                  ; $3d37 : $54
	jr nz, br_01_3d89                                                  ; $3d38 : $20, $4f

	ld b, (hl)                                                  ; $3d3a : $46
	jr nz, br_01_3d8a                                                  ; $3d3b : $20, $4d

	ld b, l                                                  ; $3d3d : $45
	ld c, l                                                  ; $3d3e : $4d
	ld c, a                                                  ; $3d3f : $4f

br_01_3d40:
	ld d, d                                                  ; $3d40 : $52
	ld e, c                                                  ; $3d41 : $59
	push de                                                  ; $3d42 : $d5
	ld c, (hl)                                                  ; $3d43 : $4e
	ld b, h                                                  ; $3d44 : $44
	ld b, l                                                  ; $3d45 : $45
	ld b, (hl)                                                  ; $3d46 : $46
	daa                                                  ; $3d47 : $27
	ld b, h                                                  ; $3d48 : $44

br_01_3d49:
	jr nz, br_01_3d9e                                                  ; $3d49 : $20, $53

	ld d, h                                                  ; $3d4b : $54
	ld b, c                                                  ; $3d4c : $41
	ld d, h                                                  ; $3d4d : $54
	ld b, l                                                  ; $3d4e : $45
	ld c, l                                                  ; $3d4f : $4d
	ld b, l                                                  ; $3d50 : $45
	ld c, (hl)                                                  ; $3d51 : $4e
	ld d, h                                                  ; $3d52 : $54
	jp nz, $4441                                                  ; $3d53 : $c2, $41, $44
	jr nz, $53                                                  ; $3d56 : $20, $53

br_01_3d58:
	ld d, l                                                  ; $3d58 : $55
	ld b, d                                                  ; $3d59 : $42
	ld d, e                                                  ; $3d5a : $53
	ld b, e                                                  ; $3d5b : $43
	ld d, d                                                  ; $3d5c : $52
	ld c, c                                                  ; $3d5d : $49
	ld d, b                                                  ; $3d5e : $50
	ld d, h                                                  ; $3d5f : $54

br_01_3d60:
	jp nc, $4445                                                  ; $3d60 : $d2, $45, $44
	ld c, c                                                  ; $3d63 : $49
	ld c, l                                                  ; $3d64 : $4d
	daa                                                  ; $3d65 : $27
	ld b, h                                                  ; $3d66 : $44
	jr nz, br_01_3daa                                                  ; $3d67 : $20, $41

br_01_3d69:
	ld d, d                                                  ; $3d69 : $52
	ld d, d                                                  ; $3d6a : $52
	ld b, c                                                  ; $3d6b : $41
	ld e, c                                                  ; $3d6c : $59

br_01_3d6d:
	call nz, $5649                                                  ; $3d6d : $c4, $49, $56
	ld c, c                                                  ; $3d70 : $49
	ld d, e                                                  ; $3d71 : $53
	ld c, c                                                  ; $3d72 : $49
	ld c, a                                                  ; $3d73 : $4f
	ld c, (hl)                                                  ; $3d74 : $4e
	jr nz, br_01_3db9                                                  ; $3d75 : $20, $42

	ld e, c                                                  ; $3d77 : $59
	jr nz, br_01_3dd4                                                  ; $3d78 : $20, $5a

	ld b, l                                                  ; $3d7a : $45
	ld d, d                                                  ; $3d7b : $52
	ld c, a                                                  ; $3d7c : $4f
	ret                                                  ; $3d7d : $c9


	ld c, h                                                  ; $3d7e : $4c
	ld c, h                                                  ; $3d7f : $4c
	ld b, l                                                  ; $3d80 : $45
	ld b, a                                                  ; $3d81 : $47
	ld b, c                                                  ; $3d82 : $41
	ld c, h                                                  ; $3d83 : $4c
	jr nz, br_01_3dca                                                  ; $3d84 : $20, $44

	ld c, c                                                  ; $3d86 : $49
	ld d, d                                                  ; $3d87 : $52
	ld b, l                                                  ; $3d88 : $45

br_01_3d89:
	ld b, e                                                  ; $3d89 : $43

br_01_3d8a:
	ld d, h                                                  ; $3d8a : $54
	call nc, $5059                                                  ; $3d8b : $d4, $59, $50
	ld b, l                                                  ; $3d8e : $45
	jr nz, br_01_3dde                                                  ; $3d8f : $20, $4d

	ld c, c                                                  ; $3d91 : $49
	ld d, e                                                  ; $3d92 : $53
	ld c, l                                                  ; $3d93 : $4d
	ld b, c                                                  ; $3d94 : $41
	ld d, h                                                  ; $3d95 : $54
	ld b, e                                                  ; $3d96 : $43
	ld c, b                                                  ; $3d97 : $48
	rst $08                                                  ; $3d98 : $cf
	ld d, l                                                  ; $3d99 : $55
	ld d, h                                                  ; $3d9a : $54
	jr nz, br_01_3dec                                                  ; $3d9b : $20, $4f

	ld b, (hl)                                                  ; $3d9d : $46

br_01_3d9e:
	jr nz, $53                                                  ; $3d9e : $20, $53

	ld d, b                                                  ; $3da0 : $50
	ld b, c                                                  ; $3da1 : $41
	ld b, e                                                  ; $3da2 : $43
	ld b, l                                                  ; $3da3 : $45
	out ($54), a                                                  ; $3da4 : $d3, $54
	ld d, d                                                  ; $3da6 : $52
	ld c, c                                                  ; $3da7 : $49
	ld c, (hl)                                                  ; $3da8 : $4e
	ld b, a                                                  ; $3da9 : $47

br_01_3daa:
	jr nz, br_01_3e00                                                  ; $3daa : $20, $54

	ld c, a                                                  ; $3dac : $4f
	ld c, a                                                  ; $3dad : $4f
	jr nz, br_01_3dfc                                                  ; $3dae : $20, $4c

	ld c, a                                                  ; $3db0 : $4f
	ld c, (hl)                                                  ; $3db1 : $4e
	ld b, a                                                  ; $3db2 : $47
	add a, $4f                                                  ; $3db3 : $c6, $4f
	ld d, d                                                  ; $3db5 : $52
	ld c, l                                                  ; $3db6 : $4d
	ld d, l                                                  ; $3db7 : $55
	ld c, h                                                  ; $3db8 : $4c

br_01_3db9:
	ld b, c                                                  ; $3db9 : $41
	jr nz, $54                                                  ; $3dba : $20, $54

	ld c, a                                                  ; $3dbc : $4f
	ld c, a                                                  ; $3dbd : $4f
	jr nz, $43                                                  ; $3dbe : $20, $43

	ld c, a                                                  ; $3dc0 : $4f
	ld c, l                                                  ; $3dc1 : $4d
	ld d, b                                                  ; $3dc2 : $50
	ld c, h                                                  ; $3dc3 : $4c
	ld b, l                                                  ; $3dc4 : $45
	ld e, b                                                  ; $3dc5 : $58
	jp $4e41                                                  ; $3dc6 : $c3, $41, $4e


	daa                                                  ; $3dc9 : $27

br_01_3dca:
	ld d, h                                                  ; $3dca : $54
	jr nz, $43                                                  ; $3dcb : $20, $43

	ld c, a                                                  ; $3dcd : $4f
	ld c, (hl)                                                  ; $3dce : $4e
	ld d, h                                                  ; $3dcf : $54
	adc a, $4f                                                  ; $3dd0 : $ce, $4f
	jr nz, br_01_3e26                                                  ; $3dd2 : $20, $52

br_01_3dd4:
	ld b, l                                                  ; $3dd4 : $45
	ld d, e                                                  ; $3dd5 : $53
	ld d, l                                                  ; $3dd6 : $55
	ld c, l                                                  ; $3dd7 : $4d
	ld b, l                                                  ; $3dd8 : $45
	jp nc, $5345                                                  ; $3dd9 : $d2, $45, $53
	ld d, l                                                  ; $3ddc : $55
	ld c, l                                                  ; $3ddd : $4d

br_01_3dde:
	ld b, l                                                  ; $3dde : $45
	jr nz, br_01_3e38                                                  ; $3ddf : $20, $57

	ld c, c                                                  ; $3de1 : $49
	ld d, h                                                  ; $3de2 : $54
	ld c, b                                                  ; $3de3 : $48
	ld c, a                                                  ; $3de4 : $4f
	ld d, l                                                  ; $3de5 : $55
	ld d, h                                                  ; $3de6 : $54
	push de                                                  ; $3de7 : $d5
	ld c, (hl)                                                  ; $3de8 : $4e
	ld d, b                                                  ; $3de9 : $50
	ld d, d                                                  ; $3dea : $52
	ld c, c                                                  ; $3deb : $49

br_01_3dec:
	ld c, (hl)                                                  ; $3dec : $4e
	ld d, h                                                  ; $3ded : $54
	ld b, c                                                  ; $3dee : $41
	ld b, d                                                  ; $3def : $42
	ld c, h                                                  ; $3df0 : $4c
	ld b, l                                                  ; $3df1 : $45
	call $5349                                                  ; $3df2 : $cd, $49, $53
	ld d, e                                                  ; $3df5 : $53
	ld c, c                                                  ; $3df6 : $49
	ld c, (hl)                                                  ; $3df7 : $4e
	ld b, a                                                  ; $3df8 : $47
	jr nz, br_01_3e4a                                                  ; $3df9 : $20, $4f

	ld d, b                                                  ; $3dfb : $50

br_01_3dfc:
	ld b, l                                                  ; $3dfc : $45
	ld d, d                                                  ; $3dfd : $52
	ld b, c                                                  ; $3dfe : $41
	ld c, (hl)                                                  ; $3dff : $4e

br_01_3e00:
	ld b, h                                                  ; $3e00 : $44
	jp nz, $4441                                                  ; $3e01 : $c2, $41, $44
	jr nz, br_01_3e4c                                                  ; $3e04 : $20, $46

	ld c, c                                                  ; $3e06 : $49
	ld c, h                                                  ; $3e07 : $4c
	ld b, l                                                  ; $3e08 : $45
	jr nz, br_01_3e4f                                                  ; $3e09 : $20, $44

	ld b, c                                                  ; $3e0b : $41
	ld d, h                                                  ; $3e0c : $54
	ld b, c                                                  ; $3e0d : $41
	call nz, $5349                                                  ; $3e0e : $c4, $49, $53
	ld c, e                                                  ; $3e11 : $4b
	jr nz, br_01_3e57                                                  ; $3e12 : $20, $43

	ld c, a                                                  ; $3e14 : $4f
	ld c, l                                                  ; $3e15 : $4d
	ld c, l                                                  ; $3e16 : $4d
	ld b, c                                                  ; $3e17 : $41
	ld c, (hl)                                                  ; $3e18 : $4e
	ld b, h                                                  ; $3e19 : $44
	ccf                                                  ; $3e1a : $3f
	ld d, e                                                  ; $3e1b : $53
	ld e, c                                                  ; $3e1c : $59
	ld c, (hl)                                                  ; $3e1d : $4e
	ld d, h                                                  ; $3e1e : $54
	ld b, c                                                  ; $3e1f : $41
	ld e, b                                                  ; $3e20 : $58
	jr nz, br_01_3e68                                                  ; $3e21 : $20, $45

	ld d, d                                                  ; $3e23 : $52
	ld d, d                                                  ; $3e24 : $52
	ld c, a                                                  ; $3e25 : $4f

br_01_3e26:
	ld d, d                                                  ; $3e26 : $52
	dec c                                                  ; $3e27 : $0d
	nop                                                  ; $3e28 : $00

Jump_01_3e29:
	ld a, (hl)                                                  ; $3e29 : $7e
	or a                                                  ; $3e2a : $b7
	jr nz, br_01_3e34                                                  ; $3e2b : $20, $07

	ld a, $20                                                  ; $3e2d : $3e, $20
	ld (hl), a                                                  ; $3e2f : $77
	inc hl                                                  ; $3e30 : $23
	xor a                                                  ; $3e31 : $af
	ld (hl), a                                                  ; $3e32 : $77
	dec hl                                                  ; $3e33 : $2b

br_01_3e34:
	dec hl                                                  ; $3e34 : $2b
	pop af                                                  ; $3e35 : $f1
	ret                                                  ; $3e36 : $c9


	nop                                                  ; $3e37 : $00

br_01_3e38:
	nop                                                  ; $3e38 : $00
	nop                                                  ; $3e39 : $00
	nop                                                  ; $3e3a : $00
	nop                                                  ; $3e3b : $00
	nop                                                  ; $3e3c : $00
	nop                                                  ; $3e3d : $00
	nop                                                  ; $3e3e : $00
	nop                                                  ; $3e3f : $00
	nop                                                  ; $3e40 : $00
	nop                                                  ; $3e41 : $00
	nop                                                  ; $3e42 : $00
	nop                                                  ; $3e43 : $00
	nop                                                  ; $3e44 : $00
	nop                                                  ; $3e45 : $00
	nop                                                  ; $3e46 : $00
	nop                                                  ; $3e47 : $00
	nop                                                  ; $3e48 : $00
	nop                                                  ; $3e49 : $00

br_01_3e4a:
	nop                                                  ; $3e4a : $00
	nop                                                  ; $3e4b : $00

br_01_3e4c:
	nop                                                  ; $3e4c : $00
	nop                                                  ; $3e4d : $00
	nop                                                  ; $3e4e : $00

br_01_3e4f:
	nop                                                  ; $3e4f : $00
	nop                                                  ; $3e50 : $00
	nop                                                  ; $3e51 : $00
	nop                                                  ; $3e52 : $00
	nop                                                  ; $3e53 : $00
	nop                                                  ; $3e54 : $00
	nop                                                  ; $3e55 : $00
	nop                                                  ; $3e56 : $00

br_01_3e57:
	nop                                                  ; $3e57 : $00
	nop                                                  ; $3e58 : $00
	nop                                                  ; $3e59 : $00
	nop                                                  ; $3e5a : $00
	nop                                                  ; $3e5b : $00
	nop                                                  ; $3e5c : $00
	nop                                                  ; $3e5d : $00
	nop                                                  ; $3e5e : $00
	nop                                                  ; $3e5f : $00
	nop                                                  ; $3e60 : $00
	nop                                                  ; $3e61 : $00
	nop                                                  ; $3e62 : $00
	nop                                                  ; $3e63 : $00
	nop                                                  ; $3e64 : $00
	nop                                                  ; $3e65 : $00
	nop                                                  ; $3e66 : $00
	nop                                                  ; $3e67 : $00

br_01_3e68:
	nop                                                  ; $3e68 : $00
	nop                                                  ; $3e69 : $00
	nop                                                  ; $3e6a : $00
	nop                                                  ; $3e6b : $00
	nop                                                  ; $3e6c : $00
	nop                                                  ; $3e6d : $00
	nop                                                  ; $3e6e : $00
	nop                                                  ; $3e6f : $00
	nop                                                  ; $3e70 : $00
	nop                                                  ; $3e71 : $00
	nop                                                  ; $3e72 : $00
	nop                                                  ; $3e73 : $00
	nop                                                  ; $3e74 : $00
	nop                                                  ; $3e75 : $00
	nop                                                  ; $3e76 : $00
	nop                                                  ; $3e77 : $00
	nop                                                  ; $3e78 : $00
	nop                                                  ; $3e79 : $00
	nop                                                  ; $3e7a : $00
	nop                                                  ; $3e7b : $00
	ld b, l                                                  ; $3e7c : $45
	ld a, a                                                  ; $3e7d : $7f
	ld b, b                                                  ; $3e7e : $40
	cp a                                                  ; $3e7f : $bf

Call_01_3e80:
br_01_3e80:
	dec bc                                                  ; $3e80 : $0b
	ld a, c                                                  ; $3e81 : $79
	or b                                                  ; $3e82 : $b0
	jr nz, br_01_3e80                                                  ; $3e83 : $20, $fb

	ret                                                  ; $3e85 : $c9


Jump_01_3e86:
	out (c), a                                                  ; $3e86 : $ed, $79
	pop bc                                                  ; $3e88 : $c1
	push bc                                                  ; $3e89 : $c5
	pop hl                                                  ; $3e8a : $e1
	call Call_01_3e80                                                  ; $3e8b : $cd, $80, $3e
	pop bc                                                  ; $3e8e : $c1
	ret                                                  ; $3e8f : $c9


Jump_01_3e90:
	push de                                                  ; $3e90 : $d5
	push ix                                                  ; $3e91 : $dd, $e5
	ld ix, ($423a)                                                  ; $3e93 : $dd, $2a, $3a, $42
	ld ($423a), sp                                                  ; $3e97 : $ed, $73, $3a, $42
	ld de, ($423a)                                                  ; $3e9b : $ed, $5b, $3a, $42
	ld hl, ($4250)                                                  ; $3e9f : $2a, $50, $42
	xor a                                                  ; $3ea2 : $af
	sbc hl, de                                                  ; $3ea3 : $ed, $52
	jr z, br_01_3eb1                                                  ; $3ea5 : $28, $0a

	xor a                                                  ; $3ea7 : $af
	ld ($423b), a                                                  ; $3ea8 : $32, $3b, $42
	ld ($4250), sp                                                  ; $3eab : $ed, $73, $50, $42
	jr br_01_3eb5                                                  ; $3eaf : $18, $04

br_01_3eb1:
	ld ($423a), ix                                                  ; $3eb1 : $dd, $22, $3a, $42

br_01_3eb5:
	pop ix                                                  ; $3eb5 : $dd, $e1
	pop de                                                  ; $3eb7 : $d1
	ld hl, $423a                                                  ; $3eb8 : $21, $3a, $42
	jp Jump_01_2f86                                                  ; $3ebb : $c3, $86, $2f


Jump_01_3ebe:
	ld hl, $ffff                                                  ; $3ebe : $21, $ff, $ff
	call Call_01_3b28                                                  ; $3ec1 : $cd, $28, $3b
	call Call_01_379d                                                  ; $3ec4 : $cd, $9d, $37
	ld hl, ($40e6)                                                  ; $3ec7 : $2a, $e6, $40
	ret                                                  ; $3eca : $c9


Jump_01_3ecb:
	call Call_01_28a7                                                  ; $3ecb : $cd, $a7, $28
	ld hl, $ffff                                                  ; $3ece : $21, $ff, $ff
	call Call_01_3b28                                                  ; $3ed1 : $cd, $28, $3b
	call Call_01_379d                                                  ; $3ed4 : $cd, $9d, $37
	jp Jump_01_2282                                                  ; $3ed7 : $c3, $82, $22


	ld (bc), a                                                  ; $3eda : $02
	ld b, d                                                  ; $3edb : $42
	ld (bc), a                                                  ; $3edc : $02
	ld a, a                                                  ; $3edd : $7f
	ld b, b                                                  ; $3ede : $40
	cp a                                                  ; $3edf : $bf
	ld l, $fd                                                  ; $3ee0 : $2e, $fd
	rst $38                                                  ; $3ee2 : $ff
	dec h                                                  ; $3ee3 : $25
	ld b, b                                                  ; $3ee4 : $40
	dec c                                                  ; $3ee5 : $0d
	ld (bc), a                                                  ; $3ee6 : $02
	ld b, d                                                  ; $3ee7 : $42
	ld (bc), a                                                  ; $3ee8 : $02
	ld a, a                                                  ; $3ee9 : $7f
	ld b, b                                                  ; $3eea : $40
	cp a                                                  ; $3eeb : $bf
	ld l, $fd                                                  ; $3eec : $2e, $fd
	rst $38                                                  ; $3eee : $ff
	dec h                                                  ; $3eef : $25
	ld b, b                                                  ; $3ef0 : $40
	dec c                                                  ; $3ef1 : $0d
	ld (bc), a                                                  ; $3ef2 : $02
	ld b, d                                                  ; $3ef3 : $42
	ld (bc), a                                                  ; $3ef4 : $02
	ld a, a                                                  ; $3ef5 : $7f
	ld b, b                                                  ; $3ef6 : $40
	cp a                                                  ; $3ef7 : $bf
	ld l, $fd                                                  ; $3ef8 : $2e, $fd
	rst $38                                                  ; $3efa : $ff
	dec h                                                  ; $3efb : $25
	ld b, b                                                  ; $3efc : $40
	dec c                                                  ; $3efd : $0d
	ld (bc), a                                                  ; $3efe : $02
	ld b, d                                                  ; $3eff : $42
	ld (bc), a                                                  ; $3f00 : $02
	ld a, a                                                  ; $3f01 : $7f
	ld b, b                                                  ; $3f02 : $40
	cp a                                                  ; $3f03 : $bf
	ld l, $fd                                                  ; $3f04 : $2e, $fd
	rst $38                                                  ; $3f06 : $ff
	dec h                                                  ; $3f07 : $25
	ld b, b                                                  ; $3f08 : $40
	dec c                                                  ; $3f09 : $0d
	ld (bc), a                                                  ; $3f0a : $02
	ld b, d                                                  ; $3f0b : $42
	ld (bc), a                                                  ; $3f0c : $02
	ld a, a                                                  ; $3f0d : $7f
	ld b, b                                                  ; $3f0e : $40
	cp a                                                  ; $3f0f : $bf
	ld l, $fd                                                  ; $3f10 : $2e, $fd
	rst $38                                                  ; $3f12 : $ff
	dec h                                                  ; $3f13 : $25
	ld b, b                                                  ; $3f14 : $40
	dec c                                                  ; $3f15 : $0d
	ld (bc), a                                                  ; $3f16 : $02
	ld b, d                                                  ; $3f17 : $42
	ld (bc), a                                                  ; $3f18 : $02
	ld a, a                                                  ; $3f19 : $7f
	ld b, b                                                  ; $3f1a : $40
	cp a                                                  ; $3f1b : $bf
	ld l, $fd                                                  ; $3f1c : $2e, $fd
	rst $38                                                  ; $3f1e : $ff
	dec h                                                  ; $3f1f : $25
	ld b, b                                                  ; $3f20 : $40
	dec c                                                  ; $3f21 : $0d
	ld (bc), a                                                  ; $3f22 : $02
	ld b, d                                                  ; $3f23 : $42
	ld (bc), a                                                  ; $3f24 : $02
	ld a, a                                                  ; $3f25 : $7f
	ld b, b                                                  ; $3f26 : $40
	cp a                                                  ; $3f27 : $bf
	ld l, $fd                                                  ; $3f28 : $2e, $fd
	rst $38                                                  ; $3f2a : $ff
	dec h                                                  ; $3f2b : $25
	ld b, b                                                  ; $3f2c : $40
	dec c                                                  ; $3f2d : $0d
	ld (bc), a                                                  ; $3f2e : $02
	ld b, d                                                  ; $3f2f : $42
	ld (bc), a                                                  ; $3f30 : $02
	ld a, a                                                  ; $3f31 : $7f
	ld b, b                                                  ; $3f32 : $40
	cp a                                                  ; $3f33 : $bf
	ld l, $fd                                                  ; $3f34 : $2e, $fd
	rst $38                                                  ; $3f36 : $ff
	dec h                                                  ; $3f37 : $25
	ld b, b                                                  ; $3f38 : $40
	dec c                                                  ; $3f39 : $0d
	ld (bc), a                                                  ; $3f3a : $02
	ld b, d                                                  ; $3f3b : $42
	ld (bc), a                                                  ; $3f3c : $02
	ld a, a                                                  ; $3f3d : $7f
	ld b, b                                                  ; $3f3e : $40
	cp a                                                  ; $3f3f : $bf
	ld l, $fd                                                  ; $3f40 : $2e, $fd
	rst $38                                                  ; $3f42 : $ff
	dec h                                                  ; $3f43 : $25
	ld b, b                                                  ; $3f44 : $40
	dec c                                                  ; $3f45 : $0d
	ld (bc), a                                                  ; $3f46 : $02
	ld b, d                                                  ; $3f47 : $42
	ld (bc), a                                                  ; $3f48 : $02
	ld a, a                                                  ; $3f49 : $7f
	ld b, b                                                  ; $3f4a : $40
	cp a                                                  ; $3f4b : $bf
	ld l, $fd                                                  ; $3f4c : $2e, $fd
	rst $38                                                  ; $3f4e : $ff
	dec h                                                  ; $3f4f : $25
	ld b, b                                                  ; $3f50 : $40
	dec c                                                  ; $3f51 : $0d
	ld (bc), a                                                  ; $3f52 : $02
	ld b, d                                                  ; $3f53 : $42
	ld (bc), a                                                  ; $3f54 : $02
	ld a, a                                                  ; $3f55 : $7f
	ld b, b                                                  ; $3f56 : $40
	cp a                                                  ; $3f57 : $bf
	ld l, $fd                                                  ; $3f58 : $2e, $fd
	rst $38                                                  ; $3f5a : $ff
	dec h                                                  ; $3f5b : $25
	ld b, b                                                  ; $3f5c : $40
	dec c                                                  ; $3f5d : $0d
	ld (bc), a                                                  ; $3f5e : $02
	ld b, d                                                  ; $3f5f : $42
	ld (bc), a                                                  ; $3f60 : $02
	ld a, a                                                  ; $3f61 : $7f
	ld b, b                                                  ; $3f62 : $40
	cp a                                                  ; $3f63 : $bf
	ld l, $fd                                                  ; $3f64 : $2e, $fd
	rst $38                                                  ; $3f66 : $ff
	dec h                                                  ; $3f67 : $25
	ld b, b                                                  ; $3f68 : $40
	dec c                                                  ; $3f69 : $0d
	ld (bc), a                                                  ; $3f6a : $02
	ld b, d                                                  ; $3f6b : $42
	ld (bc), a                                                  ; $3f6c : $02
	ld a, a                                                  ; $3f6d : $7f
	ld b, b                                                  ; $3f6e : $40
	cp a                                                  ; $3f6f : $bf
	ld l, $fd                                                  ; $3f70 : $2e, $fd
	rst $38                                                  ; $3f72 : $ff
	dec h                                                  ; $3f73 : $25
	ld b, b                                                  ; $3f74 : $40
	dec c                                                  ; $3f75 : $0d
	ld (bc), a                                                  ; $3f76 : $02
	ld b, d                                                  ; $3f77 : $42
	ld (bc), a                                                  ; $3f78 : $02
	ld a, a                                                  ; $3f79 : $7f
	ld b, b                                                  ; $3f7a : $40
	cp a                                                  ; $3f7b : $bf
	ld l, $fd                                                  ; $3f7c : $2e, $fd
	rst $38                                                  ; $3f7e : $ff
	dec h                                                  ; $3f7f : $25
	ld b, b                                                  ; $3f80 : $40
	dec c                                                  ; $3f81 : $0d
	ld (bc), a                                                  ; $3f82 : $02
	ld b, d                                                  ; $3f83 : $42
	ld (bc), a                                                  ; $3f84 : $02
	ld a, a                                                  ; $3f85 : $7f
	ld b, b                                                  ; $3f86 : $40
	cp a                                                  ; $3f87 : $bf
	ld l, $fd                                                  ; $3f88 : $2e, $fd
	rst $38                                                  ; $3f8a : $ff
	dec h                                                  ; $3f8b : $25
	ld b, b                                                  ; $3f8c : $40
	dec c                                                  ; $3f8d : $0d
	ld (bc), a                                                  ; $3f8e : $02
	ld b, d                                                  ; $3f8f : $42
	ld (bc), a                                                  ; $3f90 : $02
	ld a, a                                                  ; $3f91 : $7f
	ld b, b                                                  ; $3f92 : $40
	cp a                                                  ; $3f93 : $bf
	ld l, $fd                                                  ; $3f94 : $2e, $fd
	rst $38                                                  ; $3f96 : $ff
	dec h                                                  ; $3f97 : $25
	ld b, b                                                  ; $3f98 : $40
	dec c                                                  ; $3f99 : $0d
	ld (bc), a                                                  ; $3f9a : $02
	ld b, d                                                  ; $3f9b : $42
	ld (bc), a                                                  ; $3f9c : $02
	ld a, a                                                  ; $3f9d : $7f
	ld b, b                                                  ; $3f9e : $40
	cp a                                                  ; $3f9f : $bf
	ld l, $fd                                                  ; $3fa0 : $2e, $fd
	rst $38                                                  ; $3fa2 : $ff
	dec h                                                  ; $3fa3 : $25
	ld b, b                                                  ; $3fa4 : $40
	dec c                                                  ; $3fa5 : $0d
	ld (bc), a                                                  ; $3fa6 : $02
	ld b, d                                                  ; $3fa7 : $42
	ld (bc), a                                                  ; $3fa8 : $02
	ld a, a                                                  ; $3fa9 : $7f
	ld b, b                                                  ; $3faa : $40
	cp a                                                  ; $3fab : $bf
	ld l, $fd                                                  ; $3fac : $2e, $fd
	rst $38                                                  ; $3fae : $ff
	dec h                                                  ; $3faf : $25
	ld b, b                                                  ; $3fb0 : $40
	dec c                                                  ; $3fb1 : $0d
	ld (bc), a                                                  ; $3fb2 : $02
	ld b, d                                                  ; $3fb3 : $42
	ld (bc), a                                                  ; $3fb4 : $02
	ld a, a                                                  ; $3fb5 : $7f
	ld b, b                                                  ; $3fb6 : $40
	cp a                                                  ; $3fb7 : $bf
	ld l, $fd                                                  ; $3fb8 : $2e, $fd
	rst $38                                                  ; $3fba : $ff
	dec h                                                  ; $3fbb : $25
	ld b, b                                                  ; $3fbc : $40
	dec c                                                  ; $3fbd : $0d
	ld (bc), a                                                  ; $3fbe : $02
	ld b, d                                                  ; $3fbf : $42
	ld (bc), a                                                  ; $3fc0 : $02
	ld a, a                                                  ; $3fc1 : $7f
	ld b, b                                                  ; $3fc2 : $40
	cp a                                                  ; $3fc3 : $bf
	ld l, $fd                                                  ; $3fc4 : $2e, $fd
	rst $38                                                  ; $3fc6 : $ff
	dec h                                                  ; $3fc7 : $25
	ld b, b                                                  ; $3fc8 : $40
	dec c                                                  ; $3fc9 : $0d
	ld (bc), a                                                  ; $3fca : $02
	ld b, d                                                  ; $3fcb : $42
	ld (bc), a                                                  ; $3fcc : $02
	ld a, a                                                  ; $3fcd : $7f
	ld b, b                                                  ; $3fce : $40
	cp a                                                  ; $3fcf : $bf
	ld l, $fd                                                  ; $3fd0 : $2e, $fd
	rst $38                                                  ; $3fd2 : $ff
	dec h                                                  ; $3fd3 : $25
	ld b, b                                                  ; $3fd4 : $40
	dec c                                                  ; $3fd5 : $0d
	ld (bc), a                                                  ; $3fd6 : $02
	ld b, d                                                  ; $3fd7 : $42
	ld (bc), a                                                  ; $3fd8 : $02
	ld a, a                                                  ; $3fd9 : $7f
	ld b, b                                                  ; $3fda : $40
	cp a                                                  ; $3fdb : $bf
	ld l, $fd                                                  ; $3fdc : $2e, $fd
	rst $38                                                  ; $3fde : $ff
	dec h                                                  ; $3fdf : $25
	ld b, b                                                  ; $3fe0 : $40
	dec c                                                  ; $3fe1 : $0d
	ld (bc), a                                                  ; $3fe2 : $02
	ld b, d                                                  ; $3fe3 : $42
	ld (bc), a                                                  ; $3fe4 : $02
	ld a, a                                                  ; $3fe5 : $7f
	ld b, b                                                  ; $3fe6 : $40
	cp a                                                  ; $3fe7 : $bf
	ld l, $fd                                                  ; $3fe8 : $2e, $fd
	rst $38                                                  ; $3fea : $ff
	dec h                                                  ; $3feb : $25
	ld b, b                                                  ; $3fec : $40
	dec c                                                  ; $3fed : $0d
	ld (bc), a                                                  ; $3fee : $02
	ld b, d                                                  ; $3fef : $42
	ld (bc), a                                                  ; $3ff0 : $02
	ld a, a                                                  ; $3ff1 : $7f
	ld b, b                                                  ; $3ff2 : $40
	cp a                                                  ; $3ff3 : $bf
	ld l, $fd                                                  ; $3ff4 : $2e, $fd
	rst $38                                                  ; $3ff6 : $ff
	dec h                                                  ; $3ff7 : $25
	ld b, b                                                  ; $3ff8 : $40
	dec c                                                  ; $3ff9 : $0d
	ld (bc), a                                                  ; $3ffa : $02
	ld b, d                                                  ; $3ffb : $42
	ld (bc), a                                                  ; $3ffc : $02
	ld a, a                                                  ; $3ffd : $7f
	ld b, b                                                  ; $3ffe : $40
	cp a                                                  ; $3fff : $bf