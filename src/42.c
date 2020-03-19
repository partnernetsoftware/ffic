//typedef void* any_ptr;
//typedef any_ptr (*function_ptr)();
//extern function_ptr ffi(const char * libname, const char* funcname, ...);
extern void*(*ffi(const char* funcname, ...))();//<funcname> [libname] [prototype]
#define libc(f) ffi(#f,"c")

int main(){
	//ffi("printf","c")("TEST ffi=%d\n",ffi);
	//ffi("printf")("TEST ffi=%d\n",ffi);
	libc(printf)("TEST ffi=%d\n",ffi);
	return 0;
}
