sh ../tinycc/win32/tccwin_build.sh
sh ../tinycc/win32/tccwin32.sh ../tinycc/libtcc.c -DLIBTCC_AS_DLL -DTCC_TARGET_PE -shared -o libtcc32.dll
sh ../tinycc/win32/tccwin64.sh ../tinycc/libtcc.c -DLIBTCC_AS_DLL -DTCC_TARGET_PE -shared -o libtcc64.dll

#sh ../tinycc/win32/tccwin32.sh tests/empty.c -o tests/empty.exe
#sh ../tinycc/win32/tccwin32.sh -I. tests/expr.c -o tests/expr.exe
#ls -al tests/*.exe

sh make_ffic.sh
