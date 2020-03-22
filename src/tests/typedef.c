extern void*(*ffi(const char* funcname, const char* libname, ...))();//<funcname> <libname> [prototype]
# define libc(f) ffi(#f,"c")

//#include "tccffi.h"

//QUICK TEST
//extern void* add_symbol(const char * symbol, const char * str)
//;

typedef void* any_ptr;
int main(){
	//out("ffi=%d\n",ffi);
	//ffi("printf","c")("TEST ffi=%d\n",ffi);
	//ffi("printf")("TEST ffi=%d\n",ffi);
//	libc(printf)("TEST ffi=%d\n",ffi);
//	ffi("ffi_call","ffi");

//	libc(printf)("stderr=%d\n",libc(stderr));
//	libc(fprintf)(libc(stderr),"fprintf stderr=%d\n",libc(stderr));

	//libc(printf)("symbol=%d\n",add_symbol("function_ptr","typedef void* any_ptr;\ntypedef any_ptr (*function_ptr)();\n"));
	//libc(printf)("function_ptr=%d\n",add_symbol("function_ptr","typedef void* any_ptr;\ntypedef any_ptr (*function_ptr)();\n"));
	libc(printf)("symbol=%d\n",any_ptr);

	//ffi("tcc")();
	
	return 0;
}
