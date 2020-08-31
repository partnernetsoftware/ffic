set INC= -DCONFIG_LDDIR="\"".\""" -DTCC_LIBTCC1="\""i386-win32-libtcc1.a\""" -L. -L..\tinycc -L.. -I ..\tinycc -I ..\tinycc\include -I ..\tinycc\win32\include\winapi -I ..\tinycc\win32\include -I .

set CC=tcc32.exe

%CC% %INC% ..\tinycc\tcc.c -L. -o tcc32_1.exe
tcc32_1.exe %INC% ..\tinycc\tcc.c -o tcc32_2.exe
tcc32_2.exe %INC% ..\tinycc\tcc.c -o tcc32_3.exe

dir tcc*.exe ..\tcc*.exe

%CC% %INC% -run ffic.c tests\win.c

%CC% %INC% ffic.c -o ffic32.exe

ffic32.exe tests\win.c

%CC% %INC% -DONE_SOURCE=1 ffic.c -o ffic_static_32.exe

tools\upx -f -o ffic_static_upx_32.exe ffic_static_32.exe 

dir ffic*.exe
