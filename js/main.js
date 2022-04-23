'use strict';
class CORE {
	constructor() {
		this.io = new IO(this);
		this.mem = new RAM(this);
		this.cpu = new Z80(this, this.mem);
		this.keyboard = new PRC1000_Keyboard(this);
		this.rom = null;
		this.lcd = new HD44780(this);
		this.info = {
			cpu: false,
			mem: false,
			io:  false,
		};
		this.started = false;

		this.cycles_until_frame_end = 4_000_000 / 50
		this.cycles_until_interrupt = 4_000_000 / 10
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

		this.run();
		
		//HD44780
		this.lcd.update()
	}
	run() {
		this.cpu.cycle_counter = 0
		while (this.cpu.cycle_counter < this.cycles_until_frame_end) {
			this.cpu.run_instruction();
		}
		this.cycles_until_frame_end -= this.cpu.cycle_counter;
		this.cycles_until_frame_end += 4_000_000 / 50;
		this.cycles_until_interrupt -= this.cpu.cycle_counter;
		if (this.cycles_until_interrupt < 0) {
			this.cycles_until_interrupt += 4_000_000 / 10;
			this.cpu.interrupt(false, 0);
		}
	}
	reset() {
		this.io.reset();
		this.mem.reset();
		this.cpu.reset();
		this.lcd.reset();
	}
}























