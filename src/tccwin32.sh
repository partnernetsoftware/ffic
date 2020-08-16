R_=$(pwd)

RTCC=$(cd `dirname $0`/../; pwd)
echo RTCC=$RTCC

$RTCC/i386-win32-tcc -DTCC_LIBTCC1="\"i386-win32-libtcc1.a\"" -I $RTCC/win32/include -I $RTCC/win32/include/winapi -I $RTCC/include -L $RTCC/win32/lib -L $RTCC $*

cd $R_
