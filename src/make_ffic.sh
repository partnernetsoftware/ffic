sh ../tinycc/win32/tccwin32.sh -I. ffic.c -o ffic32.exe
sh ../tinycc/win32/tccwin64.sh -I. ffic.c -o ffic64.exe

sh ../tinycc/win32/tccwin32.sh -DONE_SOURCE=1 -I../tinycc -I. ffic.c -o ffic_static_32.exe
sh ../tinycc/win32/tccwin64.sh -DONE_SOURCE=1 -I../tinycc -I. ffic.c -o ffic_static_64.exe

upx -o ffic_static_upx_32.exe ffic_static_32.exe
upx -o ffic_static_upx_64.exe ffic_static_64.exe

ls -al *.exe
