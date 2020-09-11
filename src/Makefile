#CC=cc
#CC=gcc
#CC=gcc -O1 -I ../tinyccbinary/
#CC=tcc
CC=./bin/tcc
#CC=../tinyccbinary/x86_64-osx-tcc
#CC=../tinyccbinary/tcc

all:
	make tcc_osx # the tcc build at osx with default cc
	make bin_ffic_osx # bin of ffic for osx 64
	make bin_ffic_win # bin of ffic for win 32/64
	#make bin_ffic_lnx # linux
	
tcc-reset:
	git -C ../tinycc/ reset --hard
	git -C ../tinycc/ pull

bin_ffic_osx:
	#../tcc_osx/x86_64-osx-tcc -B../tcc_osx -DTCC_TARGET_X86_64 -DTCC_TARGET_MACHO -DCONFIG_TCCDIR="\".\"" -DTCC_LIBTCC1="\"x86_64-osx-libtcc1.a\"" -I../tinycc -I. -DONE_SOURCE=1 ffic.c -o ../bin/ffic64.osx
	../tcc_osx/tcc -B../tcc_osx -DTCC_TARGET_X86_64 -DTCC_TARGET_MACHO -DCONFIG_TCCDIR="\".\"" -DTCC_LIBTCC1="\"x86_64-osx-libtcc1.a\"" -I../tinycc -I. -DONE_SOURCE=1 ffic.c -o ../bin/ffic64.osx
	cp ../tcc_osx/x86_64-osx-libtcc1.a ./
	../bin/ffic64.osx tests/env.c

bin_ffic_lnx:
	#../tcc_osx/x86_64-tcc -B../tcc_osx -I `xcrun --show-sdk-path`/usr/include -I ../tinycc/include -DTCC_TARGET_X86_64 -DCONFIG_TCCDIR="\".\"" -DTCC_LIBTCC1="\"x86_64-libtcc1.a\"" -I../tinycc -I. -DONE_SOURCE=1 ffic.c -o ../bin/ffic64.lnx
	../tcc_osx/x86_64-tcc -B../tcc_osx -I ../tinycc/include -I ../tinycc/win32/include -DTCC_TARGET_X86_64 -DCONFIG_TCCDIR="\".\"" -DTCC_LIBTCC1="\"x86_64-libtcc1.a\"" -I../tinycc -I. -DONE_SOURCE=1 ffic.c -o ../bin/ffic64.lnx
	../bin/ffic64.lnx tests/env.c

# TODO
#../tcc_osx/x86_64-osx-tcc -DTCC_TARGET_X86_64 -DTCC_TARGET_MACHO -D__APPLE__ -DCONFIG_TCCDIR="\".\"" -DTCC_LIBTCC1="\"x86_64-osx-libtcc1.a\"" -I../tinycc -I. -DONE_SOURCE=1 -E ffic.c | sed 's/^#.*//g' | sed "/^\\s*$$/d" > ffic_static_osx.i
#../tcc_osx/x86_64-osx-tcc -DTCC_TARGET_X86_64 -DTCC_TARGET_MACHO -D__APPLE__ -DTCC_LIBTCC1="\"x86_64-osx-libtcc1.a\"" -I../tinycc -I. -DONE_SOURCE=1 -E ffic.c | sed 's/^#.*//g' | sed "/^\\s*$$/d" > ffic_static_osx2.i
#../tcc_osx/x86_64-osx-tcc -DTCC_TARGET_X86_64 -DTCC_TARGET_MACHO -DCONFIG_TCCDIR="\".\"" -DTCC_LIBTCC1="\"x86_64-osx-libtcc1.a\"" -L. ffic_static_osx.i -o ffic_static_osx
#../tcc_osx/tcc -DTCC_TARGET_X86_64 -DTCC_TARGET_MACHO -DCONFIG_TCCDIR="\".\"" -DTCC_LIBTCC1="\"x86_64-osx-libtcc1.a\"" -L. ffic.osx.i -o ffic_osx_tcc

tcc_tcc_osx:# build tcc from tcc_osx
	# build from tcc_osx
	#mkdir -p ../bin/
	cp ../tcc_osx/x86_64-osx-libtcc1.a ../bin/
	#ffic todo fix ffic.c to get path of executable...:
	cp ../tcc_osx/x86_64-osx-libtcc1.a ./
	../tcc_osx/x86_64-osx-tcc -B../bin -DTCC_TARGET_X86_64 -DTCC_TARGET_MACHO -DCONFIG_TCCDIR="\".\"" -DTCC_LIBTCC1="\"x86_64-osx-libtcc1.a\"" -I../tinycc -I. -DONE_SOURCE=1 ../tinycc/tcc.c -o ../bin/tcc64tcc.osx.1
	../bin/tcc64tcc.osx.1 -run tests/env.c
	../bin/tcc64tcc.osx.1 -B../bin tests/env.c -o tests/env.osx.1
	./tests/env.osx.1
	../bin/tcc64tcc.osx.1 -I `xcrun --show-sdk-path`/usr/include -I ../tinycc/include -I . -DTCC_TARGET_X86_64 -DTCC_TARGET_MACHO -DCONFIG_TCCDIR="\".\"" -DTCC_LIBTCC1="\"x86_64-osx-libtcc1.a\"" -I ../tinycc -DONE_SOURCE=1 ../tinycc/tcc.c -B ../bin -o ../bin/tcc64tcc.osx
	../bin/tcc64tcc.osx -I `xcrun --show-sdk-path`/usr/include -I ../tinycc/include -I . -DTCC_TARGET_X86_64 -DTCC_TARGET_MACHO -DCONFIG_TCCDIR="\".\"" -DTCC_LIBTCC1="\"x86_64-osx-libtcc1.a\"" -I ../tinycc -DONE_SOURCE=1 -B ../bin ffic.c -o ../bin/ffic64.osx
	../bin/tcc64tcc.osx.2 -B../bin tests/env.c -o tests/env.osx.2
	./tests/env.osx.2
	ls -al ../bin/

tcc_osx:#with system cc
	echo "#define TCC_VERSION \"`head ../tinycc/VERSION`\"" > config.h
	echo "#ifndef CONFIG_TCCDIR" >> config.h
	echo "#define CONFIG_TCCDIR \".\"" >> config.h
	echo "#endif" >> config.h
	rm -rf ../tcc_osx && mkdir -p ../tcc_osx && cd ../tcc_osx && ../tinycc/configure && rm -f ../tinycc/config.h && cp -f ../src/config.h ./ && make && make libtcc.osx && make cross && cp -f *tcc1.a ../bin/
	../tcc_osx/x86_64-osx-tcc -vv
submodule:
	#cd .. && git submodule add --force https://github.com/mirror/tinycc.git && git submodule update --init --recursive
	cd .. && git submodule init && git submodule update
test-osx:
	cat tests/42.c | ./ffic_static_osx
	./ffic_static_osx tests/42.c
	cat tests/42.c | ./ffic_osx
	./ffic_osx tests/42.c
###osx_lab:
###	mkdir -p ../bin/
###	gcc -DTCC_TARGET_X86_64 -DTCC_TARGET_MACHO -E ffic.c -I. | sed 's/^#.*//g' | sed "/^$$/d" > ffic_osx.i
###	gcc -DTCC_TARGET_X86_64 -DTCC_TARGET_MACHO -DCONFIG_TCCDIR="\".\"" -DTCC_LIBTCC1="\"x86_64-osx-libtcc1.a\"" -I../tinycc -I. -DONE_SOURCE=1 -E ffic.c | sed 's/^#.*//g' | sed "/^$$/d" > ffic_static_osx.i
###	gcc -DTCC_TARGET_X86_64 -DTCC_TARGET_MACHO -DCONFIG_TCCDIR="\".\"" -DTCC_LIBTCC1="\"x86_64-osx-libtcc1.a\"" -L. -B../bin ffic_osx.i -o ../bin/ffic_osx
###	gcc ffic_static_osx.i -o ../bin/ffic_static_osx
###	ls -al ../bin/

###osx:
###	echo "#define TCC_VERSION \"`head ../tinycc/VERSION`\"" > config.h
###	${CC} -E ffic.c -I. -I../tinycc/ | sed 's/^#.*//g' | sed "/^$$/d" > ffic_osx.i
###	${CC} -DTCC_TARGET_X86_64 -DTCC_TARGET_MACHO -E ffic.c -I. | sed 's/^#.*//g' | sed "/^$$/d" > ffic_osx.i
###	#gcc -O1 -DTCC_TARGET_X86_64 -DTCC_TARGET_MACHO -DCONFIG_TCCDIR="\".\"" -DTCC_LIBTCC1="\"x86_64-osx-libtcc1.a\"" -L. -Wl,-dead_strip ffic_osx.i -ldl -ltcc -o ffic_osx
###	gcc -O1 -DTCC_TARGET_X86_64 -DTCC_TARGET_MACHO -DCONFIG_TCCDIR="\".\"" -DTCC_LIBTCC1="\"x86_64-osx-libtcc1.a\"" -L. -Wl,-dead_strip ffic_osx.i -ldl -ltcc -o ffic_osx
###	${CC} -DTCC_TARGET_X86_64 -DTCC_TARGET_MACHO -DCONFIG_TCCDIR="\".\"" -DTCC_LIBTCC1="\"x86_64-osx-libtcc1.a\"" -L. -I../tinycc -I. -DONE_SOURCE=1 -E ffic.c > ffic_static_osx.i
###	${CC} ffic_static_osx.i -o ffic_static_osx
###	#gcc -O1 -DTCC_TARGET_X86_64 -DTCC_TARGET_MACHO -DCONFIG_TCCDIR="\".\"" -DTCC_LIBTCC1="\"x86_64-osx-libtcc1.a\"" -L. -Wl,-dead_strip ffic.osx.i -ldl -ltcc -o ffic_osx
###	#gcc -DTCC_TARGET_X86_64 -DTCC_TARGET_MACHO -DCONFIG_TCCDIR="\".\"" -DTCC_LIBTCC1="\"x86_64-osx-libtcc1.a\"" -I../tinycc -I. -DONE_SOURCE=1 -E ffic.c > ffic_static_osx_gcc.i
###	#gcc -Wl,-dead_strip ffic_static_osx_gcc.i -o ffic_static_osx_gcc
###	#tools/upx -f -o ffic_static_osx_gcc_upx ffic_static_osx_gcc
###	ls -al ffic*
###	make test-osx
bin_ffic_win:#build from osx...
	#cp ../tcc_osx/*-win32-libtcc1.a ../bin/
	sh tccwin32.sh -DONE_SOURCE=1 -I. ../tinycc/tcc.c -o ../bin/tcc32.exe
	sh tccwin64.sh -DONE_SOURCE=1 -I. ../tinycc/tcc.c -o ../bin/tcc64.exe
	sh tccwin32.sh ffic.c -o ../bin/ffic32s.exe
	sh tccwin64.sh ffic.c -o ../bin/ffic64s.exe
	sh tccwin32.sh -DONE_SOURCE=1 -I. ffic.c -o ../bin/ffic32.exe
	sh tccwin64.sh -DONE_SOURCE=1 -I. ffic.c -o ../bin/ffic64.exe
	tools/upx -f -o ../bin/ffic32upx.exe ../bin/ffic32.exe
	tools/upx -f -o ../bin/ffic64upx.exe ../bin/ffic64.exe
	ls -al ../bin/*.exe
	#../tcc_osx/i386-win32-tcc -DTCC_TARGET_PE -DTCC_TARGET_I386 -D_WIN32 -B../bin -L ../tinycc/win32/lib -L../bin tests/env.c -o tests/env.exe
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

