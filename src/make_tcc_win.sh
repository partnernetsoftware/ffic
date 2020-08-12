#R=$(cd `dirname $0`; pwd)
#R=../../tinycc
R=../tinycc
#make cross -C $R

git --git-dir=$R/.git reset --hard

make clean -C $R
$R/configure --tccdir=$R
make cross-i386-win32-tcc -C $R
make cross-x86_64-win32-tcc -C $R

$R/i386-win32-tcc -L $R -L $R/win32/lib -I $R/win32/include/winapi -I $R/win32/include -I $R/include $R/win32/examples/hello_win.c -o hello_win32.exe
$R/x86_64-win32-tcc -L $R -L $R/win32/lib -I $R/win32/include/winapi -I $R/win32/include -I $R/include $R/win32/examples/hello_win.c -o hello_win64.exe
ls -al hello_win*.exe

#cp $R/*win32-libtcc1.a ../
#$R/i386-win32-tcc -DTCC_LIBTCC1="\"libtcc1-32.a\"" -L $R -L $R/win32/lib -I $R/win32/include/winapi -I $R/win32/include -I $R/include $R/tcc.c -o ../tcc32.exe
#$R/x86_64-win32-tcc -DTCC_LIBTCC1="\"libtcc1-64.a\"" -L $R -L $R/win32/lib -I $R/win32/include/winapi -I $R/win32/include -I $R/include $R/tcc.c -o ../tcc64.exe
#ls -al ../tcc*.exe

##rm ../tcc*.exe
##$R/i386-win32-tcc -DTCC_LIBTCC1="\"i386-win32-libtcc1.a\"" -L $R -L $R/win32/lib -I $R/win32/include/winapi -I $R/win32/include -I $R/include $R/tcc.c -o ../tcc32.exe
##$R/x86_64-win32-tcc -DTCC_LIBTCC1="\"x86_64-libtcc1.a\"" -L $R -L $R/win32/lib -I $R/win32/include/winapi -I $R/win32/include -I $R/include $R/tcc.c -o ../tcc64.exe
##ls -al ../tcc*.exe
##
##$R/i386-win32-tcc -L ../tinycc/win32/lib -L ../tinycc ffic.c -o ffic_win32.exe
##ls -al ffic_win32.exe
