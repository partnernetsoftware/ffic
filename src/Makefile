#CC=cc
#CC=gcc
#CC=gcc -O1 -I ../tinyccbinary/
#CC=tcc
CC=tcc_osx/tcc
#CC=../tinyccbinary/x86_64-osx-tcc
#CC=../tinyccbinary/tcc

all:
	make tcc-osx
	make osx
	make win
tcc-reset:
	git -C ../tinycc/ reset --hard
	git -C ../tinycc/ pull
tcc-osx:
	#mkdir -p tcc_osx && cd tcc_osx && ../../tinycc/configure && make clean && sleep 1 && make tcc && make libtcc.osx && ../../tinycc/configure --cc=./tcc && make && make cross-x86_64-osx cross-x86_64-win32 cross-i386-win32 && sleep 1
	rm -f *.a
	mkdir -p tcc_osx && cd tcc_osx && ../../tinycc/configure && make clean && sleep 1 && make tcc && make libtcc.osx && ../../tinycc/configure --cc=./tcc && make && make cross && sleep 1
	cp tcc_osx/libtcc.dylib ./
	#cp tcc_osx/x86_64-osx-libtcc1.a ./
	cp tcc_osx/*-win32-libtcc1.a ./
	#cp tcc_osx/*-libtcc1.a ./
submodule:
	#cd .. && git submodule add --force https://github.com/mirror/tinycc.git && git submodule update --init --recursive
	cd .. && git submodule init && git submodule update
test-osx:
	cat tests/42.c | ./ffic_osx
	./ffic_osx tests/42.c
	cat tests/42.c | ./ffic_static_osx
	./ffic_static_osx tests/42.c
osx:
	echo "#define TCC_VERSION \"`head ../tinycc/VERSION`\"" > config.h
	${CC} -E ffic.c -I. -I../tinycc/ | sed 's/^#.*//g' | sed "/^$$/d" > ffic.osx.i
	${CC} -DTCC_TARGET_X86_64 -DTCC_TARGET_MACHO -E ffic.c -I. | sed 's/^#.*//g' | sed "/^$$/d" > ffic.osx.i
	gcc -O1 -DTCC_TARGET_X86_64 -DTCC_TARGET_MACHO -DCONFIG_TCCDIR="\".\"" -DTCC_LIBTCC1="\"x86_64-osx-libtcc1.a\"" -L. -Wl,-dead_strip ffic.osx.i -ldl -ltcc -o ffic_osx
	${CC} -DTCC_TARGET_X86_64 -DTCC_TARGET_MACHO -DCONFIG_TCCDIR="\".\"" -DTCC_LIBTCC1="\"x86_64-osx-libtcc1.a\"" -L. -I../tinycc -I. -DONE_SOURCE=1 -E ffic.c > ffic_static_osx.i
	${CC} ffic_static_osx.i -o ffic_static_osx
	#gcc -DTCC_TARGET_X86_64 -DTCC_TARGET_MACHO -DCONFIG_TCCDIR="\".\"" -DTCC_LIBTCC1="\"x86_64-osx-libtcc1.a\"" -I../tinycc -I. -DONE_SOURCE=1 -E ffic.c > ffic_static_osx_gcc.i
	#gcc -Wl,-dead_strip ffic_static_osx_gcc.i -o ffic_static_osx_gcc
	tools/upx -f -o ffic_static_osx_gcc_upx ffic_static_osx_gcc
	ls -al ffic*
	make test-osx
win:#build from osx...
	cp tcc_osx/*-win32-libtcc1.a ./
	rm -f ffic*.exe
	sh tccwin32.sh -DONE_SOURCE=1 -I. ../tinycc/tcc.c -o tcc32.exe
	sh tccwin64.sh -DONE_SOURCE=1 -I. ../tinycc/tcc.c -o tcc64.exe
	sh tccwin32.sh ffic.c -o ffic32.exe
	sh tccwin64.sh ffic.c -o ffic64.exe
	sh tccwin32.sh -DONE_SOURCE=1 -I. ffic.c -o ffic_static_32.exe
	sh tccwin64.sh -DONE_SOURCE=1 -I. ffic.c -o ffic_static_64.exe
	tools/upx -f -o ffic_static_upx_32.exe ffic_static_32.exe
	tools/upx -f -o ffic_static_upx_64.exe ffic_static_64.exe
	ls -al *.exe
test:
	cat tests/42.c | ./ffic
	./ffic tests/42.c
	cat tests/42.c | ./ffic_static_osx
	./ffic_static_osx tests/42.c
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
	tools/upx sao_osx -osao_osx_upx
	make test_sao_osx
	ls -al sao*
play:
	cat play.sao | ./ffic sao.c d


#TCC_X = i386 x86_64 i386-win32 x86_64-win32 x86_64-osx arm arm64 arm-wince c67
#TCC_X += riscv64
# TCC_X += arm-fpa arm-fpa-ld arm-vfp arm-eabi
