sh ../tinycc/win32/tccwin32.sh tests/empty.c -o tests/empty.exe
sh ../tinycc/win32/tccwin32.sh -I. tests/expr.c -o tests/expr.exe
ls -al tests/*.exe

sh ../tinycc/win32/tccwin32.sh -I. ffic.c -o ffic32.exe
ls -al *.exe
