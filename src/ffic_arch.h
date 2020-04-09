typedef enum {
	ffic_os_unknown,
	ffic_os_win,
	ffic_os_osx,
	ffic_os_unx,
} ffic_os_t;
ffic_os_t ffic_os=// ffic_os_unknown;
#ifdef _WIN32
ffic_os_win
#elif defined(__APPLE__)
ffic_os_osx
#else
ffic_os_unx
#endif
;
typedef struct _c_types_32 c_types_32;
struct _c_types_32 {
	union {
		signed char ffic_i8;
		unsigned char ffic_u8;
		signed short int ffic_i16;
		unsigned short int ffic_u16;
		signed int ffic_i32;
		unsigned int ffic_u32;
		signed long int ffic_i64;
		unsigned long int ffic_u64;
	};
};
typedef struct _c_types_64 {
	union {
		signed char ffic_i8;
		unsigned char ffic_u8;
		signed short int ffic_i16;
		unsigned short int ffic_u16;
		signed int ffic_i32;
		unsigned int ffic_u32;
		signed long long int ffic_i64;
		unsigned long long int ffic_u64;
	};
} c_types_64;
#  if defined(_WIN32) || defined(_WIN64)
#ifdef UNICODE
extern int LoadLibraryW(const char*);
#define dlopen LoadLibraryW
#else
extern int LoadLibraryA(const char*);
#define dlopen(l,c) LoadLibraryA(l)
#endif
extern void*(*GetProcAddress)(int,const char*);
#define ffic_dlsym GetProcAddress
#   else
extern int dlopen(const char *,int);
extern void*(*dlsym)(int, const char *);
#define ffic_dlsym dlsym
#   endif
#define ffic_dlopen dlopen 
//void* ffic_dlopen(const char* f,int m){ return (ffic_os==ffic_os_win) ? LoadLibraryA(f) : dlopen(f,m); };
//void* ffic_dlsym(void* h,const char* f){ return (ffic_os==ffic_os_win) ? GetProcAddress(h,f) : dlsym(h,f); };
#if 0
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
#endif

#if 0

//	if(ffic_os==ffic_os_win){
//		ffic_func fdopen = ffic_raw("msvcrt",(ffic_os==ffic_os_win)?"_fdopen":"fdopen",0);
//		return fdopen(
//				ffic_raw("msvcrt",(ffic_os==ffic_os_win)?"_dup":"dup",0)(t),
//				(t==0)?"r":"w");
//		return fdopen(
//				ffic_raw("msvcrt",(ffic_os==ffic_os_win)?"_dup":"dup",0)(t),
//				(t==0)?"r":"w");
//#define STD_INPUT_HANDLE (-10)
//#define STD_OUTPUT_HANDLE (-11)
//#define STD_ERROR_HANDLE (-12)
//		ffic_func GetStdHandle = ffic_raw("kernel32","GetStdHandle",0);
//		void* tmp= GetStdHandle(
//				(t==0)?STD_INPUT_HANDLE:(t==1)?STD_OUTPUT_HANDLE:STD_ERROR_HANDLE);
//		return fdopen(ffic_raw("msvcrt","_open_osfhandle",0)(tmp),(t==0)?"r":"w");
//	}
//	else{
//	ffic_func fdopen = ffic_raw("libc",(ffic_os==ffic_os_win)?"_fdopen":"fdopen",0);
//		return fdopen(
//				ffic_raw("libc",(ffic_os==ffic_os_win)?"_dup":"dup",0)(t),
//				(t==0)?"r":"w");
//	}
//	return (void*)0;
#endif
