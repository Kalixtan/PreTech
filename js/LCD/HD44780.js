'use strict';
class HD44780 {
	constructor(core) {
		this.debug = true;
		
		this.core = core;
		this.reset()
		this.renderer = new render_character_LCD( core, this,
		 [ // PC 1000 desplay settings
			[0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49],
		 ]
		);
	}
	get_desplay_byte( id ) {
		return this.DDRAM[id]
	}
	
	reset() {
		this.read_mode = false;
		
		this.DDRAM  = new Uint8Array(104); // IDK the right size yet
		this.CGRAM  = new Uint8Array(64); // IDK the right size yet
		this.m_active_ram = "DDRAM";
		
		this.m_busy_flag = false
		this.m_busy_timer = 0
		this.m_busy_factor = 1.0;
		
		this.m_char_size = 10
		this.m_nibble = false;
		this.m_data_len = 4
		this.m_num_line = 0
		
		this.m_address_pointer = 0;
		this.m_cursor_direction = 1;
		this.m_scroll_display  = 0;
		
		this.m_dr = 0;
		this.m_ir = 0;
		
		this.m_rs_state = false;
		this.m_rw_state = false;
		
	}
	
	render( canvas ) {
		this.renderer.render( canvas )
	}
	
	update_nibble( rs, rw ){
		if (this.m_rs_state != rs || this.m_rw_state != rw){
			this.m_rs_state = rs;
			this.m_rw_state = rw;
			this.m_nibble = false;
		}

		this.m_nibble = !this.m_nibble;
	}

	write( address, data ){
		if (this.m_data_len == 4){ // && !machine().side_effects_disabled())
			this.update_nibble((address>>8) & 0x01, 0);
		}
		
		var UNKNOWN_BITS = (address&0xff);
		var new_data = ((data<<4) ) & 0xff;
		
		if( address>>8 == 0x40 ){
		//if( address == 0x4000 ){ // (Works but ignores a bunch of things)
			this.core.lcd.control_write( new_data )
		}
		else if( address>>8 == 0x41 ){
		//else if( address == 0x4100 ){ // (Works but ignores a bunch of things)
			this.core.lcd.data_write( new_data )
		} else {
			console.log("          UNKNOWN IO WRITE : "+this.toHex(address))
		}
	}
	read( address ){
		
		if (this.m_data_len == 4){
			this.update_nibble(address>>8 == 0x41, 0);
		}
		return 0
	}
	data_write( data ){
		
		if (this.m_busy_flag) {
			if(this.debug)console.log("HD44780: Ignoring data write "+data+" due of busy flag\n")
			return
		}
		
		if (this.m_data_len == 4){ // UNTESTSED (copyed from mame)
			//console.log("NIM NIM")
			if(this.m_nibble){
				this.m_dr = data & 0xf0;
				return
			}else{
				this.m_dr |= ((data >> 4) & 0x0f);
			}
		} else {
			this.m_dr = data
		}
		//console.log("DATA: "+this.m_dr +"   "+this.m_active_ram)
		
		
		//console.log('data len', this.m_data_len)
		if (this.m_active_ram = "DDRAM"){
			this.DDRAM[ this.m_address_pointer ] = this.m_dr;
		} else {
			this.CGRAM[ this.m_address_pointer ] = this.m_dr;
		}
		this.m_address_pointer += this.m_cursor_direction

		
		this.correct_ac();
		
		this.set_busy_flag(41);
		this.update_debug();
	}
	
	shift_display( direction ){ // not used?
		if (direction == 1){ // taken from: https://stackoverflow.com/questions/63342389/shift-values-of-typed-javascript-array
			this.DDRAM.set(this.DDRAM.subarray(1))
			this.DDRAM.fill(0, -1)
		} else {
			this.DDRAM.set(this.DDRAM.subarray(0, -1), 1)
			this.DDRAM.fill(0, 0, 1)
		}
	}
		
	control_write( data ){
		if (this.m_data_len == 4) {
			if (this.m_nibble) {
				this.m_ir = data & 0xf0;
				return;
			} else {
				this.m_ir |= ((data >> 4) & 0x0f);
			}
		} else {
			this.m_ir = data;
		}

		if (this.BIT(this.m_ir, 7)){
			// set DDRAM address
			this.m_active_ram = "DDRAM";
			this.m_address_pointer = this.m_ir & 0x7f;
			this.correct_ac();
			this.set_busy_flag(37);
			if(this.debug)console.log("HD44780: set DDRAM address "+ this.toHex(this.m_address_pointer));
			return;
		}
		else if (this.BIT(this.m_ir, 6))
		{
			// set CGRAM address
			this.m_active_ram = "CGRAM";
			this.m_address_pointer = this.m_ir & 0x3f;
			this.set_busy_flag(37);

			if(this.debug)console.log("HD44780: set CGRAM address "+ this.toHex(this.m_address_pointer));
			return;
		}
		else if (this.BIT(this.m_ir, 5))
		{
			// function set
			// if (!m_function_set_at_any_time && !m_first_cmd && m_data_len == (BIT(data, 4) ? 8 : 4) && (m_char_size != (BIT(data, 2) ? 10 : 8) || m_num_line != (BIT(data, 3) + 1)))
			// {
				// logerror("HD44780: function set cannot be executed after other instructions unless the interface data length is changed\n");
				//return;
			// }
			//m_first_cmd = true;

			this.m_char_size = this.BIT(this.m_ir, 2) ? 10 : 8;
			this.m_data_len  = this.BIT(this.m_ir, 4) ? 8 : 4;
			this.m_num_line  = this.BIT(this.m_ir, 3) + 1;
			this.correct_ac();
			this.set_busy_flag(37);

			if(this.debug)console.log("HD44780: char size "+this.m_char_size+", data len "+this.m_data_len+", lines "+this.m_num_line);
			return;
		}
		else if (this.BIT(this.m_ir, 4))
		{
			// cursor or display shift
			if (this.BIT(this.m_ir, 3)){
				this.shift_display(this.m_cursor_direction);
				if(this.debug)console.log("HD44780: shift display: "+this.m_cursor_direction);
			}else{
				//update_ac(direction);
				this.m_cursor_direction = (!this.BIT(this.m_ir, 2)) ? +1 : -1;
				this.m_address_pointer += this.m_cursor_direction
				this.correct_ac();
				if(this.debug)console.log("HD44780: shift cursor: "+this.m_cursor_direction);
			}
			this.set_busy_flag(37);
			return;
		}
		else if (this.BIT(this.m_ir, 3))
		{
			// display on/off control
			this.m_display_on = this.BIT(this.m_ir, 2);
			this.m_cursor_on  = this.BIT(this.m_ir, 1);
			this.m_blink_on   = this.BIT(this.m_ir, 0);
			this.set_busy_flag(37);

			if(this.debug)console.log("HD44780: display "+this.m_display_on+", cursor "+this.m_cursor_on+", blink "+this.m_blink_on);
			return;
		}
		else if (this.BIT(this.m_ir, 2))
		{
			// // entry mode set
			this.m_cursor_direction = (!this.BIT(this.m_ir, 1)) ? +1 : -1;
			this.m_scroll_display  = this.BIT(this.m_ir, 0);
			this.set_busy_flag(37);

			if(this.debug)console.log("HD44780: entry mode set: direction "+this.m_cursor_direction+", shift "+this.m_scroll_display);
			return;
		}
		else if (this.BIT(this.m_ir, 1))
		{
			// return home
			if(this.debug)console.log("HD44780: Cursor home\n");
			this.set_busy_flag(1520);
			this.m_address_pointer  = 0;
			return;
		}
		else if (this.BIT(this.m_ir, 0))
		{
			// clear display
			if(this.debug)console.log("HD44780: clear display\n");
			this.set_busy_flag(1520);
			
			for (var i = 0; i < this.DDRAM.length; i++) {
				this.DDRAM[i] = 0;
			}
			this.m_address_pointer  = 0;
			
			return;
		}
		this.update_debug();
	}
	
	update_debug(){
		document.getElementById('DDRAM').textContent = this.buf2hex(this.DDRAM);
		//document.getElementById('CGRAM').textContent = this.buf2hex(this.CGRAM);
		document.getElementById('CGRAM').textContent = this.buf2hex(this.core.mem.ram);
		document.getElementById('busy_flag').textContent = this.m_busy_flag.toString() +"  "+ this.m_busy_timer.toString() +" -  "+this.m_active_ram;
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
	
	update(){
		if (this.m_busy_flag){
			this.m_busy_timer -= 1
			if (this.m_busy_timer <= 0){
				this.m_busy_flag = false;
			}
		} else {
			this.m_busy_timer = 0
		}
	}
	
	BIT( data, index ){
		return (data & (1 << index)) !== 0;
	}
	toHex = (v) => {
		return '0x' + (('0000' + v.toString(16).toUpperCase()));
	}
	toBin = (v) => {
		return '0b' + (( v.toString(2).toUpperCase()));
	}
	
	set_busy_flag = (usec) => {
		//this.m_busy_flag = true; // commented out as the PrC1000 doesnt wait for this and we want to get something desplaying before dealing with this stuff
		usec = usec * this.m_busy_factor + 0.5;
		this.m_busy_timer = usec
	}
	
	correct_ac(){
		
		if (this.m_active_ram == "DDRAM")
		{
			var max_ac = (this.m_num_line == 1) ? 0x4f : 0x67;

			if (this.m_ac > max_ac){
				this.m_ac -= max_ac + 1;
			} else if (this.m_ac < 0){
				this.m_ac = max_ac;
			} else if (this.m_num_line == 2 && this.m_ac > 0x27 && this.m_ac < 0x40){
				this.m_ac = 0x40 + (this.m_ac - 0x28);
			}
		}
		else{
			this.m_ac &= 0x3f;
		}
	}
}





