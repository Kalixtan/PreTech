.include "includes.s"

.ramsection "WRAM 0" bank 0 slot 1

w4000:
    ds $112-0

wtodo_LowByteOfIOWriteAddr: ; $4112
    db

w4113:
    ds $6a-$13

wIdxInUnscrolledChars: ; $416a
    db

w416b:
    ds $c-$b

wUnscrolledLCDChars: ; $416c
    ds NUM_CHARS

w4180:
    ds $290-$180

wLCDChars: ; $4290
    ds NUM_CHARS

w42a4:
    .db

.ends
