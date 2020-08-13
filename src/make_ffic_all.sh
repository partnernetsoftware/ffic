# make cross
sh ../tinycc/win32/tccwin_build.sh

cp ../tinycc/libtcc*.dll ./

sh make_ffic.sh
