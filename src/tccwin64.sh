R_=$(pwd)

RTCC=$(cd `dirname $0`/../tinycc; pwd)
#echo RTCC=$RTCC

CC32="../tcc_osx/x86_64-win32-tcc -L. -DCONFIG_LDDIR="\".\"" -DTCC_LIBTCC1="\"x86_64-win32-libtcc1.a\"" -I $RTCC/win32/include -I $RTCC/win32/include/winapi -I $RTCC/include -I $RTCC -I. -I $RTCC -L $RTCC/win32/lib -L."

$CC32 $*

cd $R_

