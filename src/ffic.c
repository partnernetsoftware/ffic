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

// TODO move to ffic.h later
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
main (int argc, char **argv) {
    ///extern char *getenv ();
    ///extern int strcat (char *, const char *, unsigned long);
    ///char PWD[256] = "-L";
    ///strcat (PWD, getenv ("PWD"), 255);
    /////printf ("PWD:%s\n", PWD);

    ffic_ptr tcc_ptr = tcc (tcc_new) ();
    if (!tcc_ptr)
        return 0;
    tcc (tcc_set_output_type) (tcc_ptr, 1 /* TCC_OUTPUT_MEMORY */ );
    tcc (tcc_define_symbol) (tcc_ptr, "FFIC", "2");
    tcc (tcc_set_options) (tcc_ptr, "-Llib");
    tcc (tcc_set_options) (tcc_ptr, "-L.");
    tcc (tcc_set_options) (tcc_ptr, "-L..");
#ifdef _WIN32
    char Bdir[512] = {"-L"};
#else
    char Bdir[512] = {"-B"};
#endif
    int size = 500;
    //dump (Bdir, s);
    $0 (&Bdir[2], &size);
    //dump (Bdir, s);
    tcc (tcc_set_options) (tcc_ptr, Bdir);
    //TODO get the dir of argv0
        tcc (tcc_set_options) (tcc_ptr, "-I.");
    //Include
        tcc (tcc_set_options) (tcc_ptr, "-I..");
    //Include

        tcc (tcc_set_options) (tcc_ptr, "-DCONFIG_LDDIR=\".\"");
    //find.a from current by default
#ifdef _WIN32
        tcc (tcc_set_options) (tcc_ptr, "-D_WIN32");
#endif
#ifdef __APPLE__
    tcc (tcc_set_options) (tcc_ptr, "-D__APPLE__");
    tcc (tcc_set_options) (tcc_ptr, "-DTCC_TARGET_MACHO");
    tcc (tcc_set_options) (tcc_ptr, "-DTCC_TARGET_X86_64");
#elif defined(_WIN64)
    tcc (tcc_set_options) (tcc_ptr, "-D_WIN64");
    tcc (tcc_set_options) (tcc_ptr, "-DTCC_TARGET_PE");
    tcc (tcc_set_options) (tcc_ptr, "-DTCC_TARGET_X86_64");
#elif defined(_WIN32)
    tcc (tcc_set_options) (tcc_ptr, "-DTCC_TARGET_PE");
    tcc (tcc_set_options) (tcc_ptr, "-DTCC_TARGET_I386");
#endif

    if (0 == tcc (tcc_get_symbol) (tcc_ptr, "ffic_core"))
        tcc (tcc_add_symbol) (tcc_ptr, "ffic_core", ffic_core);

    if (0 == tcc (tcc_get_symbol) (tcc_ptr, "ffic_raw"))
        tcc (tcc_add_symbol) (tcc_ptr, "ffic_raw", ffic_raw);

    if (!tcc (tcc_get_symbol) (tcc_ptr, "ffic"))
        tcc (tcc_add_symbol) (tcc_ptr, "ffic", ffic);

    if (argc > 1) {
        tcc (tcc_add_file) (tcc_ptr, argv[1]);
    } else {
        tcc (tcc_add_file) (tcc_ptr, "-");
    }

    int rt = ((ffic_func_i) tcc (tcc_run)) (tcc_ptr, argc > 1 ? argc - 1 : argc, argc > 1 ? (argv + 1) : argv);
    //int rt = tcc (tcc_run) (tcc_ptr, argc, argv);

    tcc (tcc_delete) (tcc_ptr);
    return rt;
}
