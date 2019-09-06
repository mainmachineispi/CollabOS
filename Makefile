all:
	mkdir bin
	nasm -f bin main.asm -o bin/collabos.bin
	
winclean:
	rd /S /Q bin
	
test:
	qemu-system-i386 bin/collabos.bin

clean:
	rm -rf bin
