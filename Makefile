.PHONY: all clean

all:
	gcc -g3 -O3 foo.c bar.c
	objdump -Sd a.out >OBJDUMP_WITH_S_FLAG.txt
	objdump -d a.out >OBJDUMP.txt
	dwarfdump a.out >DWARFDUMP.txt
	gcc -g3 -o test1 test1.c
	gcc -g3 -o test2 test2.c
	gcc -g3 -o test3 test3.c
	gcc -g3 -o test4 test4.c
	gcc -g3 -o test5 test5.c

clean:
	rm -f a.out test[12345]
