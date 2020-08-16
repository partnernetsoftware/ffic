cp ../tinycc/*.exe ./
cp ../tinycc/*tcc1.a ./

RTCC=../tinycc
CC32="$RTCC/i386-win32-tcc -L. -DCONFIG_LDDIR="\".\"" -DTCC_LIBTCC1="\"i386-win32-libtcc1.a\"" -I $RTCC/win32/include -I $RTCC/win32/include/winapi -I $RTCC/include -L $RTCC/win32/lib"
CC64="$RTCC/x86_64-win32-tcc -L. -DCONFIG_LDDIR="\".\"" -DTCC_LIBTCC1="\"x86_64-win32-libtcc1.a\"" -I $RTCC/win32/include -I $RTCC/win32/include/winapi -I $RTCC/include -L $RTCC/win32/lib"

echo CC32=$CC32

$CC32 ../tinycc/libtcc.c -DLIBTCC_AS_DLL -shared -o libtcc32.dll
$CC64 ../tinycc/libtcc.c -DLIBTCC_AS_DLL -shared -o libtcc64.dll

$CC32 -I. ffic.c -o ffic32.exe
$CC64 -I. ffic.c -o ffic64.exe

$CC32 -DONE_SOURCE=1 -I../tinycc -I. ffic.c -o ffic_static_32.exe
$CC64 -DONE_SOURCE=1 -I../tinycc -I. ffic.c -o ffic_static_64.exe

./upx -f -o ffic_static_upx_32.exe ffic_static_32.exe
./upx -f -o ffic_static_upx_64.exe ffic_static_64.exe

ls -al *.exe
