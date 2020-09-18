#ifndef FFIC
#define FFIC 1
#endif

#ifdef ONE_SOURCE
#include "tcc.h"
#include "libtcc.c"
#include "ffic.h"
#define tcc(f) f
#else
#include "ffic.h"
#ifdef _WIN64
#define tcc(f) ffic("libtcc64",#f)
#elif defined(_WIN32)
#define tcc(f) ffic("libtcc32",#f)
#else
#define tcc(f) ffic("libtcc",#f)
#endif
#endif

void
$0 (char *path, int *p_size) {
#ifdef _WIN32
	void (__attribute__ ((__stdcall__)) * c_GetModuleFileName) ();
	c_GetModuleFileName = (typeof (c_GetModuleFileName)) ffic ("kernel32", "GetModuleFileNameA");
	c_GetModuleFileName (0, path, p_size);
#else
#ifdef __APPLE__
	void (*c___NSGetExecutablePath) (char *, int *)= ffic ("libc", "_NSGetExecutablePath");
	c___NSGetExecutablePath (path, p_size);
#endif
#endif
	extern char *strrchr (const char *, int);
	char *basename = strrchr (path,
#ifdef _WIN32
			'\\'
#else
			'/'
#endif
			);
	if (basename && *(basename + 1) != 0) {
		*basename = 0;
	}
}

#define dump(v,t) printf(#v "=%" #t "\n", v)
extern int printf (const char *,...);
int
main (int argc, char **argv, char **envp) {
	//TODO make list - macro:
	const struct {
		ffic_func tcc_new;
		ffic_func tcc_set_output_type;
		ffic_func tcc_define_symbol;
		ffic_func tcc_set_options;
		ffic_func tcc_get_symbol;
		ffic_func tcc_add_symbol;
		ffic_func tcc_add_file;
		ffic_func_i tcc_run;
		ffic_func tcc_delete;
		ffic_func_i tcc_relocate;
	}      _tcc = {
		(ffic_func) tcc (tcc_new),
		(ffic_func) tcc (tcc_set_output_type),
		(ffic_func) tcc (tcc_define_symbol),
		(ffic_func) tcc (tcc_set_options),
		(ffic_func) tcc (tcc_get_symbol),
		(ffic_func) tcc (tcc_add_symbol),
		(ffic_func) tcc (tcc_add_file),
		(ffic_func_i) tcc (tcc_run),
		(ffic_func) tcc (tcc_delete),
		(ffic_func_i) tcc (tcc_relocate),
	};
	ffic_ptr tcc_ptr = _tcc.tcc_new ();
	if (!tcc_ptr)
		return 0;
	_tcc.tcc_set_output_type (tcc_ptr, 1 /* TCC_OUTPUT_MEMORY */ );
	_tcc.tcc_define_symbol (tcc_ptr, "FFIC", "2");
	_tcc.tcc_set_options (tcc_ptr, "-Llib");
	_tcc.tcc_set_options (tcc_ptr, "-L.");
	_tcc.tcc_set_options (tcc_ptr, "-L..");
#ifdef _WIN32
	char Bdir[512] = {"-L"};
#else
	char Bdir[512] = {"-B"};
#endif
	int size = 500;
	$0 (&Bdir[2], &size);
	_tcc.tcc_set_options (tcc_ptr, Bdir);
	_tcc.tcc_set_options (tcc_ptr, "-I.");
	_tcc.tcc_set_options (tcc_ptr, "-I..");
	_tcc.tcc_set_options (tcc_ptr, "-DCONFIG_LDDIR=\".\"");
#ifdef __APPLE__
	_tcc.tcc_set_options (tcc_ptr, "-D__APPLE__");
	_tcc.tcc_set_options (tcc_ptr, "-DTCC_TARGET_MACHO");
	_tcc.tcc_set_options (tcc_ptr, "-DTCC_TARGET_X86_64");
#elif defined(_WIN64)
	_tcc.tcc_set_options (tcc_ptr, "-D_WIN64");
	_tcc.tcc_set_options (tcc_ptr, "-DTCC_TARGET_PE");
	_tcc.tcc_set_options (tcc_ptr, "-DTCC_TARGET_X86_64");
#elif defined(_WIN32)
	_tcc.tcc_set_options (tcc_ptr, "-DTCC_TARGET_PE");
	_tcc.tcc_set_options (tcc_ptr, "-DTCC_TARGET_I386");
#endif
#ifdef _WIN32
	_tcc.tcc_set_options (tcc_ptr, "-D_WIN32");
	_tcc.tcc_add_symbol(tcc_ptr,"alloca",alloca);
	extern void*(*__chkstk)();
	_tcc.tcc_add_symbol(tcc_ptr,"__chkstk",__chkstk);
#endif

	if (0 == _tcc.tcc_get_symbol (tcc_ptr, "ffic_core"))
		_tcc.tcc_add_symbol (tcc_ptr, "ffic_core", ffic_core);

	if (0 == _tcc.tcc_get_symbol (tcc_ptr, "ffic_raw"))
		_tcc.tcc_add_symbol (tcc_ptr, "ffic_raw", ffic_raw);

	if (!_tcc.tcc_get_symbol (tcc_ptr, "ffic"))
		_tcc.tcc_add_symbol (tcc_ptr, "ffic", ffic);

	if (argc > 1) {
		_tcc.tcc_add_file (tcc_ptr, argv[1]);
	} else {
		_tcc.tcc_add_file (tcc_ptr, "-");
	}

	if ( _tcc.tcc_relocate (tcc_ptr, (void*)1/*TCC_RELOCATE_AUTO*/) < 0) return 2;
	int (*entry)() = _tcc.tcc_get_symbol(tcc_ptr, "main");
	int rt = entry( argc > 1 ? argc - 1 : argc, argc > 1 ? (argv + 1) : argv, envp);

	//int rt = _tcc.tcc_run (tcc_ptr, argc > 1 ? argc - 1 : argc, argc > 1 ? (argv + 1) : argv);
	_tcc.tcc_delete (tcc_ptr);
	return rt;
}
int
runmain (int argc, char **argv, char ** envp) {
	return main(argc,argv,envp);
}
