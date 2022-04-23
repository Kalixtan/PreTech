'use strict';
class CORE {
	constructor() {
		this.io = new IO(this);
		this.mem = new RAM(this);
		this.cpu = new Z80(this, this.mem);
		this.rom = null;
		this.lcd = new HD44780(this);
		this.info = {
			cpu: false,
			mem: false,
			io:  false,
		};
		this.started = false;
		this.frame = 0
	}
	setRom(arybuf) {
		this.reset();
		var u8array = new Uint8Array(arybuf);
		this.rom = u8array;
		for (var i = 0; i < u8array.length; i++) {
			main.mem.mem[0x0000 + i] = u8array[i];
		}
		console.log("ROM LOADED ")
	}
	
	update() {
		if (!this.started)
			return;
		this.run(80000);
		if (++this.frame == 5) {
			this.frame = 0;
			this.cpu.interrupt(false, 0);
		}
		
		//HD44780
		//this.lcd.update()
	}
	run(count) {
		for (let i = 0; i < count; i++) {
			this.cpu.run_instruction();
			this.lcd.update()//HD44780
		}
	}
	reset() {
		this.io.reset();
		this.mem.reset();
		this.cpu.reset();
	}
}























