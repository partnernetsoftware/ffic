#ifndef libc

# ifdef TCC_FFI

extern void*(*ffi(const char* funcname, const char* libname, ...))();//<funcname> <libname> [prototype]

# else

#include <stdio.h>
#include <string.h>
//#include <stdarg.h>
#include <dlfcn.h>

//TODO play typedef?

//TODO WIN32

//TODO design stdarg/va_start/va_end etc

//typedef void* any_ptr;
//typedef void* (*function_ptr)();
void* ffi_void(){return 0;}
//function_ptr ffi(const char * funcname, const char * libname, ...)
void*(*ffi(const char* funcname, const char* libname, ...))()
{
	void* addr = 0;
	char libfilename[128] = {0};
	char * dllname = "lib%s.dylib";
	sprintf(libfilename, dllname, libname);
	void* rt_dlopen = dlopen(libfilename,RTLD_LAZY);
	if(!strcmp("c",libname)){
		//fprintf(stderr,"TODO1 to find %s.%s\n", libname, funcname);fflush(stderr);
		if(!strcmp("stderr",funcname)){
			//fprintf(stderr,"%s.%s\n", libname, funcname);fflush(stderr);
			addr = stderr;
		}else if(!strcmp("stdout",funcname)){
			//fprintf(stderr,"%s.%s\n", libname, funcname);fflush(stderr);
			addr = stdout;
		}else if(!strcmp("stdin",funcname)){
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
#endif
# define libc(f) ffi(#f,"c")
#else
# define libc(f) f
#endif

