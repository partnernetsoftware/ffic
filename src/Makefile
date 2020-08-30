#CC=cc
#CC=gcc
CC=gcc -O1 -I ../tinyccbinary/
#CC=tcc
#CC=../tinyccbinary/x86_64-osx-tcc
#CC=../tinyccbinary/tcc
osx:
	cd ../tinyccbinary/build.osx/ && ../configure && make clean && sleep 1 && make tcc && make libtcc.osx && ../configure --cc=./tcc && make && make cross-x86_64-osx cross-x86_64-win32 cross-i386-win32 && sleep 1
	cp ../tinyccbinary/build.osx/libtcc.dylib ./
	cp ../tinyccbinary/build.osx/x86_64-osx-libtcc1.a ./
	#git submodule add https://github.com/partnernetsoftware/tinyccbinary.git
	#git submodule update --init --recursive
	#cd .. && git submodule init && git submodule update
	#echo "#define TCC_VERSION \"`head ../tinyccbinary/VERSION`\"" > config.h
	#make tcc
	#cd ../tinyccbinary/ && make clean && ./configure && make && make libtcc.osx && ./configure --cc=./tcc && make && make cross-x86_64-osx
	#${CC} -E ffic.c -I. -I../tinyccbinary/ | sed 's/^#.*//g' | sed "/^$$/d" > ffic_osx.pp.c
	../tinyccbinary/build.osx/tcc -DTCC_TARGET_X86_64 -DTCC_TARGET_MACHO -E ffic.c -I. -I../tinyccbinary/include -I../tinyccbinary/ | sed 's/^#.*//g' | sed "/^$$/d" > ffic.osx.i
	#${CC} ffic_osx.pp.c -L. -ldl -ltcc -o ffic_osx
	#${CC} -DCONFIG_TCCDIR="\".\"" -DTCC_LIBTCC1="\"x86_64-osx-libtcc1.a\"" -L. ffic_osx.pp.c -ldl -ltcc -o ffic_osx
	#../tinyccbinary/tcc -DTCC_TARGET_X86_64 -DTCC_TARGET_MACHO -DCONFIG_TCCDIR="\".\"" -DTCC_LIBTCC1="\"x86_64-osx-libtcc1.a\"" -L. ffic_osx.pp.c -ldl -ltcc -o ffic_osx
	#gcc -O1 -I ../tinyccbinary/build.osx/tcc -DTCC_TARGET_X86_64 -DTCC_TARGET_MACHO -DCONFIG_TCCDIR="\".\"" -DTCC_LIBTCC1="\"x86_64-osx-libtcc1.a\"" -L. ffic.osx.i -ldl -ltcc -o ffic_osx
	gcc -O1 -I ../tinyccbinary/build.osx/tcc -DTCC_TARGET_X86_64 -DTCC_TARGET_MACHO -DCONFIG_TCCDIR="\".\"" -DTCC_LIBTCC1="\"x86_64-osx-libtcc1.a\"" -L. -Wl,-dead_strip ffic.osx.i -ldl -ltcc -o ffic_osx
	#../tinyccbinary/tcc -DTCC_TARGET_X86_64 -DTCC_TARGET_MACHO -DCONFIG_TCCDIR="\".\"" -DTCC_LIBTCC1="\"x86_64-osx-libtcc1.a\"" -L. ffic_osx.pp.c -ldl -ltcc -o ffic_osx
	#${CC} -DCONFIG_TCCDIR="\".\"" -DTCC_LIBTCC1="\"x86_64-osx-libtcc1.a\"" -L. -I ../tinycc -DONE_SOURCE=1 ffic.c -o ffic_static_osx
	../tinyccbinary/build.osx/tcc -DTCC_TARGET_X86_64 -DTCC_TARGET_MACHO -DCONFIG_TCCDIR="\".\"" -DTCC_LIBTCC1="\"x86_64-osx-libtcc1.a\"" -L. -I../tinyccbinary -DONE_SOURCE=1 ffic.c -o ffic_static_osx
	#gcc -DTCC_TARGET_X86_64 -DTCC_TARGET_MACHO -DCONFIG_TCCDIR="\".\"" -DTCC_LIBTCC1="\"x86_64-osx-libtcc1.a\"" -L. -I../tinyccbinary -DONE_SOURCE=1 -Wl,-dead_strip ffic.c -o ffic_static_osx_gcc_strip
	ls -al ffic*
	cat tests/42.c | ./ffic_osx
	./ffic_osx tests/42.c
	cat tests/42.c | ./ffic_static_osx
	./ffic_static_osx tests/42.c
	./ffic_osx tests/fib.c 5
lnx:
	cd ../tinyccbinary/ && make clean && sleep 1 && ./configure && make && make libtcc.so && ./configure --cc=./tcc && make && make cross-x86_64
	cp ../tinyccbinary/libtcc.so ./
	cp ../tinyccbinary/x86_64-libtcc1.a ./
test:
	cat tests/42.c | ./ffic
	./ffic tests/42.c
	cat tests/42.c | ./ffic_static_osx
	./ffic_static_osx tests/42.c
pp:
	#${CC} -E ffic.c -I. -I../tinyccbinary/ -o ffic.pp.c
	##${CC} -E ffic.c -I. -I../tinyccbinary/ | sed 's/^#.*//g' > ffic.pp.c
	${CC} -E ffic.c -I. -I../tinyccbinary/ | sed 's/^#.*//g' | sed "/^$$/d" > ffic.pp.c
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
