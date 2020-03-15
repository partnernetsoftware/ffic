#CC=gcc
CC=cc
all: 
	ls -al tccffi*
	${CC} -E tccffi.c -I ../../tinycc/ -o tccffi.i
	#cc tccffi.c -I ../../tinycc/ -o tccffi
	${CC} tccffi.i -o tccffi
	ls -al tccffi*
	cat 42.c | ./tccffi
	./tccffi 42.c

#
tcc:
	tcc -I ../../tinycc/ -run -nostdlib tccffi.c 
#	tcc -nostdlib -E tccffi.c -I ../../tinycc/ -o tccffi.i
pp:
	${CC} -E tccffi.c -I ../../tinycc/ -o tccffi.i
run:
	./tccffi --help
