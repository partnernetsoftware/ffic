@rem build sao && upx sao_win32.exe && dir sao*.exe && type fib.scm | sao_win32
@rem build sao && upx sao_win32.exe && dir sao*.exe && type fib.sao | sao_win32
@rem build sao && upx sao_win32.exe && dir sao*.exe && type test.sao | sao_win32 -i -p -v
build sao && type tests\test.sao | sao_win32 i p v
upx sao_win32.exe -f && dir sao*.exe
@rem && type tests\test.sao | sao_win32 i p v
