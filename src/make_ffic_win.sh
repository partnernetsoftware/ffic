cp ../tinycc/*.exe ./
cp ../tinycc/*tcc1.a ./
sh ../tinycc/win32/tccwin32.sh -L. -DCONFIG_LDDIR="\".\"" -DTCC_LIBTCC1="\"i386-win32-libtcc1.a\"" ../tinycc/libtcc.c -DLIBTCC_AS_DLL -shared -o libtcc32.dll
sh ../tinycc/win32/tccwin64.sh -L. -DCONFIG_LDDIR="\".\"" -DTCC_LIBTCC1="\"x86_64-win32-libtcc1.a\"" ../tinycc/libtcc.c -DLIBTCC_AS_DLL -shared -o libtcc64.dll
sh ../tinycc/win32/tccwin32.sh -L. -DCONFIG_LDDIR="\".\"" -DTCC_LIBTCC1="\"i386-win32-libtcc1.a\"" -I. ffic.c -o ffic32.exe
sh ../tinycc/win32/tccwin64.sh -L. -DCONFIG_LDDIR="\".\"" -DTCC_LIBTCC1="\"x86_64-win32-libtcc1.a\"" -I. ffic.c -o ffic64.exe
sh ../tinycc/win32/tccwin32.sh -L. -DCONFIG_LDDIR="\".\"" -DTCC_LIBTCC1="\"i386-win32-libtcc1.a\"" -DONE_SOURCE=1 -I../tinycc -I. ffic.c -o ffic_static_32.exe
sh ../tinycc/win32/tccwin64.sh -L. -DCONFIG_LDDIR="\".\"" -DTCC_LIBTCC1="\"x86_64-win32-libtcc1.a\"" -DONE_SOURCE=1 -I../tinycc -I. ffic.c -o ffic_static_64.exe

./upx -f -o ffic_static_upx_32.exe ffic_static_32.exe
./upx -f -o ffic_static_upx_64.exe ffic_static_64.exe

ls -al *.exe
