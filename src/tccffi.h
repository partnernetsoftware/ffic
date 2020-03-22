#ifdef TCC_FFI

# if TCC_FFI==2
//extern void*(*ffi(const char* funcname, const char* libname, ...))();//<funcname> <libname> [prototype]
extern void*(*ffi(const char*, const char*, ...))();//<funcname> <libname> [prototype]
#  define libc(f) ffi(#f,"c")

# elif TCC_FFI==1

//#include <stdio.h>

#if defined(_WIN32) || defined(_WIN64)

//TODO improve for win later..

#define _MSVCRT_

#include <stdio.h>

//  struct _iobuf {
//    char *_ptr;
//    int _cnt;
//    char *_base;
//    int _flag;
//    int _file;
//    int _charbuf;
//    int _bufsiz;
//    char *_tmpfname;
//  };
//  typedef struct _iobuf FILE;
//
//#  ifdef _WIN64
//    _CRTIMP FILE *__cdecl __iob_func(void);
//#  else//_WIN32
//#   ifdef _MSVCRT_
//     extern FILE _iob[];     /* A pointer to an array of FILE */
//#    define __iob_func()    (_iob)
//#   else
//     extern FILE (*_imp___iob)[];    /* A pointer to an array of FILE */
//#    define __iob_func()    (*_imp___iob)
//#    define _iob __iob_func()
//#   endif//
//#  endif//
//		
//# ifndef _STDSTREAM_DEFINED
//#  define _STDSTREAM_DEFINED
//#  define stdin (&__iob_func()[0])
//#  define stdout (&__iob_func()[1])
//#  define stderr (&__iob_func()[2])
//# endif

//#include <windows.h>
		 
#elif defined(__APPLE__)
typedef struct __FILE FILE;
	
extern FILE *__stdinp;
extern FILE *__stdoutp;
extern FILE *__stderrp;
#define stdin __stdinp
#define stdout __stdoutp
#define stderr __stderrp

#else//TODO for !__APPLE__

typedef struct __FILE FILE;

/* Very Standard streams.  */
extern FILE *stdin;		/* Standard input stream.  */
extern FILE *stdout;		/* Standard output stream.  */
extern FILE *stderr;		/* Standard error output stream.  */

/* C89/C99 say they're macros.  Make them happy.  */
#define stdin stdin
#define stdout stdout
#define stderr stderr

#endif//__APPLE__
//typedef struct __FILE FILE;
//#define EOF (-1)
//extern FILE *stdin;
//extern FILE *stdout;
//extern FILE *stderr;
int sprintf(char *str, const char *format, ...);
int fprintf(FILE *stream, const char *format, ...);
int fflush(FILE *stream);

//#include <string.h>
extern int strcmp(const char*,const char*);

#ifdef _WIN32
//if UNICODE using LoadLibraryW...
extern void* LoadLibraryA(const char*);
extern void* GetProcAddress(void*,const char*);
void *dlopen(const char *name, int i)
{
	return (void*) LoadLibraryA(name);
}
void * dlsym(void * handle, const char * name)
{
	return (void*) GetProcAddress(handle,name);
}
#else//unix using libdl
extern void *dlopen(const char *, int);
extern void *dlsym(void *, const char *);
#endif

//TODO play typedef?

//TODO WIN32

//TODO design stdarg/va_start/va_end etc

//typedef void* any_ptr;
//typedef void* (*function_ptr)();
//function_ptr ffi(const char * funcname, const char * libname, ...)

void* ffi_void(){return 0;}
void*(*ffi(const char* funcname, const char* libname, ...))()
{
	void* addr = 0;
	char libfilename[128] = {0};
#if defined(__APPLE__)
	char * dllname = "lib%s.dylib";
#elif defined(_WIN32) || defined(_WIN64)
	char * dllname = "lib%s.dll";
#else
	char * dllname = "lib%s.so";
#endif
	sprintf(libfilename, dllname, libname);
	//void* rt_dlopen = dlopen(libfilename,RTLD_LAZY);
	void* rt_dlopen = dlopen(libfilename,1);
	//printf("DEBUG rt_dlopen(%s.%s)=%d\n",libname,funcname,rt_dlopen);
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
		fprintf(stderr,"ERR: Not found %s.%s\n", libname, funcname);fflush(stderr);
		//fprintf(scc_std(SCC_C_stderr),"ERR: Not found %s.%s\n", libname, funcname);fflush(scc_std(SCC_C_stderr));
		return ffi_void;
	}
	return addr;
}
#  define libc(f) ffi(#f,"c")
# else
#  define libc(f) f
# endif
#else
# define libc(f) f
#endif
