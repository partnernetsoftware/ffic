git -C ../tinyccbinary/ reset --hard
git -C ../tinyccbinary/ pull

#cp ../tinycc/*.exe ./
#cp ../tinycc/*-libtcc1.a ./

#sh ../tinyccbinary/build.osx/build.sh
cp ../tinyccbinary/build.osx/*-libtcc1.a ./

rm ffic*.exe

RTCC=../tinyccbinary

#CC32="../tinyccbinary/build.osx/i386-win32-tcc -L. -DCONFIG_LDDIR="\".\"" -DTCC_LIBTCC1="\"i386-win32-libtcc1.a\"" -I $RTCC/win32/include -I $RTCC/win32/include/winapi -I $RTCC/build.osx -I $RTCC/include -I $RTCC -L $RTCC/win32/lib"
#CC64="../tinyccbinary/build.osx/x86_64-win32-tcc -L. -DCONFIG_LDDIR="\".\"" -DTCC_LIBTCC1="\"x86_64-win32-libtcc1.a\"" -I $RTCC/win32/include -I $RTCC/win32/include/winapi -I $RTCC/include -I $RTCC -L $RTCC/win32/lib"
#
#echo CC32=$CC32

#$CC32 $RTCC/libtcc.c -DLIBTCC_AS_DLL -shared -o libtcc32.dll
#$CC64 $RTCC/libtcc.c -DLIBTCC_AS_DLL -shared -o libtcc64.dll
#
#$CC32 -I. ffic.c -o ffic32.exe
#$CC64 -I. ffic.c -o ffic64.exe

CC32="sh ../tinyccbinary/build.osx/tccwin32.sh"
$CC32 -DONE_SOURCE=1 -I. ffic.c -o ffic_static_32.exe
CC64="sh ../tinyccbinary/build.osx/tccwin64.sh"
$CC64 -DONE_SOURCE=1 -I. ffic.c -o ffic_static_64.exe

./upx -f -o ffic_static_upx_32.exe ffic_static_32.exe
./upx -f -o ffic_static_upx_64.exe ffic_static_64.exe

ls -al *.exe
