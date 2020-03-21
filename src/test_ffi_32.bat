..\bin_win32\tcc -impdef libffi32.dll -o libffi32.def

del test_ffi_32.exe

..\bin_win32\tcc -I. libffi32.def test_ffi.c -o test_ffi_32.exe

dir test_ffi_32.exe
test_ffi_32.exe

