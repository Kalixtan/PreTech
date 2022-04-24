'use strict';

class PRC1000_Keyboard {
	constructor(core) {
		this.core = core;
	}
	
	
	read_keys( line ){
		var b = 0
		switch(line){
			case 0: {
				b |= this.is_key_down(0)*0b00000001; // TYPEWRITER COURSE
				b |= this.is_key_down(1)*0b00000010; // COMPUTER-CONNECTION
				b |= this.is_key_down(2)*0b00000100; // GENERAL KNOWLEDGE
				b |= this.is_key_down(3)*0b00001000; // MATH
				b |= this.is_key_down(4)*0b00010000; // HISTORY (?)
				b |= this.is_key_down(5)*0b00100000; // GEOGRAPHY
				b |= this.is_key_down(6)*0b01000000; // NATURAL SCIENCES
				b |= this.is_key_down(7)*0b10000000; // GAMES
				break;
			}
			case 1: {
				b |= this.is_key_down(8)*0b00000001; // CART
				b |= this.is_key_down(9)*0b00000010; // OFF
				b |= this.is_key_down(10)*0b00000100; // Left(?)
				b |= this.is_key_down(11)*0b00001000; // Right(?)
				b |= this.is_key_down(12)*0b00010000; // ?
				b |= this.is_key_down(13)*0b00100000; // ?
				b |= this.is_key_down(14)*0b01000000; // ?
				b |= this.is_key_down(15)*0b10000000; // ELECTRONICS CALCULATOR
				break;
			}
			case 2: {
				b |= this.is_key_down(16)*0b00000001; // 0
				b |= this.is_key_down(17)*0b00000010; // ?
				b |= this.is_key_down(18)*0b00000100; // \xc3\xb6
				b |= this.is_key_down(19)*0b00001000; // \xc3\xa4
				b |= this.is_key_down(20)*0b00010000; // \xc3\xbc
				b |= this.is_key_down(21)*0b00100000; // -
				b |= this.is_key_down(22)*0b01000000; // Shift
				b |= this.is_key_down(23)*0b10000000; // P
				break;
			}
			case 3: {
				b |= this.is_key_down(24)*0b00000001; // 8
				b |= this.is_key_down(25)*0b00000010; // 9
				b |= this.is_key_down(26)*0b00000100; // O
				b |= this.is_key_down(27)*0b00001000; // K
				b |= this.is_key_down(28)*0b00010000; // L
				b |= this.is_key_down(29)*0b00100000; // ,
				b |= this.is_key_down(30)*0b01000000; // .
				b |= this.is_key_down(31)*0b10000000; // I
				break;
			}
			case 4: {
				b |= this.is_key_down(32)*0b00000001; // 6
				b |= this.is_key_down(33)*0b00000010; // 7
				b |= this.is_key_down(34)*0b00000100; // U
				b |= this.is_key_down(35)*0b00001000; // H
				b |= this.is_key_down(36)*0b00010000; // J
				b |= this.is_key_down(37)*0b00100000; // N
				b |= this.is_key_down(38)*0b01000000; // M
				b |= this.is_key_down(39)*0b10000000; // Z
				break;
			}
			case 5: {
				b |= this.is_key_down(40)*0b00000001; // 4
				b |= this.is_key_down(41)*0b00000010; // 5
				b |= this.is_key_down(42)*0b00000100; // T
				b |= this.is_key_down(43)*0b00001000; // F
				b |= this.is_key_down(44)*0b00010000; // G
				b |= this.is_key_down(45)*0b00100000; // V
				b |= this.is_key_down(46)*0b01000000; // B
				b |= this.is_key_down(47)*0b10000000; // R
				break;
			}
			case 6: {
				b |= this.is_key_down(48)*0b00000001; // 2
				b |= this.is_key_down(49)*0b00000010; // 3
				b |= this.is_key_down(50)*0b00000100; // E
				b |= this.is_key_down(51)*0b00001000; // S
				b |= this.is_key_down(52)*0b00010000; // D
				b |= this.is_key_down(53)*0b00100000; // X
				b |= this.is_key_down(54)*0b01000000; // C
				b |= this.is_key_down(55)*0b10000000; // W
				break;
			}
			case 7: {
				b |= this.is_key_down(56)*0b00000001; // Caps Lock"
				b |= this.is_key_down(57)*0b00000010; // 1
				b |= this.is_key_down(58)*0b00000100; // Q
				b |= this.is_key_down(59)*0b00001000; // A
				b |= this.is_key_down(60)*0b00010000; // Y
				b |= this.is_key_down(61)*0b00100000; // DEL
				b |= this.is_key_down(62)*0b01000000; // SPACE
				b |= this.is_key_down(63)*0b10000000; // ?
				break;
			}
			case 8: {
				b |= this.is_key_down(64)*0b00000001; // ? (KEYCODE_6_PAD)
				b |= this.is_key_down(65)*0b00000010; // ? (KEYCODE_7_PAD)
				b |= this.is_key_down(66)*0b00000100; // Q
				b |= this.is_key_down(67)*0b00001000; // A
				b |= this.is_key_down(68)*0b00010000; // Y
				b |= this.is_key_down(69)*0b00100000; // DEL
				b |= this.is_key_down(70)*0b01000000; // SPACE
				b |= this.is_key_down(71)*0b10000000; // ?
				break;
			}
			default: {
				b = 0x00
			}
			
		}
		
		b = (~b)&0xff
		//console.log(line+"  -  "+this.toBin(b))
		
		return b
	}
	read( address ){
		if( address < 0x01ff ){
			var data = 0xff;
			for (var line=0; line<9; line++){
				if (!(address & (1<<line))){
					data &= this.read_keys(line)
				}
			}
			//console.log("          KEYBOARD INPUT : "+this.toBin(data))
			
			return data
		}
		return null
	}
	
	
	is_key_down( key ) {
		return pressedKeys[key];
	}
	
	toBin = (v) => {
		return '0x' + (( v.toString(2).toUpperCase()));
	}
	toHex = (v) => {
		return '0x' + (('0000' + v.toString(16).toUpperCase()));
	}
}