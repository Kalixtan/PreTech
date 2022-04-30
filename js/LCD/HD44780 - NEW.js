'use strict';
class HD44780 {
	constructor(core) {
		this.debug = true;
		
		this.core = core;
		
		this.DDRAM  = new Uint8Array(104); // IDK the right size yet
		this.CGRAM  = new Uint8Array(64); // IDK the right size yet
		
		this.renderer = new render_character_LCD( core, this,
		 [ // PC 1000 desplay settings
			[0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49],
		 ]
		);
		
		this.is_CGRAM      = false
		this.char_size     = 10;
		this.is_4bit       = false;
		this.line_count    = 1;
		this.shift_display = false
		this.cursor_dir    = 1;
		this.cursor_pos    = 0;
		this.display       = true;  // ON/OFF
		this.cursor        = false; // ON/OFF
		this.cursorblink   = false; // ON/OFF
		
		this.write_byte    = 0;
		
		
		
		
		
		this.m_rs_state = false;
		this.m_rw_state = false;
		this.nibble = false;
	}
	reset( ){}
	
	get_desplay_byte( id ) {
		return this.DDRAM[id]
	}
	
	render( canvas ) {
		this.renderer.render( canvas )
	}
	
	
	
	
	read( RS ){
		if ( RS ){
			// Reads data from DDRAM or CGRAM.
			
			return;
		} else {
			// Reads the busy flag (BF) which indicates
			// internal operation and the contents of the 
			// address counter
			
			return;
		}
	}
	
	update_nibble( rs, rw ){
		if (this.m_rs_state != rs || this.m_rw_state != rw){
			this.m_rs_state = rs;
			this.m_rw_state = rw;
			this.nibble = false;
		}

		this.nibble = !this.nibble;
	}
	
	write( RS, data ){
		if (this.is_4bit){
			this.update_nibble(RS, 0);
		}
		if ( RS ){ // Write Data to CG or DDRAM (10 clocks)
			
			if (this.is_4bit){
				if(this.nibble){
					this.write_byte = data & 0xf0;
					return
				}else{
					this.write_byte |= ((data >> 4) & 0x0f);
				}
			} else {
				this.write_byte = data
			}
			
			// Writes data to DDRAM or CGRRAM
			if (this.is_CGRAM){
				this.CGRAM[this.cursor_pos] = this.write_byte
			} else {
				this.DDRAM[this.cursor_pos] = this.write_byte
			}
			this.cursor_pos += this.cursor_dir
			
			//console.log("DATA: "+this.write_byte)
			return;
		} else if (this.BIT( data, 7 )){ // Set DDRAM Address (10 clocks)
			// Sets DDRAM address, followed by
			// transfer of DDRAM data.
			var adress = data & 0b1111111;
			this.is_CGRAM = false;
			this.cursor_pos = adress;
			
			return;
			
		} else if (this.BIT( data, 6 )){ // Set CGRAM Address (10 clocks)
			// Set CGRAM addresses, followed by
			// transfer of CGRAM data
			var adress = data & 0b111111;
			this.is_CGRAM = true;
			this.cursor_pos = adress;
			return;
			
		} else if (this.BIT( data, 5 )){ // System Set (10 clocks)
			// Sets the interface data length (IF), number o
			// characters to be displayed (N), and character 
			// font (F).
			
			this.char_size   = this.BIT(data, 2) ? 10 : 8;
			this.line_count  = this.BIT(data, 3) + 1;
			this.is_4bit     = this.BIT(data, 4);
			console.log(this.is_4bit)
			
			return;
			
		} else if (this.BIT( data, 4 )){ // Cursor or Display Shift (10 clocks)
			// Moves the cursor and shifts the display 
			// without changing the contents of DDRAM.
			//TODO
			this.shift_display = this.BIT( data, 1 );
			this.cursor_dir = this.BIT( data, 0 ) ? -1 : +1; // RIGHT WAY AROUND?
			
			return;
			
		} else if (this.BIT( data, 3 )){ // Display ON/OFF (10 clocks)
			// Sets all display on/off (D) cursor on/off (C)
			// and character blinking in the cursor position(B)
			
			this.display     = this.BIT( data, 2 );
			this.cursor      = this.BIT( data, 1 );
			this.cursorblink = this.BIT( data, 0 );
			return;
			
		} else if (this.BIT( data, 2 )){ // Entry Mode Set (10 clocks)
			// Specifies the direction in which the cursor
			// moves and whether the display is to be
			// shifted or not, when data is writen to or read
			// from memory
			//TODO
			
			this.shift_display = this.BIT( data, 1 );
			this.cursor_dir = this.BIT( data, 0 ) ? +1 : -1; // RIGHT WAY AROUND?
			
			return;
			
		} else if (this.BIT( data, 1 )){ // Return Home (410 clocks)
			// Set DDRAM address 0 in the address
			// counter. Also returns any shifted data to
			// home. The contents of DDRAM remain
			// unchanged.
			
			this.cursor_pos  = 0; // TODO (IS THIS ALL IT DOES?)!
			
			return;
			
		} else if (this.BIT( data, 0 )){ // Clear Display (410 clocks)
			// Clears all display data and sets DDRAM
			// address 0 in the address counter
			
			for (var i = 0; i < this.DDRAM.length; i++) {
				this.DDRAM[i] = 0;
			}
			this.cursor_pos  = 0;
			
			return;
			
		}
	}
	
	
	
	
	
	update(){}
	
	
	
	update_debug(){
		document.getElementById('DDRAM').textContent = this.buf2hex(this.DDRAM);
		//document.getElementById('CGRAM').textContent = this.buf2hex(this.CGRAM);
		document.getElementById('CGRAM').textContent = this.buf2hex(this.core.mem.ram);
	}
	
	
	BIT( data, index ){
		return (data & (1 << (index))) !== 0;
	}
	
	toBin = (v) => {
		return '0b' + ((v.toString(2).toUpperCase()));
	}
	toHex = (v) => {
		return '0x' + ((v.toString(16).toUpperCase()));
	}
	buf2char(buffer) { // buffer is an ArrayBuffer
		return [...new Uint8Array(buffer)]
			.map(x => String.fromCharCode(x))
			.join('');
	}
	buf2hex(buffer) { // buffer is an ArrayBuffer
		return [...new Uint8Array(buffer)]
			.map(x => x.toString(16).padStart(2, '0'))
			.join(' ');
	}
}





