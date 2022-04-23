'use strict';
class IO {
	constructor(core) {
		this.core = core;
	}
	readport( address ){
		if(this.core.info.io)console.log("          readport : "+this.toHex(address))
		
	
		if( address < 0x01ff ){
			console.log("          readport : "+this.toHex(address))
			return 0xff
		}
		// HD44780
		else if( address == 0x4000 ){
			return this.core.lcd.read(0x4000)
		}
		else if( address == 0x4100 ){
			return this.core.lcd.read(0x4100)
		}
	}
	writeport( address, data ){
		if(data == undefined)return //data = 0 // shouldnt be here....?
		if(this.core.info.io)console.log("          writeport: "+this.toHex(address)+" - "+this.toBin(data))
		
	
		// HD44780
		this.core.lcd.write( address, data )
	
	}
	toBin = (v) => {
		return '0x' + (('0000' + v.toString(2).toUpperCase()));
	}
	toHex = (v) => {
		return '0x' + (('0000' + v.toString(16).toUpperCase()));
	}
  
	reset(hard) {
		if(this.core.info.io)console.log("          RESETING "+hard)
	}
}
