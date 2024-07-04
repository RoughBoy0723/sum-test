#Makefile

all: sum-test

sum-test: main.o sum.o
	gcc -o sum-test main.o sum.o

main.o: sum.h main.cpp
	gcc -c -o main.o main.cpp

sum.o: sum.h sum.cpp
	gcc -c -o sum.o sum.cpp

clean:
	rm -f sum-test
	rm -f *.o
