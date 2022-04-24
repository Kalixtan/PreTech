'use strict';
class IO {
	constructor(core) {
		this.core = core;
	}
	readport( address ){
		if(this.core.info.io)console.log("          readport : "+this.toHex(address))
		
		var output = null;
		
		if (output == null){
			output = this.core.keyboard.read(address);
		}
		if (output == null){
			output = this.core.lcd.read(address);
		}
		
		if (output == null){ // just incase nothing comes up
			output = 0;
			console.log("          UNKNOWN IO : "+this.toHex(address))
		}
		return output
	}
	writeport( address, data ){
		if(this.core.info.io)console.log("          writeport: "+this.toHex(address)+" - "+this.toBin(data))
		
	
		// HD44780
		this.core.lcd.write( address, data )
	
	}
	toBin = (v) => {
		return '0b' + ((v.toString(2).toUpperCase()));
	}
	toHex = (v) => {
		return '0x' + ((v.toString(16).toUpperCase()));
	}
  
	reset(hard) {
		if(this.core.info.io)console.log("          RESETING "+hard)
	}
}
