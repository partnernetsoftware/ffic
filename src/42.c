//#ifdef USING_LIBC //TMP...
//# define libc(f) f
//#else
//extern void*(*ffi(const char* funcname, const char* libname, ...))();//<funcname> <libname> [prototype]
//# define libc(f) ffi(#f,"c")
//#endif

#include "tccffi.h"

int main(){
	//out("ffi=%d\n",ffi);
	//ffi("printf","c")("TEST ffi=%d\n",ffi);
	//ffi("printf")("TEST ffi=%d\n",ffi);
//	libc(printf)("TEST ffi=%d\n",ffi);
//	ffi("ffi_call","ffi");

	libc(printf)("stderr=%d\n",libc(stderr));
	libc(fprintf)(libc(stderr),"fprintf stderr=%d\n",libc(stderr));


	return 0;
}
