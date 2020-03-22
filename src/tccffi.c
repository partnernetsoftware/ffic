// gcc tccffi.c -I ../../tinycc/ -o tccffi && ./tccffi
// tcc -run tccffi.c -I ../../tinycc/ 

#ifndef TCC_FFI
#define TCC_FFI 1
#endif

#include "tccffi.h"

struct TCCState;

typedef struct TCCState TCCState;

TCCState *s;

int main(int argc, char **argv){

	char * filename = (argc>1) ? argv[1] : "-";

	s = ffi("tcc_new","tcc")();

	if (!s) { return 1; }

	//tcc_set_output_type(s, TCC_OUTPUT_MEMORY);
	//ffi("tcc_set_output_type","tcc")(s, TCC_OUTPUT_MEMORY);
	ffi("tcc_set_output_type","tcc")(s, 1);

	ffi("tcc_define_symbol","tcc")(s, "TCC_FFI", "2");

	ffi("tcc_set_options","tcc")(s, "-nostdlib");
	ffi("tcc_set_options","tcc")(s, "-nostdinc");
	ffi("tcc_set_options","tcc")(s, "-L.");

	ffi("tcc_add_file","tcc")(s,filename);

	//TODO make my_ffi
	//tcc_add_symbol(s, "ffi", my_ffi);
	ffi("tcc_add_symbol","tcc")(s, "ffi", ffi);

	//if (ffi("tcc_relocate","tcc")(s, TCC_RELOCATE_AUTO) < 0) return 2;
	if (ffi("tcc_relocate","tcc")(s, 1) < 0) return 2;

	//function_ptr entry = tcc_get_symbol(s, "main");
	void* (*entry)() = ffi("tcc_get_symbol","tcc")(s, "main");

	if (!entry) { return 3; }

	int rt = (int) entry(argc,argv);

	ffi("tcc_delete","tcc")(s);

	return rt;
}

