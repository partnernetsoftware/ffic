//extern void*(*ffi(const char* funcname, const char* libname, ...))();//<funcname> <libname> [prototype]

#include <stdio.h>
#include <stdarg.h>
#include <dlfcn.h>

typedef void* any_ptr;
typedef any_ptr (*function_ptr)();
any_ptr ffi_void(){return 0;}
function_ptr ffi(const char * funcname, const char * libname, ...){
	any_ptr addr = 0;
	char libfilename[128] = {0};
	char * dllname = "lib%s.dylib";
	sprintf(libfilename, dllname, libname);
	any_ptr rt_dlopen = dlopen(libfilename,RTLD_LAZY);
	if(0==strcmp("c",libname)){
		//fprintf(stderr,"TODO1 to find %s.%s\n", libname, funcname);fflush(stderr);
		if(0==strcmp("stderr",funcname)){
			//fprintf(stderr,"%s.%s\n", libname, funcname);fflush(stderr);
			addr = stderr;
		}else if(0==strcmp("stdout",funcname)){
			//fprintf(stderr,"%s.%s\n", libname, funcname);fflush(stderr);
			addr = stdout;
		}else if(0==strcmp("stdin",funcname)){
			//fprintf(stderr,"%s.%s\n", libname, funcname);fflush(stderr);
			addr = stdin;
			//		}else if(0==strcmp("va_start",funcname)){
			//			addr = va_start;
			//		}else if(0==strcmp("va_end",funcname)){
			//			addr = va_end;
	}else{
		//fprintf(stderr,"TODO4 to find %s.%s\n", libname, funcname);fflush(stderr);
		addr = dlsym(RTLD_DEFAULT, funcname);
	}
	}else{
		//fprintf(stderr,"TODO2 find %s.%s\n", libname, funcname);fflush(stderr);
		addr = dlsym(rt_dlopen, funcname);
	}
	if(0==addr){
		fprintf(stderr,"ERR: Not found %s.%s\n", libname, funcname);fflush(stderr);
		return ffi_void;
	}
	return addr;
}
# define libc(f) ffi(#f,"c")

