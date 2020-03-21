#include "tccffi.h"

////QUICK TEST
extern void* add_symbol(const char * symbol, const char * str);
extern tmp_add_symbol(const char * symbol, const void * pt);
extern void tmp_list_symbols(void *ctx,
    void (*symbol_cb)(void *ctx, const char *name, const void *val));

void my_symbol_cb(void *ctx, const char *name, const void *val)
{
	libc(printf)("my_symbol_cb %s\n",name);
}

//#include <stddef.h>
//#include <limits.h>
//typedef struct _ffi_type
//{
//  size_t size;
//  unsigned short alignment;
//  unsigned short type;
//  struct _ffi_type **elements;
//} ffi_type;

typedef void* any_ptr;
int main(){
	//out("ffi=%d\n",ffi);
	//ffi("printf","c")("TEST ffi=%d\n",ffi);
	//ffi("printf")("TEST ffi=%d\n",ffi);
//	libc(printf)("TEST ffi=%d\n",ffi);
//	ffi("ffi_call","ffi");

	libc(printf)("stderr=%d\n",libc(stderr));
////	libc(fprintf)(libc(stderr),"fprintf stderr=%d\n",libc(stderr));
//
//	//libc(printf)("symbol=%d\n",add_symbol("function_ptr","typedef void* any_ptr;\ntypedef any_ptr (*function_ptr)();\n"));
////	libc(printf)("function_ptr=%d\n",add_symbol("function_ptr","typedef void* any_ptr;\ntypedef any_ptr (*function_ptr)();\n"));
////	libc(printf)("symbol=%d\n",any_ptr);
//	libc(printf)("symbol=%d\n",add_symbol("any_ptr","typedef void* any_ptr;\n"));
//	libc(printf)("symbol=%d\n",add_symbol("function_ptr","typedef void* any_ptr;\ntypedef any_ptr (*function_ptr)();\n"));
//
//libc(printf)("test=%d\n",add_symbol("test","void* test(){return 0;}\n"));
//libc(printf)("test=%d\n",add_symbol("test","typedef void* any_ptr;\nany_ptr test(){return 0;}\n"));
	libc(printf)("test=%d\n",add_symbol("any_ptr","typedef void* any_ptr;\n"));
//	///libc(printf)("test=%d\n",add_symbol("test","any_ptr test(){return 0;}\n"));
//	//tmp_add_symbol("any_ptr",any_ptr);
//	libc(printf)("test=%d\n",add_symbol("any_ptr","extern any_ptr;\nany_ptr test(){return 0;}\n"));
	
	tmp_list_symbols(0,my_symbol_cb);

	return 0;
}

