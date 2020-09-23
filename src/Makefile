CC=../bin/tcc

all:
	make tcc_osx # the tcc build at osx with default cc
	make bin_ffic_osx # bin of ffic for osx 64
	make bin_ffic_win # bin of ffic for win 32/64
	make bin_ffic_lnx # linux
	
tcc-reset:
	git -C ../tinycc/ reset --hard
	git -C ../tinycc/ pull

bin_ffic_osx:
	rm -f ../bin/ffic64.osx && ../tcc_osx/tcc -nostdlib -DTCC_TARGET_X86_64 -DTCC_TARGET_MACHO -DTCC_LIBTCC1="\"\"" -I../tinycc -I. -DONE_SOURCE=1 ffic.c -lc -o ../bin/ffic64.osx
	../bin/ffic64.osx tests/env.c
	ls -al ../bin/*.osx

build_config_h:
	echo "#define TCC_VERSION \"`head ../tinycc/VERSION`\"" > config.h
	echo "#ifndef CONFIG_TCCDIR" >> config.h
	echo "#define CONFIG_TCCDIR \".\"" >> config.h
	echo "#endif" >> config.h
	
bin_ffic_lnx:
	make build_config_h
	rm -f ../bin/ffic64.lnx
	cd ../ && ./dkrun.sh partnernetsoftware/dtcctcc tcc -static -nostdlib -DTCC_LIBTCC1="\"\"" -Itinycc src/ffic.c -o bin/ffic64.lnx /usr/local/lib/tcc/libtcc1.a /usr/lib/crt1.o -lc -DONE_SOURCE=1 -Isrc
	cd .. && ./dkrun.sh partnernetsoftware/dtcctcc bin/ffic64.lnx src/tests/env.c

tcc_osx:#with system cc
	make build_config_h
	rm -rf ../tcc_osx && mkdir -p ../tcc_osx && cd ../tcc_osx && ../tinycc/configure && rm -f ../tinycc/config.h && cp -f ../src/config.h ./ && make && make libtcc.osx && make cross #&& cp -f *tcc1.a ../bin/
	../tcc_osx/tcc -vv
	#../tcc_osx/x86_64-osx-tcc -vv
submodule_init:
	#cd .. && git submodule add --force https://github.com/mirror/tinycc.git --depth 1 && git submodule update --init --recursive
	cd .. && git submodule init && git submodule update
test_osx:
	cat tests/42.c | ./ffic_static_osx
	./ffic_static_osx tests/42.c
	cat tests/42.c | ./ffic_osx
	./ffic_osx tests/42.c

bin_ffic_win:#build from osx...
	rm -f ../bin/ffic*.exe
	sh tccwin32.sh -DONE_SOURCE=1 -I. ../tinycc/tcc.c -o ../bin/tcc32.exe
	sh tccwin64.sh -DONE_SOURCE=1 -I. ../tinycc/tcc.c -o ../bin/tcc64.exe
	sh tccwin32.sh ffic.c -o ../bin/ffic32s.exe
	sh tccwin64.sh ffic.c -o ../bin/ffic64s.exe
	###../tcc_osx/tcc -m32 -DTCC_TARGET_PE -DTCC_TARGET_I386 -D_WIN32 -c ../tinycc/lib/alloca86.S
	###../tcc_osx/tcc -m32 -DTCC_TARGET_PE -DTCC_TARGET_I386 -D_WIN32 -c ../tinycc/win32/lib/chkstk.S
	# ffic32a.exe: single release file (not depends on tcc1)
	# with i386-win32-tcc
	# rm -f ../bin/ffic32a.exe && ../tcc_osx/i386-win32-tcc -DTCC_LIBTCC1="\"\"" -DTCC_TARGET_PE -DTCC_TARGET_I386 -D_WIN32 -DONE_SOURCE=1 -nostdlib -I../tinycc/include -I../tinycc/win32/include -I../tinycc/win32/include/winapi -I../tinycc -I. ../tinycc/lib/libtcc1.c ../tinycc/win32/lib/crt1.c  ../tinycc/lib/alloca86.S ../tinycc/win32/lib/chkstk.S ffic.c ../tinycc/win32/lib/msvcrt.def ../tinycc/win32/lib/kernel32.def -o ../bin/ffic32a.exe
	###rm -f ../bin/ffic32a.exe && ../tcc_osx/i386-win32-tcc -DTCC_LIBTCC1="\"\"" -DTCC_TARGET_PE -DTCC_TARGET_I386 -D_WIN32 -D__i386__ -DONE_SOURCE=1 -nostdlib -I../tinycc/include -I../tinycc/win32/include -I../tinycc/win32/include/winapi -I../tinycc -I. ../tinycc/lib/libtcc1.c ../tinycc/win32/lib/crt1.c ../tinycc/lib/alloca86.S ../tinycc/win32/lib/chkstk.S ffic.c ../tinycc/win32/lib/msvcrt.def ../tinycc/win32/lib/kernel32.def -o ../bin/ffic32a.exe
	rm -f ../bin/ffic32a.exe && ../tcc_osx/i386-win32-tcc -DTCC_LIBTCC1="\"\"" -DTCC_TARGET_PE -DTCC_TARGET_I386 -D_WIN32 -D__i386__ -DONE_SOURCE=1 -nostdlib -I../tinycc/include -I../tinycc/win32/include -I../tinycc/win32/include/winapi -I../tinycc -I. ../tinycc/lib/libtcc1.c ../tinycc/win32/lib/crt1.c ../tinycc/lib/alloca86.S ../tinycc/win32/lib/chkstk.S ffic.c ../tinycc/win32/lib/msvcrt.def ../tinycc/win32/lib/kernel32.def -o ../bin/ffic32a.exe
	# with tcc (not support load .def yet)
	# ##  ../tcc_osx/tcc -m32 -DTCC_TARGET_PE -DTCC_TARGET_I386 -D_WIN32 -c ../tinycc/lib/alloca86.S &&
	# rm -f ../bin/ffic32b.exe && ../tcc_osx/tcc -m32 -DTCC_TARGET_PE -DTCC_TARGET_I386 -D_WIN32 -DONE_SOURCE=1 -nostdlib -I../tinycc/include -I../tinycc/win32/include -I../tinycc/win32/include/winapi -I../tinycc -I. ../tinycc/lib/libtcc1.c ../tinycc/win32/lib/crt1.c alloca86.o chkstk.o ffic.c -o ../bin/ffic32b.exe
	#../tcc_osx/tcc -DTCC_TARGET_PE -DTCC_TARGET_I386 -D_WIN32 -DONE_SOURCE=1 -nostdlib -I../tinycc/include -I../tinycc/win32/include -I../tinycc/win32/include/winapi -I../tinycc -I. ../tinycc/lib/libtcc1.c ../tinycc/win32/lib/crt1.c ffic.c -o ../bin/ffic32b.exe
	###rm -f *.o
	###../tcc_osx/tcc -m64 -DTCC_TARGET_PE -DTCC_TARGET_X86_64 -D_WIN32 -D_WIN64 -c ../tinycc/lib/alloca86_64.S
	###../tcc_osx/tcc -m64 -DTCC_TARGET_PE -DTCC_TARGET_X86_64 -D_WIN32 -D_WIN64 -c ../tinycc/win32/lib/chkstk.S
	###rm -f ../bin/ffic64a.exe && ../tcc_osx/x86_64-win32-tcc -DTCC_LIBTCC1="\"\"" -DTCC_TARGET_PE -DTCC_TARGET_X86_64 -D_WIN32 -D_WIN64 -D__x86_64__ -DONE_SOURCE=1 -nostdlib -I../tinycc/include -I../tinycc/win32/include -I../tinycc/win32/include/winapi -I../tinycc -I. ../tinycc/lib/libtcc1.c ../tinycc/win32/lib/crt1.c ../tinycc/lib/alloca86_64.S ../tinycc/win32/lib/chkstk.S ffic.c ../tinycc/win32/lib/msvcrt.def ../tinycc/win32/lib/kernel32.def -o ../bin/ffic64a.exe
	rm -f ../bin/ffic64a.exe && ../tcc_osx/x86_64-win32-tcc -DTCC_TARGET_PE -DTCC_TARGET_X86_64 -D_WIN32 -D_WIN64 -D__x86_64__ -DONE_SOURCE=1 -nostdlib -I../tinycc/include -I../tinycc/win32/include -I../tinycc/win32/include/winapi -I../tinycc -I. ../tinycc/lib/libtcc1.c ../tinycc/win32/lib/crt1.c ../tinycc/lib/alloca86_64.S ../tinycc/win32/lib/chkstk.S ffic.c ../tinycc/win32/lib/msvcrt.def ../tinycc/win32/lib/kernel32.def -o ../bin/ffic64a.exe
	sh tccwin32.sh ../tinycc/libtcc.c -DLIBTCC_AS_DLL -shared -o ../bin/libtcc32.dll
	sh tccwin64.sh ../tinycc/libtcc.c -DLIBTCC_AS_DLL -shared -o ../bin/libtcc64.dll
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
	${CC} -E lab/sao.c | sed 's/^#.*//g' | sed "/^$$/d" > lab/sao.osx.pp.c
	${CC} -E -DTCC_TARGET_PE -DTCC_TARGET_I386 -D_WIN32 lab/sao.c | sed 's/^#.*//g' | sed "/^$$/d" > lab/sao.win32.pp.c
	#${CC} -E -DTCC_TARGET_PE -DTCC_TARGET_X86_64 -D_WIN32 -D_WIN64 -D_WIN64 sao.c | sed 's/^#.*//g' | sed "/^$$/d" > lab/sao.win64.pp.c
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
sao_play:
	cat lab/play.sao | ../bin/ffic64.osx lab/sao.c d


#TCC_X = i386 x86_64 i386-win32 x86_64-win32 x86_64-osx arm arm64 arm-wince c67
#TCC_X += riscv64
# TCC_X += arm-fpa arm-fpa-ld arm-vfp arm-eabi

