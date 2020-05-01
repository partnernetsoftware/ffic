enum { libc_fprintf, libc_malloc, libc_memset, libc_memcpy, libc_strcpy, libc_strlen, libc_strdup, libc_strcmp, libc_strchr, libc_strcat, libc_printf, libc_putc, libc_getc, libc_isalnum, libc_isdigit, libc_isalpha, libc_fopen, libc_fread, libc_fgets, libc_fgetc, libc_fclose, libc_feof, libc_fputc, libc_fflush, libc_free, libc_system, libc_atol, libc_atoi, libc_atof, libc_usleep, libc_msleep, libc_sleep, libc_setmode, libc_fileno, libc_stdin, libc_stdout, libc_stderr, libc_microtime, libc_exit, };
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
static ffic_func ffic_gettimeofday=(ffic_ptr)0;
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
extern ffic_ptr dlopen(const char *,int);
extern ffic_ptr dlsym(ffic_ptr, const char *);
extern int printf(const char*,...);
extern int strcmp(const char*,const char*);
extern void exit(int);
extern int fprintf(FILE*,const char*,...);
extern int fflush(void*);
char* _ffic_strcat(char* buffer, const char *source, const char* append) {
 char* ptr = buffer;
 while (*source) *(ptr++) = *(source++); while (*append) *(ptr++) = *(append++);
 *ptr = '\0';
 return buffer;
}
ffic_ptr ffic_void(){return 0;};
ffic_ptr(*ffic_raw(const char* part1, const char* funcname, const char* part2))()
{
 if(ffic_os==ffic_os_unknown){ printf("ERROR: need to call ffic_setup() first\n");exit(1); }
 char libfilename[512] = {0};
 _ffic_strcat(libfilename, (part1)? part1 : ffic_libcname, (part2)? part2 : ffic_sosuffix );
 ffic_ptr rt = dlsym(dlopen(libfilename,0x100 | 0x1 ), funcname);
 return rt;
}
void* ffic_std[3];
void* ffic_os_std(int t){
 if(ffic_std[t]) return ffic_std[t];
 ffic_std[t] = ffic_raw(0,(ffic_os==ffic_os_win)?"_fdopen":"fdopen",0)(ffic_raw(0,(ffic_os==ffic_os_win)?"_dup":"dup",0)(t),(t==0)?"r":"w");
 return ffic_std[t];
}
ffic_ptr ffic_usleep(int nano_seconds)
{
 if(ffic_os==ffic_os_win) ffic_raw("kernel32","Sleep",0)(nano_seconds/1000);
 else ffic_raw(ffic_libcname,"usleep",0)(nano_seconds);
 return 0;
};
ffic_ptr ffic_msleep(int microseconds)
{
 if (ffic_os==ffic_os_win) ffic_raw("kernel32","Sleep",0)(microseconds);
 else ffic_raw(ffic_libcname,"usleep",0)(microseconds*1000);
 return 0;
};
ffic_ptr ffic_sleep(int seconds)
{
 if(ffic_os==ffic_os_win) ffic_raw("kernel32","Sleep",0)(seconds*1000);
 else ffic_raw(ffic_libcname,"usleep",0)(seconds*1000000);
 return 0;
}
struct timeval { long tv_sec; long tv_usec; };
ffic_u64 ffic_microtime(void);
ffic_ptr(*ffic(const char* libname, const char* funcname, ...))()
{
 ffic_ptr addr = 0;
 if(!strcmp("c",libname)){ libname = 0;
  if(!strcmp("stderr",funcname) || !strcmp("2",funcname)){ return ffic_os_std(2); }
  else if(!strcmp("stdout",funcname) || !strcmp("1",funcname)){ return ffic_os_std(1); }
  else if(!strcmp("stdin",funcname) || !strcmp("0",funcname)){ return ffic_os_std(0); }
  else if(!strcmp("microtime",funcname)){ return (ffic_ptr) ffic_microtime; }
  else if(!strcmp("usleep",funcname)){ return ffic_usleep; }
  else if(!strcmp("sleep",funcname)){ return ffic_sleep; }
  else if(!strcmp("msleep",funcname)){ return ffic_msleep; }
  else if(ffic_os == ffic_os_win && !strcmp("fileno",funcname)){ funcname = "_fileno"; }
  else if(!strcmp("setmode",funcname)){
   if(ffic_os == ffic_os_win){ funcname = "_setmode"; }else{ addr = ffic_void; }
  }
  else if(ffic_os == ffic_os_win && !strcmp("strdup",funcname)){ funcname = "_strdup"; }
 }
 if(addr==0) addr = ffic_raw(libname,funcname,0);
 if(0==addr){
  fprintf(ffic_os_std(1),"WARN: Not found %s.%s\n", libname, funcname);fflush(ffic_os_std(1));
  return ffic_void;
 }
 return addr;
}
ffic_u64 ffic_microtime(void)
{
 struct timeval tv;
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
  if (!ffic_gettimeofday) ffic_gettimeofday = ffic("c","gettimeofday");
  ffic_gettimeofday(&tv, 0);
 }
 return ((ffic_u64)tv.tv_sec*(ffic_u64)1000 + (((ffic_u64)tv.tv_usec)/(ffic_u64)1000)%(ffic_u64)1000);
}
ffic_func libc_a[libc_exit+1];
ffic_func libc_(int fi,const ffic_string fn){ return libc_a[fi]?libc_a[fi]:(libc_a[fi]=ffic("c",fn)); }
void* sao_calloc(long _sizeof){return libc_(libc_memset,"memset")(libc_(libc_malloc,"malloc")(_sizeof),0,_sizeof);}
typedef enum { argt_i, argt_p, argt_d, argt_v, argt_e, argt_s, argt_l, argt_h, } argt_t; ffic_string argt_names[] = { "i", "p", "d", "v", "e", "s", "l", "h", };;
int argta[argt_h+1];
typedef enum { stream_file, stream_char, } stream_t; ffic_string stream_names[] = { "file", "char", };;
typedef enum { type_list, type_vector, type_long, type_double, type_symbol, type_string, } type_t; ffic_string type_names[] = { "list", "vector", "long", "double", "symbol", "string", };;
typedef struct _sao_obj_v sao_obj_v, *p_sao_obj_v;
typedef struct _sao_obj sao_obj,*p_sao_obj;
typedef p_sao_obj (*sao_native_t)(p_sao_obj args,p_sao_obj ctx);
struct _sao_obj_v { union { struct { p_sao_obj car; p_sao_obj cdr; }; struct { union { p_sao_obj* _vector; ffic_string _string; ffic_wstring _wstring; }; union {sao_native_t _native;ffic_ipt _len;long _long;double _double;}; };}; };
struct _sao_obj { union{ void* ptr; int _type; }; ffic_string _raw; union{ union { struct { p_sao_obj car; p_sao_obj cdr; }; struct { union { p_sao_obj* _vector; ffic_string _string; ffic_wstring _wstring; }; union {sao_native_t _native;ffic_ipt _len;long _long;double _double;}; };}; sao_obj_v v;}; };
p_sao_obj sao_new(sao_obj tpl) {
 sao_obj * ret = libc_(libc_memcpy,"memcpy")(libc_(libc_malloc,"malloc")(sizeof(tpl)),&tpl,sizeof(tpl));
 switch(ret->_type){
  case type_symbol:
  case type_string: ret->_string=libc_(libc_strdup,"strdup")(ret->_string); break;
 }
 return ret;
}
p_sao_obj SAO_TAG_nil=(void*)0; p_sao_obj SAO_TAG_at=(void*)0; p_sao_obj SAO_TAG_vector=(void*)0; p_sao_obj SAO_TAG_map=(void*)0; p_sao_obj SAO_TAG_argv=(void*)0; p_sao_obj SAO_TAG_global=(void*)0; p_sao_obj SAO_TAG_begin=(void*)0; p_sao_obj SAO_TAG_end=(void*)0; p_sao_obj SAO_TAG_quote=(void*)0;;
typedef struct _FileChar { int c; struct _FileChar * ptr_prev; struct _FileChar * ptr_next; } FileChar;
typedef struct {
 stream_t _type;
 void* fp;
 ffic_string pos;
 FileChar * ptr_start;
 FileChar * ptr_head;
 FileChar * ptr_last;
} sao_stream;
p_sao_obj sao_load_expr(sao_stream * fw);
ffic_func_d sao_atof;
ffic_func_l sao_atol;
ffic_func_i sao_strchr;
ffic_func_i sao_strcmp;
p_sao_obj cons(p_sao_obj a, p_sao_obj d){return sao_new((sao_obj){.car=a,.cdr=d});}
p_sao_obj car(p_sao_obj x) { return (x&&!x->_type)?x->car:SAO_TAG_nil; }
p_sao_obj cdr(p_sao_obj x) { return (x&&!x->_type)?x->cdr:SAO_TAG_nil; }
p_sao_obj caar(p_sao_obj x) { return ((x&&!x->_type)&&(x->car&&!x->car->_type))? x->car->car : SAO_TAG_nil; }
p_sao_obj cdar(p_sao_obj x) { return ((x&&!x->_type)&&(x->car&&!x->car->_type))? x->car->cdr : SAO_TAG_nil; }
p_sao_obj cadr(p_sao_obj x) { return ((x&&!x->_type)&&(x->cdr&&!x->cdr->_type))? x->cdr->car : SAO_TAG_nil; }
p_sao_obj cddr(p_sao_obj x) { return ((x&&!x->_type)&&(x->cdr&&!x->cdr->_type))? x->cdr->cdr : SAO_TAG_nil; }
p_sao_obj cadar(p_sao_obj x) { return ((x&&!x->_type)&&(x->car&&!x->car->_type)&&(x->car->cdr&&!x->car->cdr->_type))? x->car->cdr->car:SAO_TAG_nil; }
p_sao_obj caddr(p_sao_obj x) { return ((x&&!x->_type)&&(x->cdr&&!x->cdr->_type)&&(x->cdr->cdr&&!x->cdr->cdr->_type))? x->cdr->cdr->car:SAO_TAG_nil; }
p_sao_obj cdddr(p_sao_obj x) { return ((x&&!x->_type)&&(x->cdr&&!x->cdr->_type)&&(x->cdr->cdr&&!x->cdr->cdr->_type))? x->cdr->cdr->cdr:SAO_TAG_nil; }
p_sao_obj cdadr(p_sao_obj x) { return ((x&&!x->_type)&&(x->cdr&&!x->cdr->_type)&&(x->cdr->car&&!x->cdr->car->_type))? x->cdr->car->cdr:SAO_TAG_nil; }
p_sao_obj cadddr(p_sao_obj x) { return ((x&&!x->_type)&&(x->cdr&&!x->cdr->_type)&&(x->cdr->cdr&&!x->cdr->cdr->_type)&&(x->cdr->cdr->cdr&&!x->cdr->cdr->cdr->_type))? x->cdr->cdr->cdr->car:SAO_TAG_nil; }
static void(*sao_print)(ffic_string,p_sao_obj);
p_sao_obj sao_is_eq(p_sao_obj x, p_sao_obj y) {
 do{
  if (x == y) return x;
  if (!x || !y) break;
  if (x->_type != y->_type) break;
  switch (x->_type) {
   case type_long: if(x->_long == y->_long) return x;
   case type_symbol:
   case type_string: if(!sao_strcmp(x->_string, y->_string)) return x;
  }
 }while(0);
 return SAO_TAG_nil;
}
p_sao_obj sao_append(p_sao_obj L1, p_sao_obj L2) { return (L1)?cons(car(L1), sao_append(cdr(L1), L2)) : L2; }
p_sao_obj sao_reverse(p_sao_obj L, p_sao_obj F) { return (!L) ? F: sao_reverse(cdr(L), cons(car(L), F)); }
int sao_list_len(p_sao_obj expr) { return (expr) ? (1+sao_list_len(cdr(expr))):0; }
int sao_deq_c(sao_stream *fw)
{
 int c = '\n';
 FileChar * ptr_head = fw->ptr_head;
 if(ptr_head!=(void*)0){ c = ptr_head->c; fw->ptr_head=ptr_head->ptr_next; }
 return c;
}
int sao_enq_c(sao_stream* fw,int k){
 FileChar*fc=sao_calloc( sizeof(FileChar) );;
 fc->c = k;
 fc->ptr_prev= fw->ptr_last;
 if((void*)0==fw->ptr_start){ fw->ptr_start = fc; }
 if((void*)0==fw->ptr_head){ fw->ptr_head = fc; }
 if((void*)0!=fw->ptr_last){ fw->ptr_last->ptr_next = fc; }
 fw->ptr_last = fc;
 return k;
}
int sao_read_line(sao_stream* fw)
{
 int line_num = 0;
 ffic_func feof = libc_(libc_feof,"feof");
 do{
  if(fw->_type==stream_file){
   if(!fw->fp) do{libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"FILE NOT FOUND?");libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"\n");libc_(libc_exit,"exit")(1);}while(0);
   if(feof(fw->fp)){ sao_enq_c(fw,(-1)); break; }
  }else{
   if (fw->pos==0) libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"DEBUG sao_read_line no pos??");
   if (*(fw->pos)==0){
    libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"DEBUG sao_read_line end??");
    sao_enq_c(fw,(-1));
    break;
   }
  }
  ffic_func putc = libc_(libc_putc,"putc");
  ffic_func_i fgetc = (ffic_func_i) libc_(libc_fgetc,"fgetc");
  if(fw->_type==stream_file){
   if(argta[argt_i]){ libc_(libc_printf,"printf")("> "); }
   for(int c,cc;;){
    cc = c = fgetc(fw->fp);
    sao_enq_c(fw,cc);
    if(c=='\n') line_num++;
    if(c==(-1)||c=='\n')break;
   }
  }else{
   while( *(fw->pos)!=0 ){
    if('\n'==sao_enq_c(fw,(*(fw->pos)))){ line_num++; }
    fw->pos++;
   }
   sao_enq_c(fw,(-1));
  }
 }while(0);
 return line_num;
}
p_sao_obj sao_var(p_sao_obj var, p_sao_obj val, p_sao_obj ctx)
{
 if(!ctx) do{libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"sao_var(): need ctx");libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"\n");libc_(libc_exit,"exit")(1);}while(0);
 p_sao_obj frame = car(ctx);
 if(!frame) do{libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"sao_var(): need ctx.car");libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"\n");libc_(libc_exit,"exit")(1);}while(0);
 p_sao_obj vars = car(frame);
 p_sao_obj vals = cdr(frame);
 while ((vars)) {
  if (sao_is_eq(var, car(vars))) { vals->car = val; return val; }
  vars = cdr(vars);
  vals = cdr(vals);
 }
 frame->car = cons(var, car(frame));
 frame->cdr = cons(val, cdr(frame));
 return val;
}
sao_stream * sao_stream_new(void* fp,stream_t type)
{
 sao_stream*fw=sao_calloc( sizeof(sao_stream) );;
 fw->fp = fp;
 if(type==stream_char) fw->pos = fp;
 fw->_type = type;
 return fw;
}
double sao_eps = 0.0000001;
p_sao_obj sao_convert_default(ffic_string str){
 if(str){
  if(str[0]=='"'){
   return sao_new((sao_obj){._type=type_string, ._string=str});
  }else if((str[0]=='-'&&((long)libc_(libc_isdigit,"isdigit")(str[1])))||((long)libc_(libc_isdigit,"isdigit")(str[0]))){
   long l_val = sao_atol(str);
   double d_val = sao_atof(str);
   double d_diff = (d_val - l_val);
   p_sao_obj rt;
   rt = (d_diff>=-sao_eps && d_diff<=sao_eps) ? sao_new((sao_obj){._type=type_long, ._long=l_val}) : sao_new((sao_obj){._type=type_double, ._double=d_val});
   rt->_raw = str;
   return rt;
  }else{
   return sao_new((sao_obj){._type=type_symbol,._string=str});
  }
 }
 return SAO_TAG_nil;
}
void sao_print_default(ffic_string str, p_sao_obj el){
 if (str) libc_(libc_printf,"printf")(str);
 if (!el) {libc_(libc_printf,"printf")("nil");return;}
 switch (el->_type) {
  case type_string:
   libc_(libc_printf,"printf")("\"%s\"", el->_string); break;
  case type_symbol:
   if(el->_string){
    libc_(libc_printf,"printf")("%s", el->_string);
   }else
    libc_(libc_printf,"printf")("()");
   break;
  case type_long:
   libc_(libc_printf,"printf")("%ld", el->_long); break;
  case type_double:
   libc_(libc_printf,"printf")("%g", el->_double); break;
  case type_list:
   {
    int skip=0;
    p_sao_obj ptr = el;
     p_sao_obj _car = car(ptr);
      sao_print(0, _car);
      skip=1;
    libc_(libc_printf,"printf")("(");
    int t = 0;
    while (ptr) {
     if(t==1) libc_(libc_printf,"printf")(",");
      if(skip==1){ skip=0;
      }else{ sao_print(0, ptr->car); if(t==0) t=1;
      }
     if (ptr->cdr) {
      if (ptr->cdr->_type == type_list) { ptr = ptr->cdr; }
      else { sao_print(", ", ptr->cdr); break; }
     } else break;
    }
    libc_(libc_printf,"printf")(")");
    break;
   }
  default:
   libc_(libc_printf,"printf")("<%d>", el->_type); break;
 }
}
p_sao_obj sao_eval_default(p_sao_obj exp, p_sao_obj ctx){ return exp; }
p_sao_obj(*sao_str_convert)(ffic_string) = sao_convert_default;
p_sao_obj(*sao_eval)(p_sao_obj,p_sao_obj) = sao_eval_default;
int sao_peek(sao_stream * fw)
{
 int c = 0;
 FileChar * ptr_head = fw->ptr_head;
 if(ptr_head!=0){ c = ptr_head->c; }
 return c;
}
p_sao_obj sao_read_list(sao_stream * fw)
{
 p_sao_obj rt = SAO_TAG_nil;
 for (p_sao_obj obj,cell=SAO_TAG_nil;;) {
  obj = sao_load_expr(fw);
  if (!obj || obj==SAO_TAG_end) { rt = sao_reverse(cell, SAO_TAG_nil); break; }
  cell = cons(obj, cell);
 }
 if(rt==SAO_TAG_nil) rt = cons(SAO_TAG_nil,SAO_TAG_nil);
 return rt;
}
p_sao_obj sao_load_expr(sao_stream * fw) {
 int c;
 p_sao_obj theSymbol = SAO_TAG_nil;
 while( (c = sao_deq_c(fw))!=(-1) ) {
  switch(c){
   case '\n': case '\r': sao_read_line(fw);continue;
   case 0: case ' ': case '\t': case ',': if(theSymbol) break; continue;
   case ';': case '#': for (int c=0;!(c == '\n' || c == (-1));c = sao_deq_c(fw)); continue;
   case '^': return cons(SAO_TAG_quote, cons(sao_load_expr(fw), SAO_TAG_nil));
   case '\"':
    {
     char buf[2048] = {0};
     for(int c,i=0;;){
      if (i >= 2048) do{libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"String too long - maximum length %d characters",2048);libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"\n");libc_(libc_exit,"exit")(1);}while(0);
      c=sao_deq_c(fw);
      if (c == (-1)){ return SAO_TAG_nil; }
      if(c=='\"') break;
      if(c=='\\'&&'\"'==sao_peek(fw)) c=sao_deq_c(fw);
      buf[i++] = c;
     }
     return sao_new((sao_obj){._type=type_string, ._string=buf});
    }
   case '}': case ']': case ')': return SAO_TAG_end;
   case '{':return cons(SAO_TAG_map,sao_read_list(fw));
   case '[':return cons(SAO_TAG_vector,sao_read_list(fw));
   case '(': {
         p_sao_obj list = sao_read_list(fw);
         if(!theSymbol) return list;
         p_sao_obj rt = cons(theSymbol,list);
         return rt;
        }
   default:
    {
     char buf[2048] = {c};
     int i = 1, cc;
     while (cc=sao_peek(fw), !sao_strchr(" \t,()[]{}\r\n", cc)) {
      if (i >= 2048) do{libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"Symbol name too long - maximum length %d characters",2048);libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"\n");libc_(libc_exit,"exit")(1);}while(0);
      buf[i++] = sao_deq_c(fw);
     }
     theSymbol = sao_str_convert(buf);
     while (cc=sao_peek(fw), sao_strchr(" \t", cc)) sao_deq_c(fw);
     if (sao_strchr((argta[argt_i])?",({":"\r\n,({",sao_peek(fw))) continue;
    }
  }
  break;
 }
 return theSymbol;
}
typedef enum { ctype_long, ctype_double, ctype_int, ctype_float, ctype_i64, ctype_u64, ctype_string, ctype_struct, ctype_pointer, } ctype_t; ffic_string ctype_names[] = { "long", "double", "int", "float", "i64", "u64", "string", "struct", "pointer", };;
enum { type_ctype=1+type_string, type_native, };
p_sao_obj SAO_TAG_true=(void*)0; p_sao_obj SAO_TAG_false=(void*)0; p_sao_obj SAO_TAG_set=(void*)0; p_sao_obj SAO_TAG_if=(void*)0; p_sao_obj SAO_TAG_lambda=(void*)0; p_sao_obj SAO_TAG_procedure=(void*)0; p_sao_obj SAO_TAG_nilnil=(void*)0;;
void _sao_print(ffic_string str, p_sao_obj el){
 if(!el) return sao_print_default(str, el);
 switch (el->_type) {
  case type_list:
   if(sao_is_eq(car(el),SAO_TAG_procedure)){
    libc_(libc_printf,"printf")("<closure>");
    return;
   }
  case type_string:
  case type_symbol:
  case type_long:
  case type_double:
   return sao_print_default(str, el);
 }
 if (str) libc_(libc_printf,"printf")(str);
 switch (el->_type) {
  case type_vector:
   libc_(libc_printf,"printf")("[");
   for(int i=0;i<el->_len;i++){
    sao_print(0,el->_vector[i]);
    if(i+1<el->_len)
    libc_(libc_printf,"printf")(",");
   }
   libc_(libc_printf,"printf")("]");
   break;
  case type_ctype:
   libc_(libc_printf,"printf")("<ctype>"); break;
  case type_native:
   libc_(libc_printf,"printf")("<native>"); break;
  default:
   libc_(libc_printf,"printf")("<TODO _%d>", el->_type);
 }
}
p_sao_obj sao_not_false(p_sao_obj x) {
 p_sao_obj rt = x;
 if (!x || sao_is_eq(x, SAO_TAG_false)) rt = SAO_TAG_nil;
 else if (x->_type == type_long && x->_long == 0) rt = SAO_TAG_nil;
 return rt;
}
p_sao_obj sao_eval_list_r(p_sao_obj expr, p_sao_obj ctx) {
 p_sao_obj idx = cdr(expr);
 for (; (cdr(idx)); idx = cdr(idx)){ sao_eval(car(idx), ctx); }
 return car(idx);
}
p_sao_obj sao_eval_list(p_sao_obj exp, p_sao_obj ctx) {
 if (!exp) return SAO_TAG_nil;
 p_sao_obj _car = sao_eval(car(exp), ctx);
 p_sao_obj _cdr = sao_eval_list(cdr(exp), ctx);
 return cons(_car, _cdr);
}
long sao_vector_hash(const ffic_string s, int ht_len) {
 long h = 0;
 ffic_string u = s;
 while (*u) { h = (h * 256 + (*u)) % ht_len; u++; }
 return h;
}
p_sao_obj sao_vector_lookup(p_sao_obj holder,ffic_string s) {
 if(!holder) do{libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"sao_vector_lookup(holder)\n");libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"\n");libc_(libc_exit,"exit")(1);}while(0);
 p_sao_obj* the_vector = holder->_vector;
 if(!the_vector) do{libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"empty _vector?");libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"\n");libc_(libc_exit,"exit")(1);}while(0);
 if(!holder->_len) do{libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"empty _vector._len?");libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"\n");libc_(libc_exit,"exit")(1);}while(0);
 long h = sao_vector_hash(s, holder->_len);
 return the_vector[h];
}
p_sao_obj sao_vector_insert(p_sao_obj holder,p_sao_obj key_obj){
 if(!holder) do{libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"sao_vector_insert(holder)\n");libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"\n");libc_(libc_exit,"exit")(1);}while(0);
 if(!key_obj) do{libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"sao_vector_insert(key_obj)\n");libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"\n");libc_(libc_exit,"exit")(1);}while(0);
 p_sao_obj* the_vector = holder->_vector;
 if(!the_vector) do{libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"empty _vector?");libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"\n");libc_(libc_exit,"exit")(1);}while(0);
 if(!holder->_len) do{libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"empty _vector._len?");libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"\n");libc_(libc_exit,"exit")(1);}while(0);
 long h = sao_vector_hash(key_obj->_string, holder->_len);
 if(the_vector[h]){
 }
 the_vector[h]= key_obj;
 return holder;
}
p_sao_obj sao_tbl_resize(p_sao_obj holder,int _len){
 if(!holder)
  holder = sao_new((sao_obj){._type=type_vector, ._len=_len,._vector=sao_calloc( sizeof(p_sao_obj) *(_len) )});
 else{
  holder->_vector = sao_calloc( sizeof(p_sao_obj) *(_len) );
  holder->_len = _len;
 }
 return holder;
}
p_sao_obj sao_get_var(p_sao_obj var, p_sao_obj ctx) {
 while ((ctx)) {
  p_sao_obj frame = car(ctx);
  p_sao_obj vars = car(frame);
  p_sao_obj vals = cdr(frame);
  while ((vars)) {
   if (sao_is_eq(car(vars), var)) return car(vals);
   vars = cdr(vars);
   vals = cdr(vals);
  }
  ctx = cdr(ctx);
 }
 return SAO_TAG_nil;
}
p_sao_obj sao_set(p_sao_obj var, p_sao_obj val, p_sao_obj ctx) {
 while ((ctx)) {
  p_sao_obj frame = car(ctx);
  p_sao_obj vars = car(frame);
  p_sao_obj vals = cdr(frame);
  while ((vars)) {
   if (sao_is_eq(car(vars), var)) {
    vals->car = val;
    return car(vals);
   }
   vars = cdr(vars);
   vals = cdr(vals);
  }
  ctx = cdr(ctx);
 }
 return val;
}
p_sao_obj _sao_eval(p_sao_obj expr, p_sao_obj ctx) {
tail:
 if (!expr) return SAO_TAG_nil;
 switch(expr->_type){
  case type_long:
  case type_double:
  case type_string:
   break;
  case type_vector:
   {
    p_sao_obj rt = sao_new((sao_obj){._type=type_vector, ._len=expr->_len,._vector=sao_calloc( sizeof(p_sao_obj) *(expr->_len) )});
    for(int i=0;i<expr->_len;i++){ rt->_vector[i] = sao_eval(expr->_vector[i],ctx); }
    return rt;
   }
  case type_symbol: return sao_get_var(expr, ctx);
  case type_list:
   {
    p_sao_obj _car = car(expr);
    if (sao_is_eq(_car, SAO_TAG_nilnil)) { return SAO_TAG_nil; }
    p_sao_obj _cadr = cadr(expr);
    p_sao_obj _cdr = cdr(expr);
    if(!_car){ return cons(SAO_TAG_nil,sao_eval_list(_cdr, ctx)); }
    if (sao_is_eq(_car, SAO_TAG_quote)) { return _cadr; }
    if (sao_is_eq(_car, SAO_TAG_vector)) {
     p_sao_obj vector_a[512];
     int i=0;
     for (;;) {
      if(!car(_cdr)) break;
      vector_a[i++] = car(_cdr);
      if(i>=512) do{libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"vector len > 512...");libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"\n");libc_(libc_exit,"exit")(1);}while(0);
      _cdr = cdr(_cdr);
     }
     p_sao_obj rt = sao_new((sao_obj){._type=type_vector, ._len=i,._vector=sao_calloc( sizeof(p_sao_obj) *(i) )});
     for(int j=0;j<i;j++){ rt->_vector[j]=vector_a[j]; }
     return rt;
    }
    else if (sao_is_eq(_car, SAO_TAG_map)) {
      do{libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"TODO map...");libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"\n");libc_(libc_exit,"exit")(1);}while(0);
    }
    else if (sao_is_eq(_car, SAO_TAG_lambda)) {
     p_sao_obj _cddr = cddr(expr);
     return cons(SAO_TAG_procedure, cons(_cadr, cons(_cddr, cons(ctx, SAO_TAG_nil))));
    }
    else if (sao_is_eq(_car,SAO_TAG_at)) {
     if ((_cadr&&_cadr->_type)) sao_var(_cadr, sao_eval(caddr(expr), ctx), ctx);
     else { sao_var(car(_cadr), sao_eval(cons(SAO_TAG_lambda, cons(cdr(_cadr),cddr(expr))), ctx), ctx); }
     return SAO_TAG_true;
    }
    else if (sao_is_eq(_car, SAO_TAG_set)) {
     if ((_cadr&&_cadr->_type)) sao_set(_cadr, sao_eval(caddr(expr), ctx), ctx);
     else { sao_set(car(_cadr), sao_eval(cons(SAO_TAG_lambda, cons(cdr(_cadr),cddr(expr))), ctx), ctx); }
     return SAO_TAG_true;
    }
    else if (sao_is_eq(_car, SAO_TAG_begin)) {
     expr = sao_eval_list_r(expr,ctx);
     goto tail;
    }
    else if (sao_is_eq(_car, SAO_TAG_if)) {
     p_sao_obj predicate = sao_eval(_cadr, ctx);
     expr = (sao_not_false(predicate)) ? caddr(expr) : cadddr(expr);
     goto tail;
    }
    else
    {
     p_sao_obj proc = sao_eval(_car, ctx);
     if (!proc) {
      break;
     }
     p_sao_obj args = sao_eval_list(cdr(expr), ctx);
     if (proc->_type == type_native){
      return proc->_native(args,ctx);
     }
     if ( sao_is_eq(proc, SAO_TAG_at) ){
      expr = cons(SAO_TAG_at, _cdr);
      goto tail;
     }
     if ( sao_is_eq(car(proc), SAO_TAG_procedure))
     {
      p_sao_obj _cadr_proc = cadr(proc);
      if(!car(_cadr_proc)){ _cadr_proc = cdr(_cadr_proc); }
      ctx = cons(cons(_cadr_proc, args), cadddr(proc));
      expr = cons(SAO_TAG_begin, caddr(proc));
      goto tail;
     }
    }
   }
 }
 return expr;
}
p_sao_obj sao_type_assert(const ffic_string func, p_sao_obj obj, int type)
{
 if (!obj) {
  do{libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"Invalid argument to function %s: SAO_TAG_nil\n", func);libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"\n");libc_(libc_exit,"exit")(1);}while(0);
 } else if (obj->_type != type) {
  do{libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"ERR: function %s. expected %s got %s\n", func, type_names[type], type_names[obj->_type]);libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"\n");libc_(libc_exit,"exit")(1);}while(0);
 }
 return obj;
}
p_sao_obj native_type(p_sao_obj args,p_sao_obj ctx) { return sao_new((sao_obj){._type=type_symbol,._string=type_names[car(args)->_type]}); }
p_sao_obj native_global(p_sao_obj args,p_sao_obj ctx) { return SAO_TAG_global; }
p_sao_obj native_debug(p_sao_obj args,p_sao_obj ctx) {
 sao_print("\nnative_debug.args=",args);
 sao_print("\nnative_debug.ctx=",ctx);
 p_sao_obj _car = car(args);
 if(_car){
  if (_car->_type == type_long){
   libc_(libc_printf,"printf")("\nlong=%ld\n",car(args)->v._long);
  }else{
   libc_(libc_printf,"printf")("\n native_debug TODO type(%d)",_car->_type);
  }
 }else
  libc_(libc_printf,"printf")("\n native_debug TODO no args");
 return SAO_TAG_true;
}
p_sao_obj native_list(p_sao_obj args,p_sao_obj ctx) { return (args); }
p_sao_obj native_cons(p_sao_obj args,p_sao_obj ctx) {
 return cons(car(args),cadr(args));
}
p_sao_obj native_car(p_sao_obj args,p_sao_obj ctx) {
 p_sao_obj rt = caar(args);
 if(!rt) rt = car(args);
 return rt;
}
p_sao_obj native_cdr(p_sao_obj args,p_sao_obj ctx) {
 p_sao_obj rt = cdar(args);
 if(!rt) rt = cdr(args);
 return rt;
}
p_sao_obj native_setcar(p_sao_obj args,p_sao_obj ctx) { (sao_type_assert((ffic_string)__func__, car(args), type_list)); (args->car->car = (cadr(args))); return SAO_TAG_nil; }
p_sao_obj native_setcdr(p_sao_obj args,p_sao_obj ctx) { (sao_type_assert((ffic_string)__func__, car(args), type_list)); (args->car->cdr = (cadr(args))); return SAO_TAG_nil; }
p_sao_obj sao_is_empty(p_sao_obj ee){
 p_sao_obj rt = SAO_TAG_nil;
 for(;;){
  if(!ee) {rt=SAO_TAG_true;break;}
  switch(ee->_type){
   case type_list:
    if(!sao_is_empty(car(ee))) break;
    if(!sao_is_empty(cdr(ee))) break;
    rt=SAO_TAG_true;
    break;
   case type_string:
    if(libc_(libc_strlen,"strlen")(ee->_string)) rt = SAO_TAG_true;
  }
  break;
 }
 sao_print("\n# DEBUG sao_is_empty=",ee);
 sao_print("\n# DEBUG rt=",rt);
 libc_(libc_printf,"printf")("\n");
 return rt;
}
p_sao_obj native_is_empty(p_sao_obj args,p_sao_obj ctx) {
 if(!args) return SAO_TAG_true;
 if(!(args&&!args->_type)) do{libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"native_is_empty.args must be list");libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"\n");libc_(libc_exit,"exit")(1);}while(0);
 p_sao_obj _car = car(args);
 if(!sao_is_empty(_car)) return SAO_TAG_false;
 return SAO_TAG_true;
}
p_sao_obj native__null(p_sao_obj args,p_sao_obj ctx) { return SAO_TAG_nil; }
p_sao_obj native__ctx(p_sao_obj args,p_sao_obj ctx) { return ctx; }
p_sao_obj native_is_nil(p_sao_obj args,p_sao_obj ctx) {
 p_sao_obj rt = SAO_TAG_false;
 for(;;){
  if(!args){rt = SAO_TAG_true;break;}
  p_sao_obj _car = car(args);
  if(!_car){rt = SAO_TAG_true;}
  else if((_car&&!_car->_type)){
   if(!car(_car) && !cdr(_car)) rt = SAO_TAG_true;
  }
  break;
 }
 return rt;
}
p_sao_obj native_pairq(p_sao_obj args,p_sao_obj ctx) {
 if (car(args)->_type != type_list) return SAO_TAG_false;
 return ((caar(args)&&caar(args)->_type) && (cdar(args)&&cdar(args)->_type)) ? SAO_TAG_true : SAO_TAG_false;
}
p_sao_obj native_is_list(p_sao_obj args,p_sao_obj ctx) {
 p_sao_obj list;
 if (car(args)->_type != type_list)
  return SAO_TAG_false;
 for (list = car(args); (list); list = list->cdr)
  if ((list->cdr) && (list->cdr->_type != type_list))
   return SAO_TAG_false;
 return (car(args)->_type == type_list && native_pairq(args,ctx) != SAO_TAG_true) ? SAO_TAG_true : SAO_TAG_false;
}
p_sao_obj native_atom(p_sao_obj expr,p_sao_obj ctx) {
 return (car(expr)&&car(expr)->_type) ? SAO_TAG_true : SAO_TAG_false;
}
p_sao_obj native_cmp(p_sao_obj args,p_sao_obj ctx) {
 p_sao_obj _a = car(args);
 p_sao_obj _b = cadr(args);
 if(!_a){
  if(!_b) return SAO_TAG_true;
  else return SAO_TAG_false;
 }else{
  if(!_b) return SAO_TAG_false;
 }
 if(_a->_type != _b->_type) return SAO_TAG_false;
 if(_a->_type==type_long){
  long _a_l = _a ? _a->_long:0,
     _b_l = _b ? _b->_long:0;
  return (_a_l==_b_l) ? SAO_TAG_true : SAO_TAG_false;
 }
 if(_a->_type==type_symbol){
  return (!sao_strcmp(_a->_string, _b->_string)) ? SAO_TAG_true : SAO_TAG_false;
 }
 libc_(libc_printf,"printf")("<TODO native_cmp %d>",_a->_type);
 return SAO_TAG_false;
}
p_sao_obj native_same(p_sao_obj args,p_sao_obj ctx) {
 if (sao_is_eq(car(args), cadr(args))) return SAO_TAG_true;
 if ((car(args)->_type == type_list) && (cadr(args)->_type == type_list)) {
  p_sao_obj a, b;
  a = car(args);
  b = cadr(args);
  while ((a) && (b)) {
   if (!sao_is_eq(car(a), car(b)))
    return SAO_TAG_false;
   a = cdr(a);
   b = cdr(b);
  }
  return SAO_TAG_true;
 }
 if ((car(args)->_type == type_vector) && (cadr(args)->_type == type_vector)) {
  if (car(args)->_len != cadr(args)->_len) {
   return SAO_TAG_false;
  }
  p_sao_obj *va = car(args)->_vector;
  p_sao_obj *vb = cadr(args)->_vector;
  int i = 0;
  for (i = 0; i < car(args)->_len; i++) {
   if (!sao_is_eq(*(va + i), *(vb + i))) {
    return SAO_TAG_false;
   }
  }
  return SAO_TAG_true;
 }
 return SAO_TAG_false;
}
p_sao_obj native_gt(p_sao_obj sexp,p_sao_obj ctx) {
 (sao_type_assert((ffic_string)__func__, car(sexp), type_long));
 (sao_type_assert((ffic_string)__func__, cadr(sexp), type_long));
 return (car(sexp)->_long > cadr(sexp)->_long) ? SAO_TAG_true : SAO_TAG_false;
}
p_sao_obj native_lt(p_sao_obj sexp,p_sao_obj ctx) {
 (sao_type_assert((ffic_string)__func__, car(sexp), type_long));
 (sao_type_assert((ffic_string)__func__, cadr(sexp), type_long));
 return (car(sexp)->_long < cadr(sexp)->_long) ? SAO_TAG_true : SAO_TAG_false;
}
p_sao_obj native_add(p_sao_obj list,p_sao_obj ctx) {
 (sao_type_assert((ffic_string)__func__, car(list), type_long));
 long total = car(list)->_long;
 list = cdr(list);
 while ((car(list)))
 {
  (sao_type_assert((ffic_string)__func__, car(list), type_long));
  total += car(list)->_long;
  list = cdr(list);
 }
 return sao_new((sao_obj){._type=type_long, ._long=total});
}
p_sao_obj native_sub(p_sao_obj list,p_sao_obj ctx) {
 (sao_type_assert((ffic_string)__func__, car(list), type_long));
 long total = car(list)->_long;
 list = cdr(list);
 while ((list)) {
  (sao_type_assert((ffic_string)__func__, car(list), type_long));
  total -= car(list)->_long;
  list = cdr(list);
 }
 return sao_new((sao_obj){._type=type_long, ._long=total});
}
p_sao_obj native_div(p_sao_obj list,p_sao_obj ctx) {
 (sao_type_assert((ffic_string)__func__, car(list), type_long));
 long total = car(list)->_long;
 list = cdr(list);
 while ((list)) {
  (sao_type_assert((ffic_string)__func__, car(list), type_long));
  total /= car(list)->_long;
  list = cdr(list);
 }
 return sao_new((sao_obj){._type=type_long, ._long=total});
}
p_sao_obj native_mul(p_sao_obj list,p_sao_obj ctx) {
 p_sao_obj _car = car(list);
 if(!_car) return SAO_TAG_nil;
 if(_car->_type == type_long){
  long total = _car->_long;
  list = cdr(list);
  while ((list)) {
   _car = car(list);
   if(!_car) break;
   if(_car->_type != type_long){
    libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"WARN: mul() is not yet support type of (%d)\n", _car->_type);;
    break;
   }
   total *= _car->_long;
   list = cdr(list);
  }
  return sao_new((sao_obj){._type=type_long, ._long=total});
 }else if(_car->_type == type_vector){
  libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"WARN: Matrix Calc is coming soon");;
 }else{
  libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"WARN: mul() is not yet support type of (%d)\n", _car->_type);;
 }
 return SAO_TAG_nil;
}
char* sao_strcat(char * dst, char * src){
 char *target = libc_(libc_malloc,"malloc")((long)libc_(libc_strlen,"strlen")(dst) + (long)libc_(libc_strlen,"strlen")(src) + 1);
 libc_(libc_strcpy,"strcpy")(target, dst);
 libc_(libc_strcat,"strcat")(target, src);
 return target;
}
p_sao_obj native_shell(p_sao_obj args,p_sao_obj ctx) {
 p_sao_obj _car;
 p_sao_obj _cdr = args;
 char * cmd=(void*)0;
 while( (_car = car(_cdr)) ) {
  if(!cmd){ cmd=_car->_string; }
  else cmd=sao_strcat(cmd,_car->_string);
  _cdr = cdr(_cdr);
 }
 if(cmd) libc_(libc_system,"system")(cmd);
 return SAO_TAG_true;
}
p_sao_obj native_ffi(p_sao_obj args,p_sao_obj ctx) {
 sao_print("ffi todo",args);
 return SAO_TAG_true;
}
p_sao_obj native_exit(p_sao_obj args,p_sao_obj ctx) {
 p_sao_obj _car = car(args);
 if(_car){
  sao_print(0,_car);
  libc_(libc_printf,"printf")("\n");
 }
 libc_(libc_exit,"exit")(0); return SAO_TAG_nil; }
p_sao_obj native_read(p_sao_obj args,p_sao_obj ctx) { return sao_load_expr(sao_stream_new(libc_(libc_stdin,"stdin"),stream_file)); }
p_sao_obj native_load(p_sao_obj args,p_sao_obj ctx) {
 p_sao_obj exp;
 p_sao_obj ret = SAO_TAG_nil;
 ffic_string filename = car(args)->_string;
 void*fp = libc_(libc_fopen,"fopen")(filename, "r");
 if (fp == 0) {
  libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"Error opening file %s\n", filename);
  return SAO_TAG_nil;
 }
 sao_stream * fw = sao_stream_new(fp,stream_file);
 for (;;) {
  exp = sao_load_expr(fw);
  if (!exp) break;
  ret = sao_eval(exp, SAO_TAG_global);
 }
 libc_(libc_fclose,"fclose")(fp);
 return ret;
}
p_sao_obj native_vget(p_sao_obj args,p_sao_obj ctx) {
 p_sao_obj vct = (sao_type_assert((ffic_string)__func__, car(args), type_vector));
 p_sao_obj key = (sao_type_assert((ffic_string)__func__, cadr(args), type_long));
 if (key->_long >= vct->_len) return SAO_TAG_nil;
 return vct->_vector[key->_long];
}
p_sao_obj native_vset(p_sao_obj args,p_sao_obj ctx){
 p_sao_obj vct = (sao_type_assert((ffic_string)__func__, car(args), type_vector));
 p_sao_obj key = (sao_type_assert((ffic_string)__func__, cadr(args), type_long));
 if (!(caddr(args))) return SAO_TAG_nil;
 if (key->_long >= vct->_len) return SAO_TAG_nil;
 car(args)->_vector[key->_long] = caddr(args);
 return SAO_TAG_true;
}
p_sao_obj native_print(p_sao_obj list,p_sao_obj ctx) {
 p_sao_obj _ptr;
 p_sao_obj rt=SAO_TAG_nil;
 int t = 0;
 for(;;){
  _ptr = car(list);
  if(!_ptr) break;
  rt = _ptr;
  sao_print(t?" ":0,_ptr);t=1;
  list = cdr(list);
 }
 return rt;
}
p_sao_obj native_c_int(p_sao_obj args,p_sao_obj ctx) {
 p_sao_obj _car;
 p_sao_obj _cdr = args;
 char * s=(void*)0;
 while( (_car = car(_cdr)) ) {
  if(!s){ s=_car->_string; }
  else s=sao_strcat(s,_car->_string);
  _cdr = cdr(_cdr);
 }
 libc_(libc_printf,"printf")("\n native_c_int=%s\n",s);
 return SAO_TAG_nil;
}
p_sao_obj saolang_init()
{
 sao_print = _sao_print;
 sao_eval = _sao_eval;
 SAO_TAG_true=sao_new((sao_obj){._type=type_symbol,._string="@T"});sao_var(SAO_TAG_true,SAO_TAG_true,SAO_TAG_global);;
 SAO_TAG_false=sao_new((sao_obj){._type=type_symbol,._string="@F"});sao_var(SAO_TAG_false,SAO_TAG_false,SAO_TAG_global);;
 SAO_TAG_if=sao_new((sao_obj){._type=type_symbol,._string="@?"});sao_var(SAO_TAG_if,SAO_TAG_if,SAO_TAG_global);;
 SAO_TAG_lambda=sao_new((sao_obj){._type=type_symbol,._string="@L"});sao_var(SAO_TAG_lambda,SAO_TAG_lambda,SAO_TAG_global);;
 SAO_TAG_procedure=sao_new((sao_obj){._type=type_symbol,._string="@P"});sao_var(SAO_TAG_procedure,SAO_TAG_procedure,SAO_TAG_global);;
 SAO_TAG_set=sao_new((sao_obj){._type=type_symbol,._string="@:="});sao_var(SAO_TAG_set,SAO_TAG_set,SAO_TAG_global);;
 sao_var(sao_new((sao_obj){._type=type_symbol,._string="@+"}), sao_new((sao_obj){._type=type_native, ._native=native_add,._string="@+"}), SAO_TAG_global);;
 sao_var(sao_new((sao_obj){._type=type_symbol,._string="@-"}), sao_new((sao_obj){._type=type_native, ._native=native_sub,._string="@-"}), SAO_TAG_global);;
 sao_var(sao_new((sao_obj){._type=type_symbol,._string="@*"}), sao_new((sao_obj){._type=type_native, ._native=native_mul,._string="@*"}), SAO_TAG_global);;
 sao_var(sao_new((sao_obj){._type=type_symbol,._string="@/"}), sao_new((sao_obj){._type=type_native, ._native=native_div,._string="@/"}), SAO_TAG_global);;
 sao_var(sao_new((sao_obj){._type=type_symbol,._string="@<"}), sao_new((sao_obj){._type=type_native, ._native=native_lt,._string="@<"}), SAO_TAG_global);;
 sao_var(sao_new((sao_obj){._type=type_symbol,._string="@>"}), sao_new((sao_obj){._type=type_native, ._native=native_gt,._string="@>"}), SAO_TAG_global);;
 sao_var(sao_new((sao_obj){._type=type_symbol,._string="@=="}), sao_new((sao_obj){._type=type_native, ._native=native_cmp,._string="@=="}), SAO_TAG_global);;
 sao_var(sao_new((sao_obj){._type=type_symbol,._string="@==="}), sao_new((sao_obj){._type=type_native, ._native=native_same,._string="@==="}), SAO_TAG_global);;
 sao_var(sao_new((sao_obj){._type=type_symbol,._string="@@?"}), sao_new((sao_obj){._type=type_native, ._native=native_is_nil,._string="@@?"}), SAO_TAG_global);;
 sao_var(sao_new((sao_obj){._type=type_symbol,._string="@A"}), sao_new((sao_obj){._type=type_native, ._native=native_car,._string="@A"}), SAO_TAG_global);;
 sao_var(sao_new((sao_obj){._type=type_symbol,._string="@C"}), sao_new((sao_obj){._type=type_native, ._native=native_cons,._string="@C"}), SAO_TAG_global);;
 sao_var(sao_new((sao_obj){._type=type_symbol,._string="@D"}), sao_new((sao_obj){._type=type_native, ._native=native_cdr,._string="@D"}), SAO_TAG_global);;
 sao_var(sao_new((sao_obj){._type=type_symbol,._string="print"}), sao_new((sao_obj){._type=type_native, ._native=native_print,._string="print"}), SAO_TAG_global); sao_var(sao_new((sao_obj){._type=type_symbol,._string="exit"}), sao_new((sao_obj){._type=type_native, ._native=native_exit,._string="exit"}), SAO_TAG_global);;
 sao_var(sao_new((sao_obj){._type=type_symbol,._string="atom"}), sao_new((sao_obj){._type=type_native, ._native=native_atom,._string="atom"}), SAO_TAG_global);;
 sao_var(sao_new((sao_obj){._type=type_symbol,._string="exit"}), sao_new((sao_obj){._type=type_native, ._native=native_exit,._string="exit"}), SAO_TAG_global); sao_var(sao_new((sao_obj){._type=type_symbol,._string="shell"}), sao_new((sao_obj){._type=type_native, ._native=native_shell,._string="shell"}), SAO_TAG_global); sao_var(sao_new((sao_obj){._type=type_symbol,._string="ffi"}), sao_new((sao_obj){._type=type_native, ._native=native_ffi,._string="ffi"}), SAO_TAG_global); sao_var(sao_new((sao_obj){._type=type_symbol,._string="global"}), sao_new((sao_obj){._type=type_native, ._native=native_global,._string="global"}), SAO_TAG_global); sao_var(sao_new((sao_obj){._type=type_symbol,._string="type"}), sao_new((sao_obj){._type=type_native, ._native=native_type,._string="type"}), SAO_TAG_global); sao_var(sao_new((sao_obj){._type=type_symbol,._string="cons"}), sao_new((sao_obj){._type=type_native, ._native=native_cons,._string="cons"}), SAO_TAG_global); sao_var(sao_new((sao_obj){._type=type_symbol,._string="setcar"}), sao_new((sao_obj){._type=type_native, ._native=native_setcar,._string="setcar"}), SAO_TAG_global); sao_var(sao_new((sao_obj){._type=type_symbol,._string="setcdr"}), sao_new((sao_obj){._type=type_native, ._native=native_setcdr,._string="setcdr"}), SAO_TAG_global); sao_var(sao_new((sao_obj){._type=type_symbol,._string="debug"}), sao_new((sao_obj){._type=type_native, ._native=native_debug,._string="debug"}), SAO_TAG_global); sao_var(sao_new((sao_obj){._type=type_symbol,._string="list"}), sao_new((sao_obj){._type=type_native, ._native=native_list,._string="list"}), SAO_TAG_global); sao_var(sao_new((sao_obj){._type=type_symbol,._string="load"}), sao_new((sao_obj){._type=type_native, ._native=native_load,._string="load"}), SAO_TAG_global); sao_var(sao_new((sao_obj){._type=type_symbol,._string="print"}), sao_new((sao_obj){._type=type_native, ._native=native_print,._string="print"}), SAO_TAG_global); sao_var(sao_new((sao_obj){._type=type_symbol,._string="read"}), sao_new((sao_obj){._type=type_native, ._native=native_read,._string="read"}), SAO_TAG_global); sao_var(sao_new((sao_obj){._type=type_symbol,._string="is_empty"}), sao_new((sao_obj){._type=type_native, ._native=native_is_empty,._string="is_empty"}), SAO_TAG_global); sao_var(sao_new((sao_obj){._type=type_symbol,._string="is_list"}), sao_new((sao_obj){._type=type_native, ._native=native_is_list,._string="is_list"}), SAO_TAG_global); sao_var(sao_new((sao_obj){._type=type_symbol,._string="pairq"}), sao_new((sao_obj){._type=type_native, ._native=native_pairq,._string="pairq"}), SAO_TAG_global); sao_var(sao_new((sao_obj){._type=type_symbol,._string="same"}), sao_new((sao_obj){._type=type_native, ._native=native_same,._string="same"}), SAO_TAG_global); sao_var(sao_new((sao_obj){._type=type_symbol,._string="_null"}), sao_new((sao_obj){._type=type_native, ._native=native__null,._string="_null"}), SAO_TAG_global); sao_var(sao_new((sao_obj){._type=type_symbol,._string="_ctx"}), sao_new((sao_obj){._type=type_native, ._native=native__ctx,._string="_ctx"}), SAO_TAG_global);;
 sao_var(sao_new((sao_obj){._type=type_symbol,._string="c_int"}), sao_new((sao_obj){._type=type_native, ._native=native_c_int,._string="c_int"}), SAO_TAG_global);;
 native_load(cons(sao_new((sao_obj){._type=type_string, ._string="std.sao"}),SAO_TAG_nil),SAO_TAG_global);
 return SAO_TAG_global;
}
p_sao_obj sao_parse( sao_stream * fw, p_sao_obj ctx ) {
 sao_read_line(fw);
 ffic_u64 (*microtime)() = ( ffic_u64(*)() ) libc_(libc_microtime,"microtime");
 p_sao_obj rt = SAO_TAG_nil;
 p_sao_obj exp = SAO_TAG_nil;
 while((exp=sao_load_expr(fw))){
  if(argta[argt_d]) libc_(libc_printf,"printf")("%llu: ",microtime());
  if(argta[argt_i]||argta[argt_d]){ sao_print("<=", exp); libc_(libc_printf,"printf")("\n"); }
  if (ctx){
   rt = sao_eval(exp,ctx);
   if(argta[argt_d]) libc_(libc_printf,"printf")("%llu: ",microtime());
   if((argta[argt_i]||argta[argt_d])){sao_print("=>", rt); libc_(libc_printf,"printf")("%s","\n");}
  }else{
   rt = exp;
   if(argta[argt_i]||argta[argt_d]){
    sao_print("==>", rt); libc_(libc_printf,"printf")("\n");
   }
  }
 }
 return rt;
}
void print_version(){ libc_(libc_printf,"printf")(" SaoLang (R) v" "0.0.8" " - Wanjo Chan (c) 2020\n"); }
void print_help(){ libc_(libc_printf,"printf")("Usage	 : sao [options] [script.sao | -]]\nOptions	 :\n	h:	Help\n	v:	Version\n	i:	Interactive\n	p:	Print final result\n	d:	Dev only\n	e:	Eval\n	s:	Strict mode\n	l:	Lisp syntax\n"); }
int main(int argc,char **argv, char** envp) {
 sao_print = sao_print_default;
 sao_strcmp = (ffic_func_i) libc_(libc_strcmp,"strcmp");
 sao_atof = (ffic_func_d) libc_(libc_atof,"atof");
 sao_atol = (ffic_func_l) libc_(libc_atol,"atol");
 sao_strchr = (ffic_func_i) libc_(libc_strchr,"strchr");
 libc_(libc_setmode,"setmode")(libc_(libc_fileno,"fileno")(libc_(libc_stdin,"stdin")),0x8000 );
 SAO_TAG_global = cons(cons(SAO_TAG_nil, SAO_TAG_nil), SAO_TAG_nil);
 SAO_TAG_argv = cons(cons(SAO_TAG_nil, SAO_TAG_nil), SAO_TAG_nil);
 SAO_TAG_nilnil=sao_new((sao_obj){._type=type_symbol,._string="@@"});sao_var(SAO_TAG_nilnil,SAO_TAG_nil,SAO_TAG_global);
 SAO_TAG_at=sao_new((sao_obj){._type=type_symbol,._string="@"});sao_var(SAO_TAG_at,SAO_TAG_at,SAO_TAG_global);;
 SAO_TAG_quote=sao_new((sao_obj){._type=type_symbol,._string="@^"});sao_var(SAO_TAG_quote,SAO_TAG_quote,SAO_TAG_global);;
 SAO_TAG_vector=sao_new((sao_obj){._type=type_symbol,._string="@V"});sao_var(SAO_TAG_vector,SAO_TAG_vector,SAO_TAG_global);;
 SAO_TAG_map=sao_new((sao_obj){._type=type_symbol,._string="@M"});sao_var(SAO_TAG_map,SAO_TAG_map,SAO_TAG_global);;
 SAO_TAG_begin=sao_new((sao_obj){._type=type_symbol,._string="@B"});sao_var(SAO_TAG_begin,SAO_TAG_begin,SAO_TAG_global);;
 SAO_TAG_end=sao_new((sao_obj){._type=type_symbol,._string="@E"});sao_var(SAO_TAG_end,SAO_TAG_end,SAO_TAG_global);;
 ffic_string script_file = "-";
 int found_any = 0;
 if(argc>1){
  char argv_line[512] = "("; ffic_string argv_ptr = &argv_line[1];
  for(int i=1;i<argc;i++){ (*argv_ptr++)=' ';ffic_string wk=argv[i];while(*wk)(*argv_ptr++)=(*wk++);}
  *argv_ptr++ = ')'; *argv_ptr++ = '\0';
  sao_stream * fw = sao_stream_new(argv_line,stream_char);
  p_sao_obj arg_expr = sao_load_expr( fw );
  p_sao_obj pos = arg_expr;
  while(pos){
   p_sao_obj _car = car(pos);
   pos = cdr(pos);
   if(!_car) continue;
   ffic_string string_or_name=(void*)0;
   long l_val = 1;
   if((_car&&!_car->_type)){
    p_sao_obj _caar = car(_car);
    if(_caar){ string_or_name = _caar->_string; }
    p_sao_obj _cadar = cadr(_car);
    if(_cadar){
     if(_cadar->_type==type_long){
      l_val = _cadar->_long;
     }else{
      l_val = sao_atol(_cadar->_string);
     }
    }
   }else{
    if(_car) string_or_name = _car->_string;
   }
   if(string_or_name){
    sao_var(sao_new((sao_obj){._type=type_symbol,._string=string_or_name}), sao_new((sao_obj){._type=type_long, ._long=l_val}), SAO_TAG_argv);
    int found = 0;
    if(!sao_strcmp(string_or_name,"-")){ found_any++; }
    else{
     for(int i=0;i<=argt_h;i++) if(!sao_strcmp(string_or_name,argt_names[i])){ argta[i]+=l_val; found++;break; }
    }
    if(!found) script_file = string_or_name; else found_any++;
   }
  }
  libc_(libc_free,"free")(fw);
  sao_var(SAO_TAG_argv,SAO_TAG_argv,SAO_TAG_global);
 }
 void* fp;
 if(!sao_strcmp("-",script_file)){
  fp = libc_(libc_stdin,"stdin");
  if(!found_any){ print_help();argta[argt_i]++; argta[argt_v]++; }
  else { if(argta[argt_i]){argta[argt_v]++; found_any++;} }
  if(argta[argt_v]){ print_version();if(found_any==1)libc_(libc_exit,"exit")(0); }
  if(argta[argt_h]){ print_help();libc_(libc_exit,"exit")(0);}
 }else{
  fp = libc_(libc_fopen,"fopen")(script_file, "r");
  if(!fp) do{libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"FILE NOT FOUND: %s",script_file);libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"\n");libc_(libc_exit,"exit")(1);}while(0);
 }
 sao_stream * fw = sao_stream_new(fp,stream_file);
 p_sao_obj ctx = SAO_TAG_nil;
 ctx = saolang_init();
 p_sao_obj result = sao_parse( fw, ctx );
 if(argta[argt_p]){ sao_print(0,result);libc_(libc_printf,"printf")("\n"); }
 libc_(libc_fclose,"fclose")(fp); libc_(libc_free,"free")(fw);
 return 0;
}
