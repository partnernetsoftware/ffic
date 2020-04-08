/* ffic() to unify libc */
typedef enum {
	ffic_os_unknown,
	ffic_os_win,
	ffic_os_osx,
	ffic_os_unx,
} ffic_os_t;
ffic_os_t ffic_os =
#ifdef _WIN32
ffic_os_win
#elif defined(__APPLE__)
ffic_os_osx
#else
ffic_os_unx
#endif
;
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
//typedef struct _iobuf_win {
//	char *_ptr;
//	int _cnt;
//	char *_base;
//	int _flag;
//	int _file;
//	int _charbuf;
//	int _bufsiz;
//	char *_tmpfname;
//} FILE_win;
//typedef struct __FILE FILE;
typedef signed char ffic_i8;
typedef unsigned char ffic_u8;
typedef signed short int ffic_i16;
typedef unsigned short int ffic_u16;
typedef signed int ffic_i32;
typedef unsigned int ffic_u32;
#if SIZEOF_POINTER==8
typedef signed long int ffic_i64;
typedef unsigned long int ffic_u64;
#elif SIZEOF_POINTER==4
typedef signed long long int ffic_i64;
typedef unsigned long long int ffic_u64;
#elif SIZEOF_POINTER==16
#error TODO SIZEOF_POINTER 16(128bit)
#else
#error Unknown SIZEOF_POINTER ?
#endif

//#define stdin __stdinp
//#define stdout __stdoutp
//#define stderr __stderrp
//extern FILE *stdin;	
//extern FILE *stdout;
//extern FILE *stderr;

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
//char **envp_store;
//void ffic_os_check(char **envp){
//	envp_store = envp;//
//	ffic_func strcmp = ffic_raw("libc","strcmp",0);
//	//ffic_func printf = ffic_raw("libc","printf",0);
//	for(char**env=envp;env && (*env);env++) {
//		//printf("%s (%d)\n",*env,strcmp(*env,"OS=Windows"));
//		if(strcmp(*env,"OS=Windows_NT")==0){ ffic_os = ffic_os_win;break; }
//		//if(strcmp(*env,"COMMAND_MODE=unix2003")==0){ ffic_os = ffic_os_osx;break; }
//	}
//}
void* ffic_os_std(int t){
	if(t==0){ return stdin ;}
	if(t==1){ return stdout;}
	if(t==2){ return stderr;}
//	void* tmp;
//	switch(ffic_os){
//#if defined(__APPLE__)
//		case ffic_os_osx: 
//			//if(t==0){ return ffic_raw("libc","__stdinp",0); }
//			//if(t==1){ return ffic_raw("libc","__stdoutp",0);}
//			//if(t==2){ return ffic_raw("libc","__stderrp",0);}
//			if(t==0){ return __stdinp ;}
//			if(t==1){ return __stdoutp;}
//			if(t==2){ return __stderrp;}
//			break;
//#endif
//		case ffic_os_unx: 
//			if(t==0){ tmp = ffic_raw("libc","stdin",0); if(!tmp) return ffic_raw("libc","__stdinp",0); return tmp; }
//			if(t==1){ tmp = ffic_raw("libc","stdout",0); if(!tmp) return ffic_raw("libc","__stdoutp",0); return tmp; }
//			if(t==2){ tmp = ffic_raw("libc","stderr",0); if(!tmp) return ffic_raw("libc","__stderrp",0); return tmp; }
//		case ffic_os_win:
//			if(t==0) return (&(_iob)[0]);
//			if(t==1) return (&(_iob)[1]);
//			if(t==2) return (&(_iob)[2]);
//			//tmp = ffic_raw("libc","_imp___iob",0);
//			//if(tmp){ FILE_win (*_imp___iob)[]; _imp___iob= tmp; return (&(*_imp___iob)[t]);
//			//}else{
//			//	tmp = ffic_raw("libc","_iob",0);
//			//	if(tmp){
//			//		FILE_win *_iob = tmp;
//			//		return (&(_iob)[t]);//TODO test later...
//			//		//extern FILE _iob[];
//			//		//			if(t==0) return (&(_iob)[0]);
//			//		//			if(t==1) return (&(_iob)[1]);
//			//		//			if(t==2) return (&(_iob)[2]);
//			//	}else{
//			//		printf("ERROR: win not found _imp___iob or _iob");exit(1);
//			//	}
//			//}
//			break;
//		case ffic_os_unknown:
//		default:
//			//for(char**env=envp_store;env && (*env);env++) { printf("%s\n",*env); }
//			printf("ERROR: unknown ffic_os\n");exit(1);
//			break;
//	}
//	//return ffic_void;
	return (void*)0;
}
///////////////////////////////////////////////
typedef void* ffic_ptr;
typedef ffic_ptr(*ffic_func)();
typedef char* ffic_string;

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
//extern int fprintf(FILE *stream, const char *format, ...);
//extern int fflush(FILE *stream);
//extern int strcmp(const char*,const char*);
extern void exit();
extern int printf(const char*,...);
extern int fprintf(FILE*,const char*,...);
extern int fflush(void*);
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
	//if(!part1){
	//	return ffic_dlsym(ffic_dlopen("libc.dylib",0x100 | 0x1 /*RTLD_GLOBAL | RTLD_LAZY*/), funcname);
	//	//return dlsym(0/*RTLD_DEFAULT*/, funcname);
	//}
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
	ffic_ptr rt = ffic_dlsym(ffic_dlopen(libfilename,0x100 | 0x1/*RTLD_LAZY*/), funcname);
	return rt;
	//return ffic_dlsym(ffic_dlopen(libfilename,1/*RTLD_LAZY*/), funcname);
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
ffic_u64 ffic_microtime(void);
const char *libcname[] = {"libc","msvcrt","libc","libc"};
const char *libsuffix[]= {"libc","msvcrt","libc","libc"};
ffic_ptr(*ffic(const char* libname, const char* funcname, ...))()
{
	ffic_ptr addr = 0;
	if(!strcmp("c",libname)){
		//if(!strcmp("stderr",funcname)){ addr = stderr; }
		//else if(!strcmp("stdout",funcname)){ addr = stdout; }
		//else if(!strcmp("stdin",funcname)){ addr = stdin; }
		if(!strcmp("stderr",funcname)){ return ffic_os_std(2); }
		else if(!strcmp("stdout",funcname)){ return ffic_os_std(1); }
		else if(!strcmp("stdin",funcname)){ return ffic_os_std(0); }
		else{
			libname = libcname[ ffic_os ];
//#if defined(__APPLE__)
//				"libc"
//#elif defined(_WIN64)
//				"msvcrt"
//#elif defined(_WIN32) || defined(_WIN64)
//				"msvcrt"
//#else
//				"libc"
//#endif
//				;				
			if(!strcmp("microtime",funcname)){ return (ffic_ptr) ffic_microtime; }//ffic_u64 (*microtime)() = libc(microtime);
			else if(!strcmp("usleep",funcname)){ return ffic_usleep; }
			else if(!strcmp("sleep",funcname)){ return ffic_sleep; }
			else if(!strcmp("msleep",funcname)){ return ffic_msleep; }
//#ifdef _WIN32
			else if(ffic_os == ffic_os_win && !strcmp("fileno",funcname)){ funcname = "_fileno"; }
//#endif
			else if(!strcmp("setmode",funcname)){
				if(ffic_os == ffic_os_win){
//#ifdef _WIN32
				funcname = "_setmode";
				}else{
//#else
				addr = ffic_void;
//#endif
				}
			}
//#if defined(_WIN32)
			else if(ffic_os == ffic_os_win && !strcmp("strdup",funcname)){ funcname = "_strdup"; }
//#endif
		}
	}
	if(addr==0) addr = ffic_raw(libname,funcname,0);
	if(0==addr){
		//fprintf(ffic_os_std(1),"ERR: Not found %s.%s\n", libname, funcname);fflush(ffic_os_std(1));
		return ffic_void;
	}
	return addr;
}
struct timeval {
	long tv_sec;
	long tv_usec;
};
ffic_u64 ffic_microtime(void)
{
	struct timeval tv;
	static ffic_func gettimeofday;
	//#ifdef _WIN32
	if(ffic_os == ffic_os_win){
		gettimeofday = ffic_raw("kernel32","GetSystemTimePreciseAsFileTime",0);
		if (!gettimeofday) gettimeofday = ffic_raw("kernel32","GetSystemTimeAsFileTime",0);
		static const ffic_u64 epoch = 116444736000000000;
		struct _FILETIME {
			unsigned long dwLowDateTime;
			unsigned long dwHighDateTime;
		} file_time;
		gettimeofday(&file_time);
		ffic_u64 since_1601 = ( (ffic_u64) file_time.dwHighDateTime << 32) | (ffic_u64) file_time.dwLowDateTime;
		ffic_u64 since_1970 = ((ffic_u64) since_1601 - epoch);
		ffic_u64 microseconds_since_1970 = since_1970 / 10;
		tv.tv_sec = (microseconds_since_1970 / (ffic_u64) 1000000);
		tv.tv_usec = microseconds_since_1970 % (ffic_u64) 1000000;
	}else{
		//#else
		gettimeofday = ffic("c","gettimeofday");
		gettimeofday(&tv, 0);
	}
	//#endif
	//return ((ffic_u64)tv.tv_sec*(ffic_u64)1000 + (((ffic_u64)tv.tv_usec+(ffic_u64)500)/(ffic_u64)1000)%(ffic_u64)1000);
	return ((ffic_u64)tv.tv_sec*(ffic_u64)1000 + (((ffic_u64)tv.tv_usec)/(ffic_u64)1000)%(ffic_u64)1000);
}
#  ifndef libc
#  define libc(f) ffic("c",#f)
#  endif
# endif
#endif
#ifndef libc
# define libc(f) f
#endif
