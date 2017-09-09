as write_helloworld.s -o hello_asm.o
ld hello_asm.o -e _main -lc -o hello_world_asm
