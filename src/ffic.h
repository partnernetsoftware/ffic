/* ffic() to unify libc */
#ifndef SIZEOF_POINTER
# if defined(_WIN64)
# define SIZEOF_POINTER 8 //WIN 64
# elif defined(_WIN32)
# define SIZEOF_POINTER 4 //32
//# elif //TODO 32 linux..
# else
# define SIZEOF_POINTER 8 //64 as default...
# endif
#endif
typedef signed char sao_i8;
typedef unsigned char sao_u8;
typedef signed short int sao_i16;
typedef unsigned short int sao_u16;
typedef signed int sao_i32;
typedef unsigned int sao_u32;
#if SIZEOF_POINTER==8
typedef signed long int sao_i64;
typedef unsigned long int sao_u64;
#elif SIZEOF_POINTER==4
typedef signed long long int sao_i64;
typedef unsigned long long int sao_u64;
#elif SIZEOF_POINTER==16
#error TODO SIZEOF_POINTER 16(128bit)
#else
#error Unknown SIZEOF_POINTER ?
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

typedef void* ffic_ptr;
typedef ffic_ptr(*ffic_func)();

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
extern ffic_ptr LoadLibraryW(const char*);
#define dlopen LoadLibraryW
#else
extern ffic_ptr LoadLibraryA(const char*);
#define dlopen(l,c) LoadLibraryA(l)
#endif
extern ffic_ptr GetProcAddress(ffic_ptr,const char*);
#define ffic_dlsym GetProcAddress
#   else
extern ffic_ptr dlopen(const char *,int);
extern ffic_ptr dlsym(ffic_ptr, const char *);
#define ffic_dlsym dlsym
#   endif
#define ffic_dlopen dlopen 
//CALLER WARNING: makesure your buffer enough!
void ffic_strcat(char *buffer, const char *source, const char* append) {
	while (*source)  *(buffer++) = *(source++); 
	while (*append)  *(buffer++) = *(append++); 
	*buffer = '\0';
}
ffic_ptr ffic_void(){return 0;};
ffic_ptr(*ffic_raw(const char* part1, const char* funcname, const char* part2))()
{
	//int libfilename_size = strlen(funcname)+strlen(part2)+8;
	//char libfilename[libfilename_size] = {0};
	char libfilename[512] = {0};
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
	return ffic_dlsym(ffic_dlopen(libfilename,1/*RTLD_LAZY*/), funcname);
}
ffic_ptr ffic_usleep(int nano_seconds)
{
#ifdef _WIN32
	ffic_raw("kernel32","Sleep",0)(nano_seconds/1000);
#else
	ffic_raw("libc","usleep",0)(nano_seconds);
#endif
	return 0;
};
ffic_ptr ffic_msleep(int microseconds)
{
#ifdef _WIN32
	ffic_raw("kernel32","Sleep",0)(microseconds);
#else
	ffic_raw("libc","usleep",0)(microseconds*1000);
#endif
	return 0;
};
ffic_ptr ffic_sleep(int seconds)
{
#ifdef _WIN32
	ffic_raw("kernel32","Sleep",0)(seconds*1000);
#else
	ffic_raw("libc","usleep",0)(seconds*1000000);
#endif
	return 0;
}
sao_u64 ffic_microtime(void);
ffic_ptr(*ffic(const char* libname, const char* funcname, ...))()
{
	ffic_ptr addr = 0;
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
			if(!strcmp("microtime",funcname)){ return (ffic_ptr) ffic_microtime; }//sao_u64 (*microtime)() = libc(microtime);
			else if(!strcmp("usleep",funcname)){ return ffic_usleep; }
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
	if(0==addr){
		fprintf(stderr,"ERR: Not found %s.%s\n", libname, funcname);fflush(stderr);
		return ffic_void;
	}
	return addr;
}
struct timeval {
	long tv_sec;
	long tv_usec;
};
sao_u64 ffic_microtime(void)
{
	struct timeval tv;
	static ffic_func gettimeofday;
#ifdef _WIN32
	gettimeofday = ffic_raw("kernel32","GetSystemTimePreciseAsFileTime",0);
	if (!gettimeofday) gettimeofday = ffic_raw("kernel32","GetSystemTimeAsFileTime",0);
	static const sao_u64 epoch = 116444736000000000;
	struct _FILETIME {
		unsigned long dwLowDateTime;
		unsigned long dwHighDateTime;
	} file_time;
	gettimeofday(&file_time);
	sao_u64 since_1601 = ( (sao_u64) file_time.dwHighDateTime << 32) | (sao_u64) file_time.dwLowDateTime;
	sao_u64 since_1970 = ((sao_u64) since_1601 - epoch);
	sao_u64 microseconds_since_1970 = since_1970 / 10;
	tv.tv_sec = (microseconds_since_1970 / (sao_u64) 1000000);
	tv.tv_usec = microseconds_since_1970 % (sao_u64) 1000000;
#else
	gettimeofday = ffic("c","gettimeofday");
	gettimeofday(&tv, 0);
#endif
	//return ((sao_u64)tv.tv_sec*(sao_u64)1000 + (((sao_u64)tv.tv_usec+(sao_u64)500)/(sao_u64)1000)%(sao_u64)1000);
	return ((sao_u64)tv.tv_sec*(sao_u64)1000 + (((sao_u64)tv.tv_usec)/(sao_u64)1000)%(sao_u64)1000);
}
#  ifndef libc
#  define libc(f) ffic("c",#f)
#  endif
# endif
#endif
#ifndef libc
# define libc(f) f
#endif
