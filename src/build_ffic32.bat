@rem ..\bin_win32\tcc.exe ..\tinycc\tcc.c -o tcc32_1.exe -I ..\include -I ..\include\winapi

set INC= -DTCC_LIBTCC1="\""i386-win32-libtcc1.a\""" -L..\tinycc -L.. -I ..\tinycc -I ..\tinycc\include -I ..\tinycc\win32\include\winapi -I ..\tinycc\win32\include
@rem ..\tcc32.exe -DTCC_LIBTCC1="\""i386-win32-libtcc1.a\""" ..\tinycc\tcc.c -L.. -o tcc32_0.exe -I ..\include -I ..\include\winapi
..\tinycc\tcc32.exe %INC% ..\tinycc\tcc.c -o tcc32_1.exe
tcc32_1.exe %INC% ..\tinycc\tcc.c -o tcc32_2.exe
tcc32_2.exe %INC% ..\tinycc\tcc.c -o tcc32_3.exe

copy /y ..\tinycc\*.dll .\
copy /y ..\tinycc\*.exe .\

copy /y ..\tinycc\*win32*.a .\lib\

@rem @set O1=libtcc1.o crt1.o crt1w.o wincrt1.o wincrt1w.o dllcrt1.o dllmain.o chkstk.o
@rem .\tcc32_3 -m32 %INC% -c ../tinycc/lib/libtcc1.c
@rem .\tcc32_3 -m32 %INC% -c ../tinycc/win32/lib/crt1.c
@rem .\tcc32_3 -m32 %INC% -c ../tinycc/win32/lib/crt1w.c
@rem .\tcc32_3 -m32 %INC% -c ../tinycc/win32/lib/wincrt1.c
@rem .\tcc32_3 -m32 %INC% -c ../tinycc/win32/lib/wincrt1w.c
@rem .\tcc32_3 -m32 %INC% -c ../tinycc/win32/lib/dllcrt1.c
@rem .\tcc32_3 -m32 %INC% -c ../tinycc/win32/lib/dllmain.c
@rem .\tcc32_3 -m32 %INC% -c ../tinycc/win32/lib/chkstk.S
@rem .\tcc32_3 -m32 %INC% -c ../tinycc/lib/alloca86.S
@rem .\tcc32_3 -m32 %INC% -c ../tinycc/lib/alloca86-bt.S
@rem .\tcc32_3 -m32 -ar lib/i386-win32-libtcc1.a %O1% alloca86.o alloca86-bt.o
@rem dir lib\*.a

dir tcc*.exe ..\tcc*.exe

tcc32_3.exe %INC% -run ffic.c tests\win.c

tcc32_3.exe %INC% ffic.c -o ffic32.exe

@rem echo copy tcc32_3.exe ..\
ffic32.exe tests\win.c

tcc32_3 %INC% -DONE_SOURCE=1 -DFFIC_ONE_SOURCE=1 ffic.c -o ffic_static_32.exe

upx -offic_static_upx_32.exe ffic_static_32.exe 

dir ffic*.exe
