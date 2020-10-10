#ifndef FFIC
#define FFIC 1
#endif

#ifdef ONE_SOURCE //static
#include "tcc.h"
#include "libtcc.c"
#include "ffic.h"
#define tcc(f) f
#else //
#error no longer maintain w- ONE_SOURCE
//#include "ffic.h"
//#ifdef _WIN64
//#define tcc(f) ffic("libtcc64", #f)
//#elif defined(_WIN32)
//#define tcc(f) ffic("libtcc32", #f)
//#else
//#define tcc(f) ffic("libtcc", #f)
//#endif
//#define tcc(f) ffic( (sizeof(void*)==4)?"libtcc32":"libtcc64", #f)
#endif

//GET THE PATH OF THIS PROGRAM
char ffic_dir_sep =
#ifdef _WIN32
		'\\'
#else
		'/'
#endif
		;
#define dump(v, t) printf(#v "=%" #t "\n", v)
//WARN: input will be changed:
void ffic_dirname(char *path)
{
	extern char *strrchr(const char *, int);
	char *basename = strrchr(path, ffic_dir_sep);
	//if (basename && !(*(basename + 1))) //remove if found
	//	*basename = 0;
	if(basename)*basename=0;
}
void ffic_0(char *path, int *p_size)
{
#ifdef _WIN32
	void(__attribute__((__stdcall__)) * c_GetModuleFileName)();
	c_GetModuleFileName = (typeof(c_GetModuleFileName))ffic("kernel32", "GetModuleFileNameA");
	c_GetModuleFileName(0, path, p_size);
#else
#ifdef __APPLE__
	void (*c___NSGetExecutablePath)(char *, int *) = ffic("libc", "_NSGetExecutablePath");
	c___NSGetExecutablePath(path, p_size);
#else
	//extern void strcpy(char *, char *);
	strcpy(path, "./"); //TODO !!!... linux using /proc/self
#endif
#endif
	ffic_dirname(path);
}

//#define $decl(n,t) t n
//#define $use(c,m,t) (t) ffic(#c,#m)
//#define $linkx(c,m) c##_##m = $use(c,m,typeof(c##_##m))
#define $var(c,m) c##_##m
#define $use(c,m,t) (t) tcc(m)
#define $import(c,m,t) t $var(c,m) = $use(c,m,t)
extern int printf(const char *, ...);
int main(int argc, char **argv, char **envp)
{
	$import(tcc,tcc_new,ffic_func);
	$import(tcc,tcc_set_output_type,ffic_func);
	$import(tcc,tcc_define_symbol,ffic_func);
	$import(tcc,tcc_set_options,ffic_func);
	$import(tcc,tcc_get_symbol,ffic_func);
	$import(tcc,tcc_add_symbol,ffic_func);
	$import(tcc,tcc_add_file,ffic_func);
	$import(tcc,tcc_run,ffic_func_i);
	$import(tcc,tcc_delete,ffic_func);
	$import(tcc,tcc_relocate,ffic_func_i);

	ffic_ptr tcc_ptr = tcc_tcc_new();
	if (!tcc_ptr)
		return 0;
	tcc_tcc_set_output_type(tcc_ptr, 1 /* TCC_OUTPUT_MEMORY */);
	tcc_tcc_define_symbol(tcc_ptr, "FFIC", "2");
	tcc_tcc_set_options(tcc_ptr, "-Llib");
	tcc_tcc_set_options(tcc_ptr, "-L.");
	tcc_tcc_set_options(tcc_ptr, "-L..");
#ifdef _WIN32
	char Bdir[512] = {"-L"};
#else
	char Bdir[512] = {"-B"};
#endif
	int size = 500;
	ffic_0(&Bdir[2], &size);
	//dump(Bdir,s);
	tcc_tcc_set_options(tcc_ptr, Bdir);
	tcc_tcc_set_options(tcc_ptr, "-I.");
	tcc_tcc_set_options(tcc_ptr, "-I..");
	tcc_tcc_set_options(tcc_ptr, "-DCONFIG_LDDIR=\".\"");
#ifdef __APPLE__
	tcc_tcc_set_options(tcc_ptr, "-D__APPLE__");
	tcc_tcc_set_options(tcc_ptr, "-DTCC_TARGET_MACHO");
	tcc_tcc_set_options(tcc_ptr, "-DTCC_TARGET_X86_64");
#elif defined(_WIN64)
	tcc_tcc_set_options(tcc_ptr, "-D_WIN64");
	tcc_tcc_set_options(tcc_ptr, "-DTCC_TARGET_PE");
	tcc_tcc_set_options(tcc_ptr, "-DTCC_TARGET_X86_64");
#elif defined(_WIN32)
	tcc_tcc_set_options(tcc_ptr, "-DTCC_TARGET_PE");
	tcc_tcc_set_options(tcc_ptr, "-DTCC_TARGET_I386");
	tcc_tcc_add_symbol(tcc_ptr, "__udivdi3", __udivdi3);
	tcc_tcc_add_symbol(tcc_ptr, "__umoddi3", __umoddi3);
	extern void *(*__chkstk)(void *); //TODO
	tcc_tcc_add_symbol(tcc_ptr, "__chkstk", __chkstk);
	//tcc_tcc_add_symbol(tcc_ptr,"alloca",alloca);
#else
	//TODO tcc_add_symbol(?)
#endif
#ifdef _WIN32
	tcc_tcc_set_options(tcc_ptr, "-D_WIN32");
#endif

	if (!tcc_tcc_get_symbol(tcc_ptr, "ffic_core"))
		tcc_tcc_add_symbol(tcc_ptr, "ffic_core", ffic_core);

	if (!tcc_tcc_get_symbol(tcc_ptr, "ffic_raw"))
		tcc_tcc_add_symbol(tcc_ptr, "ffic_raw", ffic_raw);

	if (!tcc_tcc_get_symbol(tcc_ptr, "ffic"))
		tcc_tcc_add_symbol(tcc_ptr, "ffic", ffic);

	if (argc > 1)
	{
		//get path of the argv1
#ifdef _WIN32
		char Bdir2[512] = {"-L"};
#else
		char Bdir2[512] = {"-B"};
#endif
		int size = 500;
		//extern void strcpy(char *, char *);
		strcpy(&Bdir2[2],argv[1]);
		ffic_dirname(Bdir2);
		tcc_tcc_set_options(tcc_ptr, Bdir2);
		tcc_tcc_add_file(tcc_ptr, argv[1]);
	}
	else
	{
		tcc_tcc_add_file(tcc_ptr, "-");
	}

#if 1
	if (tcc_tcc_relocate(tcc_ptr, (void *)1 /*TCC_RELOCATE_AUTO*/) < 0)
		return 2;
	int (*entry)() = tcc_tcc_get_symbol(tcc_ptr, "main");
	int rt = entry(argc > 1 ? argc - 1 : argc, argc > 1 ? (argv + 1) : argv, envp);
#else
	int rt = tcc_tcc_run(tcc_ptr, argc > 1 ? argc - 1 : argc, argc > 1 ? (argv + 1) : argv);
#endif
	tcc_tcc_delete(tcc_ptr);
	return rt;
}
