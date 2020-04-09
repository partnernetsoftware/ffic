typedef enum {
 ffic_os_unknown,
 ffic_os_win,
 ffic_os_osx,
 ffic_os_unx,
} ffic_os_t;
ffic_os_t ffic_os =
ffic_os_osx
;
typedef struct _iobuf_win {
 char *_ptr;
 int _cnt;
 char *_base;
 int _flag;
 int _file;
 int _charbuf;
 int _bufsiz;
 char *_tmpfname;
} FILE_win;
typedef struct __FILE FILE;
typedef signed char ffic_i8;
typedef unsigned char ffic_u8;
typedef signed short int ffic_i16;
typedef unsigned short int ffic_u16;
typedef signed int ffic_i32;
typedef unsigned int ffic_u32;
typedef signed long int ffic_i64;
typedef unsigned long int ffic_u64;
typedef void* ffic_ptr;
typedef ffic_ptr(*ffic_func)();
typedef char* ffic_string;
extern int printf(const char*,...);
extern int strcmp(const char*,const char*);
extern void exit(int);
extern int fprintf(FILE*,const char*,...);
extern int fflush(void*);
char **envp_store;
void ffic_setup(char **envp){
 envp_store = envp;
 for(char**env=envp;env && (*env);env++) {
  printf("DEBUG: %s\n",*env);
 }
}
extern ffic_ptr dlopen(const char *,int);
extern ffic_ptr dlsym(ffic_ptr, const char *);
void ffic_strcat(char *buffer, const char *source, const char* append) {
 while (*source) *(buffer++) = *(source++);
 while (*append) *(buffer++) = *(append++);
 *buffer = '\0';
}
ffic_ptr ffic_void(){return 0;};
ffic_ptr(*ffic_raw(const char* part1, const char* funcname, const char* part2))()
{
 if(ffic_os==ffic_os_unknown){ printf("ERROR: need to call ffic_setup() first\n");exit(1); }
 char libfilename[512] = {0};
 ffic_strcat(libfilename,
   (part1==0)?( (ffic_os == ffic_os_win)?"msvcrt":"libc") : part1,
   (part2==0)?( (ffic_os == ffic_os_osx)?".dylib": (ffic_os==ffic_os_win)?".dll":".so"):part2);
 ffic_ptr rt = dlsym(dlopen(libfilename,0x100 | 0x1 ), funcname);
 return rt;
}
void* ffic_os_std(int t){
 return ffic_raw(0,(ffic_os==ffic_os_win)?"_fdopen":"fdopen",0)(ffic_raw(0,(ffic_os==ffic_os_win)?"_dup":"dup",0)(t),(t==0)?"r":"w");
}
ffic_ptr ffic_usleep(int nano_seconds)
{
 if(ffic_os==ffic_os_win) ffic_raw("kernel32","Sleep",0)(nano_seconds/1000);
 else ffic_raw("libc","usleep",0)(nano_seconds);
 return 0;
};
ffic_ptr ffic_msleep(int microseconds)
{
 if (ffic_os==ffic_os_win) ffic_raw("kernel32","Sleep",0)(microseconds);
 else ffic_raw("libc","usleep",0)(microseconds*1000);
 return 0;
};
ffic_ptr ffic_sleep(int seconds)
{
 if(ffic_os==ffic_os_win) ffic_raw("kernel32","Sleep",0)(seconds*1000);
 else ffic_raw("libc","usleep",0)(seconds*1000000);
 return 0;
}
ffic_u64 ffic_microtime(void);
ffic_ptr(*ffic(const char* libname, const char* funcname, ...))()
{
 ffic_ptr addr = 0;
 if(!strcmp("c",libname)){
  if(!strcmp("stderr",funcname) || !strcmp("2",funcname)){ return ffic_os_std(2); }
  else if(!strcmp("stdout",funcname) || !strcmp("1",funcname)){ return ffic_os_std(1); }
  else if(!strcmp("stdin",funcname) || !strcmp("0",funcname)){ return ffic_os_std(0); }
  else{
   libname = (ffic_os == ffic_os_win)?"msvcrt":"libc";
   if(!strcmp("microtime",funcname)){ return (ffic_ptr) ffic_microtime; }
   else if(!strcmp("usleep",funcname)){ return ffic_usleep; }
   else if(!strcmp("sleep",funcname)){ return ffic_sleep; }
   else if(!strcmp("msleep",funcname)){ return ffic_msleep; }
   else if(ffic_os == ffic_os_win && !strcmp("fileno",funcname)){ funcname = "_fileno"; }
   else if(!strcmp("setmode",funcname)){
    if(ffic_os == ffic_os_win){ funcname = "_setmode";
    }else{ addr = ffic_void; }
   }
   else if(ffic_os == ffic_os_win && !strcmp("strdup",funcname)){ funcname = "_strdup"; }
  }
 }
 if(addr==0) addr = ffic_raw(libname,funcname,0);
 if(0==addr){
  fprintf(ffic_os_std(1),"ERR: Not found %s.%s\n", libname, funcname);fflush(ffic_os_std(1));
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
  gettimeofday = ffic("c","gettimeofday");
  gettimeofday(&tv, 0);
 }
 return ((ffic_u64)tv.tv_sec*(ffic_u64)1000 + (((ffic_u64)tv.tv_usec)/(ffic_u64)1000)%(ffic_u64)1000);
}
int main(int argc, char **argv, char **envp){
 void* tcc_ptr = ffic("libtcc","tcc_new")();
 if (!tcc_ptr) {
  return 1; }
 ffic("libtcc","tcc_set_output_type")(tcc_ptr, 1 );
 ffic("libtcc","tcc_define_symbol")(tcc_ptr, "FFIC", "2");
 ffic("libtcc","tcc_set_options")(tcc_ptr, "-nostdinc");
 if(0==ffic("libtcc","tcc_get_symbol")(tcc_ptr, "ffic"))
  ffic("libtcc","tcc_add_symbol")(tcc_ptr, "ffic", ffic);
 if(0==ffic("libtcc","tcc_get_symbol")(tcc_ptr, "ffic_raw"))
  ffic("libtcc","tcc_add_symbol")(tcc_ptr, "ffic_raw", ffic_raw);
 ffic("libtcc","tcc_add_file")(tcc_ptr,(argc>1) ? argv[1] : "-");
 if (ffic("libtcc","tcc_relocate")(tcc_ptr, 1 ) < 0) return 2;
 void* (*entry)() = ffic("libtcc","tcc_get_symbol")(tcc_ptr, "main");
 if (!entry) { return 3; }
 int rt = (int) entry(argc>1?argc-1:argc,argc>1?(argv+1):argv);
 ffic("libtcc","tcc_delete")(tcc_ptr);
 return rt;
}
