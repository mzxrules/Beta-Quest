CC=mips64-gcc
LD=mips64-ld
OBJDUMP=mips64-objdump
CFLAGS=-march=vr4300 -mabi=32 -O0 -mno-check-zero-division -mno-gpopt -mexplicit-relocs

output_dir=../build

makeall: rand.z64 loader.z64

rand.z64: rand.o
	$(LD) -T rand.ld -emit-relocs -o ${output_dir}/$@ ${output_dir}/$?

rand.o: rand.sx
	$(CC) -c $(CFLAGS) $? -o ${output_dir}/$@

loader.z64: loader.o
	$(LD) -T loader.ld -o ${output_dir}/$@ ${output_dir}/$?

loader.o: loader.sx
	$(CC) -c $(CFLAGS) $? -o ${output_dir}/$@
