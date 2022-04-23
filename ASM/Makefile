OBJS = $(shell find code/ -name '*.s' | sed "s/code/build/" | sed "s/\.s/.o/")
RAM_OBJS = build/wram.o

all: pc1000bios.bin

build/wram.o: include/wram.s
	wla-z80 -o $@ $<

build/%.o: code/%.s
	wla-z80 -o $@ $<

pc1000bios.bin: $(OBJS) $(RAM_OBJS)
	wlalink -S linkfile $@
