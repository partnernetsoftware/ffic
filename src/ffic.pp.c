typedef void* ffic_ptr;
typedef ffic_ptr(*ffic_func)();
typedef double (*ffic_func_d)();
typedef long (*ffic_func_l)();
typedef int (*ffic_func_i)();
typedef float (*ffic_func_f)();
typedef char* ffic_string;
typedef int* ffic_wstring;
typedef enum { ffic_os_unknown, ffic_os_win, ffic_os_osx, ffic_os_unx, } ffic_os_t;
ffic_os_t ffic_os = ffic_os_osx;
ffic_string ffic_libcname = "libc";
ffic_string ffic_sosuffix = ".dylib";
typedef struct __FILE FILE;
typedef signed char ffic_i8;
typedef unsigned char ffic_u8;
typedef signed short int ffic_i16;
typedef unsigned short int ffic_u16;
typedef signed int ffic_i32;
typedef unsigned int ffic_u32;
typedef signed long ffic_ipt;
typedef unsigned long ffic_upt;
typedef signed long int ffic_i64;
typedef unsigned long int ffic_u64;
extern ffic_ptr dlopen(const char*,int);
extern ffic_ptr dlsym(ffic_ptr, const char*);
extern int printf(const char*,...);
extern int strcmp(const char*,const char*);
extern void exit(int);
extern int fprintf(FILE*,const char*,...);
extern int fflush(void*);
char* _ffic_strcat(char* buffer, const char* a, const char* b) {
 char* p = buffer; while (*a) *(p++) = *(a++); while (*b) *(p++) = *(b++);
 return buffer;
}
ffic_ptr ffic_void(){return 0;};
void* ffic_std[3];
void* ffic_os_std(int t);
ffic_ptr(*ffic_raw(const char* part1, const char* funcname, const char* part2))()
{
 ffic_string libfilename = (char[512]){0};
 _ffic_strcat(libfilename, (part1)? part1 : ffic_libcname, (part2)? part2 : ffic_sosuffix );
 ffic_ptr addr = 0;
 addr = dlsym(dlopen(libfilename,0x101), funcname);
 if(!addr) {
  fprintf(ffic_os_std(1),"WARN: Not found %s.%s\n", part1, funcname);fflush(ffic_os_std(1));
 }
 return addr;
}
void* ffic_os_std(int t){
 if(ffic_std[t]) return ffic_std[t];
 ffic_std[t] = ffic_raw(0,(ffic_os==ffic_os_win)?"_fdopen":"fdopen",0)(ffic_raw(0,(ffic_os==ffic_os_win)?"_dup":"dup",0)(t),(t==0)?"r":"w");
 return ffic_std[t];
}
static ffic_func _ffic_os_sleep = (ffic_ptr)0;
ffic_ptr ffic_usleep(int nano_seconds) { _ffic_os_sleep( (ffic_os==ffic_os_win) ? (nano_seconds/1000) : nano_seconds ); return 0; }
ffic_ptr ffic_msleep(int microseconds) { _ffic_os_sleep( (ffic_os==ffic_os_win) ? (microseconds) : microseconds*1000 ); return 0; }
ffic_ptr ffic_sleep(int seconds) { _ffic_os_sleep( (ffic_os==ffic_os_win) ? (seconds*1000) : (seconds*1000000) ); return 0; }
ffic_u64 ffic_microtime(void)
{
 struct { long tv_sec; long tv_usec; } tv;
 static ffic_func ffic_gettimeofday=(ffic_ptr)0;
 if(ffic_os == ffic_os_win){
  if (!ffic_gettimeofday) ffic_gettimeofday = ffic_raw("kernel32","GetSystemTimePreciseAsFileTime",0);
  if (!ffic_gettimeofday) ffic_gettimeofday = ffic_raw("kernel32","GetSystemTimeAsFileTime",0);
  static const ffic_u64 epoch = 116444736000000000;
  struct _FILETIME { unsigned long dwLowDateTime; unsigned long dwHighDateTime; } file_time;
  ffic_gettimeofday(&file_time);
  ffic_u64 since_1601 = ( (ffic_u64) file_time.dwHighDateTime << 32) | (ffic_u64) file_time.dwLowDateTime;
  ffic_u64 since_1970 = ((ffic_u64) since_1601 - epoch);
  ffic_u64 microseconds_since_1970 = since_1970 / 10;
  tv.tv_sec = (microseconds_since_1970 / (ffic_u64) 1000000);
  tv.tv_usec = microseconds_since_1970 % (ffic_u64) 1000000;
 }else{
  if (!ffic_gettimeofday) ffic_gettimeofday = ffic_raw(0,"gettimeofday",0);
  ffic_gettimeofday(&tv, 0);
 }
 return ((ffic_u64)tv.tv_sec*(ffic_u64)1000 + (((ffic_u64)tv.tv_usec)/(ffic_u64)1000)%(ffic_u64)1000);
}
ffic_ptr(*ffic(const char* libname, const char* funcname, ...))()
{
 ffic_ptr addr = 0;
 if(!libname){
  if(!_ffic_os_sleep) _ffic_os_sleep = (ffic_os==ffic_os_win) ? ffic_raw("kernel32","Sleep",0) : ffic_raw(ffic_libcname,"usleep",0);
  if(!strcmp("stderr",funcname) || !strcmp("2",funcname)){ return ffic_os_std(2); }
  else if(!strcmp("stdout",funcname) || !strcmp("1",funcname)){ return ffic_os_std(1); }
  else if(!strcmp("stdin",funcname) || !strcmp("0",funcname)){ return ffic_os_std(0); }
  else if(!strcmp("microtime",funcname)){ return (ffic_ptr) ffic_microtime; }
  else if(!strcmp("usleep",funcname)){ return ffic_usleep; }
  else if(!strcmp("sleep",funcname)){ return ffic_sleep; }
  else if(!strcmp("msleep",funcname)){ return ffic_msleep; }
  else if(!strcmp("fileno",funcname) && ffic_os == ffic_os_win){ funcname = "_fileno"; }
  else if(!strcmp("void",funcname)){ return ffic_void; }
  else if(!strcmp("setmode",funcname)){
   if(ffic_os == ffic_os_win){ funcname = "_setmode"; }else{ addr = ffic_void; }
  }
  else if(!strcmp("strdup",funcname) && ffic_os == ffic_os_win){ funcname = "_strdup"; }
 }
 if(!addr) addr = ffic_raw(libname,funcname,0);
 if(!addr) {
  fprintf(ffic_os_std(1),"WARN: Not found %s.%s\n", libname, funcname);fflush(ffic_os_std(1));
  return ffic_void;
 }
 return addr;
}
int main(int argc, char **argv, char **envp){
 ffic_ptr tcc_ptr = ffic("libtcc","tcc_new")();
 ffic("libtcc","tcc_set_output_type")(tcc_ptr, 1 );
 ffic("libtcc","tcc_define_symbol")(tcc_ptr, "FFIC", "2");
 ffic("libtcc","tcc_set_options")(tcc_ptr, "-L.");
 ffic("libtcc","tcc_set_options")(tcc_ptr, "-DCONFIG_LDDIR=\".\"");
 if(0==ffic("libtcc","tcc_get_symbol")(tcc_ptr, "ffic"))
  ffic("libtcc","tcc_add_symbol")(tcc_ptr, "ffic", ffic);
 if(0==ffic("libtcc","tcc_get_symbol")(tcc_ptr, "ffic_raw"))
  ffic("libtcc","tcc_add_symbol")(tcc_ptr, "ffic_raw", ffic_raw);
 ffic("libtcc","tcc_add_file")(tcc_ptr,(argc>1) ? argv[1] : "-");
 if (ffic("libtcc","tcc_relocate")(tcc_ptr, (void*)1 ) < 0) return 2;
 int (*entry)() = ffic("libtcc","tcc_get_symbol")(tcc_ptr, "main");
 if (!entry) { return 3; }
 int rt = (int) entry(argc>1?argc-1:argc,argc>1?(argv+1):argv);
 ffic("libtcc","tcc_delete")(tcc_ptr);
 return rt;
}
