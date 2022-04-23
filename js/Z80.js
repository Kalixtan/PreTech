'use strict';
function Z80(core, mem) {
  this.core = core;
  this.mem = mem;

  let a = 0x00;
  let b = 0x00;
  let c = 0x00;
  let d = 0x00;
  let e = 0x00;
  let h = 0x00;
  let l = 0x00;

  let ix = 0x0000;
  let iy = 0x0000;
  let i = 0x00;
  let r = 0x00;
  let sp = 0xdff0;
  let pc = 0x0000;

  this.a_prime = 0x00;
  this.b_prime = 0x00;
  this.c_prime = 0x00;
  this.d_prime = 0x00;
  this.e_prime = 0x00;
  this.h_prime = 0x00;
  this.l_prime = 0x00;

  this.imode = 0;
  this.iff1 = 0;
  this.iff2 = 0;
  this.halted = false;
  this.do_delayed_di = false;
  this.do_delayed_ei = false;

  this.cycle_counter = 0;
  this.flg = { S: 0, Z: 0, Y: 0, H: 0, X: 0, P: 0, N: 0, C: 0 };
  this.flgp = { S: 0, Z: 0, Y: 0, H: 0, X: 0, P: 0, N: 0, C: 0 };

  this.reset = () => {
    sp = 0xdff0;
    pc = 0x0000;
    a = 0x00;
    r = 0x00;
    this.set_flags_register(0);
    this.imode = 0;
    this.iff1 = 0;
    this.iff2 = 0;
    this.halted = false;
    this.do_delayed_di = false;
    this.do_delayed_ei = false;
    this.cycle_counter = 0;
  };
  this.run_instruction = () => {
    if (!this.halted) {
      var doing_delayed_di = false,
        doing_delayed_ei = false;
      if (this.do_delayed_di) {
        this.do_delayed_di = false;
        doing_delayed_di = true;
      } else if (this.do_delayed_ei) {
        this.do_delayed_ei = false;
        doing_delayed_ei = true;
      }
      r = (r & 0x80) | (((r & 0x7f) + 1) & 0x7f);
      var opcode = this.mem.readbyte(pc);
      if (this.core.info.cpu) this.showInfo(pc, opcode);
      this.decode_instruction(opcode);
      pc = (pc + 1) & 0xffff;
      if (doing_delayed_di) {
        this.iff1 = 0;
        this.iff2 = 0;
      } else if (doing_delayed_ei) {
        this.iff1 = 1;
        this.iff2 = 1;
      }
      this.cycle_counter;
      // this.cycle_counter = 0;
      return;
    } else {
      return 1;
    }
  };
  this.showInfo = (pc, opcode) => {
    let rval = this.Instructions(opcode);
    console.log("");
    console.log("PC      : " + this.toHex(pc));
    console.log("OPCODE  : " + rval.opCode);
    console.log("ophex   : " + this.toHex(opcode));
  };
  this.toHex = (v) => {
    return "0x" + ("0000" + v.toString(16).toUpperCase()).substr(-4);
  };
  this.setPC = (adr) => {
    pc = adr;
  };
  this.getPC = () => {
    return pc;
  };
  this.interrupt = (non_maskable, data) => {
    if (non_maskable) {
      r = (r & 0x80) | (((r & 0x7f) + 1) & 0x7f);
      this.halted = false;
      this.iff2 = this.iff1;
      this.iff1 = 0;
      this.push_word(pc);
      pc = 0x66;
      this.cycle_counter += 11;
    } else if (this.iff1) {
      r = (r & 0x80) | (((r & 0x7f) + 1) & 0x7f);
      this.halted = false;
      this.iff1 = 0;
      this.iff2 = 0;
      if (this.imode === 0) {
        pc = (pc - 1) & 0xffff;
        this.decode_instruction(data);
        pc = (pc + 1) & 0xffff;
        this.cycle_counter += 2;
      } else if (this.imode === 1) {
        this.push_word(pc);
        pc = 0x38;
        this.cycle_counter += 13;
      } else if (this.imode === 2) {
        this.push_word(pc);
        var vector_address = (i << 8) | data;
        pc = this.mem.readbyte(vector_address) | (this.mem.readbyte((vector_address + 1) & 0xffff) << 8);
        this.cycle_counter += 19;
      }
    }
  };
  this.decode_instruction = (opcode) => {
    var get_operand = (opcode) => {
      return (opcode & 0x07) === 0
        ? b
        : (opcode & 0x07) === 1
        ? c
        : (opcode & 0x07) === 2
        ? d
        : (opcode & 0x07) === 3
        ? e
        : (opcode & 0x07) === 4
        ? h
        : (opcode & 0x07) === 5
        ? l
        : (opcode & 0x07) === 6
        ? this.mem.readbyte(l | (h << 8))
        : a;
    };
    if (opcode === 0x76) {
      this.halted = true;
    } else if (opcode >= 0x40 && opcode < 0x80) {
      var operand = get_operand(opcode);
      if ((opcode & 0x38) >>> 3 === 0) b = operand;
      else if ((opcode & 0x38) >>> 3 === 1) c = operand;
      else if ((opcode & 0x38) >>> 3 === 2) d = operand;
      else if ((opcode & 0x38) >>> 3 === 3) e = operand;
      else if ((opcode & 0x38) >>> 3 === 4) h = operand;
      else if ((opcode & 0x38) >>> 3 === 5) l = operand;
      else if ((opcode & 0x38) >>> 3 === 6) this.mem.writebyte(l | (h << 8), operand);
      else if ((opcode & 0x38) >>> 3 === 7) a = operand;
    } else if (opcode >= 0x80 && opcode < 0xc0) {
      var operand = get_operand(opcode),
        op_array = [
          this.do_add,
          this.do_adc,
          this.do_sub,
          this.do_sbc,
          this.do_and,
          this.do_xor,
          this.do_or,
          this.do_cp,
        ];
      op_array[(opcode & 0x38) >>> 3](operand);
    } else {
      this.execInstruction(opcode);
    }
    this.cycle_counter += this.cycle_counts[opcode];
  };
  this.get_signed_offset_byte = (value) => {
    value &= 0xff;
    if (value & 0x80) {
      value = -((0xff & ~value) + 1);
    }
    return value;
  };
  this.get_flags_register = () => {
    return (
      (this.flg.S << 7) |
      (this.flg.Z << 6) |
      (this.flg.Y << 5) |
      (this.flg.H << 4) |
      (this.flg.X << 3) |
      (this.flg.P << 2) |
      (this.flg.N << 1) |
      this.flg.C
    );
  };
  this.get_flags_prime = () => {
    return (
      (this.flgp.S << 7) |
      (this.flgp.Z << 6) |
      (this.flgp.Y << 5) |
      (this.flgp.H << 4) |
      (this.flgp.X << 3) |
      (this.flgp.P << 2) |
      (this.flgp.N << 1) |
      this.flgp.C
    );
  };
  this.set_flags_register = (operand) => {
    this.flg.S = (operand & 0x80) >>> 7;
    this.flg.Z = (operand & 0x40) >>> 6;
    this.flg.Y = (operand & 0x20) >>> 5;
    this.flg.H = (operand & 0x10) >>> 4;
    this.flg.X = (operand & 0x08) >>> 3;
    this.flg.P = (operand & 0x04) >>> 2;
    this.flg.N = (operand & 0x02) >>> 1;
    this.flg.C = operand & 0x01;
  };
  this.set_flags_prime = (operand) => {
    this.flgp.S = (operand & 0x80) >>> 7;
    this.flgp.Z = (operand & 0x40) >>> 6;
    this.flgp.Y = (operand & 0x20) >>> 5;
    this.flgp.H = (operand & 0x10) >>> 4;
    this.flgp.X = (operand & 0x08) >>> 3;
    this.flgp.P = (operand & 0x04) >>> 2;
    this.flgp.N = (operand & 0x02) >>> 1;
    this.flgp.C = operand & 0x01;
  };
  this.update_xy_flags = (result) => {
    this.flg.Y = (result & 0x20) >>> 5;
    this.flg.X = (result & 0x08) >>> 3;
  };
  this.push_word = (operand) => {
    sp = (sp - 1) & 0xffff;
    this.mem.writebyte(sp, (operand & 0xff00) >>> 8);
    sp = (sp - 1) & 0xffff;
    this.mem.writebyte(sp, operand & 0x00ff);
  };
  this.pop_word = () => {
    var retval = this.mem.readbyte(sp) & 0xff;
    sp = (sp + 1) & 0xffff;
    retval |= this.mem.readbyte(sp) << 8;
    sp = (sp + 1) & 0xffff;
    return retval;
  };
  this.do_conditional_absolute_jump = (condition) => {
    if (condition) {
      pc = this.mem.readbyte((pc + 1) & 0xffff) | (this.mem.readbyte((pc + 2) & 0xffff) << 8);
      pc = (pc - 1) & 0xffff;
    } else {
      pc = (pc + 2) & 0xffff;
    }
  };
  this.do_conditional_relative_jump = (condition) => {
    if (condition) {
      this.cycle_counter += 5;
      var offset = this.get_signed_offset_byte(this.mem.readbyte((pc + 1) & 0xffff));
      pc = (pc + offset + 1) & 0xffff;
    } else {
      pc = (pc + 1) & 0xffff;
    }
  };
  this.do_conditional_call = (condition) => {
    if (condition) {
      this.cycle_counter += 7;
      this.push_word((pc + 3) & 0xffff);
      pc = this.mem.readbyte((pc + 1) & 0xffff) | (this.mem.readbyte((pc + 2) & 0xffff) << 8);
      pc = (pc - 1) & 0xffff;
    } else {
      pc = (pc + 2) & 0xffff;
    }
  };
  this.do_conditional_return = (condition) => {
    if (condition) {
      this.cycle_counter += 6;
      pc = (this.pop_word() - 1) & 0xffff;
    }
  };
  this.do_reset = (address) => {
    this.push_word((pc + 1) & 0xffff);
    pc = (address - 1) & 0xffff;
  };
  this.do_add = (operand) => {
    var result = a + operand;
    this.flg.S = result & 0x80 ? 1 : 0;
    this.flg.Z = !(result & 0xff) ? 1 : 0;
    this.flg.H = ((operand & 0x0f) + (a & 0x0f)) & 0x10 ? 1 : 0;
    this.flg.P = (a & 0x80) === (operand & 0x80) && (a & 0x80) !== (result & 0x80) ? 1 : 0;
    this.flg.N = 0;
    this.flg.C = result & 0x100 ? 1 : 0;
    a = result & 0xff;
    this.update_xy_flags(a);
  };
  this.do_adc = (operand) => {
    var result = a + operand + this.flg.C;
    this.flg.S = result & 0x80 ? 1 : 0;
    this.flg.Z = !(result & 0xff) ? 1 : 0;
    this.flg.H = ((operand & 0x0f) + (a & 0x0f) + this.flg.C) & 0x10 ? 1 : 0;
    this.flg.P = (a & 0x80) === (operand & 0x80) && (a & 0x80) !== (result & 0x80) ? 1 : 0;
    this.flg.N = 0;
    this.flg.C = result & 0x100 ? 1 : 0;
    a = result & 0xff;
    this.update_xy_flags(a);
  };
  this.do_sub = (operand) => {
    var result = a - operand;
    this.flg.S = result & 0x80 ? 1 : 0;
    this.flg.Z = !(result & 0xff) ? 1 : 0;
    this.flg.H = ((a & 0x0f) - (operand & 0x0f)) & 0x10 ? 1 : 0;
    this.flg.P = (a & 0x80) !== (operand & 0x80) && (a & 0x80) !== (result & 0x80) ? 1 : 0;
    this.flg.N = 1;
    this.flg.C = result & 0x100 ? 1 : 0;
    a = result & 0xff;
    this.update_xy_flags(a);
  };
  this.do_sbc = (operand) => {
    var result = a - operand - this.flg.C;
    this.flg.S = result & 0x80 ? 1 : 0;
    this.flg.Z = !(result & 0xff) ? 1 : 0;
    this.flg.H = ((a & 0x0f) - (operand & 0x0f) - this.flg.C) & 0x10 ? 1 : 0;
    this.flg.P = (a & 0x80) !== (operand & 0x80) && (a & 0x80) !== (result & 0x80) ? 1 : 0;
    this.flg.N = 1;
    this.flg.C = result & 0x100 ? 1 : 0;
    a = result & 0xff;
    this.update_xy_flags(a);
  };
  this.do_cp = (operand) => {
    var temp = a;
    this.do_sub(operand);
    a = temp;
    this.update_xy_flags(operand);
  };
  this.do_and = (operand) => {
    a &= operand & 0xff;
    this.flg.S = a & 0x80 ? 1 : 0;
    this.flg.Z = !a ? 1 : 0;
    this.flg.H = 1;
    this.flg.P = this.parity_bits[a];
    this.flg.N = 0;
    this.flg.C = 0;
    this.update_xy_flags(a);
  };
  this.do_or = (operand) => {
    a = (operand | a) & 0xff;
    this.flg.S = a & 0x80 ? 1 : 0;
    this.flg.Z = !a ? 1 : 0;
    this.flg.H = 0;
    this.flg.P = this.parity_bits[a];
    this.flg.N = 0;
    this.flg.C = 0;
    this.update_xy_flags(a);
  };
  this.do_xor = (operand) => {
    a = (operand ^ a) & 0xff;
    this.flg.S = a & 0x80 ? 1 : 0;
    this.flg.Z = !a ? 1 : 0;
    this.flg.H = 0;
    this.flg.P = this.parity_bits[a];
    this.flg.N = 0;
    this.flg.C = 0;
    this.update_xy_flags(a);
  };
  this.do_inc = (operand) => {
    var result = operand + 1;
    this.flg.S = result & 0x80 ? 1 : 0;
    this.flg.Z = !(result & 0xff) ? 1 : 0;
    this.flg.H = (operand & 0x0f) === 0x0f ? 1 : 0;
    this.flg.P = operand === 0x7f ? 1 : 0;
    this.flg.N = 0;
    result &= 0xff;
    this.update_xy_flags(result);
    return result;
  };
  this.do_dec = (operand) => {
    var result = operand - 1;
    this.flg.S = result & 0x80 ? 1 : 0;
    this.flg.Z = !(result & 0xff) ? 1 : 0;
    this.flg.H = (operand & 0x0f) === 0x00 ? 1 : 0;
    this.flg.P = operand === 0x80 ? 1 : 0;
    this.flg.N = 1;
    result &= 0xff;
    this.update_xy_flags(result);
    return result;
  };
  this.do_hl_add = (operand) => {
    var hl = l | (h << 8),
      result = hl + operand;
    this.flg.N = 0;
    this.flg.C = result & 0x10000 ? 1 : 0;
    this.flg.H = ((hl & 0x0fff) + (operand & 0x0fff)) & 0x1000 ? 1 : 0;
    l = result & 0xff;
    h = (result & 0xff00) >>> 8;
    this.update_xy_flags(h);
  };
  this.do_hl_adc = (operand) => {
    operand += this.flg.C;
    var hl = l | (h << 8),
      result = hl + operand;
    this.flg.S = result & 0x8000 ? 1 : 0;
    this.flg.Z = !(result & 0xffff) ? 1 : 0;
    this.flg.H = ((hl & 0x0fff) + (operand & 0x0fff)) & 0x1000 ? 1 : 0;
    this.flg.P = (hl & 0x8000) === (operand & 0x8000) && (result & 0x8000) !== (hl & 0x8000) ? 1 : 0;
    this.flg.N = 0;
    this.flg.C = result & 0x10000 ? 1 : 0;
    l = result & 0xff;
    h = (result >>> 8) & 0xff;
    this.update_xy_flags(h);
  };
  this.do_hl_sbc = (operand) => {
    operand += this.flg.C;
    var hl = l | (h << 8),
      result = hl - operand;
    this.flg.S = result & 0x8000 ? 1 : 0;
    this.flg.Z = !(result & 0xffff) ? 1 : 0;
    this.flg.H = ((hl & 0x0fff) - (operand & 0x0fff)) & 0x1000 ? 1 : 0;
    this.flg.P = (hl & 0x8000) !== (operand & 0x8000) && (result & 0x8000) !== (hl & 0x8000) ? 1 : 0;
    this.flg.N = 1;
    this.flg.C = result & 0x10000 ? 1 : 0;
    l = result & 0xff;
    h = (result >>> 8) & 0xff;
    this.update_xy_flags(h);
  };
  this.do_in = (port) => {
    var result = this.core.io.readport(port);
    this.flg.S = result & 0x80 ? 1 : 0;
    this.flg.Z = result ? 0 : 1;
    this.flg.H = 0;
    this.flg.P = this.parity_bits[result] ? 1 : 0;
    this.flg.N = 0;
    this.update_xy_flags(result);
    return result;
  };
  this.do_neg = () => {
    if (a !== 0x80) {
      a = this.get_signed_offset_byte(a);
      a = -a & 0xff;
    }
    this.flg.S = a & 0x80 ? 1 : 0;
    this.flg.Z = !a ? 1 : 0;
    this.flg.H = (-a & 0x0f) > 0 ? 1 : 0;
    this.flg.P = a === 0x80 ? 1 : 0;
    this.flg.N = 1;
    this.flg.C = a ? 1 : 0;
    this.update_xy_flags(a);
  };
  this.do_ldi = () => {
    var read_value = this.mem.readbyte(l | (h << 8));
    this.mem.writebyte(e | (d << 8), read_value);
    var result = (e | (d << 8)) + 1;
    e = result & 0xff;
    d = (result & 0xff00) >>> 8;
    result = (l | (h << 8)) + 1;
    l = result & 0xff;
    h = (result & 0xff00) >>> 8;
    result = (c | (b << 8)) - 1;
    c = result & 0xff;
    b = (result & 0xff00) >>> 8;
    this.flg.H = 0;
    this.flg.P = c || b ? 1 : 0;
    this.flg.N = 0;
    this.flg.Y = ((a + read_value) & 0x02) >>> 1;
    this.flg.X = ((a + read_value) & 0x08) >>> 3;
  };
  this.do_cpi = () => {
    var temp_carry = this.flg.C;
    var read_value = this.mem.readbyte(l | (h << 8));
    this.do_cp(read_value);
    this.flg.C = temp_carry;
    this.flg.Y = ((a - read_value - this.flg.H) & 0x02) >>> 1;
    this.flg.X = ((a - read_value - this.flg.H) & 0x08) >>> 3;
    var result = (l | (h << 8)) + 1;
    l = result & 0xff;
    h = (result & 0xff00) >>> 8;
    result = (c | (b << 8)) - 1;
    c = result & 0xff;
    b = (result & 0xff00) >>> 8;
    this.flg.P = result ? 1 : 0;
  };
  this.do_ini = () => {
    b = this.do_dec(b);
    this.mem.writebyte(l | (h << 8), this.core.io.readport((b << 8) | c));
    var result = (l | (h << 8)) + 1;
    l = result & 0xff;
    h = (result & 0xff00) >>> 8;
    this.flg.N = 1;
  };
  this.do_outi = () => {
    this.core.io.writeport((b << 8) | c, this.mem.readbyte(l | (h << 8)));
    var result = (l | (h << 8)) + 1;
    l = result & 0xff;
    h = (result & 0xff00) >>> 8;
    b = this.do_dec(b);
    this.flg.N = 1;
  };
  this.do_ldd = () => {
    this.flg.N = 0;
    this.flg.H = 0;
    var read_value = this.mem.readbyte(l | (h << 8));
    this.mem.writebyte(e | (d << 8), read_value);
    var result = (e | (d << 8)) - 1;
    e = result & 0xff;
    d = (result & 0xff00) >>> 8;
    result = (l | (h << 8)) - 1;
    l = result & 0xff;
    h = (result & 0xff00) >>> 8;
    result = (c | (b << 8)) - 1;
    c = result & 0xff;
    b = (result & 0xff00) >>> 8;
    this.flg.P = c || b ? 1 : 0;
    this.flg.Y = ((a + read_value) & 0x02) >>> 1;
    this.flg.X = ((a + read_value) & 0x08) >>> 3;
  };
  this.do_cpd = () => {
    var temp_carry = this.flg.C;
    var read_value = this.mem.readbyte(l | (h << 8));
    this.do_cp(read_value);
    this.flg.C = temp_carry;
    this.flg.Y = ((a - read_value - this.flg.H) & 0x02) >>> 1;
    this.flg.X = ((a - read_value - this.flg.H) & 0x08) >>> 3;
    var result = (l | (h << 8)) - 1;
    l = result & 0xff;
    h = (result & 0xff00) >>> 8;
    result = (c | (b << 8)) - 1;
    c = result & 0xff;
    b = (result & 0xff00) >>> 8;
    this.flg.P = result ? 1 : 0;
  };
  this.do_ind = () => {
    b = this.do_dec(b);
    this.mem.writebyte(l | (h << 8), this.core.io.readport((b << 8) | c));
    var result = (l | (h << 8)) - 1;
    l = result & 0xff;
    h = (result & 0xff00) >>> 8;
    this.flg.N = 1;
  };
  this.do_outd = () => {
    this.core.io.writeport((b << 8) | c, this.mem.readbyte(l | (h << 8)));
    var result = (l | (h << 8)) - 1;
    l = result & 0xff;
    h = (result & 0xff00) >>> 8;
    b = this.do_dec(b);
    this.flg.N = 1;
  };
  this.do_rlc = (operand) => {
    this.flg.N = 0;
    this.flg.H = 0;
    this.flg.C = (operand & 0x80) >>> 7;
    operand = ((operand << 1) | this.flg.C) & 0xff;
    this.flg.Z = !operand ? 1 : 0;
    this.flg.P = this.parity_bits[operand];
    this.flg.S = operand & 0x80 ? 1 : 0;
    this.update_xy_flags(operand);
    return operand;
  };
  this.do_rrc = (operand) => {
    this.flg.N = 0;
    this.flg.H = 0;
    this.flg.C = operand & 1;
    operand = ((operand >>> 1) & 0x7f) | (this.flg.C << 7);
    this.flg.Z = !(operand & 0xff) ? 1 : 0;
    this.flg.P = this.parity_bits[operand];
    this.flg.S = operand & 0x80 ? 1 : 0;
    this.update_xy_flags(operand);
    return operand & 0xff;
  };
  this.do_rl = (operand) => {
    this.flg.N = 0;
    this.flg.H = 0;
    var temp = this.flg.C;
    this.flg.C = (operand & 0x80) >>> 7;
    operand = ((operand << 1) | temp) & 0xff;
    this.flg.Z = !operand ? 1 : 0;
    this.flg.P = this.parity_bits[operand];
    this.flg.S = operand & 0x80 ? 1 : 0;
    this.update_xy_flags(operand);
    return operand;
  };
  this.do_rr = (operand) => {
    this.flg.N = 0;
    this.flg.H = 0;
    var temp = this.flg.C;
    this.flg.C = operand & 1;
    operand = ((operand >>> 1) & 0x7f) | (temp << 7);
    this.flg.Z = !operand ? 1 : 0;
    this.flg.P = this.parity_bits[operand];
    this.flg.S = operand & 0x80 ? 1 : 0;
    this.update_xy_flags(operand);
    return operand;
  };
  this.do_sla = (operand) => {
    this.flg.N = 0;
    this.flg.H = 0;
    this.flg.C = (operand & 0x80) >>> 7;
    operand = (operand << 1) & 0xff;
    this.flg.Z = !operand ? 1 : 0;
    this.flg.P = this.parity_bits[operand];
    this.flg.S = operand & 0x80 ? 1 : 0;
    this.update_xy_flags(operand);
    return operand;
  };
  this.do_sra = (operand) => {
    this.flg.N = 0;
    this.flg.H = 0;
    this.flg.C = operand & 1;
    operand = ((operand >>> 1) & 0x7f) | (operand & 0x80);
    this.flg.Z = !operand ? 1 : 0;
    this.flg.P = this.parity_bits[operand];
    this.flg.S = operand & 0x80 ? 1 : 0;
    this.update_xy_flags(operand);
    return operand;
  };
  this.do_sll = (operand) => {
    this.flg.N = 0;
    this.flg.H = 0;
    this.flg.C = (operand & 0x80) >>> 7;
    operand = ((operand << 1) & 0xff) | 1;
    this.flg.Z = !operand ? 1 : 0;
    this.flg.P = this.parity_bits[operand];
    this.flg.S = operand & 0x80 ? 1 : 0;
    this.update_xy_flags(operand);
    return operand;
  };
  this.do_srl = (operand) => {
    this.flg.N = 0;
    this.flg.H = 0;
    this.flg.C = operand & 1;
    operand = (operand >>> 1) & 0x7f;
    this.flg.Z = !operand ? 1 : 0;
    this.flg.P = this.parity_bits[operand];
    this.flg.S = 0;
    this.update_xy_flags(operand);
    return operand;
  };
  this.do_ix_add = (operand) => {
    this.flg.N = 0;
    var result = ix + operand;
    this.flg.C = result & 0x10000 ? 1 : 0;
    this.flg.H = ((ix & 0xfff) + (operand & 0xfff)) & 0x1000 ? 1 : 0;
    this.update_xy_flags((result & 0xff00) >>> 8);
    ix = result;
  };
  this.execInstruction = (_opcode) => {
    switch (_opcode) {
      case 0x00: {
        break;
      }
      case 0x01: {
        pc = (pc + 1) & 0xffff;
        c = this.mem.readbyte(pc);
        pc = (pc + 1) & 0xffff;
        b = this.mem.readbyte(pc);
        break;
      }
      case 0x02: {
        this.mem.writebyte(c | (b << 8), a);
        break;
      }
      case 0x03: {
        var result = c | (b << 8);
        result += 1;
        c = result & 0xff;
        b = (result & 0xff00) >>> 8;
        break;
      }
      case 0x04: {
        b = this.do_inc(b);
        break;
      }
      case 0x05: {
        b = this.do_dec(b);
        break;
      }
      case 0x06: {
        pc = (pc + 1) & 0xffff;
        b = this.mem.readbyte(pc);
        break;
      }
      case 0x07: {
        var temp_s = this.flg.S,
          temp_z = this.flg.Z,
          temp_p = this.flg.P;
        a = this.do_rlc(a);
        this.flg.S = temp_s;
        this.flg.Z = temp_z;
        this.flg.P = temp_p;
        break;
      }
      case 0x08: {
        var temp = a;
        a = this.a_prime;
        this.a_prime = temp;
        temp = this.get_flags_register();
        this.set_flags_register(this.get_flags_prime());
        this.set_flags_prime(temp);
        break;
      }
      case 0x09: {
        this.do_hl_add(c | (b << 8));
        break;
      }
      case 0x0a: {
        a = this.mem.readbyte(c | (b << 8));
        break;
      }
      case 0x0b: {
        var result = c | (b << 8);
        result -= 1;
        c = result & 0xff;
        b = (result & 0xff00) >>> 8;
        break;
      }
      case 0x0c: {
        c = this.do_inc(c);
        break;
      }
      case 0x0d: {
        c = this.do_dec(c);
        break;
      }
      case 0x0e: {
        pc = (pc + 1) & 0xffff;
        c = this.mem.readbyte(pc);
        break;
      }
      case 0x0f: {
        var temp_s = this.flg.S,
          temp_z = this.flg.Z,
          temp_p = this.flg.P;
        a = this.do_rrc(a);
        this.flg.S = temp_s;
        this.flg.Z = temp_z;
        this.flg.P = temp_p;
        break;
      }
      case 0x10: {
        b = (b - 1) & 0xff;
        this.do_conditional_relative_jump(b !== 0);
        break;
      }
      case 0x11: {
        pc = (pc + 1) & 0xffff;
        e = this.mem.readbyte(pc);
        pc = (pc + 1) & 0xffff;
        d = this.mem.readbyte(pc);
        break;
      }
      case 0x12: {
        this.mem.writebyte(e | (d << 8), a);
        break;
      }
      case 0x13: {
        var result = e | (d << 8);
        result += 1;
        e = result & 0xff;
        d = (result & 0xff00) >>> 8;
        break;
      }
      case 0x14: {
        d = this.do_inc(d);
        break;
      }
      case 0x15: {
        d = this.do_dec(d);
        break;
      }
      case 0x16: {
        pc = (pc + 1) & 0xffff;
        d = this.mem.readbyte(pc);
        break;
      }
      case 0x17: {
        var temp_s = this.flg.S,
          temp_z = this.flg.Z,
          temp_p = this.flg.P;
        a = this.do_rl(a);
        this.flg.S = temp_s;
        this.flg.Z = temp_z;
        this.flg.P = temp_p;
        break;
      }
      case 0x18: {
        var offset = this.get_signed_offset_byte(this.mem.readbyte((pc + 1) & 0xffff));
        pc = (pc + offset + 1) & 0xffff;
        break;
      }
      case 0x19: {
        this.do_hl_add(e | (d << 8));
        break;
      }
      case 0x1a: {
        a = this.mem.readbyte(e | (d << 8));
        break;
      }
      case 0x1b: {
        var result = e | (d << 8);
        result -= 1;
        e = result & 0xff;
        d = (result & 0xff00) >>> 8;
        break;
      }
      case 0x1c: {
        e = this.do_inc(e);
        break;
      }
      case 0x1d: {
        e = this.do_dec(e);
        break;
      }
      case 0x1e: {
        pc = (pc + 1) & 0xffff;
        e = this.mem.readbyte(pc);
        break;
      }
      case 0x1f: {
        var temp_s = this.flg.S,
          temp_z = this.flg.Z,
          temp_p = this.flg.P;
        a = this.do_rr(a);
        this.flg.S = temp_s;
        this.flg.Z = temp_z;
        this.flg.P = temp_p;
        break;
      }
      case 0x20: {
        this.do_conditional_relative_jump(!this.flg.Z);
        break;
      }
      case 0x21: {
        pc = (pc + 1) & 0xffff;
        l = this.mem.readbyte(pc);
        pc = (pc + 1) & 0xffff;
        h = this.mem.readbyte(pc);
        break;
      }
      case 0x22: {
        pc = (pc + 1) & 0xffff;
        var address = this.mem.readbyte(pc);
        pc = (pc + 1) & 0xffff;
        address |= this.mem.readbyte(pc) << 8;
        this.mem.writebyte(address, l);
        this.mem.writebyte((address + 1) & 0xffff, h);
        break;
      }
      case 0x23: {
        var result = l | (h << 8);
        result += 1;
        l = result & 0xff;
        h = (result & 0xff00) >>> 8;
        break;
      }
      case 0x24: {
        h = this.do_inc(h);
        break;
      }
      case 0x25: {
        h = this.do_dec(h);
        break;
      }
      case 0x26: {
        pc = (pc + 1) & 0xffff;
        h = this.mem.readbyte(pc);
        break;
      }
      case 0x27: {
        var temp = a;
        if (!this.flg.N) {
          if (this.flg.H || (a & 0x0f) > 9) temp += 0x06;
          if (this.flg.C || a > 0x99) temp += 0x60;
        } else {
          if (this.flg.H || (a & 0x0f) > 9) temp -= 0x06;
          if (this.flg.C || a > 0x99) temp -= 0x60;
        }
        this.flg.S = temp & 0x80 ? 1 : 0;
        this.flg.Z = !(temp & 0xff) ? 1 : 0;
        this.flg.H = (a & 0x10) ^ (temp & 0x10) ? 1 : 0;
        this.flg.P = this.parity_bits[temp & 0xff];
        this.flg.C = this.flg.C || a > 0x99 ? 1 : 0;
        a = temp & 0xff;
        this.update_xy_flags(a);
        break;
      }
      case 0x28: {
        this.do_conditional_relative_jump(!!this.flg.Z);
        break;
      }
      case 0x29: {
        this.do_hl_add(l | (h << 8));
        break;
      }
      case 0x2a: {
        pc = (pc + 1) & 0xffff;
        var address = this.mem.readbyte(pc);
        pc = (pc + 1) & 0xffff;
        address |= this.mem.readbyte(pc) << 8;
        l = this.mem.readbyte(address);
        h = this.mem.readbyte((address + 1) & 0xffff);
        break;
      }
      case 0x2b: {
        var result = l | (h << 8);
        result -= 1;
        l = result & 0xff;
        h = (result & 0xff00) >>> 8;
        break;
      }
      case 0x2c: {
        l = this.do_inc(l);
        break;
      }
      case 0x2d: {
        l = this.do_dec(l);
        break;
      }
      case 0x2e: {
        pc = (pc + 1) & 0xffff;
        l = this.mem.readbyte(pc);
        break;
      }
      case 0x2f: {
        a = ~a & 0xff;
        this.flg.N = 1;
        this.flg.H = 1;
        this.update_xy_flags(a);
        break;
      }
      case 0x30: {
        this.do_conditional_relative_jump(!this.flg.C);
        break;
      }
      case 0x31: {
        sp = this.mem.readbyte((pc + 1) & 0xffff) | (this.mem.readbyte((pc + 2) & 0xffff) << 8);
        pc = (pc + 2) & 0xffff;
        break;
      }
      case 0x32: {
        pc = (pc + 1) & 0xffff;
        var address = this.mem.readbyte(pc);
        pc = (pc + 1) & 0xffff;
        address |= this.mem.readbyte(pc) << 8;
        this.mem.writebyte(address, a);
        break;
      }
      case 0x33: {
        sp = (sp + 1) & 0xffff;
        break;
      }
      case 0x34: {
        var address = l | (h << 8);
        this.mem.writebyte(address, this.do_inc(this.mem.readbyte(address)));
        break;
      }
      case 0x35: {
        var address = l | (h << 8);
        this.mem.writebyte(address, this.do_dec(this.mem.readbyte(address)));
        break;
      }
      case 0x36: {
        pc = (pc + 1) & 0xffff;
        this.mem.writebyte(l | (h << 8), this.mem.readbyte(pc));
        break;
      }
      case 0x37: {
        this.flg.N = 0;
        this.flg.H = 0;
        this.flg.C = 1;
        this.update_xy_flags(a);
        break;
      }
      case 0x38: {
        this.do_conditional_relative_jump(!!this.flg.C);
        break;
      }
      case 0x39: {
        this.do_hl_add(sp);
        break;
      }
      case 0x3a: {
        pc = (pc + 1) & 0xffff;
        var address = this.mem.readbyte(pc);
        pc = (pc + 1) & 0xffff;
        address |= this.mem.readbyte(pc) << 8;
        a = this.mem.readbyte(address);
        break;
      }
      case 0x3b: {
        sp = (sp - 1) & 0xffff;
        break;
      }
      case 0x3c: {
        a = this.do_inc(a);
        break;
      }
      case 0x3d: {
        a = this.do_dec(a);
        break;
      }
      case 0x3e: {
        a = this.mem.readbyte((pc + 1) & 0xffff);
        pc = (pc + 1) & 0xffff;
        break;
      }
      case 0x3f: {
        this.flg.N = 0;
        this.flg.H = this.flg.C;
        this.flg.C = this.flg.C ? 0 : 1;
        this.update_xy_flags(a);
        break;
      }
      case 0xc0: {
        this.do_conditional_return(!this.flg.Z);
        break;
      }
      case 0xc1: {
        var result = this.pop_word();
        c = result & 0xff;
        b = (result & 0xff00) >>> 8;
        break;
      }
      case 0xc2: {
        this.do_conditional_absolute_jump(!this.flg.Z);
        break;
      }
      case 0xc3: {
        pc = this.mem.readbyte((pc + 1) & 0xffff) | (this.mem.readbyte((pc + 2) & 0xffff) << 8);
        pc = (pc - 1) & 0xffff;
        break;
      }
      case 0xc4: {
        this.do_conditional_call(!this.flg.Z);
        break;
      }
      case 0xc5: {
        this.push_word(c | (b << 8));
        break;
      }
      case 0xc6: {
        pc = (pc + 1) & 0xffff;
        this.do_add(this.mem.readbyte(pc));
        break;
      }
      case 0xc7: {
        this.do_reset(0x00);
        break;
      }
      case 0xc8: {
        this.do_conditional_return(!!this.flg.Z);
        break;
      }
      case 0xc9: {
        pc = (this.pop_word() - 1) & 0xffff;
        break;
      }
      case 0xca: {
        this.do_conditional_absolute_jump(!!this.flg.Z);
        break;
      }
      case 0xcb: {
        r = (r & 0x80) | (((r & 0x7f) + 1) & 0x7f);
        pc = (pc + 1) & 0xffff;
        var opcode = this.mem.readbyte(pc),
          bit_number = (opcode & 0x38) >>> 3,
          reg_code = opcode & 0x07;
        if (opcode < 0x40) {
          var op_array = [
            this.do_rlc,
            this.do_rrc,
            this.do_rl,
            this.do_rr,
            this.do_sla,
            this.do_sra,
            this.do_sll,
            this.do_srl,
          ];
          if (reg_code === 0) b = op_array[bit_number](b);
          else if (reg_code === 1) c = op_array[bit_number](c);
          else if (reg_code === 2) d = op_array[bit_number](d);
          else if (reg_code === 3) e = op_array[bit_number](e);
          else if (reg_code === 4) h = op_array[bit_number](h);
          else if (reg_code === 5) l = op_array[bit_number](l);
          else if (reg_code === 6)
            this.mem.writebyte(l | (h << 8), op_array[bit_number](this.mem.readbyte(l | (h << 8))));
          else if (reg_code === 7) a = op_array[bit_number](a);
        } else if (opcode < 0x80) {
          if (reg_code === 0) this.flg.Z = !(b & (1 << bit_number)) ? 1 : 0;
          else if (reg_code === 1) this.flg.Z = !(c & (1 << bit_number)) ? 1 : 0;
          else if (reg_code === 2) this.flg.Z = !(d & (1 << bit_number)) ? 1 : 0;
          else if (reg_code === 3) this.flg.Z = !(e & (1 << bit_number)) ? 1 : 0;
          else if (reg_code === 4) this.flg.Z = !(h & (1 << bit_number)) ? 1 : 0;
          else if (reg_code === 5) this.flg.Z = !(l & (1 << bit_number)) ? 1 : 0;
          else if (reg_code === 6)
            this.flg.Z = !(this.mem.readbyte(l | (h << 8)) & (1 << bit_number)) ? 1 : 0;
          else if (reg_code === 7) this.flg.Z = !(a & (1 << bit_number)) ? 1 : 0;
          this.flg.N = 0;
          this.flg.H = 1;
          this.flg.P = this.flg.Z;
          this.flg.S = bit_number === 7 && !this.flg.Z ? 1 : 0;
          this.flg.Y = bit_number === 5 && !this.flg.Z ? 1 : 0;
          this.flg.X = bit_number === 3 && !this.flg.Z ? 1 : 0;
        } else if (opcode < 0xc0) {
          if (reg_code === 0) b &= 0xff & ~(1 << bit_number);
          else if (reg_code === 1) c &= 0xff & ~(1 << bit_number);
          else if (reg_code === 2) d &= 0xff & ~(1 << bit_number);
          else if (reg_code === 3) e &= 0xff & ~(1 << bit_number);
          else if (reg_code === 4) h &= 0xff & ~(1 << bit_number);
          else if (reg_code === 5) l &= 0xff & ~(1 << bit_number);
          else if (reg_code === 6)
            this.mem.writebyte(l | (h << 8), this.mem.readbyte(l | (h << 8)) & ~(1 << bit_number));
          else if (reg_code === 7) a &= 0xff & ~(1 << bit_number);
        } else {
          if (reg_code === 0) b |= 1 << bit_number;
          else if (reg_code === 1) c |= 1 << bit_number;
          else if (reg_code === 2) d |= 1 << bit_number;
          else if (reg_code === 3) e |= 1 << bit_number;
          else if (reg_code === 4) h |= 1 << bit_number;
          else if (reg_code === 5) l |= 1 << bit_number;
          else if (reg_code === 6)
            this.mem.writebyte(l | (h << 8), this.mem.readbyte(l | (h << 8)) | (1 << bit_number));
          else if (reg_code === 7) a |= 1 << bit_number;
        }
        this.cycle_counter += this.cycle_counts_cb[opcode];
        break;
      }
      case 0xcc: {
        this.do_conditional_call(!!this.flg.Z);
        break;
      }
      case 0xcd: {
        this.push_word((pc + 3) & 0xffff);
        pc = this.mem.readbyte((pc + 1) & 0xffff) | (this.mem.readbyte((pc + 2) & 0xffff) << 8);
        pc = (pc - 1) & 0xffff;
        break;
      }
      case 0xce: {
        pc = (pc + 1) & 0xffff;
        this.do_adc(this.mem.readbyte(pc));
        break;
      }
      case 0xcf: {
        this.do_reset(0x08);
        break;
      }
      case 0xd0: {
        this.do_conditional_return(!this.flg.C);
        break;
      }
      case 0xd1: {
        var result = this.pop_word();
        e = result & 0xff;
        d = (result & 0xff00) >>> 8;
        break;
      }
      case 0xd2: {
        this.do_conditional_absolute_jump(!this.flg.C);
        break;
      }
      case 0xd3: {
        pc = (pc + 1) & 0xffff;
        this.core.io.writeport((a << 8) | this.mem.readbyte(pc), a);
        break;
      }
      case 0xd4: {
        this.do_conditional_call(!this.flg.C);
        break;
      }
      case 0xd5: {
        this.push_word(e | (d << 8));
        break;
      }
      case 0xd6: {
        pc = (pc + 1) & 0xffff;
        this.do_sub(this.mem.readbyte(pc));
        break;
      }
      case 0xd7: {
        this.do_reset(0x10);
        break;
      }
      case 0xd8: {
        this.do_conditional_return(!!this.flg.C);
        break;
      }
      case 0xd9: {
        var temp = b;
        b = this.b_prime;
        this.b_prime = temp;
        temp = c;
        c = this.c_prime;
        this.c_prime = temp;
        temp = d;
        d = this.d_prime;
        this.d_prime = temp;
        temp = e;
        e = this.e_prime;
        this.e_prime = temp;
        temp = h;
        h = this.h_prime;
        this.h_prime = temp;
        temp = l;
        l = this.l_prime;
        this.l_prime = temp;
        break;
      }
      case 0xda: {
        this.do_conditional_absolute_jump(!!this.flg.C);
        break;
      }
      case 0xdb: {
        pc = (pc + 1) & 0xffff;
        a = this.core.io.readport((a << 8) | this.mem.readbyte(pc));
        break;
      }
      case 0xdc: {
        this.do_conditional_call(!!this.flg.C);
        break;
      }
      case 0xdd: {
        r = (r & 0x80) | (((r & 0x7f) + 1) & 0x7f);
        pc = (pc + 1) & 0xffff;
        var opcode = this.mem.readbyte(pc),
          func = this.execDDInstruction(opcode);
        if (func) {
          func();
          this.cycle_counter += this.cycle_counts_dd[opcode];
        } else {
          pc = (pc - 1) & 0xffff;
          this.cycle_counter += this.cycle_counts[0];
        }
        break;
      }
      case 0xde: {
        pc = (pc + 1) & 0xffff;
        this.do_sbc(this.mem.readbyte(pc));
        break;
      }
      case 0xdf: {
        this.do_reset(0x18);
        break;
      }
      case 0xe0: {
        this.do_conditional_return(!this.flg.P);
        break;
      }
      case 0xe1: {
        var result = this.pop_word();
        l = result & 0xff;
        h = (result & 0xff00) >>> 8;
        break;
      }
      case 0xe2: {
        this.do_conditional_absolute_jump(!this.flg.P);
        break;
      }
      case 0xe3: {
        var temp = this.mem.readbyte(sp);
        this.mem.writebyte(sp, l);
        l = temp;
        temp = this.mem.readbyte((sp + 1) & 0xffff);
        this.mem.writebyte((sp + 1) & 0xffff, h);
        h = temp;
        break;
      }
      case 0xe4: {
        this.do_conditional_call(!this.flg.P);
        break;
      }
      case 0xe5: {
        this.push_word(l | (h << 8));
        break;
      }
      case 0xe6: {
        pc = (pc + 1) & 0xffff;
        this.do_and(this.mem.readbyte(pc));
        break;
      }
      case 0xe7: {
        this.do_reset(0x20);
        break;
      }
      case 0xe8: {
        this.do_conditional_return(!!this.flg.P);
        break;
      }
      case 0xe9: {
        pc = l | (h << 8);
        pc = (pc - 1) & 0xffff;
        break;
      }
      case 0xea: {
        this.do_conditional_absolute_jump(!!this.flg.P);
        break;
      }
      case 0xeb: {
        var temp = d;
        d = h;
        h = temp;
        temp = e;
        e = l;
        l = temp;
        break;
      }
      case 0xec: {
        this.do_conditional_call(!!this.flg.P);
        break;
      }
      case 0xed: {
        r = (r & 0x80) | (((r & 0x7f) + 1) & 0x7f);
        pc = (pc + 1) & 0xffff;
        var opcode = this.mem.readbyte(pc),
          func = this.execEDInstruction(opcode);
        if (func) {
          func();
          this.cycle_counter += this.cycle_counts_ed[opcode];
        } else {
          this.cycle_counter += this.cycle_counts[0];
        }
        break;
      }
      case 0xee: {
        pc = (pc + 1) & 0xffff;
        this.do_xor(this.mem.readbyte(pc));
        break;
      }
      case 0xef: {
        this.do_reset(0x28);
        break;
      }
      case 0xf0: {
        this.do_conditional_return(!this.flg.S);
        break;
      }
      case 0xf1: {
        var result = this.pop_word();
        this.set_flags_register(result & 0xff);
        a = (result & 0xff00) >>> 8;
        break;
      }
      case 0xf2: {
        this.do_conditional_absolute_jump(!this.flg.S);
        break;
      }
      case 0xf3: {
        this.do_delayed_di = true;
        break;
      }
      case 0xf4: {
        this.do_conditional_call(!this.flg.S);
        break;
      }
      case 0xf5: {
        this.push_word(this.get_flags_register() | (a << 8));
        break;
      }
      case 0xf6: {
        pc = (pc + 1) & 0xffff;
        this.do_or(this.mem.readbyte(pc));
        break;
      }
      case 0xf7: {
        this.do_reset(0x30);
        break;
      }
      case 0xf8: {
        this.do_conditional_return(!!this.flg.S);
        break;
      }
      case 0xf9: {
        sp = l | (h << 8);
        break;
      }
      case 0xfa: {
        this.do_conditional_absolute_jump(!!this.flg.S);
        break;
      }
      case 0xfb: {
        this.do_delayed_ei = true;
        break;
      }
      case 0xfc: {
        this.do_conditional_call(!!this.flg.S);
        break;
      }
      case 0xfd: {
        r = (r & 0x80) | (((r & 0x7f) + 1) & 0x7f);
        pc = (pc + 1) & 0xffff;
        var opcode = this.mem.readbyte(pc),
          func = this.execDDInstruction(opcode);
        if (func) {
          var temp = ix;
          ix = iy;
          func();
          iy = ix;
          ix = temp;
          this.cycle_counter += this.cycle_counts_dd[opcode];
        } else {
          pc = (pc - 1) & 0xffff;
          this.cycle_counter += this.cycle_counts[0];
        }
        break;
      }
      case 0xfe: {
        pc = (pc + 1) & 0xffff;
        this.do_cp(this.mem.readbyte(pc));
        break;
      }
      case 0xff: {
        this.do_reset(0x38);
        break;
      }
    }
  };
  this.execEDInstruction = (_opcode) => {
    switch (_opcode) {
      case 0x40: {
        b = this.do_in((b << 8) | c);
        break;
      }
      case 0x41: {
        this.core.io.writeport((b << 8) | c, b);
        break;
      }
      case 0x42: {
        this.do_hl_sbc(c | (b << 8));
        break;
      }
      case 0x43: {
        pc = (pc + 1) & 0xffff;
        var address = this.mem.readbyte(pc);
        pc = (pc + 1) & 0xffff;
        address |= this.mem.readbyte(pc) << 8;
        this.mem.writebyte(address, c);
        this.mem.writebyte((address + 1) & 0xffff, b);
        break;
      }
      case 0x44: {
        this.do_neg();
        break;
      }
      case 0x45: {
        pc = (this.pop_word() - 1) & 0xffff;
        this.iff1 = this.iff2;
        break;
      }
      case 0x46: {
        this.imode = 0;
        break;
      }
      case 0x47: {
        i = a;
        break;
      }
      case 0x48: {
        c = this.do_in((b << 8) | c);
        break;
      }
      case 0x49: {
        this.core.io.writeport((b << 8) | c, c);
        break;
      }
      case 0x4a: {
        this.do_hl_adc(c | (b << 8));
        break;
      }
      case 0x4b: {
        pc = (pc + 1) & 0xffff;
        var address = this.mem.readbyte(pc);
        pc = (pc + 1) & 0xffff;
        address |= this.mem.readbyte(pc) << 8;
        c = this.mem.readbyte(address);
        b = this.mem.readbyte((address + 1) & 0xffff);
        break;
      }
      case 0x4c: {
        this.do_neg();
        break;
      }
      case 0x4d: {
        pc = (this.pop_word() - 1) & 0xffff;
        break;
      }
      case 0x4e: {
        this.imode = 0;
        break;
      }
      case 0x4f: {
        r = a;
        break;
      }
      case 0x50: {
        d = this.do_in((b << 8) | c);
        break;
      }
      case 0x51: {
        this.core.io.writeport((b << 8) | c, d);
        break;
      }
      case 0x52: {
        this.do_hl_sbc(e | (d << 8));
        break;
      }
      case 0x53: {
        pc = (pc + 1) & 0xffff;
        var address = this.mem.readbyte(pc);
        pc = (pc + 1) & 0xffff;
        address |= this.mem.readbyte(pc) << 8;
        this.mem.writebyte(address, e);
        this.mem.writebyte((address + 1) & 0xffff, d);
        break;
      }
      case 0x54: {
        this.do_neg();
        break;
      }
      case 0x55: {
        pc = (this.pop_word() - 1) & 0xffff;
        this.iff1 = this.iff2;
        break;
      }
      case 0x56: {
        this.imode = 1;
        break;
      }
      case 0x57: {
        a = i;
        this.flg.S = a & 0x80 ? 1 : 0;
        this.flg.Z = a ? 0 : 1;
        this.flg.H = 0;
        this.flg.P = this.iff2;
        this.flg.N = 0;
        this.update_xy_flags(a);
        break;
      }
      case 0x58: {
        e = this.do_in((b << 8) | c);
        break;
      }
      case 0x59: {
        this.core.io.writeport((b << 8) | c, e);
        break;
      }
      case 0x5a: {
        this.do_hl_adc(e | (d << 8));
        break;
      }
      case 0x5b: {
        pc = (pc + 1) & 0xffff;
        var address = this.mem.readbyte(pc);
        pc = (pc + 1) & 0xffff;
        address |= this.mem.readbyte(pc) << 8;
        e = this.mem.readbyte(address);
        d = this.mem.readbyte((address + 1) & 0xffff);
        break;
      }
      case 0x5c: {
        this.do_neg();
        break;
      }
      case 0x5d: {
        pc = (this.pop_word() - 1) & 0xffff;
        this.iff1 = this.iff2;
        break;
      }
      case 0x5e: {
        this.imode = 2;
        break;
      }
      case 0x5f: {
        a = r;
        this.flg.S = a & 0x80 ? 1 : 0;
        this.flg.Z = a ? 0 : 1;
        this.flg.H = 0;
        this.flg.P = this.iff2;
        this.flg.N = 0;
        this.update_xy_flags(a);
        break;
      }
      case 0x60: {
        h = this.do_in((b << 8) | c);
        break;
      }
      case 0x61: {
        this.core.io.writeport((b << 8) | c, h);
        break;
      }
      case 0x62: {
        this.do_hl_sbc(l | (h << 8));
        break;
      }
      case 0x63: {
        pc = (pc + 1) & 0xffff;
        var address = this.mem.readbyte(pc);
        pc = (pc + 1) & 0xffff;
        address |= this.mem.readbyte(pc) << 8;
        this.mem.writebyte(address, l);
        this.mem.writebyte((address + 1) & 0xffff, h);
        break;
      }
      case 0x64: {
        this.do_neg();
        break;
      }
      case 0x65: {
        pc = (this.pop_word() - 1) & 0xffff;
        this.iff1 = this.iff2;
        break;
      }
      case 0x66: {
        this.imode = 0;
        break;
      }
      case 0x67: {
        var hl_value = this.mem.readbyte(l | (h << 8));
        var temp1 = hl_value & 0x0f,
          temp2 = a & 0x0f;
        hl_value = ((hl_value & 0xf0) >>> 4) | (temp2 << 4);
        a = (a & 0xf0) | temp1;
        this.mem.writebyte(l | (h << 8), hl_value);
        this.flg.S = a & 0x80 ? 1 : 0;
        this.flg.Z = a ? 0 : 1;
        this.flg.H = 0;
        this.flg.P = this.parity_bits[a] ? 1 : 0;
        this.flg.N = 0;
        this.update_xy_flags(a);
        break;
      }
      case 0x68: {
        l = this.do_in((b << 8) | c);
        break;
      }
      case 0x69: {
        this.core.io.writeport((b << 8) | c, l);
        break;
      }
      case 0x6a: {
        this.do_hl_adc(l | (h << 8));
        break;
      }
      case 0x6b: {
        pc = (pc + 1) & 0xffff;
        var address = this.mem.readbyte(pc);
        pc = (pc + 1) & 0xffff;
        address |= this.mem.readbyte(pc) << 8;
        l = this.mem.readbyte(address);
        h = this.mem.readbyte((address + 1) & 0xffff);
        break;
      }
      case 0x6c: {
        this.do_neg();
        break;
      }
      case 0x6d: {
        pc = (this.pop_word() - 1) & 0xffff;
        this.iff1 = this.iff2;
        break;
      }
      case 0x6e: {
        this.imode = 0;
        break;
      }
      case 0x6f: {
        var hl_value = this.mem.readbyte(l | (h << 8));
        var temp1 = hl_value & 0xf0,
          temp2 = a & 0x0f;
        hl_value = ((hl_value & 0x0f) << 4) | temp2;
        a = (a & 0xf0) | (temp1 >>> 4);
        this.mem.writebyte(l | (h << 8), hl_value);
        this.flg.S = a & 0x80 ? 1 : 0;
        this.flg.Z = a ? 0 : 1;
        this.flg.H = 0;
        this.flg.P = this.parity_bits[a] ? 1 : 0;
        this.flg.N = 0;
        this.update_xy_flags(a);
        break;
      }
      case 0x70: {
        this.do_in((b << 8) | c);
        break;
      }
      case 0x71: {
        this.core.io.writeport((b << 8) | c, 0);
        break;
      }
      case 0x72: {
        this.do_hl_sbc(sp);
        break;
      }
      case 0x73: {
        pc = (pc + 1) & 0xffff;
        var address = this.mem.readbyte(pc);
        pc = (pc + 1) & 0xffff;
        address |= this.mem.readbyte(pc) << 8;
        this.mem.writebyte(address, sp & 0xff);
        this.mem.writebyte((address + 1) & 0xffff, (sp >>> 8) & 0xff);
        break;
      }
      case 0x74: {
        this.do_neg();
        break;
      }
      case 0x75: {
        pc = (this.pop_word() - 1) & 0xffff;
        this.iff1 = this.iff2;
        break;
      }
      case 0x76: {
        this.imode = 1;
        break;
      }
      case 0x78: {
        a = this.do_in((b << 8) | c);
        break;
      }
      case 0x79: {
        this.core.io.writeport((b << 8) | c, a);
        break;
      }
      case 0x7a: {
        this.do_hl_adc(sp);
        break;
      }
      case 0x7b: {
        pc = (pc + 1) & 0xffff;
        var address = this.mem.readbyte(pc);
        pc = (pc + 1) & 0xffff;
        address |= this.mem.readbyte(pc) << 8;
        sp = this.mem.readbyte(address);
        sp |= this.mem.readbyte((address + 1) & 0xffff) << 8;
        break;
      }
      case 0x7c: {
        this.do_neg();
        break;
      }
      case 0x7d: {
        pc = (this.pop_word() - 1) & 0xffff;
        this.iff1 = this.iff2;
        break;
      }
      case 0x7e: {
        this.imode = 2;
        break;
      }
      case 0xa0: {
        this.do_ldi();
        break;
      }
      case 0xa1: {
        this.do_cpi();
        break;
      }
      case 0xa2: {
        this.do_ini();
        break;
      }
      case 0xa3: {
        this.do_outi();
        break;
      }
      case 0xa8: {
        this.do_ldd();
        break;
      }
      case 0xa9: {
        this.do_cpd();
        break;
      }
      case 0xaa: {
        this.do_ind();
        break;
      }
      case 0xab: {
        this.do_outd();
        break;
      }
      case 0xb0: {
        this.do_ldi();
        if (b || c) {
          this.cycle_counter += 5;
          pc = (pc - 2) & 0xffff;
        }
        break;
      }
      case 0xb1: {
        this.do_cpi();
        if (!this.flg.Z && (b || c)) {
          this.cycle_counter += 5;
          pc = (pc - 2) & 0xffff;
        }
        break;
      }
      case 0xb2: {
        this.do_ini();
        if (b) {
          this.cycle_counter += 5;
          pc = (pc - 2) & 0xffff;
        }
        break;
      }
      case 0xb3: {
        this.do_outi();
        if (b) {
          this.cycle_counter += 5;
          pc = (pc - 2) & 0xffff;
        }
        break;
      }
      case 0xb8: {
        this.do_ldd();
        if (b || c) {
          this.cycle_counter += 5;
          pc = (pc - 2) & 0xffff;
        }
        break;
      }
      case 0xb9: {
        this.do_cpd();
        if (!this.flg.Z && (b || c)) {
          this.cycle_counter += 5;
          pc = (pc - 2) & 0xffff;
        }
        break;
      }
      case 0xba: {
        this.do_ind();
        if (b) {
          this.cycle_counter += 5;
          pc = (pc - 2) & 0xffff;
        }
        break;
      }
      case 0xbb: {
        this.do_outd();
        if (b) {
          this.cycle_counter += 5;
          pc = (pc - 2) & 0xffff;
        }
        break;
      }
    }
  };
  this.execDDInstruction = (_opcode) => {
    switch (_opcode) {
      case 0x09: {
        this.do_ix_add(c | (b << 8));
        break;
      }
      case 0x19: {
        this.do_ix_add(e | (d << 8));
        break;
      }
      case 0x21: {
        pc = (pc + 1) & 0xffff;
        ix = this.mem.readbyte(pc);
        pc = (pc + 1) & 0xffff;
        ix |= this.mem.readbyte(pc) << 8;
        break;
      }
      case 0x22: {
        pc = (pc + 1) & 0xffff;
        var address = this.mem.readbyte(pc);
        pc = (pc + 1) & 0xffff;
        address |= this.mem.readbyte(pc) << 8;
        this.mem.writebyte(address, ix & 0xff);
        this.mem.writebyte((address + 1) & 0xffff, (ix >>> 8) & 0xff);
        break;
      }
      case 0x23: {
        ix = (ix + 1) & 0xffff;
        break;
      }
      case 0x24: {
        ix = (this.do_inc(ix >>> 8) << 8) | (ix & 0xff);
        break;
      }
      case 0x25: {
        ix = (this.do_dec(ix >>> 8) << 8) | (ix & 0xff);
        break;
      }
      case 0x26: {
        pc = (pc + 1) & 0xffff;
        ix = (this.mem.readbyte(pc) << 8) | (ix & 0xff);
        break;
      }
      case 0x29: {
        this.do_ix_add(ix);
        break;
      }
      case 0x2a: {
        pc = (pc + 1) & 0xffff;
        var address = this.mem.readbyte(pc);
        pc = (pc + 1) & 0xffff;
        address |= this.mem.readbyte(pc) << 8;
        ix = this.mem.readbyte(address);
        ix |= this.mem.readbyte((address + 1) & 0xffff) << 8;
        break;
      }
      case 0x2b: {
        ix = (ix - 1) & 0xffff;
        break;
      }
      case 0x2c: {
        ix = this.do_inc(ix & 0xff) | (ix & 0xff00);
        break;
      }
      case 0x2d: {
        ix = this.do_dec(ix & 0xff) | (ix & 0xff00);
        break;
      }
      case 0x2e: {
        pc = (pc + 1) & 0xffff;
        ix = (this.mem.readbyte(pc) & 0xff) | (ix & 0xff00);
        break;
      }
      case 0x34: {
        pc = (pc + 1) & 0xffff;
        var offset = this.get_signed_offset_byte(this.mem.readbyte(pc)),
          value = this.mem.readbyte((offset + ix) & 0xffff);
        this.mem.writebyte((offset + ix) & 0xffff, this.do_inc(value));
        break;
      }
      case 0x35: {
        pc = (pc + 1) & 0xffff;
        var offset = this.get_signed_offset_byte(this.mem.readbyte(pc)),
          value = this.mem.readbyte((offset + ix) & 0xffff);
        this.mem.writebyte((offset + ix) & 0xffff, this.do_dec(value));
        break;
      }
      case 0x36: {
        pc = (pc + 1) & 0xffff;
        var offset = this.get_signed_offset_byte(this.mem.readbyte(pc));
        pc = (pc + 1) & 0xffff;
        this.mem.writebyte((ix + offset) & 0xffff, this.mem.readbyte(pc));
        break;
      }
      case 0x39: {
        this.do_ix_add(sp);
        break;
      }
      case 0x44: {
        b = (ix >>> 8) & 0xff;
        break;
      }
      case 0x45: {
        b = ix & 0xff;
        break;
      }
      case 0x46: {
        pc = (pc + 1) & 0xffff;
        var offset = this.get_signed_offset_byte(this.mem.readbyte(pc));
        b = this.mem.readbyte((ix + offset) & 0xffff);
        break;
      }
      case 0x4c: {
        c = (ix >>> 8) & 0xff;
        break;
      }
      case 0x4d: {
        c = ix & 0xff;
        break;
      }
      case 0x4e: {
        pc = (pc + 1) & 0xffff;
        var offset = this.get_signed_offset_byte(this.mem.readbyte(pc));
        c = this.mem.readbyte((ix + offset) & 0xffff);
        break;
      }
      case 0x54: {
        d = (ix >>> 8) & 0xff;
        break;
      }
      case 0x55: {
        d = ix & 0xff;
        break;
      }
      case 0x56: {
        pc = (pc + 1) & 0xffff;
        var offset = this.get_signed_offset_byte(this.mem.readbyte(pc));
        d = this.mem.readbyte((ix + offset) & 0xffff);
        break;
      }
      case 0x5c: {
        e = (ix >>> 8) & 0xff;
        break;
      }
      case 0x5d: {
        e = ix & 0xff;
        break;
      }
      case 0x5e: {
        pc = (pc + 1) & 0xffff;
        var offset = this.get_signed_offset_byte(this.mem.readbyte(pc));
        e = this.mem.readbyte((ix + offset) & 0xffff);
        break;
      }
      case 0x60: {
        ix = (ix & 0xff) | (b << 8);
        break;
      }
      case 0x61: {
        ix = (ix & 0xff) | (c << 8);
        break;
      }
      case 0x62: {
        ix = (ix & 0xff) | (d << 8);
        break;
      }
      case 0x63: {
        ix = (ix & 0xff) | (e << 8);
        break;
      }
      case 0x64: {
        break;
      }
      case 0x65: {
        ix = (ix & 0xff) | ((ix & 0xff) << 8);
        break;
      }
      case 0x66: {
        pc = (pc + 1) & 0xffff;
        var offset = this.get_signed_offset_byte(this.mem.readbyte(pc));
        h = this.mem.readbyte((ix + offset) & 0xffff);
        break;
      }
      case 0x67: {
        ix = (ix & 0xff) | (a << 8);
        break;
      }
      case 0x68: {
        ix = (ix & 0xff00) | b;
        break;
      }
      case 0x69: {
        ix = (ix & 0xff00) | c;
        break;
      }
      case 0x6a: {
        ix = (ix & 0xff00) | d;
        break;
      }
      case 0x6b: {
        ix = (ix & 0xff00) | e;
        break;
      }
      case 0x6c: {
        ix = (ix & 0xff00) | (ix >>> 8);
        break;
      }
      case 0x6d: {
        break;
      }
      case 0x6e: {
        pc = (pc + 1) & 0xffff;
        var offset = this.get_signed_offset_byte(this.mem.readbyte(pc));
        l = this.mem.readbyte((ix + offset) & 0xffff);
        break;
      }
      case 0x6f: {
        ix = (ix & 0xff00) | a;
        break;
      }
      case 0x70: {
        pc = (pc + 1) & 0xffff;
        var offset = this.get_signed_offset_byte(this.mem.readbyte(pc));
        this.mem.writebyte((ix + offset) & 0xffff, b);
        break;
      }
      case 0x71: {
        pc = (pc + 1) & 0xffff;
        var offset = this.get_signed_offset_byte(this.mem.readbyte(pc));
        this.mem.writebyte((ix + offset) & 0xffff, c);
        break;
      }
      case 0x72: {
        pc = (pc + 1) & 0xffff;
        var offset = this.get_signed_offset_byte(this.mem.readbyte(pc));
        this.mem.writebyte((ix + offset) & 0xffff, d);
        break;
      }
      case 0x73: {
        pc = (pc + 1) & 0xffff;
        var offset = this.get_signed_offset_byte(this.mem.readbyte(pc));
        this.mem.writebyte((ix + offset) & 0xffff, e);
        break;
      }
      case 0x74: {
        pc = (pc + 1) & 0xffff;
        var offset = this.get_signed_offset_byte(this.mem.readbyte(pc));
        this.mem.writebyte((ix + offset) & 0xffff, h);
        break;
      }
      case 0x75: {
        pc = (pc + 1) & 0xffff;
        var offset = this.get_signed_offset_byte(this.mem.readbyte(pc));
        this.mem.writebyte((ix + offset) & 0xffff, l);
        break;
      }
      case 0x77: {
        pc = (pc + 1) & 0xffff;
        var offset = this.get_signed_offset_byte(this.mem.readbyte(pc));
        this.mem.writebyte((ix + offset) & 0xffff, a);
        break;
      }
      case 0x7c: {
        a = (ix >>> 8) & 0xff;
        break;
      }
      case 0x7d: {
        a = ix & 0xff;
        break;
      }
      case 0x7e: {
        pc = (pc + 1) & 0xffff;
        var offset = this.get_signed_offset_byte(this.mem.readbyte(pc));
        a = this.mem.readbyte((ix + offset) & 0xffff);
        break;
      }
      case 0x84: {
        this.do_add((ix >>> 8) & 0xff);
        break;
      }
      case 0x85: {
        this.do_add(ix & 0xff);
        break;
      }
      case 0x86: {
        pc = (pc + 1) & 0xffff;
        var offset = this.get_signed_offset_byte(this.mem.readbyte(pc));
        this.do_add(this.mem.readbyte((ix + offset) & 0xffff));
        break;
      }
      case 0x8c: {
        this.do_adc((ix >>> 8) & 0xff);
        break;
      }
      case 0x8d: {
        this.do_adc(ix & 0xff);
        break;
      }
      case 0x8e: {
        pc = (pc + 1) & 0xffff;
        var offset = this.get_signed_offset_byte(this.mem.readbyte(pc));
        this.do_adc(this.mem.readbyte((ix + offset) & 0xffff));
        break;
      }
      case 0x94: {
        this.do_sub((ix >>> 8) & 0xff);
        break;
      }
      case 0x95: {
        this.do_sub(ix & 0xff);
        break;
      }
      case 0x96: {
        pc = (pc + 1) & 0xffff;
        var offset = this.get_signed_offset_byte(this.mem.readbyte(pc));
        this.do_sub(this.mem.readbyte((ix + offset) & 0xffff));
        break;
      }
      case 0x9c: {
        this.do_sbc((ix >>> 8) & 0xff);
        break;
      }
      case 0x9d: {
        this.do_sbc(ix & 0xff);
        break;
      }
      case 0x9e: {
        pc = (pc + 1) & 0xffff;
        var offset = this.get_signed_offset_byte(this.mem.readbyte(pc));
        this.do_sbc(this.mem.readbyte((ix + offset) & 0xffff));
        break;
      }
      case 0xa4: {
        this.do_and((ix >>> 8) & 0xff);
        break;
      }
      case 0xa5: {
        this.do_and(ix & 0xff);
        break;
      }
      case 0xa6: {
        pc = (pc + 1) & 0xffff;
        var offset = this.get_signed_offset_byte(this.mem.readbyte(pc));
        this.do_and(this.mem.readbyte((ix + offset) & 0xffff));
        break;
      }
      case 0xac: {
        this.do_xor((ix >>> 8) & 0xff);
        break;
      }
      case 0xad: {
        this.do_xor(ix & 0xff);
        break;
      }
      case 0xae: {
        pc = (pc + 1) & 0xffff;
        var offset = this.get_signed_offset_byte(this.mem.readbyte(pc));
        this.do_xor(this.mem.readbyte((ix + offset) & 0xffff));
        break;
      }
      case 0xb4: {
        this.do_or((ix >>> 8) & 0xff);
        break;
      }
      case 0xb5: {
        this.do_or(ix & 0xff);
        break;
      }
      case 0xb6: {
        pc = (pc + 1) & 0xffff;
        var offset = this.get_signed_offset_byte(this.mem.readbyte(pc));
        this.do_or(this.mem.readbyte((ix + offset) & 0xffff));
        break;
      }
      case 0xbc: {
        this.do_cp((ix >>> 8) & 0xff);
        break;
      }
      case 0xbd: {
        this.do_cp(ix & 0xff);
        break;
      }
      case 0xbe: {
        pc = (pc + 1) & 0xffff;
        var offset = this.get_signed_offset_byte(this.mem.readbyte(pc));
        this.do_cp(this.mem.readbyte((ix + offset) & 0xffff));
        break;
      }
      case 0xcb: {
        pc = (pc + 1) & 0xffff;
        var offset = this.get_signed_offset_byte(this.mem.readbyte(pc));
        pc = (pc + 1) & 0xffff;
        var opcode = this.mem.readbyte(pc),
          value;
        if (opcode < 0x40) {
          var ddcb_functions = [
            this.do_rlc,
            this.do_rrc,
            this.do_rl,
            this.do_rr,
            this.do_sla,
            this.do_sra,
            this.do_sll,
            this.do_srl,
          ];
          var func = ddcb_functions[(opcode & 0x38) >>> 3],
            value = func(this.mem.readbyte((ix + offset) & 0xffff));
          this.mem.writebyte((ix + offset) & 0xffff, value);
        } else {
          var bit_number = (opcode & 0x38) >>> 3;
          if (opcode < 0x80) {
            this.flg.N = 0;
            this.flg.H = 1;
            this.flg.Z = !(this.mem.readbyte((ix + offset) & 0xffff) & (1 << bit_number)) ? 1 : 0;
            this.flg.P = this.flg.Z;
            this.flg.S = bit_number === 7 && !this.flg.Z ? 1 : 0;
          } else if (opcode < 0xc0) {
            value = this.mem.readbyte((ix + offset) & 0xffff) & ~(1 << bit_number) & 0xff;
            this.mem.writebyte((ix + offset) & 0xffff, value);
          } else {
            value = this.mem.readbyte((ix + offset) & 0xffff) | (1 << bit_number);
            this.mem.writebyte((ix + offset) & 0xffff, value);
          }
        }
        if (value !== undefined) {
          if ((opcode & 0x07) === 0) b = value;
          else if ((opcode & 0x07) === 1) c = value;
          else if ((opcode & 0x07) === 2) d = value;
          else if ((opcode & 0x07) === 3) e = value;
          else if ((opcode & 0x07) === 4) h = value;
          else if ((opcode & 0x07) === 5) l = value;
          else if ((opcode & 0x07) === 7) a = value;
        }
        this.cycle_counter += this.cycle_counts_cb[opcode] + 8;
        break;
      }
      case 0xe1: {
        ix = this.pop_word();
        break;
      }
      case 0xe3: {
        var temp = ix;
        ix = this.mem.readbyte(sp);
        ix |= this.mem.readbyte((sp + 1) & 0xffff) << 8;
        this.mem.writebyte(sp, temp & 0xff);
        this.mem.writebyte((sp + 1) & 0xffff, (temp >>> 8) & 0xff);
        break;
      }
      case 0xe5: {
        this.push_word(ix);
        break;
      }
      case 0xe9: {
        pc = (ix - 1) & 0xffff;
        break;
      }
      case 0xf9: {
        sp = ix;
        break;
      }
    }
  };
  this.Instructions = (opecode) => {
    const output = {
      opecode: opecode,
    };
    switch (opecode) {
      case 0x00:
        output.opCode = "NOP";
        output.z80OPCode = "NOP";
        return output;
      case 0x01:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x02:
        output.opCode = "LD2M";
        output.z80OPCode = "LD";
        return output;
      case 0x03:
        output.opCode = "INCR";
        output.z80OPCode = "INC";
        return output;
      case 0x04:
        output.opCode = "INCR";
        output.z80OPCode = "INC";
        return output;
      case 0x05:
        output.opCode = "DCRR";
        output.z80OPCode = "LD";
        return output;
      case 0x06:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x07:
        output.opCode = "RLCA";
        output.z80OPCode = "RCLA";
        return output;
      case 0x08:
        output.opCode = "NOP";
        output.z80OPCode = "NOP";
        return output;
      case 0x09:
        output.opCode = "INXR";
        output.z80OPCode = "ADD";
        return output;
      case 0x0a:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x0b:
        output.opCode = "DCRR";
        output.z80OPCode = "DEC";
        return output;
      case 0x0c:
        output.opCode = "INCR";
        output.z80OPCode = "INC";
        return output;
      case 0x0d:
        output.opCode = "DCRR";
        output.z80OPCode = "DEC";
        return output;
      case 0x0e:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x0f:
        output.opCode = "RRCA";
        output.z80OPCode = "RRCA";
        return output;
      case 0x10:
        output.opCode = "NOP";
        output.z80OPCode = "NOP";
        return output;
      case 0x11:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x12:
        output.opCode = "LD2M";
        output.z80OPCode = "LD";
        return output;
      case 0x13:
        output.opCode = "INCR";
        output.z80OPCode = "INC";
        return output;
      case 0x14:
        output.opCode = "INCR";
        output.z80OPCode = "INC";
        return output;
      case 0x15:
        output.opCode = "DCRR";
        output.z80OPCode = "DEC";
        return output;
      case 0x16:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x17:
        output.opCode = "RLC9";
        output.z80OPCode = "RLA";
        return output;
      case 0x18:
        output.opCode = "NOP";
        output.z80OPCode = "NOP";
        return output;
      case 0x19:
        output.opCode = "INXR";
        output.z80OPCode = "ADD";
        return output;
      case 0x1a:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x1b:
        output.opCode = "DCRR";
        output.z80OPCode = "DEC";
        return output;
      case 0x1c:
        output.opCode = "INCR";
        output.z80OPCode = "INC";
        return output;
      case 0x1d:
        output.opCode = "DCRR";
        output.z80OPCode = "DEC";
        return output;
      case 0x1e:
        output.opCode = "UNKOP";
        output.z80OPCode = "LD";
        return output;
      case 0x1f:
        output.opCode = "RRC";
        output.z80OPCode = "RRA";
        return output;
      case 0x20:
        output.opCode = "NOP";
        output.z80OPCode = "NOP";
        return output;
      case 0x21:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x22:
        output.opCode = "LD2M";
        output.z80OPCode = "LD";
        return output;
      case 0x23:
        output.opCode = "INCR";
        output.z80OPCode = "INC";
        return output;
      case 0x24:
        output.opCode = "INCR";
        output.z80OPCode = "INC";
        return output;
      case 0x25:
        output.opCode = "DCRR";
        output.z80OPCode = "DEC";
        return output;
      case 0x26:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x27:
        output.opCode = "NOP";
        output.z80OPCode = "DAA";
        return output;
      case 0x28:
        output.opCode = "NOP";
        output.z80OPCode = "NOP";
        return output;
      case 0x29:
        output.opCode = "INXR";
        output.z80OPCode = "ADD";
        return output;
      case 0x2a:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x2b:
        output.opCode = "DCRR";
        output.z80OPCode = "DEC";
        return output;
      case 0x2c:
        output.opCode = "INCR";
        output.z80OPCode = "INC";
        return output;
      case 0x2d:
        output.opCode = "DCRR";
        output.z80OPCode = "DEC";
        return output;
      case 0x2e:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x2f:
        output.opCode = "CPL";
        output.z80OPCode = "CPL";
        return output;
      case 0x30:
        output.opCode = "NOP";
        output.z80OPCode = "NOP";
        return output;
      case 0x31:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x32:
        output.opCode = "LD2M";
        output.z80OPCode = "INC";
        return output;
      case 0x33:
        output.opCode = "INCR";
        output.z80OPCode = "INC";
        return output;
      case 0x34:
        output.opCode = "INCM";
        output.z80OPCode = "INC";
        return output;
      case 0x35:
        output.opCode = "DCRM";
        output.z80OPCode = "DEC";
        return output;
      case 0x36:
        output.opCode = "LD2M";
        output.z80OPCode = "LD";
        return output;
      case 0x37:
        output.opCode = "SCF";
        output.z80OPCode = "SCF";
        return output;
      case 0x38:
        output.opCode = "NOP";
        output.z80OPCode = "NOP";
        return output;
      case 0x39:
        output.opCode = "INXR";
        output.z80OPCode = "ADD";
        return output;
      case 0x3a:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x3b:
        output.opCode = "DCRR";
        output.z80OPCode = "DEC";
        return output;
      case 0x3c:
        output.opCode = "INCR";
        output.z80OPCode = "INC";
        return output;
      case 0x3d:
        output.opCode = "DCRR";
        output.z80OPCode = "DEC";
        return output;
      case 0x3e:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x3f:
        output.opCode = "CCF";
        output.z80OPCode = "CCF";
        return output;
      case 0x40:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x41:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x42:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x43:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x44:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x45:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x46:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x47:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x48:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x49:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x4a:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x4b:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x4c:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x4d:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x4e:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x4f:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x50:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x51:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x52:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x53:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x54:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x55:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x56:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x57:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x58:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x59:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x5a:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x5b:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x5c:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x5d:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x5e:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x5f:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x60:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x61:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x62:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x63:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x64:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x65:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x66:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x67:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x68:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x69:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x6a:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x6b:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x6c:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x6d:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x6e:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x6f:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x70:
        output.opCode = "LD2M";
        output.z80OPCode = "LD";
        return output;
      case 0x71:
        output.opCode = "LD2M";
        output.z80OPCode = "LD";
        return output;
      case 0x72:
        output.opCode = "LD2M";
        output.z80OPCode = "LD";
        return output;
      case 0x73:
        output.opCode = "LD2M";
        output.z80OPCode = "LD";
        return output;
      case 0x74:
        output.opCode = "LD2M";
        output.z80OPCode = "LD";
        return output;
      case 0x75:
        output.opCode = "LD2M";
        output.z80OPCode = "LD";
        return output;
      case 0x76:
        output.opCode = "HLT";
        output.z80OPCode = "LD";
        return output;
      case 0x77:
        output.opCode = "LD2M";
        output.z80OPCode = "LD";
        return output;
      case 0x78:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x79:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x7a:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x7b:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x7c:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x7d:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x7e:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x7f:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0x80:
        output.opCode = "INXR";
        output.z80OPCode = "ADD";
        return output;
      case 0x81:
        output.opCode = "INXR";
        output.z80OPCode = "ADD";
        return output;
      case 0x82:
        output.opCode = "INXR";
        output.z80OPCode = "ADD";
        return output;
      case 0x83:
        output.opCode = "INXR";
        output.z80OPCode = "ADD";
        return output;
      case 0x84:
        output.opCode = "INXR";
        output.z80OPCode = "ADD";
        return output;
      case 0x85:
        output.opCode = "INXR";
        output.z80OPCode = "ADD";
        return output;
      case 0x86:
        output.opCode = "INXR";
        output.z80OPCode = "ADD";
        return output;
      case 0x87:
        output.opCode = "INXR";
        output.z80OPCode = "ADD";
        return output;
      case 0x88:
        output.opCode = "ICXR";
        output.z80OPCode = "ADD";
        return output;
      case 0x89:
        output.opCode = "ICXR";
        output.z80OPCode = "ADD";
        return output;
      case 0x8a:
        output.opCode = "ICXR";
        output.z80OPCode = "ADD";
        return output;
      case 0x8b:
        output.opCode = "ICXR";
        output.z80OPCode = "ADD";
        return output;
      case 0x8c:
        output.opCode = "ICXR";
        output.z80OPCode = "ADD";
        return output;
      case 0x8d:
        output.opCode = "ICXR";
        output.z80OPCode = "ADD";
        return output;
      case 0x8e:
        output.opCode = "ICXR";
        output.z80OPCode = "ADD";
        return output;
      case 0x8f:
        output.opCode = "ICXR";
        output.z80OPCode = "ADD";
        return output;
      case 0x90:
        output.opCode = "DCXR";
        output.z80OPCode = "SUB";
        return output;
      case 0x91:
        output.opCode = "DCXR";
        output.z80OPCode = "SUB";
        return output;
      case 0x92:
        output.opCode = "DCXR";
        output.z80OPCode = "SUB";
        return output;
      case 0x93:
        output.opCode = "DCXR";
        output.z80OPCode = "SUB";
        return output;
      case 0x94:
        output.opCode = "DCXR";
        output.z80OPCode = "SUB";
        return output;
      case 0x95:
        output.opCode = "DCXR";
        output.z80OPCode = "SUB";
        return output;
      case 0x96:
        output.opCode = "DCXR";
        output.z80OPCode = "SUB";
        return output;
      case 0x97:
        output.opCode = "DCXR";
        output.z80OPCode = "SUB";
        return output;
      case 0x98:
        output.opCode = "DEXR";
        output.z80OPCode = "SBC";
        return output;
      case 0x99:
        output.opCode = "DEXR";
        output.z80OPCode = "SBC";
        return output;
      case 0x9a:
        output.opCode = "DEXR";
        output.z80OPCode = "SBC";
        return output;
      case 0x9b:
        output.opCode = "DEXR";
        output.z80OPCode = "SBC";
        return output;
      case 0x9c:
        output.opCode = "DEXR";
        output.z80OPCode = "SBC";
        return output;
      case 0x9d:
        output.opCode = "DEXR";
        output.z80OPCode = "SBC";
        return output;
      case 0x9e:
        output.opCode = "DEXR";
        output.z80OPCode = "SBC";
        return output;
      case 0x9f:
        output.opCode = "DEXR";
        output.z80OPCode = "SBC";
        return output;
      case 0xa0:
        output.opCode = "ANDR";
        output.z80OPCode = "AND";
        return output;
      case 0xa1:
        output.opCode = "ANDR";
        output.z80OPCode = "AND";
        return output;
      case 0xa2:
        output.opCode = "ANDR";
        output.z80OPCode = "AND";
        return output;
      case 0xa3:
        output.opCode = "ANDR";
        output.z80OPCode = "AND";
        return output;
      case 0xa4:
        output.opCode = "ANDR";
        output.z80OPCode = "AND";
        return output;
      case 0xa5:
        output.opCode = "ANDR";
        output.z80OPCode = "AND";
        return output;
      case 0xa6:
        output.opCode = "ANDR";
        output.z80OPCode = "AND";
        return output;
      case 0xa7:
        output.opCode = "ANDR";
        output.z80OPCode = "AND";
        return output;
      case 0xa8:
        output.opCode = "XORR";
        output.z80OPCode = "XOR";
        return output;
      case 0xa9:
        output.opCode = "XORR";
        output.z80OPCode = "XOR";
        return output;
      case 0xaa:
        output.opCode = "XORR";
        output.z80OPCode = "XOR";
        return output;
      case 0xab:
        output.opCode = "XORR";
        output.z80OPCode = "XOR";
        return output;
      case 0xac:
        output.opCode = "XORR";
        output.z80OPCode = "XOR";
        return output;
      case 0xad:
        output.opCode = "XORR";
        output.z80OPCode = "XOR";
        return output;
      case 0xae:
        output.opCode = "XORR";
        output.z80OPCode = "XOR";
        return output;
      case 0xaf:
        output.opCode = "XORR";
        output.z80OPCode = "XOR";
        return output;
      case 0xb0:
        output.opCode = "ORR";
        output.z80OPCode = "OR";
        return output;
      case 0xb1:
        output.opCode = "ORR";
        output.z80OPCode = "OR";
        return output;
      case 0xb2:
        output.opCode = "ORR";
        output.z80OPCode = "OR";
        return output;
      case 0xb3:
        output.opCode = "ORR";
        output.z80OPCode = "OR";
        return output;
      case 0xb4:
        output.opCode = "ORR";
        output.z80OPCode = "OR";
        return output;
      case 0xb5:
        output.opCode = "ORR";
        output.z80OPCode = "OR";
        return output;
      case 0xb6:
        output.opCode = "ORR";
        output.z80OPCode = "OR";
        return output;
      case 0xb7:
        output.opCode = "ORR";
        output.z80OPCode = "OR";
        return output;
      case 0xb8:
        output.opCode = "SUBX";
        output.z80OPCode = "CP";
        return output;
      case 0xb9:
        output.opCode = "SUBX";
        output.z80OPCode = "CP";
        return output;
      case 0xba:
        output.opCode = "SUBX";
        output.z80OPCode = "CP";
        return output;
      case 0xbb:
        output.opCode = "SUBX";
        output.z80OPCode = "CP";
        return output;
      case 0xbc:
        output.opCode = "SUBX";
        output.z80OPCode = "CP";
        return output;
      case 0xbd:
        output.opCode = "SUBX";
        output.z80OPCode = "CP";
        return output;
      case 0xbe:
        output.opCode = "SUBX";
        output.z80OPCode = "CP";
        return output;
      case 0xbf:
        output.opCode = "SUBX";
        output.z80OPCode = "CP";
        return output;
      case 0xc0:
        output.opCode = "RETNZ";
        output.z80OPCode = "RET NZ";
        return output;
      case 0xc1:
        output.opCode = "POPR";
        output.z80OPCode = "POP";
        return output;
      case 0xc2:
        output.opCode = "JMPNZ";
        output.z80OPCode = "JP NZ";
        return output;
      case 0xc3:
        output.opCode = "JMP";
        output.z80OPCode = "JP";
        return output;
      case 0xc4:
        output.opCode = "PUSHNZ";
        output.z80OPCode = "CALL NZ";
        return output;
      case 0xc5:
        output.opCode = "PUSH";
        output.z80OPCode = "PUSH";
        return output;
      case 0xc6:
        output.opCode = "INXR";
        output.z80OPCode = "ADD";
        return output;
      case 0xc7:
        output.opCode = "RST0";
        output.z80OPCode = "RST 00";
        return output;
      case 0xc8:
        output.opCode = "RETZ";
        output.z80OPCode = "RET Z";
        return output;
      case 0xc9:
        output.opCode = "RET";
        output.z80OPCode = "RET";
        return output;
      case 0xca:
        output.opCode = "JMPZ";
        output.z80OPCode = "JP Z";
        return output;
      case 0xcb:
        output.opCode = "NOP";
        output.z80OPCode = "NOP";
        return output;
      case 0xcc:
        output.opCode = "CALLZ";
        output.z80OPCode = "CALL Z";
        return output;
      case 0xcd:
        output.opCode = "CALL";
        output.z80OPCode = "CALL";
        return output;
      case 0xce:
        output.opCode = "ICXR";
        output.z80OPCode = "ADC";
        return output;
      case 0xcf:
        output.opCode = "RST1";
        output.z80OPCode = "RST08";
        return output;
      case 0xd0:
        output.opCode = "RETNC";
        output.z80OPCode = "RET NC";
        return output;
      case 0xd1:
        output.opCode = "POPR";
        output.z80OPCode = "POP";
        return output;
      case 0xd2:
        output.opCode = "JMPNP";
        output.z80OPCode = "JP NC";
        return output;
      case 0xd3:
        output.opCode = "HWOUT";
        output.z80OPCode = "OUT";
        return output;
      case 0xd4:
        output.opCode = "CALLNC";
        output.z80OPCode = "CALL NC";
        return output;
      case 0xd5:
        output.opCode = "PUSH";
        output.z80OPCode = "PUSH";
        return output;
      case 0xd6:
        output.opCode = "DCXR";
        output.z80OPCode = "SUB";
        return output;
      case 0xd7:
        output.opCode = "RST10";
        output.z80OPCode = "RST 10";
        return output;
      case 0xd8:
        output.opCode = "RETC";
        output.z80OPCode = "RET";
        return output;
      case 0xd9:
        output.opCode = "NOP";
        output.z80OPCode = "NOP";
        return output;
      case 0xda:
        output.opCode = "JMPC";
        output.z80OPCode = "JP";
        return output;
      case 0xdb:
        output.opCode = "HWIN";
        output.z80OPCode = "EXX";
        return output;
      case 0xdc:
        output.opCode = "CALLC";
        output.z80OPCode = "CP";
        return output;
      case 0xdd:
        output.opCode = "**";
        output.z80OPCode = "**";
        return output;
      case 0xde:
        output.opCode = "DEXR";
        output.z80OPCode = "SBC";
        return output;
      case 0xdf:
        output.opCode = "RST18";
        output.z80OPCode = "RST 18";
        return output;
      case 0xe0:
        output.opCode = "RETNP";
        output.z80OPCode = "RET";
        return output;
      case 0xe1:
        output.opCode = "POPR";
        output.z80OPCode = "POP";
        return output;
      case 0xe2:
        output.opCode = "JMPNP";
        output.z80OPCode = "JP PO";
        return output;
      case 0xe3:
        output.opCode = "XCHM";
        output.z80OPCode = "EX";
        return output;
      case 0xe4:
        output.opCode = "UKNOP";
        output.z80OPCode = "CALL";
        return output;
      case 0xe5:
        output.opCode = "PUSH";
        output.z80OPCode = "PUSH";
        return output;
      case 0xe6:
        output.opCode = "ANDR";
        output.z80OPCode = "AND";
        return output;
      case 0xe7:
        output.opCode = "RST20";
        output.z80OPCode = "RST 20";
        return output;
      case 0xe8:
        output.opCode = "RETP";
        output.z80OPCode = "RET";
        return output;
      case 0xe9:
        output.opCode = "JMP";
        output.z80OPCode = "JP";
        return output;
      case 0xea:
        output.opCode = "JMPP";
        output.z80OPCode = "JP";
        return output;
      case 0xeb:
        output.opCode = "XCHR";
        output.z80OPCode = "EX";
        return output;
      case 0xec:
        output.opCode = "UKNOP";
        output.z80OPCode = "CALL";
        return output;
      case 0xed:
        output.opCode = "NOP";
        output.z80OPCode = "UKNOP";
        return output;
      case 0xee:
        output.opCode = "XORR";
        output.z80OPCode = "XOR";
        return output;
      case 0xef:
        output.opCode = "RST28";
        output.z80OPCode = "RST 28";
        return output;
      case 0xf0:
        output.opCode = "UKNOP";
        output.z80OPCode = "RET";
        return output;
      case 0xf1:
        output.opCode = "POPR";
        output.z80OPCode = "POP";
        return output;
      case 0xf2:
        output.opCode = "JMPNS";
        output.z80OPCode = "JP";
        return output;
      case 0xf3:
        output.opCode = "DIF";
        output.z80OPCode = "DI";
        return output;
      case 0xf4:
        output.opCode = "CALLS";
        output.z80OPCode = "CALL";
        return output;
      case 0xf5:
        output.opCode = "PUSH";
        output.z80OPCode = "PUSH";
        return output;
      case 0xf6:
        output.opCode = "ORR";
        output.z80OPCode = "OR";
        return output;
      case 0xf7:
        output.opCode = "RST30";
        output.z80OPCode = "RST 30";
        return output;
      case 0xf8:
        output.opCode = "RETS";
        output.z80OPCode = "RET";
        return output;
      case 0xf9:
        output.opCode = "LD2R";
        output.z80OPCode = "LD";
        return output;
      case 0xfa:
        output.opCode = "JMPS";
        output.z80OPCode = "JP";
        return output;
      case 0xfb:
        output.opCode = "SIF";
        output.z80OPCode = "EI";
        return output;
      case 0xfc:
        output.opCode = "CALLS";
        output.z80OPCode = "CALL";
        return output;
      case 0xfd:
        output.opCode = "**";
        output.z80OPCode = "**";
        return output;
      case 0xfe:
        output.opCode = "DCXR";
        output.z80OPCode = "CP";
        return output;
      case 0xff:
        output.opCode = "RST38";
        output.z80OPCode = "RST 38";
        return output;
    }
  };
  this.parity_bits = [
    1,
    0,
    0,
    1,
    0,
    1,
    1,
    0,
    0,
    1,
    1,
    0,
    1,
    0,
    0,
    1,
    0,
    1,
    1,
    0,
    1,
    0,
    0,
    1,
    1,
    0,
    0,
    1,
    0,
    1,
    1,
    0,
    0,
    1,
    1,
    0,
    1,
    0,
    0,
    1,
    1,
    0,
    0,
    1,
    0,
    1,
    1,
    0,
    1,
    0,
    0,
    1,
    0,
    1,
    1,
    0,
    0,
    1,
    1,
    0,
    1,
    0,
    0,
    1,
    0,
    1,
    1,
    0,
    1,
    0,
    0,
    1,
    1,
    0,
    0,
    1,
    0,
    1,
    1,
    0,
    1,
    0,
    0,
    1,
    0,
    1,
    1,
    0,
    0,
    1,
    1,
    0,
    1,
    0,
    0,
    1,
    1,
    0,
    0,
    1,
    0,
    1,
    1,
    0,
    0,
    1,
    1,
    0,
    1,
    0,
    0,
    1,
    0,
    1,
    1,
    0,
    1,
    0,
    0,
    1,
    1,
    0,
    0,
    1,
    0,
    1,
    1,
    0,
    0,
    1,
    1,
    0,
    1,
    0,
    0,
    1,
    1,
    0,
    0,
    1,
    0,
    1,
    1,
    0,
    1,
    0,
    0,
    1,
    0,
    1,
    1,
    0,
    0,
    1,
    1,
    0,
    1,
    0,
    0,
    1,
    1,
    0,
    0,
    1,
    0,
    1,
    1,
    0,
    0,
    1,
    1,
    0,
    1,
    0,
    0,
    1,
    0,
    1,
    1,
    0,
    1,
    0,
    0,
    1,
    1,
    0,
    0,
    1,
    0,
    1,
    1,
    0,
    1,
    0,
    0,
    1,
    0,
    1,
    1,
    0,
    0,
    1,
    1,
    0,
    1,
    0,
    0,
    1,
    0,
    1,
    1,
    0,
    1,
    0,
    0,
    1,
    1,
    0,
    0,
    1,
    0,
    1,
    1,
    0,
    0,
    1,
    1,
    0,
    1,
    0,
    0,
    1,
    1,
    0,
    0,
    1,
    0,
    1,
    1,
    0,
    1,
    0,
    0,
    1,
    0,
    1,
    1,
    0,
    0,
    1,
    1,
    0,
    1,
    0,
    0,
    1,
  ];
  this.cycle_counts = [
    4,
    10,
    7,
    6,
    4,
    4,
    7,
    4,
    4,
    11,
    7,
    6,
    4,
    4,
    7,
    4,
    8,
    10,
    7,
    6,
    4,
    4,
    7,
    4,
    12,
    11,
    7,
    6,
    4,
    4,
    7,
    4,
    7,
    10,
    16,
    6,
    4,
    4,
    7,
    4,
    7,
    11,
    16,
    6,
    4,
    4,
    7,
    4,
    7,
    10,
    13,
    6,
    11,
    11,
    10,
    4,
    7,
    11,
    13,
    6,
    4,
    4,
    7,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    7,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    7,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    7,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    7,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    7,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    7,
    4,
    7,
    7,
    7,
    7,
    7,
    7,
    4,
    7,
    4,
    4,
    4,
    4,
    4,
    4,
    7,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    7,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    7,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    7,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    7,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    7,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    7,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    7,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    7,
    4,
    5,
    10,
    10,
    10,
    10,
    11,
    7,
    11,
    5,
    10,
    10,
    0,
    10,
    17,
    7,
    11,
    5,
    10,
    10,
    11,
    10,
    11,
    7,
    11,
    5,
    4,
    10,
    11,
    10,
    0,
    7,
    11,
    5,
    10,
    10,
    19,
    10,
    11,
    7,
    11,
    5,
    4,
    10,
    4,
    10,
    0,
    7,
    11,
    5,
    10,
    10,
    4,
    10,
    11,
    7,
    11,
    5,
    6,
    10,
    4,
    10,
    0,
    7,
    11,
  ];
  this.cycle_counts_ed = [
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    12,
    12,
    15,
    20,
    8,
    14,
    8,
    9,
    12,
    12,
    15,
    20,
    8,
    14,
    8,
    9,
    12,
    12,
    15,
    20,
    8,
    14,
    8,
    9,
    12,
    12,
    15,
    20,
    8,
    14,
    8,
    9,
    12,
    12,
    15,
    20,
    8,
    14,
    8,
    18,
    12,
    12,
    15,
    20,
    8,
    14,
    8,
    18,
    12,
    12,
    15,
    20,
    8,
    14,
    8,
    0,
    12,
    12,
    15,
    20,
    8,
    14,
    8,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    16,
    16,
    16,
    16,
    0,
    0,
    0,
    0,
    16,
    16,
    16,
    16,
    0,
    0,
    0,
    0,
    16,
    16,
    16,
    16,
    0,
    0,
    0,
    0,
    16,
    16,
    16,
    16,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
  ];
  this.cycle_counts_cb = [
    8,
    8,
    8,
    8,
    8,
    8,
    15,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    15,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    15,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    15,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    15,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    15,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    15,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    15,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    12,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    12,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    12,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    12,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    12,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    12,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    12,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    12,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    15,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    15,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    15,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    15,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    15,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    15,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    15,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    15,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    15,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    15,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    15,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    15,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    15,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    15,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    15,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    15,
    8,
  ];
  this.cycle_counts_dd = [
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    15,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    15,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    14,
    20,
    10,
    8,
    8,
    11,
    0,
    0,
    15,
    20,
    10,
    8,
    8,
    11,
    0,
    0,
    0,
    0,
    0,
    23,
    23,
    19,
    0,
    0,
    15,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    8,
    8,
    19,
    0,
    0,
    0,
    0,
    0,
    8,
    8,
    19,
    0,
    0,
    0,
    0,
    0,
    8,
    8,
    19,
    0,
    0,
    0,
    0,
    0,
    8,
    8,
    19,
    0,
    8,
    8,
    8,
    8,
    8,
    8,
    19,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    19,
    8,
    19,
    19,
    19,
    19,
    19,
    19,
    0,
    19,
    0,
    0,
    0,
    0,
    8,
    8,
    19,
    0,
    0,
    0,
    0,
    0,
    8,
    8,
    19,
    0,
    0,
    0,
    0,
    0,
    8,
    8,
    19,
    0,
    0,
    0,
    0,
    0,
    8,
    8,
    19,
    0,
    0,
    0,
    0,
    0,
    8,
    8,
    19,
    0,
    0,
    0,
    0,
    0,
    8,
    8,
    19,
    0,
    0,
    0,
    0,
    0,
    8,
    8,
    19,
    0,
    0,
    0,
    0,
    0,
    8,
    8,
    19,
    0,
    0,
    0,
    0,
    0,
    8,
    8,
    19,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    14,
    0,
    23,
    0,
    15,
    0,
    0,
    0,
    8,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    10,
    0,
    0,
    0,
    0,
    0,
    0,
  ];
}
