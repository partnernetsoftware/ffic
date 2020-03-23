#ifdef TCC_FFI
# if TCC_FFI==2
   extern void*(*ffi(const char*, const char*, ...))();
#  define libc(f) ffi("c",#f)
# elif TCC_FFI==1
#  if defined(_WIN32) || defined(_WIN64)
#   define _MSVCRT_
#   include <stdio.h>
#  elif defined(__APPLE__)
     typedef struct __FILE FILE;
#    define stdin __stdinp
#    define stdout __stdoutp
#    define stderr __stderrp
     extern FILE *stdin;	
     extern FILE *stdout;
     extern FILE *stderr;
#   else
     typedef struct __FILE FILE;
#    define stdin stdin
#    define stdout stdout
#    define stderr stderr
     extern FILE *stdin;	
     extern FILE *stdout;
     extern FILE *stderr;
#   endif
    int sprintf(char *str, const char *format, ...);
    int fprintf(FILE *stream, const char *format, ...);
    int fflush(FILE *stream);
    extern int strcmp(const char*,const char*);
#   ifdef _WIN32
     extern void* LoadLibraryA(const char*);
     extern void* GetProcAddress(void*,const char*);
		 void *dlopen(const char *name, int i){ return (void*) LoadLibraryA(name); }
		 void * dlsym(void * handle, const char * name) { return (void*) GetProcAddress(handle,name); }
#   else
		 extern void *dlopen(const char *, int);
		 extern void *dlsym(void *, const char *);
#   endif
		 void* ffi_void(){return 0;};
     void*(*ffi(const char* libname, const char* funcname, ...))()
{
	void* addr = 0;
	char libfilename[128] = {0};
	sprintf(libfilename,
			"lib%s%s",
			libname,
#if defined(__APPLE__)
".dylib"
#elif defined(_WIN64)
"64.dll"
#elif defined(_WIN32) || defined(_WIN64)
"32.dll"
#else
".so"
#endif
			);
	void* rt_dlopen = dlopen(libfilename,1/*RTLD_LAZY*/);
	if(!strcmp("c",libname)){
		if(!strcmp("stderr",funcname)){
			addr = stderr;
		}else if(!strcmp("stdout",funcname)){
			addr = stdout;
		}else if(!strcmp("stdin",funcname)){
			addr = stdin;
		}else{
			addr = dlsym(rt_dlopen, funcname);
		}
	}else{
		addr = dlsym(rt_dlopen, funcname);
	}
	if(0==addr){
		fprintf(stderr,"ERR: Not found %s.%s\n", libfilename, funcname);fflush(stderr);
		return ffi_void;
	}
	return addr;
}
#  define libc(f) ffi("c",#f)
# else //}{
#  define libc(f) f
# endif //}
#else //}{
# define libc(f) f
#endif //}
