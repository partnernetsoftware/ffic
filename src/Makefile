#CC=cc
CC=gcc
all: 
	#cd .. && git submodule init && git submodule update
	git submodule update --init --recursive
	ls -al tccffi*
	#echo "#define TCC_VERSION \"`head ../tinycc/VERSION`\"" > config.h
	make pp
	#cc tccffi.c -I ../tinycc/ -o tccffi
	${CC} tccffi.i -L. -ltcc -o tccffi
	ls -al tccffi*
	make test
osx:
	make libtcc.dylib -C ../tinycc/
	cp ../tinycc/libtcc.dylib ./
	make all
lnx:
	make libtcc.so -C ../tinycc/
	cp ../tinycc/libtcc.so ./
	make all
test:
	cat 42.c | ./tccffi
	./tccffi 42.c
#
tcc:
	tcc -I. -I../tinycc/ -run -nostdlib tccffi.c 
	#tcc -nostdlib -E tccffi.c -I ../tinycc/ -o tccffi.i
pp:
	${CC} -E tccffi.c -I. -I../tinycc/ -o tccffi.i
