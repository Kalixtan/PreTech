#!/bin/sh

cmp -l "original/27-00780-002-002.u4" pc1000bios.bin | gawk '{printf "%08X %02X %02X\n", $1, strtonum(0$2), strtonum(0$3)}'
