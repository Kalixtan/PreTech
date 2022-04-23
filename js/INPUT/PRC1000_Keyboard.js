'use strict';

class PRC1000_Keyboard {
	constructor(core) {
		this.core = core;
	}
	
	
	read_keys( line ){
		var b = 0
		switch(line){
			case 0: {
				b |= is_key_down('1')*0b00000001; // TYPEWRITER COURSE
				b |= is_key_down('2')*0b00000010; // COMPUTER-CONNECTION
				b |= is_key_down('3')*0b00000100; // GENERAL KNOWLEDGE
				b |= is_key_down('4')*0b00001000; // MATH
				b |= is_key_down('5')*0b00010000; // HISTORY (?)
				b |= is_key_down('6')*0b00100000; // GEOGRAPHY
				b |= is_key_down('7')*0b01000000; // NATURAL SCIENCES
				b |= is_key_down('8')*0b10000000; // GAMES
				break;
			}
			case 1: {
				b |= is_key_down('9')*0b00000001; // CART
				b |= is_key_down('0')*0b00000010; // OFF
				b |= is_key_down('3')*0b00000100; // Left(?)
				b |= is_key_down('4')*0b00001000; // Right(?)
				b |= is_key_down('5')*0b00010000; // ?
				b |= is_key_down('6')*0b00100000; // ?
				b |= is_key_down('7')*0b01000000; // ?
				b |= is_key_down('8')*0b10000000; // ELECTRONICS CALCULATOR
				break;
			}
			case 2: {
				b |= is_key_down('9')*0b00000001; // 0
				b |= is_key_down('0')*0b00000010; // ?
				b |= is_key_down('3')*0b00000100; // \xc3\xb6
				b |= is_key_down('4')*0b00001000; // \xc3\xa4
				b |= is_key_down('5')*0b00010000; // \xc3\xbc
				b |= is_key_down('6')*0b00100000; // -
				b |= is_key_down('7')*0b01000000; // Shift
				b |= is_key_down('8')*0b10000000; // P
				break;
			}
			case 3: {
				b |= is_key_down('9')*0b00000001; // 8
				b |= is_key_down('0')*0b00000010; // 9
				b |= is_key_down('3')*0b00000100; // O
				b |= is_key_down('4')*0b00001000; // K
				b |= is_key_down('5')*0b00010000; // L
				b |= is_key_down('6')*0b00100000; // ,
				b |= is_key_down('7')*0b01000000; // .
				b |= is_key_down('8')*0b10000000; // I
				break;
			}
			case 4: {
				b |= is_key_down('9')*0b00000001; // 6
				b |= is_key_down('0')*0b00000010; // 7
				b |= is_key_down('3')*0b00000100; // U
				b |= is_key_down('4')*0b00001000; // H
				b |= is_key_down('5')*0b00010000; // J
				b |= is_key_down('6')*0b00100000; // N
				b |= is_key_down('7')*0b01000000; // M
				b |= is_key_down('8')*0b10000000; // Z
				break;
			}
			case 5: {
				b |= is_key_down('9')*0b00000001; // 4
				b |= is_key_down('0')*0b00000010; // 5
				b |= is_key_down('3')*0b00000100; // T
				b |= is_key_down('4')*0b00001000; // F
				b |= is_key_down('5')*0b00010000; // G
				b |= is_key_down('6')*0b00100000; // V
				b |= is_key_down('7')*0b01000000; // B
				b |= is_key_down('8')*0b10000000; // R
				break;
			}
			case 6: {
				b |= is_key_down('9')*0b00000001; // 2
				b |= is_key_down('0')*0b00000010; // 3
				b |= is_key_down('3')*0b00000100; // E
				b |= is_key_down('4')*0b00001000; // S
				b |= is_key_down('5')*0b00010000; // D
				b |= is_key_down('6')*0b00100000; // X
				b |= is_key_down('7')*0b01000000; // C
				b |= is_key_down('8')*0b10000000; // W
				break;
			}
			case 6: {
				b |= is_key_down('9')*0b00000001; // Caps Lock"
				b |= is_key_down('0')*0b00000010; // 1
				b |= is_key_down('3')*0b00000100; // Q
				b |= is_key_down('4')*0b00001000; // A
				b |= is_key_down('5')*0b00010000; // Y
				b |= is_key_down('6')*0b00100000; // DEL
				b |= is_key_down('7')*0b01000000; // SPACE
				b |= is_key_down('8')*0b10000000; // ?
				break;
			}
		}
		console.log(b)
		return b
	}
	read( address ){
		if( address < 0x01ff ){
			
			for (var line=0; line<9; line++){
				if (!(address & (1<<line))){
					//console.log("          KEYBOARD INPUT : "+(line))
					return this.read_keys(line)
				}
			}
			//console.log("          KEYBOARD INPUT : "+this.toBin(address))
			
			return 0x00
		}
		return null
	}
	toBin = (v) => {
		return '0x' + (( v.toString(2).toUpperCase()));
	}
	toHex = (v) => {
		return '0x' + (('0000' + v.toString(16).toUpperCase()));
	}
}