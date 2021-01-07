ipl.bin : ipl.asm Makefile
	nasm ipl.asm -o ipl.bin -l ipl.list

#helloos.img : ipl.bin tail.bin Makefile
helloos.img : ipl.bin Makefile
	#cat ipl.bin tail.bin > helloos.img
	cat ipl.bin > helloos.img

asm :
	make -r ipl.bin

img :
	make -r helloos.img