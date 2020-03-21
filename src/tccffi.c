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

#include "libtcc.c"

TCCState *s;

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

	if (tcc_relocate(s, TCC_RELOCATE_AUTO) < 0) return 2;

	//function_ptr func = tcc_get_symbol(s, "main");
	void* (*func)() = tcc_get_symbol(s, "main");

	if (!func) { return 3; }

	int rt = (int) func(argc,argv);

	tcc_delete(s);

	return rt;
}

