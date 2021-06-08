# -*- Makefile -*-
all: calc shout clean

calc: main.o calc.o
	gcc main.o calc.o -o calc

main.o: main.c
	gcc -c main.c

calc.o: calc.c
	gcc -c calc.c

shout: shout.o calc.o
	gcc shout.o calc.o -o shout

shout.o: shout.c
	gcc -c shout.c

clean:
	rm *.o
