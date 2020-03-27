#ifndef PTRSIZE
# if defined(_WIN64)
# define PTRSIZE 8 //WIN 64
# elif defined(_WIN32)
# define PTRSIZE 4 //32
# else
# define PTRSIZE 8 //64
# endif
#endif

#if PTRSIZE==8
typedef signed char i8;
typedef signed short int i16;
typedef signed int i32;
typedef signed long int i64;
typedef unsigned char u8;
typedef unsigned short int u16;
typedef unsigned int u32;
typedef unsigned long int u64;
#elif PTRSIZE==4
typedef signed char i8;
typedef signed short int i16;
typedef signed int i32;
typedef signed long long int i64;
typedef unsigned char u8;
typedef unsigned short int u16;
typedef unsigned int u32;
typedef unsigned long long int u64;
#else //TODO 128
#endif

#  if defined(_WIN32) || defined(_WIN64)

struct _iobuf {
	char *_ptr;
	int _cnt;
	char *_base;
	int _flag;
	int _file;
	int _charbuf;
	int _bufsiz;
	char *_tmpfname;
};
typedef struct _iobuf FILE;

#ifdef _WIN64
#define __cdecl
#define __declspec(x) __attribute__((x))
__declspec(dllimport) FILE *__cdecl __iob_func(void);
#else
#ifdef _MSVCRT_
extern FILE _iob[];     /* A pointer to an array of FILE */
#define __iob_func()    (_iob)
#else
extern FILE (*_imp___iob)[];    /* A pointer to an array of FILE */
#define __iob_func()    (*_imp___iob)
#define _iob __iob_func()
#endif
#endif

#define stdin (&__iob_func()[0])
#define stdout (&__iob_func()[1])
#define stderr (&__iob_func()[2])

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

#ifndef TCC_FFI
#define TCC_FFI 1
#endif

#ifdef TCC_FFI
# if TCC_FFI==2
extern void*(*ffi(const char*, const char*, ...))();
#  define libc(f) ffi("c",#f)
# elif TCC_FFI==1
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
void* ffi_void(){return 0;};
void*(*ffi_raw(const char* libfilename, const char* funcname, ...))()
{
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
	if(!strcmp("c",libname)){
		if(!strcmp("stderr",funcname)){
			addr = stderr;
		}else if(!strcmp("stdout",funcname)){
			addr = stdout;
		}else if(!strcmp("stdin",funcname)){
			addr = stdin;
		}else{
#ifdef _WIN32
			if(!strcmp("strdup",funcname)){
				funcname = "_strdup";
			}
#endif
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
		char libfilename[128] = {0};
		sprintf(libfilename,
				"%s%s",
				libname,
#if defined(__APPLE__)
				".dylib"
#elif defined(_WIN32) || defined(_WIN64)
				".dll"
#else
				".so"
#endif
				);
		addr = ffi_raw(libfilename,funcname);
	}
	return addr;
}
#  define libc(f) ffi("c",#f)
# endif
#endif
///#ifndef libc
///# define libc(f) f
///#endif
