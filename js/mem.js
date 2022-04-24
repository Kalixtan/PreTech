'use strict';
class RAM {
  constructor(core) {
    this.core = core;
    this.mem = new Uint8Array(0xffff);
    this.ram = new Uint8Array(0x800);
  }
  readbyte(address) {
    //if(this.core.info.mem)console.log("          readbyte  : "+this.toHex(address,16))
    if (address >= 0x4800) {
      return 0xff;
      // throw Error(`Address wrong ${address.toString(16)}`)
    }
    if (address >= 0x4000) {
      return this.ram[address-0x4000];
    }
    return this.mem[address];
  }
  readword = function (address) {
    //if(this.core.info.mem)console.log("          readword  : "+this.toHex(address,16))
    if (address >= 0x4800) {
      return 0xffff;
      // throw Error(`Address wrong ${address.toString(16)}`)
    }
    return (this.readbyte(address + 1) << 8) | this.readbyte(address);
  };
  writebyte(address, data) {
    if (address >= 0x4000 && address < 0x4800) {
      this.ram[address-0x4000] = data;
      return;
    }
    throw Error(`Address wrong ${address.toString(16)}`)
    if(this.core.info.mem)console.log("          writebyte : "+this.toHex(address)+" - "+this.toHex(data))
    this.mem[address] = data & 0xff;
  }
  writeword = function (address, data) {
    if (address >= 0x4000 && address < 0x4800) {
      offs = address - 0x4000
      this.ram[offs] = data & 0xff
      this.ram[offs+1] = data >> 8
      return;
    }
    throw Error(`Address wrong ${address.toString(16)}`)
    if(this.core.info.mem)console.log("          writeword : "+this.toHex(address)+" - "+this.toHex(data))
    this.write(address, data);
    this.write(address + 1, data >> 8);
  };
  toHex = (v) => {
    return '0x' + ((v.toString(16).toUpperCase()).substr(-4));
  }
  reset(hard) {
    this.mem.fill(0);
  }
}
