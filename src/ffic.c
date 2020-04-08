#ifndef FFIC
#define FFIC 1
#endif
#include "ffic.h"
#define tcc(f) ffic("libtcc",#f)
#define anyptr void*

int main(int argc, char **argv, char **envp){

	ffic_setup(envp);

	anyptr tcc_ptr = tcc(tcc_new)();
	if (!tcc_ptr) {
		//tcc_error("Unable new tcc, memory full?")
		return 1; }

	tcc(tcc_set_output_type)(tcc_ptr, 1/*TCC_OUTPUT_MEMORY*/);

	tcc(tcc_define_symbol)(tcc_ptr, "FFIC", "2");

	tcc(tcc_set_options)(tcc_ptr, "-nostdinc");
#ifdef _WIN32
	//tcc(tcc_set_options)(tcc_ptr, "-nostdlib");
	tcc(tcc_set_options)(tcc_ptr, "-D_WIN32");
	tcc(tcc_set_options)(tcc_ptr, "-DTCC_TARGET_PE");
#else
	//tcc(tcc_set_options)(tcc_ptr, "-nostdlib");
#endif
#ifdef _WIN64
	tcc(tcc_set_options)(tcc_ptr, "-D_WIN64");
#endif
#ifdef _APPLE_
	tcc(tcc_set_options)(tcc_ptr, "-D_APPLE_");
	tcc(tcc_set_options)(tcc_ptr, "-DTCC_TARGET_MACHO");
#endif
	//tcc(tcc_set_options)(tcc_ptr, "-run");

	if(0==tcc(tcc_get_symbol)(tcc_ptr, "ffic"))
		tcc(tcc_add_symbol)(tcc_ptr, "ffic", ffic);

	if(0==tcc(tcc_get_symbol)(tcc_ptr, "ffic_raw"))
		tcc(tcc_add_symbol)(tcc_ptr, "ffic_raw", ffic_raw);

	tcc(tcc_add_file)(tcc_ptr,(argc>1) ? argv[1] : "-");

	if (tcc(tcc_relocate)(tcc_ptr, 1/*TCC_RELOCATE_AUTO*/) < 0) return 2;
	anyptr (*entry)() = tcc(tcc_get_symbol)(tcc_ptr, "main");
	if (!entry) { return 3; }
	int rt = (int) entry(argc>1?argc-1:argc,argc>1?(argv+1):argv);

	//int rt = (int) tcc(tcc_run)(tcc_ptr, argc>1?argc-1:argc, argc>1?argv++:argv);

	tcc(tcc_delete)(tcc_ptr);
	return rt;
}
