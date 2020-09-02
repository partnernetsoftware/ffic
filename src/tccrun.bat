@rem tcc32 -I..\tinyccbinary\win32\include\winapi -I ..\tinyccbinary\win32\include -I ..\tinyccbinary\include -I. -L. -L..\tinyccbinary\win32\lib -run %*
@rem tcc32 -I..\tinyccbinary\win32\include\winapi -I ..\tinyccbinary\win32\include -I ..\tinyccbinary\include -I. -L. -run %*

@rem ..\bin_win32\tcc -I..\tinyccbinary\win32\include\winapi -I ..\tinyccbinary\win32\include -I ..\tinyccbinary\include -I. -L. -run %*
@rem ..\tinyccbinary\build.osx\tcc32 -I..\tinyccbinary\win32\include\winapi -I ..\tinyccbinary\win32\include -I ..\tinyccbinary\include -I. -L. -L..\tinyccbinary\win32\lib -run %*
tcc32 -I..\tinycc\win32\include\winapi -I ..\tinycc\win32\include -I ..\tinycc\include -I. -L. -L..\tinycc\win32\lib -run %*
