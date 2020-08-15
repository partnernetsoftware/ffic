#CC=cc
#CC=gcc
CC=gcc -O1 -I ../tinycc/
#CC=tcc
default: 
	#cd .. && git submodule init && git submodule update
	#git submodule update --init --recursive
	ls -al ffic*
	#echo "#define TCC_VERSION \"`head ../tinycc/VERSION`\"" > config.h
	make pp
	#cc ffic.c -I ../tinycc/ -o ffic
	${CC} ffic.pp.c -L. -ldl -ltcc -o ffic
	make tcc -C ../tinycc/
	../tinycc/tcc -I ../tinycc -DONE_SOURCE=1 ffic.c -o ffic_static
	ls -al ffic*
	make test
osx:
	make libtcc.osx -C ../tinycc/
	#make libtcc.a -C ../tinycc/
	mv ../tinycc/libtcc.dylib ./
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
	cat tests/42.c | ./ffic_static
	./ffic_static tests/42.c
#
tcc:
	tcc -I. -I../tinycc/ -run -nostdlib ffic.c 
	#tcc -nostdlib -E ffic.c -I ../tinycc/ -o ffic.pp.c
pp:
	${CC} -E ffic.c -I. -I../tinycc/ -o ffic.pp.c
	#${CC} -E ffic.c -I. -I../tinycc/ | sed 's/^#.*//g' > ffic.pp.c
	${CC} -E ffic.c -I. -I../tinycc/ | sed 's/^#.*//g' | sed "/^$$/d" > ffic.pp.c
clean:
	rm -f *.o
##################################################### lab for sao

pp_sao:
	${CC} -E sao.c | sed 's/^#.*//g' | sed "/^$$/d" > sao.osx.pp.c
	${CC} -E -DTCC_TARGET_PE -DTCC_TARGET_I386 -D_WIN32 sao.c | sed 's/^#.*//g' | sed "/^$$/d" > sao.win32.pp.c
	${CC} -E -DTCC_TARGET_PE -DTCC_TARGET_I386 -D_WIN32 -D_WIN64 sao.c | sed 's/^#.*//g' | sed "/^$$/d" > sao.win64.pp.c
run_sao:
	make osx_sao
	cat tests/test.sao | ./ffic sao.c
test_sao_osx:
	./sao_osx h v
	#echo $$(($$(gdate +'%s * 1000 + %-N / 1000000'))) && cat tests/fib.sl | ./sao_osx l d p -
	echo $$(($$(gdate +'%s * 1000 + %-N / 1000000'))) && cat tests/test.sao | ./sao_osx d - && echo $$(($$(gdate +'%s * 1000 + %-N / 1000000'))) 
osx_sao:
	rm -f sao_osx
	rm -f sao_osx_upx
	make pp_sao
	${CC} sao.osx.pp.c -L. -o sao_osx
	upx sao_osx -osao_osx_upx
	#./upx_osx ./sao_osx
	make test_sao_osx
	ls -al sao*
play:
	cat play.sao | ./ffic sao.c d

