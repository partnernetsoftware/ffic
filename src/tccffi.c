#ifndef TCC_FFI
#define TCC_FFI 1
#endif
#include "tccffi.h"
struct TCCState;
typedef struct TCCState TCCState;
TCCState *s;
#define tcc(f) ffi("libtcc",#f)

int main(int argc, char **argv){
	char * filename = (argc>1) ? argv[1] : "-";
	s = tcc(tcc_new)();
	if (!s) { return 1; }
	tcc(tcc_set_output_type)(s, 1/*TCC_OUTPUT_MEMORY*/);
	tcc(tcc_define_symbol)(s, "TCC_FFI", "2");
	tcc(tcc_set_options)(s, "-nostdlib");
	tcc(tcc_set_options)(s, "-nostdinc");
	tcc(tcc_set_options)(s, "-L.");
	tcc(tcc_add_symbol)(s, "ffi", ffi);
	tcc(tcc_add_symbol)(s, "ffi_raw", ffi_raw);
	tcc(tcc_add_file)(s,filename);

	if (tcc(tcc_relocate)(s, 1/*TCC_RELOCATE_AUTO*/) < 0) return 2;
	void* (*entry)() = tcc(tcc_get_symbol)(s, "main");
	if (!entry) { return 3; }
	int rt = (int) entry(argc,argv);
	tcc(tcc_delete)(s);
	return rt;
}
