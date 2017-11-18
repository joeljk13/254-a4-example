.PHONY: all clean

all:
	gcc -static -g3 -O3 foo.c bar.c
	objdump -Sd a.out >OBJDUMP_WITH_S_FLAG.txt
	objdump -d a.out >OBJDUMP.txt
	dwarfdump a.out >DWARFDUMP.txt
	gcc -g3 -o test1 test1.c
	gcc -g3 -o test2 test2.c
	gcc -g3 -o test3 test3.c
	gcc -g3 -o test4-1 test4-1.c
	gcc -g3 -o test4-2 test4-2.c
	gcc -g3 -o test5 test56.c
	gcc -g3 -O2 -o test6 test56.c
	gcc -g3 -O2 -o test7 test7-1.c test7-2.c
	gcc -g3 -O2 -o test8 test8-1.c test8-2.c

clean:
	rm -f a.out test[1-8] test4-[12] DWARFDUMP.txt OBJDUMP*.txt
