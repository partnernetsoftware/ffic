#ifndef FFIC
#define FFIC 1
#endif

#ifdef ONE_SOURCE
# include "tcc.h"
# include "libtcc.c"
# include "ffic.h"
# define tcc(f) f
#else
# include "ffic.h"
#ifdef _WIN64
# define tcc(f) ffic("libtcc64",#f)
#elif defined(_WIN32)
# define tcc(f) ffic("libtcc32",#f)
#else
# define tcc(f) ffic("libtcc",#f)
#endif
#endif

int main(int argc, char **argv, char **envp){

	ffic_ptr tcc_ptr = tcc(tcc_new)();
	tcc(tcc_set_output_type)(tcc_ptr, 1/*TCC_OUTPUT_MEMORY*/);
	tcc(tcc_define_symbol)(tcc_ptr, "FFIC", "2");//for .c using ffic.h
	tcc(tcc_set_options)(tcc_ptr, "-L.");//find .a from current by default
	tcc(tcc_set_options)(tcc_ptr, "-DCONFIG_LDDIR=\".\"");//find .a from current by default
#ifdef _WIN32
	tcc(tcc_set_options)(tcc_ptr, "-D_WIN32");
#endif
#ifdef _APPLE_
	tcc(tcc_set_options)(tcc_ptr, "-D_APPLE_");
	tcc(tcc_set_options)(tcc_ptr, "-DTCC_TARGET_MACHO");
#elif defined(_WIN64)
	tcc(tcc_set_options)(tcc_ptr, "-D_WIN64");
	tcc(tcc_set_options)(tcc_ptr, "-DTCC_TARGET_PE");
	tcc(tcc_set_options)(tcc_ptr, "-DTCC_TARGET_X86_64");
#elif defined(_WIN32)
	tcc(tcc_set_options)(tcc_ptr, "-DTCC_TARGET_PE");
	tcc(tcc_set_options)(tcc_ptr, "-DTCC_TARGET_I386");
#endif

	if(0==tcc(tcc_get_symbol)(tcc_ptr, "ffic"))
		tcc(tcc_add_symbol)(tcc_ptr, "ffic", ffic);

	if(0==tcc(tcc_get_symbol)(tcc_ptr, "ffic_raw"))
		tcc(tcc_add_symbol)(tcc_ptr, "ffic_raw", ffic_raw);

	tcc(tcc_add_file)(tcc_ptr,(argc>1) ? argv[1] : "-");

	if (tcc(tcc_relocate)(tcc_ptr, (void*)1/*TCC_RELOCATE_AUTO*/) < 0) return 2;

	int (*entry)() = tcc(tcc_get_symbol)(tcc_ptr, "main");
	if (!entry) { return 3; }
	int rt = (int) entry(argc>1?argc-1:argc,argc>1?(argv+1):argv);
	tcc(tcc_delete)(tcc_ptr);
	return rt;
}
