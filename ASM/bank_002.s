.include "includes.s"
        
.bank $002 slot 2
.org $0


Jump_02_0000:
	nop                                                  ; $0000 : $00
	ld bc, $80b0                                                  ; $0001 : $01, $b0, $80
	ld bc, $8800                                                  ; $0004 : $01, $00, $88
	ld bc, $80e1                                                  ; $0007 : $01, $e1, $80
	ld bc, $811f                                                  ; $000a : $01, $1f, $81
	ld bc, $80e4                                                  ; $000d : $01, $e4, $80
	ld bc, $88e1                                                  ; $0010 : $01, $e1, $88
	ld bc, $80e7                                                  ; $0013 : $01, $e7, $80
	ld bc, $0000                                                  ; $0016 : $01, $00, $00
	ld bc, $80ea                                                  ; $0019 : $01, $ea, $80
	ld bc, $9727                                                  ; $001c : $01, $27, $97
	ld bc, $80ed                                                  ; $001f : $01, $ed, $80
	ld bc, $9768                                                  ; $0022 : $01, $68, $97
	ld bc, $80f0                                                  ; $0025 : $01, $f0, $80
	ld bc, $97a6                                                  ; $0028 : $01, $a6, $97
	ld bc, $80f3                                                  ; $002b : $01, $f3, $80
	ld bc, $97e7                                                  ; $002e : $01, $e7, $97
	ld bc, $80f6                                                  ; $0031 : $01, $f6, $80
	ld bc, $982e                                                  ; $0034 : $01, $2e, $98
	ld bc, $80f9                                                  ; $0037 : $01, $f9, $80
	ld bc, $986d                                                  ; $003a : $01, $6d, $98
	ld bc, $80fc                                                  ; $003d : $01, $fc, $80
	ld bc, $98ad                                                  ; $0040 : $01, $ad, $98
	ld bc, $80ff                                                  ; $0043 : $01, $ff, $80
	ld bc, $98ed                                                  ; $0046 : $01, $ed, $98
	ld bc, $8104                                                  ; $0049 : $01, $04, $81
	ld bc, $992d                                                  ; $004c : $01, $2d, $99
	ld bc, $8107                                                  ; $004f : $01, $07, $81
	ld bc, $996c                                                  ; $0052 : $01, $6c, $99
	ld bc, $810a                                                  ; $0055 : $01, $0a, $81
	ld bc, $99ad                                                  ; $0058 : $01, $ad, $99
	ld bc, $810d                                                  ; $005b : $01, $0d, $81
	ld bc, $99ef                                                  ; $005e : $01, $ef, $99
	ld bc, $8110                                                  ; $0061 : $01, $10, $81
	ld bc, $9a30                                                  ; $0064 : $01, $30, $9a
	ld bc, $8113                                                  ; $0067 : $01, $13, $81
	ld bc, $9a70                                                  ; $006a : $01, $70, $9a
	ld bc, $8116                                                  ; $006d : $01, $16, $81
	ld bc, $9ab0                                                  ; $0070 : $01, $b0, $9a
	ld bc, $8119                                                  ; $0073 : $01, $19, $81
	ld bc, $9aee                                                  ; $0076 : $01, $ee, $9a
	ld bc, $811c                                                  ; $0079 : $01, $1c, $81
	ld a, $00                                                  ; $007c : $3e, $00
	dec sp                                                  ; $007e : $3b
	nop                                                  ; $007f : $00
	ld a, $00                                                  ; $0080 : $3e, $00
	ld b, h                                                  ; $0082 : $44
	nop                                                  ; $0083 : $00
	inc a                                                  ; $0084 : $3c
	nop                                                  ; $0085 : $00
	dec a                                                  ; $0086 : $3d
	nop                                                  ; $0087 : $00
	dec a                                                  ; $0088 : $3d
	nop                                                  ; $0089 : $00
	dec a                                                  ; $008a : $3d
	nop                                                  ; $008b : $00
	inc a                                                  ; $008c : $3c
	nop                                                  ; $008d : $00
	ld a, $00                                                  ; $008e : $3e, $00
	ccf                                                  ; $0090 : $3f
	nop                                                  ; $0091 : $00
	ld a, $00                                                  ; $0092 : $3e, $00
	dec a                                                  ; $0094 : $3d
	nop                                                  ; $0095 : $00
	dec a                                                  ; $0096 : $3d
	nop                                                  ; $0097 : $00
	dec sp                                                  ; $0098 : $3b
	nop                                                  ; $0099 : $00
	ld a, $00                                                  ; $009a : $3e, $00
	inc bc                                                  ; $009c : $03
	nop                                                  ; $009d : $00
	ret p                                                  ; $009e : $f0

	rst $38                                                  ; $009f : $ff
	nop                                                  ; $00a0 : $00
	inc bc                                                  ; $00a1 : $03
	nop                                                  ; $00a2 : $00

Call_02_00a3:
	jp p, Jump_02_0109                                                  ; $00a3 : $f2, $09, $01
	inc bc                                                  ; $00a6 : $03
	inc d                                                  ; $00a7 : $14
	call p, Call_02_00a3                                                  ; $00a8 : $f4, $a3, $00
	inc bc                                                  ; $00ab : $03
	ld e, h                                                  ; $00ac : $5c
	push af                                                  ; $00ad : $f5
	ld b, h                                                  ; $00ae : $44
	nop                                                  ; $00af : $00
	ld b, c                                                  ; $00b0 : $41
	ld b, e                                                  ; $00b1 : $43
	ld b, h                                                  ; $00b2 : $44
	ld b, l                                                  ; $00b3 : $45
	ld b, (hl)                                                  ; $00b4 : $46
	ld c, b                                                  ; $00b5 : $48
	ld c, c                                                  ; $00b6 : $49
	ld c, h                                                  ; $00b7 : $4c
	ld c, (hl)                                                  ; $00b8 : $4e
	ld c, a                                                  ; $00b9 : $4f
	ld d, b                                                  ; $00ba : $50
	ld d, d                                                  ; $00bb : $52
	ld d, e                                                  ; $00bc : $53
	ld d, h                                                  ; $00bd : $54
	ld b, d                                                  ; $00be : $42
	ld b, a                                                  ; $00bf : $47
	ld c, d                                                  ; $00c0 : $4a
	ld c, e                                                  ; $00c1 : $4b
	ld c, l                                                  ; $00c2 : $4d
	ld d, c                                                  ; $00c3 : $51
	ld d, l                                                  ; $00c4 : $55
	ld d, (hl)                                                  ; $00c5 : $56
	ld d, a                                                  ; $00c6 : $57
	ld e, b                                                  ; $00c7 : $58
	ld e, c                                                  ; $00c8 : $59
	ld e, d                                                  ; $00c9 : $5a
	ld l, $2c                                                  ; $00ca : $2e, $2c
	dec l                                                  ; $00cc : $2d
	ccf                                                  ; $00cd : $3f
	daa                                                  ; $00ce : $27
	ld a, ($2022)                                                  ; $00cf : $3a, $22, $20
	jr nc, br_02_0105                                                  ; $00d2 : $30, $31

	ld ($3433), a                                                  ; $00d4 : $32, $33, $34
	dec (hl)                                                  ; $00d7 : $35
	ld (hl), $37                                                  ; $00d8 : $36, $37
	jr c, br_02_0115                                                  ; $00da : $38, $39

	ld hl, $2928                                                  ; $00dc : $21, $28, $29
	dec h                                                  ; $00df : $25
	ld e, a                                                  ; $00e0 : $5f
	ld bc, $ffff                                                  ; $00e1 : $01, $ff, $ff
	ld bc, $ffff                                                  ; $00e4 : $01, $ff, $ff
	ld bc, $ffff                                                  ; $00e7 : $01, $ff, $ff
	ld bc, $ffff                                                  ; $00ea : $01, $ff, $ff
	ld bc, $ffff                                                  ; $00ed : $01, $ff, $ff
	ld bc, $ffff                                                  ; $00f0 : $01, $ff, $ff
	ld bc, $ffff                                                  ; $00f3 : $01, $ff, $ff
	ld bc, $ffff                                                  ; $00f6 : $01, $ff, $ff
	ld bc, $ffff                                                  ; $00f9 : $01, $ff, $ff
	ld bc, $ffff                                                  ; $00fc : $01, $ff, $ff
	ld bc, $0018                                                  ; $00ff : $01, $18, $00
	rst $38                                                  ; $0102 : $ff
	rst $38                                                  ; $0103 : $ff
	ld (bc), a                                                  ; $0104 : $02

br_02_0105:
	rst $38                                                  ; $0105 : $ff
	rst $38                                                  ; $0106 : $ff
	ld (bc), a                                                  ; $0107 : $02
	rst $38                                                  ; $0108 : $ff

Jump_02_0109:
	rst $38                                                  ; $0109 : $ff

Jump_02_010a:
	ld (bc), a                                                  ; $010a : $02
	rst $38                                                  ; $010b : $ff
	rst $38                                                  ; $010c : $ff
	ld (bc), a                                                  ; $010d : $02
	rst $38                                                  ; $010e : $ff
	rst $38                                                  ; $010f : $ff
	ld (bc), a                                                  ; $0110 : $02
	rst $38                                                  ; $0111 : $ff
	rst $38                                                  ; $0112 : $ff
	ld (bc), a                                                  ; $0113 : $02
	rst $38                                                  ; $0114 : $ff

br_02_0115:
	rst $38                                                  ; $0115 : $ff
	ld (bc), a                                                  ; $0116 : $02
	rst $38                                                  ; $0117 : $ff
	rst $38                                                  ; $0118 : $ff
	ld (bc), a                                                  ; $0119 : $02
	rst $38                                                  ; $011a : $ff
	rst $38                                                  ; $011b : $ff
	ld (bc), a                                                  ; $011c : $02
	rst $38                                                  ; $011d : $ff
	rst $38                                                  ; $011e : $ff
	ld (bc), a                                                  ; $011f : $02
	rst $38                                                  ; $0120 : $ff
	rst $38                                                  ; $0121 : $ff
	ld d, l                                                  ; $0122 : $55
	xor d                                                  ; $0123 : $aa
	ld de, $0400                                                  ; $0124 : $11, $00, $04
	xor b                                                  ; $0127 : $a8
	add a, b                                                  ; $0128 : $80
	inc b                                                  ; $0129 : $04
	nop                                                  ; $012a : $00
	adc a, b                                                  ; $012b : $88
	inc b                                                  ; $012c : $04
	exx                                                  ; $012d : $d9
	add a, b                                                  ; $012e : $80
	inc b                                                  ; $012f : $04
	pop af                                                  ; $0130 : $f1
	add a, b                                                  ; $0131 : $80
	inc b                                                  ; $0132 : $04
	call c, Call_02_0480                                                  ; $0133 : $dc, $80, $04
	pop hl                                                  ; $0136 : $e1
	adc a, b                                                  ; $0137 : $88
	inc b                                                  ; $0138 : $04
	rst $18                                                  ; $0139 : $df
	add a, b                                                  ; $013a : $80
	inc b                                                  ; $013b : $04
	pop af                                                  ; $013c : $f1
	add a, b                                                  ; $013d : $80
	inc b                                                  ; $013e : $04
	jp po, Jump_02_0480                                                  ; $013f : $e2, $80, $04
	ld b, d                                                  ; $0142 : $42
	sub b                                                  ; $0143 : $90
	inc b                                                  ; $0144 : $04
	push hl                                                  ; $0145 : $e5
	add a, b                                                  ; $0146 : $80
	inc b                                                  ; $0147 : $04
	ld a, $91                                                  ; $0148 : $3e, $91
	inc b                                                  ; $014a : $04
	ret pe                                                  ; $014b : $e8

Jump_02_014c:
	add a, b                                                  ; $014c : $80
	inc b                                                  ; $014d : $04
	ld a, ($0492)                                                  ; $014e : $3a, $92, $04
	ex de, hl                                                  ; $0151 : $eb
	add a, b                                                  ; $0152 : $80
	inc b                                                  ; $0153 : $04
	ld (hl), $93                                                  ; $0154 : $36, $93
	inc b                                                  ; $0156 : $04
	xor $80                                                  ; $0157 : $ee, $80
	ld sp, hl                                                  ; $0159 : $f9
	nop                                                  ; $015a : $00
	ld sp, hl                                                  ; $015b : $f9
	nop                                                  ; $015c : $00
	ld sp, hl                                                  ; $015d : $f9
	nop                                                  ; $015e : $00
	ld sp, hl                                                  ; $015f : $f9
	nop                                                  ; $0160 : $00
	inc b                                                  ; $0161 : $04
	nop                                                  ; $0162 : $00
	jp m, Jump_02_014c                                                  ; $0163 : $fa, $4c, $01
	inc b                                                  ; $0166 : $04
	sbc a, d                                                  ; $0167 : $9a
	call m, $00a4                                                  ; $0168 : $fc, $a4, $00
	inc b                                                  ; $016b : $04
	call po, $41fd                                                  ; $016c : $e4, $fd, $41
	nop                                                  ; $016f : $00
	inc b                                                  ; $0170 : $04
	ld l, b                                                  ; $0171 : $68
	cp $1d                                                  ; $0172 : $fe, $1d
	nop                                                  ; $0174 : $00
	nop                                                  ; $0175 : $00
	nop                                                  ; $0176 : $00
	nop                                                  ; $0177 : $00
	nop                                                  ; $0178 : $00
	nop                                                  ; $0179 : $00
	nop                                                  ; $017a : $00
	nop                                                  ; $017b : $00
	nop                                                  ; $017c : $00
	nop                                                  ; $017d : $00
	nop                                                  ; $017e : $00
	nop                                                  ; $017f : $00
	nop                                                  ; $0180 : $00
	nop                                                  ; $0181 : $00
	nop                                                  ; $0182 : $00
	nop                                                  ; $0183 : $00
	nop                                                  ; $0184 : $00
	nop                                                  ; $0185 : $00
	nop                                                  ; $0186 : $00
	nop                                                  ; $0187 : $00
	nop                                                  ; $0188 : $00
	nop                                                  ; $0189 : $00
	nop                                                  ; $018a : $00
	nop                                                  ; $018b : $00
	nop                                                  ; $018c : $00
	nop                                                  ; $018d : $00
	nop                                                  ; $018e : $00
	nop                                                  ; $018f : $00
	nop                                                  ; $0190 : $00
	nop                                                  ; $0191 : $00
	nop                                                  ; $0192 : $00
	nop                                                  ; $0193 : $00
	nop                                                  ; $0194 : $00
	nop                                                  ; $0195 : $00
	nop                                                  ; $0196 : $00
	nop                                                  ; $0197 : $00
	nop                                                  ; $0198 : $00
	nop                                                  ; $0199 : $00
	nop                                                  ; $019a : $00
	nop                                                  ; $019b : $00
	nop                                                  ; $019c : $00
	nop                                                  ; $019d : $00
	nop                                                  ; $019e : $00
	nop                                                  ; $019f : $00
	nop                                                  ; $01a0 : $00
	nop                                                  ; $01a1 : $00
	nop                                                  ; $01a2 : $00
	nop                                                  ; $01a3 : $00
	nop                                                  ; $01a4 : $00
	nop                                                  ; $01a5 : $00
	nop                                                  ; $01a6 : $00
	nop                                                  ; $01a7 : $00
	nop                                                  ; $01a8 : $00
	nop                                                  ; $01a9 : $00
	nop                                                  ; $01aa : $00
	nop                                                  ; $01ab : $00
	nop                                                  ; $01ac : $00
	nop                                                  ; $01ad : $00
	nop                                                  ; $01ae : $00
	nop                                                  ; $01af : $00
	nop                                                  ; $01b0 : $00
	nop                                                  ; $01b1 : $00
	nop                                                  ; $01b2 : $00
	nop                                                  ; $01b3 : $00
	nop                                                  ; $01b4 : $00
	nop                                                  ; $01b5 : $00
	nop                                                  ; $01b6 : $00
	nop                                                  ; $01b7 : $00
	nop                                                  ; $01b8 : $00
	nop                                                  ; $01b9 : $00
	nop                                                  ; $01ba : $00
	nop                                                  ; $01bb : $00
	nop                                                  ; $01bc : $00
	inc c                                                  ; $01bd : $0c
	ld b, d                                                  ; $01be : $42
	ld c, c                                                  ; $01bf : $49
	ld b, d                                                  ; $01c0 : $42
	ld c, h                                                  ; $01c1 : $4c
	ld b, l                                                  ; $01c2 : $45
	jr nz, $54                                                  ; $01c3 : $20, $54

	ld d, d                                                  ; $01c5 : $52
	ld c, c                                                  ; $01c6 : $49
	ld d, (hl)                                                  ; $01c7 : $56
	ld c, c                                                  ; $01c8 : $49
	ld b, c                                                  ; $01c9 : $41
	ld b, c                                                  ; $01ca : $41
	ld b, e                                                  ; $01cb : $43
	ld b, h                                                  ; $01cc : $44
	ld b, l                                                  ; $01cd : $45
	ld b, (hl)                                                  ; $01ce : $46
	ld c, b                                                  ; $01cf : $48
	ld c, c                                                  ; $01d0 : $49
	ld c, h                                                  ; $01d1 : $4c
	ld c, (hl)                                                  ; $01d2 : $4e
	ld c, a                                                  ; $01d3 : $4f
	ld d, b                                                  ; $01d4 : $50
	ld d, d                                                  ; $01d5 : $52
	ld d, e                                                  ; $01d6 : $53
	ld d, h                                                  ; $01d7 : $54
	ld b, d                                                  ; $01d8 : $42
	ld b, a                                                  ; $01d9 : $47
	ld c, d                                                  ; $01da : $4a
	ld c, e                                                  ; $01db : $4b
	ld c, l                                                  ; $01dc : $4d
	ld d, c                                                  ; $01dd : $51
	ld d, l                                                  ; $01de : $55
	ld d, (hl)                                                  ; $01df : $56
	ld d, a                                                  ; $01e0 : $57
	ld e, b                                                  ; $01e1 : $58
	ld e, c                                                  ; $01e2 : $59
	ld e, d                                                  ; $01e3 : $5a
	ld l, $2c                                                  ; $01e4 : $2e, $2c
	dec l                                                  ; $01e6 : $2d
	ccf                                                  ; $01e7 : $3f
	daa                                                  ; $01e8 : $27
	ld a, ($2022)                                                  ; $01e9 : $3a, $22, $20
	jr nc, $31                                                  ; $01ec : $30, $31

	ld ($3433), a                                                  ; $01ee : $32, $33, $34
	dec (hl)                                                  ; $01f1 : $35
	ld (hl), $37                                                  ; $01f2 : $36, $37
	jr c, br_02_022f                                                  ; $01f4 : $38, $39

	ld hl, $2928                                                  ; $01f6 : $21, $28, $29
	dec h                                                  ; $01f9 : $25
	ld e, a                                                  ; $01fa : $5f
	inc b                                                  ; $01fb : $04
	rst $38                                                  ; $01fc : $ff
	rst $38                                                  ; $01fd : $ff
	inc b                                                  ; $01fe : $04
	rst $38                                                  ; $01ff : $ff
	rst $38                                                  ; $0200 : $ff
	inc b                                                  ; $0201 : $04
	rst $38                                                  ; $0202 : $ff
	rst $38                                                  ; $0203 : $ff
	inc b                                                  ; $0204 : $04
	rst $38                                                  ; $0205 : $ff
	rst $38                                                  ; $0206 : $ff
	inc b                                                  ; $0207 : $04
	rst $38                                                  ; $0208 : $ff
	rst $38                                                  ; $0209 : $ff
	inc b                                                  ; $020a : $04
	rst $38                                                  ; $020b : $ff
	rst $38                                                  ; $020c : $ff
	inc b                                                  ; $020d : $04
	rst $38                                                  ; $020e : $ff
	rst $38                                                  ; $020f : $ff
	inc b                                                  ; $0210 : $04
	rst $38                                                  ; $0211 : $ff
	rst $38                                                  ; $0212 : $ff
	ld a, $24                                                  ; $0213 : $3e, $24
	ld ($435f), a                                                  ; $0215 : $32, $5f, $43
	ld ($43e0), a                                                  ; $0218 : $32, $e0, $43
	ld ($43f5), a                                                  ; $021b : $32, $f5, $43
	ld ($4476), a                                                  ; $021e : $32, $76, $44
	ld ($4620), a                                                  ; $0221 : $32, $20, $46
	ld ($4580), a                                                  ; $0224 : $32, $80, $45
	ret                                                  ; $0227 : $c9


br_02_0228:
	inc hl                                                  ; $0228 : $23
	jr br_02_0232                                                  ; $0229 : $18, $07

	ld ($415c), sp                                                  ; $022b : $ed, $73, $5c, $41

br_02_022f:
	ld hl, $4200                                                  ; $022f : $21, $00, $42

br_02_0232:
	ld a, (hl)                                                  ; $0232 : $7e
	cp $20                                                  ; $0233 : $fe, $20
	jr z, br_02_0228                                                  ; $0235 : $28, $f1

	cp $3d                                                  ; $0237 : $fe, $3d
	jp z, $80ec                                                  ; $0239 : $ca, $ec, $80
	exx                                                  ; $023c : $d9

br_02_023d:
	exx                                                  ; $023d : $d9
	ld a, (hl)                                                  ; $023e : $7e
	inc hl                                                  ; $023f : $23
	exx                                                  ; $0240 : $d9
	cp $20                                                  ; $0241 : $fe, $20
	jr z, br_02_023d                                                  ; $0243 : $28, $f8

	ld b, a                                                  ; $0245 : $47
	ld hl, $4304                                                  ; $0246 : $21, $04, $43
	inc (hl)                                                  ; $0249 : $34
	ld a, (hl)                                                  ; $024a : $7e
	cp $80                                                  ; $024b : $fe, $80
	jp z, $8b3b                                                  ; $024d : $ca, $3b, $8b
	ld hl, $4306                                                  ; $0250 : $21, $06, $43
	ld (hl), $00                                                  ; $0253 : $36, $00
	ld a, b                                                  ; $0255 : $78
	cp $0d                                                  ; $0256 : $fe, $0d
	jp z, Jump_02_0000                                                  ; $0258 : $ca, $00, $00
	cp $51                                                  ; $025b : $fe, $51
	jp z, $8411                                                  ; $025d : $ca, $11, $84
	cp $71                                                  ; $0260 : $fe, $71
	jp z, $8411                                                  ; $0262 : $ca, $11, $84
	cp $2d                                                  ; $0265 : $fe, $2d
	jp z, $8169                                                  ; $0267 : $ca, $69, $81
	cp $2b                                                  ; $026a : $fe, $2b
	jp z, $8169                                                  ; $026c : $ca, $69, $81
	cp $a5                                                  ; $026f : $fe, $a5
	jp z, $81bb                                                  ; $0271 : $ca, $bb, $81
	cp $a6                                                  ; $0274 : $fe, $a6
	jp z, $81bb                                                  ; $0276 : $ca, $bb, $81
	cp $2f                                                  ; $0279 : $fe, $2f
	jp z, $81bb                                                  ; $027b : $ca, $bb, $81
	cp $41                                                  ; $027e : $fe, $41
	jp z, $822f                                                  ; $0280 : $ca, $2f, $82
	cp $61                                                  ; $0283 : $fe, $61
	jp z, $822f                                                  ; $0285 : $ca, $2f, $82
	cp $53                                                  ; $0288 : $fe, $53
	jp z, $822f                                                  ; $028a : $ca, $2f, $82
	cp $73                                                  ; $028d : $fe, $73
	jp z, $822f                                                  ; $028f : $ca, $2f, $82
	cp $4c                                                  ; $0292 : $fe, $4c
	jp z, $822f                                                  ; $0294 : $ca, $2f, $82
	cp $6c                                                  ; $0297 : $fe, $6c
	jp z, $822f                                                  ; $0299 : $ca, $2f, $82
	ld a, $00                                                  ; $029c : $3e, $00
	ld ($430f), a                                                  ; $029e : $32, $0f, $43
	ld a, ($4303)                                                  ; $02a1 : $3a, $03, $43
	cp $00                                                  ; $02a4 : $fe, $00
	jp nz, $80ad                                                  ; $02a6 : $c2, $ad, $80
	ld a, ($4304)                                                  ; $02a9 : $3a, $04, $43
	cp $01                                                  ; $02ac : $fe, $01
	jp nz, $80ad                                                  ; $02ae : $c2, $ad, $80
	ld a, ($4308)                                                  ; $02b1 : $3a, $08, $43
	cp $01                                                  ; $02b4 : $fe, $01
	jp z, $80ad                                                  ; $02b6 : $ca, $ad, $80
	push bc                                                  ; $02b9 : $c5
	ld a, $00                                                  ; $02ba : $3e, $00
	ld ($4308), a                                                  ; $02bc : $32, $08, $43
	pop bc                                                  ; $02bf : $c1
	ld a, b                                                  ; $02c0 : $78
	cp $6e                                                  ; $02c1 : $fe, $6e
	jp z, $8285                                                  ; $02c3 : $ca, $85, $82
	cp $4e                                                  ; $02c6 : $fe, $4e
	jp z, $8285                                                  ; $02c8 : $ca, $85, $82
	cp $28                                                  ; $02cb : $fe, $28
	jp z, $8154                                                  ; $02cd : $ca, $54, $81
	ld hl, $4305                                                  ; $02d0 : $21, $05, $43
	ld (hl), $00                                                  ; $02d3 : $36, $00
	ld a, b                                                  ; $02d5 : $78
	cp $30                                                  ; $02d6 : $fe, $30
	jp z, $812a                                                  ; $02d8 : $ca, $2a, $81
	jp m, $80d0                                                  ; $02db : $fa, $d0, $80
	cp $3a                                                  ; $02de : $fe, $3a
	jp m, $813b                                                  ; $02e0 : $fa, $3b, $81
	cp $30                                                  ; $02e3 : $fe, $30
	inc h                                                  ; $02e5 : $24
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
	inc sp                                                  ; $0308 : $33
	cpl                                                  ; $0309 : $2f
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
	jr c, br_02_034c                                                  ; $031b : $38, $2f

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
	jr c, br_02_036b                                                  ; $0333 : $38, $36

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

br_02_034c:
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

br_02_036b:
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
	jr nc, br_02_03e5                                                  ; $03bf : $30, $24

	ld ($332f), a                                                  ; $03c1 : $32, $2f, $33
	dec hl                                                  ; $03c4 : $2b
	ld ($392f), a                                                  ; $03c5 : $32, $2f, $39
	jr c, $2f                                                  ; $03c8 : $38, $2f

	add hl, sp                                                  ; $03ca : $39
	inc h                                                  ; $03cb : $24
	scf                                                  ; $03cc : $37
	cpl                                                  ; $03cd : $2f
	jr c, br_02_03fd                                                  ; $03ce : $38, $2d

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

br_02_03e5:
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

br_02_03fd:
	dec (hl)                                                  ; $03fd : $35

Call_02_03fe:
	cpl                                                  ; $03fe : $2f
	ld (hl), $2b                                                  ; $03ff : $36, $2b
	ld sp, $362f                                                  ; $0401 : $31, $2f, $36

Jump_02_0404:
	ld sp, $3324                                                  ; $0404 : $31, $24, $33
	cpl                                                  ; $0407 : $2f

Call_02_0408:
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
	jr nc, br_02_0481                                                  ; $045b : $30, $24

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
	jr c, br_02_04a7                                                  ; $0478 : $38, $2d

	inc sp                                                  ; $047a : $33
	cpl                                                  ; $047b : $2f
	scf                                                  ; $047c : $37
	ld sp, $2f31                                                  ; $047d : $31, $31, $2f

Call_02_0480:
Jump_02_0480:
	dec (hl)                                                  ; $0480 : $35

br_02_0481:
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

br_02_04a7:
	cpl                                                  ; $04a7 : $2f
	ld (hl), $2d                                                  ; $04a8 : $36, $2d
	dec (hl)                                                  ; $04aa : $35
	cpl                                                  ; $04ab : $2f
	jr c, br_02_04e3                                                  ; $04ac : $38, $35

	cpl                                                  ; $04ae : $2f
	ld ($2434), a                                                  ; $04af : $32, $34, $24
	ld sp, $382f                                                  ; $04b2 : $31, $2f, $38
	dec hl                                                  ; $04b5 : $2b
	dec (hl)                                                  ; $04b6 : $35
	cpl                                                  ; $04b7 : $2f
	jr c, br_02_04ed                                                  ; $04b8 : $38, $33

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

br_02_04e3:
	inc sp                                                  ; $04e3 : $33
	cpl                                                  ; $04e4 : $2f
	scf                                                  ; $04e5 : $37
	dec hl                                                  ; $04e6 : $2b
	inc sp                                                  ; $04e7 : $33
	cpl                                                  ; $04e8 : $2f
	jr c, $34                                                  ; $04e9 : $38, $34

	dec (hl)                                                  ; $04eb : $35
	cpl                                                  ; $04ec : $2f

br_02_04ed:
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
	jr nc, br_02_052e                                                  ; $0508 : $30, $24

	dec (hl)                                                  ; $050a : $35
	cpl                                                  ; $050b : $2f
	jr c, br_02_053b                                                  ; $050c : $38, $2d

	ld sp, $332f                                                  ; $050e : $31, $2f, $33
	scf                                                  ; $0511 : $37
	cpl                                                  ; $0512 : $2f
	ld ($2434), a                                                  ; $0513 : $32, $34, $24
	jr c, $2f                                                  ; $0516 : $38, $2f

	add hl, sp                                                  ; $0518 : $39
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

br_02_052e:
	ld sp, $352f                                                  ; $052e : $31, $2f, $35
	dec hl                                                  ; $0531 : $2b
	ld ($372f), a                                                  ; $0532 : $32, $2f, $37
	ld sp, $2f37                                                  ; $0535 : $31, $37, $2f
	inc sp                                                  ; $0538 : $33
	dec (hl)                                                  ; $0539 : $35
	inc h                                                  ; $053a : $24

br_02_053b:
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
	jr c, br_02_0582                                                  ; $055c : $38, $24

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
	jr nc, br_02_05a6                                                  ; $0580 : $30, $24

br_02_0582:
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
	jr c, br_02_05cd                                                  ; $059e : $38, $2d

	inc sp                                                  ; $05a0 : $33
	cpl                                                  ; $05a1 : $2f
	dec (hl)                                                  ; $05a2 : $35
	ld sp, $2f31                                                  ; $05a3 : $31, $31, $2f

br_02_05a6:
	inc (hl)                                                  ; $05a6 : $34
	jr nc, br_02_05cd                                                  ; $05a7 : $30, $24

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

br_02_05cd:
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
	jr c, br_02_0662                                                  ; $0633 : $38, $2d

	dec (hl)                                                  ; $0635 : $35
	cpl                                                  ; $0636 : $2f
	ld (hl), $31                                                  ; $0637 : $36, $31
	cpl                                                  ; $0639 : $2f
	ld ($2434), a                                                  ; $063a : $32, $34, $24
	ld ($352f), a                                                  ; $063d : $32, $2f, $35
	dec l                                                  ; $0640 : $2d
	inc sp                                                  ; $0641 : $33
	cpl                                                  ; $0642 : $2f
	jr c, br_02_0676                                                  ; $0643 : $38, $31

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

br_02_0662:
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

br_02_0676:
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
	jr c, br_02_06de                                                  ; $06a5 : $38, $37

	cpl                                                  ; $06a7 : $2f
	jr c, $24                                                  ; $06a8 : $38, $24

	scf                                                  ; $06aa : $37
	cpl                                                  ; $06ab : $2f

Jump_02_06ac:
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

br_02_06de:
	inc sp                                                  ; $06de : $33
	cpl                                                  ; $06df : $2f
	inc (hl)                                                  ; $06e0 : $34
	scf                                                  ; $06e1 : $37
	cpl                                                  ; $06e2 : $2f
	jr c, br_02_0709                                                  ; $06e3 : $38, $24

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

br_02_0709:
	cpl                                                  ; $0709 : $2f
	ld ($312d), a                                                  ; $070a : $32, $2d, $31
	cpl                                                  ; $070d : $2f
	inc sp                                                  ; $070e : $33

Call_02_070f:
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
	jr c, br_02_07b6                                                  ; $0785 : $38, $2f

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
	jr c, br_02_07d7                                                  ; $07a1 : $38, $34

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

br_02_07b6:
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

br_02_07d7:
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
	ld ($2f30), a                                                  ; $07fe : $32, $30, $2f
	sbc a, e                                                  ; $0801 : $9b
	ld bc, $0201                                                  ; $0802 : $01, $01, $02
	inc bc                                                  ; $0805 : $03
	ld (bc), a                                                  ; $0806 : $02
	ld bc, $0101                                                  ; $0807 : $01, $01, $01

Jump_02_080a:
	ld bc, $0101                                                  ; $080a : $01, $01, $01
	ld bc, $0301                                                  ; $080d : $01, $01, $03
	inc bc                                                  ; $0810 : $03
	ld (bc), a                                                  ; $0811 : $02
	inc b                                                  ; $0812 : $04
	ld (bc), a                                                  ; $0813 : $02
	inc b                                                  ; $0814 : $04
	dec b                                                  ; $0815 : $05
	ld bc, $0204                                                  ; $0816 : $01, $04, $02
	inc b                                                  ; $0819 : $04
	inc b                                                  ; $081a : $04
	inc b                                                  ; $081b : $04
	ld (bc), a                                                  ; $081c : $02
	dec b                                                  ; $081d : $05
	dec b                                                  ; $081e : $05
	ld (bc), a                                                  ; $081f : $02
	inc b                                                  ; $0820 : $04
	ld bc, $0102                                                  ; $0821 : $01, $02, $01
	inc b                                                  ; $0824 : $04
	dec b                                                  ; $0825 : $05
	ld (bc), a                                                  ; $0826 : $02
	dec b                                                  ; $0827 : $05
	inc b                                                  ; $0828 : $04
	inc bc                                                  ; $0829 : $03
	inc b                                                  ; $082a : $04
	inc b                                                  ; $082b : $04
	inc b                                                  ; $082c : $04
	inc b                                                  ; $082d : $04
	ld (bc), a                                                  ; $082e : $02
	dec b                                                  ; $082f : $05
	dec b                                                  ; $0830 : $05
	inc bc                                                  ; $0831 : $03
	inc bc                                                  ; $0832 : $03
	inc b                                                  ; $0833 : $04
	inc b                                                  ; $0834 : $04
	inc bc                                                  ; $0835 : $03
	inc bc                                                  ; $0836 : $03
	inc bc                                                  ; $0837 : $03
	inc bc                                                  ; $0838 : $03
	inc bc                                                  ; $0839 : $03
	dec b                                                  ; $083a : $05

Call_02_083b:
	dec b                                                  ; $083b : $05
	inc bc                                                  ; $083c : $03
	inc b                                                  ; $083d : $04
	dec b                                                  ; $083e : $05
	ld (bc), a                                                  ; $083f : $02
	inc b                                                  ; $0840 : $04
	ld bc, $0402                                                  ; $0841 : $01, $02, $04
	dec b                                                  ; $0844 : $05
	inc b                                                  ; $0845 : $04
	ld (bc), a                                                  ; $0846 : $02
	inc b                                                  ; $0847 : $04
	inc b                                                  ; $0848 : $04
	ld b, $04                                                  ; $0849 : $06, $04
	inc b                                                  ; $084b : $04
	inc b                                                  ; $084c : $04
	inc b                                                  ; $084d : $04
	dec b                                                  ; $084e : $05
	inc b                                                  ; $084f : $04
	inc bc                                                  ; $0850 : $03
	inc bc                                                  ; $0851 : $03
	inc b                                                  ; $0852 : $04
	ld (bc), a                                                  ; $0853 : $02
	inc b                                                  ; $0854 : $04
	inc bc                                                  ; $0855 : $03
	inc bc                                                  ; $0856 : $03
	inc bc                                                  ; $0857 : $03
	inc bc                                                  ; $0858 : $03
	dec b                                                  ; $0859 : $05
	ld (bc), a                                                  ; $085a : $02
	dec b                                                  ; $085b : $05
	inc bc                                                  ; $085c : $03
	ld (bc), a                                                  ; $085d : $02
	inc bc                                                  ; $085e : $03
	inc b                                                  ; $085f : $04
	inc b                                                  ; $0860 : $04
	ld (bc), a                                                  ; $0861 : $02
	ld (bc), a                                                  ; $0862 : $02
	ld b, $04                                                  ; $0863 : $06, $04
	ld bc, $0403                                                  ; $0865 : $01, $03, $04

Call_02_0868:
	dec b                                                  ; $0868 : $05
	dec b                                                  ; $0869 : $05
	inc bc                                                  ; $086a : $03
	inc bc                                                  ; $086b : $03
	ld (bc), a                                                  ; $086c : $02
	dec b                                                  ; $086d : $05
	ld bc, $0503                                                  ; $086e : $01, $03, $05
	add hl, bc                                                  ; $0871 : $09
	inc b                                                  ; $0872 : $04
	inc bc                                                  ; $0873 : $03
	ld bc, $0203                                                  ; $0874 : $01, $03, $02
	inc bc                                                  ; $0877 : $03
	ld b, $02                                                  ; $0878 : $06, $02
	inc bc                                                  ; $087a : $03
	inc b                                                  ; $087b : $04
	inc bc                                                  ; $087c : $03
	inc bc                                                  ; $087d : $03
	inc b                                                  ; $087e : $04
	inc b                                                  ; $087f : $04
	inc b                                                  ; $0880 : $04
	inc b                                                  ; $0881 : $04
	inc bc                                                  ; $0882 : $03
	inc b                                                  ; $0883 : $04
	inc b                                                  ; $0884 : $04
	inc b                                                  ; $0885 : $04
	inc b                                                  ; $0886 : $04
	dec b                                                  ; $0887 : $05
	inc bc                                                  ; $0888 : $03
	inc bc                                                  ; $0889 : $03
	dec b                                                  ; $088a : $05
	inc bc                                                  ; $088b : $03
	dec b                                                  ; $088c : $05
	inc bc                                                  ; $088d : $03
	ld (bc), a                                                  ; $088e : $02
	ld b, $03                                                  ; $088f : $06, $03
	ld (bc), a                                                  ; $0891 : $02
	inc b                                                  ; $0892 : $04
	inc bc                                                  ; $0893 : $03
	ld bc, $0504                                                  ; $0894 : $01, $04, $05
	ld (bc), a                                                  ; $0897 : $02
	ld bc, $0403                                                  ; $0898 : $01, $03, $04

Call_02_089b:
	ld (bc), a                                                  ; $089b : $02
	ld bc, $0403                                                  ; $089c : $01, $03, $04
	inc b                                                  ; $089f : $04
	inc bc                                                  ; $08a0 : $03
	inc bc                                                  ; $08a1 : $03
	ld b, $05                                                  ; $08a2 : $06, $05
	inc b                                                  ; $08a4 : $04
	inc bc                                                  ; $08a5 : $03
	ld (bc), a                                                  ; $08a6 : $02
	dec b                                                  ; $08a7 : $05
	inc bc                                                  ; $08a8 : $03
	inc b                                                  ; $08a9 : $04
	ld (bc), a                                                  ; $08aa : $02
	inc bc                                                  ; $08ab : $03
	inc bc                                                  ; $08ac : $03
	inc bc                                                  ; $08ad : $03
	inc b                                                  ; $08ae : $04
	inc bc                                                  ; $08af : $03
	inc bc                                                  ; $08b0 : $03
	inc bc                                                  ; $08b1 : $03
	inc b                                                  ; $08b2 : $04
	inc b                                                  ; $08b3 : $04
	inc bc                                                  ; $08b4 : $03
	ld (bc), a                                                  ; $08b5 : $02
	ld (bc), a                                                  ; $08b6 : $02
	dec b                                                  ; $08b7 : $05
	inc bc                                                  ; $08b8 : $03
	inc bc                                                  ; $08b9 : $03
	inc bc                                                  ; $08ba : $03
	dec b                                                  ; $08bb : $05
	ld bc, $0204                                                  ; $08bc : $01, $04, $02
	inc b                                                  ; $08bf : $04
	dec b                                                  ; $08c0 : $05
	ex af, af'                                                  ; $08c1 : $08
	ld (bc), a                                                  ; $08c2 : $02
	dec b                                                  ; $08c3 : $05
	ld (bc), a                                                  ; $08c4 : $02
	ld (bc), a                                                  ; $08c5 : $02
	dec b                                                  ; $08c6 : $05
	inc bc                                                  ; $08c7 : $03
	inc bc                                                  ; $08c8 : $03
	inc bc                                                  ; $08c9 : $03

Jump_02_08ca:
	inc b                                                  ; $08ca : $04
	inc bc                                                  ; $08cb : $03
	ex af, af'                                                  ; $08cc : $08
	ld a, (bc)                                                  ; $08cd : $0a
	dec b                                                  ; $08ce : $05
	ld b, $07                                                  ; $08cf : $06, $07
	dec c                                                  ; $08d1 : $0d
	ex af, af'                                                  ; $08d2 : $08
	ex af, af'                                                  ; $08d3 : $08
	inc bc                                                  ; $08d4 : $03
	inc bc                                                  ; $08d5 : $03
	inc bc                                                  ; $08d6 : $03
	ld (bc), a                                                  ; $08d7 : $02
	ex af, af'                                                  ; $08d8 : $08
	inc bc                                                  ; $08d9 : $03
	inc bc                                                  ; $08da : $03
	inc bc                                                  ; $08db : $03
	ld b, $05                                                  ; $08dc : $06, $05
	inc bc                                                  ; $08de : $03
	inc bc                                                  ; $08df : $03
	ld b, $41                                                  ; $08e0 : $06, $41
	sbc a, (hl)                                                  ; $08e2 : $9e
	dec c                                                  ; $08e3 : $0d
	ex af, af'                                                  ; $08e4 : $08
	add hl, bc                                                  ; $08e5 : $09
	rlca                                                  ; $08e6 : $07
	inc de                                                  ; $08e7 : $13
	ld a, (bc)                                                  ; $08e8 : $0a
	add hl, bc                                                  ; $08e9 : $09
	ex af, af'                                                  ; $08ea : $08
	dec bc                                                  ; $08eb : $0b
	ld a, (bc)                                                  ; $08ec : $0a
	inc c                                                  ; $08ed : $0c
	ex af, af'                                                  ; $08ee : $08
	inc c                                                  ; $08ef : $0c
	ex af, af'                                                  ; $08f0 : $08
	ex af, af'                                                  ; $08f1 : $08
	dec bc                                                  ; $08f2 : $0b
	inc c                                                  ; $08f3 : $0c
	add hl, bc                                                  ; $08f4 : $09
	add hl, bc                                                  ; $08f5 : $09
	inc c                                                  ; $08f6 : $0c
	rrca                                                  ; $08f7 : $0f
	ld (de), a                                                  ; $08f8 : $12
	djnz br_02_0900                                                  ; $08f9 : $10, $05
	ld c, $01                                                  ; $08fb : $0e, $01
	ld bc, $0504                                                  ; $08fd : $01, $04, $05

br_02_0900:
	rlca                                                  ; $0900 : $07
	ld (bc), a                                                  ; $0901 : $02
	ld (bc), a                                                  ; $0902 : $02
	ld (bc), a                                                  ; $0903 : $02
	inc b                                                  ; $0904 : $04
	ld (bc), a                                                  ; $0905 : $02
	inc bc                                                  ; $0906 : $03
	ld (bc), a                                                  ; $0907 : $02
	ld (bc), a                                                  ; $0908 : $02
	ld b, $04                                                  ; $0909 : $06, $04
	inc b                                                  ; $090b : $04
	ld (bc), a                                                  ; $090c : $02
	inc b                                                  ; $090d : $04
	ld b, $06                                                  ; $090e : $06, $06
	inc b                                                  ; $0910 : $04
	ld b, $04                                                  ; $0911 : $06, $04
	inc b                                                  ; $0913 : $04
	inc b                                                  ; $0914 : $04
	add hl, bc                                                  ; $0915 : $09
	inc b                                                  ; $0916 : $04
	inc b                                                  ; $0917 : $04
	inc b                                                  ; $0918 : $04
	inc b                                                  ; $0919 : $04
	inc b                                                  ; $091a : $04
	inc b                                                  ; $091b : $04
	inc b                                                  ; $091c : $04
	inc b                                                  ; $091d : $04
	inc b                                                  ; $091e : $04
	inc b                                                  ; $091f : $04
	inc b                                                  ; $0920 : $04
	inc b                                                  ; $0921 : $04
	inc b                                                  ; $0922 : $04
	inc b                                                  ; $0923 : $04
	inc b                                                  ; $0924 : $04
	inc bc                                                  ; $0925 : $03
	ld bc, $0302                                                  ; $0926 : $01, $02, $03
	inc b                                                  ; $0929 : $04
	ld (bc), a                                                  ; $092a : $02
	inc bc                                                  ; $092b : $03
	ld (bc), a                                                  ; $092c : $02
	ld (bc), a                                                  ; $092d : $02
	dec b                                                  ; $092e : $05
	ld (bc), a                                                  ; $092f : $02
	dec b                                                  ; $0930 : $05
	dec b                                                  ; $0931 : $05
	ld (bc), a                                                  ; $0932 : $02
	inc bc                                                  ; $0933 : $03
	ld (bc), a                                                  ; $0934 : $02
	inc bc                                                  ; $0935 : $03
	inc bc                                                  ; $0936 : $03
	inc bc                                                  ; $0937 : $03
	ld (bc), a                                                  ; $0938 : $02
	ld (bc), a                                                  ; $0939 : $02
	rlca                                                  ; $093a : $07
	ld (bc), a                                                  ; $093b : $02
	inc bc                                                  ; $093c : $03
	inc bc                                                  ; $093d : $03
	ld (bc), a                                                  ; $093e : $02
	ld bc, $0104                                                  ; $093f : $01, $04, $01
	dec b                                                  ; $0942 : $05
	rlca                                                  ; $0943 : $07
	rlca                                                  ; $0944 : $07
	inc bc                                                  ; $0945 : $03
	inc b                                                  ; $0946 : $04
	rlca                                                  ; $0947 : $07
	ex af, af'                                                  ; $0948 : $08
	dec b                                                  ; $0949 : $05
	dec b                                                  ; $094a : $05
	inc b                                                  ; $094b : $04
	inc b                                                  ; $094c : $04
	dec b                                                  ; $094d : $05
	add hl, bc                                                  ; $094e : $09
	dec b                                                  ; $094f : $05
	dec b                                                  ; $0950 : $05
	ld b, $05                                                  ; $0951 : $06, $05
	ld b, $05                                                  ; $0953 : $06, $05
	ld b, $03                                                  ; $0955 : $06, $03
	inc b                                                  ; $0957 : $04
	dec b                                                  ; $0958 : $05
	dec b                                                  ; $0959 : $05
	ld (bc), a                                                  ; $095a : $02
	dec b                                                  ; $095b : $05
	inc bc                                                  ; $095c : $03
	inc bc                                                  ; $095d : $03
	ld (bc), a                                                  ; $095e : $02
	inc bc                                                  ; $095f : $03
	dec b                                                  ; $0960 : $05
	inc bc                                                  ; $0961 : $03
	ld (bc), a                                                  ; $0962 : $02
	inc bc                                                  ; $0963 : $03
	ld b, $08                                                  ; $0964 : $06, $08
	rlca                                                  ; $0966 : $07
	inc b                                                  ; $0967 : $04
	inc b                                                  ; $0968 : $04
	inc bc                                                  ; $0969 : $03
	ld b, $05                                                  ; $096a : $06, $05
	inc b                                                  ; $096c : $04
	inc bc                                                  ; $096d : $03
	ld b, $04                                                  ; $096e : $06, $04
	inc b                                                  ; $0970 : $04
	ld (bc), a                                                  ; $0971 : $02
	inc bc                                                  ; $0972 : $03
	rlca                                                  ; $0973 : $07
	dec b                                                  ; $0974 : $05
	inc b                                                  ; $0975 : $04
	dec b                                                  ; $0976 : $05
	dec b                                                  ; $0977 : $05
	inc bc                                                  ; $0978 : $03
	inc b                                                  ; $0979 : $04
	inc b                                                  ; $097a : $04
	inc b                                                  ; $097b : $04
	inc b                                                  ; $097c : $04
	dec b                                                  ; $097d : $05
	add hl, bc                                                  ; $097e : $09
	dec b                                                  ; $097f : $05
	inc b                                                  ; $0980 : $04
	dec b                                                  ; $0981 : $05
	add hl, bc                                                  ; $0982 : $09
	ex af, af'                                                  ; $0983 : $08
	dec b                                                  ; $0984 : $05
	ld c, $03                                                  ; $0985 : $0e, $03
	ld b, $06                                                  ; $0987 : $06, $06
	ex af, af'                                                  ; $0989 : $08
	inc bc                                                  ; $098a : $03
	ld b, $04                                                  ; $098b : $06, $04
	inc b                                                  ; $098d : $04
	inc bc                                                  ; $098e : $03
	inc bc                                                  ; $098f : $03
	dec b                                                  ; $0990 : $05
	inc bc                                                  ; $0991 : $03
	ld (bc), a                                                  ; $0992 : $02
	ld (bc), a                                                  ; $0993 : $02
	inc b                                                  ; $0994 : $04
	dec b                                                  ; $0995 : $05
	inc b                                                  ; $0996 : $04
	inc b                                                  ; $0997 : $04
	ex af, af'                                                  ; $0998 : $08
	ld b, $06                                                  ; $0999 : $06, $06
	ld a, (bc)                                                  ; $099b : $0a
	inc bc                                                  ; $099c : $03
	inc b                                                  ; $099d : $04
	dec b                                                  ; $099e : $05
	inc b                                                  ; $099f : $04
	inc b                                                  ; $09a0 : $04
	ld b, $06                                                  ; $09a1 : $06, $06
	inc bc                                                  ; $09a3 : $03
	ld b, $03                                                  ; $09a4 : $06, $03
	ld b, $06                                                  ; $09a6 : $06, $06
	inc b                                                  ; $09a8 : $04
	dec b                                                  ; $09a9 : $05
	dec b                                                  ; $09aa : $05
	inc b                                                  ; $09ab : $04
	inc bc                                                  ; $09ac : $03
	inc b                                                  ; $09ad : $04
	add hl, bc                                                  ; $09ae : $09
	inc b                                                  ; $09af : $04
	dec b                                                  ; $09b0 : $05
	inc bc                                                  ; $09b1 : $03
	rlca                                                  ; $09b2 : $07
	dec b                                                  ; $09b3 : $05
	inc bc                                                  ; $09b4 : $03
	rlca                                                  ; $09b5 : $07
	dec b                                                  ; $09b6 : $05
	dec b                                                  ; $09b7 : $05
	dec b                                                  ; $09b8 : $05
	inc b                                                  ; $09b9 : $04
	inc b                                                  ; $09ba : $04
	inc b                                                  ; $09bb : $04
	rlca                                                  ; $09bc : $07
	dec b                                                  ; $09bd : $05
	dec b                                                  ; $09be : $05
	dec b                                                  ; $09bf : $05
	ld (bc), a                                                  ; $09c0 : $02
	inc bc                                                  ; $09c1 : $03
	dec b                                                  ; $09c2 : $05
	dec b                                                  ; $09c3 : $05
	inc bc                                                  ; $09c4 : $03
	ld b, $09                                                  ; $09c5 : $06, $09
	inc b                                                  ; $09c7 : $04
	ex af, af'                                                  ; $09c8 : $08
	inc bc                                                  ; $09c9 : $03
	inc bc                                                  ; $09ca : $03
	dec b                                                  ; $09cb : $05
	inc b                                                  ; $09cc : $04
	ld b, $04                                                  ; $09cd : $06, $04
	rlca                                                  ; $09cf : $07
	inc b                                                  ; $09d0 : $04
	inc b                                                  ; $09d1 : $04
	inc b                                                  ; $09d2 : $04
	inc b                                                  ; $09d3 : $04
	ld a, (bc)                                                  ; $09d4 : $0a
	rlca                                                  ; $09d5 : $07
	ex af, af'                                                  ; $09d6 : $08
	rlca                                                  ; $09d7 : $07
	inc bc                                                  ; $09d8 : $03
	dec b                                                  ; $09d9 : $05
	rlca                                                  ; $09da : $07
	inc bc                                                  ; $09db : $03
	rlca                                                  ; $09dc : $07
	rlca                                                  ; $09dd : $07
	ld b, $09                                                  ; $09de : $06, $09
	inc b                                                  ; $09e0 : $04
	inc bc                                                  ; $09e1 : $03
	dec b                                                  ; $09e2 : $05
	ld h, e                                                  ; $09e3 : $63
	and e                                                  ; $09e4 : $a3
	ld b, $04                                                  ; $09e5 : $06, $04
	ld (bc), a                                                  ; $09e7 : $02
	dec b                                                  ; $09e8 : $05
	inc b                                                  ; $09e9 : $04
	inc b                                                  ; $09ea : $04
	dec b                                                  ; $09eb : $05
	inc bc                                                  ; $09ec : $03
	inc bc                                                  ; $09ed : $03
	ld b, $03                                                  ; $09ee : $06, $03
	inc bc                                                  ; $09f0 : $03
	ld (bc), a                                                  ; $09f1 : $02
	inc b                                                  ; $09f2 : $04
	dec b                                                  ; $09f3 : $05
	inc bc                                                  ; $09f4 : $03
	inc bc                                                  ; $09f5 : $03
	inc bc                                                  ; $09f6 : $03
	dec b                                                  ; $09f7 : $05
	ld b, $06                                                  ; $09f8 : $06, $06
	ld b, $0a                                                  ; $09fa : $06, $0a
	ld b, $04                                                  ; $09fc : $06, $04
	inc bc                                                  ; $09fe : $03
	inc b                                                  ; $09ff : $04
	inc b                                                  ; $0a00 : $04
	ex af, af'                                                  ; $0a01 : $08
	inc b                                                  ; $0a02 : $04
	inc bc                                                  ; $0a03 : $03
	add hl, bc                                                  ; $0a04 : $09
	ld b, $06                                                  ; $0a05 : $06, $06
	inc bc                                                  ; $0a07 : $03
	inc b                                                  ; $0a08 : $04
	inc bc                                                  ; $0a09 : $03
	inc bc                                                  ; $0a0a : $03
	inc b                                                  ; $0a0b : $04
	dec b                                                  ; $0a0c : $05
	ld b, $0a                                                  ; $0a0d : $06, $0a
	inc b                                                  ; $0a0f : $04
	ld b, $04                                                  ; $0a10 : $06, $04
	dec b                                                  ; $0a12 : $05
	inc b                                                  ; $0a13 : $04
	inc b                                                  ; $0a14 : $04
	ld b, $03                                                  ; $0a15 : $06, $03
	rlca                                                  ; $0a17 : $07
	rlca                                                  ; $0a18 : $07
	dec b                                                  ; $0a19 : $05
	inc bc                                                  ; $0a1a : $03
	inc bc                                                  ; $0a1b : $03
	inc bc                                                  ; $0a1c : $03
	inc bc                                                  ; $0a1d : $03
	rlca                                                  ; $0a1e : $07
	inc bc                                                  ; $0a1f : $03
	ld bc, $0208                                                  ; $0a20 : $01, $08, $02
	inc b                                                  ; $0a23 : $04
	inc bc                                                  ; $0a24 : $03
	ld b, $05                                                  ; $0a25 : $06, $05
	inc b                                                  ; $0a27 : $04
	ld b, $05                                                  ; $0a28 : $06, $05
	inc b                                                  ; $0a2a : $04
	inc bc                                                  ; $0a2b : $03
	add hl, bc                                                  ; $0a2c : $09
	rlca                                                  ; $0a2d : $07
	inc bc                                                  ; $0a2e : $03
	inc b                                                  ; $0a2f : $04
	inc b                                                  ; $0a30 : $04
	inc b                                                  ; $0a31 : $04
	inc bc                                                  ; $0a32 : $03
	ld b, $02                                                  ; $0a33 : $06, $02
	inc b                                                  ; $0a35 : $04
	dec b                                                  ; $0a36 : $05
	ld b, $06                                                  ; $0a37 : $06, $06
	rlca                                                  ; $0a39 : $07
	inc b                                                  ; $0a3a : $04
	inc b                                                  ; $0a3b : $04
	inc bc                                                  ; $0a3c : $03
	dec b                                                  ; $0a3d : $05
	inc bc                                                  ; $0a3e : $03
	inc bc                                                  ; $0a3f : $03
	inc bc                                                  ; $0a40 : $03
	dec b                                                  ; $0a41 : $05
	ld (bc), a                                                  ; $0a42 : $02
	inc b                                                  ; $0a43 : $04
	inc bc                                                  ; $0a44 : $03
	inc b                                                  ; $0a45 : $04
	inc b                                                  ; $0a46 : $04
	ld b, $03                                                  ; $0a47 : $06, $03
	inc bc                                                  ; $0a49 : $03
	inc bc                                                  ; $0a4a : $03
	inc bc                                                  ; $0a4b : $03
	inc bc                                                  ; $0a4c : $03
	inc bc                                                  ; $0a4d : $03
	dec b                                                  ; $0a4e : $05
	inc b                                                  ; $0a4f : $04
	ld b, $04                                                  ; $0a50 : $06, $04
	dec b                                                  ; $0a52 : $05
	inc b                                                  ; $0a53 : $04
	dec b                                                  ; $0a54 : $05
	ld b, $02                                                  ; $0a55 : $06, $02
	ld (bc), a                                                  ; $0a57 : $02
	dec b                                                  ; $0a58 : $05
	inc bc                                                  ; $0a59 : $03
	inc b                                                  ; $0a5a : $04
	inc b                                                  ; $0a5b : $04
	inc b                                                  ; $0a5c : $04
	inc b                                                  ; $0a5d : $04
	dec b                                                  ; $0a5e : $05
	inc b                                                  ; $0a5f : $04
	inc b                                                  ; $0a60 : $04
	ld b, $04                                                  ; $0a61 : $06, $04
	inc b                                                  ; $0a63 : $04
	inc bc                                                  ; $0a64 : $03
	inc b                                                  ; $0a65 : $04
	ld b, $05                                                  ; $0a66 : $06, $05
	ex af, af'                                                  ; $0a68 : $08
	inc bc                                                  ; $0a69 : $03
	inc b                                                  ; $0a6a : $04
	dec b                                                  ; $0a6b : $05
	dec bc                                                  ; $0a6c : $0b
	inc b                                                  ; $0a6d : $04
	inc b                                                  ; $0a6e : $04
	ex af, af'                                                  ; $0a6f : $08
	ld b, $04                                                  ; $0a70 : $06, $04
	inc b                                                  ; $0a72 : $04
	inc bc                                                  ; $0a73 : $03
	rlca                                                  ; $0a74 : $07
	inc b                                                  ; $0a75 : $04
	inc b                                                  ; $0a76 : $04
	ld b, $07                                                  ; $0a77 : $06, $07
	inc b                                                  ; $0a79 : $04
	ld b, $07                                                  ; $0a7a : $06, $07
	inc bc                                                  ; $0a7c : $03
	inc bc                                                  ; $0a7d : $03
	add hl, bc                                                  ; $0a7e : $09
	ex af, af'                                                  ; $0a7f : $08
	dec b                                                  ; $0a80 : $05
	dec b                                                  ; $0a81 : $05
	inc bc                                                  ; $0a82 : $03
	inc b                                                  ; $0a83 : $04
	inc bc                                                  ; $0a84 : $03
	inc bc                                                  ; $0a85 : $03
	ld a, (bc)                                                  ; $0a86 : $0a
	dec b                                                  ; $0a87 : $05
	dec b                                                  ; $0a88 : $05
	inc b                                                  ; $0a89 : $04
	inc bc                                                  ; $0a8a : $03
	inc b                                                  ; $0a8b : $04
	ld b, $06                                                  ; $0a8c : $06, $06
	inc b                                                  ; $0a8e : $04

br_02_0a8f:
	inc bc                                                  ; $0a8f : $03
	ld b, $04                                                  ; $0a90 : $06, $04
	ld b, $04                                                  ; $0a92 : $06, $04
	inc bc                                                  ; $0a94 : $03
	inc bc                                                  ; $0a95 : $03
	inc b                                                  ; $0a96 : $04
	inc bc                                                  ; $0a97 : $03
	inc b                                                  ; $0a98 : $04
	ex af, af'                                                  ; $0a99 : $08
	inc b                                                  ; $0a9a : $04
	inc b                                                  ; $0a9b : $04
	dec b                                                  ; $0a9c : $05
	inc bc                                                  ; $0a9d : $03
	dec b                                                  ; $0a9e : $05
	ld b, $04                                                  ; $0a9f : $06, $04
	dec b                                                  ; $0aa1 : $05
	dec b                                                  ; $0aa2 : $05
	inc bc                                                  ; $0aa3 : $03
	inc bc                                                  ; $0aa4 : $03
	inc bc                                                  ; $0aa5 : $03
	inc b                                                  ; $0aa6 : $04
	inc bc                                                  ; $0aa7 : $03
	ld b, $04                                                  ; $0aa8 : $06, $04
	dec b                                                  ; $0aaa : $05
	inc bc                                                  ; $0aab : $03
	add hl, bc                                                  ; $0aac : $09
	dec b                                                  ; $0aad : $05
	dec b                                                  ; $0aae : $05
	inc bc                                                  ; $0aaf : $03
	dec b                                                  ; $0ab0 : $05
	dec b                                                  ; $0ab1 : $05
	dec b                                                  ; $0ab2 : $05
	dec b                                                  ; $0ab3 : $05
	ld b, $06                                                  ; $0ab4 : $06, $06
	dec b                                                  ; $0ab6 : $05
	dec b                                                  ; $0ab7 : $05
	ld b, $04                                                  ; $0ab8 : $06, $04
	dec b                                                  ; $0aba : $05
	inc bc                                                  ; $0abb : $03
	inc b                                                  ; $0abc : $04
	inc bc                                                  ; $0abd : $03
	inc b                                                  ; $0abe : $04
	inc b                                                  ; $0abf : $04
	dec b                                                  ; $0ac0 : $05
	dec b                                                  ; $0ac1 : $05
	inc b                                                  ; $0ac2 : $04
	ld b, $04                                                  ; $0ac3 : $06, $04
	inc b                                                  ; $0ac5 : $04
	ld b, $07                                                  ; $0ac6 : $06, $07
	inc b                                                  ; $0ac8 : $04
	inc b                                                  ; $0ac9 : $04
	ld a, (bc)                                                  ; $0aca : $0a
	dec b                                                  ; $0acb : $05
	inc b                                                  ; $0acc : $04
	ld b, $05                                                  ; $0acd : $06, $05
	ld a, (bc)                                                  ; $0acf : $0a
	dec b                                                  ; $0ad0 : $05
	inc b                                                  ; $0ad1 : $04
	dec b                                                  ; $0ad2 : $05
	dec b                                                  ; $0ad3 : $05
	dec b                                                  ; $0ad4 : $05
	inc b                                                  ; $0ad5 : $04
	inc bc                                                  ; $0ad6 : $03
	dec b                                                  ; $0ad7 : $05
	inc b                                                  ; $0ad8 : $04
	dec b                                                  ; $0ad9 : $05
	ld b, $05                                                  ; $0ada : $06, $05
	ex af, af'                                                  ; $0adc : $08
	ex af, af'                                                  ; $0add : $08
	dec b                                                  ; $0ade : $05
	ex af, af'                                                  ; $0adf : $08
	inc b                                                  ; $0ae0 : $04
	ld b, $06                                                  ; $0ae1 : $06, $06
	inc b                                                  ; $0ae3 : $04
	inc b                                                  ; $0ae4 : $04
	djnz br_02_0a8f                                                  ; $0ae5 : $10, $a8
	ld b, $03                                                  ; $0ae7 : $06, $03
	inc b                                                  ; $0ae9 : $04
	dec b                                                  ; $0aea : $05
	ld b, $04                                                  ; $0aeb : $06, $04
	inc bc                                                  ; $0aed : $03
	inc b                                                  ; $0aee : $04
	dec b                                                  ; $0aef : $05
	inc b                                                  ; $0af0 : $04
	dec b                                                  ; $0af1 : $05
	inc bc                                                  ; $0af2 : $03
	inc b                                                  ; $0af3 : $04
	ld b, $03                                                  ; $0af4 : $06, $03
	ld bc, $0308                                                  ; $0af6 : $01, $08, $03
	inc b                                                  ; $0af9 : $04
	inc bc                                                  ; $0afa : $03
	inc b                                                  ; $0afb : $04
	dec b                                                  ; $0afc : $05
	inc b                                                  ; $0afd : $04
	dec b                                                  ; $0afe : $05
	ld b, $05                                                  ; $0aff : $06, $05
	inc b                                                  ; $0b01 : $04
	inc b                                                  ; $0b02 : $04
	ld (bc), a                                                  ; $0b03 : $02
	inc bc                                                  ; $0b04 : $03
	inc b                                                  ; $0b05 : $04
	dec b                                                  ; $0b06 : $05
	inc bc                                                  ; $0b07 : $03
	dec b                                                  ; $0b08 : $05
	rlca                                                  ; $0b09 : $07
	inc bc                                                  ; $0b0a : $03
	ld (bc), a                                                  ; $0b0b : $02
	inc bc                                                  ; $0b0c : $03
	inc b                                                  ; $0b0d : $04
	inc bc                                                  ; $0b0e : $03
	inc bc                                                  ; $0b0f : $03
	inc b                                                  ; $0b10 : $04
	dec b                                                  ; $0b11 : $05
	inc bc                                                  ; $0b12 : $03
	inc bc                                                  ; $0b13 : $03
	inc bc                                                  ; $0b14 : $03
	inc bc                                                  ; $0b15 : $03
	inc bc                                                  ; $0b16 : $03
	inc b                                                  ; $0b17 : $04
	dec b                                                  ; $0b18 : $05
	ld (bc), a                                                  ; $0b19 : $02
	dec b                                                  ; $0b1a : $05
	dec b                                                  ; $0b1b : $05
	ld b, $04                                                  ; $0b1c : $06, $04
	rlca                                                  ; $0b1e : $07
	ld (bc), a                                                  ; $0b1f : $02
	inc b                                                  ; $0b20 : $04
	inc b                                                  ; $0b21 : $04
	rlca                                                  ; $0b22 : $07
	ex af, af'                                                  ; $0b23 : $08
	inc b                                                  ; $0b24 : $04
	dec b                                                  ; $0b25 : $05
	inc b                                                  ; $0b26 : $04
	add hl, bc                                                  ; $0b27 : $09
	ld b, $05                                                  ; $0b28 : $06, $05
	dec b                                                  ; $0b2a : $05
	dec b                                                  ; $0b2b : $05
	inc b                                                  ; $0b2c : $04
	dec b                                                  ; $0b2d : $05
	inc b                                                  ; $0b2e : $04
	ld b, $05                                                  ; $0b2f : $06, $05
	inc b                                                  ; $0b31 : $04
	inc bc                                                  ; $0b32 : $03
	inc bc                                                  ; $0b33 : $03
	ld (bc), a                                                  ; $0b34 : $02
	inc bc                                                  ; $0b35 : $03
	inc b                                                  ; $0b36 : $04
	rlca                                                  ; $0b37 : $07
	inc b                                                  ; $0b38 : $04
	inc b                                                  ; $0b39 : $04
	ld b, $04                                                  ; $0b3a : $06, $04
	ex af, af'                                                  ; $0b3c : $08
	ld (bc), a                                                  ; $0b3d : $02
	dec b                                                  ; $0b3e : $05
	dec b                                                  ; $0b3f : $05
	dec b                                                  ; $0b40 : $05
	dec b                                                  ; $0b41 : $05
	inc b                                                  ; $0b42 : $04
	inc b                                                  ; $0b43 : $04
	inc b                                                  ; $0b44 : $04
	inc b                                                  ; $0b45 : $04
	inc bc                                                  ; $0b46 : $03
	inc bc                                                  ; $0b47 : $03
	inc b                                                  ; $0b48 : $04
	dec b                                                  ; $0b49 : $05
	ld b, $06                                                  ; $0b4a : $06, $06
	ld (bc), a                                                  ; $0b4c : $02
	inc bc                                                  ; $0b4d : $03
	inc b                                                  ; $0b4e : $04
	inc b                                                  ; $0b4f : $04
	inc bc                                                  ; $0b50 : $03
	ld b, $06                                                  ; $0b51 : $06, $06
	inc b                                                  ; $0b53 : $04
	add hl, bc                                                  ; $0b54 : $09
	inc bc                                                  ; $0b55 : $03
	dec b                                                  ; $0b56 : $05
	rlca                                                  ; $0b57 : $07
	ld b, $04                                                  ; $0b58 : $06, $04
	ld (bc), a                                                  ; $0b5a : $02
	inc bc                                                  ; $0b5b : $03
	dec b                                                  ; $0b5c : $05
	ld b, $05                                                  ; $0b5d : $06, $05
	dec b                                                  ; $0b5f : $05
	inc b                                                  ; $0b60 : $04
	dec b                                                  ; $0b61 : $05
	dec b                                                  ; $0b62 : $05
	dec b                                                  ; $0b63 : $05
	inc b                                                  ; $0b64 : $04
	inc b                                                  ; $0b65 : $04
	inc b                                                  ; $0b66 : $04
	dec b                                                  ; $0b67 : $05
	inc bc                                                  ; $0b68 : $03
	dec b                                                  ; $0b69 : $05
	dec b                                                  ; $0b6a : $05
	inc b                                                  ; $0b6b : $04
	inc b                                                  ; $0b6c : $04
	inc b                                                  ; $0b6d : $04
	ex af, af'                                                  ; $0b6e : $08
	dec bc                                                  ; $0b6f : $0b
	ld a, (bc)                                                  ; $0b70 : $0a
	inc b                                                  ; $0b71 : $04
	ld b, $04                                                  ; $0b72 : $06, $04
	inc bc                                                  ; $0b74 : $03
	ld b, $03                                                  ; $0b75 : $06, $03
	inc b                                                  ; $0b77 : $04
	dec b                                                  ; $0b78 : $05
	dec b                                                  ; $0b79 : $05
	ld b, $06                                                  ; $0b7a : $06, $06
	inc bc                                                  ; $0b7c : $03
	ld b, $05                                                  ; $0b7d : $06, $05
	inc bc                                                  ; $0b7f : $03
	inc bc                                                  ; $0b80 : $03
	ex af, af'                                                  ; $0b81 : $08
	inc b                                                  ; $0b82 : $04
	inc bc                                                  ; $0b83 : $03
	inc b                                                  ; $0b84 : $04
	dec b                                                  ; $0b85 : $05
	inc b                                                  ; $0b86 : $04
	ld b, $05                                                  ; $0b87 : $06, $05
	dec b                                                  ; $0b89 : $05
	dec b                                                  ; $0b8a : $05
	ld b, $0d                                                  ; $0b8b : $06, $0d
	ld b, $05                                                  ; $0b8d : $06, $05
	ld (bc), a                                                  ; $0b8f : $02
	inc bc                                                  ; $0b90 : $03
	inc b                                                  ; $0b91 : $04
	dec b                                                  ; $0b92 : $05
	ld b, $09                                                  ; $0b93 : $06, $09
	inc bc                                                  ; $0b95 : $03
	inc b                                                  ; $0b96 : $04
	dec b                                                  ; $0b97 : $05
	inc b                                                  ; $0b98 : $04
	ld b, $07                                                  ; $0b99 : $06, $07

Call_02_0b9b:
	inc bc                                                  ; $0b9b : $03
	dec b                                                  ; $0b9c : $05
	inc bc                                                  ; $0b9d : $03
	dec b                                                  ; $0b9e : $05
	dec b                                                  ; $0b9f : $05
	inc bc                                                  ; $0ba0 : $03
	inc b                                                  ; $0ba1 : $04
	ld (bc), a                                                  ; $0ba2 : $02
	inc b                                                  ; $0ba3 : $04
	inc bc                                                  ; $0ba4 : $03
	inc b                                                  ; $0ba5 : $04
	inc bc                                                  ; $0ba6 : $03
	inc b                                                  ; $0ba7 : $04
	inc bc                                                  ; $0ba8 : $03
	inc c                                                  ; $0ba9 : $0c
	inc b                                                  ; $0baa : $04
	inc b                                                  ; $0bab : $04
	ld (bc), a                                                  ; $0bac : $02
	inc bc                                                  ; $0bad : $03
	inc bc                                                  ; $0bae : $03
	ld (bc), a                                                  ; $0baf : $02
	inc bc                                                  ; $0bb0 : $03
	ld (bc), a                                                  ; $0bb1 : $02
	ld (bc), a                                                  ; $0bb2 : $02
	ld (bc), a                                                  ; $0bb3 : $02
	rlca                                                  ; $0bb4 : $07
	rlca                                                  ; $0bb5 : $07
	inc b                                                  ; $0bb6 : $04
	inc b                                                  ; $0bb7 : $04
	inc b                                                  ; $0bb8 : $04
	dec b                                                  ; $0bb9 : $05
	inc b                                                  ; $0bba : $04
	inc b                                                  ; $0bbb : $04
	ex af, af'                                                  ; $0bbc : $08
	add hl, bc                                                  ; $0bbd : $09
	inc b                                                  ; $0bbe : $04
	dec bc                                                  ; $0bbf : $0b
	ld b, $0a                                                  ; $0bc0 : $06, $0a
	ld b, $07                                                  ; $0bc2 : $06, $07
	ld b, $03                                                  ; $0bc4 : $06, $03
	inc b                                                  ; $0bc6 : $04
	inc bc                                                  ; $0bc7 : $03
	inc bc                                                  ; $0bc8 : $03
	inc b                                                  ; $0bc9 : $04
	ld b, $04                                                  ; $0bca : $06, $04
	add hl, bc                                                  ; $0bcc : $09
	rlca                                                  ; $0bcd : $07
	ld b, $07                                                  ; $0bce : $06, $07
	inc b                                                  ; $0bd0 : $04
	dec b                                                  ; $0bd1 : $05
	dec b                                                  ; $0bd2 : $05
	ex af, af'                                                  ; $0bd3 : $08
	ld b, $05                                                  ; $0bd4 : $06, $05
	dec b                                                  ; $0bd6 : $05
	dec b                                                  ; $0bd7 : $05
	ld b, $06                                                  ; $0bd8 : $06, $06
	dec b                                                  ; $0bda : $05
	ld b, $04                                                  ; $0bdb : $06, $04
	inc b                                                  ; $0bdd : $04
	inc b                                                  ; $0bde : $04
	ld b, $06                                                  ; $0bdf : $06, $06
	inc b                                                  ; $0be1 : $04
	dec b                                                  ; $0be2 : $05
	ld b, $03                                                  ; $0be3 : $06, $03
	ld b, $06                                                  ; $0be5 : $06, $06
	jp nz, Jump_02_06ac                                                  ; $0be7 : $c2, $ac, $06

Call_02_0bea:
	rlca                                                  ; $0bea : $07
	dec b                                                  ; $0beb : $05
	inc b                                                  ; $0bec : $04
	inc b                                                  ; $0bed : $04
	inc b                                                  ; $0bee : $04
	dec b                                                  ; $0bef : $05
	ld b, $06                                                  ; $0bf0 : $06, $06
	inc b                                                  ; $0bf2 : $04

Jump_02_0bf3:
	ld b, $05                                                  ; $0bf3 : $06, $05
	ld b, $06                                                  ; $0bf5 : $06, $06
	rlca                                                  ; $0bf7 : $07
	inc b                                                  ; $0bf8 : $04
	dec b                                                  ; $0bf9 : $05
	rlca                                                  ; $0bfa : $07
	rlca                                                  ; $0bfb : $07
	inc b                                                  ; $0bfc : $04
	ld b, $04                                                  ; $0bfd : $06, $04
	ld b, $0a                                                  ; $0bff : $06, $0a
	ld b, $05                                                  ; $0c01 : $06, $05
	rlca                                                  ; $0c03 : $07
	inc b                                                  ; $0c04 : $04
	inc b                                                  ; $0c05 : $04
	dec b                                                  ; $0c06 : $05
	ld (bc), a                                                  ; $0c07 : $02
	dec b                                                  ; $0c08 : $05
	ld b, $03                                                  ; $0c09 : $06, $03
	ld (bc), a                                                  ; $0c0b : $02
	inc bc                                                  ; $0c0c : $03
	inc b                                                  ; $0c0d : $04
	inc bc                                                  ; $0c0e : $03
	inc bc                                                  ; $0c0f : $03
	inc b                                                  ; $0c10 : $04
	inc b                                                  ; $0c11 : $04
	ld b, $03                                                  ; $0c12 : $06, $03
	inc bc                                                  ; $0c14 : $03
	inc bc                                                  ; $0c15 : $03
	dec bc                                                  ; $0c16 : $0b
	dec b                                                  ; $0c17 : $05
	dec b                                                  ; $0c18 : $05
	inc b                                                  ; $0c19 : $04
	inc bc                                                  ; $0c1a : $03
	inc b                                                  ; $0c1b : $04
	dec b                                                  ; $0c1c : $05
	inc b                                                  ; $0c1d : $04
	ld (bc), a                                                  ; $0c1e : $02
	inc bc                                                  ; $0c1f : $03
	inc bc                                                  ; $0c20 : $03
	inc bc                                                  ; $0c21 : $03
	inc b                                                  ; $0c22 : $04
	inc bc                                                  ; $0c23 : $03
	inc bc                                                  ; $0c24 : $03
	inc b                                                  ; $0c25 : $04
	dec b                                                  ; $0c26 : $05
	dec b                                                  ; $0c27 : $05
	inc bc                                                  ; $0c28 : $03
	dec b                                                  ; $0c29 : $05
	inc b                                                  ; $0c2a : $04
	dec b                                                  ; $0c2b : $05
	ld (bc), a                                                  ; $0c2c : $02
	inc bc                                                  ; $0c2d : $03
	inc bc                                                  ; $0c2e : $03
	inc b                                                  ; $0c2f : $04
	ld b, $05                                                  ; $0c30 : $06, $05
	inc bc                                                  ; $0c32 : $03
	inc b                                                  ; $0c33 : $04
	ld b, $05                                                  ; $0c34 : $06, $05
	dec b                                                  ; $0c36 : $05
	ld b, $06                                                  ; $0c37 : $06, $06
	ld (bc), a                                                  ; $0c39 : $02
	inc bc                                                  ; $0c3a : $03
	dec b                                                  ; $0c3b : $05
	dec b                                                  ; $0c3c : $05
	inc b                                                  ; $0c3d : $04
	ld (bc), a                                                  ; $0c3e : $02
	inc b                                                  ; $0c3f : $04
	inc b                                                  ; $0c40 : $04
	inc b                                                  ; $0c41 : $04
	ld b, $03                                                  ; $0c42 : $06, $03
	inc bc                                                  ; $0c44 : $03
	ld bc, $0904                                                  ; $0c45 : $01, $04, $09
	ex af, af'                                                  ; $0c48 : $08
	inc bc                                                  ; $0c49 : $03
	inc bc                                                  ; $0c4a : $03
	inc bc                                                  ; $0c4b : $03
	inc bc                                                  ; $0c4c : $03
	inc bc                                                  ; $0c4d : $03
	dec b                                                  ; $0c4e : $05
	rlca                                                  ; $0c4f : $07
	inc b                                                  ; $0c50 : $04
	inc bc                                                  ; $0c51 : $03
	ld b, $04                                                  ; $0c52 : $06, $04
	ld (bc), a                                                  ; $0c54 : $02
	add hl, bc                                                  ; $0c55 : $09
	ld (bc), a                                                  ; $0c56 : $02
	inc bc                                                  ; $0c57 : $03
	ld b, $04                                                  ; $0c58 : $06, $04
	inc b                                                  ; $0c5a : $04
	ld (bc), a                                                  ; $0c5b : $02
	dec b                                                  ; $0c5c : $05
	ld (bc), a                                                  ; $0c5d : $02
	inc bc                                                  ; $0c5e : $03
	inc bc                                                  ; $0c5f : $03
	inc bc                                                  ; $0c60 : $03
	inc bc                                                  ; $0c61 : $03
	ld b, $0f                                                  ; $0c62 : $06, $0f
	dec b                                                  ; $0c64 : $05
	ld (bc), a                                                  ; $0c65 : $02
	ld (bc), a                                                  ; $0c66 : $02
	inc bc                                                  ; $0c67 : $03
	inc bc                                                  ; $0c68 : $03
	inc b                                                  ; $0c69 : $04
	dec b                                                  ; $0c6a : $05
	inc b                                                  ; $0c6b : $04
	dec b                                                  ; $0c6c : $05
	inc bc                                                  ; $0c6d : $03
	inc bc                                                  ; $0c6e : $03
	ld b, $07                                                  ; $0c6f : $06, $07
	dec b                                                  ; $0c71 : $05
	inc b                                                  ; $0c72 : $04
	inc b                                                  ; $0c73 : $04
	inc b                                                  ; $0c74 : $04
	inc bc                                                  ; $0c75 : $03
	dec b                                                  ; $0c76 : $05
	inc b                                                  ; $0c77 : $04
	dec b                                                  ; $0c78 : $05
	ld b, $03                                                  ; $0c79 : $06, $03
	dec b                                                  ; $0c7b : $05
	dec b                                                  ; $0c7c : $05
	rlca                                                  ; $0c7d : $07
	dec b                                                  ; $0c7e : $05
	inc b                                                  ; $0c7f : $04
	inc bc                                                  ; $0c80 : $03
	rlca                                                  ; $0c81 : $07
	dec b                                                  ; $0c82 : $05
	rlca                                                  ; $0c83 : $07
	inc b                                                  ; $0c84 : $04
	ld b, $05                                                  ; $0c85 : $06, $05
	inc b                                                  ; $0c87 : $04
	dec b                                                  ; $0c88 : $05
	inc bc                                                  ; $0c89 : $03
	ld b, $03                                                  ; $0c8a : $06, $03
	inc b                                                  ; $0c8c : $04
	ld b, $06                                                  ; $0c8d : $06, $06
	ld (bc), a                                                  ; $0c8f : $02
	dec b                                                  ; $0c90 : $05
	inc b                                                  ; $0c91 : $04
	dec b                                                  ; $0c92 : $05
	dec b                                                  ; $0c93 : $05
	ld b, $04                                                  ; $0c94 : $06, $04
	inc bc                                                  ; $0c96 : $03
	inc bc                                                  ; $0c97 : $03
	inc b                                                  ; $0c98 : $04
	dec b                                                  ; $0c99 : $05
	dec b                                                  ; $0c9a : $05
	dec b                                                  ; $0c9b : $05
	inc bc                                                  ; $0c9c : $03
	ex af, af'                                                  ; $0c9d : $08
	rlca                                                  ; $0c9e : $07
	ld b, $06                                                  ; $0c9f : $06, $06
	ld b, $03                                                  ; $0ca1 : $06, $03
	inc bc                                                  ; $0ca3 : $03
	dec b                                                  ; $0ca4 : $05
	dec b                                                  ; $0ca5 : $05
	inc b                                                  ; $0ca6 : $04
	dec b                                                  ; $0ca7 : $05
	ld b, $06                                                  ; $0ca8 : $06, $06
	ld b, $05                                                  ; $0caa : $06, $05
	inc b                                                  ; $0cac : $04
	inc b                                                  ; $0cad : $04
	inc b                                                  ; $0cae : $04
	inc b                                                  ; $0caf : $04
	dec b                                                  ; $0cb0 : $05
	inc b                                                  ; $0cb1 : $04
	inc b                                                  ; $0cb2 : $04
	inc bc                                                  ; $0cb3 : $03
	dec b                                                  ; $0cb4 : $05
	inc bc                                                  ; $0cb5 : $03
	ld (bc), a                                                  ; $0cb6 : $02
	ld (bc), a                                                  ; $0cb7 : $02
	inc bc                                                  ; $0cb8 : $03
	inc bc                                                  ; $0cb9 : $03
	ex af, af'                                                  ; $0cba : $08
	dec b                                                  ; $0cbb : $05
	dec b                                                  ; $0cbc : $05
	dec b                                                  ; $0cbd : $05
	dec b                                                  ; $0cbe : $05
	inc bc                                                  ; $0cbf : $03
	inc bc                                                  ; $0cc0 : $03
	inc bc                                                  ; $0cc1 : $03
	ld (bc), a                                                  ; $0cc2 : $02
	inc bc                                                  ; $0cc3 : $03
	inc bc                                                  ; $0cc4 : $03
	ld b, $06                                                  ; $0cc5 : $06, $06
	ld b, $03                                                  ; $0cc7 : $06, $03
	inc bc                                                  ; $0cc9 : $03
	inc bc                                                  ; $0cca : $03
	inc bc                                                  ; $0ccb : $03
	inc bc                                                  ; $0ccc : $03
	inc b                                                  ; $0ccd : $04
	dec b                                                  ; $0cce : $05
	dec b                                                  ; $0ccf : $05
	inc bc                                                  ; $0cd0 : $03
	ld (bc), a                                                  ; $0cd1 : $02
	inc bc                                                  ; $0cd2 : $03
	inc bc                                                  ; $0cd3 : $03
	ld (bc), a                                                  ; $0cd4 : $02
	inc bc                                                  ; $0cd5 : $03
	inc bc                                                  ; $0cd6 : $03
	rlca                                                  ; $0cd7 : $07
	inc bc                                                  ; $0cd8 : $03
	inc bc                                                  ; $0cd9 : $03
	dec b                                                  ; $0cda : $05
	inc b                                                  ; $0cdb : $04
	dec b                                                  ; $0cdc : $05
	ld (bc), a                                                  ; $0cdd : $02
	inc b                                                  ; $0cde : $04
	inc bc                                                  ; $0cdf : $03
	ld (bc), a                                                  ; $0ce0 : $02
	inc bc                                                  ; $0ce1 : $03
	ld (bc), a                                                  ; $0ce2 : $02
	dec b                                                  ; $0ce3 : $05

Call_02_0ce4:
	inc bc                                                  ; $0ce4 : $03
	inc bc                                                  ; $0ce5 : $03
	inc b                                                  ; $0ce6 : $04
	rlca                                                  ; $0ce7 : $07
	rlca                                                  ; $0ce8 : $07
	inc hl                                                  ; $0ce9 : $23
	or c                                                  ; $0cea : $b1
	inc bc                                                  ; $0ceb : $03
	inc b                                                  ; $0cec : $04
	ld b, $03                                                  ; $0ced : $06, $03
	inc b                                                  ; $0cef : $04
	ld (bc), a                                                  ; $0cf0 : $02
	inc b                                                  ; $0cf1 : $04
	ld (bc), a                                                  ; $0cf2 : $02
	inc b                                                  ; $0cf3 : $04
	inc b                                                  ; $0cf4 : $04
	dec b                                                  ; $0cf5 : $05
	dec b                                                  ; $0cf6 : $05
	ld b, $04                                                  ; $0cf7 : $06, $04
	inc bc                                                  ; $0cf9 : $03
	inc bc                                                  ; $0cfa : $03
	inc bc                                                  ; $0cfb : $03
	inc bc                                                  ; $0cfc : $03
	ld (bc), a                                                  ; $0cfd : $02
	ld (bc), a                                                  ; $0cfe : $02
	inc bc                                                  ; $0cff : $03
	inc bc                                                  ; $0d00 : $03
	inc bc                                                  ; $0d01 : $03
	dec b                                                  ; $0d02 : $05
	inc bc                                                  ; $0d03 : $03
	inc bc                                                  ; $0d04 : $03
	dec b                                                  ; $0d05 : $05
	ld b, $04                                                  ; $0d06 : $06, $04
	ld b, $04                                                  ; $0d08 : $06, $04
	dec b                                                  ; $0d0a : $05
	inc b                                                  ; $0d0b : $04
	dec b                                                  ; $0d0c : $05
	inc b                                                  ; $0d0d : $04
	dec b                                                  ; $0d0e : $05
	dec b                                                  ; $0d0f : $05
	inc b                                                  ; $0d10 : $04
	dec b                                                  ; $0d11 : $05
	rlca                                                  ; $0d12 : $07
	ld b, $06                                                  ; $0d13 : $06, $06
	dec b                                                  ; $0d15 : $05
	ld (bc), a                                                  ; $0d16 : $02
	ex af, af'                                                  ; $0d17 : $08
	ld b, $05                                                  ; $0d18 : $06, $05
	inc b                                                  ; $0d1a : $04
	dec b                                                  ; $0d1b : $05
	ld b, $06                                                  ; $0d1c : $06, $06
	dec b                                                  ; $0d1e : $05
	inc b                                                  ; $0d1f : $04
	inc b                                                  ; $0d20 : $04
	inc b                                                  ; $0d21 : $04
	ld b, $02                                                  ; $0d22 : $06, $02
	ld b, $03                                                  ; $0d24 : $06, $03
	inc bc                                                  ; $0d26 : $03
	rlca                                                  ; $0d27 : $07
	ld (bc), a                                                  ; $0d28 : $02
	inc b                                                  ; $0d29 : $04
	add hl, bc                                                  ; $0d2a : $09
	dec b                                                  ; $0d2b : $05
	inc bc                                                  ; $0d2c : $03
	inc b                                                  ; $0d2d : $04
	dec b                                                  ; $0d2e : $05
	inc bc                                                  ; $0d2f : $03
	rlca                                                  ; $0d30 : $07
	dec b                                                  ; $0d31 : $05
	dec b                                                  ; $0d32 : $05
	dec b                                                  ; $0d33 : $05
	inc b                                                  ; $0d34 : $04
	dec b                                                  ; $0d35 : $05
	rlca                                                  ; $0d36 : $07
	rlca                                                  ; $0d37 : $07
	ld (bc), a                                                  ; $0d38 : $02
	rlca                                                  ; $0d39 : $07
	inc b                                                  ; $0d3a : $04
	ld (bc), a                                                  ; $0d3b : $02
	ld b, $04                                                  ; $0d3c : $06, $04
	dec b                                                  ; $0d3e : $05
	inc bc                                                  ; $0d3f : $03
	ld b, $04                                                  ; $0d40 : $06, $04
	ld b, $06                                                  ; $0d42 : $06, $06
	inc b                                                  ; $0d44 : $04
	ld b, $04                                                  ; $0d45 : $06, $04
	ld bc, $0302                                                  ; $0d47 : $01, $02, $03
	inc b                                                  ; $0d4a : $04
	dec b                                                  ; $0d4b : $05
	dec b                                                  ; $0d4c : $05
	dec b                                                  ; $0d4d : $05
	dec b                                                  ; $0d4e : $05
	ld b, $03                                                  ; $0d4f : $06, $03
	inc bc                                                  ; $0d51 : $03
	inc b                                                  ; $0d52 : $04
	inc b                                                  ; $0d53 : $04
	dec b                                                  ; $0d54 : $05
	inc b                                                  ; $0d55 : $04
	dec b                                                  ; $0d56 : $05
	dec b                                                  ; $0d57 : $05
	ld b, $05                                                  ; $0d58 : $06, $05
	ld b, $06                                                  ; $0d5a : $06, $06
	rlca                                                  ; $0d5c : $07
	inc bc                                                  ; $0d5d : $03
	inc b                                                  ; $0d5e : $04
	rlca                                                  ; $0d5f : $07
	ld b, $05                                                  ; $0d60 : $06, $05
	ld b, $09                                                  ; $0d62 : $06, $09
	dec b                                                  ; $0d64 : $05
	dec b                                                  ; $0d65 : $05
	rlca                                                  ; $0d66 : $07
	dec b                                                  ; $0d67 : $05

Call_02_0d68:
	dec b                                                  ; $0d68 : $05
	inc b                                                  ; $0d69 : $04
	inc b                                                  ; $0d6a : $04
	inc b                                                  ; $0d6b : $04
	ld b, $04                                                  ; $0d6c : $06, $04
	inc b                                                  ; $0d6e : $04
	inc bc                                                  ; $0d6f : $03
	ld (bc), a                                                  ; $0d70 : $02
	inc bc                                                  ; $0d71 : $03
	ld (bc), a                                                  ; $0d72 : $02
	inc bc                                                  ; $0d73 : $03
	inc b                                                  ; $0d74 : $04
	dec b                                                  ; $0d75 : $05
	inc b                                                  ; $0d76 : $04
	dec b                                                  ; $0d77 : $05
	ld (bc), a                                                  ; $0d78 : $02
	ld b, $03                                                  ; $0d79 : $06, $03
	inc bc                                                  ; $0d7b : $03
	ld (bc), a                                                  ; $0d7c : $02
	inc b                                                  ; $0d7d : $04
	inc bc                                                  ; $0d7e : $03
	inc b                                                  ; $0d7f : $04
	inc b                                                  ; $0d80 : $04
	ld (bc), a                                                  ; $0d81 : $02
	dec b                                                  ; $0d82 : $05
	inc bc                                                  ; $0d83 : $03
	inc b                                                  ; $0d84 : $04
	dec b                                                  ; $0d85 : $05
	inc bc                                                  ; $0d86 : $03
	ld b, $04                                                  ; $0d87 : $06, $04
	inc b                                                  ; $0d89 : $04
	ld (bc), a                                                  ; $0d8a : $02
	inc bc                                                  ; $0d8b : $03
	inc b                                                  ; $0d8c : $04
	ld (bc), a                                                  ; $0d8d : $02
	inc bc                                                  ; $0d8e : $03
	dec b                                                  ; $0d8f : $05
	ld (bc), a                                                  ; $0d90 : $02
	inc b                                                  ; $0d91 : $04
	inc b                                                  ; $0d92 : $04
	dec b                                                  ; $0d93 : $05
	ld b, $04                                                  ; $0d94 : $06, $04
	ld (bc), a                                                  ; $0d96 : $02
	inc b                                                  ; $0d97 : $04
	ld (bc), a                                                  ; $0d98 : $02
	ld (bc), a                                                  ; $0d99 : $02
	inc b                                                  ; $0d9a : $04
	inc b                                                  ; $0d9b : $04
	inc bc                                                  ; $0d9c : $03
	rlca                                                  ; $0d9d : $07
	ld b, $03                                                  ; $0d9e : $06, $03
	inc b                                                  ; $0da0 : $04
	inc bc                                                  ; $0da1 : $03
	ld (bc), a                                                  ; $0da2 : $02
	inc bc                                                  ; $0da3 : $03
	ex af, af'                                                  ; $0da4 : $08
	ex af, af'                                                  ; $0da5 : $08
	inc b                                                  ; $0da6 : $04
	inc bc                                                  ; $0da7 : $03
	ld (bc), a                                                  ; $0da8 : $02
	inc bc                                                  ; $0da9 : $03
	dec b                                                  ; $0daa : $05
	dec b                                                  ; $0dab : $05
	inc bc                                                  ; $0dac : $03
	ld (bc), a                                                  ; $0dad : $02
	ld (bc), a                                                  ; $0dae : $02
	dec b                                                  ; $0daf : $05
	ld (bc), a                                                  ; $0db0 : $02
	inc b                                                  ; $0db1 : $04
	ld (bc), a                                                  ; $0db2 : $02
	dec b                                                  ; $0db3 : $05
	inc bc                                                  ; $0db4 : $03
	ld (bc), a                                                  ; $0db5 : $02
	inc b                                                  ; $0db6 : $04
	inc b                                                  ; $0db7 : $04
	inc b                                                  ; $0db8 : $04
	inc bc                                                  ; $0db9 : $03
	inc bc                                                  ; $0dba : $03
	dec b                                                  ; $0dbb : $05
	ld (bc), a                                                  ; $0dbc : $02
	inc bc                                                  ; $0dbd : $03
	inc bc                                                  ; $0dbe : $03
	inc bc                                                  ; $0dbf : $03
	inc b                                                  ; $0dc0 : $04
	dec b                                                  ; $0dc1 : $05
	inc bc                                                  ; $0dc2 : $03
	inc b                                                  ; $0dc3 : $04
	inc bc                                                  ; $0dc4 : $03
	inc b                                                  ; $0dc5 : $04
	inc b                                                  ; $0dc6 : $04
	inc bc                                                  ; $0dc7 : $03
	inc bc                                                  ; $0dc8 : $03
	ld (bc), a                                                  ; $0dc9 : $02
	rlca                                                  ; $0dca : $07
	ld (bc), a                                                  ; $0dcb : $02
	ld b, $04                                                  ; $0dcc : $06, $04
	ld (bc), a                                                  ; $0dce : $02
	inc bc                                                  ; $0dcf : $03
	ld (bc), a                                                  ; $0dd0 : $02
	dec b                                                  ; $0dd1 : $05
	ld b, $03                                                  ; $0dd2 : $06, $03
	ld (bc), a                                                  ; $0dd4 : $02
	inc b                                                  ; $0dd5 : $04
	inc b                                                  ; $0dd6 : $04
	inc bc                                                  ; $0dd7 : $03
	inc bc                                                  ; $0dd8 : $03
	inc bc                                                  ; $0dd9 : $03
	dec b                                                  ; $0dda : $05
	inc b                                                  ; $0ddb : $04
	inc b                                                  ; $0ddc : $04
	inc bc                                                  ; $0ddd : $03
	inc b                                                  ; $0dde : $04
	ex af, af'                                                  ; $0ddf : $08
	rlca                                                  ; $0de0 : $07

Jump_02_0de1:
	inc b                                                  ; $0de1 : $04
	inc bc                                                  ; $0de2 : $03
	inc b                                                  ; $0de3 : $04
	inc b                                                  ; $0de4 : $04
	inc bc                                                  ; $0de5 : $03
	inc b                                                  ; $0de6 : $04
	dec b                                                  ; $0de7 : $05
	inc bc                                                  ; $0de8 : $03
	ld (bc), a                                                  ; $0de9 : $02
	add hl, bc                                                  ; $0dea : $09
	ld c, a                                                  ; $0deb : $4f
	or l                                                  ; $0dec : $b5
	inc bc                                                  ; $0ded : $03
	ex af, af'                                                  ; $0dee : $08
	dec b                                                  ; $0def : $05
	dec bc                                                  ; $0df0 : $0b
	ld (bc), a                                                  ; $0df1 : $02
	inc b                                                  ; $0df2 : $04
	inc b                                                  ; $0df3 : $04
	dec b                                                  ; $0df4 : $05
	add hl, bc                                                  ; $0df5 : $09
	ld b, $03                                                  ; $0df6 : $06, $03
	inc b                                                  ; $0df8 : $04
	inc b                                                  ; $0df9 : $04
	inc bc                                                  ; $0dfa : $03
	inc b                                                  ; $0dfb : $04
	inc bc                                                  ; $0dfc : $03
	inc b                                                  ; $0dfd : $04
	inc bc                                                  ; $0dfe : $03
	inc b                                                  ; $0dff : $04
	inc bc                                                  ; $0e00 : $03
	rlca                                                  ; $0e01 : $07

Jump_02_0e02:
	rlca                                                  ; $0e02 : $07
	inc bc                                                  ; $0e03 : $03
	dec b                                                  ; $0e04 : $05
	inc bc                                                  ; $0e05 : $03
	dec b                                                  ; $0e06 : $05

Call_02_0e07:
	inc b                                                  ; $0e07 : $04
	inc b                                                  ; $0e08 : $04
	dec b                                                  ; $0e09 : $05
	inc bc                                                  ; $0e0a : $03
	ld b, $04                                                  ; $0e0b : $06, $04
	inc b                                                  ; $0e0d : $04
	inc bc                                                  ; $0e0e : $03
	dec b                                                  ; $0e0f : $05
	inc b                                                  ; $0e10 : $04
	dec b                                                  ; $0e11 : $05
	inc bc                                                  ; $0e12 : $03
	inc b                                                  ; $0e13 : $04
	inc b                                                  ; $0e14 : $04
	inc b                                                  ; $0e15 : $04
	inc b                                                  ; $0e16 : $04
	inc b                                                  ; $0e17 : $04
	dec b                                                  ; $0e18 : $05
	ld b, $03                                                  ; $0e19 : $06, $03
	dec b                                                  ; $0e1b : $05
	inc b                                                  ; $0e1c : $04
	inc bc                                                  ; $0e1d : $03
	inc bc                                                  ; $0e1e : $03
	inc bc                                                  ; $0e1f : $03
	inc b                                                  ; $0e20 : $04
	dec b                                                  ; $0e21 : $05
	inc bc                                                  ; $0e22 : $03
	inc b                                                  ; $0e23 : $04
	dec b                                                  ; $0e24 : $05
	dec b                                                  ; $0e25 : $05
	dec b                                                  ; $0e26 : $05
	inc bc                                                  ; $0e27 : $03
	ld b, $06                                                  ; $0e28 : $06, $06
	ld b, $06                                                  ; $0e2a : $06, $06
	ld b, $06                                                  ; $0e2c : $06, $06
	dec b                                                  ; $0e2e : $05
	inc b                                                  ; $0e2f : $04
	rlca                                                  ; $0e30 : $07
	dec bc                                                  ; $0e31 : $0b
	ld b, $05                                                  ; $0e32 : $06, $05
	ld b, $07                                                  ; $0e34 : $06, $07
	ld a, (bc)                                                  ; $0e36 : $0a
	inc b                                                  ; $0e37 : $04
	inc b                                                  ; $0e38 : $04
	dec b                                                  ; $0e39 : $05
	ld (bc), a                                                  ; $0e3a : $02
	inc bc                                                  ; $0e3b : $03
	dec b                                                  ; $0e3c : $05
	ex af, af'                                                  ; $0e3d : $08
	inc b                                                  ; $0e3e : $04
	dec b                                                  ; $0e3f : $05
	ld b, $03                                                  ; $0e40 : $06, $03
	inc bc                                                  ; $0e42 : $03
	ld (bc), a                                                  ; $0e43 : $02
	inc b                                                  ; $0e44 : $04
	inc bc                                                  ; $0e45 : $03
	inc bc                                                  ; $0e46 : $03
	inc b                                                  ; $0e47 : $04
	inc b                                                  ; $0e48 : $04
	dec b                                                  ; $0e49 : $05
	inc b                                                  ; $0e4a : $04
	inc bc                                                  ; $0e4b : $03
	inc bc                                                  ; $0e4c : $03
	inc b                                                  ; $0e4d : $04
	dec b                                                  ; $0e4e : $05
	ld (bc), a                                                  ; $0e4f : $02
	inc bc                                                  ; $0e50 : $03
	inc bc                                                  ; $0e51 : $03
	ld (bc), a                                                  ; $0e52 : $02
	inc bc                                                  ; $0e53 : $03
	inc b                                                  ; $0e54 : $04
	rlca                                                  ; $0e55 : $07
	inc bc                                                  ; $0e56 : $03
	inc b                                                  ; $0e57 : $04
	inc bc                                                  ; $0e58 : $03
	inc b                                                  ; $0e59 : $04
	dec b                                                  ; $0e5a : $05
	rlca                                                  ; $0e5b : $07
	dec b                                                  ; $0e5c : $05
	dec b                                                  ; $0e5d : $05
	ld b, $04                                                  ; $0e5e : $06, $04
	inc bc                                                  ; $0e60 : $03
	inc bc                                                  ; $0e61 : $03
	inc b                                                  ; $0e62 : $04
	inc bc                                                  ; $0e63 : $03
	dec b                                                  ; $0e64 : $05
	inc bc                                                  ; $0e65 : $03
	inc bc                                                  ; $0e66 : $03
	ld b, $04                                                  ; $0e67 : $06, $04
	dec b                                                  ; $0e69 : $05
	inc bc                                                  ; $0e6a : $03
	inc bc                                                  ; $0e6b : $03
	dec b                                                  ; $0e6c : $05
	ex af, af'                                                  ; $0e6d : $08
	ld a, (bc)                                                  ; $0e6e : $0a
	rlca                                                  ; $0e6f : $07
	dec b                                                  ; $0e70 : $05
	rlca                                                  ; $0e71 : $07
	inc b                                                  ; $0e72 : $04
	inc b                                                  ; $0e73 : $04
	inc bc                                                  ; $0e74 : $03
	dec b                                                  ; $0e75 : $05
	ld b, $05                                                  ; $0e76 : $06, $05
	inc bc                                                  ; $0e78 : $03
	inc bc                                                  ; $0e79 : $03
	inc b                                                  ; $0e7a : $04
	inc bc                                                  ; $0e7b : $03
	inc b                                                  ; $0e7c : $04
	rlca                                                  ; $0e7d : $07
	inc b                                                  ; $0e7e : $04
	inc bc                                                  ; $0e7f : $03
	dec b                                                  ; $0e80 : $05
	inc b                                                  ; $0e81 : $04
	inc b                                                  ; $0e82 : $04
	inc b                                                  ; $0e83 : $04
	ld b, $03                                                  ; $0e84 : $06, $03
	ld a, (bc)                                                  ; $0e86 : $0a
	inc bc                                                  ; $0e87 : $03
	inc b                                                  ; $0e88 : $04
	inc bc                                                  ; $0e89 : $03
	rlca                                                  ; $0e8a : $07
	ld b, $02                                                  ; $0e8b : $06, $02
	inc bc                                                  ; $0e8d : $03
	ld (bc), a                                                  ; $0e8e : $02
	ld b, $04                                                  ; $0e8f : $06, $04
	ld (bc), a                                                  ; $0e91 : $02
	rlca                                                  ; $0e92 : $07
	inc b                                                  ; $0e93 : $04
	dec b                                                  ; $0e94 : $05
	dec b                                                  ; $0e95 : $05
	dec b                                                  ; $0e96 : $05
	ld b, $04                                                  ; $0e97 : $06, $04
	dec b                                                  ; $0e99 : $05
	inc bc                                                  ; $0e9a : $03
	ld b, $06                                                  ; $0e9b : $06, $06
	inc b                                                  ; $0e9d : $04
	ld b, $04                                                  ; $0e9e : $06, $04
	ld (bc), a                                                  ; $0ea0 : $02
	inc b                                                  ; $0ea1 : $04
	ld (bc), a                                                  ; $0ea2 : $02
	ex af, af'                                                  ; $0ea3 : $08
	inc bc                                                  ; $0ea4 : $03
	inc b                                                  ; $0ea5 : $04
	inc b                                                  ; $0ea6 : $04
	inc b                                                  ; $0ea7 : $04
	dec b                                                  ; $0ea8 : $05
	ld (bc), a                                                  ; $0ea9 : $02
	inc b                                                  ; $0eaa : $04
	inc b                                                  ; $0eab : $04
	inc b                                                  ; $0eac : $04
	dec b                                                  ; $0ead : $05
	inc b                                                  ; $0eae : $04
	inc bc                                                  ; $0eaf : $03
	inc b                                                  ; $0eb0 : $04
	ld bc, $0402                                                  ; $0eb1 : $01, $02, $04
	inc b                                                  ; $0eb4 : $04
	inc bc                                                  ; $0eb5 : $03
	dec b                                                  ; $0eb6 : $05
	ld (bc), a                                                  ; $0eb7 : $02
	inc bc                                                  ; $0eb8 : $03
	inc b                                                  ; $0eb9 : $04
	inc b                                                  ; $0eba : $04
	inc b                                                  ; $0ebb : $04
	ld (bc), a                                                  ; $0ebc : $02
	inc b                                                  ; $0ebd : $04
	ld (bc), a                                                  ; $0ebe : $02
	inc bc                                                  ; $0ebf : $03
	ld b, $07                                                  ; $0ec0 : $06, $07
	inc bc                                                  ; $0ec2 : $03
	ld b, $05                                                  ; $0ec3 : $06, $05
	rlca                                                  ; $0ec5 : $07
	ld b, $02                                                  ; $0ec6 : $06, $02
	ld (bc), a                                                  ; $0ec8 : $02
	ld b, $05                                                  ; $0ec9 : $06, $05
	ld b, $04                                                  ; $0ecb : $06, $04
	ld (bc), a                                                  ; $0ecd : $02
	dec b                                                  ; $0ece : $05
	inc b                                                  ; $0ecf : $04
	rlca                                                  ; $0ed0 : $07
	ex af, af'                                                  ; $0ed1 : $08
	inc bc                                                  ; $0ed2 : $03
	rlca                                                  ; $0ed3 : $07
	inc b                                                  ; $0ed4 : $04
	dec b                                                  ; $0ed5 : $05
	inc b                                                  ; $0ed6 : $04
	inc bc                                                  ; $0ed7 : $03
	ld b, $06                                                  ; $0ed8 : $06, $06
	ld (bc), a                                                  ; $0eda : $02
	inc bc                                                  ; $0edb : $03
	dec b                                                  ; $0edc : $05
	dec b                                                  ; $0edd : $05
	dec b                                                  ; $0ede : $05
	ld (bc), a                                                  ; $0edf : $02

Call_02_0ee0:
	inc bc                                                  ; $0ee0 : $03
	rlca                                                  ; $0ee1 : $07
	dec b                                                  ; $0ee2 : $05
	inc b                                                  ; $0ee3 : $04
	inc bc                                                  ; $0ee4 : $03
	ld (bc), a                                                  ; $0ee5 : $02
	inc bc                                                  ; $0ee6 : $03
	ld (bc), a                                                  ; $0ee7 : $02
	inc bc                                                  ; $0ee8 : $03
	inc b                                                  ; $0ee9 : $04
	inc b                                                  ; $0eea : $04
	inc b                                                  ; $0eeb : $04
	ld b, $b7                                                  ; $0eec : $06, $b7
	cp c                                                  ; $0eee : $b9
	dec b                                                  ; $0eef : $05
	inc bc                                                  ; $0ef0 : $03
	inc bc                                                  ; $0ef1 : $03
	add hl, bc                                                  ; $0ef2 : $09

Call_02_0ef3:
	rlca                                                  ; $0ef3 : $07
	ld b, $05                                                  ; $0ef4 : $06, $05
	rlca                                                  ; $0ef6 : $07
	inc bc                                                  ; $0ef7 : $03
	inc b                                                  ; $0ef8 : $04
	ld (bc), a                                                  ; $0ef9 : $02
	ld b, $03                                                  ; $0efa : $06, $03
	ld b, $03                                                  ; $0efc : $06, $03
	ld (bc), a                                                  ; $0efe : $02
	inc b                                                  ; $0eff : $04
	inc bc                                                  ; $0f00 : $03
	inc bc                                                  ; $0f01 : $03

Call_02_0f02:
	ld c, $05                                                  ; $0f02 : $0e, $05
	inc b                                                  ; $0f04 : $04
	inc b                                                  ; $0f05 : $04
	inc bc                                                  ; $0f06 : $03
	ld b, $04                                                  ; $0f07 : $06, $04
	ld b, $03                                                  ; $0f09 : $06, $03
	inc b                                                  ; $0f0b : $04
	dec b                                                  ; $0f0c : $05
	inc bc                                                  ; $0f0d : $03
	inc bc                                                  ; $0f0e : $03
	dec b                                                  ; $0f0f : $05
	inc b                                                  ; $0f10 : $04
	rlca                                                  ; $0f11 : $07
	dec b                                                  ; $0f12 : $05
	ld b, $01                                                  ; $0f13 : $06, $01
	inc b                                                  ; $0f15 : $04
	inc b                                                  ; $0f16 : $04
	ld (bc), a                                                  ; $0f17 : $02
	ld b, $05                                                  ; $0f18 : $06, $05
	ld b, $05                                                  ; $0f1a : $06, $05
	inc b                                                  ; $0f1c : $04
	inc bc                                                  ; $0f1d : $03
	dec b                                                  ; $0f1e : $05
	ld bc, $0103                                                  ; $0f1f : $01, $03, $01
	inc b                                                  ; $0f22 : $04
	rlca                                                  ; $0f23 : $07
	rlca                                                  ; $0f24 : $07
	ex af, af'                                                  ; $0f25 : $08
	dec b                                                  ; $0f26 : $05
	dec b                                                  ; $0f27 : $05
	dec b                                                  ; $0f28 : $05
	ld b, $03                                                  ; $0f29 : $06, $03
	inc bc                                                  ; $0f2b : $03
	inc bc                                                  ; $0f2c : $03
	dec b                                                  ; $0f2d : $05
	dec b                                                  ; $0f2e : $05
	inc b                                                  ; $0f2f : $04
	dec b                                                  ; $0f30 : $05
	ld b, $06                                                  ; $0f31 : $06, $06
	inc b                                                  ; $0f33 : $04
	rlca                                                  ; $0f34 : $07
	inc b                                                  ; $0f35 : $04
	inc b                                                  ; $0f36 : $04
	ld b, $03                                                  ; $0f37 : $06, $03
	ld a, (bc)                                                  ; $0f39 : $0a
	dec b                                                  ; $0f3a : $05
	dec b                                                  ; $0f3b : $05
	inc b                                                  ; $0f3c : $04
	dec b                                                  ; $0f3d : $05
	inc bc                                                  ; $0f3e : $03
	ex af, af'                                                  ; $0f3f : $08
	inc b                                                  ; $0f40 : $04
	dec b                                                  ; $0f41 : $05
	inc bc                                                  ; $0f42 : $03
	inc bc                                                  ; $0f43 : $03
	ld b, $05                                                  ; $0f44 : $06, $05
	ld b, $04                                                  ; $0f46 : $06, $04
	inc b                                                  ; $0f48 : $04
	rlca                                                  ; $0f49 : $07
	inc b                                                  ; $0f4a : $04
	rlca                                                  ; $0f4b : $07
	dec b                                                  ; $0f4c : $05
	dec b                                                  ; $0f4d : $05
	inc b                                                  ; $0f4e : $04
	dec b                                                  ; $0f4f : $05
	ld b, $07                                                  ; $0f50 : $06, $07
	dec b                                                  ; $0f52 : $05
	inc b                                                  ; $0f53 : $04
	dec b                                                  ; $0f54 : $05
	dec b                                                  ; $0f55 : $05
	ld b, $08                                                  ; $0f56 : $06, $08
	rlca                                                  ; $0f58 : $07
	inc bc                                                  ; $0f59 : $03
	inc bc                                                  ; $0f5a : $03
	ld (bc), a                                                  ; $0f5b : $02
	inc bc                                                  ; $0f5c : $03
	inc b                                                  ; $0f5d : $04
	ld (bc), a                                                  ; $0f5e : $02
	ld (bc), a                                                  ; $0f5f : $02
	dec b                                                  ; $0f60 : $05
	dec c                                                  ; $0f61 : $0d
	ld b, $06                                                  ; $0f62 : $06, $06
	inc bc                                                  ; $0f64 : $03
	inc bc                                                  ; $0f65 : $03
	inc bc                                                  ; $0f66 : $03
	inc b                                                  ; $0f67 : $04
	inc b                                                  ; $0f68 : $04
	inc b                                                  ; $0f69 : $04
	inc bc                                                  ; $0f6a : $03
	dec b                                                  ; $0f6b : $05
	inc bc                                                  ; $0f6c : $03
	inc bc                                                  ; $0f6d : $03
	ex af, af'                                                  ; $0f6e : $08
	add hl, bc                                                  ; $0f6f : $09
	inc bc                                                  ; $0f70 : $03
	rlca                                                  ; $0f71 : $07
	dec b                                                  ; $0f72 : $05
	ex af, af'                                                  ; $0f73 : $08
	ld a, (bc)                                                  ; $0f74 : $0a
	dec b                                                  ; $0f75 : $05
	dec b                                                  ; $0f76 : $05
	dec b                                                  ; $0f77 : $05
	inc b                                                  ; $0f78 : $04
	add hl, bc                                                  ; $0f79 : $09
	dec b                                                  ; $0f7a : $05
	rlca                                                  ; $0f7b : $07
	ld b, $05                                                  ; $0f7c : $06, $05
	dec b                                                  ; $0f7e : $05
	inc b                                                  ; $0f7f : $04
	rlca                                                  ; $0f80 : $07
	dec b                                                  ; $0f81 : $05
	add hl, bc                                                  ; $0f82 : $09
	dec bc                                                  ; $0f83 : $0b
	ld b, $04                                                  ; $0f84 : $06, $04
	ld a, (bc)                                                  ; $0f86 : $0a
	ld b, $07                                                  ; $0f87 : $06, $07
	inc b                                                  ; $0f89 : $04
	inc b                                                  ; $0f8a : $04
	inc bc                                                  ; $0f8b : $03
	rlca                                                  ; $0f8c : $07
	inc c                                                  ; $0f8d : $0c
	inc bc                                                  ; $0f8e : $03
	rlca                                                  ; $0f8f : $07
	rlca                                                  ; $0f90 : $07
	ld b, $08                                                  ; $0f91 : $06, $08
	ld b, $08                                                  ; $0f93 : $06, $08
	ex af, af'                                                  ; $0f95 : $08
	ld b, $04                                                  ; $0f96 : $06, $04
	inc b                                                  ; $0f98 : $04
	inc bc                                                  ; $0f99 : $03
	inc b                                                  ; $0f9a : $04
	dec b                                                  ; $0f9b : $05
	inc b                                                  ; $0f9c : $04
	inc b                                                  ; $0f9d : $04
	inc bc                                                  ; $0f9e : $03
	inc b                                                  ; $0f9f : $04
	inc b                                                  ; $0fa0 : $04
	ex af, af'                                                  ; $0fa1 : $08
	ex af, af'                                                  ; $0fa2 : $08
	dec b                                                  ; $0fa3 : $05
	ex af, af'                                                  ; $0fa4 : $08
	inc b                                                  ; $0fa5 : $04
	dec b                                                  ; $0fa6 : $05
	inc b                                                  ; $0fa7 : $04
	inc bc                                                  ; $0fa8 : $03
	dec b                                                  ; $0fa9 : $05
	inc bc                                                  ; $0faa : $03
	dec b                                                  ; $0fab : $05
	rlca                                                  ; $0fac : $07
	inc b                                                  ; $0fad : $04
	rlca                                                  ; $0fae : $07
	ld b, $04                                                  ; $0faf : $06, $04
	inc b                                                  ; $0fb1 : $04
	inc bc                                                  ; $0fb2 : $03
	inc bc                                                  ; $0fb3 : $03
	inc b                                                  ; $0fb4 : $04
	dec b                                                  ; $0fb5 : $05
	inc b                                                  ; $0fb6 : $04
	dec b                                                  ; $0fb7 : $05
	ld b, $03                                                  ; $0fb8 : $06, $03
	inc bc                                                  ; $0fba : $03
	rlca                                                  ; $0fbb : $07
	inc b                                                  ; $0fbc : $04
	ld b, $06                                                  ; $0fbd : $06, $06
	ld b, $03                                                  ; $0fbf : $06, $03
	inc bc                                                  ; $0fc1 : $03
	inc b                                                  ; $0fc2 : $04
	inc bc                                                  ; $0fc3 : $03
	add hl, bc                                                  ; $0fc4 : $09
	ex af, af'                                                  ; $0fc5 : $08
	dec b                                                  ; $0fc6 : $05
	inc b                                                  ; $0fc7 : $04
	inc bc                                                  ; $0fc8 : $03
	inc b                                                  ; $0fc9 : $04
	ld b, $04                                                  ; $0fca : $06, $04
	rlca                                                  ; $0fcc : $07
	inc bc                                                  ; $0fcd : $03
	inc bc                                                  ; $0fce : $03
	inc b                                                  ; $0fcf : $04
	dec b                                                  ; $0fd0 : $05
	dec b                                                  ; $0fd1 : $05
	inc b                                                  ; $0fd2 : $04
	rlca                                                  ; $0fd3 : $07
	inc b                                                  ; $0fd4 : $04
	dec b                                                  ; $0fd5 : $05
	inc b                                                  ; $0fd6 : $04
	dec b                                                  ; $0fd7 : $05
	inc bc                                                  ; $0fd8 : $03
	add hl, bc                                                  ; $0fd9 : $09
	rlca                                                  ; $0fda : $07
	ex af, af'                                                  ; $0fdb : $08
	inc bc                                                  ; $0fdc : $03
	dec b                                                  ; $0fdd : $05
	ld b, $02                                                  ; $0fde : $06, $02
	inc b                                                  ; $0fe0 : $04
	inc b                                                  ; $0fe1 : $04
	inc bc                                                  ; $0fe2 : $03
	ld (bc), a                                                  ; $0fe3 : $02
	inc b                                                  ; $0fe4 : $04
	inc bc                                                  ; $0fe5 : $03
	dec b                                                  ; $0fe6 : $05
	inc b                                                  ; $0fe7 : $04
	inc b                                                  ; $0fe8 : $04
	inc bc                                                  ; $0fe9 : $03
	ld (bc), a                                                  ; $0fea : $02
	rlca                                                  ; $0feb : $07
	add hl, bc                                                  ; $0fec : $09
	dec b                                                  ; $0fed : $05
	inc bc                                                  ; $0fee : $03
	xor h                                                  ; $0fef : $ac
	cp (hl)                                                  ; $0ff0 : $be
	ld (bc), a                                                  ; $0ff1 : $02
	inc bc                                                  ; $0ff2 : $03
	inc b                                                  ; $0ff3 : $04
	inc bc                                                  ; $0ff4 : $03
	ld (bc), a                                                  ; $0ff5 : $02
	inc b                                                  ; $0ff6 : $04
	ld (bc), a                                                  ; $0ff7 : $02
	inc b                                                  ; $0ff8 : $04
	inc b                                                  ; $0ff9 : $04
	ld b, $05                                                  ; $0ffa : $06, $05
	inc b                                                  ; $0ffc : $04
	inc b                                                  ; $0ffd : $04
	ld (bc), a                                                  ; $0ffe : $02
	ld (bc), a                                                  ; $0fff : $02
	ld (bc), a                                                  ; $1000 : $02
	inc b                                                  ; $1001 : $04
	ld b, $07                                                  ; $1002 : $06, $07
	rlca                                                  ; $1004 : $07
	inc bc                                                  ; $1005 : $03
	rlca                                                  ; $1006 : $07
	inc bc                                                  ; $1007 : $03
	ld (bc), a                                                  ; $1008 : $02
	inc bc                                                  ; $1009 : $03
	ld (bc), a                                                  ; $100a : $02
	ex af, af'                                                  ; $100b : $08
	add hl, bc                                                  ; $100c : $09
	ld (bc), a                                                  ; $100d : $02
	inc bc                                                  ; $100e : $03
	inc b                                                  ; $100f : $04
	ld b, $03                                                  ; $1010 : $06, $03
	inc bc                                                  ; $1012 : $03
	ld b, $05                                                  ; $1013 : $06, $05
	ex af, af'                                                  ; $1015 : $08
	inc b                                                  ; $1016 : $04
	inc bc                                                  ; $1017 : $03
	rlca                                                  ; $1018 : $07
	ld (bc), a                                                  ; $1019 : $02
	ld (bc), a                                                  ; $101a : $02
	inc bc                                                  ; $101b : $03
	ld b, $07                                                  ; $101c : $06, $07
	rlca                                                  ; $101e : $07
	rlca                                                  ; $101f : $07
	dec b                                                  ; $1020 : $05
	ld b, $03                                                  ; $1021 : $06, $03
	inc bc                                                  ; $1023 : $03
	inc bc                                                  ; $1024 : $03
	ld a, (bc)                                                  ; $1025 : $0a
	ld b, $02                                                  ; $1026 : $06, $02
	inc bc                                                  ; $1028 : $03
	inc bc                                                  ; $1029 : $03
	inc bc                                                  ; $102a : $03
	inc bc                                                  ; $102b : $03
	ld (bc), a                                                  ; $102c : $02
	inc bc                                                  ; $102d : $03
	dec b                                                  ; $102e : $05

Jump_02_102f:
	ld b, $03                                                  ; $102f : $06, $03
	ld a, (bc)                                                  ; $1031 : $0a
	dec bc                                                  ; $1032 : $0b
	inc bc                                                  ; $1033 : $03
	inc b                                                  ; $1034 : $04
	inc bc                                                  ; $1035 : $03
	dec b                                                  ; $1036 : $05

Call_02_1037:
	ld (bc), a                                                  ; $1037 : $02
	ex af, af'                                                  ; $1038 : $08
	inc bc                                                  ; $1039 : $03
	ld b, $05                                                  ; $103a : $06, $05
	inc bc                                                  ; $103c : $03
	inc bc                                                  ; $103d : $03
	rlca                                                  ; $103e : $07
	rlca                                                  ; $103f : $07
	inc b                                                  ; $1040 : $04
	inc b                                                  ; $1041 : $04
	ld b, $05                                                  ; $1042 : $06, $05
	inc bc                                                  ; $1044 : $03
	inc bc                                                  ; $1045 : $03
	ld b, $07                                                  ; $1046 : $06, $07
	ld (bc), a                                                  ; $1048 : $02
	dec b                                                  ; $1049 : $05
	inc bc                                                  ; $104a : $03
	rlca                                                  ; $104b : $07
	ex af, af'                                                  ; $104c : $08
	dec b                                                  ; $104d : $05
	dec bc                                                  ; $104e : $0b
	inc b                                                  ; $104f : $04
	inc b                                                  ; $1050 : $04
	inc bc                                                  ; $1051 : $03
	inc bc                                                  ; $1052 : $03
	dec b                                                  ; $1053 : $05
	inc bc                                                  ; $1054 : $03
	inc b                                                  ; $1055 : $04
	dec b                                                  ; $1056 : $05
	inc b                                                  ; $1057 : $04
	ex af, af'                                                  ; $1058 : $08
	ex af, af'                                                  ; $1059 : $08
	dec b                                                  ; $105a : $05
	add hl, bc                                                  ; $105b : $09
	inc b                                                  ; $105c : $04
	inc b                                                  ; $105d : $04
	ld b, $08                                                  ; $105e : $06, $08
	inc b                                                  ; $1060 : $04
	inc b                                                  ; $1061 : $04
	dec b                                                  ; $1062 : $05
	inc b                                                  ; $1063 : $04
	inc b                                                  ; $1064 : $04
	add hl, bc                                                  ; $1065 : $09
	dec b                                                  ; $1066 : $05
	rlca                                                  ; $1067 : $07
	inc bc                                                  ; $1068 : $03
	ld b, $03                                                  ; $1069 : $06, $03
	inc bc                                                  ; $106b : $03
	inc bc                                                  ; $106c : $03
	inc b                                                  ; $106d : $04
	dec b                                                  ; $106e : $05
	inc bc                                                  ; $106f : $03
	inc b                                                  ; $1070 : $04
	dec b                                                  ; $1071 : $05
	dec b                                                  ; $1072 : $05
	ld (bc), a                                                  ; $1073 : $02
	dec b                                                  ; $1074 : $05
	dec b                                                  ; $1075 : $05
	inc b                                                  ; $1076 : $04
	dec b                                                  ; $1077 : $05
	dec b                                                  ; $1078 : $05

Jump_02_1079:
	inc b                                                  ; $1079 : $04
	ex af, af'                                                  ; $107a : $08
	add hl, bc                                                  ; $107b : $09
	inc bc                                                  ; $107c : $03
	ld (bc), a                                                  ; $107d : $02
	inc bc                                                  ; $107e : $03
	dec b                                                  ; $107f : $05
	inc bc                                                  ; $1080 : $03
	inc b                                                  ; $1081 : $04
	inc bc                                                  ; $1082 : $03
	inc b                                                  ; $1083 : $04
	rlca                                                  ; $1084 : $07
	dec bc                                                  ; $1085 : $0b
	inc b                                                  ; $1086 : $04
	ld b, $04                                                  ; $1087 : $06, $04
	inc b                                                  ; $1089 : $04
	inc bc                                                  ; $108a : $03
	dec bc                                                  ; $108b : $0b
	inc b                                                  ; $108c : $04
	ld de, $0303                                                  ; $108d : $11, $03, $03
	dec b                                                  ; $1090 : $05
	inc bc                                                  ; $1091 : $03
	inc b                                                  ; $1092 : $04
	inc bc                                                  ; $1093 : $03
	dec b                                                  ; $1094 : $05
	dec b                                                  ; $1095 : $05
	inc bc                                                  ; $1096 : $03
	inc b                                                  ; $1097 : $04
	inc b                                                  ; $1098 : $04
	ld b, $03                                                  ; $1099 : $06, $03
	ld b, $06                                                  ; $109b : $06, $06
	dec b                                                  ; $109d : $05
	dec b                                                  ; $109e : $05
	inc bc                                                  ; $109f : $03
	inc bc                                                  ; $10a0 : $03
	dec b                                                  ; $10a1 : $05
	dec b                                                  ; $10a2 : $05
	rlca                                                  ; $10a3 : $07
	dec b                                                  ; $10a4 : $05
	inc bc                                                  ; $10a5 : $03
	ld b, $03                                                  ; $10a6 : $06, $03
	inc b                                                  ; $10a8 : $04
	dec b                                                  ; $10a9 : $05
	rlca                                                  ; $10aa : $07
	dec b                                                  ; $10ab : $05
	inc bc                                                  ; $10ac : $03
	rlca                                                  ; $10ad : $07
	inc b                                                  ; $10ae : $04
	dec b                                                  ; $10af : $05
	inc b                                                  ; $10b0 : $04
	inc b                                                  ; $10b1 : $04
	dec b                                                  ; $10b2 : $05
	dec b                                                  ; $10b3 : $05
	ld b, $05                                                  ; $10b4 : $06, $05
	ld (bc), a                                                  ; $10b6 : $02
	dec b                                                  ; $10b7 : $05
	dec b                                                  ; $10b8 : $05
	dec b                                                  ; $10b9 : $05
	ld (bc), a                                                  ; $10ba : $02
	inc bc                                                  ; $10bb : $03
	ex af, af'                                                  ; $10bc : $08
	rlca                                                  ; $10bd : $07
	inc bc                                                  ; $10be : $03
	inc b                                                  ; $10bf : $04
	dec b                                                  ; $10c0 : $05
	ex af, af'                                                  ; $10c1 : $08
	ex af, af'                                                  ; $10c2 : $08
	inc b                                                  ; $10c3 : $04
	rlca                                                  ; $10c4 : $07
	dec b                                                  ; $10c5 : $05
	dec b                                                  ; $10c6 : $05
	ld b, $07                                                  ; $10c7 : $06, $07
	dec b                                                  ; $10c9 : $05
	add hl, bc                                                  ; $10ca : $09
	dec b                                                  ; $10cb : $05
	dec b                                                  ; $10cc : $05
	inc b                                                  ; $10cd : $04
	inc bc                                                  ; $10ce : $03
	inc bc                                                  ; $10cf : $03
	inc bc                                                  ; $10d0 : $03
	ex af, af'                                                  ; $10d1 : $08
	ld b, $07                                                  ; $10d2 : $06, $07
	rlca                                                  ; $10d4 : $07
	inc b                                                  ; $10d5 : $04
	dec b                                                  ; $10d6 : $05
	inc bc                                                  ; $10d7 : $03
	ld b, $05                                                  ; $10d8 : $06, $05
	dec b                                                  ; $10da : $05
	ld b, $05                                                  ; $10db : $06, $05
	dec b                                                  ; $10dd : $05
	ld b, $0a                                                  ; $10de : $06, $0a
	add hl, bc                                                  ; $10e0 : $09
	dec b                                                  ; $10e1 : $05
	inc b                                                  ; $10e2 : $04
	inc b                                                  ; $10e3 : $04
	dec b                                                  ; $10e4 : $05
	ld b, $04                                                  ; $10e5 : $06, $04
	inc b                                                  ; $10e7 : $04
	inc b                                                  ; $10e8 : $04
	dec b                                                  ; $10e9 : $05
	inc bc                                                  ; $10ea : $03
	ld b, $05                                                  ; $10eb : $06, $05
	ld b, $05                                                  ; $10ed : $06, $05
	ld b, $06                                                  ; $10ef : $06, $06
	add a, l                                                  ; $10f1 : $85
	jp Jump_02_0404                                                  ; $10f2 : $c3, $04, $04


	inc b                                                  ; $10f5 : $04
	dec b                                                  ; $10f6 : $05
	ld b, $04                                                  ; $10f7 : $06, $04
	dec b                                                  ; $10f9 : $05
	ld b, $04                                                  ; $10fa : $06, $04
	rlca                                                  ; $10fc : $07

Jump_02_10fd:
	dec bc                                                  ; $10fd : $0b
	inc bc                                                  ; $10fe : $03
	dec b                                                  ; $10ff : $05
	inc b                                                  ; $1100 : $04
	inc bc                                                  ; $1101 : $03
	dec b                                                  ; $1102 : $05
	dec b                                                  ; $1103 : $05
	inc b                                                  ; $1104 : $04
	dec b                                                  ; $1105 : $05
	inc bc                                                  ; $1106 : $03
	inc b                                                  ; $1107 : $04
	inc b                                                  ; $1108 : $04
	inc bc                                                  ; $1109 : $03
	dec b                                                  ; $110a : $05
	dec b                                                  ; $110b : $05
	ld b, $04                                                  ; $110c : $06, $04
	inc b                                                  ; $110e : $04
	inc bc                                                  ; $110f : $03
	ex af, af'                                                  ; $1110 : $08
	inc b                                                  ; $1111 : $04
	inc b                                                  ; $1112 : $04
	rlca                                                  ; $1113 : $07
	ld b, $06                                                  ; $1114 : $06, $06
	inc b                                                  ; $1116 : $04
	ld b, $03                                                  ; $1117 : $06, $03
	ld b, $04                                                  ; $1119 : $06, $04
	inc b                                                  ; $111b : $04
	dec b                                                  ; $111c : $05
	inc b                                                  ; $111d : $04
	ex af, af'                                                  ; $111e : $08
	add hl, bc                                                  ; $111f : $09
	inc bc                                                  ; $1120 : $03
	ld b, $03                                                  ; $1121 : $06, $03
	ld b, $04                                                  ; $1123 : $06, $04
	inc b                                                  ; $1125 : $04
	dec b                                                  ; $1126 : $05
	inc b                                                  ; $1127 : $04
	dec b                                                  ; $1128 : $05
	dec b                                                  ; $1129 : $05
	ld b, $03                                                  ; $112a : $06, $03
	dec b                                                  ; $112c : $05
	dec c                                                  ; $112d : $0d
	rlca                                                  ; $112e : $07
	inc bc                                                  ; $112f : $03
	dec b                                                  ; $1130 : $05
	inc bc                                                  ; $1131 : $03
	inc bc                                                  ; $1132 : $03
	inc b                                                  ; $1133 : $04
	inc b                                                  ; $1134 : $04
	dec b                                                  ; $1135 : $05
	inc b                                                  ; $1136 : $04
	ld b, $04                                                  ; $1137 : $06, $04
	ld (bc), a                                                  ; $1139 : $02
	inc b                                                  ; $113a : $04
	ex af, af'                                                  ; $113b : $08
	ld b, $03                                                  ; $113c : $06, $03
	ld b, $06                                                  ; $113e : $06, $06
	inc bc                                                  ; $1140 : $03
	dec b                                                  ; $1141 : $05
	inc bc                                                  ; $1142 : $03
	inc bc                                                  ; $1143 : $03
	ld (bc), a                                                  ; $1144 : $02
	inc b                                                  ; $1145 : $04
	ld b, $05                                                  ; $1146 : $06, $05
	inc b                                                  ; $1148 : $04
	ld (bc), a                                                  ; $1149 : $02
	inc b                                                  ; $114a : $04
	rlca                                                  ; $114b : $07
	inc bc                                                  ; $114c : $03
	dec b                                                  ; $114d : $05
	ld (bc), a                                                  ; $114e : $02
	add hl, bc                                                  ; $114f : $09
	inc b                                                  ; $1150 : $04
	inc bc                                                  ; $1151 : $03
	inc b                                                  ; $1152 : $04
	inc bc                                                  ; $1153 : $03
	inc b                                                  ; $1154 : $04
	ld b, $04                                                  ; $1155 : $06, $04
	dec b                                                  ; $1157 : $05
	inc b                                                  ; $1158 : $04
	dec b                                                  ; $1159 : $05
	inc b                                                  ; $115a : $04
	inc bc                                                  ; $115b : $03
	add hl, bc                                                  ; $115c : $09
	ld b, $07                                                  ; $115d : $06, $07
	rlca                                                  ; $115f : $07
	rlca                                                  ; $1160 : $07
	rlca                                                  ; $1161 : $07
	rlca                                                  ; $1162 : $07
	ld b, $0a                                                  ; $1163 : $06, $0a
	rlca                                                  ; $1165 : $07
	inc b                                                  ; $1166 : $04
	dec b                                                  ; $1167 : $05
	inc bc                                                  ; $1168 : $03
	inc b                                                  ; $1169 : $04
	ex af, af'                                                  ; $116a : $08
	ld b, $04                                                  ; $116b : $06, $04
	inc bc                                                  ; $116d : $03
	ld (bc), a                                                  ; $116e : $02
	ld b, $05                                                  ; $116f : $06, $05
	inc b                                                  ; $1171 : $04
	inc bc                                                  ; $1172 : $03
	ld bc, $0302                                                  ; $1173 : $01, $02, $03
	dec b                                                  ; $1176 : $05
	inc bc                                                  ; $1177 : $03
	inc bc                                                  ; $1178 : $03
	rlca                                                  ; $1179 : $07
	rlca                                                  ; $117a : $07
	ld (bc), a                                                  ; $117b : $02
	ld b, $02                                                  ; $117c : $06, $02
	ld (bc), a                                                  ; $117e : $02
	ex af, af'                                                  ; $117f : $08
	rlca                                                  ; $1180 : $07
	rlca                                                  ; $1181 : $07
	ld b, $05                                                  ; $1182 : $06, $05
	dec b                                                  ; $1184 : $05
	inc b                                                  ; $1185 : $04
	dec b                                                  ; $1186 : $05
	rlca                                                  ; $1187 : $07
	inc b                                                  ; $1188 : $04
	ld b, $02                                                  ; $1189 : $06, $02
	inc bc                                                  ; $118b : $03
	inc bc                                                  ; $118c : $03
	inc bc                                                  ; $118d : $03
	inc b                                                  ; $118e : $04
	inc bc                                                  ; $118f : $03
	ld b, $02                                                  ; $1190 : $06, $02
	inc b                                                  ; $1192 : $04
	ex af, af'                                                  ; $1193 : $08
	inc b                                                  ; $1194 : $04
	dec b                                                  ; $1195 : $05
	dec b                                                  ; $1196 : $05
	ld (bc), a                                                  ; $1197 : $02
	inc bc                                                  ; $1198 : $03
	dec b                                                  ; $1199 : $05
	dec b                                                  ; $119a : $05
	inc b                                                  ; $119b : $04
	inc bc                                                  ; $119c : $03
	inc b                                                  ; $119d : $04
	inc bc                                                  ; $119e : $03
	inc b                                                  ; $119f : $04
	inc b                                                  ; $11a0 : $04
	ld (bc), a                                                  ; $11a1 : $02
	dec b                                                  ; $11a2 : $05
	ld (bc), a                                                  ; $11a3 : $02
	inc b                                                  ; $11a4 : $04
	inc bc                                                  ; $11a5 : $03
	inc b                                                  ; $11a6 : $04
	inc bc                                                  ; $11a7 : $03
	ld b, $02                                                  ; $11a8 : $06, $02
	dec b                                                  ; $11aa : $05
	ld (bc), a                                                  ; $11ab : $02
	inc bc                                                  ; $11ac : $03
	dec b                                                  ; $11ad : $05
	dec b                                                  ; $11ae : $05
	dec b                                                  ; $11af : $05
	dec b                                                  ; $11b0 : $05
	dec b                                                  ; $11b1 : $05
	dec b                                                  ; $11b2 : $05
	ld (bc), a                                                  ; $11b3 : $02
	rlca                                                  ; $11b4 : $07
	rlca                                                  ; $11b5 : $07
	ld b, $03                                                  ; $11b6 : $06, $03
	inc b                                                  ; $11b8 : $04
	inc bc                                                  ; $11b9 : $03
	inc b                                                  ; $11ba : $04
	ld (bc), a                                                  ; $11bb : $02
	inc bc                                                  ; $11bc : $03

br_02_11bd:
	ld b, $04                                                  ; $11bd : $06, $04
	ld (bc), a                                                  ; $11bf : $02
	inc b                                                  ; $11c0 : $04
	inc b                                                  ; $11c1 : $04
	inc bc                                                  ; $11c2 : $03
	dec b                                                  ; $11c3 : $05
	inc b                                                  ; $11c4 : $04
	rlca                                                  ; $11c5 : $07
	inc bc                                                  ; $11c6 : $03
	inc b                                                  ; $11c7 : $04
	dec b                                                  ; $11c8 : $05
	ld b, $07                                                  ; $11c9 : $06, $07
	dec b                                                  ; $11cb : $05
	dec b                                                  ; $11cc : $05
	inc b                                                  ; $11cd : $04
	ex af, af'                                                  ; $11ce : $08
	inc bc                                                  ; $11cf : $03
	inc bc                                                  ; $11d0 : $03
	ld (bc), a                                                  ; $11d1 : $02
	inc b                                                  ; $11d2 : $04
	inc bc                                                  ; $11d3 : $03
	inc b                                                  ; $11d4 : $04
	ld (bc), a                                                  ; $11d5 : $02
	ld (bc), a                                                  ; $11d6 : $02
	inc bc                                                  ; $11d7 : $03
	ld b, $04                                                  ; $11d8 : $06, $04
	inc bc                                                  ; $11da : $03
	inc b                                                  ; $11db : $04
	inc bc                                                  ; $11dc : $03
	ld b, $03                                                  ; $11dd : $06, $03
	ld (bc), a                                                  ; $11df : $02
	inc b                                                  ; $11e0 : $04
	inc bc                                                  ; $11e1 : $03
	dec b                                                  ; $11e2 : $05
	inc b                                                  ; $11e3 : $04
	inc bc                                                  ; $11e4 : $03
	ld bc, $0704                                                  ; $11e5 : $01, $04, $07
	rlca                                                  ; $11e8 : $07
	rlca                                                  ; $11e9 : $07
	inc bc                                                  ; $11ea : $03
	inc b                                                  ; $11eb : $04
	dec b                                                  ; $11ec : $05
	inc bc                                                  ; $11ed : $03
	ex af, af'                                                  ; $11ee : $08
	ld b, $05                                                  ; $11ef : $06, $05
	ld (bc), a                                                  ; $11f1 : $02
	rlca                                                  ; $11f2 : $07
	djnz br_02_11bd                                                  ; $11f3 : $10, $c8
	inc c                                                  ; $11f5 : $0c
	inc b                                                  ; $11f6 : $04
	rlca                                                  ; $11f7 : $07
	inc b                                                  ; $11f8 : $04
	inc bc                                                  ; $11f9 : $03
	ld b, $04                                                  ; $11fa : $06, $04
	rlca                                                  ; $11fc : $07
	inc b                                                  ; $11fd : $04
	dec b                                                  ; $11fe : $05
	inc b                                                  ; $11ff : $04
	inc bc                                                  ; $1200 : $03
	inc bc                                                  ; $1201 : $03
	ld b, $06                                                  ; $1202 : $06, $06
	ex af, af'                                                  ; $1204 : $08
	inc b                                                  ; $1205 : $04
	ld (bc), a                                                  ; $1206 : $02
	dec b                                                  ; $1207 : $05
	inc b                                                  ; $1208 : $04
	dec b                                                  ; $1209 : $05
	inc bc                                                  ; $120a : $03
	inc bc                                                  ; $120b : $03
	ld (bc), a                                                  ; $120c : $02
	inc b                                                  ; $120d : $04
	inc bc                                                  ; $120e : $03
	inc bc                                                  ; $120f : $03
	inc b                                                  ; $1210 : $04
	dec b                                                  ; $1211 : $05
	ld (bc), a                                                  ; $1212 : $02
	inc bc                                                  ; $1213 : $03
	inc b                                                  ; $1214 : $04
	dec b                                                  ; $1215 : $05
	inc b                                                  ; $1216 : $04
	ld (bc), a                                                  ; $1217 : $02
	inc b                                                  ; $1218 : $04
	inc b                                                  ; $1219 : $04
	inc b                                                  ; $121a : $04
	inc bc                                                  ; $121b : $03
	rlca                                                  ; $121c : $07
	inc bc                                                  ; $121d : $03
	inc bc                                                  ; $121e : $03
	inc b                                                  ; $121f : $04
	ld (bc), a                                                  ; $1220 : $02
	inc bc                                                  ; $1221 : $03
	rlca                                                  ; $1222 : $07
	inc b                                                  ; $1223 : $04
	inc b                                                  ; $1224 : $04
	dec b                                                  ; $1225 : $05
	inc b                                                  ; $1226 : $04
	rlca                                                  ; $1227 : $07
	inc bc                                                  ; $1228 : $03
	dec b                                                  ; $1229 : $05
	dec b                                                  ; $122a : $05
	inc b                                                  ; $122b : $04
	ld (bc), a                                                  ; $122c : $02
	inc b                                                  ; $122d : $04
	ld b, $04                                                  ; $122e : $06, $04
	inc bc                                                  ; $1230 : $03
	inc b                                                  ; $1231 : $04
	dec b                                                  ; $1232 : $05
	ld b, $05                                                  ; $1233 : $06, $05
	ld b, $07                                                  ; $1235 : $06, $07
	inc bc                                                  ; $1237 : $03
	ld b, $04                                                  ; $1238 : $06, $04
	ex af, af'                                                  ; $123a : $08
	dec b                                                  ; $123b : $05
	inc b                                                  ; $123c : $04
	inc bc                                                  ; $123d : $03
	dec b                                                  ; $123e : $05
	ld (bc), a                                                  ; $123f : $02
	ld b, $04                                                  ; $1240 : $06, $04
	ld a, (bc)                                                  ; $1242 : $0a
	ld b, $03                                                  ; $1243 : $06, $03
	inc b                                                  ; $1245 : $04
	dec b                                                  ; $1246 : $05
	ld b, $06                                                  ; $1247 : $06, $06
	inc bc                                                  ; $1249 : $03
	ld b, $08                                                  ; $124a : $06, $08
	inc bc                                                  ; $124c : $03
	dec b                                                  ; $124d : $05
	ld b, $04                                                  ; $124e : $06, $04
	rlca                                                  ; $1250 : $07
	inc bc                                                  ; $1251 : $03
	dec b                                                  ; $1252 : $05
	inc b                                                  ; $1253 : $04
	inc bc                                                  ; $1254 : $03
	inc b                                                  ; $1255 : $04
	dec b                                                  ; $1256 : $05
	ex af, af'                                                  ; $1257 : $08
	inc bc                                                  ; $1258 : $03
	dec b                                                  ; $1259 : $05
	inc bc                                                  ; $125a : $03
	inc b                                                  ; $125b : $04
	ld (bc), a                                                  ; $125c : $02
	inc bc                                                  ; $125d : $03
	ld (bc), a                                                  ; $125e : $02
	inc b                                                  ; $125f : $04
	inc b                                                  ; $1260 : $04
	rlca                                                  ; $1261 : $07
	inc bc                                                  ; $1262 : $03
	inc bc                                                  ; $1263 : $03
	inc bc                                                  ; $1264 : $03
	inc b                                                  ; $1265 : $04
	inc bc                                                  ; $1266 : $03
	ld (bc), a                                                  ; $1267 : $02
	inc bc                                                  ; $1268 : $03
	inc bc                                                  ; $1269 : $03
	inc b                                                  ; $126a : $04
	dec b                                                  ; $126b : $05
	inc bc                                                  ; $126c : $03
	dec b                                                  ; $126d : $05
	ld b, $03                                                  ; $126e : $06, $03
	inc b                                                  ; $1270 : $04
	inc b                                                  ; $1271 : $04
	inc bc                                                  ; $1272 : $03
	inc b                                                  ; $1273 : $04
	dec b                                                  ; $1274 : $05
	inc bc                                                  ; $1275 : $03
	inc b                                                  ; $1276 : $04
	inc b                                                  ; $1277 : $04
	inc b                                                  ; $1278 : $04
	inc b                                                  ; $1279 : $04
	inc bc                                                  ; $127a : $03
	inc bc                                                  ; $127b : $03
	inc b                                                  ; $127c : $04
	inc bc                                                  ; $127d : $03
	ld b, $06                                                  ; $127e : $06, $06
	add hl, bc                                                  ; $1280 : $09
	ld bc, $0302                                                  ; $1281 : $01, $02, $03
	inc bc                                                  ; $1284 : $03
	dec b                                                  ; $1285 : $05
	inc bc                                                  ; $1286 : $03
	inc bc                                                  ; $1287 : $03
	inc b                                                  ; $1288 : $04
	ld (bc), a                                                  ; $1289 : $02
	inc bc                                                  ; $128a : $03
	inc b                                                  ; $128b : $04
	dec b                                                  ; $128c : $05
	dec b                                                  ; $128d : $05
	inc b                                                  ; $128e : $04
	dec b                                                  ; $128f : $05
	ld (bc), a                                                  ; $1290 : $02
	inc b                                                  ; $1291 : $04
	ex af, af'                                                  ; $1292 : $08
	inc bc                                                  ; $1293 : $03
	ld (bc), a                                                  ; $1294 : $02
	inc b                                                  ; $1295 : $04
	inc b                                                  ; $1296 : $04
	dec b                                                  ; $1297 : $05
	dec b                                                  ; $1298 : $05
	dec b                                                  ; $1299 : $05
	dec b                                                  ; $129a : $05
	inc bc                                                  ; $129b : $03
	ld (bc), a                                                  ; $129c : $02
	inc b                                                  ; $129d : $04
	dec b                                                  ; $129e : $05
	rlca                                                  ; $129f : $07
	inc b                                                  ; $12a0 : $04
	dec b                                                  ; $12a1 : $05
	dec b                                                  ; $12a2 : $05
	ld (bc), a                                                  ; $12a3 : $02
	dec b                                                  ; $12a4 : $05
	inc b                                                  ; $12a5 : $04
	inc b                                                  ; $12a6 : $04
	inc bc                                                  ; $12a7 : $03
	inc bc                                                  ; $12a8 : $03
	inc b                                                  ; $12a9 : $04
	dec b                                                  ; $12aa : $05
	dec b                                                  ; $12ab : $05
	rlca                                                  ; $12ac : $07
	dec b                                                  ; $12ad : $05
	ld b, $04                                                  ; $12ae : $06, $04
	dec b                                                  ; $12b0 : $05
	inc b                                                  ; $12b1 : $04
	inc b                                                  ; $12b2 : $04
	inc bc                                                  ; $12b3 : $03
	dec b                                                  ; $12b4 : $05
	inc b                                                  ; $12b5 : $04
	dec b                                                  ; $12b6 : $05
	dec b                                                  ; $12b7 : $05
	inc bc                                                  ; $12b8 : $03
	inc bc                                                  ; $12b9 : $03
	dec b                                                  ; $12ba : $05
	inc bc                                                  ; $12bb : $03
	add hl, bc                                                  ; $12bc : $09
	add hl, bc                                                  ; $12bd : $09
	dec c                                                  ; $12be : $0d
	ld c, $06                                                  ; $12bf : $0e, $06
	inc bc                                                  ; $12c1 : $03
	rlca                                                  ; $12c2 : $07
	rlca                                                  ; $12c3 : $07
	inc b                                                  ; $12c4 : $04
	ex af, af'                                                  ; $12c5 : $08
	dec b                                                  ; $12c6 : $05
	dec b                                                  ; $12c7 : $05
	inc b                                                  ; $12c8 : $04
	inc b                                                  ; $12c9 : $04
	dec b                                                  ; $12ca : $05
	inc bc                                                  ; $12cb : $03
	inc b                                                  ; $12cc : $04
	dec b                                                  ; $12cd : $05
	inc bc                                                  ; $12ce : $03
	dec b                                                  ; $12cf : $05
	inc b                                                  ; $12d0 : $04
	dec b                                                  ; $12d1 : $05
	dec b                                                  ; $12d2 : $05
	dec b                                                  ; $12d3 : $05
	inc b                                                  ; $12d4 : $04
	dec b                                                  ; $12d5 : $05
	dec b                                                  ; $12d6 : $05
	dec b                                                  ; $12d7 : $05
	ld b, $05                                                  ; $12d8 : $06, $05
	inc b                                                  ; $12da : $04
	inc b                                                  ; $12db : $04
	inc b                                                  ; $12dc : $04
	inc b                                                  ; $12dd : $04
	dec b                                                  ; $12de : $05
	ld b, $04                                                  ; $12df : $06, $04
	inc b                                                  ; $12e1 : $04
	inc b                                                  ; $12e2 : $04
	inc c                                                  ; $12e3 : $0c
	inc b                                                  ; $12e4 : $04
	inc b                                                  ; $12e5 : $04
	inc bc                                                  ; $12e6 : $03
	inc b                                                  ; $12e7 : $04
	dec b                                                  ; $12e8 : $05
	inc b                                                  ; $12e9 : $04
	dec b                                                  ; $12ea : $05
	dec b                                                  ; $12eb : $05
	rlca                                                  ; $12ec : $07
	inc b                                                  ; $12ed : $04
	rlca                                                  ; $12ee : $07
	rlca                                                  ; $12ef : $07
	ld b, $06                                                  ; $12f0 : $06, $06
	rlca                                                  ; $12f2 : $07
	inc b                                                  ; $12f3 : $04
	inc bc                                                  ; $12f4 : $03
	sbc a, d                                                  ; $12f5 : $9a
	call z, $0503                                                  ; $12f6 : $cc, $03, $05
	dec b                                                  ; $12f9 : $05
	inc b                                                  ; $12fa : $04
	inc b                                                  ; $12fb : $04
	ld (bc), a                                                  ; $12fc : $02
	dec b                                                  ; $12fd : $05
	dec bc                                                  ; $12fe : $0b
	dec b                                                  ; $12ff : $05
	dec b                                                  ; $1300 : $05
	ld bc, $0605                                                  ; $1301 : $01, $05, $06
	dec b                                                  ; $1304 : $05
	ex af, af'                                                  ; $1305 : $08
	inc b                                                  ; $1306 : $04
	dec b                                                  ; $1307 : $05
	inc b                                                  ; $1308 : $04
	dec b                                                  ; $1309 : $05
	inc b                                                  ; $130a : $04
	ld a, (bc)                                                  ; $130b : $0a
	inc c                                                  ; $130c : $0c
	dec bc                                                  ; $130d : $0b

Call_02_130e:
	ex af, af'                                                  ; $130e : $08
	dec b                                                  ; $130f : $05

Call_02_1310:
	inc b                                                  ; $1310 : $04
	inc b                                                  ; $1311 : $04
	ld bc, $0605                                                  ; $1312 : $01, $05, $06
	dec b                                                  ; $1315 : $05
	inc bc                                                  ; $1316 : $03
	ld (bc), a                                                  ; $1317 : $02
	inc b                                                  ; $1318 : $04
	inc bc                                                  ; $1319 : $03
	inc b                                                  ; $131a : $04
	dec b                                                  ; $131b : $05
	inc bc                                                  ; $131c : $03
	ld b, $04                                                  ; $131d : $06, $04
	dec b                                                  ; $131f : $05
	inc b                                                  ; $1320 : $04
	dec b                                                  ; $1321 : $05
	dec b                                                  ; $1322 : $05
	ld (bc), a                                                  ; $1323 : $02
	dec b                                                  ; $1324 : $05
	ld a, (bc)                                                  ; $1325 : $0a
	inc bc                                                  ; $1326 : $03
	inc bc                                                  ; $1327 : $03
	inc bc                                                  ; $1328 : $03
	inc b                                                  ; $1329 : $04
	inc b                                                  ; $132a : $04
	inc b                                                  ; $132b : $04
	inc bc                                                  ; $132c : $03
	inc b                                                  ; $132d : $04
	inc b                                                  ; $132e : $04
	dec b                                                  ; $132f : $05
	inc bc                                                  ; $1330 : $03
	dec b                                                  ; $1331 : $05
	inc b                                                  ; $1332 : $04
	ld (bc), a                                                  ; $1333 : $02
	inc bc                                                  ; $1334 : $03
	inc b                                                  ; $1335 : $04
	inc b                                                  ; $1336 : $04
	dec b                                                  ; $1337 : $05
	inc b                                                  ; $1338 : $04
	dec b                                                  ; $1339 : $05
	dec b                                                  ; $133a : $05
	dec b                                                  ; $133b : $05
	dec b                                                  ; $133c : $05
	ld b, $06                                                  ; $133d : $06, $06
	ex af, af'                                                  ; $133f : $08
	inc bc                                                  ; $1340 : $03
	dec b                                                  ; $1341 : $05
	inc b                                                  ; $1342 : $04
	ld (bc), a                                                  ; $1343 : $02
	inc bc                                                  ; $1344 : $03
	inc bc                                                  ; $1345 : $03
	dec b                                                  ; $1346 : $05
	inc b                                                  ; $1347 : $04
	dec b                                                  ; $1348 : $05
	ld b, $05                                                  ; $1349 : $06, $05
	dec b                                                  ; $134b : $05
	ld b, $04                                                  ; $134c : $06, $04
	inc b                                                  ; $134e : $04
	rlca                                                  ; $134f : $07
	inc b                                                  ; $1350 : $04
	inc b                                                  ; $1351 : $04
	inc b                                                  ; $1352 : $04
	dec b                                                  ; $1353 : $05
	inc b                                                  ; $1354 : $04
	inc b                                                  ; $1355 : $04
	ld b, $04                                                  ; $1356 : $06, $04
	inc bc                                                  ; $1358 : $03
	dec b                                                  ; $1359 : $05
	ld b, $05                                                  ; $135a : $06, $05
	inc b                                                  ; $135c : $04
	dec b                                                  ; $135d : $05
	dec b                                                  ; $135e : $05
	ld b, $03                                                  ; $135f : $06, $03
	inc b                                                  ; $1361 : $04
	dec b                                                  ; $1362 : $05
	ex af, af'                                                  ; $1363 : $08
	ex af, af'                                                  ; $1364 : $08
	rlca                                                  ; $1365 : $07
	dec b                                                  ; $1366 : $05
	rlca                                                  ; $1367 : $07
	rlca                                                  ; $1368 : $07
	inc b                                                  ; $1369 : $04
	inc b                                                  ; $136a : $04
	dec b                                                  ; $136b : $05
	ld b, $05                                                  ; $136c : $06, $05
	rlca                                                  ; $136e : $07
	dec b                                                  ; $136f : $05
	dec b                                                  ; $1370 : $05
	inc b                                                  ; $1371 : $04
	dec b                                                  ; $1372 : $05
	inc b                                                  ; $1373 : $04
	dec b                                                  ; $1374 : $05
	dec b                                                  ; $1375 : $05
	ld b, $06                                                  ; $1376 : $06, $06
	inc b                                                  ; $1378 : $04
	ld b, $06                                                  ; $1379 : $06, $06
	dec b                                                  ; $137b : $05
	inc b                                                  ; $137c : $04
	ld b, $04                                                  ; $137d : $06, $04
	ld a, (bc)                                                  ; $137f : $0a
	inc b                                                  ; $1380 : $04
	dec b                                                  ; $1381 : $05
	ld b, $08                                                  ; $1382 : $06, $08
	dec bc                                                  ; $1384 : $0b
	rlca                                                  ; $1385 : $07
	dec b                                                  ; $1386 : $05
	ld (bc), a                                                  ; $1387 : $02
	rlca                                                  ; $1388 : $07
	inc b                                                  ; $1389 : $04
	dec b                                                  ; $138a : $05
	inc bc                                                  ; $138b : $03
	ex af, af'                                                  ; $138c : $08
	ex af, af'                                                  ; $138d : $08
	dec b                                                  ; $138e : $05
	rlca                                                  ; $138f : $07
	ld (bc), a                                                  ; $1390 : $02
	inc bc                                                  ; $1391 : $03
	inc b                                                  ; $1392 : $04
	inc bc                                                  ; $1393 : $03
	inc b                                                  ; $1394 : $04
	inc bc                                                  ; $1395 : $03
	ex af, af'                                                  ; $1396 : $08
	ld b, $02                                                  ; $1397 : $06, $02
	ld (bc), a                                                  ; $1399 : $02
	inc b                                                  ; $139a : $04
	inc b                                                  ; $139b : $04
	ld (bc), a                                                  ; $139c : $02
	inc b                                                  ; $139d : $04
	inc b                                                  ; $139e : $04
	add hl, bc                                                  ; $139f : $09
	ex af, af'                                                  ; $13a0 : $08
	ex af, af'                                                  ; $13a1 : $08
	inc bc                                                  ; $13a2 : $03
	ld b, $03                                                  ; $13a3 : $06, $03
	add hl, bc                                                  ; $13a5 : $09
	inc b                                                  ; $13a6 : $04
	inc b                                                  ; $13a7 : $04
	inc bc                                                  ; $13a8 : $03
	inc b                                                  ; $13a9 : $04
	ld a, (bc)                                                  ; $13aa : $0a
	ld (bc), a                                                  ; $13ab : $02
	ld (bc), a                                                  ; $13ac : $02
	inc bc                                                  ; $13ad : $03
	inc bc                                                  ; $13ae : $03
	dec b                                                  ; $13af : $05
	inc bc                                                  ; $13b0 : $03
	dec b                                                  ; $13b1 : $05
	rlca                                                  ; $13b2 : $07
	ld (bc), a                                                  ; $13b3 : $02
	dec b                                                  ; $13b4 : $05
	inc bc                                                  ; $13b5 : $03
	ld (bc), a                                                  ; $13b6 : $02
	inc b                                                  ; $13b7 : $04
	rlca                                                  ; $13b8 : $07
	dec b                                                  ; $13b9 : $05
	dec b                                                  ; $13ba : $05
	ld b, $04                                                  ; $13bb : $06, $04
	dec b                                                  ; $13bd : $05
	inc bc                                                  ; $13be : $03
	dec b                                                  ; $13bf : $05
	dec b                                                  ; $13c0 : $05
	ld (bc), a                                                  ; $13c1 : $02
	dec b                                                  ; $13c2 : $05
	inc bc                                                  ; $13c3 : $03
	inc b                                                  ; $13c4 : $04
	inc b                                                  ; $13c5 : $04
	rlca                                                  ; $13c6 : $07
	inc bc                                                  ; $13c7 : $03
	ld (bc), a                                                  ; $13c8 : $02
	inc b                                                  ; $13c9 : $04
	inc bc                                                  ; $13ca : $03
	inc bc                                                  ; $13cb : $03
	inc bc                                                  ; $13cc : $03
	inc bc                                                  ; $13cd : $03
	ld (bc), a                                                  ; $13ce : $02
	inc b                                                  ; $13cf : $04
	ld (bc), a                                                  ; $13d0 : $02
	inc bc                                                  ; $13d1 : $03
	ld (bc), a                                                  ; $13d2 : $02
	inc b                                                  ; $13d3 : $04
	ld b, $02                                                  ; $13d4 : $06, $02
	add hl, bc                                                  ; $13d6 : $09
	inc bc                                                  ; $13d7 : $03
	rlca                                                  ; $13d8 : $07
	inc bc                                                  ; $13d9 : $03
	ld b, $07                                                  ; $13da : $06, $07
	dec bc                                                  ; $13dc : $0b
	ld b, $02                                                  ; $13dd : $06, $02
	inc bc                                                  ; $13df : $03
	inc bc                                                  ; $13e0 : $03
	dec b                                                  ; $13e1 : $05
	dec b                                                  ; $13e2 : $05
	ld b, $02                                                  ; $13e3 : $06, $02
	dec b                                                  ; $13e5 : $05
	inc b                                                  ; $13e6 : $04
	rlca                                                  ; $13e7 : $07
	dec b                                                  ; $13e8 : $05
	dec b                                                  ; $13e9 : $05
	inc b                                                  ; $13ea : $04
	inc bc                                                  ; $13eb : $03
	ex af, af'                                                  ; $13ec : $08
	inc bc                                                  ; $13ed : $03
	ld (bc), a                                                  ; $13ee : $02
	inc bc                                                  ; $13ef : $03
	inc bc                                                  ; $13f0 : $03
	ld b, $07                                                  ; $13f1 : $06, $07
	inc b                                                  ; $13f3 : $04
	ld b, $06                                                  ; $13f4 : $06, $06
	inc bc                                                  ; $13f6 : $03
	ld d, a                                                  ; $13f7 : $57
	pop de                                                  ; $13f8 : $d1
	inc b                                                  ; $13f9 : $04
	inc b                                                  ; $13fa : $04
	dec b                                                  ; $13fb : $05
	ld a, (bc)                                                  ; $13fc : $0a
	dec b                                                  ; $13fd : $05
	dec b                                                  ; $13fe : $05
	inc bc                                                  ; $13ff : $03
	ld b, $04                                                  ; $1400 : $06, $04
	inc bc                                                  ; $1402 : $03
	inc b                                                  ; $1403 : $04
	ld (bc), a                                                  ; $1404 : $02
	ld b, $04                                                  ; $1405 : $06, $04
	inc b                                                  ; $1407 : $04
	inc bc                                                  ; $1408 : $03
	ld (bc), a                                                  ; $1409 : $02
	inc b                                                  ; $140a : $04
	ld (bc), a                                                  ; $140b : $02
	inc b                                                  ; $140c : $04
	inc bc                                                  ; $140d : $03
	dec b                                                  ; $140e : $05
	ld b, $05                                                  ; $140f : $06, $05
	inc c                                                  ; $1411 : $0c
	dec bc                                                  ; $1412 : $0b
	inc b                                                  ; $1413 : $04
	inc b                                                  ; $1414 : $04
	dec b                                                  ; $1415 : $05
	rlca                                                  ; $1416 : $07
	inc bc                                                  ; $1417 : $03
	inc b                                                  ; $1418 : $04
	dec b                                                  ; $1419 : $05
	rlca                                                  ; $141a : $07
	inc bc                                                  ; $141b : $03
	rlca                                                  ; $141c : $07
	ld (bc), a                                                  ; $141d : $02
	add hl, bc                                                  ; $141e : $09
	inc bc                                                  ; $141f : $03
	inc b                                                  ; $1420 : $04
	inc b                                                  ; $1421 : $04
	inc bc                                                  ; $1422 : $03
	inc bc                                                  ; $1423 : $03
	ld (bc), a                                                  ; $1424 : $02
	inc b                                                  ; $1425 : $04
	dec b                                                  ; $1426 : $05
	dec b                                                  ; $1427 : $05
	dec b                                                  ; $1428 : $05
	ld b, $04                                                  ; $1429 : $06, $04
	dec b                                                  ; $142b : $05
	inc bc                                                  ; $142c : $03
	inc b                                                  ; $142d : $04
	inc b                                                  ; $142e : $04
	inc b                                                  ; $142f : $04
	ld (bc), a                                                  ; $1430 : $02
	inc bc                                                  ; $1431 : $03
	inc b                                                  ; $1432 : $04
	inc bc                                                  ; $1433 : $03
	ld b, $04                                                  ; $1434 : $06, $04
	dec b                                                  ; $1436 : $05
	ld (bc), a                                                  ; $1437 : $02
	inc b                                                  ; $1438 : $04
	ld b, $05                                                  ; $1439 : $06, $05
	dec b                                                  ; $143b : $05
	inc bc                                                  ; $143c : $03
	inc bc                                                  ; $143d : $03
	inc bc                                                  ; $143e : $03
	dec b                                                  ; $143f : $05
	inc bc                                                  ; $1440 : $03
	inc bc                                                  ; $1441 : $03
	inc bc                                                  ; $1442 : $03
	inc bc                                                  ; $1443 : $03
	inc bc                                                  ; $1444 : $03
	inc b                                                  ; $1445 : $04
	inc b                                                  ; $1446 : $04
	dec b                                                  ; $1447 : $05
	inc bc                                                  ; $1448 : $03
	ld (bc), a                                                  ; $1449 : $02
	inc bc                                                  ; $144a : $03
	ld a, (bc)                                                  ; $144b : $0a
	inc bc                                                  ; $144c : $03
	inc b                                                  ; $144d : $04
	dec b                                                  ; $144e : $05
	ld (bc), a                                                  ; $144f : $02
	inc b                                                  ; $1450 : $04
	inc b                                                  ; $1451 : $04
	inc bc                                                  ; $1452 : $03
	inc b                                                  ; $1453 : $04
	dec b                                                  ; $1454 : $05
	inc bc                                                  ; $1455 : $03
	inc bc                                                  ; $1456 : $03
	inc b                                                  ; $1457 : $04
	rlca                                                  ; $1458 : $07
	inc b                                                  ; $1459 : $04
	inc b                                                  ; $145a : $04
	inc b                                                  ; $145b : $04
	ld (bc), a                                                  ; $145c : $02
	inc bc                                                  ; $145d : $03
	inc b                                                  ; $145e : $04
	inc bc                                                  ; $145f : $03
	inc b                                                  ; $1460 : $04
	inc b                                                  ; $1461 : $04
	dec b                                                  ; $1462 : $05
	inc b                                                  ; $1463 : $04
	inc b                                                  ; $1464 : $04
	inc b                                                  ; $1465 : $04
	dec b                                                  ; $1466 : $05
	dec b                                                  ; $1467 : $05
	inc bc                                                  ; $1468 : $03
	inc b                                                  ; $1469 : $04
	inc b                                                  ; $146a : $04
	inc b                                                  ; $146b : $04
	dec b                                                  ; $146c : $05
	ld (bc), a                                                  ; $146d : $02
	inc bc                                                  ; $146e : $03
	dec b                                                  ; $146f : $05
	ld a, (bc)                                                  ; $1470 : $0a
	dec b                                                  ; $1471 : $05
	inc bc                                                  ; $1472 : $03
	dec b                                                  ; $1473 : $05
	inc bc                                                  ; $1474 : $03
	inc bc                                                  ; $1475 : $03
	dec b                                                  ; $1476 : $05
	ld b, $05                                                  ; $1477 : $06, $05
	inc b                                                  ; $1479 : $04
	inc bc                                                  ; $147a : $03
	inc b                                                  ; $147b : $04
	inc bc                                                  ; $147c : $03
	inc b                                                  ; $147d : $04
	inc bc                                                  ; $147e : $03
	inc b                                                  ; $147f : $04
	dec b                                                  ; $1480 : $05
	inc bc                                                  ; $1481 : $03
	add hl, bc                                                  ; $1482 : $09
	inc bc                                                  ; $1483 : $03
	inc b                                                  ; $1484 : $04
	inc b                                                  ; $1485 : $04
	inc bc                                                  ; $1486 : $03
	inc b                                                  ; $1487 : $04
	inc b                                                  ; $1488 : $04
	inc bc                                                  ; $1489 : $03
	ld bc, $0703                                                  ; $148a : $01, $03, $07
	inc b                                                  ; $148d : $04
	ld b, $03                                                  ; $148e : $06, $03
	dec b                                                  ; $1490 : $05
	inc bc                                                  ; $1491 : $03
	ex af, af'                                                  ; $1492 : $08
	ld b, $02                                                  ; $1493 : $06, $02
	inc bc                                                  ; $1495 : $03
	dec b                                                  ; $1496 : $05
	inc bc                                                  ; $1497 : $03
	ld (bc), a                                                  ; $1498 : $02
	inc b                                                  ; $1499 : $04
	dec b                                                  ; $149a : $05
	inc b                                                  ; $149b : $04
	dec b                                                  ; $149c : $05
	inc bc                                                  ; $149d : $03
	ld b, $06                                                  ; $149e : $06, $06
	ld (bc), a                                                  ; $14a0 : $02
	inc bc                                                  ; $14a1 : $03
	inc bc                                                  ; $14a2 : $03
	inc b                                                  ; $14a3 : $04
	inc b                                                  ; $14a4 : $04
	rlca                                                  ; $14a5 : $07
	ex af, af'                                                  ; $14a6 : $08
	ex af, af'                                                  ; $14a7 : $08
	ld b, $05                                                  ; $14a8 : $06, $05
	dec b                                                  ; $14aa : $05
	ld b, $04                                                  ; $14ab : $06, $04
	ex af, af'                                                  ; $14ad : $08
	inc b                                                  ; $14ae : $04
	dec b                                                  ; $14af : $05
	dec b                                                  ; $14b0 : $05
	ld a, (bc)                                                  ; $14b1 : $0a
	inc bc                                                  ; $14b2 : $03
	inc b                                                  ; $14b3 : $04
	inc b                                                  ; $14b4 : $04
	inc bc                                                  ; $14b5 : $03
	inc b                                                  ; $14b6 : $04
	ld b, $05                                                  ; $14b7 : $06, $05
	ld b, $03                                                  ; $14b9 : $06, $03
	add hl, bc                                                  ; $14bb : $09
	inc b                                                  ; $14bc : $04
	inc bc                                                  ; $14bd : $03
	inc bc                                                  ; $14be : $03
	inc b                                                  ; $14bf : $04
	inc bc                                                  ; $14c0 : $03
	inc bc                                                  ; $14c1 : $03
	dec b                                                  ; $14c2 : $05
	inc b                                                  ; $14c3 : $04
	inc bc                                                  ; $14c4 : $03
	inc bc                                                  ; $14c5 : $03
	dec b                                                  ; $14c6 : $05
	inc bc                                                  ; $14c7 : $03
	inc b                                                  ; $14c8 : $04
	dec b                                                  ; $14c9 : $05
	inc bc                                                  ; $14ca : $03
	inc b                                                  ; $14cb : $04
	inc b                                                  ; $14cc : $04
	inc b                                                  ; $14cd : $04
	dec b                                                  ; $14ce : $05
	inc b                                                  ; $14cf : $04
	inc b                                                  ; $14d0 : $04
	ld b, $02                                                  ; $14d1 : $06, $02
	ld b, $03                                                  ; $14d3 : $06, $03
	inc bc                                                  ; $14d5 : $03
	inc bc                                                  ; $14d6 : $03
	inc bc                                                  ; $14d7 : $03
	inc b                                                  ; $14d8 : $04
	ld (bc), a                                                  ; $14d9 : $02
	ld b, $06                                                  ; $14da : $06, $06
	ld b, $08                                                  ; $14dc : $06, $08
	ld b, $06                                                  ; $14de : $06, $06
	inc b                                                  ; $14e0 : $04
	inc b                                                  ; $14e1 : $04
	inc bc                                                  ; $14e2 : $03
	inc b                                                  ; $14e3 : $04
	inc bc                                                  ; $14e4 : $03
	inc bc                                                  ; $14e5 : $03
	inc bc                                                  ; $14e6 : $03
	ld a, (bc)                                                  ; $14e7 : $0a
	inc b                                                  ; $14e8 : $04
	ld b, $04                                                  ; $14e9 : $06, $04
	inc bc                                                  ; $14eb : $03
	inc bc                                                  ; $14ec : $03
	ex af, af'                                                  ; $14ed : $08
	ld b, $03                                                  ; $14ee : $06, $03
	ld b, $03                                                  ; $14f0 : $06, $03
	ld b, $03                                                  ; $14f2 : $06, $03
	ld (bc), a                                                  ; $14f4 : $02
	inc b                                                  ; $14f5 : $04
	inc bc                                                  ; $14f6 : $03
	dec b                                                  ; $14f7 : $05
	inc bc                                                  ; $14f8 : $03
	xor h                                                  ; $14f9 : $ac
	push de                                                  ; $14fa : $d5
	inc bc                                                  ; $14fb : $03
	ld b, $04                                                  ; $14fc : $06, $04
	inc b                                                  ; $14fe : $04
	inc bc                                                  ; $14ff : $03
	inc bc                                                  ; $1500 : $03
	ld (bc), a                                                  ; $1501 : $02
	dec b                                                  ; $1502 : $05
	inc bc                                                  ; $1503 : $03
	inc bc                                                  ; $1504 : $03
	inc bc                                                  ; $1505 : $03
	inc bc                                                  ; $1506 : $03
	dec b                                                  ; $1507 : $05
	inc b                                                  ; $1508 : $04
	inc bc                                                  ; $1509 : $03
	dec b                                                  ; $150a : $05
	dec b                                                  ; $150b : $05
	inc bc                                                  ; $150c : $03
	ld b, $04                                                  ; $150d : $06, $04
	inc b                                                  ; $150f : $04
	dec b                                                  ; $1510 : $05
	inc b                                                  ; $1511 : $04
	inc b                                                  ; $1512 : $04
	inc b                                                  ; $1513 : $04
	inc bc                                                  ; $1514 : $03
	rlca                                                  ; $1515 : $07
	inc b                                                  ; $1516 : $04
	inc b                                                  ; $1517 : $04
	dec b                                                  ; $1518 : $05
	inc b                                                  ; $1519 : $04
	ld b, $04                                                  ; $151a : $06, $04
	inc b                                                  ; $151c : $04
	ld b, $06                                                  ; $151d : $06, $06
	dec b                                                  ; $151f : $05
	ld b, $03                                                  ; $1520 : $06, $03
	inc b                                                  ; $1522 : $04
	inc b                                                  ; $1523 : $04
	inc bc                                                  ; $1524 : $03
	inc bc                                                  ; $1525 : $03
	rlca                                                  ; $1526 : $07
	dec b                                                  ; $1527 : $05
	inc b                                                  ; $1528 : $04
	inc b                                                  ; $1529 : $04
	dec b                                                  ; $152a : $05
	dec bc                                                  ; $152b : $0b
	ld (bc), a                                                  ; $152c : $02
	inc b                                                  ; $152d : $04
	dec b                                                  ; $152e : $05
	inc b                                                  ; $152f : $04

Call_02_1530:
	dec b                                                  ; $1530 : $05
	ld b, $06                                                  ; $1531 : $06, $06
	dec b                                                  ; $1533 : $05
	dec b                                                  ; $1534 : $05
	dec b                                                  ; $1535 : $05
	inc b                                                  ; $1536 : $04
	dec b                                                  ; $1537 : $05
	add hl, bc                                                  ; $1538 : $09
	inc bc                                                  ; $1539 : $03
	inc b                                                  ; $153a : $04
	dec b                                                  ; $153b : $05
	dec b                                                  ; $153c : $05
	dec b                                                  ; $153d : $05
	ld b, $06                                                  ; $153e : $06, $06
	ld b, $0b                                                  ; $1540 : $06, $0b
	inc b                                                  ; $1542 : $04
	inc bc                                                  ; $1543 : $03
	inc b                                                  ; $1544 : $04
	inc bc                                                  ; $1545 : $03
	inc bc                                                  ; $1546 : $03
	rlca                                                  ; $1547 : $07
	ld b, $05                                                  ; $1548 : $06, $05
	rlca                                                  ; $154a : $07
	ld b, $04                                                  ; $154b : $06, $04
	dec b                                                  ; $154d : $05
	inc bc                                                  ; $154e : $03
	add hl, bc                                                  ; $154f : $09
	dec b                                                  ; $1550 : $05
	ex af, af'                                                  ; $1551 : $08
	inc b                                                  ; $1552 : $04
	inc bc                                                  ; $1553 : $03
	ld b, $04                                                  ; $1554 : $06, $04
	inc bc                                                  ; $1556 : $03
	inc b                                                  ; $1557 : $04
	inc bc                                                  ; $1558 : $03
	inc bc                                                  ; $1559 : $03
	inc b                                                  ; $155a : $04
	inc b                                                  ; $155b : $04
	inc b                                                  ; $155c : $04
	inc bc                                                  ; $155d : $03
	inc bc                                                  ; $155e : $03
	inc b                                                  ; $155f : $04
	ld (bc), a                                                  ; $1560 : $02
	dec b                                                  ; $1561 : $05
	inc bc                                                  ; $1562 : $03
	ld (bc), a                                                  ; $1563 : $02
	inc bc                                                  ; $1564 : $03
	inc bc                                                  ; $1565 : $03
	inc bc                                                  ; $1566 : $03
	dec b                                                  ; $1567 : $05
	ld b, $03                                                  ; $1568 : $06, $03
	add hl, bc                                                  ; $156a : $09
	inc bc                                                  ; $156b : $03
	rlca                                                  ; $156c : $07
	dec b                                                  ; $156d : $05
	ld b, $05                                                  ; $156e : $06, $05
	dec b                                                  ; $1570 : $05
	dec b                                                  ; $1571 : $05
	ld b, $06                                                  ; $1572 : $06, $06
	dec b                                                  ; $1574 : $05
	rlca                                                  ; $1575 : $07
	dec b                                                  ; $1576 : $05

Jump_02_1577:
	ld (bc), a                                                  ; $1577 : $02
	inc b                                                  ; $1578 : $04
	dec b                                                  ; $1579 : $05
	inc bc                                                  ; $157a : $03
	dec b                                                  ; $157b : $05
	dec b                                                  ; $157c : $05
	dec b                                                  ; $157d : $05
	inc bc                                                  ; $157e : $03
	inc b                                                  ; $157f : $04
	inc b                                                  ; $1580 : $04
	ld (bc), a                                                  ; $1581 : $02
	ex af, af'                                                  ; $1582 : $08
	ld (bc), a                                                  ; $1583 : $02
	inc bc                                                  ; $1584 : $03
	inc b                                                  ; $1585 : $04
	dec b                                                  ; $1586 : $05
	ld b, $05                                                  ; $1587 : $06, $05
	dec b                                                  ; $1589 : $05
	dec b                                                  ; $158a : $05
	inc b                                                  ; $158b : $04
	inc bc                                                  ; $158c : $03
	inc bc                                                  ; $158d : $03
	inc b                                                  ; $158e : $04
	inc b                                                  ; $158f : $04
	rlca                                                  ; $1590 : $07
	rlca                                                  ; $1591 : $07
	rlca                                                  ; $1592 : $07
	inc bc                                                  ; $1593 : $03
	dec b                                                  ; $1594 : $05
	ld (bc), a                                                  ; $1595 : $02
	inc bc                                                  ; $1596 : $03
	inc b                                                  ; $1597 : $04
	dec b                                                  ; $1598 : $05
	inc bc                                                  ; $1599 : $03
	inc b                                                  ; $159a : $04
	dec b                                                  ; $159b : $05
	ex af, af'                                                  ; $159c : $08
	rlca                                                  ; $159d : $07
	inc bc                                                  ; $159e : $03
	inc bc                                                  ; $159f : $03
	dec b                                                  ; $15a0 : $05
	inc b                                                  ; $15a1 : $04
	inc bc                                                  ; $15a2 : $03
	inc b                                                  ; $15a3 : $04
	inc b                                                  ; $15a4 : $04
	inc b                                                  ; $15a5 : $04
	inc b                                                  ; $15a6 : $04
	dec b                                                  ; $15a7 : $05
	inc b                                                  ; $15a8 : $04
	rlca                                                  ; $15a9 : $07
	inc b                                                  ; $15aa : $04
	rlca                                                  ; $15ab : $07
	ld (bc), a                                                  ; $15ac : $02
	inc bc                                                  ; $15ad : $03
	inc b                                                  ; $15ae : $04
	ld (bc), a                                                  ; $15af : $02
	inc bc                                                  ; $15b0 : $03
	inc bc                                                  ; $15b1 : $03
	inc bc                                                  ; $15b2 : $03
	inc b                                                  ; $15b3 : $04
	inc b                                                  ; $15b4 : $04
	inc b                                                  ; $15b5 : $04
	inc bc                                                  ; $15b6 : $03
	inc bc                                                  ; $15b7 : $03
	ld (bc), a                                                  ; $15b8 : $02
	inc bc                                                  ; $15b9 : $03
	inc b                                                  ; $15ba : $04
	dec b                                                  ; $15bb : $05
	inc bc                                                  ; $15bc : $03
	inc b                                                  ; $15bd : $04
	ld (bc), a                                                  ; $15be : $02
	ld (bc), a                                                  ; $15bf : $02
	inc b                                                  ; $15c0 : $04
	ld (bc), a                                                  ; $15c1 : $02
	inc bc                                                  ; $15c2 : $03
	ld (bc), a                                                  ; $15c3 : $02
	ld (bc), a                                                  ; $15c4 : $02
	ld b, $04                                                  ; $15c5 : $06, $04
	inc b                                                  ; $15c7 : $04
	inc b                                                  ; $15c8 : $04
	dec b                                                  ; $15c9 : $05
	inc bc                                                  ; $15ca : $03
	inc bc                                                  ; $15cb : $03
	inc b                                                  ; $15cc : $04
	inc bc                                                  ; $15cd : $03
	inc b                                                  ; $15ce : $04
	rlca                                                  ; $15cf : $07
	dec b                                                  ; $15d0 : $05
	inc bc                                                  ; $15d1 : $03
	inc bc                                                  ; $15d2 : $03
	inc bc                                                  ; $15d3 : $03
	inc bc                                                  ; $15d4 : $03
	inc bc                                                  ; $15d5 : $03
	ld b, $08                                                  ; $15d6 : $06, $08
	inc b                                                  ; $15d8 : $04
	dec b                                                  ; $15d9 : $05
	ld b, $06                                                  ; $15da : $06, $06
	dec b                                                  ; $15dc : $05
	dec b                                                  ; $15dd : $05
	ld b, $06                                                  ; $15de : $06, $06
	inc b                                                  ; $15e0 : $04
	dec b                                                  ; $15e1 : $05
	inc b                                                  ; $15e2 : $04
	inc b                                                  ; $15e3 : $04
	dec b                                                  ; $15e4 : $05
	inc b                                                  ; $15e5 : $04
	ld (bc), a                                                  ; $15e6 : $02
	inc b                                                  ; $15e7 : $04
	inc bc                                                  ; $15e8 : $03
	inc bc                                                  ; $15e9 : $03
	inc b                                                  ; $15ea : $04
	dec b                                                  ; $15eb : $05
	dec b                                                  ; $15ec : $05
	inc b                                                  ; $15ed : $04
	ld b, $06                                                  ; $15ee : $06, $06
	inc bc                                                  ; $15f0 : $03
	inc b                                                  ; $15f1 : $04
	inc b                                                  ; $15f2 : $04
	ex af, af'                                                  ; $15f3 : $08
	inc bc                                                  ; $15f4 : $03
	inc bc                                                  ; $15f5 : $03
	add hl, bc                                                  ; $15f6 : $09
	inc b                                                  ; $15f7 : $04
	ld b, $05                                                  ; $15f8 : $06, $05
	inc b                                                  ; $15fa : $04
	dec d                                                  ; $15fb : $15
	jp c, $0304                                                  ; $15fc : $da, $04, $03
	inc bc                                                  ; $15ff : $03
	inc b                                                  ; $1600 : $04
	inc bc                                                  ; $1601 : $03
	inc b                                                  ; $1602 : $04
	inc b                                                  ; $1603 : $04
	dec b                                                  ; $1604 : $05
	inc bc                                                  ; $1605 : $03
	inc b                                                  ; $1606 : $04
	inc b                                                  ; $1607 : $04
	inc bc                                                  ; $1608 : $03
	inc bc                                                  ; $1609 : $03
	ex af, af'                                                  ; $160a : $08
	inc bc                                                  ; $160b : $03
	ld b, $04                                                  ; $160c : $06, $04
	inc b                                                  ; $160e : $04
	ex af, af'                                                  ; $160f : $08
	rlca                                                  ; $1610 : $07
	ld (bc), a                                                  ; $1611 : $02
	dec bc                                                  ; $1612 : $0b
	ld (bc), a                                                  ; $1613 : $02
	inc bc                                                  ; $1614 : $03
	ld b, $07                                                  ; $1615 : $06, $07
	ld b, $06                                                  ; $1617 : $06, $06
	inc bc                                                  ; $1619 : $03
	inc b                                                  ; $161a : $04
	inc bc                                                  ; $161b : $03
	inc b                                                  ; $161c : $04
	add hl, bc                                                  ; $161d : $09
	ld a, (bc)                                                  ; $161e : $0a
	inc bc                                                  ; $161f : $03
	inc b                                                  ; $1620 : $04
	rlca                                                  ; $1621 : $07
	rlca                                                  ; $1622 : $07
	inc bc                                                  ; $1623 : $03
	inc bc                                                  ; $1624 : $03
	inc bc                                                  ; $1625 : $03
	ld b, $03                                                  ; $1626 : $06, $03
	inc bc                                                  ; $1628 : $03
	dec b                                                  ; $1629 : $05
	inc b                                                  ; $162a : $04
	ex af, af'                                                  ; $162b : $08
	ld b, $02                                                  ; $162c : $06, $02
	ld (bc), a                                                  ; $162e : $02
	inc bc                                                  ; $162f : $03
	inc bc                                                  ; $1630 : $03
	inc b                                                  ; $1631 : $04
	inc bc                                                  ; $1632 : $03
	dec b                                                  ; $1633 : $05
	inc bc                                                  ; $1634 : $03
	ld b, $05                                                  ; $1635 : $06, $05
	rlca                                                  ; $1637 : $07
	inc b                                                  ; $1638 : $04
	ex af, af'                                                  ; $1639 : $08
	inc b                                                  ; $163a : $04
	ld b, $03                                                  ; $163b : $06, $03
	rlca                                                  ; $163d : $07
	dec b                                                  ; $163e : $05
	inc b                                                  ; $163f : $04
	inc b                                                  ; $1640 : $04
	rlca                                                  ; $1641 : $07
	dec b                                                  ; $1642 : $05
	ld b, $04                                                  ; $1643 : $06, $04
	ld b, $04                                                  ; $1645 : $06, $04
	ld b, $03                                                  ; $1647 : $06, $03
	inc b                                                  ; $1649 : $04
	dec b                                                  ; $164a : $05
	ld b, $06                                                  ; $164b : $06, $06
	rlca                                                  ; $164d : $07
	dec b                                                  ; $164e : $05
	inc bc                                                  ; $164f : $03
	inc b                                                  ; $1650 : $04
	rlca                                                  ; $1651 : $07
	dec b                                                  ; $1652 : $05
	ld b, $06                                                  ; $1653 : $06, $06
	dec b                                                  ; $1655 : $05
	ex af, af'                                                  ; $1656 : $08
	dec b                                                  ; $1657 : $05
	dec b                                                  ; $1658 : $05
	inc b                                                  ; $1659 : $04
	dec b                                                  ; $165a : $05
	dec b                                                  ; $165b : $05
	dec b                                                  ; $165c : $05
	dec b                                                  ; $165d : $05
	inc bc                                                  ; $165e : $03
	dec b                                                  ; $165f : $05
	inc b                                                  ; $1660 : $04
	dec b                                                  ; $1661 : $05
	ld b, $04                                                  ; $1662 : $06, $04
	dec b                                                  ; $1664 : $05
	inc bc                                                  ; $1665 : $03
	dec b                                                  ; $1666 : $05
	ld b, $05                                                  ; $1667 : $06, $05
	ld b, $07                                                  ; $1669 : $06, $07
	inc b                                                  ; $166b : $04
	rlca                                                  ; $166c : $07
	dec b                                                  ; $166d : $05
	inc b                                                  ; $166e : $04
	rlca                                                  ; $166f : $07
	inc bc                                                  ; $1670 : $03
	dec b                                                  ; $1671 : $05
	inc bc                                                  ; $1672 : $03
	dec b                                                  ; $1673 : $05
	ld b, $04                                                  ; $1674 : $06, $04
	inc b                                                  ; $1676 : $04
	inc bc                                                  ; $1677 : $03
	inc b                                                  ; $1678 : $04
	inc b                                                  ; $1679 : $04
	dec b                                                  ; $167a : $05
	ld b, $04                                                  ; $167b : $06, $04
	inc bc                                                  ; $167d : $03
	inc bc                                                  ; $167e : $03
	inc bc                                                  ; $167f : $03
	inc bc                                                  ; $1680 : $03
	inc b                                                  ; $1681 : $04
	add hl, bc                                                  ; $1682 : $09
	inc b                                                  ; $1683 : $04
	inc bc                                                  ; $1684 : $03
	inc bc                                                  ; $1685 : $03
	ex af, af'                                                  ; $1686 : $08
	inc bc                                                  ; $1687 : $03
	dec b                                                  ; $1688 : $05
	add hl, bc                                                  ; $1689 : $09
	inc b                                                  ; $168a : $04
	inc bc                                                  ; $168b : $03
	inc b                                                  ; $168c : $04
	ld b, $06                                                  ; $168d : $06, $06
	inc bc                                                  ; $168f : $03
	inc bc                                                  ; $1690 : $03
	dec b                                                  ; $1691 : $05
	dec b                                                  ; $1692 : $05
	ld b, $06                                                  ; $1693 : $06, $06
	inc bc                                                  ; $1695 : $03
	inc bc                                                  ; $1696 : $03
	inc bc                                                  ; $1697 : $03
	rlca                                                  ; $1698 : $07
	inc b                                                  ; $1699 : $04
	inc bc                                                  ; $169a : $03
	ld (bc), a                                                  ; $169b : $02
	inc b                                                  ; $169c : $04
	inc bc                                                  ; $169d : $03
	inc b                                                  ; $169e : $04
	inc bc                                                  ; $169f : $03
	inc b                                                  ; $16a0 : $04
	inc b                                                  ; $16a1 : $04
	ld b, $07                                                  ; $16a2 : $06, $07
	inc bc                                                  ; $16a4 : $03
	dec b                                                  ; $16a5 : $05
	dec b                                                  ; $16a6 : $05
	add hl, bc                                                  ; $16a7 : $09
	rlca                                                  ; $16a8 : $07
	ex af, af'                                                  ; $16a9 : $08
	ld (bc), a                                                  ; $16aa : $02
	inc b                                                  ; $16ab : $04
	dec b                                                  ; $16ac : $05
	dec b                                                  ; $16ad : $05
	ex af, af'                                                  ; $16ae : $08
	add hl, bc                                                  ; $16af : $09
	inc b                                                  ; $16b0 : $04
	rlca                                                  ; $16b1 : $07
	inc bc                                                  ; $16b2 : $03
	inc bc                                                  ; $16b3 : $03
	dec b                                                  ; $16b4 : $05
	add hl, bc                                                  ; $16b5 : $09
	ex af, af'                                                  ; $16b6 : $08
	inc b                                                  ; $16b7 : $04
	inc bc                                                  ; $16b8 : $03
	dec b                                                  ; $16b9 : $05
	inc bc                                                  ; $16ba : $03
	rlca                                                  ; $16bb : $07
	dec b                                                  ; $16bc : $05
	inc b                                                  ; $16bd : $04
	dec b                                                  ; $16be : $05
	inc bc                                                  ; $16bf : $03
	inc bc                                                  ; $16c0 : $03
	inc bc                                                  ; $16c1 : $03
	dec b                                                  ; $16c2 : $05
	ld b, $05                                                  ; $16c3 : $06, $05
	ex af, af'                                                  ; $16c5 : $08
	inc bc                                                  ; $16c6 : $03
	ld b, $05                                                  ; $16c7 : $06, $05
	inc c                                                  ; $16c9 : $0c
	ld a, (bc)                                                  ; $16ca : $0a
	inc b                                                  ; $16cb : $04
	inc b                                                  ; $16cc : $04
	inc bc                                                  ; $16cd : $03
	inc b                                                  ; $16ce : $04
	ld b, $05                                                  ; $16cf : $06, $05
	inc b                                                  ; $16d1 : $04
	ld (bc), a                                                  ; $16d2 : $02
	inc bc                                                  ; $16d3 : $03
	inc bc                                                  ; $16d4 : $03
	ex af, af'                                                  ; $16d5 : $08
	dec b                                                  ; $16d6 : $05
	inc bc                                                  ; $16d7 : $03
	dec b                                                  ; $16d8 : $05
	inc b                                                  ; $16d9 : $04
	ld b, $0a                                                  ; $16da : $06, $0a
	inc b                                                  ; $16dc : $04
	ex af, af'                                                  ; $16dd : $08
	inc bc                                                  ; $16de : $03
	dec b                                                  ; $16df : $05
	inc bc                                                  ; $16e0 : $03
	dec b                                                  ; $16e1 : $05
	inc b                                                  ; $16e2 : $04
	dec b                                                  ; $16e3 : $05
	inc b                                                  ; $16e4 : $04
	inc b                                                  ; $16e5 : $04
	dec b                                                  ; $16e6 : $05
	ld (bc), a                                                  ; $16e7 : $02
	inc b                                                  ; $16e8 : $04
	inc b                                                  ; $16e9 : $04
	inc bc                                                  ; $16ea : $03
	inc b                                                  ; $16eb : $04
	ld b, $05                                                  ; $16ec : $06, $05
	dec b                                                  ; $16ee : $05
	inc bc                                                  ; $16ef : $03
	inc bc                                                  ; $16f0 : $03
	inc b                                                  ; $16f1 : $04
	inc b                                                  ; $16f2 : $04
	ld b, $08                                                  ; $16f3 : $06, $08
	rlca                                                  ; $16f5 : $07
	ex af, af'                                                  ; $16f6 : $08
	ex af, af'                                                  ; $16f7 : $08
	ld b, $03                                                  ; $16f8 : $06, $03
	inc b                                                  ; $16fa : $04
	inc bc                                                  ; $16fb : $03
	inc b                                                  ; $16fc : $04
	and $de                                                  ; $16fd : $e6, $de
	dec b                                                  ; $16ff : $05
	ld a, (bc)                                                  ; $1700 : $0a
	dec b                                                  ; $1701 : $05
	inc bc                                                  ; $1702 : $03
	inc b                                                  ; $1703 : $04
	inc b                                                  ; $1704 : $04
	dec b                                                  ; $1705 : $05
	inc bc                                                  ; $1706 : $03
	inc bc                                                  ; $1707 : $03
	ld b, $04                                                  ; $1708 : $06, $04
	inc bc                                                  ; $170a : $03
	inc bc                                                  ; $170b : $03
	ld b, $03                                                  ; $170c : $06, $03
	dec b                                                  ; $170e : $05
	inc b                                                  ; $170f : $04
	dec b                                                  ; $1710 : $05
	inc b                                                  ; $1711 : $04
	inc bc                                                  ; $1712 : $03
	inc b                                                  ; $1713 : $04
	rlca                                                  ; $1714 : $07
	ld (bc), a                                                  ; $1715 : $02
	inc bc                                                  ; $1716 : $03
	dec b                                                  ; $1717 : $05
	ld b, $04                                                  ; $1718 : $06, $04
	inc bc                                                  ; $171a : $03
	inc b                                                  ; $171b : $04
	rlca                                                  ; $171c : $07
	inc bc                                                  ; $171d : $03
	rlca                                                  ; $171e : $07
	ld (bc), a                                                  ; $171f : $02
	dec b                                                  ; $1720 : $05
	inc bc                                                  ; $1721 : $03
	rlca                                                  ; $1722 : $07
	inc b                                                  ; $1723 : $04
	inc bc                                                  ; $1724 : $03
	ld b, $04                                                  ; $1725 : $06, $04
	sub a                                                  ; $1727 : $97
	rst $18                                                  ; $1728 : $df
	inc d                                                  ; $1729 : $14
	djnz $1c                                                  ; $172a : $10, $1c
	ld de, $1411                                                  ; $172c : $11, $11, $14
	ld de, $1117                                                  ; $172f : $11, $17, $11
	djnz $13                                                  ; $1732 : $10, $13
	dec d                                                  ; $1734 : $15
	ld (de), a                                                  ; $1735 : $12
	inc de                                                  ; $1736 : $13
	rrca                                                  ; $1737 : $0f
	ld (de), a                                                  ; $1738 : $12
	inc d                                                  ; $1739 : $14
	ld de, $180e                                                  ; $173a : $11, $0e, $18
	ld (de), a                                                  ; $173d : $12
	inc de                                                  ; $173e : $13
	djnz br_02_1755                                                  ; $173f : $10, $14
	ld d, $0f                                                  ; $1741 : $16, $0f
	dec d                                                  ; $1743 : $15
	djnz $0e                                                  ; $1744 : $10, $0e
	ld de, $1316                                                  ; $1746 : $11, $16, $13
	dec d                                                  ; $1749 : $15
	djnz $12                                                  ; $174a : $10, $12
	inc de                                                  ; $174c : $13
	ld de, $1b0e                                                  ; $174d : $11, $0e, $1b
	dec c                                                  ; $1750 : $0d
	inc c                                                  ; $1751 : $0c
	inc d                                                  ; $1752 : $14
	ld e, $0f                                                  ; $1753 : $1e, $0f

br_02_1755:
	dec c                                                  ; $1755 : $0d

br_02_1756:
	ld de, $120f                                                  ; $1756 : $11, $0f, $12
	inc de                                                  ; $1759 : $13
	add hl, de                                                  ; $175a : $19
	rla                                                  ; $175b : $17
	inc d                                                  ; $175c : $14
	ld c, $10                                                  ; $175d : $0e, $10
	inc e                                                  ; $175f : $1c
	add hl, de                                                  ; $1760 : $19
	dec de                                                  ; $1761 : $1b
	jr br_02_1775                                                  ; $1762 : $18, $11

	ld e, $14                                                  ; $1764 : $1e, $14
	ld de, $4810                                                  ; $1766 : $11, $10, $48
	call po, Call_02_1310                                                  ; $1769 : $e4, $10, $13
	ld de, $150e                                                  ; $176c : $11, $0e, $15
	ld (de), a                                                  ; $176f : $12
	add hl, de                                                  ; $1770 : $19
	djnz br_02_1783                                                  ; $1771 : $10, $10
	ld (de), a                                                  ; $1773 : $12
	add hl, de                                                  ; $1774 : $19

br_02_1775:
	dec c                                                  ; $1775 : $0d
	rla                                                  ; $1776 : $17
	dec d                                                  ; $1777 : $15
	add hl, de                                                  ; $1778 : $19
	ld a, (de)                                                  ; $1779 : $1a
	ld de, $1411                                                  ; $177a : $11, $11, $14
	add hl, de                                                  ; $177d : $19
	ld de, $0e0f                                                  ; $177e : $11, $0f, $0e
	djnz br_02_1797                                                  ; $1781 : $10, $14

br_02_1783:
	inc de                                                  ; $1783 : $13
	ld c, $15                                                  ; $1784 : $0e, $15
	rrca                                                  ; $1786 : $0f
	ld c, $10                                                  ; $1787 : $0e, $10
	ld de, $1214                                                  ; $1789 : $11, $14, $12
	rrca                                                  ; $178c : $0f
	dec d                                                  ; $178d : $15
	dec d                                                  ; $178e : $15
	ld d, $15                                                  ; $178f : $16, $15
	jr $0d                                                  ; $1791 : $18, $0d

	ld c, $17                                                  ; $1793 : $0e, $17
	ld d, $0f                                                  ; $1795 : $16, $0f

br_02_1797:
	inc de                                                  ; $1797 : $13
	djnz br_02_17ad                                                  ; $1798 : $10, $13
	rrca                                                  ; $179a : $0f
	djnz br_02_17b2                                                  ; $179b : $10, $15
	dec d                                                  ; $179d : $15

Call_02_179e:
	ld de, $1c13                                                  ; $179e : $11, $13, $1c
	rrca                                                  ; $17a1 : $0f
	inc e                                                  ; $17a2 : $1c
	rla                                                  ; $17a3 : $17
	rrca                                                  ; $17a4 : $0f
	djnz br_02_1756                                                  ; $17a5 : $10, $af
	ret pe                                                  ; $17a7 : $e8

	inc d                                                  ; $17a8 : $14
	djnz br_02_17b7                                                  ; $17a9 : $10, $0c
	djnz br_02_17c1                                                  ; $17ab : $10, $14

br_02_17ad:
	rrca                                                  ; $17ad : $0f
	ld d, $2b                                                  ; $17ae : $16, $2b
	rra                                                  ; $17b0 : $1f
	add hl, de                                                  ; $17b1 : $19

br_02_17b2:
	inc e                                                  ; $17b2 : $1c
	inc de                                                  ; $17b3 : $13
	ld c, $0f                                                  ; $17b4 : $0e, $0f
	inc de                                                  ; $17b6 : $13

br_02_17b7:
	djnz br_02_17d2                                                  ; $17b7 : $10, $19
	rrca                                                  ; $17b9 : $0f
	inc de                                                  ; $17ba : $13
	inc de                                                  ; $17bb : $13
	inc d                                                  ; $17bc : $14
	dec d                                                  ; $17bd : $15
	jr br_02_17d2                                                  ; $17be : $18, $12

	dec d                                                  ; $17c0 : $15

br_02_17c1:
	add hl, de                                                  ; $17c1 : $19
	rla                                                  ; $17c2 : $17
	ld de, $0e18                                                  ; $17c3 : $11, $18, $0e
	ld d, $0e                                                  ; $17c6 : $16, $0e
	ld c, $0e                                                  ; $17c8 : $0e, $0e
	add hl, de                                                  ; $17ca : $19
	ld (de), a                                                  ; $17cb : $12
	inc d                                                  ; $17cc : $14
	ld d, $10                                                  ; $17cd : $16, $10
	ld de, $1a15                                                  ; $17cf : $11, $15, $1a

br_02_17d2:
	inc d                                                  ; $17d2 : $14
	jr br_02_17ed                                                  ; $17d3 : $18, $18

	rrca                                                  ; $17d5 : $0f
	rla                                                  ; $17d6 : $17
	rla                                                  ; $17d7 : $17
	rla                                                  ; $17d8 : $17
	inc d                                                  ; $17d9 : $14
	inc de                                                  ; $17da : $13
	ld d, $17                                                  ; $17db : $16, $17
	ld e, $11                                                  ; $17dd : $1e, $11
	rrca                                                  ; $17df : $0f
	ld d, $0f                                                  ; $17e0 : $16, $0f
	jr br_02_17fa                                                  ; $17e2 : $18, $16

	ld (de), a                                                  ; $17e4 : $12
	ld (de), a                                                  ; $17e5 : $12
	inc de                                                  ; $17e6 : $13
	or b                                                  ; $17e7 : $b0
	.db $ed                                                  ; $17e8 : $ed
	ld de, $0f19                                                  ; $17e9 : $11, $19, $0f
	inc d                                                  ; $17ec : $14

br_02_17ed:
	ld hl, ($1a10)                                                  ; $17ed : $2a, $10, $1a
	ld c, $12                                                  ; $17f0 : $0e, $12
	rrca                                                  ; $17f2 : $0f
	inc e                                                  ; $17f3 : $1c
	inc de                                                  ; $17f4 : $13
	rrca                                                  ; $17f5 : $0f
	rrca                                                  ; $17f6 : $0f
	inc de                                                  ; $17f7 : $13
	jr br_02_180b                                                  ; $17f8 : $18, $11

br_02_17fa:
	inc de                                                  ; $17fa : $13
	rla                                                  ; $17fb : $17
	ld de, $1812                                                  ; $17fc : $11, $12, $18
	ld de, $111a                                                  ; $17ff : $11, $1a, $11
	dec d                                                  ; $1802 : $15
	inc de                                                  ; $1803 : $13
	rla                                                  ; $1804 : $17
	dec e                                                  ; $1805 : $1d
	ld hl, $131d                                                  ; $1806 : $21, $1d, $13
	inc de                                                  ; $1809 : $13
	dec d                                                  ; $180a : $15

br_02_180b:
	ld d, $23                                                  ; $180b : $16, $23
	jr br_02_1821                                                  ; $180d : $18, $12

	jr br_02_1823                                                  ; $180f : $18, $12

	djnz $1b                                                  ; $1811 : $10, $1b
	ld d, $10                                                  ; $1813 : $16, $10
	ld de, $1314                                                  ; $1815 : $11, $14, $13
	dec d                                                  ; $1818 : $15
	add hl, de                                                  ; $1819 : $19
	inc de                                                  ; $181a : $13
	dec d                                                  ; $181b : $15
	ld de, $1716                                                  ; $181c : $11, $16, $17
	rla                                                  ; $181f : $17
	inc de                                                  ; $1820 : $13

br_02_1821:
	ld (de), a                                                  ; $1821 : $12
	ld (de), a                                                  ; $1822 : $12

br_02_1823:
	dec d                                                  ; $1823 : $15
	rla                                                  ; $1824 : $17
	rrca                                                  ; $1825 : $0f
	djnz $16                                                  ; $1826 : $10, $16
	dec d                                                  ; $1828 : $15
	ld c, $13                                                  ; $1829 : $0e, $13
	inc d                                                  ; $182b : $14
	rrca                                                  ; $182c : $0f
	ld de, $f342                                                  ; $182d : $11, $42, $f3
	jr nz, br_02_184b                                                  ; $1830 : $20, $19

	djnz br_02_1849                                                  ; $1832 : $10, $15
	inc de                                                  ; $1834 : $13
	inc d                                                  ; $1835 : $14
	dec c                                                  ; $1836 : $0d
	ld (de), a                                                  ; $1837 : $12
	rrca                                                  ; $1838 : $0f
	dec de                                                  ; $1839 : $1b
	ld (de), a                                                  ; $183a : $12
	inc de                                                  ; $183b : $13
	dec d                                                  ; $183c : $15
	jr br_02_1851                                                  ; $183d : $18, $12

	ld de, $1113                                                  ; $183f : $11, $13, $11
	ld (de), a                                                  ; $1842 : $12
	jr $19                                                  ; $1843 : $18, $19

	rrca                                                  ; $1845 : $0f
	ld de, $1819                                                  ; $1846 : $11, $19, $18

br_02_1849:
	dec d                                                  ; $1849 : $15
	ld a, (de)                                                  ; $184a : $1a

br_02_184b:
	inc de                                                  ; $184b : $13
	jr $11                                                  ; $184c : $18, $11

	inc d                                                  ; $184e : $14
	inc c                                                  ; $184f : $0c
	inc de                                                  ; $1850 : $13

br_02_1851:
	rla                                                  ; $1851 : $17
	jr br_02_1870                                                  ; $1852 : $18, $1c

	rla                                                  ; $1854 : $17
	jr br_02_1867                                                  ; $1855 : $18, $10

	dec d                                                  ; $1857 : $15
	daa                                                  ; $1858 : $27
	ld d, $0e                                                  ; $1859 : $16, $0e
	inc e                                                  ; $185b : $1c
	inc de                                                  ; $185c : $13
	ld de, $141d                                                  ; $185d : $11, $1d, $14
	rla                                                  ; $1860 : $17
	ld e, $15                                                  ; $1861 : $1e, $15
	inc d                                                  ; $1863 : $14
	ld d, $16                                                  ; $1864 : $16, $16
	ld (de), a                                                  ; $1866 : $12

br_02_1867:
	ld (de), a                                                  ; $1867 : $12
	inc de                                                  ; $1868 : $13
	dec d                                                  ; $1869 : $15
	jr br_02_1879                                                  ; $186a : $18, $0d

	dec d                                                  ; $186c : $15
	ld b, (hl)                                                  ; $186d : $46
	ret m                                                  ; $186e : $f8

	ld (de), a                                                  ; $186f : $12

br_02_1870:
	add hl, de                                                  ; $1870 : $19
	ld d, $16                                                  ; $1871 : $16, $16
	dec c                                                  ; $1873 : $0d
	ld (de), a                                                  ; $1874 : $12
	inc de                                                  ; $1875 : $13
	ld hl, $2119                                                  ; $1876 : $21, $19, $21

br_02_1879:
	dec de                                                  ; $1879 : $1b
	inc d                                                  ; $187a : $14
	ld hl, $0f17                                                  ; $187b : $21, $17, $0f
	dec de                                                  ; $187e : $1b
	dec d                                                  ; $187f : $15
	rla                                                  ; $1880 : $17
	rrca                                                  ; $1881 : $0f
	dec de                                                  ; $1882 : $1b
	ld d, $13                                                  ; $1883 : $16, $13
	ld a, (de)                                                  ; $1885 : $1a
	inc de                                                  ; $1886 : $13
	jr br_02_189a                                                  ; $1887 : $18, $11

	inc de                                                  ; $1889 : $13
	rla                                                  ; $188a : $17
	ld e, $14                                                  ; $188b : $1e, $14
	jr br_02_18a8                                                  ; $188d : $18, $19

	inc de                                                  ; $188f : $13
	ld d, $1a                                                  ; $1890 : $16, $1a
	add hl, de                                                  ; $1892 : $19
	inc d                                                  ; $1893 : $14
	jr nc, $16                                                  ; $1894 : $30, $16

	dec d                                                  ; $1896 : $15
	jr br_02_18b0                                                  ; $1897 : $18, $17

	rla                                                  ; $1899 : $17

br_02_189a:
	ld de, $1918                                                  ; $189a : $11, $18, $19
	dec e                                                  ; $189d : $1d
	ld a, (de)                                                  ; $189e : $1a
	inc h                                                  ; $189f : $24
	add hl, de                                                  ; $18a0 : $19
	inc d                                                  ; $18a1 : $14
	ld c, $12                                                  ; $18a2 : $0e, $12
	rla                                                  ; $18a4 : $17
	dec d                                                  ; $18a5 : $15
	add hl, de                                                  ; $18a6 : $19
	rla                                                  ; $18a7 : $17

br_02_18a8:
	djnz br_02_18c2                                                  ; $18a8 : $10, $18
	rra                                                  ; $18aa : $1f
	ld d, $19                                                  ; $18ab : $16, $19
	jp pe, Jump_02_10fd                                                  ; $18ad : $ea, $fd, $10

br_02_18b0:
	add hl, de                                                  ; $18b0 : $19
	rla                                                  ; $18b1 : $17
	ld d, $12                                                  ; $18b2 : $16, $12
	jr br_02_18cc                                                  ; $18b4 : $18, $16

	inc de                                                  ; $18b6 : $13
	dec d                                                  ; $18b7 : $15
	dec h                                                  ; $18b8 : $25
	jr br_02_18cc                                                  ; $18b9 : $18, $11

	dec de                                                  ; $18bb : $1b
	ld de, $1413                                                  ; $18bc : $11, $13, $14
	ld a, (de)                                                  ; $18bf : $1a
	ld a, (de)                                                  ; $18c0 : $1a
	dec e                                                  ; $18c1 : $1d

br_02_18c2:
	add hl, de                                                  ; $18c2 : $19
	ld (de), a                                                  ; $18c3 : $12
	dec de                                                  ; $18c4 : $1b
	dec de                                                  ; $18c5 : $1b
	ld d, $1c                                                  ; $18c6 : $16, $1c
	ld a, (de)                                                  ; $18c8 : $1a
	inc de                                                  ; $18c9 : $13
	ld d, $14                                                  ; $18ca : $16, $14

br_02_18cc:
	jr br_02_18e6                                                  ; $18cc : $18, $18

	ld e, $17                                                  ; $18ce : $1e, $17
	jr $15                                                  ; $18d0 : $18, $15

	rla                                                  ; $18d2 : $17
	add hl, de                                                  ; $18d3 : $19
	rla                                                  ; $18d4 : $17
	add hl, de                                                  ; $18d5 : $19
	jr nz, br_02_18ef                                                  ; $18d6 : $20, $17

	djnz br_02_18ef                                                  ; $18d8 : $10, $15
	inc e                                                  ; $18da : $1c
	inc d                                                  ; $18db : $14
	ld d, $17                                                  ; $18dc : $16, $17
	inc e                                                  ; $18de : $1c
	jr br_02_18f3                                                  ; $18df : $18, $12

	dec d                                                  ; $18e1 : $15
	dec d                                                  ; $18e2 : $15
	ld (de), a                                                  ; $18e3 : $12
	jr br_02_18ff                                                  ; $18e4 : $18, $19

br_02_18e6:
	ld d, $17                                                  ; $18e6 : $16, $17
	inc e                                                  ; $18e8 : $1c
	ld c, $17                                                  ; $18e9 : $0e, $17
	dec d                                                  ; $18eb : $15
	inc de                                                  ; $18ec : $13
	ld a, b                                                  ; $18ed : $78
	add a, e                                                  ; $18ee : $83

br_02_18ef:
	jr br_02_1905                                                  ; $18ef : $18, $14

	inc de                                                  ; $18f1 : $13
	ld a, (de)                                                  ; $18f2 : $1a

br_02_18f3:
	inc d                                                  ; $18f3 : $14
	rrca                                                  ; $18f4 : $0f
	rrca                                                  ; $18f5 : $0f
	rla                                                  ; $18f6 : $17
	dec h                                                  ; $18f7 : $25
	inc d                                                  ; $18f8 : $14
	dec de                                                  ; $18f9 : $1b
	ld d, $20                                                  ; $18fa : $16, $20
	jr br_02_190f                                                  ; $18fc : $18, $11

	inc d                                                  ; $18fe : $14

br_02_18ff:
	ld d, $11                                                  ; $18ff : $16, $11
	djnz br_02_1916                                                  ; $1901 : $10, $13
	ld (de), a                                                  ; $1903 : $12
	add hl, de                                                  ; $1904 : $19

br_02_1905:
	ld (de), a                                                  ; $1905 : $12
	jr br_02_1920                                                  ; $1906 : $18, $18

	ld (de), a                                                  ; $1908 : $12
	dec d                                                  ; $1909 : $15
	rra                                                  ; $190a : $1f
	dec d                                                  ; $190b : $15
	ld hl, $1721                                                  ; $190c : $21, $21, $17

br_02_190f:
	inc d                                                  ; $190f : $14
	inc d                                                  ; $1910 : $14
	jr br_02_192a                                                  ; $1911 : $18, $17

	dec c                                                  ; $1913 : $0d
	inc de                                                  ; $1914 : $13

br_02_1915:
	dec d                                                  ; $1915 : $15

br_02_1916:
	rla                                                  ; $1916 : $17
	ld hl, $1313                                                  ; $1917 : $21, $13, $13
	inc de                                                  ; $191a : $13
	dec e                                                  ; $191b : $1d
	ld (de), a                                                  ; $191c : $12
	rla                                                  ; $191d : $17
	inc d                                                  ; $191e : $14
	inc d                                                  ; $191f : $14

br_02_1920:
	rla                                                  ; $1920 : $17
	ld d, $17                                                  ; $1921 : $16, $17
	ld a, (de)                                                  ; $1923 : $1a
	dec e                                                  ; $1924 : $1d
	jr br_02_193e                                                  ; $1925 : $18, $17

	ld d, $11                                                  ; $1927 : $16, $11
	ld a, (de)                                                  ; $1929 : $1a

br_02_192a:
	inc d                                                  ; $192a : $14
	ld d, $13                                                  ; $192b : $16, $13
	rst $18                                                  ; $192d : $df
	adc a, b                                                  ; $192e : $88

Jump_02_192f:
	ld c, $0a                                                  ; $192f : $0e, $0a
	inc de                                                  ; $1931 : $13
	djnz br_02_1941                                                  ; $1932 : $10, $0d
	inc d                                                  ; $1934 : $14
	ld c, $10                                                  ; $1935 : $0e, $10
	dec de                                                  ; $1937 : $1b
	rla                                                  ; $1938 : $17
	inc de                                                  ; $1939 : $13
	rla                                                  ; $193a : $17
	dec c                                                  ; $193b : $0d

Call_02_193c:
	djnz br_02_194c                                                  ; $193c : $10, $0e

br_02_193e:
	dec c                                                  ; $193e : $0d

Call_02_193f:
	djnz br_02_194e                                                  ; $193f : $10, $0d

br_02_1941:
	inc de                                                  ; $1941 : $13
	ld de, $1811                                                  ; $1942 : $11, $11, $18
	inc de                                                  ; $1945 : $13
	djnz br_02_1956                                                  ; $1946 : $10, $0e
	rrca                                                  ; $1948 : $0f
	dec c                                                  ; $1949 : $0d
	dec c                                                  ; $194a : $0d
	inc c                                                  ; $194b : $0c

br_02_194c:
	dec bc                                                  ; $194c : $0b
	dec d                                                  ; $194d : $15

br_02_194e:
	rrca                                                  ; $194e : $0f
	ld de, $0f0d                                                  ; $194f : $11, $0d, $0f
	ld c, $0f                                                  ; $1952 : $0e, $0f
	inc d                                                  ; $1954 : $14
	dec c                                                  ; $1955 : $0d

br_02_1956:
	ld a, (bc)                                                  ; $1956 : $0a
	ld c, $0c                                                  ; $1957 : $0e, $0c
	ld (de), a                                                  ; $1959 : $12
	dec bc                                                  ; $195a : $0b
	ld c, $0f                                                  ; $195b : $0e, $0f
	inc de                                                  ; $195d : $13
	inc de                                                  ; $195e : $13
	dec c                                                  ; $195f : $0d
	rrca                                                  ; $1960 : $0f

Call_02_1961:
	ld (de), a                                                  ; $1961 : $12
	dec c                                                  ; $1962 : $0d
	inc c                                                  ; $1963 : $0c
	inc c                                                  ; $1964 : $0c
	ld a, (de)                                                  ; $1965 : $1a
	inc d                                                  ; $1966 : $14
	rrca                                                  ; $1967 : $0f
	inc c                                                  ; $1968 : $0c
	ld c, $13                                                  ; $1969 : $0e, $13
	djnz br_02_1915                                                  ; $196b : $10, $a8
	adc a, h                                                  ; $196d : $8c
	rrca                                                  ; $196e : $0f
	ld a, (bc)                                                  ; $196f : $0a
	ld de, $1618                                                  ; $1970 : $11, $18, $16
	inc c                                                  ; $1973 : $0c
	inc c                                                  ; $1974 : $0c
	dec d                                                  ; $1975 : $15
	djnz $13                                                  ; $1976 : $10, $13
	ld de, $101b                                                  ; $1978 : $11, $1b, $10
	inc de                                                  ; $197b : $13
	djnz $16                                                  ; $197c : $10, $16
	ld ($130f), hl                                                  ; $197e : $22, $0f, $13
	dec c                                                  ; $1981 : $0d
	ld d, $14                                                  ; $1982 : $16, $14
	djnz $0e                                                  ; $1984 : $10, $0e
	rrca                                                  ; $1986 : $0f
	ld c, $0d                                                  ; $1987 : $0e, $0d
	dec c                                                  ; $1989 : $0d
	jr br_02_199a                                                  ; $198a : $18, $0e

	dec c                                                  ; $198c : $0d
	inc de                                                  ; $198d : $13
	ld de, $110e                                                  ; $198e : $11, $0e, $11
	inc de                                                  ; $1991 : $13
	inc e                                                  ; $1992 : $1c
	ld c, $11                                                  ; $1993 : $0e, $11
	djnz br_02_19aa                                                  ; $1995 : $10, $13
	ld de, $110d                                                  ; $1997 : $11, $0d, $11

br_02_199a:
	dec bc                                                  ; $199a : $0b
	inc d                                                  ; $199b : $14
	inc c                                                  ; $199c : $0c
	ld c, $15                                                  ; $199d : $0e, $15
	inc de                                                  ; $199f : $13
	ld de, $120f                                                  ; $19a0 : $11, $0f, $12
	rrca                                                  ; $19a3 : $0f
	inc c                                                  ; $19a4 : $0c
	ld de, $0d0f                                                  ; $19a5 : $11, $0f, $0d
	inc c                                                  ; $19a8 : $0c
	inc de                                                  ; $19a9 : $13

br_02_19aa:
	dec c                                                  ; $19aa : $0d
	rrca                                                  ; $19ab : $0f
	dec c                                                  ; $19ac : $0d
	adc a, $90                                                  ; $19ad : $ce, $90
	djnz br_02_19bd                                                  ; $19af : $10, $0c
	ld a, (de)                                                  ; $19b1 : $1a
	inc d                                                  ; $19b2 : $14
	inc de                                                  ; $19b3 : $13
	dec bc                                                  ; $19b4 : $0b
	rla                                                  ; $19b5 : $17
	inc d                                                  ; $19b6 : $14
	dec c                                                  ; $19b7 : $0d
	inc d                                                  ; $19b8 : $14
	ld (de), a                                                  ; $19b9 : $12
	dec d                                                  ; $19ba : $15
	jr br_02_19cb                                                  ; $19bb : $18, $0e

br_02_19bd:
	dec c                                                  ; $19bd : $0d
	rrca                                                  ; $19be : $0f
	dec c                                                  ; $19bf : $0d
	dec bc                                                  ; $19c0 : $0b
	dec c                                                  ; $19c1 : $0d
	ld (de), a                                                  ; $19c2 : $12
	inc c                                                  ; $19c3 : $0c
	rrca                                                  ; $19c4 : $0f
	ld de, $0d0b                                                  ; $19c5 : $11, $0b, $0d
	rrca                                                  ; $19c8 : $0f
	djnz br_02_19d8                                                  ; $19c9 : $10, $0d

br_02_19cb:
	ld de, $0d0f                                                  ; $19cb : $11, $0f, $0d
	ld (de), a                                                  ; $19ce : $12

Call_02_19cf:
	ld (de), a                                                  ; $19cf : $12
	inc d                                                  ; $19d0 : $14
	ld de, $1312                                                  ; $19d1 : $11, $12, $13
	ld (de), a                                                  ; $19d4 : $12
	ld de, $0e1a                                                  ; $19d5 : $11, $1a, $0e

br_02_19d8:
	rla                                                  ; $19d8 : $17
	djnz $1b                                                  ; $19d9 : $10, $1b
	djnz $1e                                                  ; $19db : $10, $1e
	dec de                                                  ; $19dd : $1b
	inc de                                                  ; $19de : $13
	ld (de), a                                                  ; $19df : $12
	ld (de), a                                                  ; $19e0 : $12
	djnz br_02_19f4                                                  ; $19e1 : $10, $11
	ld c, $11                                                  ; $19e3 : $0e, $11
	ld c, $10                                                  ; $19e5 : $0e, $10
	djnz br_02_19fd                                                  ; $19e7 : $10, $14
	djnz $11                                                  ; $19e9 : $10, $11
	ld (de), a                                                  ; $19eb : $12
	rla                                                  ; $19ec : $17
	inc d                                                  ; $19ed : $14
	ld de, $952b                                                  ; $19ee : $11, $2b, $95
	add hl, de                                                  ; $19f1 : $19

Jump_02_19f2:
	dec d                                                  ; $19f2 : $15
	inc d                                                  ; $19f3 : $14

br_02_19f4:
	inc e                                                  ; $19f4 : $1c
	ld de, $0e13                                                  ; $19f5 : $11, $13, $0e
	ld c, $13                                                  ; $19f8 : $0e, $13
	ld de, $1010                                                  ; $19fa : $11, $10, $10

br_02_19fd:
	inc de                                                  ; $19fd : $13
	djnz br_02_1a16                                                  ; $19fe : $10, $16
	ld a, (de)                                                  ; $1a00 : $1a
	ld d, $0f                                                  ; $1a01 : $16, $0f
	djnz $0f                                                  ; $1a03 : $10, $0f
	inc de                                                  ; $1a05 : $13
	inc de                                                  ; $1a06 : $13
	jr $12                                                  ; $1a07 : $18, $12

	ld de, $130d                                                  ; $1a09 : $11, $0d, $13
	inc d                                                  ; $1a0c : $14
	ld (de), a                                                  ; $1a0d : $12
	dec d                                                  ; $1a0e : $15
	ld (de), a                                                  ; $1a0f : $12
	rrca                                                  ; $1a10 : $0f
	rrca                                                  ; $1a11 : $0f
	dec d                                                  ; $1a12 : $15
	ld de, $1110                                                  ; $1a13 : $11, $10, $11

br_02_1a16:
	dec de                                                  ; $1a16 : $1b
	inc d                                                  ; $1a17 : $14
	rla                                                  ; $1a18 : $17
	rla                                                  ; $1a19 : $17
	ld c, $18                                                  ; $1a1a : $0e, $18
	rrca                                                  ; $1a1c : $0f
	ld d, $13                                                  ; $1a1d : $16, $13
	dec d                                                  ; $1a1f : $15
	dec de                                                  ; $1a20 : $1b
	ld hl, $1114                                                  ; $1a21 : $21, $14, $11
	inc de                                                  ; $1a24 : $13
	rrca                                                  ; $1a25 : $0f
	inc e                                                  ; $1a26 : $1c
	dec d                                                  ; $1a27 : $15
	inc de                                                  ; $1a28 : $13
	ld (de), a                                                  ; $1a29 : $12
	djnz br_02_1a40                                                  ; $1a2a : $10, $14
	ld (de), a                                                  ; $1a2c : $12
	ld (de), a                                                  ; $1a2d : $12
	ld (de), a                                                  ; $1a2e : $12
	ld c, $e8                                                  ; $1a2f : $0e, $e8
	sbc a, c                                                  ; $1a31 : $99
	ld d, $18                                                  ; $1a32 : $16, $18
	inc d                                                  ; $1a34 : $14
	inc d                                                  ; $1a35 : $14
	ld d, $16                                                  ; $1a36 : $16, $16
	ld d, $14                                                  ; $1a38 : $16, $14
	ld d, $17                                                  ; $1a3a : $16, $17
	dec d                                                  ; $1a3c : $15
	inc d                                                  ; $1a3d : $14
	inc d                                                  ; $1a3e : $14
	ld (de), a                                                  ; $1a3f : $12

br_02_1a40:
	dec d                                                  ; $1a40 : $15
	ld (de), a                                                  ; $1a41 : $12
	dec e                                                  ; $1a42 : $1d
	ld (de), a                                                  ; $1a43 : $12
	ld (de), a                                                  ; $1a44 : $12
	inc de                                                  ; $1a45 : $13
	inc de                                                  ; $1a46 : $13
	rrca                                                  ; $1a47 : $0f
	ld hl, $1515                                                  ; $1a48 : $21, $15, $15
	dec d                                                  ; $1a4b : $15
	ld a, (de)                                                  ; $1a4c : $1a
	inc de                                                  ; $1a4d : $13
	ld (de), a                                                  ; $1a4e : $12
	ld c, $12                                                  ; $1a4f : $0e, $12
	dec c                                                  ; $1a51 : $0d
	rla                                                  ; $1a52 : $17
	inc d                                                  ; $1a53 : $14
	inc d                                                  ; $1a54 : $14
	dec de                                                  ; $1a55 : $1b
	inc d                                                  ; $1a56 : $14
	ld d, $17                                                  ; $1a57 : $16, $17
	ld (de), a                                                  ; $1a59 : $12
	ld de, $1714                                                  ; $1a5a : $11, $14, $17
	rla                                                  ; $1a5d : $17
	dec d                                                  ; $1a5e : $15
	ld de, $120c                                                  ; $1a5f : $11, $0c, $12
	jr nz, br_02_1a76                                                  ; $1a62 : $20, $12

	inc de                                                  ; $1a64 : $13
	inc d                                                  ; $1a65 : $14
	ld (de), a                                                  ; $1a66 : $12
	ld c, $16                                                  ; $1a67 : $0e, $16
	inc de                                                  ; $1a69 : $13
	dec d                                                  ; $1a6a : $15
	ld d, $13                                                  ; $1a6b : $16, $13
	dec d                                                  ; $1a6d : $15
	ld c, $11                                                  ; $1a6e : $0e, $11
	pop de                                                  ; $1a70 : $d1
	sbc a, (hl)                                                  ; $1a71 : $9e
	inc d                                                  ; $1a72 : $14
	inc hl                                                  ; $1a73 : $23
	jr br_02_1a8e                                                  ; $1a74 : $18, $18

br_02_1a76:
	ld a, (de)                                                  ; $1a76 : $1a
	add hl, de                                                  ; $1a77 : $19
	add hl, de                                                  ; $1a78 : $19
	inc e                                                  ; $1a79 : $1c
	inc d                                                  ; $1a7a : $14
	add hl, de                                                  ; $1a7b : $19
	ld d, $1b                                                  ; $1a7c : $16, $1b
	djnz $1e                                                  ; $1a7e : $10, $1e
	inc de                                                  ; $1a80 : $13
	dec d                                                  ; $1a81 : $15
	inc de                                                  ; $1a82 : $13
	ld (de), a                                                  ; $1a83 : $12
	ld (de), a                                                  ; $1a84 : $12
	ld de, $131b                                                  ; $1a85 : $11, $1b, $13
	add hl, de                                                  ; $1a88 : $19
	djnz br_02_1aa5                                                  ; $1a89 : $10, $1a
	ld de, $1514                                                  ; $1a8b : $11, $14, $15

br_02_1a8e:
	rla                                                  ; $1a8e : $17
	rrca                                                  ; $1a8f : $0f
	add hl, de                                                  ; $1a90 : $19
	ld (de), a                                                  ; $1a91 : $12
	jr br_02_1aad                                                  ; $1a92 : $18, $19

	ld hl, $140d                                                  ; $1a94 : $21, $0d, $14
	dec c                                                  ; $1a97 : $0d
	jr $10                                                  ; $1a98 : $18, $10

	inc de                                                  ; $1a9a : $13
	inc d                                                  ; $1a9b : $14
	ld de, $1413                                                  ; $1a9c : $11, $13, $14
	ld de, $1118                                                  ; $1a9f : $11, $18, $11
	djnz br_02_1ab9                                                  ; $1aa2 : $10, $15
	inc de                                                  ; $1aa4 : $13

br_02_1aa5:
	jr br_02_1abd                                                  ; $1aa5 : $18, $16

	dec e                                                  ; $1aa7 : $1d
	dec e                                                  ; $1aa8 : $1d
	ld c, $13                                                  ; $1aa9 : $0e, $13
	ld d, $19                                                  ; $1aab : $16, $19

br_02_1aad:
	inc d                                                  ; $1aad : $14
	jr z, $0f                                                  ; $1aae : $28, $0f

	inc d                                                  ; $1ab0 : $14
	and h                                                  ; $1ab1 : $a4
	ld d, $14                                                  ; $1ab2 : $16, $14
	dec d                                                  ; $1ab4 : $15
	djnz br_02_1aca                                                  ; $1ab5 : $10, $13
	inc de                                                  ; $1ab7 : $13
	inc d                                                  ; $1ab8 : $14

br_02_1ab9:
	djnz $11                                                  ; $1ab9 : $10, $11
	inc de                                                  ; $1abb : $13
	dec c                                                  ; $1abc : $0d

br_02_1abd:
	ld de, $1713                                                  ; $1abd : $11, $13, $17
	ld a, (de)                                                  ; $1ac0 : $1a
	inc d                                                  ; $1ac1 : $14
	inc d                                                  ; $1ac2 : $14
	ld d, $15                                                  ; $1ac3 : $16, $15
	ld a, (de)                                                  ; $1ac5 : $1a
	dec e                                                  ; $1ac6 : $1d
	inc d                                                  ; $1ac7 : $14
	ld (de), a                                                  ; $1ac8 : $12
	ld (de), a                                                  ; $1ac9 : $12

br_02_1aca:
	dec d                                                  ; $1aca : $15
	ld e, $14                                                  ; $1acb : $1e, $14
	ld (de), a                                                  ; $1acd : $12
	add hl, de                                                  ; $1ace : $19
	jr br_02_1aee                                                  ; $1acf : $18, $1d

	jr br_02_1af0                                                  ; $1ad1 : $18, $1d

	dec d                                                  ; $1ad3 : $15
	add hl, de                                                  ; $1ad4 : $19
	rla                                                  ; $1ad5 : $17
	inc e                                                  ; $1ad6 : $1c
	dec de                                                  ; $1ad7 : $1b
	ld d, $10                                                  ; $1ad8 : $16, $10
	add hl, de                                                  ; $1ada : $19
	inc e                                                  ; $1adb : $1c
	rla                                                  ; $1adc : $17
	inc d                                                  ; $1add : $14
	ld d, $20                                                  ; $1ade : $16, $20
	dec de                                                  ; $1ae0 : $1b
	rla                                                  ; $1ae1 : $17
	jr br_02_1afa                                                  ; $1ae2 : $18, $16

	jr br_02_1b00                                                  ; $1ae4 : $18, $1a

br_02_1ae6:
	dec d                                                  ; $1ae6 : $15
	inc d                                                  ; $1ae7 : $14
	add hl, de                                                  ; $1ae8 : $19
	dec de                                                  ; $1ae9 : $1b
	inc d                                                  ; $1aea : $14
	djnz br_02_1b02                                                  ; $1aeb : $10, $15
	dec de                                                  ; $1aed : $1b

br_02_1aee:
	ld c, h                                                  ; $1aee : $4c
	xor c                                                  ; $1aef : $a9

br_02_1af0:
	inc d                                                  ; $1af0 : $14
	ld d, $12                                                  ; $1af1 : $16, $12
	jr nz, br_02_1b0e                                                  ; $1af3 : $20, $19

	ld d, $14                                                  ; $1af5 : $16, $14
	add hl, de                                                  ; $1af7 : $19
	rla                                                  ; $1af8 : $17
	inc d                                                  ; $1af9 : $14

br_02_1afa:
	ld (de), a                                                  ; $1afa : $12
	ld a, (de)                                                  ; $1afb : $1a
	inc d                                                  ; $1afc : $14
	add hl, de                                                  ; $1afd : $19
	rla                                                  ; $1afe : $17
	inc d                                                  ; $1aff : $14

br_02_1b00:
	ld e, $14                                                  ; $1b00 : $1e, $14

br_02_1b02:
	ld d, $10                                                  ; $1b02 : $16, $10
	jr $17                                                  ; $1b04 : $18, $17

	ld (de), a                                                  ; $1b06 : $12
	inc de                                                  ; $1b07 : $13
	inc de                                                  ; $1b08 : $13
	inc d                                                  ; $1b09 : $14
	dec de                                                  ; $1b0a : $1b
	ld de, $1220                                                  ; $1b0b : $11, $20, $12

br_02_1b0e:
	dec d                                                  ; $1b0e : $15
	jr br_02_1b2a                                                  ; $1b0f : $18, $19

	ld a, (de)                                                  ; $1b11 : $1a
	ld d, $14                                                  ; $1b12 : $16, $14
	inc d                                                  ; $1b14 : $14
	rla                                                  ; $1b15 : $17
	dec d                                                  ; $1b16 : $15
	ld de, $171a                                                  ; $1b17 : $11, $1a, $17
	jr $16                                                  ; $1b1a : $18, $16

	ld de, $171a                                                  ; $1b1c : $11, $1a, $17
	jr br_02_1b33                                                  ; $1b1f : $18, $12

	ld e, $10                                                  ; $1b21 : $1e, $10
	dec d                                                  ; $1b23 : $15
	rrca                                                  ; $1b24 : $0f
	dec e                                                  ; $1b25 : $1d
	ld e, $15                                                  ; $1b26 : $1e, $15
	rra                                                  ; $1b28 : $1f
	dec de                                                  ; $1b29 : $1b

br_02_1b2a:
	ld de, $171a                                                  ; $1b2a : $11, $1a, $17
	ld c, $18                                                  ; $1b2d : $0e, $18
	.db $ed                                                  ; $1b2f : $ed
	call pe, $f4f5                                                  ; $1b30 : $ec, $f5, $f4

br_02_1b33:
	push af                                                  ; $1b33 : $f5
	call p, $f5f4                                                  ; $1b34 : $f4, $f4, $f5
	or $f7                                                  ; $1b37 : $f6, $f7
	ret m                                                  ; $1b39 : $f8

	ld sp, hl                                                  ; $1b3a : $f9
	jp m, $f1fb                                                  ; $1b3b : $fa, $fb, $f1
	rst $28                                                  ; $1b3e : $ef

Call_02_1b3f:
	rrca                                                  ; $1b3f : $0f
	inc b                                                  ; $1b40 : $04
	or (hl)                                                  ; $1b41 : $b6
	djnz br_02_1b48                                                  ; $1b42 : $10, $04
	out ($bf), a                                                  ; $1b44 : $d3, $bf
	ld b, $bf                                                  ; $1b46 : $06, $bf

br_02_1b48:
	rlca                                                  ; $1b48 : $07
	inc c                                                  ; $1b49 : $0c
	ex (sp), hl                                                  ; $1b4a : $e3
	rrca                                                  ; $1b4b : $0f
	rlca                                                  ; $1b4c : $07
	ld a, a                                                  ; $1b4d : $7f
	ld c, $43                                                  ; $1b4e : $0e, $43
	or (hl)                                                  ; $1b50 : $b6
	djnz br_02_1b61                                                  ; $1b51 : $10, $0e
	ld b, e                                                  ; $1b53 : $43
	or (hl)                                                  ; $1b54 : $b6
	djnz br_02_1ae6                                                  ; $1b55 : $10, $8f
	ex af, af'                                                  ; $1b57 : $08
	ex af, af'                                                  ; $1b58 : $08
	ld d, $38                                                  ; $1b59 : $16, $38
	rst $18                                                  ; $1b5b : $df
	ex af, af'                                                  ; $1b5c : $08
	cpl                                                  ; $1b5d : $2f
	ex af, af'                                                  ; $1b5e : $08
	ld l, (hl)                                                  ; $1b5f : $6e
	ld b, b                                                  ; $1b60 : $40

br_02_1b61:
	ld a, a                                                  ; $1b61 : $7f
	ex af, af'                                                  ; $1b62 : $08
	ld l, (hl)                                                  ; $1b63 : $6e
	ld b, b                                                  ; $1b64 : $40
	ld a, h                                                  ; $1b65 : $7c
	ex af, af'                                                  ; $1b66 : $08
	sbc a, l                                                  ; $1b67 : $9d
	ld d, e                                                  ; $1b68 : $53
	cp a                                                  ; $1b69 : $bf
	dec bc                                                  ; $1b6a : $0b
	ccf                                                  ; $1b6b : $3f
	dec bc                                                  ; $1b6c : $0b
	ccf                                                  ; $1b6d : $3f
	ld (hl), $8f                                                  ; $1b6e : $36, $8f
	jr nc, br_02_1b7d                                                  ; $1b70 : $30, $0b

	ccf                                                  ; $1b72 : $3f
	dec a                                                  ; $1b73 : $3d
	ld d, e                                                  ; $1b74 : $53
	or e                                                  ; $1b75 : $b3
	dec bc                                                  ; $1b76 : $0b
	jr nc, br_02_1b84                                                  ; $1b77 : $30, $0b

	sbc a, (hl)                                                  ; $1b79 : $9e
	ld l, b                                                  ; $1b7a : $68
	cpl                                                  ; $1b7b : $2f
	inc c                                                  ; $1b7c : $0c

br_02_1b7d:
	inc c                                                  ; $1b7d : $0c
	ld h, b                                                  ; $1b7e : $60
	dec c                                                  ; $1b7f : $0d
	dec c                                                  ; $1b80 : $0d
	ld (hl), b                                                  ; $1b81 : $70
	adc a, l                                                  ; $1b82 : $8d
	ld h, c                                                  ; $1b83 : $61

br_02_1b84:
	ld c, $6c                                                  ; $1b84 : $0e, $6c
	in a, ($07)                                                  ; $1b86 : $db, $07
	ld h, b                                                  ; $1b88 : $60
	ret po                                                  ; $1b89 : $e0

	ccf                                                  ; $1b8a : $3f
	ret po                                                  ; $1b8b : $e0

	dec a                                                  ; $1b8c : $3d
	ret pe                                                  ; $1b8d : $e8

	inc sp                                                  ; $1b8e : $33
	adc a, a                                                  ; $1b8f : $8f
	ret po                                                  ; $1b90 : $e0

	ld (hl), b                                                  ; $1b91 : $70
	ld e, $3f                                                  ; $1b92 : $1e, $3f
	ret po                                                  ; $1b94 : $e0

	sub d                                                  ; $1b95 : $92
	jp pe, $9ce0                                                  ; $1b96 : $ea, $e0, $9c
	exx                                                  ; $1b99 : $d9
	adc a, a                                                  ; $1b9a : $8f
	ret po                                                  ; $1b9b : $e0

	or (hl)                                                  ; $1b9c : $b6
	ret nc                                                  ; $1b9d : $d0

Call_02_1b9e:
	ld l, b                                                  ; $1b9e : $68
	ret po                                                  ; $1b9f : $e0

	or (hl)                                                  ; $1ba0 : $b6
	sub $c5                                                  ; $1ba1 : $d6, $c5
	ret po                                                  ; $1ba3 : $e0

	and $67                                                  ; $1ba4 : $e6, $67
	rst $18                                                  ; $1ba6 : $df
	ret po                                                  ; $1ba7 : $e0

	jp pe, $eae0                                                  ; $1ba8 : $ea, $e0, $ea
	di                                                  ; $1bab : $f3
	push de                                                  ; $1bac : $d5
	ccf                                                  ; $1bad : $3f
	djnz br_02_1c26                                                  ; $1bae : $10, $76

br_02_1bb0:
	ld c, c                                                  ; $1bb0 : $49
	cp b                                                  ; $1bb1 : $b8
	ld h, b                                                  ; $1bb2 : $60
	djnz br_02_1c2c                                                  ; $1bb3 : $10, $77
	ld ($8010), a                                                  ; $1bb5 : $32, $10, $80
	jr nz, br_02_1bca                                                  ; $1bb8 : $20, $10

	and (hl)                                                  ; $1bba : $a6
	ret nc                                                  ; $1bbb : $d0

	ld a, a                                                  ; $1bbc : $7f
	dec d                                                  ; $1bbd : $15
	ld h, c                                                  ; $1bbe : $61
	ld c, $19                                                  ; $1bbf : $0e, $19
	dec d                                                  ; $1bc1 : $15
	ld l, b                                                  ; $1bc2 : $68
	rrca                                                  ; $1bc3 : $0f
	ld d, $de                                                  ; $1bc4 : $16, $de
	xor a                                                  ; $1bc6 : $af
	ld d, $e7                                                  ; $1bc7 : $16, $e7
	ld h, a                                                  ; $1bc9 : $67

br_02_1bca:
	add hl, de                                                  ; $1bca : $19

br_02_1bcb:
	ld a, c                                                  ; $1bcb : $79
	cp a                                                  ; $1bcc : $bf
	add hl, de                                                  ; $1bcd : $19
	ld a, c                                                  ; $1bce : $79

Jump_02_1bcf:
	cp h                                                  ; $1bcf : $bc
	add hl, de                                                  ; $1bd0 : $19
	adc a, l                                                  ; $1bd1 : $8d
	ld l, b                                                  ; $1bd2 : $68
	jr c, -$21                                                  ; $1bd3 : $38, $df

	add hl, de                                                  ; $1bd5 : $19
	and $8d                                                  ; $1bd6 : $e6, $8d
	cp (hl)                                                  ; $1bd8 : $be
	xor a                                                  ; $1bd9 : $af
	ld e, $6e                                                  ; $1bda : $1e, $6e
	nop                                                  ; $1bdc : $00
	ld e, $6b                                                  ; $1bdd : $1e, $6b
	or e                                                  ; $1bdf : $b3
	adc a, l                                                  ; $1be0 : $8d
	inc hl                                                  ; $1be1 : $23
	pop bc                                                  ; $1be2 : $c1
	or (hl)                                                  ; $1be3 : $b6
	ret po                                                  ; $1be4 : $e0

	inc a                                                  ; $1be5 : $3c
	ld h, $2f                                                  ; $1be6 : $26, $2f
	ld h, $2f                                                  ; $1be8 : $26, $2f
	dec a                                                  ; $1bea : $3d
	ld d, e                                                  ; $1beb : $53
	add hl, hl                                                  ; $1bec : $29
	add hl, hl                                                  ; $1bed : $29
	inc a                                                  ; $1bee : $3c
	add hl, hl                                                  ; $1bef : $29
	inc a                                                  ; $1bf0 : $3c
	di                                                  ; $1bf1 : $f3
	rrca                                                  ; $1bf2 : $0f
	add hl, hl                                                  ; $1bf3 : $29
	inc a                                                  ; $1bf4 : $3c
	di                                                  ; $1bf5 : $f3
	push de                                                  ; $1bf6 : $d5

br_02_1bf7:
	ccf                                                  ; $1bf7 : $3f
	ld l, $6b                                                  ; $1bf8 : $2e, $6b
	ld l, b                                                  ; $1bfa : $68
	pop hl                                                  ; $1bfb : $e1
	jr nc, br_02_1bcb                                                  ; $1bfc : $30, $cd

	ld a, $1e                                                  ; $1bfe : $3e, $1e
	xor d                                                  ; $1c00 : $aa
	rst $18                                                  ; $1c01 : $df
	scf                                                  ; $1c02 : $37
	ld sp, $2fd3                                                  ; $1c03 : $31, $d3, $2f
	scf                                                  ; $1c06 : $37
	ld sp, $61db                                                  ; $1c07 : $31, $db, $61
	ld l, l                                                  ; $1c0a : $6d
	jp pe, Jump_02_3b38                                                  ; $1c0b : $ea, $38, $3b
	pop hl                                                  ; $1c0e : $e1
	jp pe, $e138                                                  ; $1c0f : $ea, $38, $e1
	ld (hl), b                                                  ; $1c12 : $70
	add a, d                                                  ; $1c13 : $82
	jr c, br_02_1bf7                                                  ; $1c14 : $38, $e1

	halt                                                  ; $1c16 : $76
	push bc                                                  ; $1c17 : $c5
	ld a, $6b                                                  ; $1c18 : $3e, $6b
	sbc a, d                                                  ; $1c1a : $9a
	ccf                                                  ; $1c1b : $3f
	ld a, $6b                                                  ; $1c1c : $3e, $6b
	sbc a, d                                                  ; $1c1e : $9a
	jr nc, br_02_1bb0                                                  ; $1c1f : $30, $8f

	ld b, b                                                  ; $1c21 : $40
	call po, $6c9e                                                  ; $1c22 : $e4, $9e, $6c
	ld b, (hl)                                                  ; $1c25 : $46

br_02_1c26:
	cp h                                                  ; $1c26 : $bc
	rst $18                                                  ; $1c27 : $df
	ld b, (hl)                                                  ; $1c28 : $46
	rst $20                                                  ; $1c29 : $e7
	ccf                                                  ; $1c2a : $3f
	ld b, a                                                  ; $1c2b : $47

br_02_1c2c:
	sbc a, e                                                  ; $1c2c : $9b
	ld h, d                                                  ; $1c2d : $62
	rrca                                                  ; $1c2e : $0f
	ld c, c                                                  ; $1c2f : $49
	cp a                                                  ; $1c30 : $bf
	ld c, c                                                  ; $1c31 : $49
	cp a                                                  ; $1c32 : $bf
	dec a                                                  ; $1c33 : $3d
	ld d, e                                                  ; $1c34 : $53
	ld c, c                                                  ; $1c35 : $49
	or c                                                  ; $1c36 : $b1
	ccf                                                  ; $1c37 : $3f
	ld c, e                                                  ; $1c38 : $4b
	ex af, af'                                                  ; $1c39 : $08
	inc de                                                  ; $1c3a : $13
	ld c, e                                                  ; $1c3b : $4b
	jr c, br_02_1c53                                                  ; $1c3c : $38, $15

	ld c, e                                                  ; $1c3e : $4b
	sbc a, (hl)                                                  ; $1c3f : $9e
	ld c, a                                                  ; $1c40 : $4f
	ld c, e                                                  ; $1c41 : $4b
	sbc a, (hl)                                                  ; $1c42 : $9e
	ld c, a                                                  ; $1c43 : $4f
	dec a                                                  ; $1c44 : $3d
	ld d, e                                                  ; $1c45 : $53
	pop hl                                                  ; $1c46 : $e1
	inc c                                                  ; $1c47 : $0c
	pop hl                                                  ; $1c48 : $e1
	dec sp                                                  ; $1c49 : $3b
	call po, $ea08                                                  ; $1c4a : $e4, $08, $ea
	pop hl                                                  ; $1c4d : $e1
	or e                                                  ; $1c4e : $b3
	dec c                                                  ; $1c4f : $0d
	ld d, b                                                  ; $1c50 : $50
	rst $08                                                  ; $1c51 : $cf
	ld d, b                                                  ; $1c52 : $50

br_02_1c53:
	rst $20                                                  ; $1c53 : $e7
	ccf                                                  ; $1c54 : $3f
	ld d, b                                                  ; $1c55 : $50
	ret pe                                                  ; $1c56 : $e8

	ld b, $6f                                                  ; $1c57 : $06, $6f
	ld d, (hl)                                                  ; $1c59 : $56
	pop hl                                                  ; $1c5a : $e1
	ld d, e                                                  ; $1c5b : $53

br_02_1c5c:
	call $cf56                                                  ; $1c5c : $cd, $56, $cf
	ld e, c                                                  ; $1c5f : $59
	ret pe                                                  ; $1c60 : $e8

	ld e, c                                                  ; $1c61 : $59
	ret pe                                                  ; $1c62 : $e8

	di                                                  ; $1c63 : $f3
	call po, $ea08                                                  ; $1c64 : $e4, $08, $ea
	ld e, (hl)                                                  ; $1c67 : $5e
	ld l, (hl)                                                  ; $1c68 : $6e
	ld b, b                                                  ; $1c69 : $40
	adc a, a                                                  ; $1c6a : $8f
	ld l, b                                                  ; $1c6b : $68
	ld l, b                                                  ; $1c6c : $68
	di                                                  ; $1c6d : $f3
	rrca                                                  ; $1c6e : $0f
	ld l, b                                                  ; $1c6f : $68
	di                                                  ; $1c70 : $f3
	push de                                                  ; $1c71 : $d5
	ccf                                                  ; $1c72 : $3f
	ld l, b                                                  ; $1c73 : $68
	di                                                  ; $1c74 : $f3
	ret pe                                                  ; $1c75 : $e8

	ld d, b                                                  ; $1c76 : $50
	rst $18                                                  ; $1c77 : $df
	ld l, b                                                  ; $1c78 : $68
	di                                                  ; $1c79 : $f3
	ret pe                                                  ; $1c7a : $e8

	ld d, (hl)                                                  ; $1c7b : $56
	dec d                                                  ; $1c7c : $15
	ld l, b                                                  ; $1c7d : $68
	ld h, $0f                                                  ; $1c7e : $26, $0f
	ld l, b                                                  ; $1c80 : $68

br_02_1c81:
	ld h, $08                                                  ; $1c81 : $26, $08
	ld l, b                                                  ; $1c83 : $68
	exx                                                  ; $1c84 : $d9
	ld l, b                                                  ; $1c85 : $68
	rst $20                                                  ; $1c86 : $e7
	jr c, br_02_1c5c                                                  ; $1c87 : $38, $d3

	cpl                                                  ; $1c89 : $2f
	ld l, h                                                  ; $1c8a : $6c
	ld l, h                                                  ; $1c8b : $6c
	di                                                  ; $1c8c : $f3
	rrca                                                  ; $1c8d : $0f
	ld l, h                                                  ; $1c8e : $6c
	di                                                  ; $1c8f : $f3
	djnz br_02_1d09                                                  ; $1c90 : $10, $77
	ld ($f36c), a                                                  ; $1c92 : $32, $6c, $f3
	djnz $77                                                  ; $1c95 : $10, $77
	ld ($e8f3), a                                                  ; $1c97 : $32, $f3, $e8
	ld d, b                                                  ; $1c9a : $50
	rst $18                                                  ; $1c9b : $df
	ld l, h                                                  ; $1c9c : $6c
	di                                                  ; $1c9d : $f3
	push de                                                  ; $1c9e : $d5
	ccf                                                  ; $1c9f : $3f
	ld l, h                                                  ; $1ca0 : $6c
	ld (hl), b                                                  ; $1ca1 : $70

br_02_1ca2:
	add a, d                                                  ; $1ca2 : $82

br_02_1ca3:
	ld l, l                                                  ; $1ca3 : $6d
	ld l, l                                                  ; $1ca4 : $6d
	rlca                                                  ; $1ca5 : $07
	jp pe, $cf6d                                                  ; $1ca6 : $ea, $6d, $cf
	jp po, Jump_02_080a                                                  ; $1ca9 : $e2, $0a, $08
	ex (sp), hl                                                  ; $1cac : $e3
	adc a, c                                                  ; $1cad : $89
	ret pe                                                  ; $1cae : $e8

	adc a, a                                                  ; $1caf : $8f
	jr nc, br_02_1c81                                                  ; $1cb0 : $30, $cf

	ld (hl), b                                                  ; $1cb2 : $70
	add a, d                                                  ; $1cb3 : $82
	ld (hl), b                                                  ; $1cb4 : $70
	cp (hl)                                                  ; $1cb5 : $be
	inc de                                                  ; $1cb6 : $13
	ld (hl), b                                                  ; $1cb7 : $70
	cp (hl)                                                  ; $1cb8 : $be
	inc de                                                  ; $1cb9 : $13
	call $0273                                                  ; $1cba : $cd, $73, $02
	dec sp                                                  ; $1cbd : $3b
	halt                                                  ; $1cbe : $76
	pop hl                                                  ; $1cbf : $e1
	ld e, l                                                  ; $1cc0 : $5d
	halt                                                  ; $1cc1 : $76
	add a, c                                                  ; $1cc2 : $81
	sub a                                                  ; $1cc3 : $97
	adc a, a                                                  ; $1cc4 : $8f
	halt                                                  ; $1cc5 : $76
	push hl                                                  ; $1cc6 : $e5
	and $62                                                  ; $1cc7 : $e6, $62
	halt                                                  ; $1cc9 : $76
	rst $20                                                  ; $1cca : $e7
	ld l, b                                                  ; $1ccb : $68
	pop hl                                                  ; $1ccc : $e1
	ld a, c                                                  ; $1ccd : $79
	djnz br_02_1ca3                                                  ; $1cce : $10, $d3
	cpl                                                  ; $1cd0 : $2f
	call po, Call_02_3f02                                                  ; $1cd1 : $e4, $02, $3f
	call po, $290e                                                  ; $1cd4 : $e4, $0e, $29
	cp a                                                  ; $1cd7 : $bf
	call po, $d30d                                                  ; $1cd8 : $e4, $0d, $d3
	cp a                                                  ; $1cdb : $bf
	call po, $963e                                                  ; $1cdc : $e4, $3e, $96
	add hl, de                                                  ; $1cdf : $19
	call po, Call_02_2762                                                  ; $1ce0 : $e4, $62, $27
	ccf                                                  ; $1ce3 : $3f
	call po, $c96c                                                  ; $1ce4 : $e4, $6c, $c9
	and $b6                                                  ; $1ce7 : $e6, $b6
	call po, $8f99                                                  ; $1ce9 : $e4, $99, $8f
	call po, $df9c                                                  ; $1cec : $e4, $9c, $df
	call po, $689e                                                  ; $1cef : $e4, $9e, $68
	ret nc                                                  ; $1cf2 : $d0

	ld l, b                                                  ; $1cf3 : $68
	add a, b                                                  ; $1cf4 : $80
	call po, $803f                                                  ; $1cf5 : $e4, $3f, $80
	call po, Call_02_3d3f                                                  ; $1cf8 : $e4, $3f, $3d
	ld d, e                                                  ; $1cfb : $53
	add a, b                                                  ; $1cfc : $80
	sub $98                                                  ; $1cfd : $d6, $98
	add a, e                                                  ; $1cff : $83
	ret pe                                                  ; $1d00 : $e8

	add a, e                                                  ; $1d01 : $83
	ret pe                                                  ; $1d02 : $e8

	di                                                  ; $1d03 : $f3
	jp pe, $e39b                                                  ; $1d04 : $ea, $9b, $e3
	adc a, c                                                  ; $1d07 : $89
	cp l                                                  ; $1d08 : $bd

br_02_1d09:
	ld e, a                                                  ; $1d09 : $5f
	adc a, c                                                  ; $1d0a : $89
	rst $18                                                  ; $1d0b : $df
	sbc a, (hl)                                                  ; $1d0c : $9e
	ld c, $23                                                  ; $1d0d : $0e, $23
	dec e                                                  ; $1d0f : $1d
	sub c                                                  ; $1d10 : $91
	jr nc, br_02_1ca2                                                  ; $1d11 : $30, $8f

	sub h                                                  ; $1d13 : $94
	sub h                                                  ; $1d14 : $94
	di                                                  ; $1d15 : $f3
	push de                                                  ; $1d16 : $d5
	ccf                                                  ; $1d17 : $3f
	sub h                                                  ; $1d18 : $94
	di                                                  ; $1d19 : $f3
	ret pe                                                  ; $1d1a : $e8

	ld d, b                                                  ; $1d1b : $50
	rst $18                                                  ; $1d1c : $df
	sub (hl)                                                  ; $1d1d : $96
	ld a, a                                                  ; $1d1e : $7f
	sbc a, b                                                  ; $1d1f : $98
	sbc a, b                                                  ; $1d20 : $98
	di                                                  ; $1d21 : $f3
	rrca                                                  ; $1d22 : $0f
	sbc a, b                                                  ; $1d23 : $98
	di                                                  ; $1d24 : $f3

br_02_1d25:
	push de                                                  ; $1d25 : $d5

Jump_02_1d26:
	ccf                                                  ; $1d26 : $3f
	sbc a, b                                                  ; $1d27 : $98
	ccf                                                  ; $1d28 : $3f
	sbc a, e                                                  ; $1d29 : $9b
	sbc a, l                                                  ; $1d2a : $9d
	ld d, e                                                  ; $1d2b : $53
	cp a                                                  ; $1d2c : $bf
	and b                                                  ; $1d2d : $a0
	ld d, $46                                                  ; $1d2e : $16, $46
	rra                                                  ; $1d30 : $1f
	and b                                                  ; $1d31 : $a0
	cp l                                                  ; $1d32 : $bd
	di                                                  ; $1d33 : $f3
	sub h                                                  ; $1d34 : $94
	and e                                                  ; $1d35 : $a3
	sbc a, d                                                  ; $1d36 : $9a
	ld (hl), e                                                  ; $1d37 : $73
	and e                                                  ; $1d38 : $a3
	cp h                                                  ; $1d39 : $bc
	sbc a, b                                                  ; $1d3a : $98
	xor c                                                  ; $1d3b : $a9
	xor (hl)                                                  ; $1d3c : $ae
	ld h, a                                                  ; $1d3d : $67
	dec c                                                  ; $1d3e : $0d
	ld l, c                                                  ; $1d3f : $69
	adc a, a                                                  ; $1d40 : $8f
	xor e                                                  ; $1d41 : $ab
	inc a                                                  ; $1d42 : $3c
	ld h, d                                                  ; $1d43 : $62
	jr c, br_02_1d25                                                  ; $1d44 : $38, $df

	xor e                                                  ; $1d46 : $ab
	sub c                                                  ; $1d47 : $91
	inc a                                                  ; $1d48 : $3c
	rst $08                                                  ; $1d49 : $cf
	or b                                                  ; $1d4a : $b0
	adc a, (hl)                                                  ; $1d4b : $8e
	inc de                                                  ; $1d4c : $13
	or e                                                  ; $1d4d : $b3
	cpl                                                  ; $1d4e : $2f
	or e                                                  ; $1d4f : $b3
	ld b, e                                                  ; $1d50 : $43
	cp h                                                  ; $1d51 : $bc
	di                                                  ; $1d52 : $f3
	exx                                                  ; $1d53 : $d9
	or (hl)                                                  ; $1d54 : $b6
	rst $20                                                  ; $1d55 : $e7
	dec sp                                                  ; $1d56 : $3b
	cp (hl)                                                  ; $1d57 : $be
	ld l, h                                                  ; $1d58 : $6c
	add a, $0f                                                  ; $1d59 : $c6, $0f
	ret                                                  ; $1d5b : $c9


	ld h, a                                                  ; $1d5c : $67
	ret                                                  ; $1d5d : $c9


	and $d5                                                  ; $1d5e : $e6, $d5
	jp z, Jump_02_3f01                                                  ; $1d60 : $ca, $01, $3f
	jp z, $8f06                                                  ; $1d63 : $ca, $06, $8f
	jp z, $6c08                                                  ; $1d66 : $ca, $08, $6c
	ld e, a                                                  ; $1d69 : $5f
	jp z, $df9b                                                  ; $1d6a : $ca, $9b, $df
	call Call_02_3f0d                                                  ; $1d6d : $cd, $0d, $3f
	call Call_02_3c0d                                                  ; $1d70 : $cd, $0d, $3c
	adc a, $83                                                  ; $1d73 : $ce, $83
	inc hl                                                  ; $1d75 : $23
	adc a, a                                                  ; $1d76 : $8f
	adc a, $ac                                                  ; $1d77 : $ce, $ac
	out ($e4), a                                                  ; $1d79 : $d3, $e4
	out ($be), a                                                  ; $1d7b : $d3, $be
	ld c, a                                                  ; $1d7d : $4f
	push de                                                  ; $1d7e : $d5
	dec c                                                  ; $1d7f : $0d
	push de                                                  ; $1d80 : $d5
	ccf                                                  ; $1d81 : $3f
	push de                                                  ; $1d82 : $d5
	ccf                                                  ; $1d83 : $3f
	inc a                                                  ; $1d84 : $3c

br_02_1d85:
	and $8f                                                  ; $1d85 : $e6, $8f
	push de                                                  ; $1d87 : $d5
	ld (hl), $bf                                                  ; $1d88 : $36, $bf
	push de                                                  ; $1d8a : $d5
	ld a, $af                                                  ; $1d8b : $3e, $af
	push de                                                  ; $1d8d : $d5
	or e                                                  ; $1d8e : $b3
	ccf                                                  ; $1d8f : $3f
	push de                                                  ; $1d90 : $d5
	cp c                                                  ; $1d91 : $b9
	and $e1                                                  ; $1d92 : $e6, $e1
	ld e, a                                                  ; $1d94 : $5f
	exx                                                  ; $1d95 : $d9
	exx                                                  ; $1d96 : $d9
	di                                                  ; $1d97 : $f3
	push de                                                  ; $1d98 : $d5
	ccf                                                  ; $1d99 : $3f
	sbc a, $89                                                  ; $1d9a : $de, $89
	and $ec                                                  ; $1d9c : $e6, $ec
	adc a, $cf                                                  ; $1d9e : $ce, $cf

Call_02_1da0:
	and $ec                                                  ; $1da0 : $e6, $ec
	adc a, $c0                                                  ; $1da2 : $ce, $c0
	call pe, $86e6                                                  ; $1da4 : $ec, $e6, $86
	out ($2f), a                                                  ; $1da7 : $d3, $2f
	inc a                                                  ; $1da9 : $3c
	ret nc                                                  ; $1daa : $d0

	out ($cf), a                                                  ; $1dab : $d3, $cf
	and $af                                                  ; $1dad : $e6, $af
	and $c3                                                  ; $1daf : $e6, $c3
	cpl                                                  ; $1db1 : $2f
	dec a                                                  ; $1db2 : $3d
	sbc a, a                                                  ; $1db3 : $9f
	ret pe                                                  ; $1db4 : $e8

	dec bc                                                  ; $1db5 : $0b
	ret pe                                                  ; $1db6 : $e8

	inc c                                                  ; $1db7 : $0c
	ret pe                                                  ; $1db8 : $e8

	inc c                                                  ; $1db9 : $0c
	di                                                  ; $1dba : $f3
	push de                                                  ; $1dbb : $d5
	ccf                                                  ; $1dbc : $3f
	ret pe                                                  ; $1dbd : $e8

	dec c                                                  ; $1dbe : $0d
	dec sp                                                  ; $1dbf : $3b
	ret pe                                                  ; $1dc0 : $e8

	dec sp                                                  ; $1dc1 : $3b
	ccf                                                  ; $1dc2 : $3f
	ret pe                                                  ; $1dc3 : $e8

	inc a                                                  ; $1dc4 : $3c
	rst $18                                                  ; $1dc5 : $df
	ret pe                                                  ; $1dc6 : $e8

	inc a                                                  ; $1dc7 : $3c
	out ($b8), a                                                  ; $1dc8 : $d3, $b8
	ret pe                                                  ; $1dca : $e8

	ld d, b                                                  ; $1dcb : $50
	rst $18                                                  ; $1dcc : $df
	ret pe                                                  ; $1dcd : $e8

	ld d, b                                                  ; $1dce : $50
	rst $18                                                  ; $1dcf : $df
	jr nc, br_02_1d85                                                  ; $1dd0 : $30, $b3

	di                                                  ; $1dd2 : $f3

br_02_1dd3:
	push de                                                  ; $1dd3 : $d5
	ccf                                                  ; $1dd4 : $3f
	ret pe                                                  ; $1dd5 : $e8

	ld d, b                                                  ; $1dd6 : $50
	rst $18                                                  ; $1dd7 : $df
	ld ($3e9f), a                                                  ; $1dd8 : $32, $9f, $3e
	add a, e                                                  ; $1ddb : $83
	di                                                  ; $1ddc : $f3
	djnz $77                                                  ; $1ddd : $10, $77
	ret pe                                                  ; $1ddf : $e8

	ld d, b                                                  ; $1de0 : $50
	rst $18                                                  ; $1de1 : $df
	ld (hl), $cf                                                  ; $1de2 : $36, $cf
	ret pe                                                  ; $1de4 : $e8

	ld d, b                                                  ; $1de5 : $50
	rst $18                                                  ; $1de6 : $df
	ld (hl), $cf                                                  ; $1de7 : $36, $cf
	jr nc, br_02_1dd3                                                  ; $1de9 : $30, $e8

	ld d, b                                                  ; $1deb : $50
	rst $18                                                  ; $1dec : $df
	ld (hl), $cf                                                  ; $1ded : $36, $cf
	dec a                                                  ; $1def : $3d
	ld d, e                                                  ; $1df0 : $53
	ret pe                                                  ; $1df1 : $e8

	ld d, b                                                  ; $1df2 : $50
	rst $18                                                  ; $1df3 : $df
	ld (hl), $cf                                                  ; $1df4 : $36, $cf
	dec a                                                  ; $1df6 : $3d
	ld d, e                                                  ; $1df7 : $53
	di                                                  ; $1df8 : $f3
	add a, b                                                  ; $1df9 : $80
	call po, $393f                                                  ; $1dfa : $e4, $3f, $39
	ld c, a                                                  ; $1dfd : $4f
	ret pe                                                  ; $1dfe : $e8

	ld d, b                                                  ; $1dff : $50
	rst $18                                                  ; $1e00 : $df
	ld a, $36                                                  ; $1e01 : $3e, $36
	add a, d                                                  ; $1e03 : $82
	di                                                  ; $1e04 : $f3
	sub h                                                  ; $1e05 : $94
	ret pe                                                  ; $1e06 : $e8

	ld d, b                                                  ; $1e07 : $50
	rst $18                                                  ; $1e08 : $df
	ld a, ($df0b)                                                  ; $1e09 : $3a, $0b, $df
	add hl, sp                                                  ; $1e0c : $39
	ld c, a                                                  ; $1e0d : $4f

Jump_02_1e0e:
	ret pe                                                  ; $1e0e : $e8

	ld d, e                                                  ; $1e0f : $53
	adc a, a                                                  ; $1e10 : $8f
	ret pe                                                  ; $1e11 : $e8

	ld d, e                                                  ; $1e12 : $53
	or e                                                  ; $1e13 : $b3
	ret pe                                                  ; $1e14 : $e8

	ld d, (hl)                                                  ; $1e15 : $56
	dec d                                                  ; $1e16 : $15
	ret pe                                                  ; $1e17 : $e8

	ld e, c                                                  ; $1e18 : $59
	ret pe                                                  ; $1e19 : $e8

	ld e, c                                                  ; $1e1a : $59
	di                                                  ; $1e1b : $f3
	ret pe                                                  ; $1e1c : $e8

	inc c                                                  ; $1e1d : $0c
	di                                                  ; $1e1e : $f3

Jump_02_1e1f:
	push de                                                  ; $1e1f : $d5
	ccf                                                  ; $1e20 : $3f

br_02_1e21:
	ret pe                                                  ; $1e21 : $e8

	ld l, l                                                  ; $1e22 : $6d
	ld e, a                                                  ; $1e23 : $5f
	ret pe                                                  ; $1e24 : $e8

	sbc a, e                                                  ; $1e25 : $9b
	cpl                                                  ; $1e26 : $2f
	ret pe                                                  ; $1e27 : $e8

	sbc a, e                                                  ; $1e28 : $9b
	ld (hl), d                                                  ; $1e29 : $72
	ret pe                                                  ; $1e2a : $e8

	sbc a, e                                                  ; $1e2b : $9b
	ld (hl), d                                                  ; $1e2c : $72
	di                                                  ; $1e2d : $f3
	ret pe                                                  ; $1e2e : $e8

	dec bc                                                  ; $1e2f : $0b
	ret pe                                                  ; $1e30 : $e8

	sbc a, e                                                  ; $1e31 : $9b
	ld (hl), d                                                  ; $1e32 : $72
	ret p                                                  ; $1e33 : $f0

	rst $08                                                  ; $1e34 : $cf
	jp pe, $bc30                                                  ; $1e35 : $ea, $30, $bc
	jp pe, $6f9e                                                  ; $1e38 : $ea, $9e, $6f
	cp $04                                                  ; $1e3b : $fe, $04
	cp $04                                                  ; $1e3d : $fe, $04
	cp $04                                                  ; $1e3f : $fe, $04
	jp p, $df0e                                                  ; $1e41 : $f2, $0e, $df
	inc sp                                                  ; $1e44 : $33
	.db $ed                                                  ; $1e45 : $ed
	di                                                  ; $1e46 : $f3
	ld l, (hl)                                                  ; $1e47 : $6e
	rst $18                                                  ; $1e48 : $df
	add hl, sp                                                  ; $1e49 : $39
	.db $ed                                                  ; $1e4a : $ed
	di                                                  ; $1e4b : $f3
	and $f2                                                  ; $1e4c : $e6, $f2
	jp p, $b9e0                                                  ; $1e4e : $f2, $e0, $b9
	ld (bc), a                                                  ; $1e51 : $02
	djnz br_02_1e21                                                  ; $1e52 : $10, $cd
	dec sp                                                  ; $1e54 : $3b
	jp p, Jump_02_19f2                                                  ; $1e55 : $f2, $f2, $19
	cp b                                                  ; $1e58 : $b8
	dec sp                                                  ; $1e59 : $3b
	di                                                  ; $1e5a : $f3
	ex (sp), hl                                                  ; $1e5b : $e3
	ld h, c                                                  ; $1e5c : $61
	ex (sp), hl                                                  ; $1e5d : $e3
	jp p, Jump_02_3df2                                                  ; $1e5e : $f2, $f2, $3d
	di                                                  ; $1e61 : $f3
	inc de                                                  ; $1e62 : $13
	out ($b0), a                                                  ; $1e63 : $d3, $b0
	jp p, $40f2                                                  ; $1e65 : $f2, $f2, $40
	push de                                                  ; $1e68 : $d5
	dec sp                                                  ; $1e69 : $3b
	di                                                  ; $1e6a : $f3
	sub h                                                  ; $1e6b : $94
	di                                                  ; $1e6c : $f3
	push de                                                  ; $1e6d : $d5
	ccf                                                  ; $1e6e : $3f
	ld a, ($d09c)                                                  ; $1e6f : $3a, $9c, $d0
	pop hl                                                  ; $1e72 : $e1
	ccf                                                  ; $1e73 : $3f
	inc a                                                  ; $1e74 : $3c
	ret nc                                                  ; $1e75 : $d0

	call po, $2faf                                                  ; $1e76 : $e4, $af, $2f
	jp p, Jump_02_0de1                                                  ; $1e79 : $f2, $e1, $0d
	ld a, $80                                                  ; $1e7c : $3e, $80
	jp pe, Jump_02_0bf3                                                  ; $1e7e : $ea, $f3, $0b
	dec d                                                  ; $1e81 : $15
	jp p, $e1f2                                                  ; $1e82 : $f2, $f2, $e1
	or e                                                  ; $1e85 : $b3
	dec c                                                  ; $1e86 : $0d
	di                                                  ; $1e87 : $f3
	ld (hl), b                                                  ; $1e88 : $70
	ex (sp), hl                                                  ; $1e89 : $e3
	inc a                                                  ; $1e8a : $3c
	jp p, $59f2                                                  ; $1e8b : $f2, $f2, $59
	add a, e                                                  ; $1e8e : $83
	call Call_02_0ef3                                                  ; $1e8f : $cd, $f3, $0e
	inc bc                                                  ; $1e92 : $03
	jp p, $73f2                                                  ; $1e93 : $f2, $f2, $73
	ld a, (bc)                                                  ; $1e96 : $0a
	ld l, b                                                  ; $1e97 : $68
	ret p                                                  ; $1e98 : $f0

	di                                                  ; $1e99 : $f3
	halt                                                  ; $1e9a : $76
	ex de, hl                                                  ; $1e9b : $eb
	dec bc                                                  ; $1e9c : $0b
	inc l                                                  ; $1e9d : $2c
	jp p, $e4f2                                                  ; $1e9e : $f2, $f2, $e4
	ex af, af'                                                  ; $1ea1 : $08
	di                                                  ; $1ea2 : $f3
	sub h                                                  ; $1ea3 : $94
	di                                                  ; $1ea4 : $f3
	call $7f33                                                  ; $1ea5 : $cd, $33, $7f
	cpl                                                  ; $1ea8 : $2f
	jp p, $67e4                                                  ; $1ea9 : $f2, $e4, $67
	ccf                                                  ; $1eac : $3f
	dec (hl)                                                  ; $1ead : $35
	ld l, (hl)                                                  ; $1eae : $6e
	dec d                                                  ; $1eaf : $15
	di                                                  ; $1eb0 : $f3
	ld d, $de                                                  ; $1eb1 : $16, $de
	xor a                                                  ; $1eb3 : $af
	cpl                                                  ; $1eb4 : $2f
	jp p, $98e4                                                  ; $1eb5 : $f2, $e4, $98
	rrca                                                  ; $1eb8 : $0f
	scf                                                  ; $1eb9 : $37
	ld l, h                                                  ; $1eba : $6c
	rrca                                                  ; $1ebb : $0f
	cpl                                                  ; $1ebc : $2f
	jp p, $6e9b                                                  ; $1ebd : $f2, $9b, $6e
	ld d, $8f                                                  ; $1ec0 : $16, $8f
	add hl, sp                                                  ; $1ec2 : $39
	ld c, a                                                  ; $1ec3 : $4f
	inc a                                                  ; $1ec4 : $3c
	and e                                                  ; $1ec5 : $a3
	ld d, $3c                                                  ; $1ec6 : $16, $3c
	jp p, $a5f2                                                  ; $1ec8 : $f2, $f2, $a5
	sbc a, b                                                  ; $1ecb : $98
	ccf                                                  ; $1ecc : $3f
	dec (hl)                                                  ; $1ecd : $35
	sbc a, (hl)                                                  ; $1ece : $9e
	ld b, e                                                  ; $1ecf : $43
	jp p, $b3f2                                                  ; $1ed0 : $f2, $f2, $b3

br_02_1ed3:
	add a, b                                                  ; $1ed3 : $80
	ld l, h                                                  ; $1ed4 : $6c
	ret nz                                                  ; $1ed5 : $c0

	add a, c                                                  ; $1ed6 : $81
	ccf                                                  ; $1ed7 : $3f
	cpl                                                  ; $1ed8 : $2f
	jp p, $e8c3                                                  ; $1ed9 : $f2, $c3, $e8
	dec bc                                                  ; $1edc : $0b
	cpl                                                  ; $1edd : $2f
	inc c                                                  ; $1ede : $0c
	di                                                  ; $1edf : $f3
	ld c, c                                                  ; $1ee0 : $49
	ld (hl), a                                                  ; $1ee1 : $77
	jp pe, $f2f2                                                  ; $1ee2 : $ea, $f2, $f2
	jp $0be8                                                  ; $1ee5 : $c3, $e8, $0b


	cpl                                                  ; $1ee8 : $2f
	inc c                                                  ; $1ee9 : $0c
	di                                                  ; $1eea : $f3
	ld h, c                                                  ; $1eeb : $61

Jump_02_1eec:
	ld a, $09                                                  ; $1eec : $3e, $09
	jp (hl)                                                  ; $1eee : $e9


	jp p, $c8f2                                                  ; $1eef : $f2, $f2, $c8
	sbc a, (hl)                                                  ; $1ef2 : $9e
	adc a, a                                                  ; $1ef3 : $8f
	ld a, $85                                                  ; $1ef4 : $3e, $85
	ld l, l                                                  ; $1ef6 : $6d
	ccf                                                  ; $1ef7 : $3f
	cpl                                                  ; $1ef8 : $2f
	jp p, Jump_02_08ca                                                  ; $1ef9 : $f2, $ca, $08
	ld l, h                                                  ; $1efc : $6c
	ld e, a                                                  ; $1efd : $5f
	inc a                                                  ; $1efe : $3c
	out ($ac), a                                                  ; $1eff : $d3, $ac
	jp p, $cef2                                                  ; $1f01 : $f2, $f2, $ce
	ld l, b                                                  ; $1f04 : $68
	push bc                                                  ; $1f05 : $c5
	ld l, b                                                  ; $1f06 : $68
	ccf                                                  ; $1f07 : $3f
	ld a, $76                                                  ; $1f08 : $3e, $76
	ret nc                                                  ; $1f0a : $d0

	call po, $f268                                                  ; $1f0b : $e4, $68, $f2
	jp p, Jump_02_3fd5                                                  ; $1f0e : $f2, $d5, $3f
	dec a                                                  ; $1f11 : $3d
	jr nc, br_02_1ed3                                                  ; $1f12 : $30, $bf

	ld ($afb9), a                                                  ; $1f14 : $32, $b9, $af
	add hl, sp                                                  ; $1f17 : $39
	ld c, a                                                  ; $1f18 : $4f
	ld (hl), $82                                                  ; $1f19 : $36, $82
	ld h, b                                                  ; $1f1b : $60
	jp p, $d5f2                                                  ; $1f1c : $f2, $f2, $d5
	ccf                                                  ; $1f1f : $3f
	ld a, $86                                                  ; $1f20 : $3e, $86
	add a, d                                                  ; $1f22 : $82
	di                                                  ; $1f23 : $f3
	ex af, af'                                                  ; $1f24 : $08
	cpl                                                  ; $1f25 : $2f
	dec a                                                  ; $1f26 : $3d
	ld d, e                                                  ; $1f27 : $53
	di                                                  ; $1f28 : $f3
	ret pe                                                  ; $1f29 : $e8

	ld h, a                                                  ; $1f2a : $67
	ld a, c                                                  ; $1f2b : $79
	ret pe                                                  ; $1f2c : $e8

	rst $08                                                  ; $1f2d : $cf
	cpl                                                  ; $1f2e : $2f
	jp p, $6ee8                                                  ; $1f2f : $f2, $e8, $6e
	or b                                                  ; $1f32 : $b0
	or d                                                  ; $1f33 : $b2
	di                                                  ; $1f34 : $f3
	sub h                                                  ; $1f35 : $94
	di                                                  ; $1f36 : $f3
	call po, $7938                                                  ; $1f37 : $e4, $38, $79
	di                                                  ; $1f3a : $f3
	and b                                                  ; $1f3b : $a0
	cp (hl)                                                  ; $1f3c : $be
	ccf                                                  ; $1f3d : $3f
	cpl                                                  ; $1f3e : $2f
	ret p                                                  ; $1f3f : $f0

	ex (sp), hl                                                  ; $1f40 : $e3
	ld l, b                                                  ; $1f41 : $68
	pop hl                                                  ; $1f42 : $e1
	ret p                                                  ; $1f43 : $f0

	cp $01                                                  ; $1f44 : $fe, $01
	dec bc                                                  ; $1f46 : $0b
	dec d                                                  ; $1f47 : $15
	di                                                  ; $1f48 : $f3
	sub h                                                  ; $1f49 : $94
	di                                                  ; $1f4a : $f3
	in a, ($6e)                                                  ; $1f4b : $db, $6e
	ld l, (hl)                                                  ; $1f4d : $6e
	ld c, d                                                  ; $1f4e : $4a
	ld e, a                                                  ; $1f4f : $5f
	ret po                                                  ; $1f50 : $e0

	cpl                                                  ; $1f51 : $2f
	call p, $f5f5                                                  ; $1f52 : $f4, $f5, $f5
	call p, $f4f4                                                  ; $1f55 : $f4, $f4, $f4
	push af                                                  ; $1f58 : $f5
	call p, $f4f4                                                  ; $1f59 : $f4, $f4, $f4
	call p, $f4f5                                                  ; $1f5c : $f4, $f5, $f4
	call p, $f4f4                                                  ; $1f5f : $f4, $f4, $f4
	call p, $f5f4                                                  ; $1f62 : $f4, $f4, $f5
	push af                                                  ; $1f65 : $f5
	push af                                                  ; $1f66 : $f5
	rst $30                                                  ; $1f67 : $f7
	push af                                                  ; $1f68 : $f5
	ret m                                                  ; $1f69 : $f8

	push af                                                  ; $1f6a : $f5
	ret m                                                  ; $1f6b : $f8

	.db $fd                                                  ; $1f6c : $fd
	or $f5                                                  ; $1f6d : $f6, $f5
	ld sp, hl                                                  ; $1f6f : $f9
	push af                                                  ; $1f70 : $f5
	ld sp, hl                                                  ; $1f71 : $f9
	call p, $faf5                                                  ; $1f72 : $f4, $f5, $fa
	push af                                                  ; $1f75 : $f5
	ei                                                  ; $1f76 : $fb
	push af                                                  ; $1f77 : $f5
	ei                                                  ; $1f78 : $fb
	call p, $f0f4                                                  ; $1f79 : $f4, $f4, $f0
	rst $08                                                  ; $1f7c : $cf
	push af                                                  ; $1f7d : $f5
	ei                                                  ; $1f7e : $fb
	ei                                                  ; $1f7f : $fb
	ld sp, hl                                                  ; $1f80 : $f9
	push af                                                  ; $1f81 : $f5
	ei                                                  ; $1f82 : $fb
	ei                                                  ; $1f83 : $fb
	jp m, $fcf5                                                  ; $1f84 : $fa, $f5, $fc
	push af                                                  ; $1f87 : $f5
	call m, $f9f5                                                  ; $1f88 : $fc, $f5, $f9
	push af                                                  ; $1f8b : $f5
	call m, $f4f9                                                  ; $1f8c : $fc, $f9, $f4
	ret p                                                  ; $1f8f : $f0

	rst $08                                                  ; $1f90 : $cf
	push af                                                  ; $1f91 : $f5
	call m, $f4fa                                                  ; $1f92 : $fc, $fa, $f4
	call p, $f5f4                                                  ; $1f95 : $f4, $f4, $f5
	call m, $fbfb                                                  ; $1f98 : $fc, $fb, $fb
	push af                                                  ; $1f9b : $f5
	call m, $f4fd                                                  ; $1f9c : $fc, $fd, $f4
	ret p                                                  ; $1f9f : $f0

	rst $08                                                  ; $1fa0 : $cf
	push af                                                  ; $1fa1 : $f5
	.db $fd                                                  ; $1fa2 : $fd
	call p, $f5fa                                                  ; $1fa3 : $f4, $fa, $f5
	.db $fd                                                  ; $1fa6 : $fd
	push af                                                  ; $1fa7 : $f5
	ei                                                  ; $1fa8 : $fb
	push af                                                  ; $1fa9 : $f5
	.db $fd                                                  ; $1faa : $fd
	or $fb                                                  ; $1fab : $f6, $fb
	push af                                                  ; $1fad : $f5
	.db $fd                                                  ; $1fae : $fd
	rst $30                                                  ; $1faf : $f7
	call p, $f5ee                                                  ; $1fb0 : $f4, $ee, $f5
	.db $fd                                                  ; $1fb3 : $fd
	ret m                                                  ; $1fb4 : $f8

	call p, $fdf5                                                  ; $1fb5 : $f4, $f5, $fd
	rst $30                                                  ; $1fb8 : $f7
	jp m, $fdf5                                                  ; $1fb9 : $fa, $f5, $fd
	rst $30                                                  ; $1fbc : $f7
	ei                                                  ; $1fbd : $fb
	push af                                                  ; $1fbe : $f5
	.db $fd                                                  ; $1fbf : $fd
	ret m                                                  ; $1fc0 : $f8

	push af                                                  ; $1fc1 : $f5
	push af                                                  ; $1fc2 : $f5
	.db $fd                                                  ; $1fc3 : $fd
	jp m, $f5fb                                                  ; $1fc4 : $fa, $fb, $f5
	.db $fd                                                  ; $1fc7 : $fd
	jp m, $f5fd                                                  ; $1fc8 : $fa, $fd, $f5
	.db $fd                                                  ; $1fcb : $fd
	ei                                                  ; $1fcc : $fb
	or $f5                                                  ; $1fcd : $f6, $f5
	.db $fd                                                  ; $1fcf : $fd
	ei                                                  ; $1fd0 : $fb
	rst $30                                                  ; $1fd1 : $f7
	push af                                                  ; $1fd2 : $f5
	.db $fd                                                  ; $1fd3 : $fd
	ei                                                  ; $1fd4 : $fb
	ret m                                                  ; $1fd5 : $f8

	push af                                                  ; $1fd6 : $f5
	.db $fd                                                  ; $1fd7 : $fd
	ei                                                  ; $1fd8 : $fb
	ld sp, hl                                                  ; $1fd9 : $f9
	push af                                                  ; $1fda : $f5
	.db $fd                                                  ; $1fdb : $fd
	ei                                                  ; $1fdc : $fb
	jp m, $fdf5                                                  ; $1fdd : $fa, $f5, $fd
	call m, $f5f4                                                  ; $1fe0 : $fc, $f4, $f5
	.db $fd                                                  ; $1fe3 : $fd
	call m, $f5fa                                                  ; $1fe4 : $fc, $fa, $f5
	.db $fd                                                  ; $1fe7 : $fd
	call m, $f5fb                                                  ; $1fe8 : $fc, $fb, $f5
	.db $fd                                                  ; $1feb : $fd
	call m, $f5fd                                                  ; $1fec : $fc, $fd, $f5
	.db $fd                                                  ; $1fef : $fd
	.db $fd                                                  ; $1ff0 : $fd
	ei                                                  ; $1ff1 : $fb
	push af                                                  ; $1ff2 : $f5
	.db $fd                                                  ; $1ff3 : $fd
	push de                                                  ; $1ff4 : $d5
	or $f6                                                  ; $1ff5 : $f6, $f6
	call p, $f4f6                                                  ; $1ff7 : $f4, $f6, $f4
	call p, $f4f6                                                  ; $1ffa : $f4, $f6, $f4
	call p, $f6f4                                                  ; $1ffd : $f4, $f4, $f6
	push af                                                  ; $2000 : $f5
	or $f5                                                  ; $2001 : $f6, $f5
	or $f6                                                  ; $2003 : $f6, $f6
	or $f6                                                  ; $2005 : $f6, $f6
	ret m                                                  ; $2007 : $f8

	or $f8                                                  ; $2008 : $f6, $f8
	.db $fd                                                  ; $200a : $fd
	call p, $f6f4                                                  ; $200b : $f4, $f4, $f6
	ld sp, hl                                                  ; $200e : $f9
	or $f9                                                  ; $200f : $f6, $f9
	ei                                                  ; $2011 : $fb
	ld sp, hl                                                  ; $2012 : $f9
	call p, $faf6                                                  ; $2013 : $f4, $f6, $fa
	ret m                                                  ; $2016 : $f8

	call p, $f6f4                                                  ; $2017 : $f4, $f4, $f6
	add a, d                                                  ; $201a : $82
	rst $30                                                  ; $201b : $f7
	call p, $f7f4                                                  ; $201c : $f4, $f4, $f7
	or $f7                                                  ; $201f : $f6, $f7
	jp m, $f7f4                                                  ; $2021 : $fa, $f4, $f7
	jp m, $f7f9                                                  ; $2024 : $fa, $f9, $f7
	jp m, $f7fa                                                  ; $2027 : $fa, $fa, $f7
	or d                                                  ; $202a : $b2
	ret m                                                  ; $202b : $f8

	call m, $eef9                                                  ; $202c : $fc, $f9, $ee
	jp m, $f3f9                                                  ; $202f : $fa, $f9, $f3
	ex (sp), hl                                                  ; $2032 : $e3
	call po, $f4f9                                                  ; $2033 : $e4, $f9, $f4
	ld sp, hl                                                  ; $2036 : $f9
	call p, $f9f4                                                  ; $2037 : $f4, $f4, $f9
	call p, $fad5                                                  ; $203a : $f4, $d5, $fa
	jp m, $fcfc                                                  ; $203d : $fa, $fc, $fc
	call p, Call_02_03fe                                                  ; $2040 : $f4, $fe, $03
	.db $fd                                                  ; $2043 : $fd
	ld c, $ee                                                  ; $2044 : $0e, $ee
	add hl, bc                                                  ; $2046 : $09
	call po, Call_02_0ee0                                                  ; $2047 : $e4, $e0, $0e
	rst $08                                                  ; $204a : $cf
	ld a, $20                                                  ; $204b : $3e, $20
	ld e, $3c                                                  ; $204d : $1e, $3c
	sbc a, b                                                  ; $204f : $98
	ld c, $cf                                                  ; $2050 : $0e, $cf
	ld a, $29                                                  ; $2052 : $3e, $29
	ld e, b                                                  ; $2054 : $58
	ret                                                  ; $2055 : $c9


	adc a, a                                                  ; $2056 : $8f
	ld c, $c2                                                  ; $2057 : $0e, $c2
	call pe, $ce0e                                                  ; $2059 : $ec, $0e, $ce
	ld c, (hl)                                                  ; $205c : $4e
	rst $08                                                  ; $205d : $cf
	nop                                                  ; $205e : $00
	cp c                                                  ; $205f : $b9
	adc a, a                                                  ; $2060 : $8f
	ld a, $0e                                                  ; $2061 : $3e, $0e
	ld l, e                                                  ; $2063 : $6b
	cp a                                                  ; $2064 : $bf
	ld c, $0e                                                  ; $2065 : $0e, $0e
	dec bc                                                  ; $2067 : $0b
	ld a, $76                                                  ; $2068 : $3e, $76
	dec c                                                  ; $206a : $0d
	ld l, c                                                  ; $206b : $69
	adc a, a                                                  ; $206c : $8f
	ld c, $06                                                  ; $206d : $0e, $06
	halt                                                  ; $206f : $76
	sbc a, $af                                                  ; $2070 : $de, $af
	ld c, $09                                                  ; $2072 : $0e, $09
	halt                                                  ; $2074 : $76
	push bc                                                  ; $2075 : $c5
	ld ($090e), a                                                  ; $2076 : $32, $0e, $09
	and $df                                                  ; $2079 : $e6, $df
	ld c, $09                                                  ; $207b : $0e, $09
	rst $20                                                  ; $207d : $e7
	ccf                                                  ; $207e : $3f
	ld c, $0b                                                  ; $207f : $0e, $0b
	dec b                                                  ; $2081 : $05
	ld c, $4f                                                  ; $2082 : $0e, $4f
	ld c, $0b                                                  ; $2084 : $0e, $0b
	dec b                                                  ; $2086 : $05
	ld c, $4f                                                  ; $2087 : $0e, $4f
	scf                                                  ; $2089 : $37
	ld l, b                                                  ; $208a : $68
	add hl, de                                                  ; $208b : $19
	ld a, b                                                  ; $208c : $78
	ld c, $0c                                                  ; $208d : $0e, $0c
	sub a                                                  ; $208f : $97
	and $d3                                                  ; $2090 : $e6, $d3
	ld c, $0c                                                  ; $2092 : $0e, $0c
	sbc a, e                                                  ; $2094 : $9b
	ret po                                                  ; $2095 : $e0

	ld ($0c0e), a                                                  ; $2096 : $32, $0e, $0c
	sbc a, e                                                  ; $2099 : $9b
	xor l                                                  ; $209a : $ad

Jump_02_209b:
	ld l, c                                                  ; $209b : $69
	adc a, a                                                  ; $209c : $8f
	ld c, $0c                                                  ; $209d : $0e, $0c
	sbc a, e                                                  ; $209f : $9b
	out ($2f), a                                                  ; $20a0 : $d3, $2f
	ld c, $0e                                                  ; $20a2 : $0e, $0e
	ld l, l                                                  ; $20a4 : $6d
	call po, $df38                                                  ; $20a5 : $e4, $38, $df
	ld bc, $e60a                                                  ; $20a8 : $01, $0a, $e6
	ld (hl), c                                                  ; $20ab : $71
	sbc a, a                                                  ; $20ac : $9f
	ld bc, $7313                                                  ; $20ad : $01, $13, $73
	or b                                                  ; $20b0 : $b0
	sub $98                                                  ; $20b1 : $d6, $98
	ld bc, $ad13                                                  ; $20b3 : $01, $13, $ad
	ld bc, $ad13                                                  ; $20b6 : $01, $13, $ad
	ld ($1901), a                                                  ; $20b9 : $32, $01, $19
	or d                                                  ; $20bc : $b2
	ld l, b                                                  ; $20bd : $68
	pop hl                                                  ; $20be : $e1
	ld bc, $e619                                                  ; $20bf : $01, $19, $e6
	adc a, l                                                  ; $20c2 : $8d
	rst $08                                                  ; $20c3 : $cf
	ld bc, $0162                                                  ; $20c4 : $01, $62, $01
	ld h, d                                                  ; $20c7 : $62
	di                                                  ; $20c8 : $f3
	or b                                                  ; $20c9 : $b0
	ld l, b                                                  ; $20ca : $68
	ld bc, $cf62                                                  ; $20cb : $01, $62, $cf
	ld bc, $ccb9                                                  ; $20ce : $01, $b9, $cc
	ld bc, $01df                                                  ; $20d1 : $01, $df, $01
	sub $98                                                  ; $20d4 : $d6, $98
	ld bc, $e7d6                                                  ; $20d6 : $01, $d6, $e7
	ld l, l                                                  ; $20d9 : $6d
	jp pe, Jump_02_0e02                                                  ; $20da : $ea, $02, $0e
	ld c, h                                                  ; $20dd : $4c
	ld (bc), a                                                  ; $20de : $02
	cpl                                                  ; $20df : $2f
	ld (bc), a                                                  ; $20e0 : $02
	inc hl                                                  ; $20e1 : $23
	cpl                                                  ; $20e2 : $2f
	ld (bc), a                                                  ; $20e3 : $02
	jp po, $d631                                                  ; $20e4 : $e2, $31, $d6
	rst $20                                                  ; $20e7 : $e7
	ccf                                                  ; $20e8 : $3f
	ld (bc), a                                                  ; $20e9 : $02
	call po, $076b                                                  ; $20ea : $e4, $6b, $07
	di                                                  ; $20ed : $f3
	and e                                                  ; $20ee : $a3
	cp e                                                  ; $20ef : $bb
	jp pe, $9702                                                  ; $20f0 : $ea, $02, $97
	and l                                                  ; $20f3 : $a5
	di                                                  ; $20f4 : $f3
	ld d, (hl)                                                  ; $20f5 : $56
	rst $10                                                  ; $20f6 : $d7
	dec sp                                                  ; $20f7 : $3b
	ld (bc), a                                                  ; $20f8 : $02
	or e                                                  ; $20f9 : $b3
	add a, b                                                  ; $20fa : $80
	ld a, h                                                  ; $20fb : $7c
	ld (bc), a                                                  ; $20fc : $02
	or (hl)                                                  ; $20fd : $b6
	dec c                                                  ; $20fe : $0d
	ld h, c                                                  ; $20ff : $61
	ld (bc), a                                                  ; $2100 : $02
	and $7d                                                  ; $2101 : $e6, $7d
	ld (bc), a                                                  ; $2103 : $02
	rst $20                                                  ; $2104 : $e7
	jr c, -$22                                                  ; $2105 : $38, $de

	ld l, e                                                  ; $2107 : $6b
	dec sp                                                  ; $2108 : $3b
	ld (bc), a                                                  ; $2109 : $02
	rst $20                                                  ; $210a : $e7
	ld l, h                                                  ; $210b : $6c
	sbc a, e                                                  ; $210c : $9b
	rst $08                                                  ; $210d : $cf
	inc b                                                  ; $210e : $04
	ld b, b                                                  ; $210f : $40
	ld l, e                                                  ; $2110 : $6b
	rst $08                                                  ; $2111 : $cf
	inc b                                                  ; $2112 : $04
	ld b, e                                                  ; $2113 : $43
	dec e                                                  ; $2114 : $1d
	inc b                                                  ; $2115 : $04
	pop hl                                                  ; $2116 : $e1
	ld d, b                                                  ; $2117 : $50
	add a, (hl)                                                  ; $2118 : $86
	call Call_02_0408                                                  ; $2119 : $cd, $08, $04
	or (hl)                                                  ; $211c : $b6
	djnz -$71                                                  ; $211d : $10, $8f
	ld c, $10                                                  ; $211f : $0e, $10
	ld l, b                                                  ; $2121 : $68
	call Call_02_130e                                                  ; $2122 : $cd, $0e, $13
	ld c, $13                                                  ; $2125 : $0e, $13
	rst $08                                                  ; $2127 : $cf
	ld c, $1b                                                  ; $2128 : $0e, $1b
	ld h, c                                                  ; $212a : $61
	and $7d                                                  ; $212b : $e6, $7d
	and $b3                                                  ; $212d : $e6, $b3
	ld b, $bf                                                  ; $212f : $06, $bf
	inc (hl)                                                  ; $2131 : $34
	sbc a, e                                                  ; $2132 : $9b
	inc de                                                  ; $2133 : $13
	ld b, $ba                                                  ; $2134 : $06, $ba
	ld (hl), b                                                  ; $2136 : $70
	add a, e                                                  ; $2137 : $83
	ld b, $ba                                                  ; $2138 : $06, $ba
	ld (hl), b                                                  ; $213a : $70
	add a, e                                                  ; $213b : $83
	rst $08                                                  ; $213c : $cf
	rlca                                                  ; $213d : $07
	ld c, $00                                                  ; $213e : $0e, $00
	call po, Call_02_070f                                                  ; $2140 : $e4, $0f, $07
	ld c, $49                                                  ; $2143 : $0e, $49
	rlca                                                  ; $2145 : $07
	inc c                                                  ; $2146 : $0c
	ex (sp), hl                                                  ; $2147 : $e3
	ex af, af'                                                  ; $2148 : $08
	rlca                                                  ; $2149 : $07
	ret po                                                  ; $214a : $e0

	ex af, af'                                                  ; $214b : $08
	ld h, b                                                  ; $214c : $60
	rlca                                                  ; $214d : $07
	ret po                                                  ; $214e : $e0

	ex af, af'                                                  ; $214f : $08
	jp pe, $e007                                                  ; $2150 : $ea, $07, $e0
	dec sp                                                  ; $2153 : $3b
	ret nc                                                  ; $2154 : $d0

	rlca                                                  ; $2155 : $07
	ret po                                                  ; $2156 : $e0

	and $e4                                                  ; $2157 : $e6, $e4
	jr c, $07                                                  ; $2159 : $38, $07

	ret po                                                  ; $215b : $e0

	and $e5                                                  ; $215c : $e6, $e5
	and $3b                                                  ; $215e : $e6, $3b
	push hl                                                  ; $2160 : $e5
	and $3f                                                  ; $2161 : $e6, $3f
	rlca                                                  ; $2163 : $07
	djnz -$25                                                  ; $2164 : $10, $db
	ld c, $bf                                                  ; $2166 : $0e, $bf
	rlca                                                  ; $2168 : $07
	add hl, de                                                  ; $2169 : $19
	ld e, c                                                  ; $216a : $59
	ld a, a                                                  ; $216b : $7f
	rlca                                                  ; $216c : $07
	ld a, $6d                                                  ; $216d : $3e, $6d
	ld h, b                                                  ; $216f : $60
	adc a, a                                                  ; $2170 : $8f
	rlca                                                  ; $2171 : $07
	ld a, $6d                                                  ; $2172 : $3e, $6d
	ld h, b                                                  ; $2174 : $60
	adc a, a                                                  ; $2175 : $8f
	ld (hl), $c7                                                  ; $2176 : $36, $c7
	ex af, af'                                                  ; $2178 : $08
	inc l                                                  ; $2179 : $2c
	rlca                                                  ; $217a : $07
	ld a, $9f                                                  ; $217b : $3e, $9f
	dec (hl)                                                  ; $217d : $35
	ld c, $46                                                  ; $217e : $0e, $46
	ld a, l                                                  ; $2180 : $7d
	sbc a, b                                                  ; $2181 : $98
	rlca                                                  ; $2182 : $07
	ld a, $90                                                  ; $2183 : $3e, $90
	add a, d                                                  ; $2185 : $82
	dec sp                                                  ; $2186 : $3b
	rlca                                                  ; $2187 : $07
	ld a, $90                                                  ; $2188 : $3e, $90
	add a, d                                                  ; $218a : $82
	dec sp                                                  ; $218b : $3b
	di                                                  ; $218c : $f3
	pop hl                                                  ; $218d : $e1
	or b                                                  ; $218e : $b0
	ld d, b                                                  ; $218f : $50
	call po, $e0f3                                                  ; $2190 : $e4, $f3, $e0
	scf                                                  ; $2193 : $37
	ld a, a                                                  ; $2194 : $7f
	rlca                                                  ; $2195 : $07
	ld h, e                                                  ; $2196 : $63
	adc a, a                                                  ; $2197 : $8f
	rlca                                                  ; $2198 : $07
	ld l, (hl)                                                  ; $2199 : $6e
	ld b, e                                                  ; $219a : $43
	adc a, l                                                  ; $219b : $8d
	dec bc                                                  ; $219c : $0b
	jp pe, $7307                                                  ; $219d : $ea, $07, $73
	pop hl                                                  ; $21a0 : $e1
	ld h, e                                                  ; $21a1 : $63
	add a, c                                                  ; $21a2 : $81
	ccf                                                  ; $21a3 : $3f
	rlca                                                  ; $21a4 : $07
	halt                                                  ; $21a5 : $76
	ld ($a9f3), a                                                  ; $21a6 : $32, $f3, $a9
	ret pe                                                  ; $21a9 : $e8

	dec sp                                                  ; $21aa : $3b
	rst $08                                                  ; $21ab : $cf
	rlca                                                  ; $21ac : $07
	halt                                                  ; $21ad : $76
	inc a                                                  ; $21ae : $3c
	rlca                                                  ; $21af : $07
	halt                                                  ; $21b0 : $76
	pop hl                                                  ; $21b1 : $e1
	dec c                                                  ; $21b2 : $0d
	sbc a, e                                                  ; $21b3 : $9b
	rst $08                                                  ; $21b4 : $cf
	rlca                                                  ; $21b5 : $07
	ld a, c                                                  ; $21b6 : $79
	ret pe                                                  ; $21b7 : $e8

	ld ($7907), a                                                  ; $21b8 : $32, $07, $79
	ret pe                                                  ; $21bb : $e8

	rst $08                                                  ; $21bc : $cf
	rlca                                                  ; $21bd : $07
	sbc a, b                                                  ; $21be : $98
	pop hl                                                  ; $21bf : $e1
	rlca                                                  ; $21c0 : $07
	and l                                                  ; $21c1 : $a5
	rrca                                                  ; $21c2 : $0f
	rlca                                                  ; $21c3 : $07
	and l                                                  ; $21c4 : $a5
	ld c, $03                                                  ; $21c5 : $0e, $03
	rst $18                                                  ; $21c7 : $df
	rlca                                                  ; $21c8 : $07
	and (hl)                                                  ; $21c9 : $a6
	add a, e                                                  ; $21ca : $83
	rlca                                                  ; $21cb : $07
	xor h                                                  ; $21cc : $ac
	rlca                                                  ; $21cd : $07
	ret                                                  ; $21ce : $c9


	rlca                                                  ; $21cf : $07
	ret nc                                                  ; $21d0 : $d0

	adc a, l                                                  ; $21d1 : $8d
	ld h, c                                                  ; $21d2 : $61
	rlca                                                  ; $21d3 : $07
	sub $de                                                  ; $21d4 : $d6, $de
	ld h, d                                                  ; $21d6 : $62
	ccf                                                  ; $21d7 : $3f
	rlca                                                  ; $21d8 : $07
	ret pe                                                  ; $21d9 : $e8

	ld c, $ac                                                  ; $21da : $0e, $ac
	ld c, $40                                                  ; $21dc : $0e, $40
	ex de, hl                                                  ; $21de : $eb
	sbc a, b                                                  ; $21df : $98
	ld c, $43                                                  ; $21e0 : $0e, $43
	halt                                                  ; $21e2 : $76

br_02_21e3:
	rrca                                                  ; $21e3 : $0f
	inc sp                                                  ; $21e4 : $33
	dec bc                                                  ; $21e5 : $0b
	ld d, b                                                  ; $21e6 : $50
	cp l                                                  ; $21e7 : $bd
	ld c, $43                                                  ; $21e8 : $0e, $43
	add a, d                                                  ; $21ea : $82
	call po, $df38                                                  ; $21eb : $e4, $38, $df
	ld c, $43                                                  ; $21ee : $0e, $43
	or (hl)                                                  ; $21f0 : $b6
	djnz br_02_21e3                                                  ; $21f1 : $10, $f0
	rst $08                                                  ; $21f3 : $cf
	ld c, $43                                                  ; $21f4 : $0e, $43
	or (hl)                                                  ; $21f6 : $b6
	add hl, de                                                  ; $21f7 : $19
	di                                                  ; $21f8 : $f3
	rst $20                                                  ; $21f9 : $e7
	inc a                                                  ; $21fa : $3c
	xor (hl)                                                  ; $21fb : $ae
	ld h, c                                                  ; $21fc : $61
	ld d, $0e                                                  ; $21fd : $16, $0e
	ld b, (hl)                                                  ; $21ff : $46
	adc a, c                                                  ; $2200 : $89
	ld c, $49                                                  ; $2201 : $0e, $49
	ld a, $00                                                  ; $2203 : $3e, $00
	ld c, $49                                                  ; $2205 : $0e, $49
	ld a, $00                                                  ; $2207 : $3e, $00
	rst $08                                                  ; $2209 : $cf
	ld c, $49                                                  ; $220a : $0e, $49
	and $8d                                                  ; $220c : $e6, $8d
	ld c, $4a                                                  ; $220e : $0e, $4a
	dec sp                                                  ; $2210 : $3b
	ccf                                                  ; $2211 : $3f
	ld c, $4a                                                  ; $2212 : $0e, $4a
	ld d, (hl)                                                  ; $2214 : $56
	ret po                                                  ; $2215 : $e0

	ld h, b                                                  ; $2216 : $60
	adc a, a                                                  ; $2217 : $8f
	ld c, $4a                                                  ; $2218 : $0e, $4a
	ld d, (hl)                                                  ; $221a : $56
	ret po                                                  ; $221b : $e0

	ld h, b                                                  ; $221c : $60
	adc a, h                                                  ; $221d : $8c
	ld c, $4a                                                  ; $221e : $0e, $4a

Call_02_2220:
	rst $08                                                  ; $2220 : $cf
	ld c, $4c                                                  ; $2221 : $0e, $4c
	out ($b2), a                                                  ; $2223 : $d3, $b2
	ld c, $4f                                                  ; $2225 : $0e, $4f
	ld c, $4e                                                  ; $2227 : $0e, $4e
	ld l, e                                                  ; $2229 : $6b
	ex af, af'                                                  ; $222a : $08
	inc bc                                                  ; $222b : $03
	call $c653                                                  ; $222c : $cd, $53, $c6
	rrca                                                  ; $222f : $0f
	ex af, af'                                                  ; $2230 : $08
	inc bc                                                  ; $2231 : $03
	call $d653                                                  ; $2232 : $cd, $53, $d6
	rra                                                  ; $2235 : $1f
	ex af, af'                                                  ; $2236 : $08
	rlca                                                  ; $2237 : $07
	sbc a, (hl)                                                  ; $2238 : $9e
	rra                                                  ; $2239 : $1f
	ex af, af'                                                  ; $223a : $08
	rlca                                                  ; $223b : $07
	jp pe, $cfc6                                                  ; $223c : $ea, $c6, $cf
	ex af, af'                                                  ; $223f : $08
	dec c                                                  ; $2240 : $0d
	sbc a, (hl)                                                  ; $2241 : $9e
	ld c, (hl)                                                  ; $2242 : $4e
	xor a                                                  ; $2243 : $af
	ex af, af'                                                  ; $2244 : $08
	inc de                                                  ; $2245 : $13
	call Call_02_089b                                                  ; $2246 : $cd, $9b, $08
	inc hl                                                  ; $2249 : $23
	rst $08                                                  ; $224a : $cf
	ex af, af'                                                  ; $224b : $08
	dec hl                                                  ; $224c : $2b
	ld a, $8f                                                  ; $224d : $3e, $8f
	ex af, af'                                                  ; $224f : $08
	dec hl                                                  ; $2250 : $2b
	ld a, $8f                                                  ; $2251 : $3e, $8f
	ld a, $29                                                  ; $2253 : $3e, $29
	ld e, b                                                  ; $2255 : $58
	ret                                                  ; $2256 : $c9


	adc a, a                                                  ; $2257 : $8f
	ex af, af'                                                  ; $2258 : $08
	dec hl                                                  ; $2259 : $2b
	sub (hl)                                                  ; $225a : $96
	cpl                                                  ; $225b : $2f
	ex af, af'                                                  ; $225c : $08
	dec hl                                                  ; $225d : $2b
	sbc a, (hl)                                                  ; $225e : $9e
	ld b, e                                                  ; $225f : $43
	jr nz, br_02_226a                                                  ; $2260 : $20, $08

	pop hl                                                  ; $2262 : $e1
	scf                                                  ; $2263 : $37
	ex af, af'                                                  ; $2264 : $08
	pop hl                                                  ; $2265 : $e1
	scf                                                  ; $2266 : $37
	di                                                  ; $2267 : $f3
	ld l, h                                                  ; $2268 : $6c
	ld (hl), b                                                  ; $2269 : $70

br_02_226a:
	add a, d                                                  ; $226a : $82
	ex af, af'                                                  ; $226b : $08
	add a, b                                                  ; $226c : $80
	xor (hl)                                                  ; $226d : $ae
	ld l, e                                                  ; $226e : $6b
	add a, b                                                  ; $226f : $80
	ex af, af'                                                  ; $2270 : $08
	add a, (hl)                                                  ; $2271 : $86
	ccf                                                  ; $2272 : $3f
	ex af, af'                                                  ; $2273 : $08
	add a, (hl)                                                  ; $2274 : $86
	rst $20                                                  ; $2275 : $e7
	dec sp                                                  ; $2276 : $3b
	ret nz                                                  ; $2277 : $c0

	cp (hl)                                                  ; $2278 : $be
	xor a                                                  ; $2279 : $af
	ex af, af'                                                  ; $227a : $08
	adc a, c                                                  ; $227b : $89
	and $81                                                  ; $227c : $e6, $81
	dec sp                                                  ; $227e : $3b
	ex af, af'                                                  ; $227f : $08
	ret nc                                                  ; $2280 : $d0

	or c                                                  ; $2281 : $b1
	sub $1f                                                  ; $2282 : $d6, $1f
	ex af, af'                                                  ; $2284 : $08
	ret nc                                                  ; $2285 : $d0

	or c                                                  ; $2286 : $b1
	sub $10                                                  ; $2287 : $d6, $10
	ex af, af'                                                  ; $2289 : $08
	out ($79), a                                                  ; $228a : $d3, $79
	and e                                                  ; $228c : $a3
	ex af, af'                                                  ; $228d : $08
	out ($88), a                                                  ; $228e : $d3, $88
	rrca                                                  ; $2290 : $0f
	ex af, af'                                                  ; $2291 : $08
	out ($88), a                                                  ; $2292 : $d3, $88
	inc bc                                                  ; $2294 : $03
	ex af, af'                                                  ; $2295 : $08
	push de                                                  ; $2296 : $d5
	cp c                                                  ; $2297 : $b9
	xor c                                                  ; $2298 : $a9
	ld a, c                                                  ; $2299 : $79
	pop hl                                                  ; $229a : $e1
	jp pe, $d608                                                  ; $229b : $ea, $08, $d6
	add hl, hl                                                  ; $229e : $29
	out ($cf), a                                                  ; $229f : $d3, $cf
	ex af, af'                                                  ; $22a1 : $08
	sub $c3                                                  ; $22a2 : $d6, $c3
	xor l                                                  ; $22a4 : $ad
	ld h, c                                                  ; $22a5 : $61
	ex af, af'                                                  ; $22a6 : $08
	exx                                                  ; $22a7 : $d9
	adc a, (hl)                                                  ; $22a8 : $8e
	xor (hl)                                                  ; $22a9 : $ae
	ld c, h                                                  ; $22aa : $4c
	ex af, af'                                                  ; $22ab : $08
	jp pe, Jump_02_010a                                                  ; $22ac : $ea, $0a, $01
	ld d, e                                                  ; $22af : $53
	ld a, (bc)                                                  ; $22b0 : $0a
	dec bc                                                  ; $22b1 : $0b
	push de                                                  ; $22b2 : $d5
	ld (hl), $2f                                                  ; $22b3 : $36, $2f
	ld a, (bc)                                                  ; $22b5 : $0a
	dec bc                                                  ; $22b6 : $0b
	sbc a, $43                                                  ; $22b7 : $de, $43
	adc a, l                                                  ; $22b9 : $8d
	ld a, (bc)                                                  ; $22ba : $0a
	sub a                                                  ; $22bb : $97
	ld a, c                                                  ; $22bc : $79
	ld a, (bc)                                                  ; $22bd : $0a
	and b                                                  ; $22be : $a0
	ld (hl), b                                                  ; $22bf : $70
	dec d                                                  ; $22c0 : $15
	ld h, b                                                  ; $22c1 : $60
	adc a, a                                                  ; $22c2 : $8f
	ld a, (bc)                                                  ; $22c3 : $0a
	and b                                                  ; $22c4 : $a0
	ld (hl), b                                                  ; $22c5 : $70
	dec d                                                  ; $22c6 : $15
	ld h, b                                                  ; $22c7 : $60
	adc a, a                                                  ; $22c8 : $8f
	dec a                                                  ; $22c9 : $3d
	or b                                                  ; $22ca : $b0
	ld h, a                                                  ; $22cb : $67
	ld a, (bc)                                                  ; $22cc : $0a
	and e                                                  ; $22cd : $a3
	rlca                                                  ; $22ce : $07
	rst $08                                                  ; $22cf : $cf
	ld a, (bc)                                                  ; $22d0 : $0a
	and e                                                  ; $22d1 : $a3
	rlca                                                  ; $22d2 : $07
	rst $08                                                  ; $22d3 : $cf
	ld sp, $6b9e                                                  ; $22d4 : $31, $9e, $6b

br_02_22d7:
	rst $18                                                  ; $22d7 : $df
	ld a, (bc)                                                  ; $22d8 : $0a
	and e                                                  ; $22d9 : $a3
	dec bc                                                  ; $22da : $0b
	ld a, (bc)                                                  ; $22db : $0a
	and a                                                  ; $22dc : $a7
	ccf                                                  ; $22dd : $3f
	ld a, (bc)                                                  ; $22de : $0a
	and a                                                  ; $22df : $a7
	inc a                                                  ; $22e0 : $3c
	inc sp                                                  ; $22e1 : $33
	cpl                                                  ; $22e2 : $2f
	ld a, (bc)                                                  ; $22e3 : $0a
	and a                                                  ; $22e4 : $a7
	ld h, e                                                  ; $22e5 : $63
	cpl                                                  ; $22e6 : $2f
	ld a, (bc)                                                  ; $22e7 : $0a
	xor c                                                  ; $22e8 : $a9
	call po, $d90d                                                  ; $22e9 : $e4, $0d, $d9
	jp (hl)                                                  ; $22ec : $e9


	ld a, (bc)                                                  ; $22ed : $0a
	xor e                                                  ; $22ee : $ab
	sbc a, (hl)                                                  ; $22ef : $9e
	ld (hl), e                                                  ; $22f0 : $73
	ld a, (bc)                                                  ; $22f1 : $0a
	xor e                                                  ; $22f2 : $ab
	sbc a, (hl)                                                  ; $22f3 : $9e
	sub (hl)                                                  ; $22f4 : $96
	call po, Call_02_3f0d                                                  ; $22f5 : $e4, $0d, $3f
	ld c, $50                                                  ; $22f8 : $0e, $50
	ret po                                                  ; $22fa : $e0

	rrca                                                  ; $22fb : $0f
	dec bc                                                  ; $22fc : $0b
	ld c, $06                                                  ; $22fd : $0e, $06
	rrca                                                  ; $22ff : $0f
	dec bc                                                  ; $2300 : $0b
	ld c, $06                                                  ; $2301 : $0e, $06
	ex af, af'                                                  ; $2303 : $08
	dec bc                                                  ; $2304 : $0b
	ld bc, $6258                                                  ; $2305 : $01, $58, $62
	dec bc                                                  ; $2308 : $0b
	rra                                                  ; $2309 : $1f
	ld ($f3f0), a                                                  ; $230a : $32, $f0, $f3
	in a, ($69)                                                  ; $230d : $db, $69

Jump_02_230f:
	call po, Call_02_3fa5                                                  ; $230f : $e4, $a5, $3f
	dec bc                                                  ; $2312 : $0b
	dec d                                                  ; $2313 : $15
	inc bc                                                  ; $2314 : $03
	sub a                                                  ; $2315 : $97
	sbc a, (hl)                                                  ; $2316 : $9e
	ld d, $cd                                                  ; $2317 : $16, $cd
	dec bc                                                  ; $2319 : $0b
	dec d                                                  ; $231a : $15
	inc bc                                                  ; $231b : $03
	sub a                                                  ; $231c : $97
	sbc a, (hl)                                                  ; $231d : $9e
	ld d, $cd                                                  ; $231e : $16, $cd
	rst $08                                                  ; $2320 : $cf
	dec bc                                                  ; $2321 : $0b
	dec d                                                  ; $2322 : $15
	add hl, sp                                                  ; $2323 : $39
	ld a, c                                                  ; $2324 : $79
	pop hl                                                  ; $2325 : $e1
	ld l, h                                                  ; $2326 : $6c
	rst $18                                                  ; $2327 : $df
	dec bc                                                  ; $2328 : $0b
	dec d                                                  ; $2329 : $15
	ld h, e                                                  ; $232a : $63
	dec bc                                                  ; $232b : $0b
	dec d                                                  ; $232c : $15

br_02_232d:
	ld l, l                                                  ; $232d : $6d
	ld sp, $0bdc                                                  ; $232e : $31, $dc, $0b
	dec d                                                  ; $2331 : $15
	ld l, l                                                  ; $2332 : $6d
	ld sp, $6bde                                                  ; $2333 : $31, $de, $6b
	ccf                                                  ; $2336 : $3f
	dec bc                                                  ; $2337 : $0b

br_02_2338:
	dec e                                                  ; $2338 : $1d
	ld h, c                                                  ; $2339 : $61
	dec bc                                                  ; $233a : $0b

Jump_02_233b:
	dec e                                                  ; $233b : $1d
	ld h, c                                                  ; $233c : $61
	di                                                  ; $233d : $f3
	ld d, $b1                                                  ; $233e : $16, $b1
	ld (hl), e                                                  ; $2340 : $73
	dec bc                                                  ; $2341 : $0b
	dec e                                                  ; $2342 : $1d
	ld h, c                                                  ; $2343 : $61
	di                                                  ; $2344 : $f3
	sub c                                                  ; $2345 : $91
	jr nc, br_02_22d7                                                  ; $2346 : $30, $8f

	dec bc                                                  ; $2348 : $0b
	ccf                                                  ; $2349 : $3f
	ld sp, $7307                                                  ; $234a : $31, $07, $73
	cpl                                                  ; $234d : $2f
	dec bc                                                  ; $234e : $0b
	ccf                                                  ; $234f : $3f
	ld sp, $7307                                                  ; $2350 : $31, $07, $73
	cpl                                                  ; $2353 : $2f
	ld a, $85                                                  ; $2354 : $3e, $85
	dec c                                                  ; $2356 : $0d
	dec bc                                                  ; $2357 : $0b
	ccf                                                  ; $2358 : $3f
	dec a                                                  ; $2359 : $3d
	ld d, e                                                  ; $235a : $53
	dec bc                                                  ; $235b : $0b
	jr nc, br_02_232d                                                  ; $235c : $30, $cf

	dec bc                                                  ; $235e : $0b
	pop hl                                                  ; $235f : $e1
	jr c, br_02_2338                                                  ; $2360 : $38, $d6

	add a, b                                                  ; $2362 : $80
	dec bc                                                  ; $2363 : $0b
	ld l, h                                                  ; $2364 : $6c
	exx                                                  ; $2365 : $d9
	dec de                                                  ; $2366 : $1b
	ld bc, $0bea                                                  ; $2367 : $01, $ea, $0b
	ld l, (hl)                                                  ; $236a : $6e
	cp c                                                  ; $236b : $b9
	add a, b                                                  ; $236c : $80
	dec bc                                                  ; $236d : $0b
	ex (sp), hl                                                  ; $236e : $e3
	dec bc                                                  ; $236f : $0b
	ex (sp), hl                                                  ; $2370 : $e3
	ex af, af'                                                  ; $2371 : $08
	ret nz                                                  ; $2372 : $c0

	rst $08                                                  ; $2373 : $cf

br_02_2374:
	dec bc                                                  ; $2374 : $0b
	call po, Call_02_0f02                                                  ; $2375 : $e4, $02, $0f
	dec bc                                                  ; $2378 : $0b
	call po, $cf63                                                  ; $2379 : $e4, $63, $cf
	dec bc                                                  ; $237c : $0b
	call po, $d66c                                                  ; $237d : $e4, $6c, $d6
	inc de                                                  ; $2380 : $13
	dec bc                                                  ; $2381 : $0b
	call po, Call_02_0b9b                                                  ; $2382 : $e4, $9b, $0b
	call po, $0bcf                                                  ; $2385 : $e4, $cf, $0b
	call po, $b9cd                                                  ; $2388 : $e4, $cd, $b9
	adc a, (hl)                                                  ; $238b : $8e
	rra                                                  ; $238c : $1f
	dec bc                                                  ; $238d : $0b
	call po, Call_02_0bea                                                  ; $238e : $e4, $ea, $0b
	or e                                                  ; $2391 : $b3
	call $df0b                                                  ; $2392 : $cd, $0b, $df
	dec bc                                                  ; $2395 : $0b
	sub $17                                                  ; $2396 : $d6, $17
	inc a                                                  ; $2398 : $3c
	dec bc                                                  ; $2399 : $0b
	sub $46                                                  ; $239a : $d6, $46
	ld d, $07                                                  ; $239c : $16, $07
	inc c                                                  ; $239e : $0c
	ld h, b                                                  ; $239f : $60
	adc a, a                                                  ; $23a0 : $8f
	inc c                                                  ; $23a1 : $0c
	ld h, d                                                  ; $23a2 : $62
	ccf                                                  ; $23a3 : $3f
	inc c                                                  ; $23a4 : $0c
	ex (sp), hl                                                  ; $23a5 : $e3
	ld ($c90c), a                                                  ; $23a6 : $32, $0c, $c9
	ld d, $0d                                                  ; $23a9 : $16, $0d
	ld ($db0c), a                                                  ; $23ab : $32, $0c, $db
	sub a                                                  ; $23ae : $97
	sbc a, (hl)                                                  ; $23af : $9e
	ld e, $af                                                  ; $23b0 : $1e, $af
	inc c                                                  ; $23b2 : $0c
	in a, ($98)                                                  ; $23b3 : $db, $98
	sbc a, (hl)                                                  ; $23b5 : $9e
	ld b, e                                                  ; $23b6 : $43
	cp a                                                  ; $23b7 : $bf
	inc c                                                  ; $23b8 : $0c
	in a, ($98)                                                  ; $23b9 : $db, $98
	sbc a, (hl)                                                  ; $23bb : $9e
	ld b, e                                                  ; $23bc : $43

Jump_02_23bd:
	cp h                                                  ; $23bd : $bc
	inc c                                                  ; $23be : $0c
	in a, ($98)                                                  ; $23bf : $db, $98
	sbc a, (hl)                                                  ; $23c1 : $9e
	ld b, (hl)                                                  ; $23c2 : $46
	djnz br_02_2444                                                  ; $23c3 : $10, $7f
	ld a, $68                                                  ; $23c5 : $3e, $68
	ld l, l                                                  ; $23c7 : $6d
	inc c                                                  ; $23c8 : $0c
	in a, ($98)                                                  ; $23c9 : $db, $98
	sbc a, (hl)                                                  ; $23cb : $9e
	ld c, (hl)                                                  ; $23cc : $4e
	xor a                                                  ; $23cd : $af
	dec c                                                  ; $23ce : $0d
	di                                                  ; $23cf : $f3
	push de                                                  ; $23d0 : $d5
	ccf                                                  ; $23d1 : $3f
	dec c                                                  ; $23d2 : $0d
	ld d, e                                                  ; $23d3 : $53
	adc a, h                                                  ; $23d4 : $8c
	dec c                                                  ; $23d5 : $0d
	ld d, a                                                  ; $23d6 : $57
	dec a                                                  ; $23d7 : $3d
	ld h, c                                                  ; $23d8 : $61
	dec c                                                  ; $23d9 : $0d
	ld (hl), b                                                  ; $23da : $70
	adc a, l                                                  ; $23db : $8d
	rrca                                                  ; $23dc : $0f
	dec c                                                  ; $23dd : $0d
	ld (hl), b                                                  ; $23de : $70
	adc a, l                                                  ; $23df : $8d
	ld h, c                                                  ; $23e0 : $61
	di                                                  ; $23e1 : $f3
	sub c                                                  ; $23e2 : $91
	jr nc, br_02_2374                                                  ; $23e3 : $30, $8f

	dec c                                                  ; $23e5 : $0d
	ld (hl), b                                                  ; $23e6 : $70
	adc a, l                                                  ; $23e7 : $8d
	ld l, h                                                  ; $23e8 : $6c
	dec c                                                  ; $23e9 : $0d
	ld (hl), b                                                  ; $23ea : $70
	rst $08                                                  ; $23eb : $cf
	dec c                                                  ; $23ec : $0d
	ld (hl), b                                                  ; $23ed : $70
	rst $08                                                  ; $23ee : $cf
	ld a, $49                                                  ; $23ef : $3e, $49
	and $8d                                                  ; $23f1 : $e6, $8d
	ld b, $8c                                                  ; $23f3 : $06, $8c
	dec c                                                  ; $23f5 : $0d
	call po, $a59c                                                  ; $23f6 : $e4, $9c, $a5
	dec sp                                                  ; $23f9 : $3b
	ccf                                                  ; $23fa : $3f
	dec c                                                  ; $23fb : $0d
	call po, $a59c                                                  ; $23fc : $e4, $9c, $a5
	dec sp                                                  ; $23ff : $3b
	ld h, c                                                  ; $2400 : $61
	dec c                                                  ; $2401 : $0d
	sbc a, (hl)                                                  ; $2402 : $9e
	ld c, a                                                  ; $2403 : $4f
	dec c                                                  ; $2404 : $0d
	sbc a, (hl)                                                  ; $2405 : $9e
	ld b, (hl)                                                  ; $2406 : $46
	rra                                                  ; $2407 : $1f
	dec c                                                  ; $2408 : $0d
	sbc a, (hl)                                                  ; $2409 : $9e
	ld c, h                                                  ; $240a : $4c
	dec c                                                  ; $240b : $0d
	or (hl)                                                  ; $240c : $b6
	rrca                                                  ; $240d : $0f
	dec c                                                  ; $240e : $0d
	ret nc                                                  ; $240f : $d0

	ld e, $3f                                                  ; $2410 : $1e, $3f
	dec c                                                  ; $2412 : $0d
	ret nc                                                  ; $2413 : $d0

	ld e, $33                                                  ; $2414 : $1e, $33
	cpl                                                  ; $2416 : $2f
	dec c                                                  ; $2417 : $0d
	ret nc                                                  ; $2418 : $d0

	ld e, $36                                                  ; $2419 : $1e, $36
	adc a, (hl)                                                  ; $241b : $8e
	rra                                                  ; $241c : $1f
	dec c                                                  ; $241d : $0d
	exx                                                  ; $241e : $d9
	cp b                                                  ; $241f : $b8
	ld a, $af                                                  ; $2420 : $3e, $af
	ld a, $13                                                  ; $2422 : $3e, $13
	add a, e                                                  ; $2424 : $83
	or b                                                  ; $2425 : $b0
	ld a, a                                                  ; $2426 : $7f
	dec c                                                  ; $2427 : $0d
	in a, ($01)                                                  ; $2428 : $db, $01
	rst $18                                                  ; $242a : $df
	dec c                                                  ; $242b : $0d
	in a, ($01)                                                  ; $242c : $db, $01
	sub $8e                                                  ; $242e : $d6, $8e
	rra                                                  ; $2430 : $1f
	dec c                                                  ; $2431 : $0d
	in a, ($01)                                                  ; $2432 : $db, $01
	call c, $6b0e                                                  ; $2434 : $dc, $0e, $6b
	ld l, h                                                  ; $2437 : $6c
	add hl, de                                                  ; $2438 : $19
	and e                                                  ; $2439 : $a3
	ld c, $6c                                                  ; $243a : $0e, $6c
	in a, ($60)                                                  ; $243c : $db, $60
	ld c, $6d                                                  ; $243e : $0e, $6d
	ld e, c                                                  ; $2440 : $59
	cp a                                                  ; $2441 : $bf
	ld c, $6d                                                  ; $2442 : $0e, $6d

br_02_2444:
	ld e, c                                                  ; $2444 : $59
	or (hl)                                                  ; $2445 : $b6
	ex de, hl                                                  ; $2446 : $eb
	ld ($6d0e), a                                                  ; $2447 : $32, $0e, $6d
	sbc a, a                                                  ; $244a : $9f
	ld c, $6d                                                  ; $244b : $0e, $6d
	sbc a, (hl)                                                  ; $244d : $9e
	ld c, c                                                  ; $244e : $49
	ret po                                                  ; $244f : $e0

	ld h, a                                                  ; $2450 : $67
	ccf                                                  ; $2451 : $3f
	ld c, $6d                                                  ; $2452 : $0e, $6d
	sbc a, (hl)                                                  ; $2454 : $9e
	ld c, c                                                  ; $2455 : $49
	ret po                                                  ; $2456 : $e0

	ld h, a                                                  ; $2457 : $67
	inc a                                                  ; $2458 : $3c
	ld c, $70                                                  ; $2459 : $0e, $70
	ld (hl), b                                                  ; $245b : $70
	add a, c                                                  ; $245c : $81
	ld d, e                                                  ; $245d : $53
	ld c, $79                                                  ; $245e : $0e, $79
	adc a, a                                                  ; $2460 : $8f
	ld c, $80                                                  ; $2461 : $0e, $80
	or d                                                  ; $2463 : $b2
	ld c, $80                                                  ; $2464 : $0e, $80
	jp pe, $960e                                                  ; $2466 : $ea, $0e, $96
	rst $08                                                  ; $2469 : $cf
	ld c, $96                                                  ; $246a : $0e, $96
	rst $08                                                  ; $246c : $cf
	ld a, ($839e)                                                  ; $246d : $3a, $9e, $83
	cp h                                                  ; $2470 : $bc
	ld c, $bd                                                  ; $2471 : $0e, $bd
	ld sp, $e0e0                                                  ; $2473 : $31, $e0, $e0
	call pe, $4bf3                                                  ; $2476 : $ec, $f3, $4b
	ex af, af'                                                  ; $2479 : $08
	ex (sp), hl                                                  ; $247a : $e3
	halt                                                  ; $247b : $76
	adc a, a                                                  ; $247c : $8f
	ret po                                                  ; $247d : $e0

	push af                                                  ; $247e : $f5
	ret po                                                  ; $247f : $e0

	ld c, $0e                                                  ; $2480 : $0e, $0e
	xor a                                                  ; $2482 : $af
	ret po                                                  ; $2483 : $e0

	ld bc, $e0e3                                                  ; $2484 : $01, $e3, $e0
	ld bc, $e0e3                                                  ; $2487 : $01, $e3, $e0
	sbc a, b                                                  ; $248a : $98
	ccf                                                  ; $248b : $3f
	ret po                                                  ; $248c : $e0

	ld bc, $b6d3                                                  ; $248d : $01, $d3, $b6
	rrca                                                  ; $2490 : $0f

br_02_2491:
	ret po                                                  ; $2491 : $e0

	ld (bc), a                                                  ; $2492 : $02
	pop hl                                                  ; $2493 : $e1
	ccf                                                  ; $2494 : $3f
	ret po                                                  ; $2495 : $e0

	ld (bc), a                                                  ; $2496 : $02
	call po, $d968                                                  ; $2497 : $e4, $68, $d9
	adc a, a                                                  ; $249a : $8f
	ret po                                                  ; $249b : $e0

	ld c, $15                                                  ; $249c : $0e, $15
	jr nz, br_02_24cf                                                  ; $249e : $20, $2f

	ret po                                                  ; $24a0 : $e0

	ld b, $e3                                                  ; $24a1 : $06, $e3
	rlca                                                  ; $24a3 : $07
	ret po                                                  ; $24a4 : $e0

	ld c, $20                                                  ; $24a5 : $0e, $20
	ret po                                                  ; $24a7 : $e0

	ld c, $33                                                  ; $24a8 : $0e, $33
	cp a                                                  ; $24aa : $bf
	inc c                                                  ; $24ab : $0c
	di                                                  ; $24ac : $f3
	add hl, hl                                                  ; $24ad : $29
	ex de, hl                                                  ; $24ae : $eb
	jr c, br_02_2491                                                  ; $24af : $38, $e0

	rlca                                                  ; $24b1 : $07
	cpl                                                  ; $24b2 : $2f
	inc sp                                                  ; $24b3 : $33
	ld c, $17                                                  ; $24b4 : $0e, $17
	ccf                                                  ; $24b6 : $3f
	ret po                                                  ; $24b7 : $e0

	rlca                                                  ; $24b8 : $07
	ld a, a                                                  ; $24b9 : $7f
	ret po                                                  ; $24ba : $e0

	rlca                                                  ; $24bb : $07
	sub $1f                                                  ; $24bc : $d6, $1f
	ret po                                                  ; $24be : $e0

	ex af, af'                                                  ; $24bf : $08
	ex af, af'                                                  ; $24c0 : $08
	rrca                                                  ; $24c1 : $0f
	ret po                                                  ; $24c2 : $e0

	ex af, af'                                                  ; $24c3 : $08
	jr nz, br_02_2528                                                  ; $24c4 : $20, $62

	ret po                                                  ; $24c6 : $e0

	ex af, af'                                                  ; $24c7 : $08
	inc l                                                  ; $24c8 : $2c
	ret po                                                  ; $24c9 : $e0

	ex af, af'                                                  ; $24ca : $08
	pop hl                                                  ; $24cb : $e1
	ld (hl), b                                                  ; $24cc : $70
	inc hl                                                  ; $24cd : $23
	push bc                                                  ; $24ce : $c5

br_02_24cf:
	ret po                                                  ; $24cf : $e0

	dec bc                                                  ; $24d0 : $0b
	ret po                                                  ; $24d1 : $e0

	dec bc                                                  ; $24d2 : $0b
	ret po                                                  ; $24d3 : $e0

	ld ($0be0), a                                                  ; $24d4 : $32, $e0, $0b
	pop hl                                                  ; $24d7 : $e1
	ld b, $8f                                                  ; $24d8 : $06, $8f
	ret po                                                  ; $24da : $e0

	dec bc                                                  ; $24db : $0b
	sbc a, (hl)                                                  ; $24dc : $9e
	ld b, e                                                  ; $24dd : $43
	out ($bf), a                                                  ; $24de : $d3, $bf
	ret po                                                  ; $24e0 : $e0

	dec bc                                                  ; $24e1 : $0b
	sbc a, (hl)                                                  ; $24e2 : $9e
	ld b, e                                                  ; $24e3 : $43
	in a, ($61)                                                  ; $24e4 : $db, $61
	ret po                                                  ; $24e6 : $e0

	dec bc                                                  ; $24e7 : $0b
	or (hl)                                                  ; $24e8 : $b6
	dec sp                                                  ; $24e9 : $3b
	di                                                  ; $24ea : $f3
	or e                                                  ; $24eb : $b3
	inc (hl)                                                  ; $24ec : $34
	ret po                                                  ; $24ed : $e0

	dec bc                                                  ; $24ee : $0b
	cp c                                                  ; $24ef : $b9

br_02_24f0:
	ret pe                                                  ; $24f0 : $e8

	ret po                                                  ; $24f1 : $e0

	dec bc                                                  ; $24f2 : $0b
	out ($bf), a                                                  ; $24f3 : $d3, $bf
	ret po                                                  ; $24f5 : $e0

	inc c                                                  ; $24f6 : $0c
	ccf                                                  ; $24f7 : $3f
	ret po                                                  ; $24f8 : $e0

	inc c                                                  ; $24f9 : $0c
	ld a, $00                                                  ; $24fa : $3e, $00
	ld (hl), a                                                  ; $24fc : $77
	ret po                                                  ; $24fd : $e0

	inc c                                                  ; $24fe : $0c
	ld ($0ce0), a                                                  ; $24ff : $32, $e0, $0c
	ld h, c                                                  ; $2502 : $61
	ret po                                                  ; $2503 : $e0

br_02_2504:
	inc c                                                  ; $2504 : $0c
	ld l, b                                                  ; $2505 : $68
	ret po                                                  ; $2506 : $e0

	inc c                                                  ; $2507 : $0c
	sub $77                                                  ; $2508 : $d6, $77
	ccf                                                  ; $250a : $3f
	ret po                                                  ; $250b : $e0

	dec c                                                  ; $250c : $0d
	ret po                                                  ; $250d : $e0

	dec c                                                  ; $250e : $0d
	call po, $e008                                                  ; $250f : $e4, $08, $e0
	dec c                                                  ; $2512 : $0d

br_02_2513:
	rst $08                                                  ; $2513 : $cf
	ret po                                                  ; $2514 : $e0

	dec c                                                  ; $2515 : $0d
	rst $10                                                  ; $2516 : $d7
	ccf                                                  ; $2517 : $3f
	ret po                                                  ; $2518 : $e0

	dec c                                                  ; $2519 : $0d
	rst $10                                                  ; $251a : $d7
	inc a                                                  ; $251b : $3c
	ret po                                                  ; $251c : $e0

	dec c                                                  ; $251d : $0d
	rst $10                                                  ; $251e : $d7
	inc a                                                  ; $251f : $3c
	ld d, (hl)                                                  ; $2520 : $56
	xor a                                                  ; $2521 : $af
	ret po                                                  ; $2522 : $e0

	ld c, $af                                                  ; $2523 : $0e, $af
	ret po                                                  ; $2525 : $e0

br_02_2526:
	ld c, $ac                                                  ; $2526 : $0e, $ac

br_02_2528:
	ret po                                                  ; $2528 : $e0

	jr nc, br_02_2540                                                  ; $2529 : $30, $15

	ret po                                                  ; $252b : $e0

	jr nc, -$71                                                  ; $252c : $30, $8f

	ret po                                                  ; $252e : $e0

	jr nc, br_02_24f0                                                  ; $252f : $30, $bf

	ret po                                                  ; $2531 : $e0

	jr nc, br_02_24f0                                                  ; $2532 : $30, $bc

	ret po                                                  ; $2534 : $e0

	jr nc, br_02_2504                                                  ; $2535 : $30, $cd

	ld h, e                                                  ; $2537 : $63
	rst $08                                                  ; $2538 : $cf
	ret po                                                  ; $2539 : $e0

	jr nc, br_02_2513                                                  ; $253a : $30, $d7

	inc a                                                  ; $253c : $3c
	ret po                                                  ; $253d : $e0

	jr nc, br_02_2526                                                  ; $253e : $30, $e6

br_02_2540:
	sub $4e                                                  ; $2540 : $d6, $4e
	ld h, a                                                  ; $2542 : $67
	ret po                                                  ; $2543 : $e0

	ld sp, $430e                                                  ; $2544 : $31, $0e, $43
	ret po                                                  ; $2547 : $e0

	ld sp, $6c0e                                                  ; $2548 : $31, $0e, $6c
	ccf                                                  ; $254b : $3f
	ret po                                                  ; $254c : $e0

	ld sp, $439e                                                  ; $254d : $31, $9e, $43
	ret po                                                  ; $2550 : $e0

	ld sp, $439e                                                  ; $2551 : $31, $9e, $43
	rst $08                                                  ; $2554 : $cf
	ret po                                                  ; $2555 : $e0

	ld sp, $469e                                                  ; $2556 : $31, $9e, $46
	adc a, (hl)                                                  ; $2559 : $8e
	rra                                                  ; $255a : $1f
	ret po                                                  ; $255b : $e0

	ld ($33e0), a                                                  ; $255c : $32, $e0, $33
	ret po                                                  ; $255f : $e0

	inc sp                                                  ; $2560 : $33
	ld d, (hl)                                                  ; $2561 : $56
	rst $20                                                  ; $2562 : $e7
	ccf                                                  ; $2563 : $3f
	ret po                                                  ; $2564 : $e0

	inc sp                                                  ; $2565 : $33
	adc a, a                                                  ; $2566 : $8f
	ret po                                                  ; $2567 : $e0

	inc sp                                                  ; $2568 : $33
	rst $10                                                  ; $2569 : $d7
	ccf                                                  ; $256a : $3f
	ret po                                                  ; $256b : $e0

	inc (hl)                                                  ; $256c : $34
	sbc a, e                                                  ; $256d : $9b
	ccf                                                  ; $256e : $3f
	ret po                                                  ; $256f : $e0

	ld a, $10                                                  ; $2570 : $3e, $10
	adc a, a                                                  ; $2572 : $8f
	ret po                                                  ; $2573 : $e0

	ld a, $16                                                  ; $2574 : $3e, $16
	adc a, a                                                  ; $2576 : $8f
	ret po                                                  ; $2577 : $e0

	ld (hl), $e2                                                  ; $2578 : $36, $e2
	ld l, b                                                  ; $257a : $68
	pop hl                                                  ; $257b : $e1
	ret po                                                  ; $257c : $e0

	ld (hl), $8e                                                  ; $257d : $36, $8e
	rra                                                  ; $257f : $1f
	ret po                                                  ; $2580 : $e0

	ld (hl), $be                                                  ; $2581 : $36, $be
	ld l, l                                                  ; $2583 : $6d
	ret po                                                  ; $2584 : $e0

	scf                                                  ; $2585 : $37
	pop hl                                                  ; $2586 : $e1
	ld l, (hl)                                                  ; $2587 : $6e
	ld l, (hl)                                                  ; $2588 : $6e
	ld c, a                                                  ; $2589 : $4f
	ret po                                                  ; $258a : $e0

	scf                                                  ; $258b : $37
	ld h, e                                                  ; $258c : $63
	ld c, h                                                  ; $258d : $4c
	ret po                                                  ; $258e : $e0

	scf                                                  ; $258f : $37
	ld l, (hl)                                                  ; $2590 : $6e
	or e                                                  ; $2591 : $b3
	ret po                                                  ; $2592 : $e0

	scf                                                  ; $2593 : $37
	ld a, a                                                  ; $2594 : $7f
	ret po                                                  ; $2595 : $e0

	scf                                                  ; $2596 : $37
	sbc a, b                                                  ; $2597 : $98
	pop hl                                                  ; $2598 : $e1
	ret po                                                  ; $2599 : $e0

br_02_259a:
	scf                                                  ; $259a : $37
	sbc a, b                                                  ; $259b : $98
	pop hl                                                  ; $259c : $e1

br_02_259d:
	ld l, b                                                  ; $259d : $68
	pop hl                                                  ; $259e : $e1
	ret po                                                  ; $259f : $e0

	scf                                                  ; $25a0 : $37
	sbc a, b                                                  ; $25a1 : $98
	pop hl                                                  ; $25a2 : $e1
	rst $08                                                  ; $25a3 : $cf
	ret po                                                  ; $25a4 : $e0

	jr c, br_02_259a                                                  ; $25a5 : $38, $f3

	ld c, e                                                  ; $25a7 : $4b

br_02_25a8:
	ex af, af'                                                  ; $25a8 : $08
	ex (sp), hl                                                  ; $25a9 : $e3
	halt                                                  ; $25aa : $76
	adc a, a                                                  ; $25ab : $8f
	ret po                                                  ; $25ac : $e0

	jr c, br_02_25db                                                  ; $25ad : $38, $2c

	ret po                                                  ; $25af : $e0

	jr c, br_02_25e2                                                  ; $25b0 : $38, $30

	push de                                                  ; $25b2 : $d5
	ret po                                                  ; $25b3 : $e0

	jr c, $37                                                  ; $25b4 : $38, $37

	and $e9                                                  ; $25b6 : $e6, $e9
	ret po                                                  ; $25b8 : $e0

	jr c, br_02_259d                                                  ; $25b9 : $38, $e2

	ld c, $46                                                  ; $25bb : $0e, $46
	adc a, a                                                  ; $25bd : $8f
	inc (hl)                                                  ; $25be : $34
	or b                                                  ; $25bf : $b0
	adc a, (hl)                                                  ; $25c0 : $8e
	scf                                                  ; $25c1 : $37
	ld l, b                                                  ; $25c2 : $68
	ret po                                                  ; $25c3 : $e0

	dec sp                                                  ; $25c4 : $3b
	pop hl                                                  ; $25c5 : $e1
	jr c, br_02_25a8                                                  ; $25c6 : $38, $e0

	dec sp                                                  ; $25c8 : $3b
	ld l, b                                                  ; $25c9 : $68
	pop hl                                                  ; $25ca : $e1
	ret po                                                  ; $25cb : $e0

	dec sp                                                  ; $25cc : $3b
	ld l, b                                                  ; $25cd : $68
	pop hl                                                  ; $25ce : $e1
	di                                                  ; $25cf : $f3

br_02_25d0:
	call $6db0                                                  ; $25d0 : $cd, $b0, $6d
	ret po                                                  ; $25d3 : $e0

	dec sp                                                  ; $25d4 : $3b
	ex (sp), hl                                                  ; $25d5 : $e3
	push bc                                                  ; $25d6 : $c5
	ld l, e                                                  ; $25d7 : $6b
	inc a                                                  ; $25d8 : $3c
	ret po                                                  ; $25d9 : $e0

	dec sp                                                  ; $25da : $3b

br_02_25db:
	halt                                                  ; $25db : $76
	adc a, a                                                  ; $25dc : $8f
	ret po                                                  ; $25dd : $e0

	inc a                                                  ; $25de : $3c
	ld h, d                                                  ; $25df : $62
	inc a                                                  ; $25e0 : $3c
	ret po                                                  ; $25e1 : $e0

br_02_25e2:
	dec a                                                  ; $25e2 : $3d
	rrca                                                  ; $25e3 : $0f
	ret po                                                  ; $25e4 : $e0

	dec a                                                  ; $25e5 : $3d
	adc a, $af                                                  ; $25e6 : $ce, $af
	dec sp                                                  ; $25e8 : $3b
	sbc a, h                                                  ; $25e9 : $9c
	rst $08                                                  ; $25ea : $cf
	ret po                                                  ; $25eb : $e0

	ld a, $a9                                                  ; $25ec : $3e, $a9
	add a, d                                                  ; $25ee : $82
	ret po                                                  ; $25ef : $e0

	ld l, (hl)                                                  ; $25f0 : $6e
	rlca                                                  ; $25f1 : $07
	ccf                                                  ; $25f2 : $3f
	ret po                                                  ; $25f3 : $e0

	ld h, c                                                  ; $25f4 : $61
	ld c, $43                                                  ; $25f5 : $0e, $43
	or b                                                  ; $25f7 : $b0
	ld a, a                                                  ; $25f8 : $7f
	ret po                                                  ; $25f9 : $e0

	ld h, c                                                  ; $25fa : $61
	jr c, br_02_25d0                                                  ; $25fb : $38, $d3

	adc a, b                                                  ; $25fd : $88
	ld h, b                                                  ; $25fe : $60
	ld a, a                                                  ; $25ff : $7f
	ret po                                                  ; $2600 : $e0

	ld h, h                                                  ; $2601 : $64
	sub c                                                  ; $2602 : $91
	rlca                                                  ; $2603 : $07
	ret po                                                  ; $2604 : $e0

	ld l, (hl)                                                  ; $2605 : $6e
	rra                                                  ; $2606 : $1f

br_02_2607:
	ld a, $03                                                  ; $2607 : $3e, $03
	adc a, a                                                  ; $2609 : $8f
	ret po                                                  ; $260a : $e0

	ld l, (hl)                                                  ; $260b : $6e
	rra                                                  ; $260c : $1f
	ld ($a36a), a                                                  ; $260d : $32, $6a, $a3
	cp a                                                  ; $2610 : $bf
	ret po                                                  ; $2611 : $e0

	ld l, (hl)                                                  ; $2612 : $6e
	inc sp                                                  ; $2613 : $33
	ret po                                                  ; $2614 : $e0

	ld h, a                                                  ; $2615 : $67
	ld a, a                                                  ; $2616 : $7f
	ret po                                                  ; $2617 : $e0

	ld h, a                                                  ; $2618 : $67
	ld a, a                                                  ; $2619 : $7f
	add hl, sp                                                  ; $261a : $39
	ld c, a                                                  ; $261b : $4f
	dec sp                                                  ; $261c : $3b
	ld l, (hl)                                                  ; $261d : $6e
	dec d                                                  ; $261e : $15
	call c, $69e0                                                  ; $261f : $dc, $e0, $69
	inc hl                                                  ; $2622 : $23
	pop hl                                                  ; $2623 : $e1
	or b                                                  ; $2624 : $b0
	jr nz, br_02_2607                                                  ; $2625 : $20, $e0

	ld (hl), e                                                  ; $2627 : $73
	ret po                                                  ; $2628 : $e0

	ld l, c                                                  ; $2629 : $69
	ld a, c                                                  ; $262a : $79
	pop hl                                                  ; $262b : $e1
	jp pe, $69e0                                                  ; $262c : $ea, $e0, $69
	jp z, $b353                                                  ; $262f : $ca, $53, $b3
	ret po                                                  ; $2632 : $e0

	ld l, e                                                  ; $2633 : $6b
	cpl                                                  ; $2634 : $2f
	ret po                                                  ; $2635 : $e0

	ld l, e                                                  ; $2636 : $6b
	ld h, $3f                                                  ; $2637 : $26, $3f
	ret po                                                  ; $2639 : $e0

	ld l, e                                                  ; $263a : $6b
	inc l                                                  ; $263b : $2c

br_02_263c:
	ret po                                                  ; $263c : $e0

	ld l, e                                                  ; $263d : $6b
	push de                                                  ; $263e : $d5
	ret po                                                  ; $263f : $e0

	ld l, e                                                  ; $2640 : $6b
	push de                                                  ; $2641 : $d5
	di                                                  ; $2642 : $f3
	inc de                                                  ; $2643 : $13
	cp l                                                  ; $2644 : $bd

br_02_2645:
	ld h, h                                                  ; $2645 : $64
	ld h, c                                                  ; $2646 : $61
	dec c                                                  ; $2647 : $0d
	ccf                                                  ; $2648 : $3f
	ret po                                                  ; $2649 : $e0

	ld l, e                                                  ; $264a : $6b
	push de                                                  ; $264b : $d5
	jr nz, -$16                                                  ; $264c : $20, $ea

	ret po                                                  ; $264e : $e0

	ld l, h                                                  ; $264f : $6c
	djnz br_02_263c                                                  ; $2650 : $10, $ea
	add a, e                                                  ; $2652 : $83
	ret po                                                  ; $2653 : $e0

	ld l, h                                                  ; $2654 : $6c
	ld e, c                                                  ; $2655 : $59
	xor a                                                  ; $2656 : $af
	ret po                                                  ; $2657 : $e0

	ld l, h                                                  ; $2658 : $6c
	sbc a, b                                                  ; $2659 : $98
	ret po                                                  ; $265a : $e0

	ld l, l                                                  ; $265b : $6d
	out ($8f), a                                                  ; $265c : $d3, $8f
	ret po                                                  ; $265e : $e0

	ld (hl), b                                                  ; $265f : $70
	ld e, $3f                                                  ; $2660 : $1e, $3f
	inc a                                                  ; $2662 : $3c
	jr nc, br_02_2645                                                  ; $2663 : $30, $e0

	ld (hl), b                                                  ; $2665 : $70
	ld e, $39                                                  ; $2666 : $1e, $39
	and $dc                                                  ; $2668 : $e6, $dc
	ret po                                                  ; $266a : $e0

	ld (hl), b                                                  ; $266b : $70
	ld e, $3c                                                  ; $266c : $1e, $3c
	ret po                                                  ; $266e : $e0

	halt                                                  ; $266f : $76
	add a, d                                                  ; $2670 : $82
	ret po                                                  ; $2671 : $e0

	halt                                                  ; $2672 : $76
	ex de, hl                                                  ; $2673 : $eb
	ex de, hl                                                  ; $2674 : $eb
	dec bc                                                  ; $2675 : $0b
	cpl                                                  ; $2676 : $2f
	ret po                                                  ; $2677 : $e0

	ld a, c                                                  ; $2678 : $79
	ld e, $3f                                                  ; $2679 : $1e, $3f
	ret po                                                  ; $267b : $e0

	ld a, c                                                  ; $267c : $79
	ld e, $30                                                  ; $267d : $1e, $30
	inc hl                                                  ; $267f : $23
	cpl                                                  ; $2680 : $2f
	ret po                                                  ; $2681 : $e0

	ld a, c                                                  ; $2682 : $79
	ld e, $3c                                                  ; $2683 : $1e, $3c
	ret po                                                  ; $2685 : $e0

	ld a, c                                                  ; $2686 : $79
	sub d                                                  ; $2687 : $92
	ret po                                                  ; $2688 : $e0

	ld a, (hl)                                                  ; $2689 : $7e
	ld h, e                                                  ; $268a : $63
	ret po                                                  ; $268b : $e0

	ld a, (hl)                                                  ; $268c : $7e
	ld h, e                                                  ; $268d : $63
	rst $08                                                  ; $268e : $cf
	ret po                                                  ; $268f : $e0

	sub b                                                  ; $2690 : $90
	call c, $92e0                                                  ; $2691 : $dc, $e0, $92
	ld h, e                                                  ; $2694 : $63
	rst $08                                                  ; $2695 : $cf
	ret po                                                  ; $2696 : $e0

	sub d                                                  ; $2697 : $92
	jp pe, $e1f3                                                  ; $2698 : $ea, $f3, $e1
	cp c                                                  ; $269b : $b9
	ret pe                                                  ; $269c : $e8

	push de                                                  ; $269d : $d5
	ret po                                                  ; $269e : $e0

	sub e                                                  ; $269f : $93
	ld l, b                                                  ; $26a0 : $68
	pop hl                                                  ; $26a1 : $e1
	ret po                                                  ; $26a2 : $e0

	sbc a, (hl)                                                  ; $26a3 : $9e
	inc de                                                  ; $26a4 : $13
	jp pe, $96e0                                                  ; $26a5 : $ea, $e0, $96
	halt                                                  ; $26a8 : $76
	adc a, (hl)                                                  ; $26a9 : $8e
	rra                                                  ; $26aa : $1f
	ret po                                                  ; $26ab : $e0

	sub (hl)                                                  ; $26ac : $96
	ld a, h                                                  ; $26ad : $7c
	ret po                                                  ; $26ae : $e0

	sub a                                                  ; $26af : $97
	ld l, (hl)                                                  ; $26b0 : $6e
	halt                                                  ; $26b1 : $76
	rrca                                                  ; $26b2 : $0f
	ret po                                                  ; $26b3 : $e0

	sub a                                                  ; $26b4 : $97
	push bc                                                  ; $26b5 : $c5
	ld a, $76                                                  ; $26b6 : $3e, $76
	ex (sp), hl                                                  ; $26b8 : $e3
	ret po                                                  ; $26b9 : $e0

	sbc a, (hl)                                                  ; $26ba : $9e
	ld c, (hl)                                                  ; $26bb : $4e
	rrca                                                  ; $26bc : $0f
	ret po                                                  ; $26bd : $e0

	sbc a, (hl)                                                  ; $26be : $9e
	ld c, (hl)                                                  ; $26bf : $4e
	nop                                                  ; $26c0 : $00
	jp pe, $9ee0                                                  ; $26c1 : $ea, $e0, $9e
	ld c, (hl)                                                  ; $26c4 : $4e
	inc bc                                                  ; $26c5 : $03
	cpl                                                  ; $26c6 : $2f
	ret po                                                  ; $26c7 : $e0

	sbc a, b                                                  ; $26c8 : $98
	inc l                                                  ; $26c9 : $2c
	ret po                                                  ; $26ca : $e0

	sbc a, b                                                  ; $26cb : $98
	inc a                                                  ; $26cc : $3c
	ret po                                                  ; $26cd : $e0

br_02_26ce:
	sbc a, c                                                  ; $26ce : $99
	ex (sp), hl                                                  ; $26cf : $e3
	ret po                                                  ; $26d0 : $e0

	sbc a, c                                                  ; $26d1 : $99
	ex (sp), hl                                                  ; $26d2 : $e3
	rst $08                                                  ; $26d3 : $cf
	ret po                                                  ; $26d4 : $e0

	sbc a, c                                                  ; $26d5 : $99
	call po, $99e0                                                  ; $26d6 : $e4, $e0, $99
	call po, Call_02_083b                                                  ; $26d9 : $e4, $3b, $08

br_02_26dc:
	pop hl                                                  ; $26dc : $e1
	ret po                                                  ; $26dd : $e0

	sbc a, e                                                  ; $26de : $9b
	inc hl                                                  ; $26df : $23
	cp a                                                  ; $26e0 : $bf
	ret po                                                  ; $26e1 : $e0

	sbc a, e                                                  ; $26e2 : $9b
	inc hl                                                  ; $26e3 : $23
	or e                                                  ; $26e4 : $b3
	cpl                                                  ; $26e5 : $2f

Jump_02_26e6:
	ret po                                                  ; $26e6 : $e0

	sbc a, e                                                  ; $26e7 : $9b
	sbc a, b                                                  ; $26e8 : $98
	ret po                                                  ; $26e9 : $e0

	sbc a, h                                                  ; $26ea : $9c
	exx                                                  ; $26eb : $d9
	adc a, a                                                  ; $26ec : $8f
	ld a, $40                                                  ; $26ed : $3e, $40
	or b                                                  ; $26ef : $b0
	push de                                                  ; $26f0 : $d5
	sbc a, b                                                  ; $26f1 : $98
	ret po                                                  ; $26f2 : $e0

	sbc a, l                                                  ; $26f3 : $9d
	ex af, af'                                                  ; $26f4 : $08
	ld l, h                                                  ; $26f5 : $6c
	rst $18                                                  ; $26f6 : $df
	ret po                                                  ; $26f7 : $e0

	sbc a, l                                                  ; $26f8 : $9d
	ex af, af'                                                  ; $26f9 : $08
	ld l, h                                                  ; $26fa : $6c
	call c, $9de0                                                  ; $26fb : $dc, $e0, $9d
	ld e, a                                                  ; $26fe : $5f
	ret po                                                  ; $26ff : $e0

	sbc a, (hl)                                                  ; $2700 : $9e
	ld l, (hl)                                                  ; $2701 : $6e
	dec d                                                  ; $2702 : $15
	rst $18                                                  ; $2703 : $df
	ret po                                                  ; $2704 : $e0

	sbc a, (hl)                                                  ; $2705 : $9e
	ld h, a                                                  ; $2706 : $67
	inc hl                                                  ; $2707 : $23
	cp a                                                  ; $2708 : $bf
	ret po                                                  ; $2709 : $e0

	sbc a, (hl)                                                  ; $270a : $9e
	ld l, b                                                  ; $270b : $68
	inc de                                                  ; $270c : $13
	cpl                                                  ; $270d : $2f
	ret po                                                  ; $270e : $e0

	sbc a, (hl)                                                  ; $270f : $9e
	ld l, b                                                  ; $2710 : $68
	inc de                                                  ; $2711 : $13
	rst $08                                                  ; $2712 : $cf
	ret po                                                  ; $2713 : $e0

	sbc a, (hl)                                                  ; $2714 : $9e
	ld l, b                                                  ; $2715 : $68
	jr nz, br_02_26ce                                                  ; $2716 : $20, $b6

	inc a                                                  ; $2718 : $3c
	ret po                                                  ; $2719 : $e0

	sbc a, (hl)                                                  ; $271a : $9e
	ld l, b                                                  ; $271b : $68
	jr nz, br_02_26dc                                                  ; $271c : $20, $be

	xor a                                                  ; $271e : $af
	ret po                                                  ; $271f : $e0

	sbc a, (hl)                                                  ; $2720 : $9e
	add a, a                                                  ; $2721 : $87
	ld l, b                                                  ; $2722 : $68
	pop hl                                                  ; $2723 : $e1
	ret po                                                  ; $2724 : $e0

	sbc a, (hl)                                                  ; $2725 : $9e
	and c                                                  ; $2726 : $a1
	sbc a, l                                                  ; $2727 : $9d
	rst $18                                                  ; $2728 : $df
	ret po                                                  ; $2729 : $e0

	sbc a, (hl)                                                  ; $272a : $9e
	and c                                                  ; $272b : $a1
	sbc a, l                                                  ; $272c : $9d
	out ($2f), a                                                  ; $272d : $d3, $2f
	ret po                                                  ; $272f : $e0

	sbc a, (hl)                                                  ; $2730 : $9e
	and a                                                  ; $2731 : $a7
	ccf                                                  ; $2732 : $3f
	ret po                                                  ; $2733 : $e0

	sbc a, (hl)                                                  ; $2734 : $9e
	and a                                                  ; $2735 : $a7
	ccf                                                  ; $2736 : $3f
	inc c                                                  ; $2737 : $0c
	ret po                                                  ; $2738 : $e0

	sbc a, (hl)                                                  ; $2739 : $9e
	xor h                                                  ; $273a : $ac
	ret po                                                  ; $273b : $e0

	or b                                                  ; $273c : $b0
	ld h, a                                                  ; $273d : $67
	ld (hl), e                                                  ; $273e : $73
	ret po                                                  ; $273f : $e0

	or b                                                  ; $2740 : $b0
	ld l, b                                                  ; $2741 : $68
	ret po                                                  ; $2742 : $e0

	or b                                                  ; $2743 : $b0
	ex (sp), hl                                                  ; $2744 : $e3
	inc a                                                  ; $2745 : $3c
	ret po                                                  ; $2746 : $e0

	or b                                                  ; $2747 : $b0
	add a, c                                                  ; $2748 : $81
	ld e, a                                                  ; $2749 : $5f
	ret po                                                  ; $274a : $e0

	or b                                                  ; $274b : $b0
	add a, c                                                  ; $274c : $81
	ld d, e                                                  ; $274d : $53
	rst $08                                                  ; $274e : $cf
	ret po                                                  ; $274f : $e0

	or b                                                  ; $2750 : $b0
	add a, $76                                                  ; $2751 : $c6, $76
	rrca                                                  ; $2753 : $0f
	ret po                                                  ; $2754 : $e0

	or b                                                  ; $2755 : $b0
	ex de, hl                                                  ; $2756 : $eb
	ld h, a                                                  ; $2757 : $67
	ret po                                                  ; $2758 : $e0

	or b                                                  ; $2759 : $b0
	ex de, hl                                                  ; $275a : $eb
	ld h, a                                                  ; $275b : $67
	ld h, b                                                  ; $275c : $60
	adc a, a                                                  ; $275d : $8f
	ret po                                                  ; $275e : $e0

	or e                                                  ; $275f : $b3
	ld c, $3f                                                  ; $2760 : $0e, $3f

Call_02_2762:
	ret po                                                  ; $2762 : $e0

	or e                                                  ; $2763 : $b3
	ld c, $3c                                                  ; $2764 : $0e, $3c
	ret po                                                  ; $2766 : $e0

	or e                                                  ; $2767 : $b3
	dec c                                                  ; $2768 : $0d
	ld d, (hl)                                                  ; $2769 : $56
	adc a, (hl)                                                  ; $276a : $8e
	rra                                                  ; $276b : $1f
	ret po                                                  ; $276c : $e0

	or (hl)                                                  ; $276d : $b6
	jr nz, br_02_27ef                                                  ; $276e : $20, $7f

	ld a, $73                                                  ; $2770 : $3e, $73
	ld h, a                                                  ; $2772 : $67
	ret po                                                  ; $2773 : $e0

	or (hl)                                                  ; $2774 : $b6
	ld l, $13                                                  ; $2775 : $2e, $13
	ret po                                                  ; $2777 : $e0

	or (hl)                                                  ; $2778 : $b6
	pop hl                                                  ; $2779 : $e1
	ld e, l                                                  ; $277a : $5d
	ret po                                                  ; $277b : $e0

	or (hl)                                                  ; $277c : $b6
	sub $c5                                                  ; $277d : $d6, $c5
	di                                                  ; $277f : $f3
	add hl, de                                                  ; $2780 : $19
	ld a, c                                                  ; $2781 : $79
	call po, $60e0                                                  ; $2782 : $e4, $e0, $60
	ret po                                                  ; $2785 : $e0

	or (hl)                                                  ; $2786 : $b6
	.db $dd                                                  ; $2787 : $dd
	ex af, af'                                                  ; $2788 : $08
	jp pe, $b9e0                                                  ; $2789 : $ea, $e0, $b9
	ex (sp), hl                                                  ; $278c : $e3
	jr c, -$20                                                  ; $278d : $38, $e0

	cp c                                                  ; $278f : $b9
	sbc a, (hl)                                                  ; $2790 : $9e
	scf                                                  ; $2791 : $37
	jp pe, $e08f                                                  ; $2792 : $ea, $8f, $e0
	cp c                                                  ; $2795 : $b9
	push de                                                  ; $2796 : $d5
	dec sp                                                  ; $2797 : $3b
	rst $08                                                  ; $2798 : $cf
	ret po                                                  ; $2799 : $e0

	cp c                                                  ; $279a : $b9
	push de                                                  ; $279b : $d5
	dec sp                                                  ; $279c : $3b
	rst $08                                                  ; $279d : $cf
	ld a, $1b                                                  ; $279e : $3e, $1b
	ld l, (hl)                                                  ; $27a0 : $6e
	ld c, (hl)                                                  ; $27a1 : $4e
	ld c, a                                                  ; $27a2 : $4f
	ret po                                                  ; $27a3 : $e0

	cp c                                                  ; $27a4 : $b9
	and $e1                                                  ; $27a5 : $e6, $e1
	ld e, l                                                  ; $27a7 : $5d
	ret po                                                  ; $27a8 : $e0

	cp c                                                  ; $27a9 : $b9
	ret pe                                                  ; $27aa : $e8

	adc a, a                                                  ; $27ab : $8f
	ret po                                                  ; $27ac : $e0

	cp c                                                  ; $27ad : $b9
	ret pe                                                  ; $27ae : $e8

	adc a, a                                                  ; $27af : $8f
	inc c                                                  ; $27b0 : $0c
	ret po                                                  ; $27b1 : $e0

	cp (hl)                                                  ; $27b2 : $be
	ld l, l                                                  ; $27b3 : $6d
	and $cf                                                  ; $27b4 : $e6, $cf
	ret po                                                  ; $27b6 : $e0

	and $e0                                                  ; $27b7 : $e6, $e0
	sbc a, b                                                  ; $27b9 : $98
	ld h, c                                                  ; $27ba : $61
	ret po                                                  ; $27bb : $e0

	and $1e                                                  ; $27bc : $e6, $1e
	ccf                                                  ; $27be : $3f
	ret po                                                  ; $27bf : $e0

	and $2f                                                  ; $27c0 : $e6, $2f
	ret po                                                  ; $27c2 : $e0

	and $20                                                  ; $27c3 : $e6, $20
	and e                                                  ; $27c5 : $a3
	call $e6e0                                                  ; $27c6 : $cd, $e0, $e6
	ld ($e050), hl                                                  ; $27c9 : $22, $50, $e0
	and $22                                                  ; $27cc : $e6, $22
	ld d, (hl)                                                  ; $27ce : $56
	call $e6e0                                                  ; $27cf : $cd, $e0, $e6
	ld ($cd56), hl                                                  ; $27d2 : $22, $56, $cd
	rst $08                                                  ; $27d5 : $cf
	ret po                                                  ; $27d6 : $e0

	and $22                                                  ; $27d7 : $e6, $22
	ld l, b                                                  ; $27d9 : $68
	pop hl                                                  ; $27da : $e1
	ret po                                                  ; $27db : $e0

	and $22                                                  ; $27dc : $e6, $22
	jp pe, $59f3                                                  ; $27de : $ea, $f3, $59
	ld (hl), a                                                  ; $27e1 : $77
	jp pe, $e6e0                                                  ; $27e2 : $ea, $e0, $e6
	jr c, -$64                                                  ; $27e5 : $38, $9c

	di                                                  ; $27e7 : $f3
	ld b, $b3                                                  ; $27e8 : $06, $b3
	rst $08                                                  ; $27ea : $cf
	ret po                                                  ; $27eb : $e0

	and $44                                                  ; $27ec : $e6, $44
	rlca                                                  ; $27ee : $07

br_02_27ef:
	sbc a, a                                                  ; $27ef : $9f
	ret po                                                  ; $27f0 : $e0

	and $44                                                  ; $27f1 : $e6, $44
	rlca                                                  ; $27f3 : $07
	sbc a, a                                                  ; $27f4 : $9f
	ld a, $06                                                  ; $27f5 : $3e, $06
	ld (hl), a                                                  ; $27f7 : $77
	ret po                                                  ; $27f8 : $e0

	and $67                                                  ; $27f9 : $e6, $67
	cpl                                                  ; $27fb : $2f
	ret po                                                  ; $27fc : $e0

	and $67                                                  ; $27fd : $e6, $67
	ld h, $8e                                                  ; $27ff : $26, $8e
	rra                                                  ; $2801 : $1f
	ret po                                                  ; $2802 : $e0

	and $67                                                  ; $2803 : $e6, $67
	ld h, $8e                                                  ; $2805 : $26, $8e
	inc e                                                  ; $2807 : $1c
	ret po                                                  ; $2808 : $e0

	and $67                                                  ; $2809 : $e6, $67
	inc l                                                  ; $280b : $2c
	ret po                                                  ; $280c : $e0

	and $7e                                                  ; $280d : $e6, $7e
	rrca                                                  ; $280f : $0f
	ret po                                                  ; $2810 : $e0

	and $7e                                                  ; $2811 : $e6, $7e
	djnz -$4a                                                  ; $2813 : $10, $b6
	rrca                                                  ; $2815 : $0f
	ret po                                                  ; $2816 : $e0

	and $77                                                  ; $2817 : $e6, $77
	ret po                                                  ; $2819 : $e0

	and $8e                                                  ; $281a : $e6, $8e
	ccf                                                  ; $281c : $3f
	ret po                                                  ; $281d : $e0

	and $9e                                                  ; $281e : $e6, $9e
	and b                                                  ; $2820 : $a0
	adc a, l                                                  ; $2821 : $8d
	ret po                                                  ; $2822 : $e0

	and $be                                                  ; $2823 : $e6, $be
	inc de                                                  ; $2825 : $13
	call z, $e03c                                                  ; $2826 : $cc, $3c, $e0
	and $be                                                  ; $2829 : $e6, $be
	ld b, b                                                  ; $282b : $40
	ret po                                                  ; $282c : $e0

	and $b8                                                  ; $282d : $e6, $b8
	ret po                                                  ; $282f : $e0

br_02_2830:
	and $b8                                                  ; $2830 : $e6, $b8
	ld ($e6e0), a                                                  ; $2832 : $32, $e0, $e6
	cp b                                                  ; $2835 : $b8
	ld l, b                                                  ; $2836 : $68

br_02_2837:
	pop hl                                                  ; $2837 : $e1
	ret po                                                  ; $2838 : $e0

	and $b8                                                  ; $2839 : $e6, $b8
	rst $08                                                  ; $283b : $cf

br_02_283c:
	ret po                                                  ; $283c : $e0

	and $bb                                                  ; $283d : $e6, $bb
	sbc a, (hl)                                                  ; $283f : $9e
	adc a, h                                                  ; $2840 : $8c
	ret po                                                  ; $2841 : $e0

	and $df                                                  ; $2842 : $e6, $df

br_02_2844:
	ret po                                                  ; $2844 : $e0

	and $dd                                                  ; $2845 : $e6, $dd
	dec sp                                                  ; $2847 : $3b

br_02_2848:
	ret po                                                  ; $2848 : $e0

	and $dd                                                  ; $2849 : $e6, $dd
	dec sp                                                  ; $284b : $3b

br_02_284c:
	ld b, a                                                  ; $284c : $47
	jp pe, $e6e0                                                  ; $284d : $ea, $e0, $e6
	jp pe, Jump_02_1e1f                                                  ; $2850 : $ea, $1f, $1e
	rst $08                                                  ; $2853 : $cf
	ld a, $4e                                                  ; $2854 : $3e, $4e
	ld h, a                                                  ; $2856 : $67
	or e                                                  ; $2857 : $b3
	ld (bc), a                                                  ; $2858 : $02
	jp pe, $7a1f                                                  ; $2859 : $ea, $1f, $7a

br_02_285c:
	call p, $e010                                                  ; $285c : $f4, $10, $e0
	ld l, b                                                  ; $285f : $68

br_02_2860:
	dec a                                                  ; $2860 : $3d
	djnz -$20                                                  ; $2861 : $10, $e0
	ld (hl), e                                                  ; $2863 : $73
	djnz br_02_2883                                                  ; $2864 : $10, $1d
	and $cf                                                  ; $2866 : $e6, $cf
	djnz $2e                                                  ; $2868 : $10, $2e
	ld b, (hl)                                                  ; $286a : $46
	and $e4                                                  ; $286b : $e6, $e4
	djnz br_02_28db                                                  ; $286d : $10, $6c
	ret                                                  ; $286f : $c9


	adc a, a                                                  ; $2870 : $8f
	djnz br_02_28e4                                                  ; $2871 : $10, $71
	ld l, (hl)                                                  ; $2873 : $6e
	ld l, (hl)                                                  ; $2874 : $6e
	ld c, a                                                  ; $2875 : $4f

br_02_2876:
	djnz br_02_28e9                                                  ; $2876 : $10, $71

br_02_2878:
	and $70                                                  ; $2878 : $e6, $70
	out ($2f), a                                                  ; $287a : $d3, $2f
	djnz br_02_28ef                                                  ; $287c : $10, $71

br_02_287e:
	and $dd                                                  ; $287e : $e6, $dd

br_02_2880:
	rrca                                                  ; $2880 : $0f
	djnz br_02_28f6                                                  ; $2881 : $10, $73

br_02_2883:
	add a, d                                                  ; $2883 : $82
	dec bc                                                  ; $2884 : $0b

br_02_2885:
	djnz $76                                                  ; $2885 : $10, $76
	and l                                                  ; $2887 : $a5

br_02_2888:
	rst $08                                                  ; $2888 : $cf
	djnz br_02_2902                                                  ; $2889 : $10, $77
	djnz br_02_2904                                                  ; $288b : $10, $77
	rst $08                                                  ; $288d : $cf
	djnz br_02_2909                                                  ; $288e : $10, $79
	or (hl)                                                  ; $2890 : $b6
	inc a                                                  ; $2891 : $3c
	djnz br_02_2878                                                  ; $2892 : $10, $e4
	ret po                                                  ; $2894 : $e0

	sub d                                                  ; $2895 : $92
	ld h, b                                                  ; $2896 : $60

br_02_2897:
	djnz -$1c                                                  ; $2897 : $10, $e4
	ccf                                                  ; $2899 : $3f
	djnz br_02_2880                                                  ; $289a : $10, $e4
	scf                                                  ; $289c : $37
	ret p                                                  ; $289d : $f0

br_02_289e:
	rst $08                                                  ; $289e : $cf
	djnz br_02_2885                                                  ; $289f : $10, $e4
	xor a                                                  ; $28a1 : $af
	ld ($760e), a                                                  ; $28a2 : $32, $0e, $76
	cpl                                                  ; $28a5 : $2f
	djnz -$1c                                                  ; $28a6 : $10, $e4
	xor h                                                  ; $28a8 : $ac
	djnz -$71                                                  ; $28a9 : $10, $8f
	djnz br_02_283c                                                  ; $28ab : $10, $8f
	dec c                                                  ; $28ad : $0d

br_02_28ae:
	djnz br_02_2830                                                  ; $28ae : $10, $80
	ld h, $08                                                  ; $28b0 : $26, $08
	djnz -$80                                                  ; $28b2 : $10, $80
	ld a, a                                                  ; $28b4 : $7f
	djnz br_02_2837                                                  ; $28b5 : $10, $80

br_02_28b7:
	ld a, h                                                  ; $28b7 : $7c
	djnz -$80                                                  ; $28b8 : $10, $80

br_02_28ba:
	cp (hl)                                                  ; $28ba : $be
	xor a                                                  ; $28bb : $af
	djnz br_02_284c                                                  ; $28bc : $10, $8e
	inc bc                                                  ; $28be : $03
	cp e                                                  ; $28bf : $bb
	rrca                                                  ; $28c0 : $0f
	djnz br_02_2844                                                  ; $28c1 : $10, $81
	scf                                                  ; $28c3 : $37
	djnz br_02_2848                                                  ; $28c4 : $10, $82
	ld (hl), e                                                  ; $28c6 : $73

br_02_28c7:
	djnz -$78                                                  ; $28c7 : $10, $88
	sbc a, l                                                  ; $28c9 : $9d
	djnz -$77                                                  ; $28ca : $10, $89

br_02_28cc:
	ccf                                                  ; $28cc : $3f
	djnz br_02_285c                                                  ; $28cd : $10, $8d

br_02_28cf:
	sbc a, b                                                  ; $28cf : $98

br_02_28d0:
	djnz br_02_2860                                                  ; $28d0 : $10, $8e
	xor c                                                  ; $28d2 : $a9
	adc a, a                                                  ; $28d3 : $8f
	djnz br_02_2876                                                  ; $28d4 : $10, $a0
	ld d, $d9                                                  ; $28d6 : $16, $d9
	cp a                                                  ; $28d8 : $bf
	djnz br_02_287e                                                  ; $28d9 : $10, $a3

br_02_28db:
	djnz br_02_2880                                                  ; $28db : $10, $a3

br_02_28dd:
	di                                                  ; $28dd : $f3
	add hl, de                                                  ; $28de : $19
	cpl                                                  ; $28df : $2f
	djnz br_02_2888                                                  ; $28e0 : $10, $a6
	ld (hl), a                                                  ; $28e2 : $77
	dec bc                                                  ; $28e3 : $0b

br_02_28e4:
	jp pe, $a610                                                  ; $28e4 : $ea, $10, $a6
	ret nc                                                  ; $28e7 : $d0

	halt                                                  ; $28e8 : $76

br_02_28e9:
	adc a, $4f                                                  ; $28e9 : $ce, $4f
	djnz br_02_2897                                                  ; $28eb : $10, $aa
	ld l, b                                                  ; $28ed : $68
	pop hl                                                  ; $28ee : $e1

br_02_28ef:
	djnz br_02_289e                                                  ; $28ef : $10, $ad
	ld b, $8f                                                  ; $28f1 : $06, $8f
	ld sp, $e399                                                  ; $28f3 : $31, $99, $e3

br_02_28f6:
	djnz br_02_28b7                                                  ; $28f6 : $10, $bf
	djnz -$50                                                  ; $28f8 : $10, $b0
	djnz -$31                                                  ; $28fa : $10, $cf
	djnz br_02_28ae                                                  ; $28fc : $10, $b0

br_02_28fe:
	call po, Call_02_1037                                                  ; $28fe : $e4, $37, $10
	cp (hl)                                                  ; $2901 : $be

br_02_2902:
	add hl, bc                                                  ; $2902 : $09

br_02_2903:
	ld e, (hl)                                                  ; $2903 : $5e

br_02_2904:
	and d                                                  ; $2904 : $a2
	or b                                                  ; $2905 : $b0
	out ($10), a                                                  ; $2906 : $d3, $10
	cp (hl)                                                  ; $2908 : $be

br_02_2909:
	add hl, bc                                                  ; $2909 : $09

br_02_290a:
	ld e, (hl)                                                  ; $290a : $5e
	and d                                                  ; $290b : $a2
	or b                                                  ; $290c : $b0
	out ($cf), a                                                  ; $290d : $d3, $cf

br_02_290f:
	djnz br_02_28cf                                                  ; $290f : $10, $be
	add hl, bc                                                  ; $2911 : $09
	adc a, a                                                  ; $2912 : $8f

br_02_2913:
	djnz br_02_28c7                                                  ; $2913 : $10, $b2
	ret po                                                  ; $2915 : $e0

br_02_2916:
	sub b                                                  ; $2916 : $90
	or d                                                  ; $2917 : $b2
	djnz br_02_28cc                                                  ; $2918 : $10, $b2
	ld h, b                                                  ; $291a : $60
	rra                                                  ; $291b : $1f
	djnz br_02_28d0                                                  ; $291c : $10, $b2
	ld h, b                                                  ; $291e : $60
	rra                                                  ; $291f : $1f

br_02_2920:
	ld a, $4e                                                  ; $2920 : $3e, $4e
	ld l, h                                                  ; $2922 : $6c
	rla                                                  ; $2923 : $17

br_02_2924:
	ccf                                                  ; $2924 : $3f
	djnz br_02_28dd                                                  ; $2925 : $10, $b6
	ret po                                                  ; $2927 : $e0

	ret po                                                  ; $2928 : $e0

	jr nc, br_02_28ba                                                  ; $2929 : $30, $8f

br_02_292b:
	djnz br_02_28e4                                                  ; $292b : $10, $b7
	adc a, $00                                                  ; $292d : $ce, $00
	cpl                                                  ; $292f : $2f

br_02_2930:
	djnz -$48                                                  ; $2930 : $10, $b8
	dec c                                                  ; $2932 : $0d
	ld l, c                                                  ; $2933 : $69
	adc a, h                                                  ; $2934 : $8c
	djnz br_02_28ef                                                  ; $2935 : $10, $b8
	ld a, $16                                                  ; $2937 : $3e, $16
	ccf                                                  ; $2939 : $3f
	djnz -$47                                                  ; $293a : $10, $b9
	halt                                                  ; $293c : $76
	add a, b                                                  ; $293d : $80
	djnz -$47                                                  ; $293e : $10, $b9
	halt                                                  ; $2940 : $76
	add a, b                                                  ; $2941 : $80
	rst $08                                                  ; $2942 : $cf
	djnz br_02_28fe                                                  ; $2943 : $10, $b9
	out ($83), a                                                  ; $2945 : $d3, $83
	djnz br_02_2903                                                  ; $2947 : $10, $ba
	dec c                                                  ; $2949 : $0d
	ld d, (hl)                                                  ; $294a : $56
	ex af, af'                                                  ; $294b : $08
	rst $08                                                  ; $294c : $cf

br_02_294d:
	djnz br_02_290a                                                  ; $294d : $10, $bb
	ld h, b                                                  ; $294f : $60
	pop hl                                                  ; $2950 : $e1
	inc a                                                  ; $2951 : $3c
	djnz br_02_290f                                                  ; $2952 : $10, $bb
	ld h, e                                                  ; $2954 : $63
	cpl                                                  ; $2955 : $2f
	djnz br_02_2913                                                  ; $2956 : $10, $bb
	sbc a, l                                                  ; $2958 : $9d
	djnz br_02_2916                                                  ; $2959 : $10, $bb
	jp pe, $bc10                                                  ; $295b : $ea, $10, $bc
	djnz -$43                                                  ; $295e : $10, $bd
	dec sp                                                  ; $2960 : $3b
	djnz br_02_2920                                                  ; $2961 : $10, $bd
	ld h, e                                                  ; $2963 : $63
	cp a                                                  ; $2964 : $bf
	djnz br_02_2924                                                  ; $2965 : $10, $bd

br_02_2967:
	sbc a, (hl)                                                  ; $2967 : $9e
	dec de                                                  ; $2968 : $1b

br_02_2969:
	ld a, (bc)                                                  ; $2969 : $0a
	ld d, e                                                  ; $296a : $53
	cp a                                                  ; $296b : $bf
	djnz br_02_292b                                                  ; $296c : $10, $bd
	sbc a, c                                                  ; $296e : $99
	adc a, a                                                  ; $296f : $8f
	djnz br_02_2930                                                  ; $2970 : $10, $be
	ld (hl), e                                                  ; $2972 : $73
	cpl                                                  ; $2973 : $2f
	djnz -$40                                                  ; $2974 : $10, $c0
	ret po                                                  ; $2976 : $e0

	ld (hl), b                                                  ; $2977 : $70
	add a, c                                                  ; $2978 : $81
	rrca                                                  ; $2979 : $0f
	djnz -$36                                                  ; $297a : $10, $ca
	ld h, b                                                  ; $297c : $60
	adc a, a                                                  ; $297d : $8f
	djnz br_02_294d                                                  ; $297e : $10, $cd
	ccf                                                  ; $2980 : $3f
	inc a                                                  ; $2981 : $3c
	jp pe, $3ecd                                                  ; $2982 : $ea, $cd, $3e
	ld c, a                                                  ; $2985 : $4f
	djnz br_02_2967                                                  ; $2986 : $10, $df

br_02_2988:
	djnz -$30                                                  ; $2988 : $10, $d0
	ld a, c                                                  ; $298a : $79
	add a, (hl)                                                  ; $298b : $86
	rrca                                                  ; $298c : $0f
	djnz -$2d                                                  ; $298d : $10, $d3
	pop hl                                                  ; $298f : $e1
	sbc a, e                                                  ; $2990 : $9b

br_02_2991:
	jp pe, $d510                                                  ; $2991 : $ea, $10, $d5
	ld ($7fb0), a                                                  ; $2994 : $32, $b0, $7f
	djnz -$1a                                                  ; $2997 : $10, $e6
	djnz br_02_2969                                                  ; $2999 : $10, $ce
	ld l, h                                                  ; $299b : $6c
	djnz -$1a                                                  ; $299c : $10, $e6
	pop hl                                                  ; $299e : $e1
	ld e, l                                                  ; $299f : $5d
	djnz br_02_2988                                                  ; $29a0 : $10, $e6
	jp Jump_02_102f                                                  ; $29a2 : $c3, $2f, $10


	and $c3                                                  ; $29a5 : $e6, $c3
	rst $08                                                  ; $29a7 : $cf
	djnz br_02_2991                                                  ; $29a8 : $10, $e7
	dec sp                                                  ; $29aa : $3b
	adc a, h                                                  ; $29ab : $8c
	inc de                                                  ; $29ac : $13
	ret po                                                  ; $29ad : $e0

	and $13                                                  ; $29ae : $e6, $13
	inc hl                                                  ; $29b0 : $23
	cpl                                                  ; $29b1 : $2f
	inc de                                                  ; $29b2 : $13
	ld h, a                                                  ; $29b3 : $67
	ld l, b                                                  ; $29b4 : $68
	pop hl                                                  ; $29b5 : $e1
	inc de                                                  ; $29b6 : $13
	ld (hl), e                                                  ; $29b7 : $73
	ret po                                                  ; $29b8 : $e0

	or b                                                  ; $29b9 : $b0
	out ($13), a                                                  ; $29ba : $d3, $13
	ld (hl), e                                                  ; $29bc : $73
	ret po                                                  ; $29bd : $e0

	or b                                                  ; $29be : $b0
	out ($2f), a                                                  ; $29bf : $d3, $2f
	inc de                                                  ; $29c1 : $13
	ld (hl), e                                                  ; $29c2 : $73
	ret po                                                  ; $29c3 : $e0

	or b                                                  ; $29c4 : $b0
	sub $98                                                  ; $29c5 : $d6, $98
	inc de                                                  ; $29c7 : $13
	ld (hl), a                                                  ; $29c8 : $77
	inc de                                                  ; $29c9 : $13
	ld (hl), a                                                  ; $29ca : $77
	rst $08                                                  ; $29cb : $cf
	inc de                                                  ; $29cc : $13
	ld a, h                                                  ; $29cd : $7c
	ld l, (hl)                                                  ; $29ce : $6e
	ld l, h                                                  ; $29cf : $6c
	inc de                                                  ; $29d0 : $13

br_02_29d1:
	adc a, h                                                  ; $29d1 : $8c
	and $cf                                                  ; $29d2 : $e6, $cf
	inc de                                                  ; $29d4 : $13
	adc a, l                                                  ; $29d5 : $8d
	dec sp                                                  ; $29d6 : $3b
	inc de                                                  ; $29d7 : $13
	adc a, l                                                  ; $29d8 : $8d
	ld l, (hl)                                                  ; $29d9 : $6e
	dec de                                                  ; $29da : $1b
	ld (bc), a                                                  ; $29db : $02
	ccf                                                  ; $29dc : $3f
	inc de                                                  ; $29dd : $13
	adc a, l                                                  ; $29de : $8d
	ld l, (hl)                                                  ; $29df : $6e
	ld b, e                                                  ; $29e0 : $43
	out ($bf), a                                                  ; $29e1 : $d3, $bf
	inc de                                                  ; $29e3 : $13
	adc a, l                                                  ; $29e4 : $8d
	or b                                                  ; $29e5 : $b0
	ld a, a                                                  ; $29e6 : $7f
	inc de                                                  ; $29e7 : $13
	adc a, l                                                  ; $29e8 : $8d
	or b                                                  ; $29e9 : $b0
	ld a, a                                                  ; $29ea : $7f
	jr nc, br_02_29d1                                                  ; $29eb : $30, $e4

	dec sp                                                  ; $29ed : $3b
	ld h, c                                                  ; $29ee : $61
	rrca                                                  ; $29ef : $0f
	inc de                                                  ; $29f0 : $13
	adc a, l                                                  ; $29f1 : $8d
	rst $08                                                  ; $29f2 : $cf
	inc de                                                  ; $29f3 : $13
	adc a, l                                                  ; $29f4 : $8d
	and $be                                                  ; $29f5 : $e6, $be
	xor a                                                  ; $29f7 : $af
	inc de                                                  ; $29f8 : $13
	or e                                                  ; $29f9 : $b3
	ret po                                                  ; $29fa : $e0

	scf                                                  ; $29fb : $37
	ld a, (hl)                                                  ; $29fc : $7e
	ld l, (hl)                                                  ; $29fd : $6e
	ld c, a                                                  ; $29fe : $4f
	inc de                                                  ; $29ff : $13
	or e                                                  ; $2a00 : $b3
	ret po                                                  ; $2a01 : $e0

	cp (hl)                                                  ; $2a02 : $be
	ld l, (hl)                                                  ; $2a03 : $6e
	ld c, a                                                  ; $2a04 : $4f
	inc de                                                  ; $2a05 : $13
	cp l                                                  ; $2a06 : $bd
	ld b, $8f                                                  ; $2a07 : $06, $8f
	dec d                                                  ; $2a09 : $15
	ld (bc), a                                                  ; $2a0a : $02
	dec d                                                  ; $2a0b : $15
	ld b, $8f                                                  ; $2a0c : $06, $8f
	dec d                                                  ; $2a0e : $15
	ld b, $be                                                  ; $2a0f : $06, $be
	ld b, b                                                  ; $2a11 : $40
	adc a, a                                                  ; $2a12 : $8f
	dec d                                                  ; $2a13 : $15
	rlca                                                  ; $2a14 : $07
	ld (hl), e                                                  ; $2a15 : $73
	adc a, (hl)                                                  ; $2a16 : $8e
	inc de                                                  ; $2a17 : $13
	cp a                                                  ; $2a18 : $bf
	dec d                                                  ; $2a19 : $15
	ld c, $4e                                                  ; $2a1a : $0e, $4e
	nop                                                  ; $2a1c : $00
	ld a, a                                                  ; $2a1d : $7f
	dec d                                                  ; $2a1e : $15
	ld c, $4e                                                  ; $2a1f : $0e, $4e
	inc bc                                                  ; $2a21 : $03
	cp h                                                  ; $2a22 : $bc
	dec d                                                  ; $2a23 : $15
	ld c, $49                                                  ; $2a24 : $0e, $49
	ld l, h                                                  ; $2a26 : $6c
	dec d                                                  ; $2a27 : $15
	ld c, $4a                                                  ; $2a28 : $0e, $4a
	ld l, c                                                  ; $2a2a : $69
	adc a, a                                                  ; $2a2b : $8f
	dec d                                                  ; $2a2c : $15
	ld c, $4a                                                  ; $2a2d : $0e, $4a
	ld (hl), b                                                  ; $2a2f : $70
	ld l, b                                                  ; $2a30 : $68
	dec d                                                  ; $2a31 : $15
	ex af, af'                                                  ; $2a32 : $08
	inc de                                                  ; $2a33 : $13
	ld (hl), a                                                  ; $2a34 : $77
	sbc a, e                                                  ; $2a35 : $9b
	dec d                                                  ; $2a36 : $15
	ex af, af'                                                  ; $2a37 : $08
	pop hl                                                  ; $2a38 : $e1
	ccf                                                  ; $2a39 : $3f
	dec d                                                  ; $2a3a : $15
	ex af, af'                                                  ; $2a3b : $08
	pop hl                                                  ; $2a3c : $e1
	ld ($0815), a                                                  ; $2a3d : $32, $15, $08
	pop hl                                                  ; $2a40 : $e1
	inc a                                                  ; $2a41 : $3c
	dec d                                                  ; $2a42 : $15
	ex af, af'                                                  ; $2a43 : $08
	pop hl                                                  ; $2a44 : $e1
	ld l, b                                                  ; $2a45 : $68
	pop hl                                                  ; $2a46 : $e1
	dec d                                                  ; $2a47 : $15
	ld a, (bc)                                                  ; $2a48 : $0a
	scf                                                  ; $2a49 : $37
	dec d                                                  ; $2a4a : $15
	dec bc                                                  ; $2a4b : $0b
	ld bc, $bfd3                                                  ; $2a4c : $01, $d3, $bf
	dec d                                                  ; $2a4f : $15
	dec bc                                                  ; $2a50 : $0b
	ld bc, $bcd3                                                  ; $2a51 : $01, $d3, $bc
	dec d                                                  ; $2a54 : $15
	dec bc                                                  ; $2a55 : $0b
	pop hl                                                  ; $2a56 : $e1

br_02_2a57:
	ccf                                                  ; $2a57 : $3f
	dec d                                                  ; $2a58 : $15
	dec bc                                                  ; $2a59 : $0b
	pop hl                                                  ; $2a5a : $e1
	ld ($0b15), a                                                  ; $2a5b : $32, $15, $0b
	pop hl                                                  ; $2a5e : $e1
	inc a                                                  ; $2a5f : $3c
	dec d                                                  ; $2a60 : $15
	dec bc                                                  ; $2a61 : $0b
	ld (hl), e                                                  ; $2a62 : $73
	rst $08                                                  ; $2a63 : $cf
	ld ($e80b), a                                                  ; $2a64 : $32, $0b, $e8
	ld l, b                                                  ; $2a67 : $68
	dec d                                                  ; $2a68 : $15
	dec bc                                                  ; $2a69 : $0b
	ld (hl), e                                                  ; $2a6a : $73
	rst $08                                                  ; $2a6b : $cf
	ld ($3e3f), a                                                  ; $2a6c : $32, $3f, $3e
	djnz br_02_2a57                                                  ; $2a6f : $10, $e6
	ld (hl), a                                                  ; $2a71 : $77
	ccf                                                  ; $2a72 : $3f
	dec d                                                  ; $2a73 : $15
	dec bc                                                  ; $2a74 : $0b
	ld (hl), e                                                  ; $2a75 : $73
	rst $08                                                  ; $2a76 : $cf
	scf                                                  ; $2a77 : $37
	ld l, b                                                  ; $2a78 : $68
	ld l, $03                                                  ; $2a79 : $2e, $03
	cp (hl)                                                  ; $2a7b : $be
	dec d                                                  ; $2a7c : $15
	dec d                                                  ; $2a7d : $15
	dec bc                                                  ; $2a7e : $0b
	halt                                                  ; $2a7f : $76
	ccf                                                  ; $2a80 : $3f
	dec d                                                  ; $2a81 : $15
	dec bc                                                  ; $2a82 : $0b
	ld a, c                                                  ; $2a83 : $79
	.db $dd                                                  ; $2a84 : $dd
	ccf                                                  ; $2a85 : $3f
	inc c                                                  ; $2a86 : $0c
	dec d                                                  ; $2a87 : $15
	dec bc                                                  ; $2a88 : $0b
	out ($cf), a                                                  ; $2a89 : $d3, $cf
	dec d                                                  ; $2a8b : $15
	ld sp, $15e3                                                  ; $2a8c : $31, $e3, $15
	ld sp, $e4e3                                                  ; $2a8f : $31, $e3, $e4
	dec c                                                  ; $2a92 : $0d

br_02_2a93:
	ccf                                                  ; $2a93 : $3f
	dec d                                                  ; $2a94 : $15
	inc sp                                                  ; $2a95 : $33
	jp Jump_02_3315                                                  ; $2a96 : $c3, $15, $33


	ret nc                                                  ; $2a99 : $d0

	ld e, a                                                  ; $2a9a : $5f
	dec d                                                  ; $2a9b : $15
	ld a, $46                                                  ; $2a9c : $3e, $46
	djnz br_02_2b1f                                                  ; $2a9e : $10, $7f
	dec d                                                  ; $2aa0 : $15
	ld a, $46                                                  ; $2aa1 : $3e, $46
	djnz br_02_2b21                                                  ; $2aa3 : $10, $7c
	dec d                                                  ; $2aa5 : $15
	ld a, $46                                                  ; $2aa6 : $3e, $46
	call $afbe                                                  ; $2aa8 : $cd, $be, $af
	dec d                                                  ; $2aab : $15
	inc a                                                  ; $2aac : $3c
	ld a, (bc)                                                  ; $2aad : $0a
	jr nc, br_02_2a93                                                  ; $2aae : $30, $e3

	ccf                                                  ; $2ab0 : $3f
	dec d                                                  ; $2ab1 : $15
	inc a                                                  ; $2ab2 : $3c
	rst $08                                                  ; $2ab3 : $cf
	dec d                                                  ; $2ab4 : $15
	ld a, $8e                                                  ; $2ab5 : $3e, $8e
	nop                                                  ; $2ab7 : $00
	ld de, $150f                                                  ; $2ab8 : $11, $0f, $15
	ld a, $86                                                  ; $2abb : $3e, $86
	adc a, (hl)                                                  ; $2abd : $8e
	rra                                                  ; $2abe : $1f
	dec d                                                  ; $2abf : $15
	ld h, c                                                  ; $2ac0 : $61
	ld (hl), e                                                  ; $2ac1 : $73
	dec d                                                  ; $2ac2 : $15
	ld h, e                                                  ; $2ac3 : $63
	ld c, a                                                  ; $2ac4 : $4f
	dec d                                                  ; $2ac5 : $15
	ld h, e                                                  ; $2ac6 : $63
	ld c, a                                                  ; $2ac7 : $4f
	ld a, $2e                                                  ; $2ac8 : $3e, $2e
	ld l, h                                                  ; $2aca : $6c
	sub $13                                                  ; $2acb : $d6, $13
	dec d                                                  ; $2acd : $15
	ld h, a                                                  ; $2ace : $67
	dec hl                                                  ; $2acf : $2b
	jr c, $15                                                  ; $2ad0 : $38, $15

	ld h, a                                                  ; $2ad2 : $67
	ccf                                                  ; $2ad3 : $3f
	dec d                                                  ; $2ad4 : $15
	ld l, b                                                  ; $2ad5 : $68
	inc a                                                  ; $2ad6 : $3c
	ccf                                                  ; $2ad7 : $3f
	dec d                                                  ; $2ad8 : $15
	ld l, h                                                  ; $2ad9 : $6c
	ld e, c                                                  ; $2ada : $59
	ld a, (hl)                                                  ; $2adb : $7e
	ld c, a                                                  ; $2adc : $4f
	dec d                                                  ; $2add : $15
	ld a, c                                                  ; $2ade : $79
	or (hl)                                                  ; $2adf : $b6
	add a, e                                                  ; $2ae0 : $83
	dec d                                                  ; $2ae1 : $15
	ld a, c                                                  ; $2ae2 : $79
	cp c                                                  ; $2ae3 : $b9
	and l                                                  ; $2ae4 : $a5
	jp pe, Jump_02_1577                                                  ; $2ae5 : $ea, $77, $15
	sub c                                                  ; $2ae8 : $91
	sub a                                                  ; $2ae9 : $97
	dec c                                                  ; $2aea : $0d
	ccf                                                  ; $2aeb : $3f
	dec d                                                  ; $2aec : $15
	or (hl)                                                  ; $2aed : $b6
	call $8c60                                                  ; $2aee : $cd, $60, $8c
	dec d                                                  ; $2af1 : $15
	or (hl)                                                  ; $2af2 : $b6
	call Call_02_0ce4                                                  ; $2af3 : $cd, $e4, $0c
	dec d                                                  ; $2af6 : $15
	or (hl)                                                  ; $2af7 : $b6
	call $539a                                                  ; $2af8 : $cd, $9a, $53
	cp a                                                  ; $2afb : $bf
	dec d                                                  ; $2afc : $15
	or (hl)                                                  ; $2afd : $b6
	call $539a                                                  ; $2afe : $cd, $9a, $53
	cp a                                                  ; $2b01 : $bf
	ld sp, $e697                                                  ; $2b02 : $31, $97, $e6
	call po, $e6e0                                                  ; $2b05 : $e4, $e0, $e6
	rst $08                                                  ; $2b08 : $cf
	dec d                                                  ; $2b09 : $15
	cp c                                                  ; $2b0a : $b9
	call po, $9e9c                                                  ; $2b0b : $e4, $9c, $9e
	ld b, e                                                  ; $2b0e : $43
	dec d                                                  ; $2b0f : $15
	and $b1                                                  ; $2b10 : $e6, $b1
	ld d, (hl)                                                  ; $2b12 : $56
	ld (hl), a                                                  ; $2b13 : $77
	ld d, $0f                                                  ; $2b14 : $16, $0f
	ld d, $b1                                                  ; $2b16 : $16, $b1
	ld (hl), e                                                  ; $2b18 : $73
	ld d, $b1                                                  ; $2b19 : $16, $b1
	and $6d                                                  ; $2b1b : $e6, $6d
	ld d, $b1                                                  ; $2b1d : $16, $b1

br_02_2b1f:
	and $6d                                                  ; $2b1f : $e6, $6d

br_02_2b21:
	rst $08                                                  ; $2b21 : $cf
	ld d, $b1                                                  ; $2b22 : $16, $b1
	and $70                                                  ; $2b24 : $e6, $70
	sub $98                                                  ; $2b26 : $d6, $98
	ld d, $b1                                                  ; $2b28 : $16, $b1
	and $e4                                                  ; $2b2a : $e6, $e4
	add a, b                                                  ; $2b2c : $80
	rst $20                                                  ; $2b2d : $e7
	ld l, (hl)                                                  ; $2b2e : $6e
	djnz -$2d                                                  ; $2b2f : $10, $d3
	ld d, $d6                                                  ; $2b31 : $16, $d6
	inc a                                                  ; $2b33 : $3c
	ld d, $d6                                                  ; $2b34 : $16, $d6
	ex de, hl                                                  ; $2b36 : $eb
	jr c, br_02_2b4f                                                  ; $2b37 : $38, $16

	sub $eb                                                  ; $2b39 : $d6, $eb
	jr c, -$31                                                  ; $2b3b : $38, $cf

	ld d, $de                                                  ; $2b3d : $16, $de
	xor a                                                  ; $2b3f : $af
	inc c                                                  ; $2b40 : $0c
	ld d, $e7                                                  ; $2b41 : $16, $e7
	ld h, a                                                  ; $2b43 : $67
	di                                                  ; $2b44 : $f3
	ret pe                                                  ; $2b45 : $e8

	dec bc                                                  ; $2b46 : $0b
	ld d, $e7                                                  ; $2b47 : $16, $e7
	ld h, a                                                  ; $2b49 : $67
	ld l, (hl)                                                  ; $2b4a : $6e
	or b                                                  ; $2b4b : $b0
	sub $98                                                  ; $2b4c : $d6, $98
	rla                                                  ; $2b4e : $17

br_02_2b4f:
	dec bc                                                  ; $2b4f : $0b
	ex (sp), hl                                                  ; $2b50 : $e3
	rla                                                  ; $2b51 : $17
	dec bc                                                  ; $2b52 : $0b
	call po, $df98                                                  ; $2b53 : $e4, $98, $df
	rla                                                  ; $2b56 : $17
	inc c                                                  ; $2b57 : $0c
	rst $08                                                  ; $2b58 : $cf
	rla                                                  ; $2b59 : $17
	inc c                                                  ; $2b5a : $0c
	add a, $10                                                  ; $2b5b : $c6, $10
	ld a, a                                                  ; $2b5d : $7f
	rla                                                  ; $2b5e : $17
	ld c, $62                                                  ; $2b5f : $0e, $62
	dec a                                                  ; $2b61 : $3d
	out ($17), a                                                  ; $2b62 : $d3, $17
	ld h, h                                                  ; $2b64 : $64
	ld c, a                                                  ; $2b65 : $4f
	rla                                                  ; $2b66 : $17
	ld l, (hl)                                                  ; $2b67 : $6e
	ld b, b                                                  ; $2b68 : $40
	out ($17), a                                                  ; $2b69 : $d3, $17
	ld l, d                                                  ; $2b6b : $6a
	rla                                                  ; $2b6c : $17
	ld l, d                                                  ; $2b6d : $6a
	and e                                                  ; $2b6e : $a3
	cp a                                                  ; $2b6f : $bf
	rla                                                  ; $2b70 : $17
	sub c                                                  ; $2b71 : $91
	ex (sp), hl                                                  ; $2b72 : $e3
	rla                                                  ; $2b73 : $17
	sbc a, b                                                  ; $2b74 : $98
	ld l, b                                                  ; $2b75 : $68
	pop hl                                                  ; $2b76 : $e1
	rla                                                  ; $2b77 : $17
	sbc a, h                                                  ; $2b78 : $9c
	ld ($9c17), a                                                  ; $2b79 : $32, $17, $9c
	inc a                                                  ; $2b7c : $3c
	rst $18                                                  ; $2b7d : $df
	rla                                                  ; $2b7e : $17
	sbc a, (hl)                                                  ; $2b7f : $9e
	ld h, d                                                  ; $2b80 : $62
	rla                                                  ; $2b81 : $17
	sbc a, (hl)                                                  ; $2b82 : $9e
	ld h, d                                                  ; $2b83 : $62
	rst $08                                                  ; $2b84 : $cf
	add hl, sp                                                  ; $2b85 : $39
	ld c, a                                                  ; $2b86 : $4f
	ld a, $43                                                  ; $2b87 : $3e, $43
	pop hl                                                  ; $2b89 : $e1
	scf                                                  ; $2b8a : $37
	ld (hl), b                                                  ; $2b8b : $70
	adc a, a                                                  ; $2b8c : $8f
	rla                                                  ; $2b8d : $17
	and $8e                                                  ; $2b8e : $e6, $8e
	xor a                                                  ; $2b90 : $af
	rla                                                  ; $2b91 : $17
	and $d1                                                  ; $2b92 : $e6, $d1
	ld e, a                                                  ; $2b94 : $5f
	add hl, de                                                  ; $2b95 : $19
	rlca                                                  ; $2b96 : $07
	add hl, de                                                  ; $2b97 : $19
	inc c                                                  ; $2b98 : $0c
	rst $18                                                  ; $2b99 : $df
	add hl, de                                                  ; $2b9a : $19
	add hl, de                                                  ; $2b9b : $19
	rrca                                                  ; $2b9c : $0f
	add hl, de                                                  ; $2b9d : $19
	cpl                                                  ; $2b9e : $2f
	add hl, de                                                  ; $2b9f : $19
	ld b, h                                                  ; $2ba0 : $44
	inc sp                                                  ; $2ba1 : $33
	add hl, de                                                  ; $2ba2 : $19
	ld l, b                                                  ; $2ba3 : $68
	add hl, de                                                  ; $2ba4 : $19
	ld (hl), b                                                  ; $2ba5 : $70
	add hl, de                                                  ; $2ba6 : $19
	ld (hl), d                                                  ; $2ba7 : $72
	add hl, de                                                  ; $2ba8 : $19
	ld (hl), d                                                  ; $2ba9 : $72
	di                                                  ; $2baa : $f3
	ret po                                                  ; $2bab : $e0

	ld a, c                                                  ; $2bac : $79
	sub d                                                  ; $2bad : $92
	ld ($7219), a                                                  ; $2bae : $32, $19, $72
	xor $e0                                                  ; $2bb1 : $ee, $e0
	ld a, c                                                  ; $2bb3 : $79
	sub d                                                  ; $2bb4 : $92
	ld ($7719), a                                                  ; $2bb5 : $32, $19, $77
	ld sp, $19dc                                                  ; $2bb8 : $31, $dc, $19
	ld a, c                                                  ; $2bbb : $79
	add a, (hl)                                                  ; $2bbc : $86
	rlca                                                  ; $2bbd : $07
	add hl, de                                                  ; $2bbe : $19
	ld a, c                                                  ; $2bbf : $79
	add a, (hl)                                                  ; $2bc0 : $86
	inc a                                                  ; $2bc1 : $3c
	add hl, de                                                  ; $2bc2 : $19
	ld a, c                                                  ; $2bc3 : $79
	add a, (hl)                                                  ; $2bc4 : $86
	call Call_02_19cf                                                  ; $2bc5 : $cd, $cf, $19
	ld a, c                                                  ; $2bc8 : $79
	adc a, (hl)                                                  ; $2bc9 : $8e
	xor a                                                  ; $2bca : $af
	add hl, de                                                  ; $2bcb : $19
	ld a, c                                                  ; $2bcc : $79
	or b                                                  ; $2bcd : $b0
	add hl, hl                                                  ; $2bce : $29
	add hl, de                                                  ; $2bcf : $19
	ld a, c                                                  ; $2bd0 : $79
	or b                                                  ; $2bd1 : $b0
	add hl, hl                                                  ; $2bd2 : $29
	di                                                  ; $2bd3 : $f3
	or (hl)                                                  ; $2bd4 : $b6
	rst $20                                                  ; $2bd5 : $e7
	dec sp                                                  ; $2bd6 : $3b
	add hl, de                                                  ; $2bd7 : $19
	ld a, c                                                  ; $2bd8 : $79
	or b                                                  ; $2bd9 : $b0
	add hl, hl                                                  ; $2bda : $29
	di                                                  ; $2bdb : $f3
	jp z, $8eb6                                                  ; $2bdc : $ca, $b6, $8e
	inc e                                                  ; $2bdf : $1c
	add hl, de                                                  ; $2be0 : $19
	ld a, c                                                  ; $2be1 : $79
	or e                                                  ; $2be2 : $b3
	cpl                                                  ; $2be3 : $2f
	add hl, de                                                  ; $2be4 : $19
	ld a, c                                                  ; $2be5 : $79
	call z, $cfe6                                                  ; $2be6 : $cc, $e6, $cf
	add hl, sp                                                  ; $2be9 : $39
	ld c, a                                                  ; $2bea : $4f
	dec sp                                                  ; $2beb : $3b
	ld e, c                                                  ; $2bec : $59
	inc hl                                                  ; $2bed : $23
	rst $08                                                  ; $2bee : $cf
	add hl, de                                                  ; $2bef : $19
	ld a, (hl)                                                  ; $2bf0 : $7e
	ld l, (hl)                                                  ; $2bf1 : $6e
	ld c, (hl)                                                  ; $2bf2 : $4e
	ld b, $0f                                                  ; $2bf3 : $06, $0f
	add hl, de                                                  ; $2bf5 : $19
	ld a, (hl)                                                  ; $2bf6 : $7e
	ld l, (hl)                                                  ; $2bf7 : $6e
	ld c, (hl)                                                  ; $2bf8 : $4e
	ld b, $0f                                                  ; $2bf9 : $06, $0f
	dec sp                                                  ; $2bfb : $3b
	ld l, (hl)                                                  ; $2bfc : $6e
	ld (hl), e                                                  ; $2bfd : $73
	cp a                                                  ; $2bfe : $bf
	add hl, de                                                  ; $2bff : $19
	ld a, (hl)                                                  ; $2c00 : $7e
	ld l, (hl)                                                  ; $2c01 : $6e
	ld c, (hl)                                                  ; $2c02 : $4e
	ld c, $6c                                                  ; $2c03 : $0e, $6c
	add hl, de                                                  ; $2c05 : $19
	call po, $68e0                                                  ; $2c06 : $e4, $e0, $68
	dec c                                                  ; $2c09 : $0d
	ld l, c                                                  ; $2c0a : $69
	adc a, a                                                  ; $2c0b : $8f
	add hl, de                                                  ; $2c0c : $19
	call po, $68e0                                                  ; $2c0d : $e4, $e0, $68
	ld l, b                                                  ; $2c10 : $68
	pop hl                                                  ; $2c11 : $e1
	add hl, de                                                  ; $2c12 : $19
	call po, Call_02_193f                                                  ; $2c13 : $e4, $3f, $19
	call po, $ea32                                                  ; $2c16 : $e4, $32, $ea
	add hl, de                                                  ; $2c19 : $19
	call po, Call_02_193c                                                  ; $2c1a : $e4, $3c, $19
	call po, Call_02_1961                                                  ; $2c1d : $e4, $61, $19
	call po, $e168                                                  ; $2c20 : $e4, $68, $e1
	add hl, de                                                  ; $2c23 : $19
	call po, Call_02_3be4                                                  ; $2c24 : $e4, $e4, $3b
	ld d, $07                                                  ; $2c27 : $16, $07
	add hl, de                                                  ; $2c29 : $19
	call po, $98e4                                                  ; $2c2a : $e4, $e4, $98
	add hl, de                                                  ; $2c2d : $19
	call po, $98e4                                                  ; $2c2e : $e4, $e4, $98
	di                                                  ; $2c31 : $f3
	call po, $e30b                                                  ; $2c32 : $e4, $0b, $e3
	dec a                                                  ; $2c35 : $3d
	add hl, de                                                  ; $2c36 : $19
	call po, $e6e4                                                  ; $2c37 : $e4, $e4, $e6
	add a, (hl)                                                  ; $2c3a : $86
	adc a, $4f                                                  ; $2c3b : $ce, $4f
	add hl, de                                                  ; $2c3d : $19
	call po, $e6e4                                                  ; $2c3e : $e4, $e4, $e6
	add a, (hl)                                                  ; $2c41 : $86
	call $e419                                                  ; $2c42 : $cd, $19, $e4
	call po, $86e6                                                  ; $2c45 : $e4, $e6, $86
	sbc a, $af                                                  ; $2c48 : $de, $af
	add hl, de                                                  ; $2c4a : $19
	call po, Call_02_1da0                                                  ; $2c4b : $e4, $a0, $1d
	add hl, de                                                  ; $2c4e : $19
	call po, $86a0                                                  ; $2c4f : $e4, $a0, $86
	sbc a, b                                                  ; $2c52 : $98
	add hl, de                                                  ; $2c53 : $19
	call po, $8ea0                                                  ; $2c54 : $e4, $a0, $8e
	xor a                                                  ; $2c57 : $af
	add hl, de                                                  ; $2c58 : $19
	call po, Call_02_3ea7                                                  ; $2c59 : $e4, $a7, $3e

br_02_2c5c:
	ld b, e                                                  ; $2c5c : $43
	adc a, l                                                  ; $2c5d : $8d
	dec bc                                                  ; $2c5e : $0b
	jp pe, $e419                                                  ; $2c5f : $ea, $19, $e4
	and a                                                  ; $2c62 : $a7
	dec a                                                  ; $2c63 : $3d
	scf                                                  ; $2c64 : $37
	jp pe, $e419                                                  ; $2c65 : $ea, $19, $e4

br_02_2c68:
	and a                                                  ; $2c68 : $a7
	ld a, $9f                                                  ; $2c69 : $3e, $9f
	add hl, de                                                  ; $2c6b : $19
	call po, $83a9                                                  ; $2c6c : $e4, $a9, $83
	adc a, l                                                  ; $2c6f : $8d
	add hl, de                                                  ; $2c70 : $19
	call po, $e6a9                                                  ; $2c71 : $e4, $a9, $e6
	add a, d                                                  ; $2c74 : $82
	add hl, de                                                  ; $2c75 : $19
	call po, $e6a9                                                  ; $2c76 : $e4, $a9, $e6
	add a, d                                                  ; $2c79 : $82
	rst $08                                                  ; $2c7a : $cf
	add hl, de                                                  ; $2c7b : $19
	call po, Call_02_3cab                                                  ; $2c7c : $e4, $ab, $3c
	jp Jump_02_192f                                                  ; $2c7f : $c3, $2f, $19


	call po, $6dae                                                  ; $2c82 : $e4, $ae, $6d
	dec sp                                                  ; $2c85 : $3b
	add hl, de                                                  ; $2c86 : $19
	call po, $6dae                                                  ; $2c87 : $e4, $ae, $6d
	dec sp                                                  ; $2c8a : $3b
	rst $08                                                  ; $2c8b : $cf
	add hl, de                                                  ; $2c8c : $19
	add a, c                                                  ; $2c8d : $81
	dec sp                                                  ; $2c8e : $3b
	rst $18                                                  ; $2c8f : $df
	add hl, de                                                  ; $2c90 : $19
	add a, c                                                  ; $2c91 : $81
	sbc a, e                                                  ; $2c92 : $9b
	cpl                                                  ; $2c93 : $2f
	add hl, de                                                  ; $2c94 : $19
	add a, c                                                  ; $2c95 : $81
	sbc a, e                                                  ; $2c96 : $9b
	inc hl                                                  ; $2c97 : $23
	add hl, de                                                  ; $2c98 : $19
	add a, d                                                  ; $2c99 : $82
	jr c, br_02_2c5c                                                  ; $2c9a : $38, $c0

	sub $98                                                  ; $2c9c : $d6, $98
	add hl, de                                                  ; $2c9e : $19
	add a, d                                                  ; $2c9f : $82
	jr c, br_02_2c68                                                  ; $2ca0 : $38, $c6

	adc a, (hl)                                                  ; $2ca2 : $8e
	rra                                                  ; $2ca3 : $1f
	add hl, de                                                  ; $2ca4 : $19
	add a, d                                                  ; $2ca5 : $82
	and $1d                                                  ; $2ca6 : $e6, $1d
	add hl, de                                                  ; $2ca8 : $19
	add a, d                                                  ; $2ca9 : $82
	and $1d                                                  ; $2caa : $e6, $1d
	sbc a, e                                                  ; $2cac : $9b
	add hl, de                                                  ; $2cad : $19
	add a, d                                                  ; $2cae : $82
	and $1d                                                  ; $2caf : $e6, $1d
	sbc a, e                                                  ; $2cb1 : $9b
	rst $08                                                  ; $2cb2 : $cf
	add hl, de                                                  ; $2cb3 : $19
	add a, e                                                  ; $2cb4 : $83
	rst $08                                                  ; $2cb5 : $cf
	add hl, de                                                  ; $2cb6 : $19
	add a, h                                                  ; $2cb7 : $84
	ld ($013b), a                                                  ; $2cb8 : $32, $3b, $01
	jp pe, $8419                                                  ; $2cbb : $ea, $19, $84
	ld ($0d3b), a                                                  ; $2cbe : $32, $3b, $0d
	ccf                                                  ; $2cc1 : $3f
	add hl, de                                                  ; $2cc2 : $19
	add a, h                                                  ; $2cc3 : $84
	ld ($0d3b), a                                                  ; $2cc4 : $32, $3b, $0d
	inc a                                                  ; $2cc7 : $3c
	add hl, de                                                  ; $2cc8 : $19
	add a, h                                                  ; $2cc9 : $84
	ld ($0d3b), a                                                  ; $2cca : $32, $3b, $0d
	ld l, c                                                  ; $2ccd : $69
	adc a, a                                                  ; $2cce : $8f
	add hl, de                                                  ; $2ccf : $19
	adc a, (hl)                                                  ; $2cd0 : $8e
	dec de                                                  ; $2cd1 : $1b
	inc a                                                  ; $2cd2 : $3c
	rst $08                                                  ; $2cd3 : $cf
	add hl, de                                                  ; $2cd4 : $19
	add a, (hl)                                                  ; $2cd5 : $86
	ld b, e                                                  ; $2cd6 : $43
	cp a                                                  ; $2cd7 : $bf
	add hl, de                                                  ; $2cd8 : $19
	add a, (hl)                                                  ; $2cd9 : $86
	ld b, e                                                  ; $2cda : $43
	cp h                                                  ; $2cdb : $bc
	add hl, de                                                  ; $2cdc : $19
	adc a, b                                                  ; $2cdd : $88
	ld sp, $19df                                                  ; $2cde : $31, $df, $19
	adc a, b                                                  ; $2ce1 : $88
	ld sp, $2fd3                                                  ; $2ce2 : $31, $d3, $2f
	add hl, de                                                  ; $2ce5 : $19
	adc a, b                                                  ; $2ce6 : $88
	ld sp, $1ed6                                                  ; $2ce7 : $31, $d6, $1e
	ld l, l                                                  ; $2cea : $6d
	add hl, de                                                  ; $2ceb : $19
	adc a, b                                                  ; $2cec : $88
	ld sp, $8ed6                                                  ; $2ced : $31, $d6, $8e
	rra                                                  ; $2cf0 : $1f
	add hl, de                                                  ; $2cf1 : $19
	adc a, b                                                  ; $2cf2 : $88
	ld sp, $19dc                                                  ; $2cf3 : $31, $dc, $19
	adc a, b                                                  ; $2cf6 : $88
	inc a                                                  ; $2cf7 : $3c
	exx                                                  ; $2cf8 : $d9
	pop hl                                                  ; $2cf9 : $e1
	rrca                                                  ; $2cfa : $0f
	add hl, de                                                  ; $2cfb : $19
	adc a, (hl)                                                  ; $2cfc : $8e
	ld e, (hl)                                                  ; $2cfd : $5e
	ld h, e                                                  ; $2cfe : $63
	cp a                                                  ; $2cff : $bf
	add hl, de                                                  ; $2d00 : $19
	adc a, (hl)                                                  ; $2d01 : $8e
	ld e, (hl)                                                  ; $2d02 : $5e
	ld h, e                                                  ; $2d03 : $63
	or e                                                  ; $2d04 : $b3
	cpl                                                  ; $2d05 : $2f
	add hl, de                                                  ; $2d06 : $19
	adc a, (hl)                                                  ; $2d07 : $8e
	ld e, (hl)                                                  ; $2d08 : $5e
	ld h, e                                                  ; $2d09 : $63
	cp c                                                  ; $2d0a : $b9
	cp a                                                  ; $2d0b : $bf
	add hl, de                                                  ; $2d0c : $19

br_02_2d0d:
	adc a, h                                                  ; $2d0d : $8c
	dec sp                                                  ; $2d0e : $3b
	rst $20                                                  ; $2d0f : $e7
	dec c                                                  ; $2d10 : $0d
	ld l, c                                                  ; $2d11 : $69
	adc a, a                                                  ; $2d12 : $8f

br_02_2d13:
	add hl, de                                                  ; $2d13 : $19
	adc a, h                                                  ; $2d14 : $8c
	ld l, h                                                  ; $2d15 : $6c
	call c, $8c19                                                  ; $2d16 : $dc, $19, $8c
	ret nc                                                  ; $2d19 : $d0

	ret po                                                  ; $2d1a : $e0

	ld (hl), e                                                  ; $2d1b : $73
	add hl, de                                                  ; $2d1c : $19

br_02_2d1d:
	adc a, h                                                  ; $2d1d : $8c
	out ($77), a                                                  ; $2d1e : $d3, $77
	dec c                                                  ; $2d20 : $0d
	ld l, c                                                  ; $2d21 : $69
	adc a, h                                                  ; $2d22 : $8c
	add hl, de                                                  ; $2d23 : $19
	adc a, h                                                  ; $2d24 : $8c
	sub $de                                                  ; $2d25 : $d6, $de
	ld l, l                                                  ; $2d27 : $6d
	ld l, c                                                  ; $2d28 : $69
	adc a, a                                                  ; $2d29 : $8f
	add hl, de                                                  ; $2d2a : $19
	adc a, l                                                  ; $2d2b : $8d
	ld b, $8f                                                  ; $2d2c : $06, $8f
	add hl, de                                                  ; $2d2e : $19

br_02_2d2f:
	adc a, l                                                  ; $2d2f : $8d
	ld b, $86                                                  ; $2d30 : $06, $86
	adc a, (hl)                                                  ; $2d32 : $8e
	rra                                                  ; $2d33 : $1f
	add hl, de                                                  ; $2d34 : $19
	adc a, l                                                  ; $2d35 : $8d
	ld b, $8c                                                  ; $2d36 : $06, $8c
	add hl, de                                                  ; $2d38 : $19
	adc a, l                                                  ; $2d39 : $8d
	ld l, b                                                  ; $2d3a : $68
	jr c, br_02_2d0d                                                  ; $2d3b : $38, $d0

	ld a, a                                                  ; $2d3d : $7f
	add hl, de                                                  ; $2d3e : $19
	adc a, l                                                  ; $2d3f : $8d
	ld l, b                                                  ; $2d40 : $68
	jr c, br_02_2d13                                                  ; $2d41 : $38, $d0

	ld a, a                                                  ; $2d43 : $7f
	ld ($766e), a                                                  ; $2d44 : $32, $6e, $76
	inc hl                                                  ; $2d47 : $23
	add hl, de                                                  ; $2d48 : $19
	adc a, l                                                  ; $2d49 : $8d
	ld l, b                                                  ; $2d4a : $68
	jr c, br_02_2d1d                                                  ; $2d4b : $38, $d0

	ld a, h                                                  ; $2d4d : $7c
	add hl, de                                                  ; $2d4e : $19
	adc a, l                                                  ; $2d4f : $8d
	ld l, b                                                  ; $2d50 : $68
	jr c, br_02_2d2f                                                  ; $2d51 : $38, $dc

	add hl, de                                                  ; $2d53 : $19
	adc a, l                                                  ; $2d54 : $8d
	ld l, b                                                  ; $2d55 : $68
	and $07                                                  ; $2d56 : $e6, $07
	ld a, (hl)                                                  ; $2d58 : $7e
	xor a                                                  ; $2d59 : $af
	add hl, de                                                  ; $2d5a : $19
	adc a, l                                                  ; $2d5b : $8d
	cp c                                                  ; $2d5c : $b9
	ld a, a                                                  ; $2d5d : $7f
	add hl, de                                                  ; $2d5e : $19
	adc a, l                                                  ; $2d5f : $8d
	cp c                                                  ; $2d60 : $b9
	ld a, h                                                  ; $2d61 : $7c
	add hl, de                                                  ; $2d62 : $19
	adc a, (hl)                                                  ; $2d63 : $8e
	ld (hl), e                                                  ; $2d64 : $73
	cp l                                                  ; $2d65 : $bd
	ld ($9719), a                                                  ; $2d66 : $32, $19, $97
	add hl, de                                                  ; $2d69 : $19
	sbc a, d                                                  ; $2d6a : $9a
	dec sp                                                  ; $2d6b : $3b
	dec c                                                  ; $2d6c : $0d
	ccf                                                  ; $2d6d : $3f
	add hl, de                                                  ; $2d6e : $19
	and e                                                  ; $2d6f : $a3
	add a, l                                                  ; $2d70 : $85
	ld c, $13                                                  ; $2d71 : $0e, $13
	adc a, a                                                  ; $2d73 : $8f
	add hl, de                                                  ; $2d74 : $19
	xor d                                                  ; $2d75 : $aa
	dec sp                                                  ; $2d76 : $3b
	add hl, de                                                  ; $2d77 : $19
	or e                                                  ; $2d78 : $b3
	add hl, de                                                  ; $2d79 : $19
	cp b                                                  ; $2d7a : $b8
	jr nc, br_02_2d96                                                  ; $2d7b : $30, $19

	cp c                                                  ; $2d7d : $b9
	add a, b                                                  ; $2d7e : $80
	add hl, hl                                                  ; $2d7f : $29
	add hl, de                                                  ; $2d80 : $19
	cp d                                                  ; $2d81 : $ba
	jp $bd19                                                  ; $2d82 : $c3, $19, $bd


	inc a                                                  ; $2d85 : $3c
	add hl, de                                                  ; $2d86 : $19
	cp l                                                  ; $2d87 : $bd
	ld a, $bf                                                  ; $2d88 : $3e, $bf
	add hl, de                                                  ; $2d8a : $19
	adc a, $0e                                                  ; $2d8b : $ce, $0e
	xor a                                                  ; $2d8d : $af
	add hl, de                                                  ; $2d8e : $19
	call $3b0f                                                  ; $2d8f : $cd, $0f, $3b
	ld h, c                                                  ; $2d92 : $61
	rrca                                                  ; $2d93 : $0f
	add hl, de                                                  ; $2d94 : $19
	.db $dd                                                  ; $2d95 : $dd

br_02_2d96:
	sbc a, b                                                  ; $2d96 : $98
	add hl, de                                                  ; $2d97 : $19
	and $72                                                  ; $2d98 : $e6, $72
	add hl, de                                                  ; $2d9a : $19
	and $8d                                                  ; $2d9b : $e6, $8d
	add hl, de                                                  ; $2d9d : $19
	and $8d                                                  ; $2d9e : $e6, $8d
	dec sp                                                  ; $2da0 : $3b
	xor $b3                                                  ; $2da1 : $ee, $b3
	rst $20                                                  ; $2da3 : $e7
	sub a                                                  ; $2da4 : $97
	and $d6                                                  ; $2da5 : $e6, $d6
	sbc a, b                                                  ; $2da7 : $98
	add hl, de                                                  ; $2da8 : $19
	and $8d                                                  ; $2da9 : $e6, $8d
	ld l, b                                                  ; $2dab : $68
	pop hl                                                  ; $2dac : $e1
	add hl, de                                                  ; $2dad : $19

br_02_2dae:
	and $8d                                                  ; $2dae : $e6, $8d
	or (hl)                                                  ; $2db0 : $b6

br_02_2db1:
	inc a                                                  ; $2db1 : $3c
	add hl, de                                                  ; $2db2 : $19
	and $8d                                                  ; $2db3 : $e6, $8d
	jp pe, $e619                                                  ; $2db5 : $ea, $19, $e6

br_02_2db8:
	cp l                                                  ; $2db8 : $bd
	add hl, de                                                  ; $2db9 : $19
	rst $20                                                  ; $2dba : $e7
	dec sp                                                  ; $2dbb : $3b

br_02_2dbc:
	ld ($e719), a                                                  ; $2dbc : $32, $19, $e7
	dec sp                                                  ; $2dbf : $3b
	ld l, b                                                  ; $2dc0 : $68
	pop hl                                                  ; $2dc1 : $e1
	add hl, de                                                  ; $2dc2 : $19
	rst $20                                                  ; $2dc3 : $e7
	dec sp                                                  ; $2dc4 : $3b

br_02_2dc5:
	rst $08                                                  ; $2dc5 : $cf
	ld a, (de)                                                  ; $2dc6 : $1a
	and $1b                                                  ; $2dc7 : $e6, $1b
	inc b                                                  ; $2dc9 : $04
	rst $18                                                  ; $2dca : $df
	dec de                                                  ; $2dcb : $1b
	inc c                                                  ; $2dcc : $0c
	ld e, a                                                  ; $2dcd : $5f
	dec de                                                  ; $2dce : $1b
	dec c                                                  ; $2dcf : $0d
	dec sp                                                  ; $2dd0 : $3b
	dec de                                                  ; $2dd1 : $1b
	dec c                                                  ; $2dd2 : $0d
	dec sp                                                  ; $2dd3 : $3b
	rst $08                                                  ; $2dd4 : $cf
	dec de                                                  ; $2dd5 : $1b
	jr nc, br_02_2dbc                                                  ; $2dd6 : $30, $e4

	dec de                                                  ; $2dd8 : $1b
	jr nc, br_02_2dae                                                  ; $2dd9 : $30, $d3

	dec de                                                  ; $2ddb : $1b
	jr nc, br_02_2db1                                                  ; $2ddc : $30, $d3

	cpl                                                  ; $2dde : $2f
	dec de                                                  ; $2ddf : $1b
	jr nc, br_02_2db8                                                  ; $2de0 : $30, $d6

	rst $20                                                  ; $2de2 : $e7
	ccf                                                  ; $2de3 : $3f
	dec de                                                  ; $2de4 : $1b
	jr nc, br_02_2dc5                                                  ; $2de5 : $30, $de

	ld l, e                                                  ; $2de7 : $6b
	ccf                                                  ; $2de8 : $3f
	dec de                                                  ; $2de9 : $1b
	inc a                                                  ; $2dea : $3c
	rst $18                                                  ; $2deb : $df
	dec de                                                  ; $2dec : $1b
	ld a, $70                                                  ; $2ded : $3e, $70
	call z, Call_02_1b3f                                                  ; $2def : $cc, $3f, $1b
	ld h, c                                                  ; $2df2 : $61
	ex (sp), hl                                                  ; $2df3 : $e3
	dec a                                                  ; $2df4 : $3d
	dec de                                                  ; $2df5 : $1b
	sub c                                                  ; $2df6 : $91
	ex (sp), hl                                                  ; $2df7 : $e3
	dec a                                                  ; $2df8 : $3d
	rst $18                                                  ; $2df9 : $df
	dec de                                                  ; $2dfa : $1b
	sbc a, d                                                  ; $2dfb : $9a
	dec de                                                  ; $2dfc : $1b
	sbc a, d                                                  ; $2dfd : $9a
	rst $08                                                  ; $2dfe : $cf
	dec de                                                  ; $2dff : $1b
	sbc a, h                                                  ; $2e00 : $9c
	rst $08                                                  ; $2e01 : $cf
	dec de                                                  ; $2e02 : $1b
	sbc a, h                                                  ; $2e03 : $9c
	jp Jump_02_1bcf                                                  ; $2e04 : $c3, $cf, $1b


	sbc a, (hl)                                                  ; $2e07 : $9e
	adc a, a                                                  ; $2e08 : $8f
	ld a, $00                                                  ; $2e09 : $3e, $00
	cp a                                                  ; $2e0b : $bf
	dec de                                                  ; $2e0c : $1b
	and $c0                                                  ; $2e0d : $e6, $c0
	inc hl                                                  ; $2e0f : $23
	rst $08                                                  ; $2e10 : $cf
	dec de                                                  ; $2e11 : $1b
	and $cd                                                  ; $2e12 : $e6, $cd
	ld e, $61                                                  ; $2e14 : $1e, $61
	ex (sp), hl                                                  ; $2e16 : $e3
	sbc a, c                                                  ; $2e17 : $99
	ld e, $61                                                  ; $2e18 : $1e, $61
	and $e4                                                  ; $2e1a : $e6, $e4
	ret po                                                  ; $2e1c : $e0

	dec sp                                                  ; $2e1d : $3b
	ld e, $67                                                  ; $2e1e : $1e, $67
	sbc a, $6b                                                  ; $2e20 : $de, $6b

br_02_2e22:
	ccf                                                  ; $2e22 : $3f
	ld e, $67                                                  ; $2e23 : $1e, $67
	sbc a, $6b                                                  ; $2e25 : $de, $6b
	inc a                                                  ; $2e27 : $3c
	ld e, $6e                                                  ; $2e28 : $1e, $6e
	ld c, (hl)                                                  ; $2e2a : $4e
	ld h, a                                                  ; $2e2b : $67
	and $cf                                                  ; $2e2c : $e6, $cf
	ld e, $68                                                  ; $2e2e : $1e, $68
	ld (hl), $49                                                  ; $2e30 : $36, $49
	cp (hl)                                                  ; $2e32 : $be
	ld c, a                                                  ; $2e33 : $4f
	ld e, $6a                                                  ; $2e34 : $1e, $6a
	ld e, $6b                                                  ; $2e36 : $1e, $6b
	ccf                                                  ; $2e38 : $3f
	ld e, $6b                                                  ; $2e39 : $1e, $6b
	or e                                                  ; $2e3b : $b3
	add a, c                                                  ; $2e3c : $81
	jp pe, $6b1e                                                  ; $2e3d : $ea, $1e, $6b
	or e                                                  ; $2e40 : $b3
	adc a, l                                                  ; $2e41 : $8d
	rst $08                                                  ; $2e42 : $cf
	ld e, $6c                                                  ; $2e43 : $1e, $6c
	out ($bf), a                                                  ; $2e45 : $d3, $bf
	ld e, $6d                                                  ; $2e47 : $1e, $6d
	ld e, $6e                                                  ; $2e49 : $1e, $6e
	or c                                                  ; $2e4b : $b1
	sbc a, a                                                  ; $2e4c : $9f
	ld e, $a1                                                  ; $2e4d : $1e, $a1
	ld a, c                                                  ; $2e4f : $79
	add a, e                                                  ; $2e50 : $83
	ld e, $ae                                                  ; $2e51 : $1e, $ae
	jr br_02_2e92                                                  ; $2e53 : $18, $3d

	ld e, $ad                                                  ; $2e55 : $1e, $ad
	sbc a, d                                                  ; $2e57 : $9a
	ld (hl), b                                                  ; $2e58 : $70

br_02_2e59:
	adc a, $4f                                                  ; $2e59 : $ce, $4f
	ld e, $b0                                                  ; $2e5b : $1e, $b0
	cp a                                                  ; $2e5d : $bf
	ld e, $b0                                                  ; $2e5e : $1e, $b0
	cp h                                                  ; $2e60 : $bc
	cpl                                                  ; $2e61 : $2f
	ld l, $e2                                                  ; $2e62 : $2e, $e2
	ld c, $af                                                  ; $2e64 : $0e, $af
	ld l, $cf                                                  ; $2e66 : $2e, $cf
	dec sp                                                  ; $2e68 : $3b
	sub c                                                  ; $2e69 : $91
	ex (sp), hl                                                  ; $2e6a : $e3
	inc (hl)                                                  ; $2e6b : $34

br_02_2e6c:
	scf                                                  ; $2e6c : $37
	ld (hl), e                                                  ; $2e6d : $73
	cp a                                                  ; $2e6e : $bf
	ld l, $cf                                                  ; $2e6f : $2e, $cf
	dec sp                                                  ; $2e71 : $3b
	sbc a, c                                                  ; $2e72 : $99
	jp Jump_02_37e7                                                  ; $2e73 : $c3, $e7, $37


	rst $18                                                  ; $2e76 : $df
	ld l, $c1                                                  ; $2e77 : $2e, $c1
	call pe, Call_02_2220                                                  ; $2e79 : $ec, $20, $22
	jp pe, $6720                                                  ; $2e7c : $ea, $20, $67

br_02_2e7f:
	jp pe, $e320                                                  ; $2e7f : $ea, $20, $e3
	dec bc                                                  ; $2e82 : $0b
	jr nz, br_02_2efc                                                  ; $2e83 : $20, $77

	inc c                                                  ; $2e85 : $0c
	jr nz, br_02_2e6c                                                  ; $2e86 : $20, $e4

	ld c, $13                                                  ; $2e88 : $0e, $13
	cpl                                                  ; $2e8a : $2f
	jr nz, -$7a                                                  ; $2e8b : $20, $86

	scf                                                  ; $2e8d : $37

br_02_2e8e:
	di                                                  ; $2e8e : $f3
	ret po                                                  ; $2e8f : $e0

	sbc a, c                                                  ; $2e90 : $99
	add a, e                                                  ; $2e91 : $83

br_02_2e92:
	jr nz, br_02_2e22                                                  ; $2e92 : $20, $8e

	ld l, (hl)                                                  ; $2e94 : $6e
	inc bc                                                  ; $2e95 : $03
	jr nz, -$42                                                  ; $2e96 : $20, $be

	ccf                                                  ; $2e98 : $3f
	jr nz, br_02_2e59                                                  ; $2e99 : $20, $be

	ccf                                                  ; $2e9b : $3f

br_02_2e9c:
	jr nc, br_02_2e7f                                                  ; $2e9c : $30, $e1

	inc a                                                  ; $2e9e : $3c
	jr nz, -$42                                                  ; $2e9f : $20, $be

	add a, (hl)                                                  ; $2ea1 : $86
	adc a, a                                                  ; $2ea2 : $8f
	jr nz, -$2d                                                  ; $2ea3 : $20, $d3

	jr nz, br_02_2e8e                                                  ; $2ea5 : $20, $e7

	ld a, $af                                                  ; $2ea7 : $3e, $af
	ld sp, $1eb9                                                  ; $2ea9 : $31, $b9, $1e
	inc sp                                                  ; $2eac : $33
	.db $dd                                                  ; $2ead : $dd
	jr nz, -$16                                                  ; $2eae : $20, $ea

	jr nz, br_02_2e9c                                                  ; $2eb0 : $20, $ea

br_02_2eb2:
	rst $08                                                  ; $2eb2 : $cf
	inc hl                                                  ; $2eb3 : $23
	di                                                  ; $2eb4 : $f3
	pop hl                                                  ; $2eb5 : $e1
	ld c, $67                                                  ; $2eb6 : $0e, $67
	ld (hl), e                                                  ; $2eb8 : $73
	inc hl                                                  ; $2eb9 : $23
	di                                                  ; $2eba : $f3
	ld (hl), e                                                  ; $2ebb : $73
	sbc a, b                                                  ; $2ebc : $98
	inc hl                                                  ; $2ebd : $23
	di                                                  ; $2ebe : $f3
	ret                                                  ; $2ebf : $c9


br_02_2ec0:
	exx                                                  ; $2ec0 : $d9
	inc hl                                                  ; $2ec1 : $23
	ld (bc), a                                                  ; $2ec2 : $02
	inc hl                                                  ; $2ec3 : $23
	ld (bc), a                                                  ; $2ec4 : $02
	di                                                  ; $2ec5 : $f3
	jp Jump_02_230f                                                  ; $2ec6 : $c3, $0f, $23


	rlca                                                  ; $2ec9 : $07
	inc hl                                                  ; $2eca : $23
	rlca                                                  ; $2ecb : $07
	rst $08                                                  ; $2ecc : $cf
	inc hl                                                  ; $2ecd : $23
	dec c                                                  ; $2ece : $0d
	ld e, a                                                  ; $2ecf : $5f
	inc hl                                                  ; $2ed0 : $23
	djnz br_02_2ef6                                                  ; $2ed1 : $10, $23
	inc hl                                                  ; $2ed3 : $23
	djnz br_02_2ec0                                                  ; $2ed4 : $10, $ea
	inc hl                                                  ; $2ed6 : $23
	rla                                                  ; $2ed7 : $17
	dec bc                                                  ; $2ed8 : $0b
	dec c                                                  ; $2ed9 : $0d
	ld l, c                                                  ; $2eda : $69
	adc a, a                                                  ; $2edb : $8f
	inc hl                                                  ; $2edc : $23
	rla                                                  ; $2edd : $17
	dec bc                                                  ; $2ede : $0b
	dec c                                                  ; $2edf : $0d
	ld l, c                                                  ; $2ee0 : $69
	adc a, a                                                  ; $2ee1 : $8f
	add hl, sp                                                  ; $2ee2 : $39
	ld c, a                                                  ; $2ee3 : $4f
	ld (hl), $82                                                  ; $2ee4 : $36, $82
	ld a, ($2338)                                                  ; $2ee6 : $3a, $38, $23
	add a, c                                                  ; $2ee9 : $81
	ccf                                                  ; $2eea : $3f
	inc hl                                                  ; $2eeb : $23
	dec de                                                  ; $2eec : $1b
	jr nc, br_02_2eb2                                                  ; $2eed : $30, $c3

	rst $08                                                  ; $2eef : $cf
	inc hl                                                  ; $2ef0 : $23
	ld a, ($3b23)                                                  ; $2ef1 : $3a, $23, $3b
	inc hl                                                  ; $2ef4 : $23
	dec sp                                                  ; $2ef5 : $3b

br_02_2ef6:
	ccf                                                  ; $2ef6 : $3f
	inc hl                                                  ; $2ef7 : $23
	ld b, e                                                  ; $2ef8 : $43
	dec c                                                  ; $2ef9 : $0d
	inc hl                                                  ; $2efa : $23
	ld b, e                                                  ; $2efb : $43

br_02_2efc:
	dec c                                                  ; $2efc : $0d
	ld ($4723), a                                                  ; $2efd : $32, $23, $47
	dec c                                                  ; $2f00 : $0d
	ld l, c                                                  ; $2f01 : $69
	adc a, a                                                  ; $2f02 : $8f
	inc hl                                                  ; $2f03 : $23
	pop hl                                                  ; $2f04 : $e1
	or e                                                  ; $2f05 : $b3
	inc a                                                  ; $2f06 : $3c
	inc hl                                                  ; $2f07 : $23
	ld (hl), b                                                  ; $2f08 : $70
	ret pe                                                  ; $2f09 : $e8

	dec bc                                                  ; $2f0a : $0b
	ccf                                                  ; $2f0b : $3f
	inc hl                                                  ; $2f0c : $23
	ld (hl), l                                                  ; $2f0d : $75
	ld l, a                                                  ; $2f0e : $6f
	inc hl                                                  ; $2f0f : $23
	ld a, l                                                  ; $2f10 : $7d
	rrca                                                  ; $2f11 : $0f
	inc hl                                                  ; $2f12 : $23
	call po, $b091                                                  ; $2f13 : $e4, $91, $b0
	ld e, $af                                                  ; $2f16 : $1e, $af
	inc hl                                                  ; $2f18 : $23
	call po, Call_02_1b9e                                                  ; $2f19 : $e4, $9e, $1b
	ld a, (bc)                                                  ; $2f1c : $0a
	ld d, e                                                  ; $2f1d : $53
	cp a                                                  ; $2f1e : $bf
	inc hl                                                  ; $2f1f : $23
	adc a, (hl)                                                  ; $2f20 : $8e
	ld b, b                                                  ; $2f21 : $40
	cp (hl)                                                  ; $2f22 : $be
	ccf                                                  ; $2f23 : $3f
	inc hl                                                  ; $2f24 : $23
	adc a, h                                                  ; $2f25 : $8c
	scf                                                  ; $2f26 : $37
	jp pe, $8c23                                                  ; $2f27 : $ea, $23, $8c
	ld l, l                                                  ; $2f2a : $6d
	jp pe, $8e23                                                  ; $2f2b : $ea, $23, $8e
	ld (hl), e                                                  ; $2f2e : $73
	cp a                                                  ; $2f2f : $bf
	inc hl                                                  ; $2f30 : $23
	and e                                                  ; $2f31 : $a3
	add a, d                                                  ; $2f32 : $82
	inc hl                                                  ; $2f33 : $23
	xor e                                                  ; $2f34 : $ab
	inc a                                                  ; $2f35 : $3c
	add a, $98                                                  ; $2f36 : $c6, $98
	inc hl                                                  ; $2f38 : $23
	or (hl)                                                  ; $2f39 : $b6
	rst $20                                                  ; $2f3a : $e7
	ld ($c123), a                                                  ; $2f3b : $32, $23, $c1
	or (hl)                                                  ; $2f3e : $b6
	ret po                                                  ; $2f3f : $e0

	ccf                                                  ; $2f40 : $3f
	inc hl                                                  ; $2f41 : $23
	pop bc                                                  ; $2f42 : $c1
	or (hl)                                                  ; $2f43 : $b6
	ret po                                                  ; $2f44 : $e0

	ld l, b                                                  ; $2f45 : $68
	pop hl                                                  ; $2f46 : $e1
	inc hl                                                  ; $2f47 : $23
	jp Jump_02_23bd                                                  ; $2f48 : $c3, $bd, $23


	call $eab9                                                  ; $2f4b : $cd, $b9, $ea
	ld ($cd23), a                                                  ; $2f4e : $32, $23, $cd
	cp c                                                  ; $2f51 : $b9
	jp pe, Jump_02_233b                                                  ; $2f52 : $ea, $3b, $23
	call $61be                                                  ; $2f55 : $cd, $be, $61
	sub $e7                                                  ; $2f58 : $d6, $e7
	ccf                                                  ; $2f5a : $3f
	inc hl                                                  ; $2f5b : $23
	out ($be), a                                                  ; $2f5c : $d3, $be
	ld b, (hl)                                                  ; $2f5e : $46
	add a, e                                                  ; $2f5f : $83
	inc hl                                                  ; $2f60 : $23
	in a, ($96)                                                  ; $2f61 : $db, $96
	rst $18                                                  ; $2f63 : $df
	inc hl                                                  ; $2f64 : $23
	and $13                                                  ; $2f65 : $e6, $13
	inc hl                                                  ; $2f67 : $23
	and $cf                                                  ; $2f68 : $e6, $cf
	ld a, $7e                                                  ; $2f6a : $3e, $7e
	ld h, a                                                  ; $2f6c : $67
	rst $18                                                  ; $2f6d : $df
	inc hl                                                  ; $2f6e : $23
	rst $20                                                  ; $2f6f : $e7
	scf                                                  ; $2f70 : $37
	sbc a, d                                                  ; $2f71 : $9a
	ld ($e723), a                                                  ; $2f72 : $32, $23, $e7
	scf                                                  ; $2f75 : $37
	sbc a, d                                                  ; $2f76 : $9a
	call po, $df38                                                  ; $2f77 : $e4, $38, $df
	inc hl                                                  ; $2f7a : $23
	rst $20                                                  ; $2f7b : $e7
	ld h, c                                                  ; $2f7c : $61
	ccf                                                  ; $2f7d : $3f
	inc hl                                                  ; $2f7e : $23
	ret pe                                                  ; $2f7f : $e8

	di                                                  ; $2f80 : $f3
	dec hl                                                  ; $2f81 : $2b
	sbc a, d                                                  ; $2f82 : $9a
	rst $08                                                  ; $2f83 : $cf
	ld h, $0e                                                  ; $2f84 : $26, $0e
	ld b, e                                                  ; $2f86 : $43
	out ($bf), a                                                  ; $2f87 : $d3, $bf
	ld h, $0e                                                  ; $2f89 : $26, $0e
	ld c, c                                                  ; $2f8b : $49
	add a, d                                                  ; $2f8c : $82
	ld h, $0e                                                  ; $2f8d : $26, $0e
	ld c, c                                                  ; $2f8f : $49
	add a, d                                                  ; $2f90 : $82
	rst $08                                                  ; $2f91 : $cf
	ld h, $08                                                  ; $2f92 : $26, $08

br_02_2f94:
	rrca                                                  ; $2f94 : $0f
	ld h, $0a                                                  ; $2f95 : $26, $0a
	ld e, e                                                  ; $2f97 : $5b
	ld c, $1e                                                  ; $2f98 : $0e, $1e
	ld c, a                                                  ; $2f9a : $4f
	ld h, $0b                                                  ; $2f9b : $26, $0b
	jp pe, Jump_02_1d26                                                  ; $2f9d : $ea, $26, $1d
	dec c                                                  ; $2fa0 : $0d
	sbc a, e                                                  ; $2fa1 : $9b
	ld h, $1d                                                  ; $2fa2 : $26, $1d
	dec c                                                  ; $2fa4 : $0d
	sbc a, e                                                  ; $2fa5 : $9b

br_02_2fa6:
	push bc                                                  ; $2fa6 : $c5
	ld l, d                                                  ; $2fa7 : $6a
	ld h, $1d                                                  ; $2fa8 : $26, $1d
	ld l, c                                                  ; $2faa : $69
	add a, b                                                  ; $2fab : $80
	cp (hl)                                                  ; $2fac : $be
	xor a                                                  ; $2fad : $af
	ld h, $3f                                                  ; $2fae : $26, $3f

br_02_2fb0:
	ld h, $44                                                  ; $2fb0 : $26, $44
	dec sp                                                  ; $2fb2 : $3b
	jr c, br_02_2f94                                                  ; $2fb3 : $38, $df

	ld h, $44                                                  ; $2fb5 : $26, $44
	and $c3                                                  ; $2fb7 : $e6, $c3
	ld h, $44                                                  ; $2fb9 : $26, $44
	and $c3                                                  ; $2fbb : $e6, $c3
	rst $08                                                  ; $2fbd : $cf
	ld h, $e1                                                  ; $2fbe : $26, $e1
	inc a                                                  ; $2fc0 : $3c
	sub $98                                                  ; $2fc1 : $d6, $98
	ld h, $e1                                                  ; $2fc3 : $26, $e1
	inc a                                                  ; $2fc5 : $3c
	sub $e7                                                  ; $2fc6 : $d6, $e7
	ccf                                                  ; $2fc8 : $3f
	ld h, $e1                                                  ; $2fc9 : $26, $e1
	ld l, l                                                  ; $2fcb : $6d
	rlca                                                  ; $2fcc : $07
	ld h, $e3                                                  ; $2fcd : $26, $e3
	inc a                                                  ; $2fcf : $3c
	ld h, $e4                                                  ; $2fd0 : $26, $e4
	ccf                                                  ; $2fd2 : $3f
	ld h, $9e                                                  ; $2fd3 : $26, $9e
	sub (hl)                                                  ; $2fd5 : $96
	inc hl                                                  ; $2fd6 : $23
	ld h, $b3                                                  ; $2fd7 : $26, $b3
	dec e                                                  ; $2fd9 : $1d
	ld l, c                                                  ; $2fda : $69
	adc a, a                                                  ; $2fdb : $8f
	ld h, $b3                                                  ; $2fdc : $26, $b3
	dec e                                                  ; $2fde : $1d
	ld l, c                                                  ; $2fdf : $69
	adc a, h                                                  ; $2fe0 : $8c
	ld h, $b3                                                  ; $2fe1 : $26, $b3
	dec e                                                  ; $2fe3 : $1d
	ld a, (hl)                                                  ; $2fe4 : $7e
	xor a                                                  ; $2fe5 : $af
	ld h, $bd                                                  ; $2fe6 : $26, $bd
	jp pe, $c026                                                  ; $2fe8 : $ea, $26, $c0
	pop hl                                                  ; $2feb : $e1
	or e                                                  ; $2fec : $b3
	ld a, $43                                                  ; $2fed : $3e, $43
	adc a, l                                                  ; $2fef : $8d
	rst $08                                                  ; $2ff0 : $cf
	ld h, $c0                                                  ; $2ff1 : $26, $c0
	xor d                                                  ; $2ff3 : $aa
	jr nc, br_02_2fa6                                                  ; $2ff4 : $30, $b0

	add a, c                                                  ; $2ff6 : $81
	ccf                                                  ; $2ff7 : $3f
	ld h, $c0                                                  ; $2ff8 : $26, $c0
	xor d                                                  ; $2ffa : $aa
	jr nc, br_02_2fb0                                                  ; $2ffb : $30, $b3

	cpl                                                  ; $2ffd : $2f
	ld h, $c1                                                  ; $2ffe : $26, $c1
	ld d, b                                                  ; $3000 : $50
	cp (hl)                                                  ; $3001 : $be
	inc de                                                  ; $3002 : $13
	rst $08                                                  ; $3003 : $cf
	ld h, $c1                                                  ; $3004 : $26, $c1
	sbc a, (hl)                                                  ; $3006 : $9e
	ld (hl), e                                                  ; $3007 : $73
	or e                                                  ; $3008 : $b3
	cpl                                                  ; $3009 : $2f
	ld h, $c1                                                  ; $300a : $26, $c1
	rst $08                                                  ; $300c : $cf
	ld h, $ce                                                  ; $300d : $26, $ce
	ccf                                                  ; $300f : $3f
	ld h, $ca                                                  ; $3010 : $26, $ca
	and $d3                                                  ; $3012 : $e6, $d3
	cpl                                                  ; $3014 : $2f
	ld h, $cc                                                  ; $3015 : $26, $cc
	sub a                                                  ; $3017 : $97
	rst $20                                                  ; $3018 : $e7
	ccf                                                  ; $3019 : $3f
	ld h, $cd                                                  ; $301a : $26, $cd
	ex af, af'                                                  ; $301c : $08
	inc de                                                  ; $301d : $13
	ld h, $cd                                                  ; $301e : $26, $cd
	ex af, af'                                                  ; $3020 : $08
	inc de                                                  ; $3021 : $13
	rst $08                                                  ; $3022 : $cf
	ld h, $cd                                                  ; $3023 : $26, $cd
	ld h, a                                                  ; $3025 : $67
	ld (hl), b                                                  ; $3026 : $70
	sub $98                                                  ; $3027 : $d6, $98
	ld h, $cd                                                  ; $3029 : $26, $cd
	ld h, a                                                  ; $302b : $67
	halt                                                  ; $302c : $76
	adc a, (hl)                                                  ; $302d : $8e
	rra                                                  ; $302e : $1f
	ld h, $cd                                                  ; $302f : $26, $cd
	ld l, b                                                  ; $3031 : $68
	dec e                                                  ; $3032 : $1d
	ld l, (hl)                                                  ; $3033 : $6e
	ld (hl), e                                                  ; $3034 : $73
	ld h, $cd                                                  ; $3035 : $26, $cd
	or (hl)                                                  ; $3037 : $b6
	dec e                                                  ; $3038 : $1d
	rst $08                                                  ; $3039 : $cf
	ld h, $d1                                                  ; $303a : $26, $d1
	ld d, e                                                  ; $303c : $53
	rst $08                                                  ; $303d : $cf
	ld h, $e7                                                  ; $303e : $26, $e7
	ld h, d                                                  ; $3040 : $62
	ccf                                                  ; $3041 : $3f
	ld h, $e7                                                  ; $3042 : $26, $e7
	ld h, d                                                  ; $3044 : $62
	ld ($e726), a                                                  ; $3045 : $32, $26, $e7
	ld h, d                                                  ; $3048 : $62
	inc a                                                  ; $3049 : $3c
	ld h, $e7                                                  ; $304a : $26, $e7
	ld h, d                                                  ; $304c : $62
	ld l, b                                                  ; $304d : $68
	pop hl                                                  ; $304e : $e1
	jr z, br_02_30b4                                                  ; $304f : $28, $63

	and e                                                  ; $3051 : $a3
	cp a                                                  ; $3052 : $bf
	add hl, hl                                                  ; $3053 : $29
	ld e, $33                                                  ; $3054 : $1e, $33
	cpl                                                  ; $3056 : $2f
	add hl, hl                                                  ; $3057 : $29
	dec e                                                  ; $3058 : $1d
	sbc a, e                                                  ; $3059 : $9b
	add hl, hl                                                  ; $305a : $29
	ld e, $6e                                                  ; $305b : $1e, $6e
	ld b, e                                                  ; $305d : $43
	adc a, l                                                  ; $305e : $8d
	add hl, hl                                                  ; $305f : $29
	ld l, $13                                                  ; $3060 : $2e, $13
	add hl, hl                                                  ; $3062 : $29
	ccf                                                  ; $3063 : $3f
	add hl, hl                                                  ; $3064 : $29
	pop hl                                                  ; $3065 : $e1
	add hl, hl                                                  ; $3066 : $29
	ld l, b                                                  ; $3067 : $68
	pop hl                                                  ; $3068 : $e1
	add hl, hl                                                  ; $3069 : $29
	ld (hl), a                                                  ; $306a : $77
	dec bc                                                  ; $306b : $0b
	add hl, hl                                                  ; $306c : $29
	ld (hl), a                                                  ; $306d : $77
	jp pe, $e4f3                                                  ; $306e : $ea, $f3, $e4
	ld (bc), a                                                  ; $3071 : $02
	ld l, h                                                  ; $3072 : $6c
	sbc a, b                                                  ; $3073 : $98
	add hl, hl                                                  ; $3074 : $29
	call po, Call_02_0868                                                  ; $3075 : $e4, $68, $08
	rst $18                                                  ; $3078 : $df
	add hl, hl                                                  ; $3079 : $29
	call po, Call_02_0d68                                                  ; $307a : $e4, $68, $0d
	ld ($e429), a                                                  ; $307d : $32, $29, $e4
	ld l, b                                                  ; $3080 : $68
	dec c                                                  ; $3081 : $0d
	inc a                                                  ; $3082 : $3c
	add hl, hl                                                  ; $3083 : $29
	call po, $6168                                                  ; $3084 : $e4, $68, $61
	ex af, af'                                                  ; $3087 : $08
	add hl, hl                                                  ; $3088 : $29
	adc a, a                                                  ; $3089 : $8f
	dec c                                                  ; $308a : $0d
	add hl, hl                                                  ; $308b : $29
	adc a, (hl)                                                  ; $308c : $8e
	rra                                                  ; $308d : $1f
	add hl, hl                                                  ; $308e : $29
	sub d                                                  ; $308f : $92
	ld (hl), e                                                  ; $3090 : $73
	add hl, hl                                                  ; $3091 : $29
	call c, $e829                                                  ; $3092 : $dc, $29, $e8
	adc a, a                                                  ; $3095 : $8f
	add hl, hl                                                  ; $3096 : $29
	ex de, hl                                                  ; $3097 : $eb
	jr c, br_02_30c5                                                  ; $3098 : $38, $2b

	call pe, $59f3                                                  ; $309a : $ec, $f3, $59
	or b                                                  ; $309d : $b0
	inc de                                                  ; $309e : $13
	dec hl                                                  ; $309f : $2b
	call pe, $c3f3                                                  ; $30a0 : $ec, $f3, $c3
	and $cc                                                  ; $30a3 : $e6, $cc
	dec hl                                                  ; $30a5 : $2b
	call pe, $caf3                                                  ; $30a6 : $ec, $f3, $ca
	sub c                                                  ; $30a9 : $91
	ex (sp), hl                                                  ; $30aa : $e3
	dec hl                                                  ; $30ab : $2b
	ld c, $33                                                  ; $30ac : $0e, $33
	dec hl                                                  ; $30ae : $2b
	ld c, $88                                                  ; $30af : $0e, $88
	dec hl                                                  ; $30b1 : $2b
	ld l, (hl)                                                  ; $30b2 : $6e
	ld (hl), e                                                  ; $30b3 : $73

br_02_30b4:
	dec hl                                                  ; $30b4 : $2b
	sub (hl)                                                  ; $30b5 : $96
	cpl                                                  ; $30b6 : $2f
	dec hl                                                  ; $30b7 : $2b
	sbc a, b                                                  ; $30b8 : $98
	ccf                                                  ; $30b9 : $3f

br_02_30ba:
	dec hl                                                  ; $30ba : $2b
	sbc a, d                                                  ; $30bb : $9a
	and e                                                  ; $30bc : $a3
	cpl                                                  ; $30bd : $2f
	dec hl                                                  ; $30be : $2b
	sbc a, d                                                  ; $30bf : $9a
	and (hl)                                                  ; $30c0 : $a6
	adc a, (hl)                                                  ; $30c1 : $8e
	rra                                                  ; $30c2 : $1f
	dec hl                                                  ; $30c3 : $2b

br_02_30c4:
	sbc a, (hl)                                                  ; $30c4 : $9e

br_02_30c5:
	ld l, (hl)                                                  ; $30c5 : $6e
	dec d                                                  ; $30c6 : $15
	rst $18                                                  ; $30c7 : $df
	dec hl                                                  ; $30c8 : $2b
	sbc a, (hl)                                                  ; $30c9 : $9e
	ld (hl), e                                                  ; $30ca : $73
	dec hl                                                  ; $30cb : $2b
	jp pe, $612e                                                  ; $30cc : $ea, $2e, $61
	ex (sp), hl                                                  ; $30cf : $e3

br_02_30d0:
	ld l, $61                                                  ; $30d0 : $2e, $61
	call c, $632e                                                  ; $30d2 : $dc, $2e, $63
	ld l, $6e                                                  ; $30d5 : $2e, $6e
	rra                                                  ; $30d7 : $1f
	ld l, $6e                                                  ; $30d8 : $2e, $6e
	inc sp                                                  ; $30da : $33

br_02_30db:
	ld l, $6e                                                  ; $30db : $2e, $6e
	ld c, c                                                  ; $30dd : $49
	and $b6                                                  ; $30de : $e6, $b6
	ld a, $bf                                                  ; $30e0 : $3e, $bf
	ld l, $6d                                                  ; $30e2 : $2e, $6d

br_02_30e4:
	dec d                                                  ; $30e4 : $15
	ld l, $6d                                                  ; $30e5 : $2e, $6d
	jp pe, $832e                                                  ; $30e7 : $ea, $2e, $83
	ld (hl), a                                                  ; $30ea : $77

br_02_30eb:
	dec sp                                                  ; $30eb : $3b
	rst $08                                                  ; $30ec : $cf
	ld l, $a6                                                  ; $30ed : $2e, $a6
	adc a, (hl)                                                  ; $30ef : $8e
	rra                                                  ; $30f0 : $1f
	ld l, $a8                                                  ; $30f1 : $2e, $a8
	inc c                                                  ; $30f3 : $0c
	sbc a, $af                                                  ; $30f4 : $de, $af
	ld a, $cf                                                  ; $30f6 : $3e, $cf
	ld a, $cf                                                  ; $30f8 : $3e, $cf
	scf                                                  ; $30fa : $37
	inc sp                                                  ; $30fb : $33
	ld a, $cd                                                  ; $30fc : $3e, $cd
	call pe, Call_02_1530                                                  ; $30fe : $ec, $30, $15
	jr nc, br_02_30e4                                                  ; $3101 : $30, $e1

	ld (hl), e                                                  ; $3103 : $73
	jr nc, br_02_30c5                                                  ; $3104 : $30, $bf

	jr nc, br_02_30ba                                                  ; $3106 : $30, $b2

	cp (hl)                                                  ; $3108 : $be
	ld l, (hl)                                                  ; $3109 : $6e
	ld c, a                                                  ; $310a : $4f
	jr nc, br_02_30c4                                                  ; $310b : $30, $b7

	jp pe, $bd30                                                  ; $310d : $ea, $30, $bd
	ld e, a                                                  ; $3110 : $5f

br_02_3111:
	jr nc, br_02_30d0                                                  ; $3111 : $30, $bd

	ld e, a                                                  ; $3113 : $5f
	inc c                                                  ; $3114 : $0c
	jr nc, -$43                                                  ; $3115 : $30, $bd

	ld e, (hl)                                                  ; $3117 : $5e

br_02_3118:
	ld e, (hl)                                                  ; $3118 : $5e
	ld h, b                                                  ; $3119 : $60
	ex (sp), hl                                                  ; $311a : $e3
	ccf                                                  ; $311b : $3f
	jr nc, br_02_30db                                                  ; $311c : $30, $bd

	ld e, (hl)                                                  ; $311e : $5e
	ld e, (hl)                                                  ; $311f : $5e
	ld h, b                                                  ; $3120 : $60
	ex (sp), hl                                                  ; $3121 : $e3
	inc a                                                  ; $3122 : $3c
	jr nc, br_02_30eb                                                  ; $3123 : $30, $c6

	dec sp                                                  ; $3125 : $3b
	jr nc, -$3a                                                  ; $3126 : $30, $c6

	ld a, (hl)                                                  ; $3128 : $7e
	xor a                                                  ; $3129 : $af
	jr nc, -$33                                                  ; $312a : $30, $cd

	di                                                  ; $312c : $f3
	ld l, b                                                  ; $312d : $68
	ld h, $3c                                                  ; $312e : $26, $3c
	jr nc, -$33                                                  ; $3130 : $30, $cd

	dec sp                                                  ; $3132 : $3b
	jr nc, -$33                                                  ; $3133 : $30, $cd

	dec sp                                                  ; $3135 : $3b
	adc a, a                                                  ; $3136 : $8f
	jr nc, br_02_3118                                                  ; $3137 : $30, $df

	jr nc, br_02_3111                                                  ; $3139 : $30, $d6

	adc a, (hl)                                                  ; $313b : $8e
	rra                                                  ; $313c : $1f
	ld sp, $3159                                                  ; $313d : $31, $59, $31
	ld e, c                                                  ; $3140 : $59
	di                                                  ; $3141 : $f3
	ld l, a                                                  ; $3142 : $6f
	ld sp, $ac76                                                  ; $3143 : $31, $76, $ac
	ccf                                                  ; $3146 : $3f
	ld sp, $9e97                                                  ; $3147 : $31, $97, $9e
	ld e, $af                                                  ; $314a : $1e, $af
	ld sp, $9e98                                                  ; $314c : $31, $98, $9e
	ld b, (hl)                                                  ; $314f : $46
	rra                                                  ; $3150 : $1f
	ld sp, $ea9c                                                  ; $3151 : $31, $9c, $ea
	call $4f3e                                                  ; $3154 : $cd, $3e, $4f
	ld sp, $02e6                                                  ; $3157 : $31, $e6, $02
	sbc a, e                                                  ; $315a : $9b
	ld ($3fe1), a                                                  ; $315b : $32, $e1, $3f
	ld ($3ce1), a                                                  ; $315e : $32, $e1, $3c
	ld ($986c), a                                                  ; $3161 : $32, $6c, $98
	ld ($9b6d), a                                                  ; $3164 : $32, $6d, $9b
	ld ($339f), a                                                  ; $3167 : $32, $9f, $33
	rra                                                  ; $316a : $1f
	ld a, $1e                                                  ; $316b : $3e, $1e
	rst $08                                                  ; $316d : $cf
	ld a, $1e                                                  ; $316e : $3e, $1e
	rra                                                  ; $3170 : $1f
	ld a, $1e                                                  ; $3171 : $3e, $1e
	inc e                                                  ; $3173 : $1c
	ld a, $1e                                                  ; $3174 : $3e, $1e
	xor d                                                  ; $3176 : $aa
	sub $08                                                  ; $3177 : $d6, $08
	ld (hl), $44                                                  ; $3179 : $36, $44
	scf                                                  ; $317b : $37
	ld (hl), $e1                                                  ; $317c : $36, $e1
	ld e, l                                                  ; $317e : $5d
	ld (hl), $e1                                                  ; $317f : $36, $e1
	ld e, l                                                  ; $3181 : $5d
	inc sp                                                  ; $3182 : $33
	adc a, a                                                  ; $3183 : $8f
	ld (hl), $e1                                                  ; $3184 : $36, $e1
	ld e, l                                                  ; $3186 : $5d
	inc sp                                                  ; $3187 : $33
	adc a, l                                                  ; $3188 : $8d
	ld e, a                                                  ; $3189 : $5f
	ld (hl), $8c                                                  ; $318a : $36, $8c
	out ($68), a                                                  ; $318c : $d3, $68
	ld (hl), $c3                                                  ; $318e : $36, $c3
	add a, l                                                  ; $3190 : $85
	sbc a, (hl)                                                  ; $3191 : $9e
	add a, e                                                  ; $3192 : $83
	cp a                                                  ; $3193 : $bf
	scf                                                  ; $3194 : $37
	ld sp, $61db                                                  ; $3195 : $31, $db, $61
	scf                                                  ; $3198 : $37
	ld sp, $61db                                                  ; $3199 : $31, $db, $61
	rlca                                                  ; $319c : $07
	scf                                                  ; $319d : $37
	ld sp, $98db                                                  ; $319e : $31, $db, $98
	scf                                                  ; $31a1 : $37
	ld sp, $98db                                                  ; $31a2 : $31, $db, $98
	rst $08                                                  ; $31a5 : $cf
	scf                                                  ; $31a6 : $37
	ld a, $43                                                  ; $31a7 : $3e, $43
	adc a, l                                                  ; $31a9 : $8d
	scf                                                  ; $31aa : $37
	ld a, $43                                                  ; $31ab : $3e, $43
	adc a, l                                                  ; $31ad : $8d
	rlca                                                  ; $31ae : $07
	scf                                                  ; $31af : $37
	ld a, $43                                                  ; $31b0 : $3e, $43
	adc a, l                                                  ; $31b2 : $8d
	rst $08                                                  ; $31b3 : $cf
	scf                                                  ; $31b4 : $37
	ld a, ($8d50)                                                  ; $31b5 : $3a, $50, $8d
	scf                                                  ; $31b8 : $37
	ld a, $70                                                  ; $31b9 : $3e, $70
	sub $98                                                  ; $31bb : $d6, $98
	scf                                                  ; $31bd : $37
	ld l, a                                                  ; $31be : $6f
	ld a, $85                                                  ; $31bf : $3e, $85
	ld l, l                                                  ; $31c1 : $6d
	add a, e                                                  ; $31c2 : $83
	jp pe, $6e37                                                  ; $31c3 : $ea, $37, $6e
	ld b, (hl)                                                  ; $31c6 : $46
	add a, b                                                  ; $31c7 : $80
	out ($cf), a                                                  ; $31c8 : $d3, $cf
	scf                                                  ; $31ca : $37
	ld l, (hl)                                                  ; $31cb : $6e
	or b                                                  ; $31cc : $b0
	ret po                                                  ; $31cd : $e0

	dec a                                                  ; $31ce : $3d
	ld e, a                                                  ; $31cf : $5f
	scf                                                  ; $31d0 : $37
	ld (hl), e                                                  ; $31d1 : $73
	adc a, $43                                                  ; $31d2 : $ce, $43
	or e                                                  ; $31d4 : $b3
	scf                                                  ; $31d5 : $37
	call po, $e737                                                  ; $31d6 : $e4, $37, $e7
	ld l, h                                                  ; $31d9 : $6c
	di                                                  ; $31da : $f3
	xor e                                                  ; $31db : $ab
	inc a                                                  ; $31dc : $3c
	ld (hl), e                                                  ; $31dd : $73
	jp pe, $4e3e                                                  ; $31de : $ea, $3e, $4e
	nop                                                  ; $31e1 : $00
	ld a, (hl)                                                  ; $31e2 : $7e
	ld b, e                                                  ; $31e3 : $43
	cpl                                                  ; $31e4 : $2f
	ld a, $4e                                                  ; $31e5 : $3e, $4e
	dec bc                                                  ; $31e7 : $0b
	jp pe, $3e9f                                                  ; $31e8 : $ea, $9f, $3e
	ld b, e                                                  ; $31eb : $43
	or b                                                  ; $31ec : $b0
	ld (hl), d                                                  ; $31ed : $72
	ld a, $43                                                  ; $31ee : $3e, $43
	or b                                                  ; $31f0 : $b0
	ld (hl), d                                                  ; $31f1 : $72
	rst $08                                                  ; $31f2 : $cf
	ld a, $46                                                  ; $31f3 : $3e, $46
	pop hl                                                  ; $31f5 : $e1
	or b                                                  ; $31f6 : $b0
	adc a, l                                                  ; $31f7 : $8d
	rst $08                                                  ; $31f8 : $cf
	ld a, $46                                                  ; $31f9 : $3e, $46
	pop hl                                                  ; $31fb : $e1
	or b                                                  ; $31fc : $b0
	sub $98                                                  ; $31fd : $d6, $98
	ld a, $4a                                                  ; $31ff : $3e, $4a
	dec sp                                                  ; $3201 : $3b
	sbc a, e                                                  ; $3202 : $9b
	rst $08                                                  ; $3203 : $cf
	ld a, $4a                                                  ; $3204 : $3e, $4a
	ld l, e                                                  ; $3206 : $6b
	ccf                                                  ; $3207 : $3f
	ld a, $4a                                                  ; $3208 : $3e, $4a
	sub $3c                                                  ; $320a : $d6, $3c
	jr c, br_02_321c                                                  ; $320c : $38, $0e

	ld b, e                                                  ; $320e : $43

br_02_320f:
	ld a, a                                                  ; $320f : $7f

br_02_3210:
	jr c, $10                                                  ; $3210 : $38, $10

	call po, $43ae                                                  ; $3212 : $e4, $ae, $43
	adc a, l                                                  ; $3215 : $8d
	jr c, $2f                                                  ; $3216 : $38, $2f

	jr c, br_02_323a                                                  ; $3218 : $38, $20

	adc a, (hl)                                                  ; $321a : $8e

br_02_321b:
	inc de                                                  ; $321b : $13

br_02_321c:
	or e                                                  ; $321c : $b3
	cpl                                                  ; $321d : $2f
	jr c, $23                                                  ; $321e : $38, $23

	cpl                                                  ; $3220 : $2f
	jr c, $29                                                  ; $3221 : $38, $29

	cp a                                                  ; $3223 : $bf
	jr c, $29                                                  ; $3224 : $38, $29

	adc a, $33                                                  ; $3226 : $ce, $33
	ld (hl), e                                                  ; $3228 : $73
	exx                                                  ; $3229 : $d9
	adc a, a                                                  ; $322a : $8f
	jr c, $2c                                                  ; $322b : $38, $2c

	jr c, br_02_3210                                                  ; $322d : $38, $e1

	ld l, b                                                  ; $322f : $68
	ccf                                                  ; $3230 : $3f
	jr c, -$1f                                                  ; $3231 : $38, $e1

	halt                                                  ; $3233 : $76
	push bc                                                  ; $3234 : $c5
	di                                                  ; $3235 : $f3
	dec d                                                  ; $3236 : $15

br_02_3237:
	ex af, af'                                                  ; $3237 : $08
	add a, e                                                  ; $3238 : $83
	ld a, a                                                  ; $3239 : $7f

br_02_323a:
	jr c, -$65                                                  ; $323a : $38, $9b

	call po, $6c9e                                                  ; $323c : $e4, $9e, $6c

br_02_323f:
	jr c, -$2d                                                  ; $323f : $38, $d3

	cp a                                                  ; $3241 : $bf

br_02_3242:
	jr c, -$2d                                                  ; $3242 : $38, $d3

	or e                                                  ; $3244 : $b3
	cpl                                                  ; $3245 : $2f
	jr c, br_02_321b                                                  ; $3246 : $38, $d3

	cp d                                                  ; $3248 : $ba
	or (hl)                                                  ; $3249 : $b6
	jp $d638                                                  ; $324a : $c3, $38, $d6


	or e                                                  ; $324d : $b3
	jr c, br_02_3237                                                  ; $324e : $38, $e7

	ld l, e                                                  ; $3250 : $6b
	sbc a, b                                                  ; $3251 : $98
	call po, $df38                                                  ; $3252 : $e4, $38, $df
	jr c, br_02_3242                                                  ; $3255 : $38, $eb

	jp pe, $3ce4                                                  ; $3257 : $ea, $e4, $3c

br_02_325a:
	ld a, ($3b62)                                                  ; $325a : $3a, $62, $3b
	call po, Call_02_3a6c                                                  ; $325d : $e4, $6c, $3a
	ld h, a                                                  ; $3260 : $67
	sbc a, (hl)                                                  ; $3261 : $9e
	ld e, $63                                                  ; $3262 : $1e, $63
	ld a, $5e                                                  ; $3264 : $3e, $5e
	ld h, b                                                  ; $3266 : $60
	ld a, a                                                  ; $3267 : $7f
	ld a, $5e                                                  ; $3268 : $3e, $5e
	ld h, b                                                  ; $326a : $60
	exx                                                  ; $326b : $d9
	cp a                                                  ; $326c : $bf
	ld a, $5e                                                  ; $326d : $3e, $5e
	ld h, (hl)                                                  ; $326f : $66
	ld (hl), b                                                  ; $3270 : $70
	out ($b0), a                                                  ; $3271 : $d3, $b0
	ld a, a                                                  ; $3273 : $7f
	ld a, $5e                                                  ; $3274 : $3e, $5e
	ld h, (hl)                                                  ; $3276 : $66
	rst $20                                                  ; $3277 : $e7
	rlca                                                  ; $3278 : $07
	jr c, br_02_325a                                                  ; $3279 : $38, $df

	dec sp                                                  ; $327b : $3b
	rrca                                                  ; $327c : $0f
	dec sp                                                  ; $327d : $3b
	ld h, c                                                  ; $327e : $61
	di                                                  ; $327f : $f3
	push de                                                  ; $3280 : $d5
	ccf                                                  ; $3281 : $3f
	dec sp                                                  ; $3282 : $3b
	ld ($613b), a                                                  ; $3283 : $32, $3b, $61
	ret                                                  ; $3286 : $c9


	adc a, a                                                  ; $3287 : $8f
	dec sp                                                  ; $3288 : $3b
	ld h, e                                                  ; $3289 : $63
	dec sp                                                  ; $328a : $3b
	ld h, e                                                  ; $328b : $63
	di                                                  ; $328c : $f3
	djnz br_02_320f                                                  ; $328d : $10, $80
	ld a, a                                                  ; $328f : $7f
	dec sp                                                  ; $3290 : $3b
	sbc a, h                                                  ; $3291 : $9c
	ld l, c                                                  ; $3292 : $69
	adc a, a                                                  ; $3293 : $8f
	dec sp                                                  ; $3294 : $3b
	and $ad                                                  ; $3295 : $e6, $ad
	ld l, b                                                  ; $3297 : $68
	pop hl                                                  ; $3298 : $e1
	inc a                                                  ; $3299 : $3c
	djnz br_02_323f                                                  ; $329a : $10, $a3
	inc a                                                  ; $329c : $3c
	djnz -$46                                                  ; $329d : $10, $ba
	call po, $df38                                                  ; $329f : $e4, $38, $df
	inc a                                                  ; $32a2 : $3c
	ex (sp), hl                                                  ; $32a3 : $e3
	ld l, (hl)                                                  ; $32a4 : $6e
	ld c, c                                                  ; $32a5 : $49
	inc a                                                  ; $32a6 : $3c
	sbc a, d                                                  ; $32a7 : $9a
	ld d, b                                                  ; $32a8 : $50
	pop hl                                                  ; $32a9 : $e1
	and $cf                                                  ; $32aa : $e6, $cf
	inc a                                                  ; $32ac : $3c
	ret nc                                                  ; $32ad : $d0

	ret po                                                  ; $32ae : $e0

	halt                                                  ; $32af : $76
	push bc                                                  ; $32b0 : $c5
	ld ($d03c), a                                                  ; $32b1 : $32, $3c, $d0
	out ($cf), a                                                  ; $32b4 : $d3, $cf
	inc a                                                  ; $32b6 : $3c
	out ($e7), a                                                  ; $32b7 : $d3, $e7
	ex af, af'                                                  ; $32b9 : $08
	ld h, c                                                  ; $32ba : $61
	rrca                                                  ; $32bb : $0f
	inc a                                                  ; $32bc : $3c
	exx                                                  ; $32bd : $d9
	add a, (hl)                                                  ; $32be : $86
	rrca                                                  ; $32bf : $0f
	dec a                                                  ; $32c0 : $3d
	dec a                                                  ; $32c1 : $3d
	rra                                                  ; $32c2 : $1f
	dec a                                                  ; $32c3 : $3d
	ld e, $cf                                                  ; $32c4 : $1e, $cf
	dec a                                                  ; $32c6 : $3d
	ld d, (hl)                                                  ; $32c7 : $56
	sbc a, d                                                  ; $32c8 : $9a
	ld h, b                                                  ; $32c9 : $60
	ld a, $6e                                                  ; $32ca : $3e, $6e
	rla                                                  ; $32cc : $17
	jr c, $0f                                                  ; $32cd : $38, $0f

	ld a, $6a                                                  ; $32cf : $3e, $6a
	ld e, e                                                  ; $32d1 : $5b
	dec c                                                  ; $32d2 : $0d
	inc a                                                  ; $32d3 : $3c
	ld a, $6b                                                  ; $32d4 : $3e, $6b
	sbc a, d                                                  ; $32d6 : $9a
	jr nc, -$74                                                  ; $32d7 : $30, $8c

	ld a, $70                                                  ; $32d9 : $3e, $70
	xor c                                                  ; $32db : $a9
	or b                                                  ; $32dc : $b0
	out ($3e), a                                                  ; $32dd : $d3, $3e
	ld (hl), b                                                  ; $32df : $70
	xor c                                                  ; $32e0 : $a9
	or b                                                  ; $32e1 : $b0
	sub $98                                                  ; $32e2 : $d6, $98
	ld a, $73                                                  ; $32e4 : $3e, $73
	adc a, l                                                  ; $32e6 : $8d
	ld a, $73                                                  ; $32e7 : $3e, $73
	cp a                                                  ; $32e9 : $bf
	ld a, $73                                                  ; $32ea : $3e, $73
	or e                                                  ; $32ec : $b3
	call $733e                                                  ; $32ed : $cd, $3e, $73
	cp (hl)                                                  ; $32f0 : $be
	xor a                                                  ; $32f1 : $af
	ld a, $76                                                  ; $32f2 : $3e, $76
	inc hl                                                  ; $32f4 : $23
	add a, c                                                  ; $32f5 : $81
	ccf                                                  ; $32f6 : $3f
	ld a, $89                                                  ; $32f7 : $3e, $89
	ex (sp), hl                                                  ; $32f9 : $e3
	rst $08                                                  ; $32fa : $cf
	ld a, $90                                                  ; $32fb : $3e, $90
	call po, Call_02_3fa7                                                  ; $32fd : $e4, $a7, $3f
	ld a, $91                                                  ; $3300 : $3e, $91
	ld d, b                                                  ; $3302 : $50
	adc a, (hl)                                                  ; $3303 : $8e
	inc de                                                  ; $3304 : $13
	ld a, $91                                                  ; $3305 : $3e, $91
	ld d, b                                                  ; $3307 : $50
	adc a, (hl)                                                  ; $3308 : $8e
	inc de                                                  ; $3309 : $13
	rst $08                                                  ; $330a : $cf
	ld a, $91                                                  ; $330b : $3e, $91
	or e                                                  ; $330d : $b3
	sub $98                                                  ; $330e : $d6, $98
	ld a, $91                                                  ; $3310 : $3e, $91
	or e                                                  ; $3312 : $b3
	exx                                                  ; $3313 : $d9
	cp (hl)                                                  ; $3314 : $be

Jump_02_3315:
	xor a                                                  ; $3315 : $af
	ld a, $93                                                  ; $3316 : $3e, $93
	ld e, $6d                                                  ; $3318 : $1e, $6d
	ld l, (hl)                                                  ; $331a : $6e
	ld (hl), e                                                  ; $331b : $73
	ld a, $93                                                  ; $331c : $3e, $93
	ld e, $6d                                                  ; $331e : $1e, $6d
	ld l, (hl)                                                  ; $3320 : $6e
	ld (hl), e                                                  ; $3321 : $73
	rst $08                                                  ; $3322 : $cf
	ld a, $96                                                  ; $3323 : $3e, $96
	call $963e                                                  ; $3325 : $cd, $3e, $96
	call Call_02_3ecf                                                  ; $3328 : $cd, $cf, $3e
	sbc a, c                                                  ; $332b : $99
	adc a, $33                                                  ; $332c : $ce, $33
	ld (hl), e                                                  ; $332e : $73
	exx                                                  ; $332f : $d9
	adc a, a                                                  ; $3330 : $8f
	ld a, $99                                                  ; $3331 : $3e, $99
	push de                                                  ; $3333 : $d5
	dec sp                                                  ; $3334 : $3b
	call po, $3e61                                                  ; $3335 : $e4, $61, $3e
	sbc a, d                                                  ; $3338 : $9a
	ex af, af'                                                  ; $3339 : $08
	inc hl                                                  ; $333a : $23
	cpl                                                  ; $333b : $2f
	ld a, $9a                                                  ; $333c : $3e, $9a
	dec sp                                                  ; $333e : $3b
	ld h, e                                                  ; $333f : $63
	add a, c                                                  ; $3340 : $81
	ccf                                                  ; $3341 : $3f
	ld a, $9a                                                  ; $3342 : $3e, $9a
	dec sp                                                  ; $3344 : $3b
	ld l, (hl)                                                  ; $3345 : $6e
	ld b, e                                                  ; $3346 : $43
	adc a, l                                                  ; $3347 : $8d
	dec c                                                  ; $3348 : $0d
	ld l, c                                                  ; $3349 : $69
	adc a, a                                                  ; $334a : $8f

Call_02_334b:
	ld a, $9a                                                  ; $334b : $3e, $9a
	ld a, c                                                  ; $334d : $79
	inc hl                                                  ; $334e : $23
	cpl                                                  ; $334f : $2f
	ld a, $9a                                                  ; $3350 : $3e, $9a
	ld a, c                                                  ; $3352 : $79
	inc hl                                                  ; $3353 : $23
	rst $08                                                  ; $3354 : $cf
	ld a, $9a                                                  ; $3355 : $3e, $9a
	ld a, c                                                  ; $3357 : $79
	or b                                                  ; $3358 : $b0
	sub $98                                                  ; $3359 : $d6, $98
	rst $08                                                  ; $335b : $cf
	ld a, $9a                                                  ; $335c : $3e, $9a
	ld a, c                                                  ; $335e : $79
	or e                                                  ; $335f : $b3
	cp a                                                  ; $3360 : $bf
	ld a, $9a                                                  ; $3361 : $3e, $9a
	ld a, c                                                  ; $3363 : $79
	or e                                                  ; $3364 : $b3
	cp h                                                  ; $3365 : $bc
	ld a, $9a                                                  ; $3366 : $3e, $9a
	sbc a, e                                                  ; $3368 : $9b
	rst $18                                                  ; $3369 : $df
	ld a, $9a                                                  ; $336a : $3e, $9a
	sbc a, h                                                  ; $336c : $9c
	ld ($9a3e), a                                                  ; $336d : $32, $3e, $9a
	or e                                                  ; $3370 : $b3
	call z, $9a3e                                                  ; $3371 : $cc, $3e, $9a
	and $7c                                                  ; $3374 : $e6, $7c
	ld l, c                                                  ; $3376 : $69
	adc a, a                                                  ; $3377 : $8f
	ld a, $9d                                                  ; $3378 : $3e, $9d
	jr c, br_02_33a8                                                  ; $337a : $38, $2c

	ld a, $9d                                                  ; $337c : $3e, $9d
	ld l, b                                                  ; $337e : $68
	dec e                                                  ; $337f : $1d
	ld a, $9d                                                  ; $3380 : $3e, $9d
	or b                                                  ; $3382 : $b0
	ld a, $a3                                                  ; $3383 : $3e, $a3
	ld c, a                                                  ; $3385 : $4f
	ld e, a                                                  ; $3386 : $5f
	adc a, a                                                  ; $3387 : $8f
	ld b, b                                                  ; $3388 : $40
	inc de                                                  ; $3389 : $13
	ld b, b                                                  ; $338a : $40
	inc de                                                  ; $338b : $13
	rst $08                                                  ; $338c : $cf
	ld b, b                                                  ; $338d : $40
	ld d, $8e                                                  ; $338e : $16, $8e
	rra                                                  ; $3390 : $1f
	ld b, b                                                  ; $3391 : $40
	dec e                                                  ; $3392 : $1d
	sbc a, e                                                  ; $3393 : $9b
	ld h, e                                                  ; $3394 : $63
	rst $08                                                  ; $3395 : $cf
	ld b, b                                                  ; $3396 : $40
	dec e                                                  ; $3397 : $1d
	sbc a, e                                                  ; $3398 : $9b
	jp pe, $5b40                                                  ; $3399 : $ea, $40, $5b
	jr c, br_02_33f1                                                  ; $339c : $38, $53

	ld l, l                                                  ; $339e : $6d
	ld b, b                                                  ; $339f : $40
	ld l, e                                                  ; $33a0 : $6b
	ld b, b                                                  ; $33a1 : $40
	ld l, e                                                  ; $33a2 : $6b
	ret po                                                  ; $33a3 : $e0

	ex af, af'                                                  ; $33a4 : $08
	ex (sp), hl                                                  ; $33a5 : $e3
	rst $08                                                  ; $33a6 : $cf
	ld b, b                                                  ; $33a7 : $40

br_02_33a8:
	ld l, l                                                  ; $33a8 : $6d
	ld e, a                                                  ; $33a9 : $5f
	ld b, b                                                  ; $33aa : $40
	ld (hl), c                                                  ; $33ab : $71
	sbc a, b                                                  ; $33ac : $98
	ld b, b                                                  ; $33ad : $40
	ld (hl), a                                                  ; $33ae : $77
	ld b, b                                                  ; $33af : $40
	ld (hl), a                                                  ; $33b0 : $77
	ld l, b                                                  ; $33b1 : $68
	pop hl                                                  ; $33b2 : $e1
	ld b, b                                                  ; $33b3 : $40
	ld (hl), a                                                  ; $33b4 : $77
	rst $08                                                  ; $33b5 : $cf
	ld b, b                                                  ; $33b6 : $40
	call po, $ea67                                                  ; $33b7 : $e4, $67, $ea
	ld b, b                                                  ; $33ba : $40
	call po, Call_02_3f68                                                  ; $33bb : $e4, $68, $3f
	ld b, b                                                  ; $33be : $40
	cp a                                                  ; $33bf : $bf
	ld b, b                                                  ; $33c0 : $40
	or e                                                  ; $33c1 : $b3
	add a, l                                                  ; $33c2 : $85
	ld (hl), $df                                                  ; $33c3 : $36, $df
	ld b, b                                                  ; $33c5 : $40
	cp (hl)                                                  ; $33c6 : $be
	ld c, a                                                  ; $33c7 : $4f
	ld b, b                                                  ; $33c8 : $40
	cp (hl)                                                  ; $33c9 : $be
	ld b, b                                                  ; $33ca : $40
	ld h, d                                                  ; $33cb : $62
	ld b, b                                                  ; $33cc : $40
	cp (hl)                                                  ; $33cd : $be
	ld b, (hl)                                                  ; $33ce : $46
	adc a, (hl)                                                  ; $33cf : $8e
	rra                                                  ; $33d0 : $1f
	ld b, b                                                  ; $33d1 : $40
	cp (hl)                                                  ; $33d2 : $be
	ld c, h                                                  ; $33d3 : $4c
	ld b, b                                                  ; $33d4 : $40
	cp h                                                  ; $33d5 : $bc
	ld l, (hl)                                                  ; $33d6 : $6e
	dec d                                                  ; $33d7 : $15
	out ($2f), a                                                  ; $33d8 : $d3, $2f
	ld b, b                                                  ; $33da : $40
	cp l                                                  ; $33db : $bd
	ld d, e                                                  ; $33dc : $53
	call $c140                                                  ; $33dd : $cd, $40, $c1
	ld l, h                                                  ; $33e0 : $6c
	call po, $cd40                                                  ; $33e1 : $e4, $40, $cd
	ld b, b                                                  ; $33e4 : $40
	call $403b                                                  ; $33e5 : $cd, $3b, $40
	call $df3c                                                  ; $33e8 : $cd, $3c, $df
	ld b, b                                                  ; $33eb : $40
	rst $18                                                  ; $33ec : $df
	ld b, b                                                  ; $33ed : $40
	push de                                                  ; $33ee : $d5
	dec sp                                                  ; $33ef : $3b
	ld b, b                                                  ; $33f0 : $40

br_02_33f1:
	rst $20                                                  ; $33f1 : $e7
	sbc a, e                                                  ; $33f2 : $9b
	ld l, l                                                  ; $33f3 : $6d
	ccf                                                  ; $33f4 : $3f
	ld b, d                                                  ; $33f5 : $42
	cp a                                                  ; $33f6 : $bf
	ld b, e                                                  ; $33f7 : $43
	dec c                                                  ; $33f8 : $0d
	ld d, e                                                  ; $33f9 : $53
	cp a                                                  ; $33fa : $bf
	ld b, e                                                  ; $33fb : $43
	dec c                                                  ; $33fc : $0d
	ld d, e                                                  ; $33fd : $53
	cp h                                                  ; $33fe : $bc
	ld b, e                                                  ; $33ff : $43
	dec c                                                  ; $3400 : $0d
	and $b3                                                  ; $3401 : $e6, $b3
	rst $08                                                  ; $3403 : $cf
	ld b, e                                                  ; $3404 : $43
	ret po                                                  ; $3405 : $e0

	cp (hl)                                                  ; $3406 : $be
	ld h, b                                                  ; $3407 : $60
	cp (hl)                                                  ; $3408 : $be
	xor a                                                  ; $3409 : $af
	ld b, e                                                  ; $340a : $43
	inc hl                                                  ; $340b : $23
	or b                                                  ; $340c : $b0
	ld a, a                                                  ; $340d : $7f
	ld b, e                                                  ; $340e : $43
	ld ($3243), a                                                  ; $340f : $32, $43, $32
	ld l, b                                                  ; $3412 : $68
	pop hl                                                  ; $3413 : $e1
	ld b, e                                                  ; $3414 : $43
	scf                                                  ; $3415 : $37
	ld b, e                                                  ; $3416 : $43
	dec a                                                  ; $3417 : $3d
	ld b, e                                                  ; $3418 : $43
	call po, Call_02_3f07                                                  ; $3419 : $e4, $07, $3f
	ld b, e                                                  ; $341c : $43
	add a, c                                                  ; $341d : $81
	ld l, b                                                  ; $341e : $68
	pop hl                                                  ; $341f : $e1
	ld b, e                                                  ; $3420 : $43
	cp b                                                  ; $3421 : $b8
	rst $08                                                  ; $3422 : $cf
	ld b, e                                                  ; $3423 : $43
	cp l                                                  ; $3424 : $bd
	ld h, a                                                  ; $3425 : $67
	ld l, (hl)                                                  ; $3426 : $6e
	or b                                                  ; $3427 : $b0
	sub $98                                                  ; $3428 : $d6, $98
	ld b, e                                                  ; $342a : $43
	cp l                                                  ; $342b : $bd
	ld h, a                                                  ; $342c : $67
	ld l, (hl)                                                  ; $342d : $6e
	or e                                                  ; $342e : $b3
	cp a                                                  ; $342f : $bf
	ld b, e                                                  ; $3430 : $43
	rst $20                                                  ; $3431 : $e7
	dec sp                                                  ; $3432 : $3b
	ld b, (hl)                                                  ; $3433 : $46
	ret po                                                  ; $3434 : $e0

	dec sp                                                  ; $3435 : $3b
	rst $08                                                  ; $3436 : $cf
	ld b, (hl)                                                  ; $3437 : $46
	ld e, $6c                                                  ; $3438 : $1e, $6c
	ld b, (hl)                                                  ; $343a : $46
	inc (hl)                                                  ; $343b : $34
	ld b, (hl)                                                  ; $343c : $46
	scf                                                  ; $343d : $37
	cpl                                                  ; $343e : $2f
	ld b, (hl)                                                  ; $343f : $46
	scf                                                  ; $3440 : $37
	cpl                                                  ; $3441 : $2f
	dec (hl)                                                  ; $3442 : $35
	sub c                                                  ; $3443 : $91
	ex (sp), hl                                                  ; $3444 : $e3
	ld a, $af                                                  ; $3445 : $3e, $af
	ld b, (hl)                                                  ; $3447 : $46
	scf                                                  ; $3448 : $37
	cpl                                                  ; $3449 : $2f
	add hl, sp                                                  ; $344a : $39
	ld c, a                                                  ; $344b : $4f
	inc (hl)                                                  ; $344c : $34
	sbc a, e                                                  ; $344d : $9b
	inc de                                                  ; $344e : $13
	ld b, (hl)                                                  ; $344f : $46
	ld c, l                                                  ; $3450 : $4d
	inc sp                                                  ; $3451 : $33
	adc a, a                                                  ; $3452 : $8f
	ld b, (hl)                                                  ; $3453 : $46
	ld c, l                                                  ; $3454 : $4d
	jp pe, $e146                                                  ; $3455 : $ea, $46, $e1
	ld b, (hl)                                                  ; $3458 : $46
	pop hl                                                  ; $3459 : $e1
	ld e, l                                                  ; $345a : $5d
	ld b, (hl)                                                  ; $345b : $46
	pop hl                                                  ; $345c : $e1
	ld e, l                                                  ; $345d : $5d
	ld l, b                                                  ; $345e : $68
	pop hl                                                  ; $345f : $e1
	ld b, (hl)                                                  ; $3460 : $46
	pop hl                                                  ; $3461 : $e1
	and $b3                                                  ; $3462 : $e6, $b3
	rst $08                                                  ; $3464 : $cf
	ld b, (hl)                                                  ; $3465 : $46
	jp po, $466f                                                  ; $3466 : $e2, $6f, $46
	ld (hl), a                                                  ; $3469 : $77
	ld b, (hl)                                                  ; $346a : $46
	adc a, a                                                  ; $346b : $8f
	ld b, (hl)                                                  ; $346c : $46
	add a, b                                                  ; $346d : $80
	add a, c                                                  ; $346e : $81
	ld h, b                                                  ; $346f : $60
	ld a, a                                                  ; $3470 : $7f
	ld b, (hl)                                                  ; $3471 : $46
	add a, d                                                  ; $3472 : $82
	ld b, (hl)                                                  ; $3473 : $46
	add a, a                                                  ; $3474 : $87
	ex af, af'                                                  ; $3475 : $08
	cpl                                                  ; $3476 : $2f
	ld b, (hl)                                                  ; $3477 : $46
	or e                                                  ; $3478 : $b3
	ld b, (hl)                                                  ; $3479 : $46
	or e                                                  ; $347a : $b3
	ret po                                                  ; $347b : $e0

	sbc a, (hl)                                                  ; $347c : $9e
	sbc a, a                                                  ; $347d : $9f
	ld b, (hl)                                                  ; $347e : $46
	or e                                                  ; $347f : $b3
	rst $08                                                  ; $3480 : $cf
	ld b, (hl)                                                  ; $3481 : $46
	push bc                                                  ; $3482 : $c5
	ld b, (hl)                                                  ; $3483 : $46
	call z, $8f69                                                  ; $3484 : $cc, $69, $8f
	ld b, (hl)                                                  ; $3487 : $46
	.db $dd                                                  ; $3488 : $dd
	inc a                                                  ; $3489 : $3c
	rst $18                                                  ; $348a : $df
	ld c, (hl)                                                  ; $348b : $4e
	add hl, hl                                                  ; $348c : $29
	or d                                                  ; $348d : $b2
	rst $08                                                  ; $348e : $cf
	ld b, a                                                  ; $348f : $47
	ld c, $1f                                                  ; $3490 : $0e, $1f
	ld b, a                                                  ; $3492 : $47
	ld c, $1c                                                  ; $3493 : $0e, $1c
	ld b, a                                                  ; $3495 : $47
	ex af, af'                                                  ; $3496 : $08
	inc hl                                                  ; $3497 : $23
	cp a                                                  ; $3498 : $bf
	inc c                                                  ; $3499 : $0c
	ld b, a                                                  ; $349a : $47
	dec c                                                  ; $349b : $0d
	ld b, a                                                  ; $349c : $47
	ld c, $9f                                                  ; $349d : $0e, $9f
	ld b, a                                                  ; $349f : $47
	inc sp                                                  ; $34a0 : $33
	rst $18                                                  ; $34a1 : $df
	ld b, a                                                  ; $34a2 : $47
	ld a, $8f                                                  ; $34a3 : $3e, $8f
	ld b, a                                                  ; $34a5 : $47
	ld l, (hl)                                                  ; $34a6 : $6e
	dec d                                                  ; $34a7 : $15
	rst $18                                                  ; $34a8 : $df
	ld b, a                                                  ; $34a9 : $47
	sub b                                                  ; $34aa : $90
	sub $8e                                                  ; $34ab : $d6, $8e
	rra                                                  ; $34ad : $1f
	ld b, a                                                  ; $34ae : $47
	sbc a, c                                                  ; $34af : $99
	cp a                                                  ; $34b0 : $bf
	ld b, a                                                  ; $34b1 : $47
	sbc a, e                                                  ; $34b2 : $9b
	jr c, $13                                                  ; $34b3 : $38, $13

	ld b, a                                                  ; $34b5 : $47
	sbc a, (hl)                                                  ; $34b6 : $9e
	adc a, a                                                  ; $34b7 : $8f
	ld b, a                                                  ; $34b8 : $47
	sbc a, (hl)                                                  ; $34b9 : $9e
	add a, e                                                  ; $34ba : $83
	cp a                                                  ; $34bb : $bf
	ld b, a                                                  ; $34bc : $47
	sbc a, (hl)                                                  ; $34bd : $9e
	add a, e                                                  ; $34be : $83
	cp h                                                  ; $34bf : $bc
	ld b, a                                                  ; $34c0 : $47
	sbc a, (hl)                                                  ; $34c1 : $9e
	adc a, h                                                  ; $34c2 : $8c
	ld b, a                                                  ; $34c3 : $47
	and $62                                                  ; $34c4 : $e6, $62
	ld b, a                                                  ; $34c6 : $47
	jp pe, $ea47                                                  ; $34c7 : $ea, $47, $ea
	ld l, b                                                  ; $34ca : $68
	pop hl                                                  ; $34cb : $e1
	di                                                  ; $34cc : $f3
	sub h                                                  ; $34cd : $94
	ld c, a                                                  ; $34ce : $4f
	ld c, c                                                  ; $34cf : $49
	pop hl                                                  ; $34d0 : $e1
	ld c, c                                                  ; $34d1 : $49
	ld (hl), a                                                  ; $34d2 : $77
	sbc a, (hl)                                                  ; $34d3 : $9e
	add a, (hl)                                                  ; $34d4 : $86
	adc a, (hl)                                                  ; $34d5 : $8e
	rra                                                  ; $34d6 : $1f
	ld c, c                                                  ; $34d7 : $49
	ld (hl), a                                                  ; $34d8 : $77
	sbc a, (hl)                                                  ; $34d9 : $9e
	adc a, h                                                  ; $34da : $8c
	ld c, c                                                  ; $34db : $49
	sub d                                                  ; $34dc : $92
	ld c, c                                                  ; $34dd : $49
	sub d                                                  ; $34de : $92
	rst $08                                                  ; $34df : $cf
	ld c, c                                                  ; $34e0 : $49
	sbc a, l                                                  ; $34e1 : $9d
	ld c, c                                                  ; $34e2 : $49
	sbc a, l                                                  ; $34e3 : $9d
	ret po                                                  ; $34e4 : $e0

	rlca                                                  ; $34e5 : $07
	ld a, a                                                  ; $34e6 : $7f
	ld c, c                                                  ; $34e7 : $49
	or c                                                  ; $34e8 : $b1
	ccf                                                  ; $34e9 : $3f
	inc (hl)                                                  ; $34ea : $34
	ld h, e                                                  ; $34eb : $63
	ld (hl), d                                                  ; $34ec : $72
	ld c, c                                                  ; $34ed : $49
	or c                                                  ; $34ee : $b1
	ld ($b249), a                                                  ; $34ef : $32, $49, $b2
	ld c, c                                                  ; $34f2 : $49
	or d                                                  ; $34f3 : $b2
	ret p                                                  ; $34f4 : $f0

	rst $08                                                  ; $34f5 : $cf
	ld c, c                                                  ; $34f6 : $49
	or e                                                  ; $34f7 : $b3
	ld l, (hl)                                                  ; $34f8 : $6e
	jr br_02_3544                                                  ; $34f9 : $18, $49

	or e                                                  ; $34fb : $b3
	call $be49                                                  ; $34fc : $cd, $49, $be
	ccf                                                  ; $34ff : $3f
	ld c, c                                                  ; $3500 : $49
	cp (hl)                                                  ; $3501 : $be
	ld c, a                                                  ; $3502 : $4f
	ld c, c                                                  ; $3503 : $49
	cp (hl)                                                  ; $3504 : $be
	ld b, b                                                  ; $3505 : $40
	sub $98                                                  ; $3506 : $d6, $98
	ld c, c                                                  ; $3508 : $49
	cp (hl)                                                  ; $3509 : $be
	ld b, e                                                  ; $350a : $43
	cpl                                                  ; $350b : $2f
	ld c, c                                                  ; $350c : $49
	cp (hl)                                                  ; $350d : $be
	ld b, e                                                  ; $350e : $43
	cp a                                                  ; $350f : $bf
	ld c, c                                                  ; $3510 : $49
	cp (hl)                                                  ; $3511 : $be
	ld c, h                                                  ; $3512 : $4c
	ld c, c                                                  ; $3513 : $49
	cp l                                                  ; $3514 : $bd
	and $83                                                  ; $3515 : $e6, $83
	ld c, c                                                  ; $3517 : $49
	cp l                                                  ; $3518 : $bd
	jp pe, Jump_02_36ee                                                  ; $3519 : $ea, $ee, $36
	pop hl                                                  ; $351c : $e1
	ld e, l                                                  ; $351d : $5d
	ld e, a                                                  ; $351e : $5f
	ld c, c                                                  ; $351f : $49
	cp l                                                  ; $3520 : $bd
	jp pe, $86ee                                                  ; $3521 : $ea, $ee, $86
	adc a, l                                                  ; $3524 : $8d
	ld e, a                                                  ; $3525 : $5f
	ld c, c                                                  ; $3526 : $49
	cp (hl)                                                  ; $3527 : $be
	add a, b                                                  ; $3528 : $80
	or d                                                  ; $3529 : $b2
	ld c, c                                                  ; $352a : $49
	call z, $4967                                                  ; $352b : $cc, $67, $49
	call z, $cf67                                                  ; $352e : $cc, $67, $cf
	ld c, c                                                  ; $3531 : $49
	and $e1                                                  ; $3532 : $e6, $e1
	ld e, l                                                  ; $3534 : $5d
	ld c, c                                                  ; $3535 : $49
	and $82                                                  ; $3536 : $e6, $82
	ld c, c                                                  ; $3538 : $49
	and $82                                                  ; $3539 : $e6, $82
	ld ($e649), a                                                  ; $353b : $32, $49, $e6
	adc a, l                                                  ; $353e : $8d
	ld b, $8f                                                  ; $353f : $06, $8f
	ld c, c                                                  ; $3541 : $49
	and $bf                                                  ; $3542 : $e6, $bf

br_02_3544:
	ld c, c                                                  ; $3544 : $49
	jp (hl)                                                  ; $3545 : $e9


	ld c, e                                                  ; $3546 : $4b
	call pe, $e4f3                                                  ; $3547 : $ec, $f3, $e4
	dec bc                                                  ; $354a : $0b
	push hl                                                  ; $354b : $e5
	and $3d                                                  ; $354c : $e6, $3d
	out ($4b), a                                                  ; $354e : $d3, $4b
	ld c, $43                                                  ; $3550 : $0e, $43
	ld c, e                                                  ; $3552 : $4b
	ex af, af'                                                  ; $3553 : $08
	ld d, $cf                                                  ; $3554 : $16, $cf
	ld ($e3b0), a                                                  ; $3556 : $32, $b0, $e3
	ccf                                                  ; $3559 : $3f
	ld c, e                                                  ; $355a : $4b
	ex af, af'                                                  ; $355b : $08
	ex (sp), hl                                                  ; $355c : $e3
	halt                                                  ; $355d : $76
	adc a, a                                                  ; $355e : $8f
	ld c, e                                                  ; $355f : $4b
	ex af, af'                                                  ; $3560 : $08
	ex (sp), hl                                                  ; $3561 : $e3
	halt                                                  ; $3562 : $76

br_02_3563:
	adc a, a                                                  ; $3563 : $8f
	dec sp                                                  ; $3564 : $3b
	sbc a, c                                                  ; $3565 : $99
	jp Jump_02_37e7                                                  ; $3566 : $c3, $e7, $37


	rst $18                                                  ; $3569 : $df
	ld c, e                                                  ; $356a : $4b
	inc sp                                                  ; $356b : $33
	ld c, e                                                  ; $356c : $4b
	inc sp                                                  ; $356d : $33
	add hl, hl                                                  ; $356e : $29
	call po, Call_02_334b                                                  ; $356f : $e4, $4b, $33
	ld a, (hl)                                                  ; $3572 : $7e
	xor a                                                  ; $3573 : $af
	ld c, e                                                  ; $3574 : $4b
	inc sp                                                  ; $3575 : $33
	ex de, hl                                                  ; $3576 : $eb
	ld l, b                                                  ; $3577 : $68
	pop hl                                                  ; $3578 : $e1
	ld c, e                                                  ; $3579 : $4b
	jr c, br_02_3591                                                  ; $357a : $38, $15

	xor $ca                                                  ; $357c : $ee, $ca
	jr nc, br_02_3563                                                  ; $357e : $30, $e3

	ld l, b                                                  ; $3580 : $68
	pop hl                                                  ; $3581 : $e1
	ld c, e                                                  ; $3582 : $4b
	ld a, $5e                                                  ; $3583 : $3e, $5e
	ld h, e                                                  ; $3585 : $63
	add a, c                                                  ; $3586 : $81
	jp pe, $3c4b                                                  ; $3587 : $ea, $4b, $3c
	ld e, a                                                  ; $358a : $5f
	ld c, e                                                  ; $358b : $4b
	ld a, $a2                                                  ; $358c : $3e, $a2
	ld l, h                                                  ; $358e : $6c
	ld c, e                                                  ; $358f : $4b
	ld h, c                                                  ; $3590 : $61

br_02_3591:
	sub $98                                                  ; $3591 : $d6, $98
	ld c, e                                                  ; $3593 : $4b
	ld h, e                                                  ; $3594 : $63
	add a, d                                                  ; $3595 : $82
	ld c, e                                                  ; $3596 : $4b
	ld l, h                                                  ; $3597 : $6c
	ret po                                                  ; $3598 : $e0

	inc sp                                                  ; $3599 : $33
	ld c, e                                                  ; $359a : $4b
	sbc a, (hl)                                                  ; $359b : $9e
	inc e                                                  ; $359c : $1c
	ld c, e                                                  ; $359d : $4b
	sbc a, b                                                  ; $359e : $98
	sub $3b                                                  ; $359f : $d6, $3b
	ld c, e                                                  ; $35a1 : $4b
	sbc a, h                                                  ; $35a2 : $9c
	rst $18                                                  ; $35a3 : $df
	ld c, e                                                  ; $35a4 : $4b
	sbc a, (hl)                                                  ; $35a5 : $9e
	or e                                                  ; $35a6 : $b3
	adc a, a                                                  ; $35a7 : $8f
	ld c, e                                                  ; $35a8 : $4b
	and $6d                                                  ; $35a9 : $e6, $6d
	ld c, l                                                  ; $35ab : $4d
	call pe, $70f3                                                  ; $35ac : $ec, $f3, $70
	or b                                                  ; $35af : $b0
	call po, $4d63                                                  ; $35b0 : $e4, $63, $4d
	call pe, $9bf3                                                  ; $35b3 : $ec, $f3, $9b
	ex af, af'                                                  ; $35b6 : $08
	pop hl                                                  ; $35b7 : $e1
	ccf                                                  ; $35b8 : $3f
	ld c, (hl)                                                  ; $35b9 : $4e
	ld h, e                                                  ; $35ba : $63
	ld a, a                                                  ; $35bb : $7f
	ld c, (hl)                                                  ; $35bc : $4e
	ld h, a                                                  ; $35bd : $67
	dec de                                                  ; $35be : $1b
	and $e4                                                  ; $35bf : $e6, $e4
	ld c, (hl)                                                  ; $35c1 : $4e
	ld h, a                                                  ; $35c2 : $67
	ld a, a                                                  ; $35c3 : $7f
	ld c, (hl)                                                  ; $35c4 : $4e
	ld h, a                                                  ; $35c5 : $67
	exx                                                  ; $35c6 : $d9
	adc a, a                                                  ; $35c7 : $8f
	inc c                                                  ; $35c8 : $0c
	ld c, (hl)                                                  ; $35c9 : $4e
	ld l, b                                                  ; $35ca : $68
	pop hl                                                  ; $35cb : $e1
	ld l, a                                                  ; $35cc : $6f
	ld c, (hl)                                                  ; $35cd : $4e
	ld l, b                                                  ; $35ce : $68
	add a, e                                                  ; $35cf : $83
	ld a, a                                                  ; $35d0 : $7f
	ld c, (hl)                                                  ; $35d1 : $4e
	ld l, e                                                  ; $35d2 : $6b
	push de                                                  ; $35d3 : $d5
	inc a                                                  ; $35d4 : $3c
	rst $18                                                  ; $35d5 : $df
	ld c, (hl)                                                  ; $35d6 : $4e
	ld l, h                                                  ; $35d7 : $6c
	ccf                                                  ; $35d8 : $3f
	ld c, (hl)                                                  ; $35d9 : $4e
	ld l, h                                                  ; $35da : $6c
	ccf                                                  ; $35db : $3f
	ld a, $09                                                  ; $35dc : $3e, $09
	jp (hl)                                                  ; $35de : $e9


	ld c, (hl)                                                  ; $35df : $4e
	ld l, h                                                  ; $35e0 : $6c
	ld l, c                                                  ; $35e1 : $69
	adc a, a                                                  ; $35e2 : $8f
	ld c, (hl)                                                  ; $35e3 : $4e
	ld l, l                                                  ; $35e4 : $6d
	and $b3                                                  ; $35e5 : $e6, $b3
	pop hl                                                  ; $35e7 : $e1

br_02_35e8:
	ld b, $8f                                                  ; $35e8 : $06, $8f
	pop hl                                                  ; $35ea : $e1
	rlca                                                  ; $35eb : $07
	ld c, $9e                                                  ; $35ec : $0e, $9e
	xor a                                                  ; $35ee : $af
	pop hl                                                  ; $35ef : $e1
	rlca                                                  ; $35f0 : $07
	ld h, a                                                  ; $35f1 : $67
	add hl, sp                                                  ; $35f2 : $39
	pop hl                                                  ; $35f3 : $e1
	rlca                                                  ; $35f4 : $07
	ld (hl), e                                                  ; $35f5 : $73
	cp (hl)                                                  ; $35f6 : $be
	xor a                                                  ; $35f7 : $af
	pop hl                                                  ; $35f8 : $e1
	ld c, $43                                                  ; $35f9 : $0e, $43
	pop hl                                                  ; $35fb : $e1
	ld c, $43                                                  ; $35fc : $0e, $43
	rst $08                                                  ; $35fe : $cf
	pop hl                                                  ; $35ff : $e1
	ld c, $4e                                                  ; $3600 : $0e, $4e
	ld b, b                                                  ; $3602 : $40
	pop hl                                                  ; $3603 : $e1
	ex af, af'                                                  ; $3604 : $08
	dec h                                                  ; $3605 : $25
	ld l, a                                                  ; $3606 : $6f
	pop hl                                                  ; $3607 : $e1
	ex af, af'                                                  ; $3608 : $08
	pop hl                                                  ; $3609 : $e1
	inc a                                                  ; $360a : $3c
	pop hl                                                  ; $360b : $e1
	dec bc                                                  ; $360c : $0b
	inc hl                                                  ; $360d : $23

Call_02_360e:
	adc a, a                                                  ; $360e : $8f
	pop hl                                                  ; $360f : $e1
	dec bc                                                  ; $3610 : $0b
	ld b, (hl)                                                  ; $3611 : $46
	scf                                                  ; $3612 : $37
	cpl                                                  ; $3613 : $2f
	pop hl                                                  ; $3614 : $e1
	dec bc                                                  ; $3615 : $0b
	ld b, (hl)                                                  ; $3616 : $46
	scf                                                  ; $3617 : $37
	cpl                                                  ; $3618 : $2f
	inc c                                                  ; $3619 : $0c
	pop hl                                                  ; $361a : $e1
	inc c                                                  ; $361b : $0c
	inc a                                                  ; $361c : $3c
	pop hl                                                  ; $361d : $e1
	inc c                                                  ; $361e : $0c
	sub a                                                  ; $361f : $97
	ld l, b                                                  ; $3620 : $68
	ccf                                                  ; $3621 : $3f
	pop hl                                                  ; $3622 : $e1
	dec c                                                  ; $3623 : $0d
	ld d, e                                                  ; $3624 : $53
	cp a                                                  ; $3625 : $bf
	pop hl                                                  ; $3626 : $e1
	ld c, $73                                                  ; $3627 : $0e, $73
	pop hl                                                  ; $3629 : $e1
	jr nc, br_02_35e8                                                  ; $362a : $30, $bc

	pop hl                                                  ; $362c : $e1
	ld a, $4f                                                  ; $362d : $3e, $4f
	pop hl                                                  ; $362f : $e1
	ld a, $46                                                  ; $3630 : $3e, $46
	add a, (hl)                                                  ; $3632 : $86
	pop hl                                                  ; $3633 : $e1
	ld a, $4c                                                  ; $3634 : $3e, $4c
	exx                                                  ; $3636 : $d9
	add a, e                                                  ; $3637 : $83
	pop hl                                                  ; $3638 : $e1
	jr c, $3f                                                  ; $3639 : $38, $3f

	pop hl                                                  ; $363b : $e1
	jr c, br_02_3679                                                  ; $363c : $38, $3b

	rlca                                                  ; $363e : $07
	pop hl                                                  ; $363f : $e1
	jr c, br_02_367d                                                  ; $3640 : $38, $3b

	dec c                                                  ; $3642 : $0d
	ccf                                                  ; $3643 : $3f
	pop hl                                                  ; $3644 : $e1
	jr c, br_02_3682                                                  ; $3645 : $38, $3b

	dec c                                                  ; $3647 : $0d
	ld ($38e1), a                                                  ; $3648 : $32, $e1, $38
	dec sp                                                  ; $364b : $3b
	dec c                                                  ; $364c : $0d
	sbc a, e                                                  ; $364d : $9b
	pop hl                                                  ; $364e : $e1
	jr c, br_02_368d                                                  ; $364f : $38, $3c

	pop hl                                                  ; $3651 : $e1
	jr c, br_02_3691                                                  ; $3652 : $38, $3d

	ld h, c                                                  ; $3654 : $61
	ld l, h                                                  ; $3655 : $6c
	rst $18                                                  ; $3656 : $df
	pop hl                                                  ; $3657 : $e1
	jr c, br_02_3697                                                  ; $3658 : $38, $3d

	ld h, c                                                  ; $365a : $61
	ld l, h                                                  ; $365b : $6c
	call c, $39e1                                                  ; $365c : $dc, $e1, $39
	pop hl                                                  ; $365f : $e1
	or b                                                  ; $3660 : $b0
	and l                                                  ; $3661 : $a5
	ld h, c                                                  ; $3662 : $61
	pop hl                                                  ; $3663 : $e1
	add hl, sp                                                  ; $3664 : $39
	pop hl                                                  ; $3665 : $e1
	or b                                                  ; $3666 : $b0
	and l                                                  ; $3667 : $a5
	jp pe, $39e1                                                  ; $3668 : $ea, $e1, $39
	ld a, c                                                  ; $366b : $79
	pop hl                                                  ; $366c : $e1
	ld l, h                                                  ; $366d : $6c
	rst $18                                                  ; $366e : $df
	pop hl                                                  ; $366f : $e1
	add hl, sp                                                  ; $3670 : $39
	ld a, c                                                  ; $3671 : $79
	pop hl                                                  ; $3672 : $e1
	ld l, h                                                  ; $3673 : $6c
	call c, $39e1                                                  ; $3674 : $dc, $e1, $39
	ld a, c                                                  ; $3677 : $79
	pop hl                                                  ; $3678 : $e1

br_02_3679:
	jp pe, $39e1                                                  ; $3679 : $ea, $e1, $39
	cp (hl)                                                  ; $367c : $be

br_02_367d:
	inc de                                                  ; $367d : $13
	pop hl                                                  ; $367e : $e1
	add hl, sp                                                  ; $367f : $39
	cp (hl)                                                  ; $3680 : $be
	inc de                                                  ; $3681 : $13

br_02_3682:
	di                                                  ; $3682 : $f3
	ld h, (hl)                                                  ; $3683 : $66
	ld l, a                                                  ; $3684 : $6f
	pop hl                                                  ; $3685 : $e1
	add hl, sp                                                  ; $3686 : $39
	cp (hl)                                                  ; $3687 : $be
	inc de                                                  ; $3688 : $13
	di                                                  ; $3689 : $f3
	ret pe                                                  ; $368a : $e8

	inc c                                                  ; $368b : $0c
	ld d, (hl)                                                  ; $368c : $56

br_02_368d:
	adc a, (hl)                                                  ; $368d : $8e
	dec e                                                  ; $368e : $1d
	sbc a, b                                                  ; $368f : $98
	pop hl                                                  ; $3690 : $e1

br_02_3691:
	add hl, sp                                                  ; $3691 : $39
	cp (hl)                                                  ; $3692 : $be
	inc de                                                  ; $3693 : $13
	ld h, (hl)                                                  ; $3694 : $66
	ld l, a                                                  ; $3695 : $6f
	pop hl                                                  ; $3696 : $e1

br_02_3697:
	add hl, sp                                                  ; $3697 : $39
	cp (hl)                                                  ; $3698 : $be
	ld d, $0f                                                  ; $3699 : $16, $0f
	pop hl                                                  ; $369b : $e1
	add hl, sp                                                  ; $369c : $39
	push de                                                  ; $369d : $d5
	dec sp                                                  ; $369e : $3b
	call po, $e107                                                  ; $369f : $e4, $07, $e1
	dec sp                                                  ; $36a2 : $3b
	rlca                                                  ; $36a3 : $07
	cpl                                                  ; $36a4 : $2f
	inc (hl)                                                  ; $36a5 : $34
	sbc a, e                                                  ; $36a6 : $9b
	cpl                                                  ; $36a7 : $2f
	pop hl                                                  ; $36a8 : $e1
	dec sp                                                  ; $36a9 : $3b
	rlca                                                  ; $36aa : $07
	ld h, $83                                                  ; $36ab : $26, $83
	di                                                  ; $36ad : $f3
	ld b, e                                                  ; $36ae : $43
	cp e                                                  ; $36af : $bb
	dec bc                                                  ; $36b0 : $0b
	sbc a, a                                                  ; $36b1 : $9f
	pop hl                                                  ; $36b2 : $e1
	dec sp                                                  ; $36b3 : $3b
	ret po                                                  ; $36b4 : $e0

	ld h, a                                                  ; $36b5 : $67
	pop hl                                                  ; $36b6 : $e1
	dec sp                                                  ; $36b7 : $3b
	call po, $e108                                                  ; $36b8 : $e4, $08, $e1
	dec sp                                                  ; $36bb : $3b
	call po, $cf08                                                  ; $36bc : $e4, $08, $cf
	pop hl                                                  ; $36bf : $e1
	dec a                                                  ; $36c0 : $3d
	pop hl                                                  ; $36c1 : $e1
	dec a                                                  ; $36c2 : $3d
	rst $08                                                  ; $36c3 : $cf
	pop hl                                                  ; $36c4 : $e1
	dec a                                                  ; $36c5 : $3d
	sub $8e                                                  ; $36c6 : $d6, $8e
	rra                                                  ; $36c8 : $1f
	pop hl                                                  ; $36c9 : $e1
	dec a                                                  ; $36ca : $3d
	sbc a, $ac                                                  ; $36cb : $de, $ac
	ret po                                                  ; $36cd : $e0

	and $be                                                  ; $36ce : $e6, $be
	rra                                                  ; $36d0 : $1f
	pop hl                                                  ; $36d1 : $e1
	ld a, $ac                                                  ; $36d2 : $3e, $ac
	dec sp                                                  ; $36d4 : $3b
	pop hl                                                  ; $36d5 : $e1
	ld a, $ac                                                  ; $36d6 : $3e, $ac
	dec sp                                                  ; $36d8 : $3b
	rst $08                                                  ; $36d9 : $cf
	pop hl                                                  ; $36da : $e1
	ld h, a                                                  ; $36db : $67
	ret po                                                  ; $36dc : $e0

	or b                                                  ; $36dd : $b0
	ld a, l                                                  ; $36de : $7d
	dec bc                                                  ; $36df : $0b
	pop hl                                                  ; $36e0 : $e1
	ld h, a                                                  ; $36e1 : $67
	ld a, a                                                  ; $36e2 : $7f
	pop hl                                                  ; $36e3 : $e1
	ld h, a                                                  ; $36e4 : $67
	ld a, h                                                  ; $36e5 : $7c
	pop hl                                                  ; $36e6 : $e1
	ld l, b                                                  ; $36e7 : $68
	pop hl                                                  ; $36e8 : $e1
	ld l, e                                                  ; $36e9 : $6b
	inc b                                                  ; $36ea : $04
	ld b, e                                                  ; $36eb : $43
	pop hl                                                  ; $36ec : $e1
	ld l, e                                                  ; $36ed : $6b

Jump_02_36ee:
	ld a, a                                                  ; $36ee : $7f
	pop hl                                                  ; $36ef : $e1
	ld l, (hl)                                                  ; $36f0 : $6e
	ld (hl), e                                                  ; $36f1 : $73
	pop hl                                                  ; $36f2 : $e1
	ld l, (hl)                                                  ; $36f3 : $6e
	ld (hl), e                                                  ; $36f4 : $73
	adc a, a                                                  ; $36f5 : $8f
	pop hl                                                  ; $36f6 : $e1
	ld (hl), b                                                  ; $36f7 : $70
	ld d, $3b                                                  ; $36f8 : $16, $3b
	pop hl                                                  ; $36fa : $e1
	ld (hl), b                                                  ; $36fb : $70
	ld d, $3b                                                  ; $36fc : $16, $3b
	rst $08                                                  ; $36fe : $cf
	pop hl                                                  ; $36ff : $e1
	ld (hl), b                                                  ; $3700 : $70
	add a, d                                                  ; $3701 : $82
	rst $08                                                  ; $3702 : $cf
	pop hl                                                  ; $3703 : $e1
	ld (hl), b                                                  ; $3704 : $70
	call z, $73e1                                                  ; $3705 : $cc, $e1, $73
	adc a, b                                                  ; $3708 : $88
	pop hl                                                  ; $3709 : $e1
	ld a, c                                                  ; $370a : $79
	ret po                                                  ; $370b : $e0

	ccf                                                  ; $370c : $3f
	pop hl                                                  ; $370d : $e1
	ld a, (hl)                                                  ; $370e : $7e
	ld h, c                                                  ; $370f : $61
	sbc a, h                                                  ; $3710 : $9c
	ccf                                                  ; $3711 : $3f
	pop hl                                                  ; $3712 : $e1
	sbc a, a                                                  ; $3713 : $9f
	pop hl                                                  ; $3714 : $e1
	sub b                                                  ; $3715 : $90
	ld a, a                                                  ; $3716 : $7f
	pop hl                                                  ; $3717 : $e1
	sbc a, (hl)                                                  ; $3718 : $9e
	ld b, $e1                                                  ; $3719 : $06, $e1
	sub d                                                  ; $371b : $92
	pop hl                                                  ; $371c : $e1
	sub a                                                  ; $371d : $97
	cpl                                                  ; $371e : $2f
	pop hl                                                  ; $371f : $e1
	sub a                                                  ; $3720 : $97
	inc hl                                                  ; $3721 : $23
	adc a, a                                                  ; $3722 : $8f
	pop hl                                                  ; $3723 : $e1
	sub a                                                  ; $3724 : $97
	inc hl                                                  ; $3725 : $23
	adc a, a                                                  ; $3726 : $8f
	ld a, $10                                                  ; $3727 : $3e, $10
	out ($e1), a                                                  ; $3729 : $d3, $e1
	sub a                                                  ; $372b : $97
	ld c, a                                                  ; $372c : $4f
	pop hl                                                  ; $372d : $e1
	sbc a, b                                                  ; $372e : $98
	add hl, hl                                                  ; $372f : $29
	ld (hl), b                                                  ; $3730 : $70
	pop hl                                                  ; $3731 : $e1
	sbc a, c                                                  ; $3732 : $99
	inc l                                                  ; $3733 : $2c
	pop hl                                                  ; $3734 : $e1
	sbc a, c                                                  ; $3735 : $99
	ld b, e                                                  ; $3736 : $43
	jp pe, $9ce1                                                  ; $3737 : $ea, $e1, $9c
	halt                                                  ; $373a : $76
	adc a, (hl)                                                  ; $373b : $8e
	rra                                                  ; $373c : $1f
	pop hl                                                  ; $373d : $e1
	sbc a, (hl)                                                  ; $373e : $9e
	ld (hl), e                                                  ; $373f : $73
	cp b                                                  ; $3740 : $b8
	call po, $df38                                                  ; $3741 : $e4, $38, $df
	pop hl                                                  ; $3744 : $e1
	sbc a, (hl)                                                  ; $3745 : $9e
	ld (hl), e                                                  ; $3746 : $73
	cp b                                                  ; $3747 : $b8
	sbc a, e                                                  ; $3748 : $9b
	pop hl                                                  ; $3749 : $e1
	or b                                                  ; $374a : $b0
	inc de                                                  ; $374b : $13
	ld (hl), b                                                  ; $374c : $70
	add a, d                                                  ; $374d : $82
	pop hl                                                  ; $374e : $e1
	or b                                                  ; $374f : $b0
	ld l, $60                                                  ; $3750 : $2e, $60
	out ($cf), a                                                  ; $3752 : $d3, $cf
	pop hl                                                  ; $3754 : $e1
	or b                                                  ; $3755 : $b0
	ld d, b                                                  ; $3756 : $50
	call po, $b0e1                                                  ; $3757 : $e4, $e1, $b0
	ld l, b                                                  ; $375a : $68
	pop hl                                                  ; $375b : $e1
	or b                                                  ; $375c : $b0
	call po, $b0e1                                                  ; $375d : $e4, $e1, $b0
	call po, $e1cf                                                  ; $3760 : $e4, $cf, $e1
	or b                                                  ; $3763 : $b0
	add a, d                                                  ; $3764 : $82
	pop hl                                                  ; $3765 : $e1
	or b                                                  ; $3766 : $b0
	adc a, (hl)                                                  ; $3767 : $8e
	inc de                                                  ; $3768 : $13
	cp a                                                  ; $3769 : $bf
	pop hl                                                  ; $376a : $e1
	or b                                                  ; $376b : $b0
	adc a, l                                                  ; $376c : $8d
	pop hl                                                  ; $376d : $e1
	or b                                                  ; $376e : $b0
	and e                                                  ; $376f : $a3
	pop hl                                                  ; $3770 : $e1
	or b                                                  ; $3771 : $b0
	and e                                                  ; $3772 : $a3
	ld c, e                                                  ; $3773 : $4b
	and $6d                                                  ; $3774 : $e6, $6d
	pop hl                                                  ; $3776 : $e1
	or b                                                  ; $3777 : $b0
	and e                                                  ; $3778 : $a3
	rst $08                                                  ; $3779 : $cf
	pop hl                                                  ; $377a : $e1
	or b                                                  ; $377b : $b0
	and l                                                  ; $377c : $a5
	ld l, l                                                  ; $377d : $6d
	ccf                                                  ; $377e : $3f
	pop hl                                                  ; $377f : $e1
	or b                                                  ; $3780 : $b0
	rst $08                                                  ; $3781 : $cf
	pop hl                                                  ; $3782 : $e1
	or b                                                  ; $3783 : $b0
	call z, $b0e1                                                  ; $3784 : $cc, $e1, $b0
	rst $20                                                  ; $3787 : $e7
	ld l, l                                                  ; $3788 : $6d
	jp pe, $b3e1                                                  ; $3789 : $ea, $e1, $b3
	dec c                                                  ; $378c : $0d
	di                                                  ; $378d : $f3
	ret po                                                  ; $378e : $e0

	or (hl)                                                  ; $378f : $b6
	ret nc                                                  ; $3790 : $d0

	ld l, b                                                  ; $3791 : $68
	pop hl                                                  ; $3792 : $e1
	or e                                                  ; $3793 : $b3
	dec c                                                  ; $3794 : $0d
	di                                                  ; $3795 : $f3
	ret nz                                                  ; $3796 : $c0

	ld a, l                                                  ; $3797 : $7d
	di                                                  ; $3798 : $f3
	ld (hl), b                                                  ; $3799 : $70
	ex (sp), hl                                                  ; $379a : $e3
	ccf                                                  ; $379b : $3f

br_02_379c:
	pop hl                                                  ; $379c : $e1
	or e                                                  ; $379d : $b3
	dec c                                                  ; $379e : $0d
	di                                                  ; $379f : $f3
	ret pe                                                  ; $37a0 : $e8

	rlca                                                  ; $37a1 : $07
	ld a, a                                                  ; $37a2 : $7f
	pop hl                                                  ; $37a3 : $e1
	or e                                                  ; $37a4 : $b3
	dec c                                                  ; $37a5 : $0d
	inc a                                                  ; $37a6 : $3c
	rst $18                                                  ; $37a7 : $df
	pop hl                                                  ; $37a8 : $e1
	or e                                                  ; $37a9 : $b3
	add hl, de                                                  ; $37aa : $19

br_02_37ab:
	xor $b9                                                  ; $37ab : $ee, $b9
	call po, $e108                                                  ; $37ad : $e4, $08, $e1
	or e                                                  ; $37b0 : $b3
	ld sp, $e13f                                                  ; $37b1 : $31, $3f, $e1
	or e                                                  ; $37b4 : $b3
	ld a, $3f                                                  ; $37b5 : $3e, $3f
	pop hl                                                  ; $37b7 : $e1
	or e                                                  ; $37b8 : $b3
	jr c, br_02_379c                                                  ; $37b9 : $38, $e1

	or e                                                  ; $37bb : $b3
	jr c, $70                                                  ; $37bc : $38, $70

	add a, d                                                  ; $37be : $82
	pop hl                                                  ; $37bf : $e1
	or e                                                  ; $37c0 : $b3
	jr c, br_02_37ab                                                  ; $37c1 : $38, $e8

	ld h, c                                                  ; $37c3 : $61
	ld e, a                                                  ; $37c4 : $5f
	pop hl                                                  ; $37c5 : $e1
	or e                                                  ; $37c6 : $b3
	add a, b                                                  ; $37c7 : $80
	inc hl                                                  ; $37c8 : $23
	rst $08                                                  ; $37c9 : $cf
	pop hl                                                  ; $37ca : $e1
	or e                                                  ; $37cb : $b3
	ret pe                                                  ; $37cc : $e8

	pop hl                                                  ; $37cd : $e1
	or e                                                  ; $37ce : $b3
	jp pe, $b6e1                                                  ; $37cf : $ea, $e1, $b6
	call po, $e1e4                                                  ; $37d2 : $e4, $e4, $e1
	cp c                                                  ; $37d5 : $b9
	call z, $b9e1                                                  ; $37d6 : $cc, $e1, $b9
	and $82                                                  ; $37d9 : $e6, $82
	pop hl                                                  ; $37db : $e1
	cp c                                                  ; $37dc : $b9
	and $82                                                  ; $37dd : $e6, $82
	ret pe                                                  ; $37df : $e8

	dec c                                                  ; $37e0 : $0d
	dec sp                                                  ; $37e1 : $3b
	pop hl                                                  ; $37e2 : $e1
	cp c                                                  ; $37e3 : $b9
	and $af                                                  ; $37e4 : $e6, $af
	pop hl                                                  ; $37e6 : $e1

Jump_02_37e7:
	cp c                                                  ; $37e7 : $b9
	ret pe                                                  ; $37e8 : $e8

	pop hl                                                  ; $37e9 : $e1
	cp c                                                  ; $37ea : $b9
	ret pe                                                  ; $37eb : $e8

	ld l, b                                                  ; $37ec : $68
	pop hl                                                  ; $37ed : $e1
	pop hl                                                  ; $37ee : $e1
	cp c                                                  ; $37ef : $b9
	ret pe                                                  ; $37f0 : $e8

	rst $08                                                  ; $37f1 : $cf
	pop hl                                                  ; $37f2 : $e1
	cp c                                                  ; $37f3 : $b9
	ret pe                                                  ; $37f4 : $e8

	push de                                                  ; $37f5 : $d5
	pop hl                                                  ; $37f6 : $e1
	and $0e                                                  ; $37f7 : $e6, $0e
	ld c, a                                                  ; $37f9 : $4f
	pop hl                                                  ; $37fa : $e1
	and $0d                                                  ; $37fb : $e6, $0d
	ld a, $40                                                  ; $37fd : $3e, $40
	ld (hl), b                                                  ; $37ff : $70
	pop hl                                                  ; $3800 : $e1
	and $74                                                  ; $3801 : $e6, $74
	pop hl                                                  ; $3803 : $e1
	and $74                                                  ; $3804 : $e6, $74
	di                                                  ; $3806 : $f3
	sub h                                                  ; $3807 : $94
	di                                                  ; $3808 : $f3
	ret po                                                  ; $3809 : $e0

	sbc a, l                                                  ; $380a : $9d
	ld e, b                                                  ; $380b : $58
	ld h, b                                                  ; $380c : $60
	pop hl                                                  ; $380d : $e1
	and $e4                                                  ; $380e : $e6, $e4
	pop hl                                                  ; $3810 : $e1
	and $e4                                                  ; $3811 : $e6, $e4
	rst $08                                                  ; $3813 : $cf
	pop hl                                                  ; $3814 : $e1
	and $8c                                                  ; $3815 : $e6, $8c
	pop hl                                                  ; $3817 : $e1
	and $d3                                                  ; $3818 : $e6, $d3
	adc a, (hl)                                                  ; $381a : $8e
	inc bc                                                  ; $381b : $03
	cp (hl)                                                  ; $381c : $be
	rra                                                  ; $381d : $1f
	ld e, (hl)                                                  ; $381e : $5e
	rst $08                                                  ; $381f : $cf
	dec (hl)                                                  ; $3820 : $35
	sbc a, c                                                  ; $3821 : $99
	rst $20                                                  ; $3822 : $e7
	dec sp                                                  ; $3823 : $3b
	ld d, b                                                  ; $3824 : $50

br_02_3825:
	cpl                                                  ; $3825 : $2f
	ld d, b                                                  ; $3826 : $50
	ld l, l                                                  ; $3827 : $6d
	ld l, a                                                  ; $3828 : $6f
	ld d, b                                                  ; $3829 : $50
	ld (hl), h                                                  ; $382a : $74
	ld d, b                                                  ; $382b : $50
	ld (hl), h                                                  ; $382c : $74
	xor $29                                                  ; $382d : $ee, $29
	ld (hl), a                                                  ; $382f : $77
	dec bc                                                  ; $3830 : $0b
	ld d, b                                                  ; $3831 : $50
	ld a, (hl)                                                  ; $3832 : $7e
	ld (hl), e                                                  ; $3833 : $73
	rst $08                                                  ; $3834 : $cf
	ld d, b                                                  ; $3835 : $50
	call po, $e450                                                  ; $3836 : $e4, $50, $e4
	ret po                                                  ; $3839 : $e0

	and $be                                                  ; $383a : $e6, $be
	inc de                                                  ; $383c : $13
	cp h                                                  ; $383d : $bc
	ld d, b                                                  ; $383e : $50
	call po, Call_02_3be4                                                  ; $383f : $e4, $e4, $3b

br_02_3842:
	ld d, b                                                  ; $3842 : $50
	call po, $91e4                                                  ; $3843 : $e4, $e4, $91
	ex (sp), hl                                                  ; $3846 : $e3
	ld d, b                                                  ; $3847 : $50
	call po, $56ac                                                  ; $3848 : $e4, $ac, $56
	or e                                                  ; $384b : $b3
	ld d, b                                                  ; $384c : $50
	call po, $d3ac                                                  ; $384d : $e4, $ac, $d3
	cp a                                                  ; $3850 : $bf
	ld d, b                                                  ; $3851 : $50
	call po, $b6cd                                                  ; $3852 : $e4, $cd, $b6
	adc a, (hl)                                                  ; $3855 : $8e
	inc e                                                  ; $3856 : $1c
	ld d, b                                                  ; $3857 : $50
	add a, c                                                  ; $3858 : $81
	sub c                                                  ; $3859 : $91
	ex (sp), hl                                                  ; $385a : $e3
	ld d, b                                                  ; $385b : $50
	adc a, (hl)                                                  ; $385c : $8e
	ld d, $8e                                                  ; $385d : $16, $8e
	rra                                                  ; $385f : $1f
	ld d, b                                                  ; $3860 : $50
	adc a, c                                                  ; $3861 : $89
	ld l, a                                                  ; $3862 : $6f
	ld d, b                                                  ; $3863 : $50
	adc a, (hl)                                                  ; $3864 : $8e
	ld l, (hl)                                                  ; $3865 : $6e
	ld a, $30                                                  ; $3866 : $3e, $30
	ld e, a                                                  ; $3868 : $5f
	ld d, b                                                  ; $3869 : $50
	xor a                                                  ; $386a : $af
	jr nc, br_02_3825                                                  ; $386b : $30, $b8

	sub a                                                  ; $386d : $97
	cpl                                                  ; $386e : $2f
	ld d, b                                                  ; $386f : $50
	xor d                                                  ; $3870 : $aa
	jr c, br_02_3842                                                  ; $3871 : $38, $cf

	ld d, b                                                  ; $3873 : $50
	xor h                                                  ; $3874 : $ac
	ret po                                                  ; $3875 : $e0

	and $be                                                  ; $3876 : $e6, $be
	inc e                                                  ; $3878 : $1c
	ld d, b                                                  ; $3879 : $50
	cp (hl)                                                  ; $387a : $be
	add hl, bc                                                  ; $387b : $09
	cp a                                                  ; $387c : $bf
	ld d, b                                                  ; $387d : $50
	or d                                                  ; $387e : $b2
	ld d, b                                                  ; $387f : $50
	or d                                                  ; $3880 : $b2
	ld l, b                                                  ; $3881 : $68
	pop hl                                                  ; $3882 : $e1
	ld d, b                                                  ; $3883 : $50
	cp d                                                  ; $3884 : $ba
	ld d, b                                                  ; $3885 : $50
	cp e                                                  ; $3886 : $bb
	jp pe, $dbf3                                                  ; $3887 : $ea, $f3, $db
	and $e4                                                  ; $388a : $e6, $e4
	ex af, af'                                                  ; $388c : $08
	ld d, b                                                  ; $388d : $50
	cp h                                                  ; $388e : $bc
	ld e, a                                                  ; $388f : $5f
	ld d, b                                                  ; $3890 : $50
	cp (hl)                                                  ; $3891 : $be
	ld (hl), b                                                  ; $3892 : $70
	or d                                                  ; $3893 : $b2
	ld d, b                                                  ; $3894 : $50
	cp (hl)                                                  ; $3895 : $be
	ld (hl), e                                                  ; $3896 : $73
	call $cf50                                                  ; $3897 : $cd, $50, $cf
	dec a                                                  ; $389a : $3d
	ld d, e                                                  ; $389b : $53
	ld d, b                                                  ; $389c : $50
	call $6838                                                  ; $389d : $cd, $38, $68
	pop hl                                                  ; $38a0 : $e1
	ld d, b                                                  ; $38a1 : $50
	rst $18                                                  ; $38a2 : $df
	ld d, b                                                  ; $38a3 : $50
	rst $18                                                  ; $38a4 : $df
	ld a, ($5068)                                                  ; $38a5 : $3a, $68, $50
	.db $dd                                                  ; $38a8 : $dd
	dec sp                                                  ; $38a9 : $3b
	inc c                                                  ; $38aa : $0c
	ld d, b                                                  ; $38ab : $50
	rst $20                                                  ; $38ac : $e7
	ex af, af'                                                  ; $38ad : $08
	rrca                                                  ; $38ae : $0f
	ld d, b                                                  ; $38af : $50
	rst $20                                                  ; $38b0 : $e7
	ccf                                                  ; $38b1 : $3f
	dec a                                                  ; $38b2 : $3d
	ld d, e                                                  ; $38b3 : $53
	ld d, b                                                  ; $38b4 : $50
	rst $20                                                  ; $38b5 : $e7
	ld l, b                                                  ; $38b6 : $68
	pop hl                                                  ; $38b7 : $e1
	ld d, b                                                  ; $38b8 : $50
	ret pe                                                  ; $38b9 : $e8

	ex (sp), hl                                                  ; $38ba : $e3
	ld d, b                                                  ; $38bb : $50
	ret pe                                                  ; $38bc : $e8

	ex (sp), hl                                                  ; $38bd : $e3
	rst $08                                                  ; $38be : $cf
	ld d, e                                                  ; $38bf : $53
	ld d, e                                                  ; $38c0 : $53
	ld (bc), a                                                  ; $38c1 : $02
	ld d, e                                                  ; $38c2 : $53
	ld (bc), a                                                  ; $38c3 : $02
	ld bc, $5353                                                  ; $38c4 : $01, $53, $53
	dec bc                                                  ; $38c7 : $0b
	ld l, b                                                  ; $38c8 : $68
	pop hl                                                  ; $38c9 : $e1
	ld d, e                                                  ; $38ca : $53
	dec bc                                                  ; $38cb : $0b
	rst $18                                                  ; $38cc : $df
	ld d, e                                                  ; $38cd : $53
	dec bc                                                  ; $38ce : $0b
	sbc a, $03                                                  ; $38cf : $de, $03
	dec c                                                  ; $38d1 : $0d
	ld d, e                                                  ; $38d2 : $53
	dec c                                                  ; $38d3 : $0d
	ld d, e                                                  ; $38d4 : $53
	dec c                                                  ; $38d5 : $0d
	ld ($0d53), a                                                  ; $38d6 : $32, $53, $0d
	ld l, b                                                  ; $38d9 : $68
	pop hl                                                  ; $38da : $e1
	ld d, e                                                  ; $38db : $53
	ld c, $7e                                                  ; $38dc : $0e, $7e
	xor a                                                  ; $38de : $af
	ld d, e                                                  ; $38df : $53
	ld l, (hl)                                                  ; $38e0 : $6e
	dec d                                                  ; $38e1 : $15
	rst $18                                                  ; $38e2 : $df
	ld d, e                                                  ; $38e3 : $53
	ld (hl), d                                                  ; $38e4 : $72
	ld d, e                                                  ; $38e5 : $53
	halt                                                  ; $38e6 : $76
	and $e4                                                  ; $38e7 : $e6, $e4
	ld d, e                                                  ; $38e9 : $53
	ld a, d                                                  ; $38ea : $7a
	ld d, e                                                  ; $38eb : $53
	ld a, d                                                  ; $38ec : $7a
	rst $08                                                  ; $38ed : $cf
	ld d, e                                                  ; $38ee : $53
	call po, $a56c                                                  ; $38ef : $e4, $6c, $a5
	dec sp                                                  ; $38f2 : $3b
	ccf                                                  ; $38f3 : $3f
	ld d, e                                                  ; $38f4 : $53
	call po, Call_02_179e                                                  ; $38f5 : $e4, $9e, $17
	sbc a, (hl)                                                  ; $38f8 : $9e
	ld b, $8f                                                  ; $38f9 : $06, $8f
	ld d, e                                                  ; $38fb : $53
	adc a, e                                                  ; $38fc : $8b
	jp pe, $8b53                                                  ; $38fd : $ea, $53, $8b
	jp pe, $49f3                                                  ; $3900 : $ea, $f3, $49
	or d                                                  ; $3903 : $b2
	ld d, e                                                  ; $3904 : $53
	adc a, e                                                  ; $3905 : $8b
	jp pe, $66f3                                                  ; $3906 : $ea, $f3, $66
	ld d, e                                                  ; $3909 : $53
	adc a, e                                                  ; $390a : $8b
	jp pe, $e7f3                                                  ; $390b : $ea, $f3, $e7
	ld h, (hl)                                                  ; $390e : $66
	ld l, a                                                  ; $390f : $6f
	ld d, e                                                  ; $3910 : $53
	adc a, e                                                  ; $3911 : $8b
	jp pe, $66e7                                                  ; $3912 : $ea, $e7, $66
	ld l, a                                                  ; $3915 : $6f
	ld d, e                                                  ; $3916 : $53
	or b                                                  ; $3917 : $b0
	ld d, e                                                  ; $3918 : $53
	or d                                                  ; $3919 : $b2
	ld d, e                                                  ; $391a : $53
	or e                                                  ; $391b : $b3
	ld h, $d0                                                  ; $391c : $26, $d0
	cp (hl)                                                  ; $391e : $be
	xor a                                                  ; $391f : $af
	ld d, e                                                  ; $3920 : $53
	or e                                                  ; $3921 : $b3
	ld h, $de                                                  ; $3922 : $26, $de
	xor a                                                  ; $3924 : $af
	ld d, e                                                  ; $3925 : $53
	cp (hl)                                                  ; $3926 : $be
	ld b, (hl)                                                  ; $3927 : $46
	ret nc                                                  ; $3928 : $d0

	pop hl                                                  ; $3929 : $e1
	ccf                                                  ; $392a : $3f
	ld d, e                                                  ; $392b : $53
	cp b                                                  ; $392c : $b8
	ex af, af'                                                  ; $392d : $08
	add hl, hl                                                  ; $392e : $29
	ld d, e                                                  ; $392f : $53
	cp c                                                  ; $3930 : $b9
	ld d, (hl)                                                  ; $3931 : $56
	ret po                                                  ; $3932 : $e0

	dec sp                                                  ; $3933 : $3b
	add a, b                                                  ; $3934 : $80
	out ($56), a                                                  ; $3935 : $d3, $56
	jr nz, br_02_39b7                                                  ; $3937 : $20, $7e

	add hl, de                                                  ; $3939 : $19
	ld d, (hl)                                                  ; $393a : $56
	dec sp                                                  ; $393b : $3b
	sbc a, (hl)                                                  ; $393c : $9e
	rla                                                  ; $393d : $17
	jp pe, $61a5                                                  ; $393e : $ea, $a5, $61
	ld d, (hl)                                                  ; $3941 : $56
	dec sp                                                  ; $3942 : $3b
	sbc a, (hl)                                                  ; $3943 : $9e
	rla                                                  ; $3944 : $17
	jp pe, $61a5                                                  ; $3945 : $ea, $a5, $61
	rst $08                                                  ; $3948 : $cf
	ld d, (hl)                                                  ; $3949 : $56
	pop hl                                                  ; $394a : $e1
	ld e, a                                                  ; $394b : $5f
	ld d, (hl)                                                  ; $394c : $56
	pop hl                                                  ; $394d : $e1
	ld e, a                                                  ; $394e : $5f
	ld a, $2e                                                  ; $394f : $3e, $2e
	ld l, (hl)                                                  ; $3951 : $6e
	ld c, d                                                  ; $3952 : $4a
	ld d, (hl)                                                  ; $3953 : $56
	pop hl                                                  ; $3954 : $e1
	ld d, e                                                  ; $3955 : $53
	cp a                                                  ; $3956 : $bf
	ld d, (hl)                                                  ; $3957 : $56
	pop hl                                                  ; $3958 : $e1
	ld e, (hl)                                                  ; $3959 : $5e
	add a, b                                                  ; $395a : $80
	jp pe, $e356                                                  ; $395b : $ea, $56, $e3
	ld l, b                                                  ; $395e : $68
	pop hl                                                  ; $395f : $e1
	ld d, (hl)                                                  ; $3960 : $56
	ld (hl), a                                                  ; $3961 : $77
	rst $08                                                  ; $3962 : $cf
	ld d, (hl)                                                  ; $3963 : $56
	call po, Call_02_0e07                                                  ; $3964 : $e4, $07, $0e
	and b                                                  ; $3967 : $a0
	adc a, a                                                  ; $3968 : $8f
	ld d, (hl)                                                  ; $3969 : $56
	call po, Call_02_0e07                                                  ; $396a : $e4, $07, $0e
	and b                                                  ; $396d : $a0
	rst $08                                                  ; $396e : $cf
	ld d, (hl)                                                  ; $396f : $56
	add a, d                                                  ; $3970 : $82
	ld d, (hl)                                                  ; $3971 : $56
	add a, d                                                  ; $3972 : $82
	and $56                                                  ; $3973 : $e6, $56
	add a, d                                                  ; $3975 : $82
	and $cd                                                  ; $3976 : $e6, $cd
	ex af, af'                                                  ; $3978 : $08
	ld d, (hl)                                                  ; $3979 : $56
	cp c                                                  ; $397a : $b9
	push bc                                                  ; $397b : $c5
	ld l, (hl)                                                  ; $397c : $6e
	ld b, b                                                  ; $397d : $40
	ld d, (hl)                                                  ; $397e : $56
	jp z, $6908                                                  ; $397f : $ca, $08, $69
	ld (hl), b                                                  ; $3982 : $70
	ld d, (hl)                                                  ; $3983 : $56
	rst $18                                                  ; $3984 : $df
	ld d, (hl)                                                  ; $3985 : $56
	rst $10                                                  ; $3986 : $d7
	dec sp                                                  ; $3987 : $3b
	ld e, c                                                  ; $3988 : $59
	di                                                  ; $3989 : $f3
	dec d                                                  ; $398a : $15
	ld l, a                                                  ; $398b : $6f
	ld a, $46                                                  ; $398c : $3e, $46
	add a, l                                                  ; $398e : $85
	ld e, c                                                  ; $398f : $59
	ret po                                                  ; $3990 : $e0

	ret po                                                  ; $3991 : $e0

	ld l, l                                                  ; $3992 : $6d

br_02_3993:
	rst $08                                                  ; $3993 : $cf
	ld e, c                                                  ; $3994 : $59
	ld e, $33                                                  ; $3995 : $1e, $33
	jp pe, $e159                                                  ; $3997 : $ea, $59, $e1
	ex af, af'                                                  ; $399a : $08
	ld e, c                                                  ; $399b : $59
	ld (hl), d                                                  ; $399c : $72
	ld e, c                                                  ; $399d : $59
	ld (hl), d                                                  ; $399e : $72
	rst $08                                                  ; $399f : $cf
	ld e, c                                                  ; $39a0 : $59

br_02_39a1:
	ld (hl), e                                                  ; $39a1 : $73
	ld e, c                                                  ; $39a2 : $59
	ld (hl), e                                                  ; $39a3 : $73
	rst $08                                                  ; $39a4 : $cf
	ld e, c                                                  ; $39a5 : $59
	halt                                                  ; $39a6 : $76
	jr nz, br_02_3993                                                  ; $39a7 : $20, $ea

	ld e, c                                                  ; $39a9 : $59
	ld (hl), a                                                  ; $39aa : $77
	ex af, af'                                                  ; $39ab : $08
	cpl                                                  ; $39ac : $2f
	ld e, c                                                  ; $39ad : $59
	ld (hl), a                                                  ; $39ae : $77
	sbc a, (hl)                                                  ; $39af : $9e
	adc a, a                                                  ; $39b0 : $8f
	ld e, c                                                  ; $39b1 : $59
	ld (hl), a                                                  ; $39b2 : $77
	jp pe, $99e8                                                  ; $39b3 : $ea, $e8, $99
	cpl                                                  ; $39b6 : $2f

br_02_39b7:
	ld e, c                                                  ; $39b7 : $59
	ld a, c                                                  ; $39b8 : $79
	djnz br_02_39a1                                                  ; $39b9 : $10, $e6
	call $7e59                                                  ; $39bb : $cd, $59, $7e
	xor a                                                  ; $39be : $af
	ld e, c                                                  ; $39bf : $59
	call po, $593f                                                  ; $39c0 : $e4, $3f, $59
	call po, $313f                                                  ; $39c3 : $e4, $3f, $31
	sbc a, (hl)                                                  ; $39c6 : $9e
	ld c, d                                                  ; $39c7 : $4a
	and $d3                                                  ; $39c8 : $e6, $d3
	cp a                                                  ; $39ca : $bf
	ld e, c                                                  ; $39cb : $59
	call po, $3c9f                                                  ; $39cc : $e4, $9f, $3c
	ld a, (bc)                                                  ; $39cf : $0a
	ld h, e                                                  ; $39d0 : $63
	adc a, h                                                  ; $39d1 : $8c
	ld e, c                                                  ; $39d2 : $59

br_02_39d3:
	call po, $3c9f                                                  ; $39d3 : $e4, $9f, $3c
	and $e4                                                  ; $39d6 : $e6, $e4
	ld e, c                                                  ; $39d8 : $59
	add a, d                                                  ; $39d9 : $82
	and $b0                                                  ; $39da : $e6, $b0
	rst $08                                                  ; $39dc : $cf
	ld e, c                                                  ; $39dd : $59
	adc a, (hl)                                                  ; $39de : $8e
	rra                                                  ; $39df : $1f
	ld a, $39                                                  ; $39e0 : $3e, $39
	adc a, (hl)                                                  ; $39e2 : $8e
	rra                                                  ; $39e3 : $1f
	ld e, c                                                  ; $39e4 : $59
	sbc a, (hl)                                                  ; $39e5 : $9e

br_02_39e6:
	inc sp                                                  ; $39e6 : $33
	ld e, c                                                  ; $39e7 : $59
	sbc a, (hl)                                                  ; $39e8 : $9e
	ld (hl), e                                                  ; $39e9 : $73
	cp a                                                  ; $39ea : $bf
	ld e, c                                                  ; $39eb : $59
	xor a                                                  ; $39ec : $af
	ld e, c                                                  ; $39ed : $59
	or (hl)                                                  ; $39ee : $b6
	ex de, hl                                                  ; $39ef : $eb
	sbc a, b                                                  ; $39f0 : $98
	ret nc                                                  ; $39f1 : $d0

	ld a, a                                                  ; $39f2 : $7f
	ld e, c                                                  ; $39f3 : $59
	cp b                                                  ; $39f4 : $b8
	ccf                                                  ; $39f5 : $3f
	ld e, c                                                  ; $39f6 : $59
	cp h                                                  ; $39f7 : $bc
	ld a, $00                                                  ; $39f8 : $3e, $00
	ld e, $3f                                                  ; $39fa : $1e, $3f
	ld e, c                                                  ; $39fc : $59
	call $59cf                                                  ; $39fd : $cd, $cf, $59
	rst $18                                                  ; $3a00 : $df
	ld e, c                                                  ; $3a01 : $59
	call c, $dca9                                                  ; $3a02 : $dc, $a9, $dc
	ld e, c                                                  ; $3a05 : $59
	and $bc                                                  ; $3a06 : $e6, $bc
	ld e, c                                                  ; $3a08 : $59
	and $c3                                                  ; $3a09 : $e6, $c3
	ld e, c                                                  ; $3a0b : $59
	and $c3                                                  ; $3a0c : $e6, $c3
	di                                                  ; $3a0e : $f3
	sub h                                                  ; $3a0f : $94
	di                                                  ; $3a10 : $f3
	or e                                                  ; $3a11 : $b3
	xor e                                                  ; $3a12 : $ab
	inc a                                                  ; $3a13 : $3c
	jr c, br_02_39e6                                                  ; $3a14 : $38, $d0

	sub $e7                                                  ; $3a16 : $d6, $e7
	inc a                                                  ; $3a18 : $3c
	ld e, c                                                  ; $3a19 : $59
	and $c3                                                  ; $3a1a : $e6, $c3
	ld e, c                                                  ; $3a1c : $59
	ld (hl), d                                                  ; $3a1d : $72
	ld e, c                                                  ; $3a1e : $59
	and $c3                                                  ; $3a1f : $e6, $c3
	rst $08                                                  ; $3a21 : $cf
	ld e, (hl)                                                  ; $3a22 : $5e
	ld h, d                                                  ; $3a23 : $62
	ret                                                  ; $3a24 : $c9


	adc a, a                                                  ; $3a25 : $8f
	ld e, (hl)                                                  ; $3a26 : $5e
	ld l, (hl)                                                  ; $3a27 : $6e
	inc de                                                  ; $3a28 : $13
	ld e, (hl)                                                  ; $3a29 : $5e
	ld l, (hl)                                                  ; $3a2a : $6e
	ld e, $16                                                  ; $3a2b : $1e, $16
	adc a, (hl)                                                  ; $3a2d : $8e
	rra                                                  ; $3a2e : $1f
	ld e, (hl)                                                  ; $3a2f : $5e
	ld l, (hl)                                                  ; $3a30 : $6e
	ld b, (hl)                                                  ; $3a31 : $46
	cpl                                                  ; $3a32 : $2f
	ld e, (hl)                                                  ; $3a33 : $5e
	ld l, (hl)                                                  ; $3a34 : $6e
	ld b, (hl)                                                  ; $3a35 : $46
	ld h, $de                                                  ; $3a36 : $26, $de
	xor a                                                  ; $3a38 : $af
	ld e, (hl)                                                  ; $3a39 : $5e
	ld l, (hl)                                                  ; $3a3a : $6e
	ld c, d                                                  ; $3a3b : $4a
	ld e, (hl)                                                  ; $3a3c : $5e
	ld l, (hl)                                                  ; $3a3d : $6e
	ld c, (hl)                                                  ; $3a3e : $4e
	ld l, h                                                  ; $3a3f : $6c
	ld e, (hl)                                                  ; $3a40 : $5e
	ld l, b                                                  ; $3a41 : $68
	pop hl                                                  ; $3a42 : $e1
	dec bc                                                  ; $3a43 : $0b
	jp pe, $685e                                                  ; $3a44 : $ea, $5e, $68
	rst $18                                                  ; $3a47 : $df
	ld e, (hl)                                                  ; $3a48 : $5e
	ld l, e                                                  ; $3a49 : $6b
	sbc a, b                                                  ; $3a4a : $98
	ld e, (hl)                                                  ; $3a4b : $5e
	ld l, e                                                  ; $3a4c : $6b
	or (hl)                                                  ; $3a4d : $b6
	djnz br_02_39d3                                                  ; $3a4e : $10, $83
	ld e, (hl)                                                  ; $3a50 : $5e
	xor (hl)                                                  ; $3a51 : $ae
	dec bc                                                  ; $3a52 : $0b
	ld h, d                                                  ; $3a53 : $62
	ld e, (hl)                                                  ; $3a54 : $5e
	and d                                                  ; $3a55 : $a2
	cp c                                                  ; $3a56 : $b9
	dec d                                                  ; $3a57 : $15
	ld a, c                                                  ; $3a58 : $79
	or (hl)                                                  ; $3a59 : $b6
	rra                                                  ; $3a5a : $1f
	ld e, (hl)                                                  ; $3a5b : $5e

br_02_3a5c:
	and d                                                  ; $3a5c : $a2
	cp c                                                  ; $3a5d : $b9
	pop hl                                                  ; $3a5e : $e1
	jr c, br_02_3abf                                                  ; $3a5f : $38, $5e

	xor d                                                  ; $3a61 : $aa
	sbc a, l                                                  ; $3a62 : $9d
	ld d, e                                                  ; $3a63 : $53
	add a, $cf                                                  ; $3a64 : $c6, $cf
	ld l, a                                                  ; $3a66 : $6f

br_02_3a67:
	ld l, (hl)                                                  ; $3a67 : $6e
	inc bc                                                  ; $3a68 : $03
	or (hl)                                                  ; $3a69 : $b6
	rrca                                                  ; $3a6a : $0f
	ld l, (hl)                                                  ; $3a6b : $6e

Call_02_3a6c:
	inc bc                                                  ; $3a6c : $03
	or (hl)                                                  ; $3a6d : $b6
	ex af, af'                                                  ; $3a6e : $08
	ld h, c                                                  ; $3a6f : $61
	ccf                                                  ; $3a70 : $3f
	ld h, c                                                  ; $3a71 : $61
	ccf                                                  ; $3a72 : $3f
	ld sp, $0eb3                                                  ; $3a73 : $31, $b3, $0e
	ld c, a                                                  ; $3a76 : $4f
	ld h, c                                                  ; $3a77 : $61
	ccf                                                  ; $3a78 : $3f
	inc (hl)                                                  ; $3a79 : $34
	ld h, e                                                  ; $3a7a : $63
	ld (hl), d                                                  ; $3a7b : $72
	ld h, c                                                  ; $3a7c : $61
	ccf                                                  ; $3a7d : $3f
	inc (hl)                                                  ; $3a7e : $34
	ld h, e                                                  ; $3a7f : $63
	ld (hl), d                                                  ; $3a80 : $72
	rst $08                                                  ; $3a81 : $cf
	ld h, c                                                  ; $3a82 : $61
	ld a, $03                                                  ; $3a83 : $3e, $03
	cp (hl)                                                  ; $3a85 : $be
	inc e                                                  ; $3a86 : $1c
	ld h, c                                                  ; $3a87 : $61
	scf                                                  ; $3a88 : $37

br_02_3a89:
	ex af, af'                                                  ; $3a89 : $08
	cpl                                                  ; $3a8a : $2f
	ld h, d                                                  ; $3a8b : $62
	dec b                                                  ; $3a8c : $05
	sbc a, a                                                  ; $3a8d : $9f
	ld h, d                                                  ; $3a8e : $62
	jr c, br_02_3a67                                                  ; $3a8f : $38, $d6

	ld c, (hl)                                                  ; $3a91 : $4e
	xor a                                                  ; $3a92 : $af
	ld h, h                                                  ; $3a93 : $64
	ld l, (hl)                                                  ; $3a94 : $6e
	rla                                                  ; $3a95 : $17
	sbc a, c                                                  ; $3a96 : $99
	ld h, (hl)                                                  ; $3a97 : $66
	ld h, a                                                  ; $3a98 : $67
	halt                                                  ; $3a99 : $76
	adc a, c                                                  ; $3a9a : $89
	ld l, h                                                  ; $3a9b : $6c

Jump_02_3a9c:
	ld l, (hl)                                                  ; $3a9c : $6e
	ld c, (hl)                                                  ; $3a9d : $4e
	ld b, (hl)                                                  ; $3a9e : $46

br_02_3a9f:
	pop hl                                                  ; $3a9f : $e1
	or b                                                  ; $3aa0 : $b0

br_02_3aa1:
	adc a, l                                                  ; $3aa1 : $8d
	rst $08                                                  ; $3aa2 : $cf
	ld l, (hl)                                                  ; $3aa3 : $6e
	ld c, (hl)                                                  ; $3aa4 : $4e

br_02_3aa5:
	ld b, (hl)                                                  ; $3aa5 : $46
	pop hl                                                  ; $3aa6 : $e1
	or b                                                  ; $3aa7 : $b0
	sub $98                                                  ; $3aa8 : $d6, $98
	ld l, (hl)                                                  ; $3aaa : $6e
	ld c, (hl)                                                  ; $3aab : $4e
	ld c, (hl)                                                  ; $3aac : $4e
	ld l, b                                                  ; $3aad : $68
	ld l, (hl)                                                  ; $3aae : $6e
	or b                                                  ; $3aaf : $b0
	sub $98                                                  ; $3ab0 : $d6, $98
	ld l, (hl)                                                  ; $3ab2 : $6e
	ld c, d                                                  ; $3ab3 : $4a
	jr nc, br_02_3acb                                                  ; $3ab4 : $30, $15

	ld ($4a6e), a                                                  ; $3ab6 : $32, $6e, $4a
	sbc a, e                                                  ; $3ab9 : $9b
	ret nc                                                  ; $3aba : $d0

	adc a, l                                                  ; $3abb : $8d
	ld l, (hl)                                                  ; $3abc : $6e
	ld c, d                                                  ; $3abd : $4a
	cp c                                                  ; $3abe : $b9

br_02_3abf:
	rst $20                                                  ; $3abf : $e7
	inc a                                                  ; $3ac0 : $3c
	ld l, (hl)                                                  ; $3ac1 : $6e
	ld c, d                                                  ; $3ac2 : $4a
	and $b6                                                  ; $3ac3 : $e6, $b6
	sub $3c                                                  ; $3ac5 : $d6, $3c
	ld l, b                                                  ; $3ac7 : $68
	di                                                  ; $3ac8 : $f3
	ex af, af'                                                  ; $3ac9 : $08
	ld l, b                                                  ; $3aca : $68

br_02_3acb:
	djnz br_02_3a5c                                                  ; $3acb : $10, $8f
	ld l, b                                                  ; $3acd : $68

br_02_3ace:
	djnz br_02_3a9f                                                  ; $3ace : $10, $cf
	ld l, b                                                  ; $3ad0 : $68
	rla                                                  ; $3ad1 : $17
	and $23                                                  ; $3ad2 : $e6, $23
	cpl                                                  ; $3ad4 : $2f
	ld l, b                                                  ; $3ad5 : $68
	rla                                                  ; $3ad6 : $17
	and $23                                                  ; $3ad7 : $e6, $23
	rst $08                                                  ; $3ad9 : $cf
	ld l, b                                                  ; $3ada : $68
	dec de                                                  ; $3adb : $1b
	jr nc, br_02_3aa1                                                  ; $3adc : $30, $c3

	ld l, b                                                  ; $3ade : $68
	dec de                                                  ; $3adf : $1b
	jr nc, br_02_3aa5                                                  ; $3ae0 : $30, $c3

	cpl                                                  ; $3ae2 : $2f
	ld l, b                                                  ; $3ae3 : $68
	inc hl                                                  ; $3ae4 : $23
	and e                                                  ; $3ae5 : $a3
	add a, d                                                  ; $3ae6 : $82
	jr c, $13                                                  ; $3ae7 : $38, $13

	ld l, b                                                  ; $3ae9 : $68
	inc hl                                                  ; $3aea : $23
	and e                                                  ; $3aeb : $a3
	add a, d                                                  ; $3aec : $82
	jr c, br_02_3ace                                                  ; $3aed : $38, $df

	ld l, b                                                  ; $3aef : $68
	ld h, $0f                                                  ; $3af0 : $26, $0f
	inc c                                                  ; $3af2 : $0c
	ld l, b                                                  ; $3af3 : $68
	ld h, $08                                                  ; $3af4 : $26, $08
	di                                                  ; $3af6 : $f3
	sub c                                                  ; $3af7 : $91
	jr nc, br_02_3a89                                                  ; $3af8 : $30, $8f

	ld l, b                                                  ; $3afa : $68
	ld h, $08                                                  ; $3afb : $26, $08
	rrca                                                  ; $3afd : $0f
	ld l, b                                                  ; $3afe : $68
	ld h, $08                                                  ; $3aff : $26, $08
	rst $08                                                  ; $3b01 : $cf
	ld l, b                                                  ; $3b02 : $68
	ld h, $e1                                                  ; $3b03 : $26, $e1
	jr c, br_02_3aa5                                                  ; $3b05 : $38, $9e

	ld l, h                                                  ; $3b07 : $6c
	ld l, b                                                  ; $3b08 : $68
	ld l, $6c                                                  ; $3b09 : $2e, $6c
	ld l, b                                                  ; $3b0b : $68
	ld l, $6c                                                  ; $3b0c : $2e, $6c
	in a, ($60)                                                  ; $3b0e : $db, $60
	halt                                                  ; $3b10 : $76
	ex de, hl                                                  ; $3b11 : $eb
	dec c                                                  ; $3b12 : $0d
	ld l, c                                                  ; $3b13 : $69
	adc a, a                                                  ; $3b14 : $8f
	ld l, b                                                  ; $3b15 : $68
	ld l, $6c                                                  ; $3b16 : $2e, $6c
	in a, ($ea)                                                  ; $3b18 : $db, $ea
	ld l, b                                                  ; $3b1a : $68
	ld b, a                                                  ; $3b1b : $47
	dec c                                                  ; $3b1c : $0d
	ld l, c                                                  ; $3b1d : $69
	adc a, a                                                  ; $3b1e : $8f
	ld l, b                                                  ; $3b1f : $68
	ld d, e                                                  ; $3b20 : $53
	or (hl)                                                  ; $3b21 : $b6
	rst $18                                                  ; $3b22 : $df
	ld l, b                                                  ; $3b23 : $68
	ld l, l                                                  ; $3b24 : $6d
	ld h, b                                                  ; $3b25 : $60
	out ($2f), a                                                  ; $3b26 : $d3, $2f
	ld l, b                                                  ; $3b28 : $68
	ld (hl), e                                                  ; $3b29 : $73
	call c, $8368                                                  ; $3b2a : $dc, $68, $83
	cp a                                                  ; $3b2d : $bf
	inc a                                                  ; $3b2e : $3c
	ex (sp), hl                                                  ; $3b2f : $e3
	scf                                                  ; $3b30 : $37
	dec a                                                  ; $3b31 : $3d
	sbc a, b                                                  ; $3b32 : $98
	ld l, b                                                  ; $3b33 : $68
	add a, (hl)                                                  ; $3b34 : $86
	adc a, (hl)                                                  ; $3b35 : $8e
	rra                                                  ; $3b36 : $1f
	ld l, b                                                  ; $3b37 : $68

Jump_02_3b38:
	sbc a, e                                                  ; $3b38 : $9b
	pop hl                                                  ; $3b39 : $e1
	ex af, af'                                                  ; $3b3a : $08
	ld h, c                                                  ; $3b3b : $61
	ld l, b                                                  ; $3b3c : $68
	jp $681d                                                  ; $3b3d : $c3, $1d, $68


	add a, $23                                                  ; $3b40 : $c6, $23
	ld l, b                                                  ; $3b42 : $68
	call $6ebe                                                  ; $3b43 : $cd, $be, $6e
	ld b, e                                                  ; $3b46 : $43
	adc a, l                                                  ; $3b47 : $8d
	ld l, b                                                  ; $3b48 : $68
	adc a, $67                                                  ; $3b49 : $ce, $67
	dec c                                                  ; $3b4b : $0d
	sbc a, e                                                  ; $3b4c : $9b
	ld l, b                                                  ; $3b4d : $68
	adc a, $67                                                  ; $3b4e : $ce, $67
	dec c                                                  ; $3b50 : $0d
	sbc a, e                                                  ; $3b51 : $9b
	rst $08                                                  ; $3b52 : $cf
	ld l, b                                                  ; $3b53 : $68
	adc a, $67                                                  ; $3b54 : $ce, $67
	ld l, b                                                  ; $3b56 : $68
	ld l, b                                                  ; $3b57 : $68
	ret nc                                                  ; $3b58 : $d0

	ex (sp), hl                                                  ; $3b59 : $e3
	ccf                                                  ; $3b5a : $3f
	ld l, b                                                  ; $3b5b : $68
	out ($77), a                                                  ; $3b5c : $d3, $77
	ld l, (hl)                                                  ; $3b5e : $6e
	inc de                                                  ; $3b5f : $13
	add a, c                                                  ; $3b60 : $81
	ccf                                                  ; $3b61 : $3f
	ld l, b                                                  ; $3b62 : $68
	out ($b8), a                                                  ; $3b63 : $d3, $b8
	rlca                                                  ; $3b65 : $07
	ld l, b                                                  ; $3b66 : $68
	out ($b8), a                                                  ; $3b67 : $d3, $b8
	dec c                                                  ; $3b69 : $0d
	ld l, c                                                  ; $3b6a : $69
	add a, b                                                  ; $3b6b : $80
	ld a, a                                                  ; $3b6c : $7f
	ld l, b                                                  ; $3b6d : $68
	out ($bc), a                                                  ; $3b6e : $d3, $bc

br_02_3b70:
	ret nc                                                  ; $3b70 : $d0

	out ($68), a                                                  ; $3b71 : $d3, $68
	out ($cd), a                                                  ; $3b73 : $d3, $cd

br_02_3b75:
	ld l, b                                                  ; $3b75 : $68
	ccf                                                  ; $3b76 : $3f
	ld l, b                                                  ; $3b77 : $68

br_02_3b78:
	exx                                                  ; $3b78 : $d9
	di                                                  ; $3b79 : $f3
	rrca                                                  ; $3b7a : $0f
	ld l, b                                                  ; $3b7b : $68
	exx                                                  ; $3b7c : $d9
	di                                                  ; $3b7d : $f3
	push de                                                  ; $3b7e : $d5
	ccf                                                  ; $3b7f : $3f
	ld l, b                                                  ; $3b80 : $68
	in a, ($92)                                                  ; $3b81 : $db, $92
	and $13                                                  ; $3b83 : $e6, $13
	cpl                                                  ; $3b85 : $2f
	ld l, b                                                  ; $3b86 : $68
	in a, ($92)                                                  ; $3b87 : $db, $92
	and $16                                                  ; $3b89 : $e6, $16
	adc a, (hl)                                                  ; $3b8b : $8e
	rra                                                  ; $3b8c : $1f
	ld l, b                                                  ; $3b8d : $68
	sbc a, $66                                                  ; $3b8e : $de, $66
	sub $98                                                  ; $3b90 : $d6, $98

br_02_3b92:
	ld l, b                                                  ; $3b92 : $68
	rst $20                                                  ; $3b93 : $e7
	jr c, br_02_3b75                                                  ; $3b94 : $38, $df

	ld l, b                                                  ; $3b96 : $68
	rst $20                                                  ; $3b97 : $e7
	jr c, br_02_3b70                                                  ; $3b98 : $38, $d6

	sbc a, b                                                  ; $3b9a : $98
	ld l, b                                                  ; $3b9b : $68
	rst $20                                                  ; $3b9c : $e7
	jr c, br_02_3b78                                                  ; $3b9d : $38, $d9

	cp a                                                  ; $3b9f : $bf
	ld l, b                                                  ; $3ba0 : $68
	rst $20                                                  ; $3ba1 : $e7
	dec sp                                                  ; $3ba2 : $3b
	jp $af7e                                                  ; $3ba3 : $c3, $7e, $af


	ld l, b                                                  ; $3ba6 : $68
	rst $20                                                  ; $3ba7 : $e7
	dec sp                                                  ; $3ba8 : $3b
	out ($e0), a                                                  ; $3ba9 : $d3, $e0
	or b                                                  ; $3bab : $b0
	out ($cf), a                                                  ; $3bac : $d3, $cf
	ld l, b                                                  ; $3bae : $68
	rst $20                                                  ; $3baf : $e7
	sub a                                                  ; $3bb0 : $97
	and $8d                                                  ; $3bb1 : $e6, $8d
	dec bc                                                  ; $3bb3 : $0b
	jp pe, $8669                                                  ; $3bb4 : $ea, $69, $86
	ex af, af'                                                  ; $3bb7 : $08
	ld l, c                                                  ; $3bb8 : $69
	ret pe                                                  ; $3bb9 : $e8

	rrca                                                  ; $3bba : $0f
	ld l, e                                                  ; $3bbb : $6b
	ex af, af'                                                  ; $3bbc : $08
	ld l, e                                                  ; $3bbd : $6b
	ld c, $5f                                                  ; $3bbe : $0e, $5f
	ld l, e                                                  ; $3bc0 : $6b
	scf                                                  ; $3bc1 : $37
	ex af, af'                                                  ; $3bc2 : $08
	cpl                                                  ; $3bc3 : $2f
	ld l, e                                                  ; $3bc4 : $6b
	ld l, h                                                  ; $3bc5 : $6c
	ld l, e                                                  ; $3bc6 : $6b

br_02_3bc7:
	sbc a, b                                                  ; $3bc7 : $98
	ld l, e                                                  ; $3bc8 : $6b
	sbc a, (hl)                                                  ; $3bc9 : $9e
	ld e, (hl)                                                  ; $3bca : $5e
	ld l, c                                                  ; $3bcb : $69
	ld l, h                                                  ; $3bcc : $6c
	ld l, e                                                  ; $3bcd : $6b
	sbc a, (hl)                                                  ; $3bce : $9e
	ld e, (hl)                                                  ; $3bcf : $5e
	ld l, c                                                  ; $3bd0 : $69
	ld l, h                                                  ; $3bd1 : $6c
	di                                                  ; $3bd2 : $f3
	add hl, de                                                  ; $3bd3 : $19
	add a, h                                                  ; $3bd4 : $84
	ld ($0d3b), a                                                  ; $3bd5 : $32, $3b, $0d
	ld l, c                                                  ; $3bd8 : $69
	adc a, a                                                  ; $3bd9 : $8f
	ld l, e                                                  ; $3bda : $6b
	or b                                                  ; $3bdb : $b0
	ret pe                                                  ; $3bdc : $e8

	ld (bc), a                                                  ; $3bdd : $02
	ld l, $af                                                  ; $3bde : $2e, $af
	ld l, e                                                  ; $3be0 : $6b
	or (hl)                                                  ; $3be1 : $b6
	pop hl                                                  ; $3be2 : $e1
	dec c                                                  ; $3be3 : $0d

Call_02_3be4:
	ld l, c                                                  ; $3be4 : $69
	adc a, a                                                  ; $3be5 : $8f
	ld l, h                                                  ; $3be6 : $6c
	di                                                  ; $3be7 : $f3
	ex af, af'                                                  ; $3be8 : $08
	ld l, h                                                  ; $3be9 : $6c
	nop                                                  ; $3bea : $00
	rra                                                  ; $3beb : $1f
	ld l, h                                                  ; $3bec : $6c
	ld (hl), b                                                  ; $3bed : $70
	call po, $706c                                                  ; $3bee : $e4, $6c, $70
	add a, d                                                  ; $3bf1 : $82
	rst $08                                                  ; $3bf2 : $cf
	ld l, h                                                  ; $3bf3 : $6c
	sbc a, (hl)                                                  ; $3bf4 : $9e
	nop                                                  ; $3bf5 : $00

br_02_3bf6:
	cp a                                                  ; $3bf6 : $bf
	ld l, h                                                  ; $3bf7 : $6c
	sbc a, l                                                  ; $3bf8 : $9d
	sbc a, d                                                  ; $3bf9 : $9a
	ccf                                                  ; $3bfa : $3f
	ld l, h                                                  ; $3bfb : $6c
	or b                                                  ; $3bfc : $b0
	scf                                                  ; $3bfd : $37
	ld l, h                                                  ; $3bfe : $6c
	push de                                                  ; $3bff : $d5
	call po, $cfe6                                                  ; $3c00 : $e4, $e6, $cf
	ld l, l                                                  ; $3c03 : $6d
	rst $08                                                  ; $3c04 : $cf
	rst $38                                                  ; $3c05 : $ff
	ld l, l                                                  ; $3c06 : $6d
	ld a, $cf                                                  ; $3c07 : $3e, $cf
	jp po, $f3ec                                                  ; $3c09 : $e2, $ec, $f3
	ex (sp), hl                                                  ; $3c0c : $e3

Call_02_3c0d:
	jr c, br_02_3b92                                                  ; $3c0d : $38, $83

	ld l, $af                                                  ; $3c0f : $2e, $af
	jp po, Jump_02_1eec                                                  ; $3c11 : $e2, $ec, $1e
	rst $08                                                  ; $3c14 : $cf
	ld a, ($8338)                                                  ; $3c15 : $3a, $38, $83
	jp pe, $e2cf                                                  ; $3c18 : $ea, $cf, $e2
	ld bc, $e2e3                                                  ; $3c1b : $01, $e3, $e2
	ld bc, $f3e3                                                  ; $3c1e : $01, $e3, $f3
	ld a, c                                                  ; $3c21 : $79
	add a, d                                                  ; $3c22 : $82
	sbc a, b                                                  ; $3c23 : $98
	jp po, $e301                                                  ; $3c24 : $e2, $01, $e3
	ret                                                  ; $3c27 : $c9


	adc a, a                                                  ; $3c28 : $8f
	jp po, $e301                                                  ; $3c29 : $e2, $01, $e3
	ret                                                  ; $3c2c : $c9


	adc a, a                                                  ; $3c2d : $8f
	jr c, br_02_3bc7                                                  ; $3c2e : $38, $97

	ccf                                                  ; $3c30 : $3f
	jp po, $e501                                                  ; $3c31 : $e2, $01, $e5
	and $3c                                                  ; $3c34 : $e6, $3c
	di                                                  ; $3c36 : $f3
	djnz br_02_3bf6                                                  ; $3c37 : $10, $bd
	ld h, e                                                  ; $3c39 : $63
	cp a                                                  ; $3c3a : $bf
	jp po, Jump_02_1e0e                                                  ; $3c3b : $e2, $0e, $1e
	ld h, b                                                  ; $3c3e : $60
	cp a                                                  ; $3c3f : $bf
	jp po, $f306                                                  ; $3c40 : $e2, $06, $f3
	rlca                                                  ; $3c43 : $07
	ld b, $e2                                                  ; $3c44 : $06, $e2
	ld c, $40                                                  ; $3c46 : $0e, $40
	ld h, c                                                  ; $3c48 : $61
	rrca                                                  ; $3c49 : $0f
	jp po, $430e                                                  ; $3c4a : $e2, $0e, $43
	rst $08                                                  ; $3c4d : $cf
	jp po, $430e                                                  ; $3c4e : $e2, $0e, $43
	rst $08                                                  ; $3c51 : $cf
	ld a, $10                                                  ; $3c52 : $3e, $10
	or h                                                  ; $3c54 : $b4
	ld h, e                                                  ; $3c55 : $63
	ld (hl), d                                                  ; $3c56 : $72
	jp po, $430e                                                  ; $3c57 : $e2, $0e, $43
	rst $08                                                  ; $3c5a : $cf
	ld (hl), $e2                                                  ; $3c5b : $36, $e2
	ld c, $43                                                  ; $3c5d : $0e, $43
	rst $08                                                  ; $3c5f : $cf
	ld a, $80                                                  ; $3c60 : $3e, $80
	.db $dd                                                  ; $3c62 : $dd
	jp po, $430e                                                  ; $3c63 : $e2, $0e, $43
	call $889e                                                  ; $3c66 : $cd, $9e, $88
	jp po, $e608                                                  ; $3c69 : $e2, $08, $e6
	dec bc                                                  ; $3c6c : $0b
	jp pe, $0ae2                                                  ; $3c6d : $ea, $e2, $0a
	ex af, af'                                                  ; $3c70 : $08
	inc a                                                  ; $3c71 : $3c
	ccf                                                  ; $3c72 : $3f
	jp po, $be0e                                                  ; $3c73 : $e2, $0e, $be
	cp a                                                  ; $3c76 : $bf
	jp po, $8f30                                                  ; $3c77 : $e2, $30, $8f
	ld a, $49                                                  ; $3c7a : $3e, $49
	add a, e                                                  ; $3c7c : $83
	rst $18                                                  ; $3c7d : $df
	jp po, $4334                                                  ; $3c7e : $e2, $34, $43
	cp h                                                  ; $3c81 : $bc
	sbc a, b                                                  ; $3c82 : $98
	jp po, $4334                                                  ; $3c83 : $e2, $34, $43
	cp h                                                  ; $3c86 : $bc
	sbc a, b                                                  ; $3c87 : $98
	di                                                  ; $3c88 : $f3
	ld d, $de                                                  ; $3c89 : $16, $de
	xor a                                                  ; $3c8b : $af
	jp po, $4334                                                  ; $3c8c : $e2, $34, $43
	cp h                                                  ; $3c8f : $bc
	sbc a, b                                                  ; $3c90 : $98
	di                                                  ; $3c91 : $f3
	call po, $493e                                                  ; $3c92 : $e4, $3e, $49
	or (hl)                                                  ; $3c95 : $b6
	rlca                                                  ; $3c96 : $07
	jp po, $7e37                                                  ; $3c97 : $e2, $37, $7e
	and h                                                  ; $3c9a : $a4
	ld l, h                                                  ; $3c9b : $6c
	ld e, a                                                  ; $3c9c : $5f
	jp po, $613b                                                  ; $3c9d : $e2, $3b, $61
	ld e, c                                                  ; $3ca0 : $59
	jp po, $be3b                                                  ; $3ca1 : $e2, $3b, $be
	xor a                                                  ; $3ca4 : $af
	scf                                                  ; $3ca5 : $37
	inc sp                                                  ; $3ca6 : $33
	di                                                  ; $3ca7 : $f3
	ld (hl), e                                                  ; $3ca8 : $73
	ret pe                                                  ; $3ca9 : $e8

	ld l, h                                                  ; $3caa : $6c

Call_02_3cab:
	jp po, $e63b                                                  ; $3cab : $e2, $3b, $e6
	ret nz                                                  ; $3cae : $c0

	ld (hl), e                                                  ; $3caf : $73
	call po, Call_02_3ce2                                                  ; $3cb0 : $e4, $e2, $3c
	jp $9ef3                                                  ; $3cb3 : $c3, $f3, $9e


	add a, e                                                  ; $3cb6 : $83
	adc a, h                                                  ; $3cb7 : $8c
	jp po, $e63c                                                  ; $3cb8 : $e2, $3c, $e6
	rst $08                                                  ; $3cbb : $cf
	jp po, $863e                                                  ; $3cbc : $e2, $3e, $86
	push bc                                                  ; $3cbf : $c5
	jp po, $8c3e                                                  ; $3cc0 : $e2, $3e, $8c
	jp po, $8f90                                                  ; $3cc3 : $e2, $90, $8f
	add hl, sp                                                  ; $3cc6 : $39
	ld c, a                                                  ; $3cc7 : $4f
	jr nc, -$4f                                                  ; $3cc8 : $30, $b1

	jp po, $0895                                                  ; $3cca : $e2, $95, $08
	add a, e                                                  ; $3ccd : $83
	rst $08                                                  ; $3cce : $cf
	ld a, $1e                                                  ; $3ccf : $3e, $1e
	ld l, l                                                  ; $3cd1 : $6d
	jr c, -$20                                                  ; $3cd2 : $38, $e0

	dec sp                                                  ; $3cd4 : $3b
	pop hl                                                  ; $3cd5 : $e1
	jp po, $8f95                                                  ; $3cd6 : $e2, $95, $8f
	jp po, $8f95                                                  ; $3cd9 : $e2, $95, $8f
	jr nc, br_02_3cfe                                                  ; $3cdc : $30, $20

	call po, $e2cf                                                  ; $3cde : $e4, $cf, $e2
	sub l                                                  ; $3ce1 : $95

Call_02_3ce2:
	adc a, a                                                  ; $3ce2 : $8f
	ld sp, $090e                                                  ; $3ce3 : $31, $0e, $09
	rst $18                                                  ; $3ce6 : $df
	jp po, $8f95                                                  ; $3ce7 : $e2, $95, $8f
	ld ($b333), a                                                  ; $3cea : $32, $33, $b3
	jp po, $8f95                                                  ; $3ced : $e2, $95, $8f
	dec (hl)                                                  ; $3cf0 : $35
	ex af, af'                                                  ; $3cf1 : $08
	add hl, de                                                  ; $3cf2 : $19
	ld e, $3f                                                  ; $3cf3 : $1e, $3f
	jp po, $8f95                                                  ; $3cf5 : $e2, $95, $8f
	ld a, $20                                                  ; $3cf8 : $3e, $20
	jp pe, $95e2                                                  ; $3cfa : $ea, $e2, $95
	adc a, a                                                  ; $3cfd : $8f

br_02_3cfe:
	ld a, $33                                                  ; $3cfe : $3e, $33
	adc a, b                                                  ; $3d00 : $88
	ld ($e2ea), a                                                  ; $3d01 : $32, $ea, $e2
	sub l                                                  ; $3d04 : $95
	adc a, a                                                  ; $3d05 : $8f
	ld a, $40                                                  ; $3d06 : $3e, $40
	cp h                                                  ; $3d08 : $bc
	ld d, b                                                  ; $3d09 : $50
	ld (hl), a                                                  ; $3d0a : $77
	jp po, $8f95                                                  ; $3d0b : $e2, $95, $8f
	ld a, $80                                                  ; $3d0e : $3e, $80
	.db $dd                                                  ; $3d10 : $dd
	jp po, $8895                                                  ; $3d11 : $e2, $95, $88
	jp pe, $95e2                                                  ; $3d14 : $ea, $e2, $95
	adc a, h                                                  ; $3d17 : $8c
	sbc a, b                                                  ; $3d18 : $98
	jp po, $8f96                                                  ; $3d19 : $e2, $96, $8f
	jp po, $8396                                                  ; $3d1c : $e2, $96, $83
	cpl                                                  ; $3d1f : $2f
	jp po, $8696                                                  ; $3d20 : $e2, $96, $86
	adc a, (hl)                                                  ; $3d23 : $8e
	rra                                                  ; $3d24 : $1f
	jp po, $8d96                                                  ; $3d25 : $e2, $96, $8d
	rst $08                                                  ; $3d28 : $cf
	jp po, $6397                                                  ; $3d29 : $e2, $97, $63
	rst $18                                                  ; $3d2c : $df
	jp po, $3c98                                                  ; $3d2d : $e2, $98, $3c
	jp po, Jump_02_209b                                                  ; $3d30 : $e2, $9b, $20
	adc a, a                                                  ; $3d33 : $8f
	jp po, Jump_02_3a9c                                                  ; $3d34 : $e2, $9c, $3a
	ld e, a                                                  ; $3d37 : $5f
	jp po, Jump_02_3a9c                                                  ; $3d38 : $e2, $9c, $3a
	ld e, a                                                  ; $3d3b : $5f
	ld sp, $b098                                                  ; $3d3c : $31, $98, $b0

Call_02_3d3f:
	cpl                                                  ; $3d3f : $2f
	jp po, Jump_02_3a9c                                                  ; $3d40 : $e2, $9c, $3a
	ld e, a                                                  ; $3d43 : $5f
	inc a                                                  ; $3d44 : $3c
	ret nc                                                  ; $3d45 : $d0

	halt                                                  ; $3d46 : $76
	adc a, a                                                  ; $3d47 : $8f
	jp po, Jump_02_26e6                                                  ; $3d48 : $e2, $e6, $26
	ld d, $07                                                  ; $3d4b : $16, $07
	jp po, $76e6                                                  ; $3d4d : $e2, $e6, $76
	ex af, af'                                                  ; $3d50 : $08
	di                                                  ; $3d51 : $f3
	ret po                                                  ; $3d52 : $e0

	sbc a, b                                                  ; $3d53 : $98
	cpl                                                  ; $3d54 : $2f
	jp po, $7ee6                                                  ; $3d55 : $e2, $e6, $7e
	xor a                                                  ; $3d58 : $af
	jp po, $7ee6                                                  ; $3d59 : $e2, $e6, $7e
	xor (hl)                                                  ; $3d5c : $ae
	rst $18                                                  ; $3d5d : $df
	jp po, $e4e6                                                  ; $3d5e : $e2, $e6, $e4
	xor a                                                  ; $3d61 : $af
	jp po, $83e6                                                  ; $3d62 : $e2, $e6, $83
	jp po, $a6e6                                                  ; $3d65 : $e2, $e6, $a6
	out ($bf), a                                                  ; $3d68 : $d3, $bf
	jp po, $cde6                                                  ; $3d6a : $e2, $e6, $cd
	jp po, $cde6                                                  ; $3d6d : $e2, $e6, $cd
	ld h, c                                                  ; $3d70 : $61
	ccf                                                  ; $3d71 : $3f
	ex (sp), hl                                                  ; $3d72 : $e3
	ex af, af'                                                  ; $3d73 : $08
	ret nz                                                  ; $3d74 : $c0

	rst $08                                                  ; $3d75 : $cf

br_02_3d76:
	ld sp, $ea6d                                                  ; $3d76 : $31, $6d, $ea
	ex (sp), hl                                                  ; $3d79 : $e3
	ex af, af'                                                  ; $3d7a : $08
	and $e3                                                  ; $3d7b : $e6, $e3
	ex (sp), hl                                                  ; $3d7d : $e3
	dec bc                                                  ; $3d7e : $0b
	ld c, $40                                                  ; $3d7f : $0e, $40
	ex de, hl                                                  ; $3d81 : $eb
	sbc a, (hl)                                                  ; $3d82 : $9e
	ld a, a                                                  ; $3d83 : $7f
	ex (sp), hl                                                  ; $3d84 : $e3
	dec c                                                  ; $3d85 : $0d
	ld e, (hl)                                                  ; $3d86 : $5e
	ld b, b                                                  ; $3d87 : $40
	add a, d                                                  ; $3d88 : $82
	and $e3                                                  ; $3d89 : $e6, $e3
	ld c, $60                                                  ; $3d8b : $0e, $60
	ld l, a                                                  ; $3d8d : $6f

br_02_3d8e:
	ex (sp), hl                                                  ; $3d8e : $e3
	ld c, $a0                                                  ; $3d8f : $0e, $a0
	ex (sp), hl                                                  ; $3d91 : $e3
	ex (sp), hl                                                  ; $3d92 : $e3
	inc sp                                                  ; $3d93 : $33
	xor a                                                  ; $3d94 : $af
	ex (sp), hl                                                  ; $3d95 : $e3
	inc sp                                                  ; $3d96 : $33
	xor h                                                  ; $3d97 : $ac
	ex (sp), hl                                                  ; $3d98 : $e3
	scf                                                  ; $3d99 : $37
	rst $20                                                  ; $3d9a : $e7
	ld l, b                                                  ; $3d9b : $68
	ex (sp), hl                                                  ; $3d9c : $e3
	jr c, -$7d                                                  ; $3d9d : $38, $83

	ld l, $af                                                  ; $3d9f : $2e, $af
	ex (sp), hl                                                  ; $3da1 : $e3
	jr c, br_02_3d8e                                                  ; $3da2 : $38, $ea

	rrca                                                  ; $3da4 : $0f
	ex (sp), hl                                                  ; $3da5 : $e3
	dec sp                                                  ; $3da6 : $3b
	sbc a, (hl)                                                  ; $3da7 : $9e
	inc de                                                  ; $3da8 : $13
	adc a, a                                                  ; $3da9 : $8f
	ex (sp), hl                                                  ; $3daa : $e3

br_02_3dab:
	ld a, $ae                                                  ; $3dab : $3e, $ae
	add hl, bc                                                  ; $3dad : $09
	dec bc                                                  ; $3dae : $0b
	cpl                                                  ; $3daf : $2f
	ex (sp), hl                                                  ; $3db0 : $e3
	ld a, $ac                                                  ; $3db1 : $3e, $ac
	ex (sp), hl                                                  ; $3db3 : $e3
	ld h, c                                                  ; $3db4 : $61
	ex (sp), hl                                                  ; $3db5 : $e3
	ex (sp), hl                                                  ; $3db6 : $e3
	ld h, a                                                  ; $3db7 : $67
	ld l, (hl)                                                  ; $3db8 : $6e
	ld b, b                                                  ; $3db9 : $40
	adc a, (hl)                                                  ; $3dba : $8e
	jr nz, br_02_3d76                                                  ; $3dbb : $20, $b9

	ex (sp), hl                                                  ; $3dbd : $e3
	ld h, a                                                  ; $3dbe : $67
	ld (hl), e                                                  ; $3dbf : $73
	cpl                                                  ; $3dc0 : $2f
	ex (sp), hl                                                  ; $3dc1 : $e3
	ld h, a                                                  ; $3dc2 : $67
	sub c                                                  ; $3dc3 : $91
	rlca                                                  ; $3dc4 : $07
	sbc a, e                                                  ; $3dc5 : $9b
	ld h, e                                                  ; $3dc6 : $63
	ex (sp), hl                                                  ; $3dc7 : $e3
	ld h, a                                                  ; $3dc8 : $67
	sbc a, (hl)                                                  ; $3dc9 : $9e
	dec de                                                  ; $3dca : $1b
	ld c, $4f                                                  ; $3dcb : $0e, $4f
	ex (sp), hl                                                  ; $3dcd : $e3
	ld h, a                                                  ; $3dce : $67
	sbc a, (hl)                                                  ; $3dcf : $9e
	ld b, e                                                  ; $3dd0 : $43
	out ($bf), a                                                  ; $3dd1 : $d3, $bf
	ex (sp), hl                                                  ; $3dd3 : $e3
	ld h, a                                                  ; $3dd4 : $67
	rst $18                                                  ; $3dd5 : $df
	ex (sp), hl                                                  ; $3dd6 : $e3
	ld l, b                                                  ; $3dd7 : $68
	cpl                                                  ; $3dd8 : $2f
	ex (sp), hl                                                  ; $3dd9 : $e3
	ld l, b                                                  ; $3dda : $68
	dec a                                                  ; $3ddb : $3d
	ld h, c                                                  ; $3ddc : $61
	ex (sp), hl                                                  ; $3ddd : $e3

br_02_3dde:
	ld l, b                                                  ; $3dde : $68
	pop hl                                                  ; $3ddf : $e1
	ex (sp), hl                                                  ; $3de0 : $e3
	ld l, b                                                  ; $3de1 : $68
	pop hl                                                  ; $3de2 : $e1
	di                                                  ; $3de3 : $f3
	ld b, e                                                  ; $3de4 : $43
	or d                                                  ; $3de5 : $b2
	ld l, b                                                  ; $3de6 : $68
	ex af, af'                                                  ; $3de7 : $08
	cpl                                                  ; $3de8 : $2f
	ex (sp), hl                                                  ; $3de9 : $e3
	ld l, b                                                  ; $3dea : $68
	pop hl                                                  ; $3deb : $e1
	di                                                  ; $3dec : $f3
	pop hl                                                  ; $3ded : $e1
	add hl, sp                                                  ; $3dee : $39
	cp (hl)                                                  ; $3def : $be
	inc de                                                  ; $3df0 : $13
	ex (sp), hl                                                  ; $3df1 : $e3

Jump_02_3df2:
	ld l, h                                                  ; $3df2 : $6c
	add a, $8e                                                  ; $3df3 : $c6, $8e
	rra                                                  ; $3df5 : $1f
	ex (sp), hl                                                  ; $3df6 : $e3
	ld l, l                                                  ; $3df7 : $6d
	sbc a, $af                                                  ; $3df8 : $de, $af
	ex (sp), hl                                                  ; $3dfa : $e3
	ld l, (hl)                                                  ; $3dfb : $6e

br_02_3dfc:
	add a, (hl)                                                  ; $3dfc : $86
	ex (sp), hl                                                  ; $3dfd : $e3
	add a, (hl)                                                  ; $3dfe : $86
	pop hl                                                  ; $3dff : $e1
	ld e, l                                                  ; $3e00 : $5d
	ex (sp), hl                                                  ; $3e01 : $e3
	adc a, c                                                  ; $3e02 : $89
	ret pe                                                  ; $3e03 : $e8

	ld (hl), e                                                  ; $3e04 : $73
	ld l, $13                                                  ; $3e05 : $2e, $13
	ex (sp), hl                                                  ; $3e07 : $e3
	adc a, c                                                  ; $3e08 : $89
	ret pe                                                  ; $3e09 : $e8

	adc a, a                                                  ; $3e0a : $8f
	ex (sp), hl                                                  ; $3e0b : $e3
	sbc a, c                                                  ; $3e0c : $99
	ex (sp), hl                                                  ; $3e0d : $e3
	ld c, $0e                                                  ; $3e0e : $0e, $0e
	ld l, e                                                  ; $3e10 : $6b
	or b                                                  ; $3e11 : $b0
	ex (sp), hl                                                  ; $3e12 : $e3
	sbc a, e                                                  ; $3e13 : $9b
	ex af, af'                                                  ; $3e14 : $08
	ex (sp), hl                                                  ; $3e15 : $e3
	sbc a, e                                                  ; $3e16 : $9b
	jr nc, br_02_3dfc                                                  ; $3e17 : $30, $e3

	sbc a, e                                                  ; $3e19 : $9b
	jr nc, br_02_3dab                                                  ; $3e1a : $30, $8f

	ex (sp), hl                                                  ; $3e1c : $e3
	or b                                                  ; $3e1d : $b0
	ex (sp), hl                                                  ; $3e1e : $e3
	dec c                                                  ; $3e1f : $0d
	sub b                                                  ; $3e20 : $90
	ex (sp), hl                                                  ; $3e21 : $e3
	or e                                                  ; $3e22 : $b3
	call po, $8f76                                                  ; $3e23 : $e4, $76, $8f
	ex (sp), hl                                                  ; $3e26 : $e3
	jp pe, $9f9d                                                  ; $3e27 : $ea, $9d, $9f
	ld a, (hl)                                                  ; $3e2a : $7e
	rst $08                                                  ; $3e2b : $cf
	ld a, $29                                                  ; $3e2c : $3e, $29
	ld e, b                                                  ; $3e2e : $58
	ret                                                  ; $3e2f : $c9


	adc a, a                                                  ; $3e30 : $8f
	ld (hl), b                                                  ; $3e31 : $70
	di                                                  ; $3e32 : $f3
	and b                                                  ; $3e33 : $a0
	ex de, hl                                                  ; $3e34 : $eb
	ld (hl), b                                                  ; $3e35 : $70
	ld e, $5e                                                  ; $3e36 : $1e, $5e
	ld h, e                                                  ; $3e38 : $63
	cp a                                                  ; $3e39 : $bf
	ld (hl), b                                                  ; $3e3a : $70
	dec de                                                  ; $3e3b : $1b
	sbc a, h                                                  ; $3e3c : $9c
	jp $4070                                                  ; $3e3d : $c3, $70, $40


	jp pe, $d33d                                                  ; $3e40 : $ea, $3d, $d3
	ld (hl), b                                                  ; $3e43 : $70
	ex (sp), hl                                                  ; $3e44 : $e3
	ccf                                                  ; $3e45 : $3f
	ld (hl), b                                                  ; $3e46 : $70
	ex (sp), hl                                                  ; $3e47 : $e3
	ccf                                                  ; $3e48 : $3f
	ld a, $46                                                  ; $3e49 : $3e, $46
	dec d                                                  ; $3e4b : $15
	ld l, (hl)                                                  ; $3e4c : $6e
	djnz br_02_3dde                                                  ; $3e4d : $10, $8f
	ld (hl), b                                                  ; $3e4f : $70
	ex (sp), hl                                                  ; $3e50 : $e3
	ccf                                                  ; $3e51 : $3f
	add hl, sp                                                  ; $3e52 : $39
	adc a, l                                                  ; $3e53 : $8d
	dec bc                                                  ; $3e54 : $0b
	ld l, c                                                  ; $3e55 : $69
	ld (hl), b                                                  ; $3e56 : $70
	ex (sp), hl                                                  ; $3e57 : $e3
	ccf                                                  ; $3e58 : $3f
	inc a                                                  ; $3e59 : $3c
	and $a3                                                  ; $3e5a : $e6, $a3
	or (hl)                                                  ; $3e5c : $b6
	sbc a, e                                                  ; $3e5d : $9b
	ld (hl), b                                                  ; $3e5e : $70
	add a, d                                                  ; $3e5f : $82
	ld ($8270), a                                                  ; $3e60 : $32, $70, $82
	pop bc                                                  ; $3e63 : $c1
	ld a, (bc)                                                  ; $3e64 : $0a
	ccf                                                  ; $3e65 : $3f
	ld (hl), b                                                  ; $3e66 : $70
	adc a, (hl)                                                  ; $3e67 : $8e
	ld e, $60                                                  ; $3e68 : $1e, $60
	pop hl                                                  ; $3e6a : $e1
	ccf                                                  ; $3e6b : $3f
	ld (hl), b                                                  ; $3e6c : $70
	sbc a, h                                                  ; $3e6d : $9c
	ld (hl), b                                                  ; $3e6e : $70
	cp (hl)                                                  ; $3e6f : $be
	inc de                                                  ; $3e70 : $13
	cp a                                                  ; $3e71 : $bf
	ld (hl), b                                                  ; $3e72 : $70
	ret nz                                                  ; $3e73 : $c0

	pop hl                                                  ; $3e74 : $e1
	add a, b                                                  ; $3e75 : $80
	ld (hl), b                                                  ; $3e76 : $70
	call z, $7063                                                  ; $3e77 : $cc, $63, $70
	call $d370                                                  ; $3e7a : $cd, $70, $d3
	or b                                                  ; $3e7d : $b0
	adc a, a                                                  ; $3e7e : $8f
	ld (hl), b                                                  ; $3e7f : $70
	sub $8f                                                  ; $3e80 : $d6, $8f
	ld (hl), b                                                  ; $3e82 : $70
	sub $de                                                  ; $3e83 : $d6, $de
	ld h, d                                                  ; $3e85 : $62
	ccf                                                  ; $3e86 : $3f
	ld (hl), b                                                  ; $3e87 : $70
	sbc a, $76                                                  ; $3e88 : $de, $76
	rrca                                                  ; $3e8a : $0f
	ld (hl), b                                                  ; $3e8b : $70
	and $81                                                  ; $3e8c : $e6, $81
	ld e, a                                                  ; $3e8e : $5f
	ld (hl), b                                                  ; $3e8f : $70
	rst $20                                                  ; $3e90 : $e7
	rrca                                                  ; $3e91 : $0f
	ld (hl), b                                                  ; $3e92 : $70
	ret pe                                                  ; $3e93 : $e8

	ld (hl), b                                                  ; $3e94 : $70
	ret pe                                                  ; $3e95 : $e8

	call po, Call_02_360e                                                  ; $3e96 : $e4, $0e, $36
	adc a, (hl)                                                  ; $3e99 : $8e
	rra                                                  ; $3e9a : $1f
	ld (hl), b                                                  ; $3e9b : $70
	ret pe                                                  ; $3e9c : $e8

	adc a, a                                                  ; $3e9d : $8f
	ld a, $09                                                  ; $3e9e : $3e, $09
	ret pe                                                  ; $3ea0 : $e8

	halt                                                  ; $3ea1 : $76
	adc a, (hl)                                                  ; $3ea2 : $8e
	rra                                                  ; $3ea3 : $1f
	ld (hl), b                                                  ; $3ea4 : $70
	ret pe                                                  ; $3ea5 : $e8

	or e                                                  ; $3ea6 : $b3

Call_02_3ea7:
	add a, c                                                  ; $3ea7 : $81
	ccf                                                  ; $3ea8 : $3f
	ld (hl), b                                                  ; $3ea9 : $70
	ret pe                                                  ; $3eaa : $e8

	rst $08                                                  ; $3eab : $cf
	ld (hl), b                                                  ; $3eac : $70
	jp pe, $ea70                                                  ; $3ead : $ea, $70, $ea
	dec sp                                                  ; $3eb0 : $3b
	ld (hl), b                                                  ; $3eb1 : $70
	jp pe, $cf3b                                                  ; $3eb2 : $ea, $3b, $cf
	ld (hl), b                                                  ; $3eb5 : $70
	jp pe, $73cf                                                  ; $3eb6 : $ea, $cf, $73
	ld (bc), a                                                  ; $3eb9 : $02
	ld (hl), e                                                  ; $3eba : $73
	ld (bc), a                                                  ; $3ebb : $02
	ld l, b                                                  ; $3ebc : $68
	pop hl                                                  ; $3ebd : $e1
	ld (hl), e                                                  ; $3ebe : $73
	inc b                                                  ; $3ebf : $04
	ld (hl), e                                                  ; $3ec0 : $73
	ld c, $1e                                                  ; $3ec1 : $0e, $1e
	ld h, e                                                  ; $3ec3 : $63
	ld (hl), e                                                  ; $3ec4 : $73
	ex af, af'                                                  ; $3ec5 : $08
	ld l, b                                                  ; $3ec6 : $68
	pop hl                                                  ; $3ec7 : $e1
	ld (hl), e                                                  ; $3ec8 : $73
	ld a, (bc)                                                  ; $3ec9 : $0a
	di                                                  ; $3eca : $f3
	jp pe, $bf30                                                  ; $3ecb : $ea, $30, $bf
	ld (hl), e                                                  ; $3ece : $73

Call_02_3ecf:
	dec bc                                                  ; $3ecf : $0b
	add a, (hl)                                                  ; $3ed0 : $86
	adc a, (hl)                                                  ; $3ed1 : $8e
	rra                                                  ; $3ed2 : $1f
	ld (hl), e                                                  ; $3ed3 : $73
	ld c, $73                                                  ; $3ed4 : $0e, $73
	rst $08                                                  ; $3ed6 : $cf
	ld (hl), e                                                  ; $3ed7 : $73
	ret po                                                  ; $3ed8 : $e0

	ex af, af'                                                  ; $3ed9 : $08
	sbc a, b                                                  ; $3eda : $98
	ld (hl), e                                                  ; $3edb : $73
	cpl                                                  ; $3edc : $2f
	ld (hl), e                                                  ; $3edd : $73
	ccf                                                  ; $3ede : $3f
	ld (hl), e                                                  ; $3edf : $73
	ld c, l                                                  ; $3ee0 : $4d
	ld (hl), e                                                  ; $3ee1 : $73
	pop hl                                                  ; $3ee2 : $e1
	jr c, br_02_3f14                                                  ; $3ee3 : $38, $2f

	ld (hl), e                                                  ; $3ee5 : $73
	pop hl                                                  ; $3ee6 : $e1
	jr c, br_02_3f09                                                  ; $3ee7 : $38, $20

	cp (hl)                                                  ; $3ee9 : $be
	xor a                                                  ; $3eea : $af
	ld (hl), e                                                  ; $3eeb : $73
	pop hl                                                  ; $3eec : $e1
	ld l, h                                                  ; $3eed : $6c
	ld (hl), b                                                  ; $3eee : $70
	sub $e7                                                  ; $3eef : $d6, $e7
	ccf                                                  ; $3ef1 : $3f
	ld (hl), e                                                  ; $3ef2 : $73
	pop hl                                                  ; $3ef3 : $e1
	ld l, h                                                  ; $3ef4 : $6c
	ld (hl), b                                                  ; $3ef5 : $70
	sbc a, $6b                                                  ; $3ef6 : $de, $6b
	ccf                                                  ; $3ef8 : $3f
	ld (hl), e                                                  ; $3ef9 : $73
	pop hl                                                  ; $3efa : $e1
	rst $08                                                  ; $3efb : $cf
	ld (hl), e                                                  ; $3efc : $73
	ld h, h                                                  ; $3efd : $64
	di                                                  ; $3efe : $f3
	dec sp                                                  ; $3eff : $3b
	ld h, c                                                  ; $3f00 : $61

Jump_02_3f01:
	ret                                                  ; $3f01 : $c9


Call_02_3f02:
	adc a, a                                                  ; $3f02 : $8f

br_02_3f03:
	ld (hl), e                                                  ; $3f03 : $73
	add a, (hl)                                                  ; $3f04 : $86
	adc a, a                                                  ; $3f05 : $8f
	ld (hl), e                                                  ; $3f06 : $73

Call_02_3f07:
	adc a, h                                                  ; $3f07 : $8c
	ld (hl), e                                                  ; $3f08 : $73

br_02_3f09:
	adc a, h                                                  ; $3f09 : $8c
	inc a                                                  ; $3f0a : $3c
	ld (hl), e                                                  ; $3f0b : $73
	sbc a, a                                                  ; $3f0c : $9f

Call_02_3f0d:
	ld (hl), e                                                  ; $3f0d : $73
	sbc a, b                                                  ; $3f0e : $98
	di                                                  ; $3f0f : $f3
	in a, ($9d)                                                  ; $3f10 : $db, $9d
	adc a, $3e                                                  ; $3f12 : $ce, $3e

br_02_3f14:
	xor a                                                  ; $3f14 : $af
	ld (hl), e                                                  ; $3f15 : $73
	sbc a, b                                                  ; $3f16 : $98
	dec bc                                                  ; $3f17 : $0b
	add hl, hl                                                  ; $3f18 : $29
	di                                                  ; $3f19 : $f3
	jr nz, br_02_3f03                                                  ; $3f1a : $20, $e7

	ld l, b                                                  ; $3f1c : $68
	ld d, $73                                                  ; $3f1d : $16, $73
	call z, $dd73                                                  ; $3f1f : $cc, $73, $dd
	dec sp                                                  ; $3f22 : $3b
	ld (hl), e                                                  ; $3f23 : $73
	.db $dd                                                  ; $3f24 : $dd
	dec sp                                                  ; $3f25 : $3b
	rst $08                                                  ; $3f26 : $cf
	ld (hl), e                                                  ; $3f27 : $73
	rst $20                                                  ; $3f28 : $e7
	scf                                                  ; $3f29 : $37
	di                                                  ; $3f2a : $f3
	sub h                                                  ; $3f2b : $94
	ld c, a                                                  ; $3f2c : $4f
	ld (hl), e                                                  ; $3f2d : $73

br_02_3f2e:
	rst $20                                                  ; $3f2e : $e7
	dec sp                                                  ; $3f2f : $3b
	ld (hl), e                                                  ; $3f30 : $73
	ret pe                                                  ; $3f31 : $e8

	ld l, h                                                  ; $3f32 : $6c
	ld (hl), e                                                  ; $3f33 : $73
	jp (hl)                                                  ; $3f34 : $e9


	ld l, b                                                  ; $3f35 : $68
	pop hl                                                  ; $3f36 : $e1
	exx                                                  ; $3f37 : $d9
	adc a, a                                                  ; $3f38 : $8f
	halt                                                  ; $3f39 : $76
	ret po                                                  ; $3f3a : $e0

	dec sp                                                  ; $3f3b : $3b
	sbc a, $af                                                  ; $3f3c : $de, $af
	halt                                                  ; $3f3e : $76
	ret po                                                  ; $3f3f : $e0

	dec sp                                                  ; $3f40 : $3b
	sbc a, $af                                                  ; $3f41 : $de, $af
	ld a, $03                                                  ; $3f43 : $3e, $03
	ld (hl), a                                                  ; $3f45 : $77
	halt                                                  ; $3f46 : $76
	ret po                                                  ; $3f47 : $e0

	jp pe, $760f                                                  ; $3f48 : $ea, $0f, $76
	ld ($76ea), hl                                                  ; $3f4b : $22, $ea, $76
	ld sp, $385d                                                  ; $3f4e : $31, $5d, $38
	call $8f36                                                  ; $3f51 : $cd, $36, $8f
	halt                                                  ; $3f54 : $76
	inc a                                                  ; $3f55 : $3c
	halt                                                  ; $3f56 : $76
	ld b, e                                                  ; $3f57 : $43
	halt                                                  ; $3f58 : $76
	ld c, l                                                  ; $3f59 : $4d
	rst $08                                                  ; $3f5a : $cf
	halt                                                  ; $3f5b : $76
	pop hl                                                  ; $3f5c : $e1
	ld c, $43                                                  ; $3f5d : $0e, $43
	adc a, l                                                  ; $3f5f : $8d
	rst $08                                                  ; $3f60 : $cf
	halt                                                  ; $3f61 : $76
	pop hl                                                  ; $3f62 : $e1
	ld e, l                                                  ; $3f63 : $5d
	di                                                  ; $3f64 : $f3
	jp pe, $bf30                                                  ; $3f65 : $ea, $30, $bf

Call_02_3f68:
	halt                                                  ; $3f68 : $76
	pop hl                                                  ; $3f69 : $e1
	ld e, l                                                  ; $3f6a : $5d
	xor $ea                                                  ; $3f6b : $ee, $ea
	jr nc, br_02_3f2e                                                  ; $3f6d : $30, $bf

	halt                                                  ; $3f6f : $76
	pop hl                                                  ; $3f70 : $e1
	ld e, l                                                  ; $3f71 : $5d
	ret po                                                  ; $3f72 : $e0

	and $7e                                                  ; $3f73 : $e6, $7e
	rrca                                                  ; $3f75 : $0f
	halt                                                  ; $3f76 : $76
	pop hl                                                  ; $3f77 : $e1
	ld e, l                                                  ; $3f78 : $5d
	inc a                                                  ; $3f79 : $3c
	rst $18                                                  ; $3f7a : $df
	halt                                                  ; $3f7b : $76
	pop hl                                                  ; $3f7c : $e1
	ld e, l                                                  ; $3f7d : $5d
	add a, (hl)                                                  ; $3f7e : $86
	adc a, (hl)                                                  ; $3f7f : $8e
	rra                                                  ; $3f80 : $1f
	halt                                                  ; $3f81 : $76
	ex (sp), hl                                                  ; $3f82 : $e3
	ccf                                                  ; $3f83 : $3f
	halt                                                  ; $3f84 : $76
	ex (sp), hl                                                  ; $3f85 : $e3
	inc a                                                  ; $3f86 : $3c
	halt                                                  ; $3f87 : $76
	call po, $760f                                                  ; $3f88 : $e4, $0f, $76
	add a, c                                                  ; $3f8b : $81
	sub a                                                  ; $3f8c : $97
	adc a, a                                                  ; $3f8d : $8f
	ld a, $43                                                  ; $3f8e : $3e, $43
	call po, $609b                                                  ; $3f90 : $e4, $9b, $60
	ld a, a                                                  ; $3f93 : $7f
	halt                                                  ; $3f94 : $76
	add a, d                                                  ; $3f95 : $82
	ret po                                                  ; $3f96 : $e0

	dec sp                                                  ; $3f97 : $3b

Call_02_3f98:
	pop hl                                                  ; $3f98 : $e1
	ld e, a                                                  ; $3f99 : $5f
	halt                                                  ; $3f9a : $76
	add a, e                                                  ; $3f9b : $83
	halt                                                  ; $3f9c : $76
	add a, e                                                  ; $3f9d : $83
	adc a, a                                                  ; $3f9e : $8f
	halt                                                  ; $3f9f : $76
	add a, e                                                  ; $3fa0 : $83
	cp a                                                  ; $3fa1 : $bf
	halt                                                  ; $3fa2 : $76
	add a, e                                                  ; $3fa3 : $83
	rst $08                                                  ; $3fa4 : $cf

Call_02_3fa5:
	halt                                                  ; $3fa5 : $76
	adc a, (hl)                                                  ; $3fa6 : $8e

Call_02_3fa7:
	ld l, h                                                  ; $3fa7 : $6c
	halt                                                  ; $3fa8 : $76
	sbc a, b                                                  ; $3fa9 : $98
	halt                                                  ; $3faa : $76
	out ($bf), a                                                  ; $3fab : $d3, $bf
	halt                                                  ; $3fad : $76
	out ($b0), a                                                  ; $3fae : $d3, $b0
	ld e, $af                                                  ; $3fb0 : $1e, $af
	halt                                                  ; $3fb2 : $76
	out ($b0), a                                                  ; $3fb3 : $d3, $b0
	sbc a, $6b                                                  ; $3fb5 : $de, $6b
	ccf                                                  ; $3fb7 : $3f
	halt                                                  ; $3fb8 : $76
	ld (ix+$76), e                                                  ; $3fb9 : $dd, $73, $76
	ld (ix-$0d), e                                                  ; $3fbc : $dd, $73, $f3
	ret po                                                  ; $3fbf : $e0

	ld l, (hl)                                                  ; $3fc0 : $6e
	rra                                                  ; $3fc1 : $1f
	dec (hl)                                                  ; $3fc2 : $35
	sbc a, e                                                  ; $3fc3 : $9b
	adc a, a                                                  ; $3fc4 : $8f

br_02_3fc5:
	halt                                                  ; $3fc5 : $76
	ld (ix-$0d), e                                                  ; $3fc6 : $dd, $73, $f3
	sbc a, e                                                  ; $3fc9 : $9b
	and l                                                  ; $3fca : $a5
	ex af, af'                                                  ; $3fcb : $08
	di                                                  ; $3fcc : $f3
	ex af, af'                                                  ; $3fcd : $08
	add a, (hl)                                                  ; $3fce : $86
	ccf                                                  ; $3fcf : $3f
	halt                                                  ; $3fd0 : $76
	rst $20                                                  ; $3fd1 : $e7
	ccf                                                  ; $3fd2 : $3f
	halt                                                  ; $3fd3 : $76
	rst $20                                                  ; $3fd4 : $e7

Jump_02_3fd5:
	jr nc, $62                                                  ; $3fd5 : $30, $62

	halt                                                  ; $3fd7 : $76
	rst $20                                                  ; $3fd8 : $e7
	ld ($e776), a                                                  ; $3fd9 : $32, $76, $e7
	dec sp                                                  ; $3fdc : $3b
	xor c                                                  ; $3fdd : $a9
	sub a                                                  ; $3fde : $97
	ld a, c                                                  ; $3fdf : $79
	ld (bc), a                                                  ; $3fe0 : $02
	ld a, c                                                  ; $3fe1 : $79
	djnz $7f                                                  ; $3fe2 : $10, $7f
	ld a, $10                                                  ; $3fe4 : $3e, $10
	ld (hl), b                                                  ; $3fe6 : $70
	jp (hl)                                                  ; $3fe7 : $e9


	jp pe, Jump_02_1079                                                  ; $3fe8 : $ea, $79, $10
	out ($79), a                                                  ; $3feb : $d3, $79
	djnz br_02_3fc5                                                  ; $3fed : $10, $d6
	sbc a, b                                                  ; $3fef : $98
	ret p                                                  ; $3ff0 : $f0

	rst $08                                                  ; $3ff1 : $cf
	ld a, c                                                  ; $3ff2 : $79
	inc hl                                                  ; $3ff3 : $23
	call Call_02_3f98                                                  ; $3ff4 : $cd, $98, $3f
	ld a, c                                                  ; $3ff7 : $79
	add a, d                                                  ; $3ff8 : $82
	sbc a, b                                                  ; $3ff9 : $98
	ld a, c                                                  ; $3ffa : $79
	adc a, (hl)                                                  ; $3ffb : $8e
	rra                                                  ; $3ffc : $1f
	ld a, c                                                  ; $3ffd : $79
	adc a, (hl)                                                  ; $3ffe : $8e
	rra                                                  ; $3fff : $1f