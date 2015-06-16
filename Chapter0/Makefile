
run: a.img
	qemu-system-i386 -fda $<

a.img: boot.bin
	dd if=$< of=$@ bs=512 count=1 conv=notrunc

boot.bin: boot.asm
	nasm $< -o $@

clean:
	rm *.bin
	rm *.img