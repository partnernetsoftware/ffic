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
#endif

//@see assert.h
#define NDEBUG

#define ONE_SOURCE 1

//#include "libtcc.h"
#include "libtcc.c"

//TODO

//load program from stdin
//add symbol dl
//add more symbol
//run the program

//#include "libffi.h"//no need when using libtcc (but need to pack as symbol)
//#include "mydl.h"

//#include <stdlib.h>
//#include <stdio.h>
//#include <string.h>
//#include <assert.h>

void handle_error(void *opaque, const char *msg)
{
	fprintf(opaque, "%s\n", msg);
}

/* this function is called by the generated code */
//int add(int a, int b)
//{
//	return a + b;
//}

/* this strinc is referenced by the generated code */
//const char hello[] = "Hello World!";

//char my_program[] =
////"#include <tcclib.h>\n" /* include the "Simple libc header for TCC" */
////"#include <stdio.h>\n"
//"extern int printf(const char *format, ...);\n"
//"extern int add(int a, int b);\n"
//"#ifdef _WIN32\n" /* dynamically linked data needs 'dllimport' */
//" __attribute__((dllimport))\n"
//"#endif\n"
//"extern const char hello[];\n"
//"int fib(int n)\n"
//"{\n"
//"    if (n <= 2)\n"
//"        return 1;\n"
//"    else\n"
//"        return fib(n-1) + fib(n-2);\n"
//"}\n"
//"\n"
//"int foo(int n)\n"
//"{\n"
//"    printf(\"%s\\n\", hello);\n"
//"    printf(\"fib(%d) = %d\\n\", n, fib(n));\n"
//"    printf(\"add(%d, %d) = %d\\n\", n, 2 * n, add(n, 2 * n));\n"
//"    return 0;\n"
//"}\n";

typedef void* any_ptr;
typedef any_ptr (*function_ptr)();
#define CAST(t) *(t*)

TCCState *s;
//int test_main(int argc, char **argv)
//{
//	char * filename;
//	if(argc>1) filename = argv[1];
//	else filename = "-";//stdin default
//
//	int i;
//	//int (*func)(int,char**);
//	//void(*func)();
//	function_ptr func;
//
//	s = tcc_new();
//	if (!s) {
//		fprintf(stderr, "Could not create tcc state\n");
//		exit(1);
//	}
//
//	assert(tcc_get_error_func(s) == NULL);
//	assert(tcc_get_error_opaque(s) == NULL);
//
//	tcc_set_error_func(s, stderr, handle_error);
//
//	assert(tcc_get_error_func(s) == handle_error);
//	assert(tcc_get_error_opaque(s) == stderr);
//
//	/* if tcclib.h and libtcc1.a are not installed, where can we find them */
//	//	for (i = 1; i < argc; ++i) {
//	//		char *a = argv[i];
//	//		if (a[0] == '-') {
//	//			if (a[1] == 'B')
//	//				tcc_set_lib_path(s, a+2);
//	//			else if (a[1] == 'I')
//	//				tcc_add_include_path(s, a+2);
//	//			else if (a[1] == 'L')
//	//				tcc_add_library_path(s, a+2);
//	//		}
//	//	}
//
//	/* MUST BE CALLED before any compilation */
//	tcc_set_output_type(s, TCC_OUTPUT_MEMORY);
//
//	//	char * my_program calloc();
//	//	int len = 1024;
//	//	char line[len];
//	//	while(0!=fgets(line,len,stdin)){
//	//		strcpy( my_program
//	//	};
//	//	if (tcc_compile_string(s, my_program) == -1){
//	//		return 1;
//	//	}
//
//	//TEST bug no use, still symbol there..
//	//tcc_undefine_symbol(s,"printf");
//
//	tcc_set_options(s, "-nostdlib");
//	tcc_set_options(s, "-nostdinc");
//
//	/* as a test, we add symbols that the compiled program can use.
//		 You may also open a dll with tcc_add_dll() and use symbols from that */
//	//	tcc_add_symbol(s, "add", add);
//	//	tcc_add_symbol(s, "hello", hello);
//
//	tcc_add_symbol(s, "printf", printf);//manually push symbol
//
//	tcc_add_file(s,filename);
//
//	/* relocate the code */
//	if (tcc_relocate(s, TCC_RELOCATE_AUTO) < 0)
//		return 1;
//
//	/* get entry symbol */
//	func = tcc_get_symbol(s, "main");
//	if (!func) {
//		return 1;
//	}
//
//	/* run the code */
//	func(argc,argv);
//
//	/* delete the state */
//	tcc_delete(s);
//
//	return 0;
//}

#define c(f) ffi("c",#f)

//stub
any_ptr ffi_void(){
	//printf("ffi_void()");
}

function_ptr ffi(const char * libname, const char * funcname, ...){

	//any_ptr addr = ffi_void; //= dlsym(RTLD_DEFAULT, funcname);
	any_ptr addr = NULL;
	char libfilename[128] = {0};
	char * dllname = "lib%s.dylib";
	sprintf(libfilename, dllname, libname);
	any_ptr rt_dlopen = dlopen(libfilename,RTLD_LAZY);
	if(0==rt_dlopen){
		if(0==strcmp("c",libname)){
			addr = dlsym(RTLD_DEFAULT, funcname);
		}
	}else{
		addr = dlsym(rt_dlopen, funcname);
	}
	//printf("DEBUG libfilename=%s, addr=%d, rt_dlopen=%d\n", libfilename, (int) addr, (int)rt_dlopen);
	if(NULL==addr){
		fprintf(stderr,"ERR: not found lib(%s)\n", libname);
		return ffi_void;
	}
	return addr;
}

int main(int argc, char **argv){
	char * filename = (argc>1) ? argv[1] : "-";

	s = tcc_new();
//	if (!s) {
//		fprintf(stderr, "Could not create tcc state\n");
//		exit(1);
//	}

	/* MUST BE CALLED before any compilation */
	tcc_set_output_type(s, TCC_OUTPUT_MEMORY);

	tcc_set_options(s, "-nostdlib");
	tcc_set_options(s, "-nostdinc");

	//tcc_add_file(s,filename);
	tcc_add_file(s,filename);

	tcc_add_symbol(s, "ffi", ffi);

	//FOR QUICK DEBUG ONLY:
	tcc_add_symbol(s, "printf", printf);

	//tcc_add_symbol(s, "function_ptr", function_ptr);

//	tcc_compile_string(s, "typedef void* any_ptr;\n"
//			"typedef any_ptr (*function_ptr)();\n"
//			"extern int main(int argc, char** argv);\n"
//"extern function_ptr ffi(const char * libname, const char* funcname, ...);\n"
//"#define c(f) ffi(\"c\",#f)\n"
//"int main2(int argc, char** argv){ return main(argc,argv);}\n"
//			);
	//tcc_add_file(s,filename);
	
	if (tcc_relocate(s, TCC_RELOCATE_AUTO) < 0)
		return 1;

	function_ptr func = tcc_get_symbol(s, "main");
	//function_ptr func = tcc_get_symbol(s, "main2");
	//function_ptr func = (void(*)()) tcc_get_symbol(s, "main2");
	if (!func) { return 1; }

	int rt = (int) func(argc,argv);
	//int rt = (int) func();

	tcc_delete(s);

	return rt;
}

