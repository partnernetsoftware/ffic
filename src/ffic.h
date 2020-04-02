/* ffic() to unify libc */
#ifndef SIZEOF_POINTER
# if defined(_WIN64)
# define SIZEOF_POINTER 8 //WIN 64
# elif defined(_WIN32)
# define SIZEOF_POINTER 4 //32
//# elif //TODO 32 linux
# else
# define SIZEOF_POINTER 8 //64 as default...
# endif
#endif

#if 0
//#if SIZEOF_POINTER==8
//typedef signed char i8;
//typedef signed short int i16;
//typedef signed int i32;
//typedef signed long int i64;
//typedef unsigned char u8;
//typedef unsigned short int u16;
//typedef unsigned int u32;
//typedef unsigned long int u64;
//#elif SIZEOF_POINTER==4
//typedef signed char i8;
//typedef signed short int i16;
//typedef signed int i32;
//typedef signed long long int i64;
//typedef unsigned char u8;
//typedef unsigned short int u16;
//typedef unsigned int u32;
//typedef unsigned long long int u64;
//#elif SIZEOF_POINTER==16
//#error TODO SIZEOF_POINTER 16(128bit)
//#else
//#error Unknown SIZEOF_POINTER ?
//#endif
#endif

#  if defined(_WIN32) || defined(_WIN64)
typedef struct _iobuf {
	char *_ptr;
	int _cnt;
	char *_base;
	int _flag;
	int _file;
	int _charbuf;
	int _bufsiz;
	char *_tmpfname;
} FILE;

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

#ifndef FFIC
#define FFIC 1
#endif

#ifdef FFIC
# if FFIC==2
extern void*(*ffic(const char*, const char*, ...))();
#  ifndef libc
#  define libc(f) ffic("c",#f)
#  endif
# elif FFIC==1
extern int fprintf(FILE *stream, const char *format, ...);
extern int fflush(FILE *stream);
extern int strcmp(const char*,const char*);
#  if defined(_WIN32) || defined(_WIN64)
#ifdef UNICODE
extern void* LoadLibraryW(const char*);
#define dlopen LoadLibraryW
#else
extern void* LoadLibraryA(const char*);
#define dlopen(l,c) LoadLibraryA(l)
#endif
extern void* GetProcAddress(void*,const char*);
#define ffic_dlsym GetProcAddress
#   else
extern void* dlopen(const char *,int);
extern void *dlsym(void *, const char *);
#define ffic_dlsym dlsym
#   endif
#define ffic_dlopen dlopen 
void ffic_strcat(char *target, const char *source, const char* append) {
	//TODO check size.
	while (*source) {
		*target = *source;
		source++;
		target++;
	}
	while (*append) {
		*target = *append;
		append++;
		target++;
	}
	*target = '\0';
}
void* ffic_void(){return 0;};
void*(*ffic_raw(const char* part1, const char* funcname, const char* part2))()
{
	char libfilename[256] = {0};
	ffic_strcat(libfilename,part1,
			(part2==0)?
#if defined(__APPLE__)
			".dylib"
#elif defined(_WIN32) || defined(_WIN64)
			".dll"
#else
			".so"
#endif
			:part2
			);
	void* rt_dlopen = (void*) ffic_dlopen(libfilename,1/*RTLD_LAZY*/);
	void*	addr = ffic_dlsym(rt_dlopen, funcname);
	if(0==addr){
		fprintf(stderr,"ERR: Not found %s.%s\n", libfilename, funcname);fflush(stderr);
		return ffic_void;
	}
	return addr;
}
void* ffic_usleep(int nano_seconds)
{
#ifdef _WIN32
	ffic_raw("kernel32","Sleep",0)(nano_seconds/1000);
#else
	ffic_raw("libc","usleep",0)(nano_seconds);
#endif
	return 0;
};
void* ffic_msleep(int microseconds)
{
#ifdef _WIN32
	ffic_raw("kernel32","Sleep",0)(microseconds);
#else
	ffic_raw("libc","usleep",0)(microseconds*1000);
#endif
	return 0;
};
void* ffic_sleep(int seconds)
{
#ifdef _WIN32
	ffic_raw("kernel32","Sleep",0)(seconds*1000);
#else
	ffic_raw("libc","usleep",0)(seconds*1000000);
#endif
	return 0;
}
void*(*ffic(const char* libname, const char* funcname, ...))()
{
	void* addr = 0;
	if(!strcmp("c",libname)){
		if(!strcmp("stderr",funcname)){ addr = stderr; }
		else if(!strcmp("stdout",funcname)){ addr = stdout; }
		else if(!strcmp("stdin",funcname)){ addr = stdin; }
		else{
			libname = 
#if defined(__APPLE__)
				"libc"
#elif defined(_WIN64)
				"msvcrt"
#elif defined(_WIN32) || defined(_WIN64)
				"msvcrt"
#else
				"libc"
#endif
				;				
			if(!strcmp("usleep",funcname)){ return ffic_usleep; }
			else if(!strcmp("sleep",funcname)){ return ffic_sleep; }
			else if(!strcmp("msleep",funcname)){ return ffic_msleep; }
#ifdef _WIN32
			else if(!strcmp("fileno",funcname)){ funcname = "_fileno"; }
#endif
			else if(!strcmp("setmode",funcname)){
#ifdef _WIN32
				funcname = "_setmode";
#else
				addr = ffic_void;
#endif
			}
#if defined(_WIN32)
			else if(!strcmp("strdup",funcname)){ funcname = "_strdup"; }
#endif
		}
	}
	if(addr==0) addr = ffic_raw(libname,funcname,0);
	return addr;
}
#  ifndef libc
#  define libc(f) ffic("c",#f)
#  endif
# endif
#endif
#ifndef libc
# define libc(f) f
#endif
