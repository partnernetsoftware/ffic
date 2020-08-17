#CC=cc
#CC=gcc
CC=gcc -O1 -I ../tinycc/
#CC=tcc
#CC=../tinycc/x86_64-osx-tcc
#CC=../tinycc/tcc
tcc:
	# using current tcc (gcc)
	cd ../tinycc/ && make clean && sleep 1 && ./configure && make && make libtcc.osx && ./configure --cc=./tcc && make && make cross-x86_64-osx
	# when tcc is fixed for .dylib:
	#cd ../tinycc/ && make clean && sleep 1 && ./configure && make tcc && ./configure --cc=./tcc && make libtcc.osx && make cross-x86_64-osx && make
osx:
	cp ../tinycc/libtcc.dylib ./
	cp ../tinycc/x86_64-osx-libtcc1.a ./
	#git submodule update --init --recursive
	#cd .. && git submodule init && git submodule update
	#echo "#define TCC_VERSION \"`head ../tinycc/VERSION`\"" > config.h
	#make tcc
	#cd ../tinycc/ && make clean && ./configure && make && make libtcc.osx && ./configure --cc=./tcc && make && make cross-x86_64-osx
	#${CC} -E ffic.c -I. -I../tinycc/ | sed 's/^#.*//g' | sed "/^$$/d" > ffic_osx.pp.c
	../tinycc/tcc -DTCC_TARGET_X86_64 -DTCC_TARGET_MACHO -E ffic.c -I. -I../tinycc/ | sed 's/^#.*//g' | sed "/^$$/d" > ffic_osx.pp.c
	#${CC} ffic_osx.pp.c -L. -ldl -ltcc -o ffic_osx
	#${CC} -DCONFIG_TCCDIR="\".\"" -DTCC_LIBTCC1="\"x86_64-osx-libtcc1.a\"" -L. ffic_osx.pp.c -ldl -ltcc -o ffic_osx
	#../tinycc/tcc -DTCC_TARGET_X86_64 -DTCC_TARGET_MACHO -DCONFIG_TCCDIR="\".\"" -DTCC_LIBTCC1="\"x86_64-osx-libtcc1.a\"" -L. ffic_osx.pp.c -ldl -ltcc -o ffic_osx
	gcc -O1 -I ../tinycc/ -DTCC_TARGET_X86_64 -DTCC_TARGET_MACHO -DCONFIG_TCCDIR="\".\"" -DTCC_LIBTCC1="\"x86_64-osx-libtcc1.a\"" -L. ffic_osx.pp.c -ldl -ltcc -o ffic_osx
	#../tinycc/tcc -DTCC_TARGET_X86_64 -DTCC_TARGET_MACHO -DCONFIG_TCCDIR="\".\"" -DTCC_LIBTCC1="\"x86_64-osx-libtcc1.a\"" -L. ffic_osx.pp.c -ldl -ltcc -o ffic_osx
	#${CC} -DCONFIG_TCCDIR="\".\"" -DTCC_LIBTCC1="\"x86_64-osx-libtcc1.a\"" -L. -I ../tinycc -DONE_SOURCE=1 ffic.c -o ffic_static_osx
	../tinycc/tcc -DTCC_TARGET_X86_64 -DTCC_TARGET_MACHO -DCONFIG_TCCDIR="\".\"" -DTCC_LIBTCC1="\"x86_64-osx-libtcc1.a\"" -L. -I ../tinycc -DONE_SOURCE=1 ffic.c -o ffic_static_osx
	ls -al ffic*
	cat tests/42.c | ./ffic_osx
	./ffic_osx tests/42.c
	cat tests/42.c | ./ffic_static_osx
	./ffic_static_osx tests/42.c
	./ffic_osx tests/fib.c 5
lnx:
	cd ../tinycc/ && make clean && sleep 1 && ./configure && make && make libtcc.so && ./configure --cc=./tcc && make && make cross-x86_64
	cp ../tinycc/libtcc.so ./
	cp ../tinycc/x86_64-libtcc1.a ./
test:
	cat tests/42.c | ./ffic
	./ffic tests/42.c
	cat tests/42.c | ./ffic_static_osx
	./ffic_static_osx tests/42.c
pp:
	#${CC} -E ffic.c -I. -I../tinycc/ -o ffic.pp.c
	##${CC} -E ffic.c -I. -I../tinycc/ | sed 's/^#.*//g' > ffic.pp.c
	${CC} -E ffic.c -I. -I../tinycc/ | sed 's/^#.*//g' | sed "/^$$/d" > ffic.pp.c
clean:
	rm -f *.o
##################################################### lab for sao

###$(X)%.i : %.c $(LIBTCC_INC)
###	$S$(CC) -E $< $(DEFINES) $(CFLAGS) | sed 's/^#.*//g' | sed "/^$$/d" > $@

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


#TCC_X = i386 x86_64 i386-win32 x86_64-win32 x86_64-osx arm arm64 arm-wince c67
#TCC_X += riscv64
# TCC_X += arm-fpa arm-fpa-ld arm-vfp arm-eabi
