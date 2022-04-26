first: first.S
	arm-linux-gcc -g -c -o first.o first.S
	arm-linux-ld -Ttext 0x00000000 -g first.o -o first_elf
	arm-linux-objcopy -O binary -S first_elf first.bin

clean:
	rm -f first
	rm -f first.o
	rm -f first_elf