#ifdef TCC_FFI

# if TCC_FFI==2
//extern void*(*ffi(const char* funcname, const char* libname, ...))();//<funcname> <libname> [prototype]
extern void*(*ffi(const char*, const char*, ...))();//<funcname> <libname> [prototype]
#  define libc(f) ffi(#f,"c")
# elif TCC_FFI==1

//#include <stdio.h>
typedef struct __FILE FILE;
#ifdef __APPLE__
extern FILE *__stdinp;
extern FILE *__stdoutp;
extern FILE *__stderrp;
#define stdin __stdinp
#define stdout __stdoutp
#define stderr __stderrp

#else//TODO for !__APPLE__

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

//#include <stdarg.h>
//#include <dlfcn.h>
extern void *dlopen(const char *, int);
extern void *dlsym(void *, const char *);

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
#elif defined(_WIN32)
	char * dllname = "lib%s.dll";
#else
	char * dllname = "lib%s.so";
#endif
	sprintf(libfilename, dllname, libname);
	//void* rt_dlopen = dlopen(libfilename,RTLD_LAZY);
	void* rt_dlopen = dlopen(libfilename,1);
	if(!strcmp("c",libname)){
		//fprintf(stderr,"TODO1 to find %s.%s\n", libname, funcname);fflush(stderr);
		if(!strcmp("stderr",funcname)){
			addr = stderr;
		}else if(!strcmp("stdout",funcname)){
			addr = stdout;
		}else if(!strcmp("stdin",funcname)){
			addr = stdin;
		}else{
			//fprintf(stderr,"TODO4 to find %s.%s\n", libname, funcname);fflush(stderr);
			//addr = dlsym(RTLD_DEFAULT, funcname);
			//fprintf(stderr,"RTLD_DEFAULT=%d\n",RTLD_DEFAULT);
			addr = dlsym((void*)-2, funcname);
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
#  define libc(f) ffi(#f,"c")
# else
#  define libc(f) f
# endif
#else
# define libc(f) f
#endif
