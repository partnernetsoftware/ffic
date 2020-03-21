// gcc tccffi.c -I ../../tinycc/ -o tccffi && ./tccffi
// tcc -run tccffi.c -I ../../tinycc/ 

#include "tccffi.h"

#define NDEBUG

//#ifdef __APPLE__
//# ifndef TCC_TARGET_MACHO
//#  define TCC_TARGET_MACHO
//# endif
//#elif defined(WIN32)
//# ifndef TCC_TARGET_PE
//#  define TCC_TARGET_PE
//# endif
//#else
////ELF
//#endif

//#include "libtcc.c"
#include <string.h>
#include "libtcc.h"

TCCState *s;

//TMP TEST
//void* (*func)()
//void*
typedef void* any_ptr;
typedef any_ptr (*function_ptr)();
function_ptr
add_symbol(const char * symbol, const char * str)
{
	tcc_compile_string(s, str);
	//tcc_relocate(s, 0);//no use
	return (function_ptr) tcc_get_symbol(s, symbol);
}

void tmp_add_symbol(const char * symbol, const void * pt)
{
	tcc_add_symbol(s, symbol, pt);
}

void tmp_list_symbols(void *ctx,
    void (*symbol_cb)(void *ctx, const char *name, const void *val))
{
	tcc_list_symbols(s, ctx, symbol_cb);
}

int main(int argc, char **argv){

	char * filename = (argc>1) ? argv[1] : "-";

	s = tcc_new();

	if (!s) { return 1; }

	tcc_set_output_type(s, TCC_OUTPUT_MEMORY);

	tcc_define_symbol(s, "TCC_FFI", "1");

	tcc_set_options(s, "-nostdlib");
	tcc_set_options(s, "-nostdinc");
	tcc_set_options(s, "-L.");

	tcc_add_file(s,filename);

	tcc_add_symbol(s, "ffi", ffi);

	//TMP TEST:
	tcc_add_symbol(s, "add_symbol", add_symbol);
	tcc_add_symbol(s, "tmp_add_symbol", tmp_add_symbol);
	tcc_add_symbol(s, "tmp_list_symbols", tmp_list_symbols);

	if (tcc_relocate(s, TCC_RELOCATE_AUTO) < 0) return 2;

	//function_ptr func = tcc_get_symbol(s, "main");
	void* (*func)() = tcc_get_symbol(s, "main");

	if (!func) { return 3; }

	int rt = (int) func(argc,argv);

	tcc_delete(s);

	return rt;
}

