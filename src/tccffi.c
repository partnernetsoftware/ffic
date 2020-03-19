// gcc tccffi.c -I ../../tinycc/ -o tccffi && ./tccffi
// tcc -run tccffi.c -I ../../tinycc/ 

#ifdef __APPLE__
# ifndef TCC_TARGET_MACHO
#  define TCC_TARGET_MACHO
# endif
#elif defined(WIN32)
# ifndef TCC_TARGET_PE
#  define TCC_TARGET_PE
# endif
#else
//default ELF
#endif

//for assert.h
#define NDEBUG

#include "tccffi.h"

#include "libtcc.c"

TCCState *s;

int main(int argc, char **argv){
	char * filename = (argc>1) ? argv[1] : "-";

	s = tcc_new();
	if (!s) {
		fprintf(stderr, "Could not create tcc state\n");
		exit(1);
	}

	tcc_set_output_type(s, TCC_OUTPUT_MEMORY);

	tcc_set_options(s, "-nostdlib");
	tcc_set_options(s, "-nostdinc");
	tcc_set_options(s, "-L.");

	tcc_add_file(s,filename);

	tcc_add_symbol(s, "ffi", ffi);

	//FOR QUICK DEBUG ONLY:
	//tcc_add_symbol(s, "out", printf);

	if (tcc_relocate(s, TCC_RELOCATE_AUTO) < 0) return 1;

	function_ptr func = tcc_get_symbol(s, "main");

	if (!func) { return 1; }

	int rt = (int) func(argc,argv);

	tcc_delete(s);

	return rt;
}

