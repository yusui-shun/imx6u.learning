led.bin : led.s
	arm-linux-gnueabihf-gcc -g -c led.s -o led.o 
	arm-linux-gnueabihf-ld -Ttext 0x87800000 led.o -o led.elf 
	arm-linux-gnueabihf-objcopy -O binary -S -g led.elf led.bin
	arm-linux-gnueabihf-objdump -D led.elf > led.dis
clean:
	rm -f *.o led.bin led.elf led.dis