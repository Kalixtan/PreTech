'use strict';
class HD44780 {
	constructor(core) {
		this.core = core;
		this.read_mode = false;
		
		this.DDRAM  = new Uint8Array(104); // IDK the right size yet
		this.CGRAM  = new Uint8Array(64); // IDK the right size yet
		this.m_active_ram = "DDRAM";
		
		this.m_busy_flag = false
		this.m_busy_timer = 0
		this.m_busy_factor = 1.0;
		
		this.m_char_size = 10
		this.m_nibble = false;
		this.m_data_len = 8
		this.m_num_line = 0
		
		this.m_address_pointer = 0;
		this.m_cursor_direction = 1;
		this.m_scroll_display  = 0;
		
		this.m_dr = 0;
		
		this.m_rs_state = false;
		this.m_rw_state = false;
		
	}
	
	// update_nibble( rs, rw ){
		// if (this.m_rs_state != rs || this.m_rw_state != rw){
			// this.m_rs_state = rs;
			// this.m_rw_state = rw;
			// this.m_nibble = false;
		// }

		// this.m_nibble = !this.m_nibble;
	// }
	write( address, data ){
		// if (this.m_data_len == 4){ // && !machine().side_effects_disabled())
			// this.update_nibble(address & 0x01, 0);
		// }
		
		if( address == 0x4000 ){
			this.core.lcd.control_write( (data<<4) & 0xff )
		}
		else if( address == 0x4100 ){
			this.core.lcd.data_write( (data<<4) & 0xff )
		}
	}
	read( address ){
		// if (this.m_data_len == 4){ // && !machine().side_effects_disabled())
			// this.update_nibble(address & 0x01, 0);
		// }
		if (this.m_busy_flag){
			return 0x80 | (this.m_ac & 0x7f)
		} else {
			return 0 | (this.m_ac & 0x7f)
		}
	}
	data_write( data ){
		
		if (this.m_busy_flag) {
			console.log("HD44780: Ignoring data write "+data+" due of busy flag\n")
			return
		}
		
		if (this.m_data_len == 4){ // UNTESTSED (copyed from mame)
			//console.log("NIM NIM")
			if(this.m_nibble){
				this.m_dr = data & 0xf0;
				this.m_nibble = false
				//console.log("NIM "+this.m_dr)
				return
			}else{
				this.m_dr |= ((data >> 4) & 0x0f);
				//console.log("NOM "+this.m_dr)
				this.m_nibble = true
			}
		} else {
			this.m_dr = data
			this.m_nibble = true
		}
		console.log("DATA: "+this.m_dr)
		
		if (this.m_active_ram = "DDRAM"){
			this.DDRAM[ this.m_address_pointer ] = data;
			this.m_address_pointer += this.m_cursor_direction
		}
		this.correct_ac();
		
		this.set_busy_flag(41);
		this.update_debug();
	}
	control_write( data ){
		// IS NOT IN MAME.
		// if (this.m_busy_flag) {
			// console.log("HD44780: Ignoring control write "+data+" due of busy flag\n")
			// return
		// }
		
		if (this.BIT(data, 7)){
			// set DDRAM address
			this.m_active_ram = "DDRAM";
			this.m_address_pointer = data & 0x7f;
			this.correct_ac();
			this.set_busy_flag(37);
			console.log("HD44780: set DDRAM address "+ this.toHex(this.m_address_pointer));
			return;
		}
		else if (this.BIT(data, 6))
		{
			// set CGRAM address
			this.m_active_ram = "CGRAM";
			this.m_address_pointer = data & 0x3f;
			this.set_busy_flag(37);

			console.log("HD44780: set CGRAM address "+ this.toHex(this.m_address_pointer));
			return;
		}
		else if (this.BIT(data, 5))
		{
			// function set
			// if (!m_function_set_at_any_time && !m_first_cmd && m_data_len == (BIT(data, 4) ? 8 : 4) && (m_char_size != (BIT(data, 2) ? 10 : 8) || m_num_line != (BIT(data, 3) + 1)))
			// {
				// logerror("HD44780: function set cannot be executed after other instructions unless the interface data length is changed\n");
				//return;
			// }
			//m_first_cmd = true;

			this.m_char_size = this.BIT(data, 2) ? 10 : 8;
			this.m_data_len  = this.BIT(data, 4) ? 8 : 4;
			this.m_num_line  = this.BIT(data, 3) + 1;
			this.correct_ac();
			this.set_busy_flag(37);

			console.log("HD44780: char size "+this.m_char_size+", data len "+this.m_data_len+", lines "+this.m_num_line);
			return;
		}
		else if (this.BIT(data, 4))
		{
			// cursor or display shift
			this.m_cursor_direction = (this.BIT(data, 2)) ? +1 : -1;

			
			if (this.BIT(data, 3)){
				// shift_display(direction);
				console.log("HD44780: shift display: "+this.m_cursor_direction);
			}else{
				//update_ac(direction);
				console.log("HD44780: shift cursor: "+this.m_cursor_direction);
			}
			this.set_busy_flag(37);
			return;
		}
		else if (this.BIT(data, 3))
		{
			// display on/off control
			this.m_display_on = this.BIT(data, 2);
			this.m_cursor_on  = this.BIT(data, 1);
			this.m_blink_on   = this.BIT(data, 0);
			this.set_busy_flag(37);

			console.log("HD44780: display "+this.m_display_on+", cursor "+this.m_cursor_on+", blink "+this.m_blink_on);
			return;
		}
		else if (this.BIT(data, 2))
		{
			// // entry mode set
			this.m_cursor_direction = (this.BIT(data, 1)) ? +1 : -1;
			this.m_scroll_display  = this.BIT(data, 0);
			this.set_busy_flag(37);

			console.log("HD44780: entry mode set: direction "+this.m_cursor_direction+", shift "+this.m_scroll_display);
			return;
		}
		else if (this.BIT(data, 1))
		{
			// return home
			console.log("HD44780: Cursor home\n");
			set_busy_flag(1520);
			return;
		}
		else if (this.BIT(data, 0))
		{
			// clear display
			console.log("HD44780: clear display\n");
			set_busy_flag(1520);
			return;
		}
		this.update_debug();
	}
	
	update_debug(){
		document.getElementById('DDRAM').textContent = this.buf2hex(this.DDRAM);
		document.getElementById('CGRAM').textContent = this.buf2hex(this.CGRAM);
		document.getElementById('busy_flag').textContent = this.m_busy_flag.toString() +"  "+ this.m_busy_timer.toString();
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
		return (data & (1 << index)) === 0;
	}
	toHex = (v) => {
		return '0x' + (('0000' + v.toString(16).toUpperCase()));
	}
	toBin = (v) => {
		return '0x' + (('0000' + v.toString(16).toUpperCase()));
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





