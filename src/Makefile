#CC=cc
CC=gcc
default: 
	#cd .. && git submodule init && git submodule update
	#git submodule update --init --recursive
	ls -al ffic*
	#echo "#define TCC_VERSION \"`head ../tinycc/VERSION`\"" > config.h
	make pp
	#cc ffic.c -I ../tinycc/ -o ffic
	${CC} ffic.pp.i -L. -ltcc -o ffic
	ls -al ffic*
	make test
osx:
	make libtcc.dylib -C ../tinycc/
	cp ../tinycc/libtcc.dylib ./
	make default
	cp ffic ffic_osx
	./ffic_osx tests/fib.c 5
lnx:
	make libtcc.so -C ../tinycc/
	cp ../tinycc/libtcc.so ./
	make default
	cp ffic ffic_lnx
test:
	cat tests/42.c | ./ffic
	./ffic tests/42.c
#
tcc:
	tcc -I. -I../tinycc/ -run -nostdlib ffic.c 
	#tcc -nostdlib -E ffic.c -I ../tinycc/ -o ffic.i
pp:
	${CC} -E ffic.c -I. -I../tinycc/ -o ffic.i
	#${CC} -E ffic.c -I. -I../tinycc/ | sed 's/^#.*//g' > ffic.pp.i
	${CC} -E ffic.c -I. -I../tinycc/ | sed 's/^#.*//g' | sed "/^$$/d" > ffic.pp.i
clean:
	rm -f *.o
##################################################### lab for sao

run_sao:
	make osx_sao
	cat test.sao | ./ffic sao.c
test_sao_osx:
	echo $$(($$(gdate +'%s * 1000 + %-N / 1000000'))) && cat test.sao | ./sao_osx -i -p
osx_sao:
	rm -f sao_osx
	${CC} -E sao.c | sed 's/^#.*//g' | sed "/^$$/d" > sao.osx.pp.i
	${CC} sao.osx.pp.i -L. -o sao_osx
	#./upx_osx ./sao_osx
	ls -al sao*
	make test_sao_osx

