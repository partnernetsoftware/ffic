R_=$(pwd)

echo `dirname $0`
#pwd

#RTCC=$(cd `dirname $0`/../tinycc; pwd)
RTCC=../tinycc
#echo RTCC=$RTCC

CC="$RTCC/../tcc_osx/i386-win32-tcc -L. -DCONFIG_LDDIR="\".\"" -DTCC_LIBTCC1="\"i386-win32-libtcc1.a\"" -I $RTCC/win32/include -I $RTCC/win32/include/winapi -I $RTCC/include -I $RTCC -I $RTCC -B $RTCC/../bin -L $RTCC/../bin -L $RTCC/win32/lib -L. -I."
#CC="$RTCC/../tcc_osx/i386-win32-tcc -L. -DCONFIG_LDDIR="\".\"" -I $RTCC/win32/include -I $RTCC/win32/include/winapi -I $RTCC/include -I $RTCC -I $RTCC -B $RTCC/../bin -L $RTCC/../bin -L $RTCC/win32/lib -L. -I."

echo $CC $*
$CC $*

cd $R_
