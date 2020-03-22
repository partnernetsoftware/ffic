..\bin_win64\tcc -impdef libffi64.dll -o libffi64.def

del test_ffi_64.exe

..\bin_win64\tcc -I. libffi64.def test_ffi.c -o test_ffi_64.exe

dir test_ffi_64.exe
test_ffi_64.exe

