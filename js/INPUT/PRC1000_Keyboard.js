'use strict';

class PRC1000_Keyboard {
	constructor(core) {
		this.core = core;
	}
	
	
	read_keys( line ){
		var b = 0
		switch(line){
			case 0: {
				b |= this.is_key_down('1')*0b00000001; // TYPEWRITER COURSE
				b |= this.is_key_down('2')*0b00000010; // COMPUTER-CONNECTION
				b |= this.is_key_down('3')*0b00000100; // GENERAL KNOWLEDGE
				b |= this.is_key_down('4')*0b00001000; // MATH
				b |= this.is_key_down('5')*0b00010000; // HISTORY (?)
				b |= this.is_key_down('6')*0b00100000; // GEOGRAPHY
				b |= this.is_key_down('7')*0b01000000; // NATURAL SCIENCES
				b |= this.is_key_down('8')*0b10000000; // GAMES
				break;
			}
			case 1: {
				b |= this.is_key_down('9')*0b00000001; // CART
				b |= this.is_key_down('0')*0b00000010; // OFF
				b |= this.is_key_down('3')*0b00000100; // Left(?)
				b |= this.is_key_down('4')*0b00001000; // Right(?)
				b |= this.is_key_down('5')*0b00010000; // ?
				b |= this.is_key_down('6')*0b00100000; // ?
				b |= this.is_key_down('7')*0b01000000; // ?
				b |= this.is_key_down('8')*0b10000000; // ELECTRONICS CALCULATOR
				break;
			}
			case 2: {
				b |= this.is_key_down('9')*0b00000001; // 0
				b |= this.is_key_down('0')*0b00000010; // ?
				b |= this.is_key_down('3')*0b00000100; // \xc3\xb6
				b |= this.is_key_down('4')*0b00001000; // \xc3\xa4
				b |= this.is_key_down('5')*0b00010000; // \xc3\xbc
				b |= this.is_key_down('6')*0b00100000; // -
				b |= this.is_key_down('7')*0b01000000; // Shift
				b |= this.is_key_down('8')*0b10000000; // P
				break;
			}
			case 3: {
				b |= this.is_key_down('9')*0b00000001; // 8
				b |= this.is_key_down('0')*0b00000010; // 9
				b |= this.is_key_down('3')*0b00000100; // O
				b |= this.is_key_down('4')*0b00001000; // K
				b |= this.is_key_down('5')*0b00010000; // L
				b |= this.is_key_down('6')*0b00100000; // ,
				b |= this.is_key_down('7')*0b01000000; // .
				b |= this.is_key_down('8')*0b10000000; // I
				break;
			}
			case 4: {
				b |= this.is_key_down('9')*0b00000001; // 6
				b |= this.is_key_down('0')*0b00000010; // 7
				b |= this.is_key_down('3')*0b00000100; // U
				b |= this.is_key_down('4')*0b00001000; // H
				b |= this.is_key_down('5')*0b00010000; // J
				b |= this.is_key_down('6')*0b00100000; // N
				b |= this.is_key_down('7')*0b01000000; // M
				b |= this.is_key_down('8')*0b10000000; // Z
				break;
			}
			case 5: {
				b |= this.is_key_down('9')*0b00000001; // 4
				b |= this.is_key_down('0')*0b00000010; // 5
				b |= this.is_key_down('3')*0b00000100; // T
				b |= this.is_key_down('4')*0b00001000; // F
				b |= this.is_key_down('5')*0b00010000; // G
				b |= this.is_key_down('6')*0b00100000; // V
				b |= this.is_key_down('7')*0b01000000; // B
				b |= this.is_key_down('8')*0b10000000; // R
				break;
			}
			case 6: {
				b |= this.is_key_down('9')*0b00000001; // 2
				b |= this.is_key_down('0')*0b00000010; // 3
				b |= this.is_key_down('3')*0b00000100; // E
				b |= this.is_key_down('4')*0b00001000; // S
				b |= this.is_key_down('5')*0b00010000; // D
				b |= this.is_key_down('6')*0b00100000; // X
				b |= this.is_key_down('7')*0b01000000; // C
				b |= this.is_key_down('8')*0b10000000; // W
				break;
			}
			case 7: {
				b |= this.is_key_down('9')*0b00000001; // Caps Lock"
				b |= this.is_key_down('0')*0b00000010; // 1
				b |= this.is_key_down('3')*0b00000100; // Q
				b |= this.is_key_down('4')*0b00001000; // A
				b |= this.is_key_down('5')*0b00010000; // Y
				b |= this.is_key_down('6')*0b00100000; // DEL
				b |= this.is_key_down('7')*0b01000000; // SPACE
				b |= this.is_key_down('8')*0b10000000; // ?
				break;
			}
			case 8: {
				b |= this.is_key_down('9')*0b00000001; // ? (KEYCODE_6_PAD)
				b |= this.is_key_down('0')*0b00000010; // ? (KEYCODE_7_PAD)
				b |= 0xff; // NEEDED TO POWER ON!
				break;
			}
			default: {
				return 0x00
			}
			
		}
		
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
	
	
	is_key_down( key ) {
		return true
		// const state = {};

		// window.addEventListener('keyup', (e) => state[e.key] = false);
		// window.addEventListener('keydown', (e) => state[e.key] = true);

		// return (key) => state.hasOwnProperty(key) && state[key] || false;
	}
	
	toBin = (v) => {
		return '0x' + (( v.toString(2).toUpperCase()));
	}
	toHex = (v) => {
		return '0x' + (('0000' + v.toString(16).toUpperCase()));
	}
}