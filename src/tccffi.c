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

//for assert.h
#define NDEBUG

#define ONE_SOURCE 1

#include "libtcc.c"

typedef void* any_ptr;
typedef any_ptr (*function_ptr)();

TCCState *s;

//stub
any_ptr ffi_void(){return 0;};

function_ptr ffi(const char * funcname, const char * libname, ...){
	//any_ptr addr = ffi_void; //= dlsym(RTLD_DEFAULT, funcname);
	any_ptr addr = NULL;
	char libfilename[128] = {0};
	char * dllname = "lib%s.dylib";
	sprintf(libfilename, dllname, libname);
	//printf("TMP libfilename=%s\n",libfilename);
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
		fprintf(stderr,"ERR: Not found %s.%s\n", libname, funcname);fflush(stderr);
		return ffi_void;
	}
	return addr;
}

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

