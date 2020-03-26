#ifdef TCC_FFI
# if TCC_FFI==2
extern void*(*ffi(const char*, const char*, ...))();
#  define libc(f) ffi("c",#f)
# elif TCC_FFI==1
#  if defined(_WIN32) || defined(_WIN64)
//TODO win headers are conplicated, will remove stdio.h later
#ifndef _MSVCRT_
#   define _MSVCRT_
#endif
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
#  if defined(_WIN32) || defined(_WIN64)
#ifdef UNICODE
extern void* LoadLibraryW(const char*);
void *dlopen(const char *name, int i){ return (void*) LoadLibraryW(name); }
#else
extern void* LoadLibraryA(const char*);
void *dlopen(const char *name, int i){ return (void*) LoadLibraryA(name); }
#endif
extern void* GetProcAddress(void*,const char*);
#define ffi_dlsym GetProcAddress
#   else
extern void* dlopen(const char *,int);
extern void *dlsym(void *, const char *);
#define ffi_dlsym dlsym
#   endif
#define ffi_dlopen dlopen 
//#define RTLD_GLOBAL     0x100
//#define RTLD_DEFAULT     0x0
//#define RTLD_LAZY 0x1
FILE* ffi_std(int i){
	FILE * std[3]={stdin,stdout,stderr};
	return std[i];
}
void* ffi_void(){return 0;};
void*(*ffi_raw(const char* libfilename, const char* funcname, ...))()
{
	//fprintf(stderr,"DEBUG ffi() %s.%s\n", libfilename, funcname);fflush(stderr);
	void* rt_dlopen = (void*) ffi_dlopen(libfilename,1/*RTLD_LAZY*/);
	void*	addr = ffi_dlsym(rt_dlopen, funcname);
	if(0==addr){
		fprintf(stderr,"ERR: Not found %s.%s\n", libfilename, funcname);fflush(stderr);
		return ffi_void;
	}
	return addr;
}
void*(*ffi(const char* libname, const char* funcname, ...))()
{
	void* addr = 0;
	char libfilename[128] = {0};
	sprintf(libfilename,
			"%s%s",
			libname,
#if defined(__APPLE__)
			".dylib"
//#elif defined(_WIN64)
//			"64.dll"
#elif defined(_WIN32) || defined(_WIN64)
//			"32.dll"
			".dll"
#else
			".so"
#endif
			);
	if(!strcmp("c",libname)){
		if(!strcmp("stderr",funcname)){
			addr = stderr;
		}else if(!strcmp("stdout",funcname)){
			addr = stdout;
		}else if(!strcmp("stdin",funcname)){
			addr = stdin;
		}else{
			addr = ffi_raw(
#if defined(__APPLE__)
					"libc.dylib"
#elif defined(_WIN64)
					"msvcrt.dll"
#elif defined(_WIN32) || defined(_WIN64)
					"msvcrt.dll"
#else
					"libc.so"
#endif
					,funcname);
		}
	}else{
		addr = ffi_raw(libfilename,funcname);
	}
	//	void* rt_dlopen = (void*) ffi_dlopen(libfilename,1/*RTLD_LAZY*/);
	//	if(!strcmp("c",libname)){
	//		if(!strcmp("stderr",funcname)){
	//			addr = stderr;
	//		}else if(!strcmp("stdout",funcname)){
	//			addr = stdout;
	//		}else if(!strcmp("stdin",funcname)){
	//			addr = stdin;
	//		}else{
	//			addr = ffi_dlsym(rt_dlopen, funcname);
	//		}
	//	}else{
	//		addr = ffi_dlsym(rt_dlopen, funcname);
	//	}
	//	if(0==addr){
	//		fprintf(stderr,"ERR: Not found %s.%s\n", libfilename, funcname);fflush(stderr);
	//		return ffi_void;
	//	}
	return addr;
}
#  define libc(f) ffi("c",#f)
# endif
#endif
#ifndef libc
# define libc(f) f
#endif
