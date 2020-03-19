#ifdef USING_LIBC //TMP...
# define libc(f) f
#else
extern void*(*ffi(const char* funcname, const char* libname, ...))();//<funcname> <libname> [prototype]
# define libc(f) ffi(#f,"c")
#endif

int main(){
	//out("ffi=%d\n",ffi);
	//ffi("printf","c")("TEST ffi=%d\n",ffi);
	//ffi("printf")("TEST ffi=%d\n",ffi);
//	libc(printf)("TEST ffi=%d\n",ffi);
//	ffi("ffi_call","ffi");

	libc(printf)("stderr=%d\n",libc(stderr));

	//libc(fprintf)(libc(stderr),"TEST ffi=%d\n",ffi);

	return 0;
}
