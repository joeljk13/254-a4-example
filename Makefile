.PHONY: all clean

all:
	gcc -g3 -o test1 test1.c
	gcc -g3 -o test2 test2.c
	gcc -g3 -o test3 test3.c
	gcc -g3 -o test4-1 test4-1.c
	gcc -g3 -o test4-2 test4-2.c
	gcc -g3 -o test5 test56.c
	gcc -g3 -O2 -o test6 test56.c
	gcc -g3 -O2 -o test7 test7-1.c test7-2.c
	gcc -g3 -O2 -o test8 test8-1.c test8-2.c
	gcc -static -g3 -O3 -o test9 test9-1.c test9-2.c
	for a in $$(seq 1 3) 4-1 4-2 $$(seq 5 9); do objdump -Sd test$$a >OBJDUMP_WITH_S_FLAG-$$a.txt; objdump -d test$$a >OBJDUMP-$$a.txt; dwarfdump test$$a >DWARFDUMP-$$a.txt; done

clean:
	rm -f a.out test[1-9] test4-[12] DWARFDUMP*.txt OBJDUMP*.txt
