@rem ..\bin_win64\tcc -impdef libffi64.dll -o libffi64.def

@echo wine64 cmd /c "test_ffi2_64.bat"

del test_ffi2_64.exe

..\bin_win64\tcc -I. libffi64.def test_ffi2.c -o test_ffi2_64.exe

dir test_ffi2_64.exe
test_ffi2_64.exe

