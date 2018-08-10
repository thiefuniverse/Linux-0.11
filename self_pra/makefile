all:	
	as --32 -o bootsect.o bootsect.s
	ld -m elf_i386 -Ttext 0 -o bootsect bootsect.o
	objcopy -R .pdr -R .comment -R.note -S -O binary bootsect
	dd if=./bootsect bs=512 count=1 of=ThiefImage
run:
	qemu-system-i386 -fda ThiefImage
clean:
	rm -rf bootsect.o bootsect ThiefImage
