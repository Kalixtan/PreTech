'use strict';
class PRC1000_Keyboard {
	constructor(core) {
		this.core = core;
	}
	
	read( address ){
		if( address < 0x01ff ){
			//console.log("          KEYBOARD INPUT : "+this.toHex(address))
			return 0xff
		}
		return null
	}
	toBin = (v) => {
		return '0x' + (('0000' + v.toString(2).toUpperCase()));
	}
	toHex = (v) => {
		return '0x' + (('0000' + v.toString(16).toUpperCase()));
	}
}