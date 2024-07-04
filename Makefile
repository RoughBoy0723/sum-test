#Makefile

all: sum_test

sum_test: main.o sum.o
	gcc -o sum-test main.o sum.o

main.o: sum.h main.cpp
	gcc -c -o main.o main.cpp

sum.o: sum.h sum.cpp
	gcc -c -o sum.o sum.cp

clean:
	rm -f sum_test
	rm -f *.o
