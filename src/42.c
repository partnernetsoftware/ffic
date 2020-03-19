#ifdef USING_LIBC //TMP...
# define libc(f) f
#else
extern void*(*ffi(const char* funcname, ...))();//<funcname> [libname] [prototype]
# define libc(f) ffi(#f,"c")
#endif

int main(){
	//out("ffi=%d\n",ffi);
	//ffi("printf","c")("TEST ffi=%d\n",ffi);
	//ffi("printf")("TEST ffi=%d\n",ffi);
	libc(printf)("TEST ffi=%d\n",ffi);
	return 0;
}
