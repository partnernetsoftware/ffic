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

int main(int argc, char **argv){

	///extern char* getenv();
	///extern int strcat(char *, const char *, unsigned long);
	///extern int printf(const char*,...);
	///char PWD[256]="-L";
	///strcat(PWD,getenv("PWD"),255);
	/////printf("PWD:%s\n",PWD);

	ffic_ptr tcc_ptr = tcc(tcc_new)();
	tcc(tcc_set_output_type)(tcc_ptr, 1/*TCC_OUTPUT_MEMORY*/);
	tcc(tcc_define_symbol)(tcc_ptr, "FFIC", "2");//for .c using ffic.h

	tcc(tcc_set_options)(tcc_ptr, "-Llib");//find .a from current by default

	tcc(tcc_set_options)(tcc_ptr, "-L.");//find .a from current by default
	tcc(tcc_set_options)(tcc_ptr, "-L..");//then ..

	tcc(tcc_set_options)(tcc_ptr, "-I.");//Include
	tcc(tcc_set_options)(tcc_ptr, "-I..");//Include

	//TODO
	//tcc(tcc_set_options)(tcc_ptr, PWD);//find .a from current by default

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
#ifdef _WIN32
	tcc(tcc_set_options)(tcc_ptr, "-D_WIN32");
#endif
#ifdef __APPLE__
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
#endif

	if(0==tcc(tcc_get_symbol)(tcc_ptr, "ffic_core"))
		tcc(tcc_add_symbol)(tcc_ptr, "ffic_core", ffic_core);

	if(0==tcc(tcc_get_symbol)(tcc_ptr, "ffic_raw"))
		tcc(tcc_add_symbol)(tcc_ptr, "ffic_raw", ffic_raw);

	if(!tcc(tcc_get_symbol)(tcc_ptr, "ffic"))
		tcc(tcc_add_symbol)(tcc_ptr, "ffic", ffic);

	//TODO compile
	//if(0==tcc(tcc_get_symbol)(tcc_ptr, "ffic_compile"))
	//	tcc(tcc_add_symbol)(tcc_ptr, "ffic_compile", tcc(tcc_compile_string));

	//tcc(tcc_add_file)(tcc_ptr,(argc>1) ? argv[1] : "-");
	if(argc>1){
		tcc(tcc_add_file)(tcc_ptr,argv[1]);
	}else{
		tcc(tcc_add_file)(tcc_ptr,"-");
	}

	//if (tcc(tcc_relocate)(tcc_ptr, (void*)1/*TCC_RELOCATE_AUTO*/) < 0) return 2;
	////int (*entry)() = tcc(tcc_get_symbol)(tcc_ptr, "main");
	//ffic_func_i entry = tcc(tcc_get_symbol)(tcc_ptr, "main");
	//if (!entry) { return 3; }
	//int rt = entry(argc>1?argc-1:argc,argc>1?(argv+1):argv);

	int rt = ((ffic_func_i)tcc(tcc_run))(tcc_ptr, argc>1?argc-1:argc,argc>1?(argv+1):argv);
	//int rt = tcc(tcc_run)(tcc_ptr, argc, argv);

	tcc(tcc_delete)(tcc_ptr);
	return rt;
}
