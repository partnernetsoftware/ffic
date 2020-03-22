#ifndef TCC_FFI
#define TCC_FFI 1
#endif
#include "tccffi.h"

struct TCCState;

typedef struct TCCState TCCState;

TCCState *s;

//void ffi_list_symbols( void *ctx, void (*symbol_cb)(void *ctx, const char *name, const void *val))
void ffi_list_symbols(void *ctx, void(*symbol_cb)())
{
	ffi("tcc_list_symbols","tcc")(s,ctx,symbol_cb);
}

int main(int argc, char **argv){

	char * filename = (argc>1) ? argv[1] : "-";

	s = ffi("tcc_new","tcc")();

	if (!s) { return 1; }

	ffi("tcc_set_output_type","tcc")(s, 1/*TCC_OUTPUT_MEMORY*/);

	ffi("tcc_define_symbol","tcc")(s, "TCC_FFI", "2");

	ffi("tcc_set_options","tcc")(s, "-nostdlib");
	ffi("tcc_set_options","tcc")(s, "-nostdinc");
	ffi("tcc_set_options","tcc")(s, "-L.");

	ffi("tcc_add_file","tcc")(s,filename);

	ffi("tcc_add_symbol","tcc")(s, "ffi", ffi);
	ffi("tcc_add_symbol","tcc")(s, "ffi_list_symbols", ffi_list_symbols);

	if (ffi("tcc_relocate","tcc")(s, 1/*TCC_RELOCATE_AUTO*/) < 0) return 2;

	void* (*entry)() = ffi("tcc_get_symbol","tcc")(s, "main");

	if (!entry) { return 3; }

	int rt = (int) entry(argc,argv);

	ffi("tcc_delete","tcc")(s);

	return rt;
}
