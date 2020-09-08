//#ifndef FFIC
//#define FFIC 1
//#endif
//# include "ffic.h"
//#ifdef _WIN64
//# define tcc(f) ffic("libtcc64",#f)
//#elif defined(_WIN32)
//# define tcc(f) ffic("libtcc32",#f)
//#else
//# define tcc(f) ((ffic_func)ffic("libtcc",#f))
//#endif

typedef void* ffic_ptr;
typedef ffic_ptr(
//#ifdef _WIN32
		__attribute__((__stdcall__))
//#endif
		*ffic_func)();
typedef double (*ffic_func_d)();
typedef long (*ffic_func_l)();
typedef int (*ffic_func_i)();
typedef float (*ffic_func_f)();
ffic_ptr (*ffic_core(const char *libfilename,const char* funcname))()
{
	static ffic_func ffic_dlsym;
	static ffic_func ffic_dlopen;
	if(!ffic_dlsym){
#if defined(_WIN32) || defined(_WIN64)
#ifndef _WINDOWS_
		extern ffic_func GetProcAddress();
#endif
		ffic_dlsym = (ffic_func) GetProcAddress;
#else
#if defined(__APPLE__)
		extern ffic_ptr dlsym();
		ffic_dlsym = (ffic_func) dlsym;
#else
		//extern void* __libc_dlsym(void*, const char*);
		extern void* __libc_dlsym();
		ffic_dlsym = (ffic_func) __libc_dlsym;
#endif
#endif
	}
	if(!ffic_dlopen){
#if defined(_WIN32) || defined(_WIN64) 
#ifdef UNICODE
#ifndef _WINDOWS_
		extern LoadLibraryW();
#endif
		ffic_dlopen = (ffic_func) LoadLibraryW;
#else
#ifndef _WINDOWS_
		extern LoadLibraryA();
#endif
		ffic_dlopen = (ffic_func) LoadLibraryA;
#endif
#else
#if defined(__APPLE__)
		extern ffic_ptr dlopen();
		ffic_dlopen = (ffic_func) dlopen;
#else
		//extern ffic_ptr __libc_dlopen_mode(const char*, int);
		extern ffic_ptr __libc_dlopen_mode();
		ffic_dlopen = (ffic_func) __libc_dlopen_mode;
#endif
#endif
	}
	//return ffic_dlsym(ffic_dlopen(libfilename,0x100 | 0x1/*RTLD_LAZY*/), funcname);
	return ffic_dlsym(ffic_dlopen(libfilename,0x101), funcname);
}

//# define tcc(f) ffic("libtcc",#f)
# define tcc(f) ffic_core("libtcc.dylib",#f)

/*
tcc ffic_dev.c && cat tests/42.c | ./a.out
cat tests/42.c | tcc -run ffic_dev.c
*/

extern int printf(const char*,...);
int testmain(){
	printf("4444\n");
	return 0;
};
int main(int argc, char **argv){
	extern char* getenv();
	extern char* strcat();
	char PWD[256]="-L";
	strcat(PWD,getenv("PWD"));
	//printf("PWD:%s\n",PWD);
//#ifdef __APPLE__
//	printf("__APPLE__\n");
//#endif

	ffic_func tcc_new = tcc(tcc_new);
	if(!tcc_new){
		printf("failed load tcc_new\n");
		return 0;
	}
	printf("tcc_new=%ld\n",(long)tcc_new);
	ffic_ptr tcc_ptr = tcc_new();
	printf("tcc_ptr=%ld\n",(long)tcc_ptr);
	tcc(tcc_set_output_type)(tcc_ptr, 1/*TCC_OUTPUT_MEMORY*/);
	tcc(tcc_define_symbol)(tcc_ptr, "FFIC", "2");//for .c using ffic.h

	tcc(tcc_set_options)(tcc_ptr, "-Llib");//find .a from current by default

	tcc(tcc_set_options)(tcc_ptr, "-L.");//find .a from current by default
	tcc(tcc_set_options)(tcc_ptr, "-L..");//then ..

	tcc(tcc_set_options)(tcc_ptr, "-I.");//Include
	tcc(tcc_set_options)(tcc_ptr, "-I..");//Include

	tcc(tcc_set_options)(tcc_ptr, PWD);//find .a from current by default

	//TODO add the path(argv[1]) as -L...

	//extern char ** environ;
	//extern int strncmp();
	//for(ffic_string*env=environ;env && (*env);env++) {
	//	//printf("DEBUG: %s\n",*env);
	//	//if(strcmp(*env,"OS=Windows_NT")==0){ ffic_os = ffic_os_win; }
	//	//if(strcmp(*env,"COMMAND_MODE=unix2003")==0){ ffic_os = ffic_os_osx; }
	//	if(strncmp(*env,"PWD=",4)){
	//	}
  //}

	tcc(tcc_set_options)(tcc_ptr, "-DCONFIG_LDDIR=\".\"");//find .a from current by default
	//tcc(tcc_set_options)(tcc_ptr, "-DTCC_LIBTCC1=\"x86_64-osx-libtcc1.a\"");//find .a from current by default
#ifdef _WIN32
	tcc(tcc_set_options)(tcc_ptr, "-D_WIN32");
#endif
#if defined(__APPLE__)
	tcc(tcc_set_options)(tcc_ptr, "-D__APPLE__");
	tcc(tcc_set_options)(tcc_ptr, "-DTCC_TARGET_MACHO");
	tcc(tcc_set_options)(tcc_ptr, "-DTCC_TARGET_X86_64");
#elif defined(_WIN64)
	tcc(tcc_set_options)(tcc_ptr, "-D_WIN64");
	tcc(tcc_set_options)(tcc_ptr, "-DTCC_TARGET_PE");
	tcc(tcc_set_options)(tcc_ptr, "-DTCC_TARGET_X86_64");
#elif defined(_WIN32)
	tcc(tcc_set_options)(tcc_ptr, "-DTCC_TARGET_PE");
	tcc(tcc_set_options)(tcc_ptr, "-DTCC_TARGET_I386");
#else
	printf("Unknown OS ????\n");
	return 0;
#endif

	//if(0==tcc(tcc_get_symbol)(tcc_ptr, "ffic_core"))
	//	tcc(tcc_add_symbol)(tcc_ptr, "ffic_core", ffic_core);

	//if(0==tcc(tcc_get_symbol)(tcc_ptr, "ffic_raw"))
	//	tcc(tcc_add_symbol)(tcc_ptr, "ffic_raw", ffic_raw);

	//if(!tcc(tcc_get_symbol)(tcc_ptr, "ffic"))
	//	tcc(tcc_add_symbol)(tcc_ptr, "ffic", ffic);

	//TODO compile
	//if(0==tcc(tcc_get_symbol)(tcc_ptr, "ffic_compile"))
	//	tcc(tcc_add_symbol)(tcc_ptr, "ffic_compile", tcc(tcc_compile_string));

	//tcc(tcc_add_file)(tcc_ptr,(argc>1) ? argv[1] : "-");
	//printf("tcc_ptr=%ld\n",(long)tcc_ptr);
	//ffic_func_i tcc_add_file = (ffic_func_i) tcc(tcc_add_file);
	//ffic_func_i tcc_add_file_internal = (ffic_func_i) tcc(tcc_add_file_internal);
	//if(argc>1){
	//	printf("1111 %s\n",argv[1]);
	//	//tcc_add_file(tcc_ptr,argv[1]);
	//	tcc_add_file_internal(tcc_ptr,argv[1],0);
	//}else{
	//	tcc_add_file_internal(tcc_ptr,"-",0);
	//}
	
	ffic_func_i tcc_run = (ffic_func_i) tcc(tcc_run);
	printf("0000 tcc_run=%ld\n",(long)tcc_run);

	
	//if (tcc(tcc_relocate)(tcc_ptr, (void*)1/*TCC_RELOCATE_AUTO*/) < 0) return 2;

	//tcc(tcc_add_symbol)(tcc_ptr, "main", testmain);

	ffic_func_i tcc_compile_string = (ffic_func_i) tcc(tcc_compile_string);
	printf("1111 tcc_compile_string=%ld\n",(long)tcc_compile_string);
	//tcc_compile_string(tcc_ptr, 1/*AFF_TYPE_C*/, "void main(){}",-1);
	tcc_compile_string(tcc_ptr, "int main(){return 0;}");
	printf("2222\n");

	//ffic_func_i tcc_run = (ffic_func_i) ffic_core("libtcc.dylib","tcc_run");
	//if (tcc(tcc_relocate)(tcc_ptr, (void*)1/*TCC_RELOCATE_AUTO*/) < 0) return 2;
	////int (*entry)() = tcc(tcc_get_symbol)(tcc_ptr, "main");
	//ffic_func_i entry = tcc(tcc_get_symbol)(tcc_ptr, "main");
	//if (!entry) { return 3; }
	//int rt = entry(argc>1?argc-1:argc,argc>1?(argv+1):argv);

	//int rt = ((ffic_func_i)ffic("libtcc","tcc_run"))(tcc_ptr, argc>1?argc-1:argc,argc>1?(argv+1):argv);
	int rt = tcc_run(tcc_ptr, argc>1?argc-1:argc,argc>1?(argv+1):argv);
	//int rt = ((ffic_func_i)ffic_core("libtcc.dylib","tcc_run"))(tcc_ptr, argc,argv);
	//int rt = tcc(tcc_run)(tcc_ptr, argc, argv);

	tcc(tcc_delete)(tcc_ptr);
	return rt;
}

