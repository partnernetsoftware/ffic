#CC=gcc
CC=cc
all: 
	ls -al tccffi*
	echo "#define TCC_VERSION \"`head ../tinycc/VERSION`\"" > config.h
	${CC} -E tccffi.c -I. -I../tinycc/ -o tccffi.i
	#cc tccffi.c -I ../tinycc/ -o tccffi
	${CC} tccffi.i -o tccffi
	ls -al tccffi*
	cat 42.c | ./tccffi
	./tccffi 42.c

#
tcc:
	tcc -I. -I../tinycc/ -run -nostdlib tccffi.c 
#	tcc -nostdlib -E tccffi.c -I ../tinycc/ -o tccffi.i
pp:
	${CC} -E tccffi.c -I. -I../tinycc/ -o tccffi.i
run:
	./tccffi --help
