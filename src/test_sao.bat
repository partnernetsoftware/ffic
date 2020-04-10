@rem build sao && upx sao_win32.exe && dir sao*.exe && type fib.scm | sao_win32
@rem build sao && upx sao_win32.exe && dir sao*.exe && type fib.sao | sao_win32
@rem build sao && upx sao_win32.exe && dir sao*.exe && type test.sao | sao_win32 -i -p -v
call build sao
type tests\test.sao | sao_win32.exe i p v d
upx sao_win32.exe -o sao_win32_upx.exe -f
dir sao*.exe
