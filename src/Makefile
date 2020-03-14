#CC=gcc
CC=cc
all: 
	ls -al tccrun*
	${CC} -E tccrun.c -I ../../tinycc/ -o tccrun.i
	#cc tccrun.c -I ../../tinycc/ -o tccrun
	${CC} tccrun.i -o tccrun
	ls -al tccrun*
	cat 42.c | ./tccrun
pp:
	${CC} -E tccrun.c -I ../../tinycc/ -o tccrun.i
run:
	./tccrun --help
