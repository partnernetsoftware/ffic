#CC=gcc
CC=cc
all: 
	ls -al tccffi*
	${CC} -E tccffi.c -I ../../tinycc/ -o tccffi.i
	#cc tccffi.c -I ../../tinycc/ -o tccffi
	${CC} tccffi.i -o tccffi
	ls -al tccffi*
	cat 42.c | ./tccffi
tcc:
	tcc -nostdinc -E tccffi.c -I ../../tinycc/ -o tccffi.i
pp:
	${CC} -E tccffi.c -I ../../tinycc/ -o tccffi.i
run:
	./tccffi --help
