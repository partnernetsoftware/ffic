enum { libc_fprintf, libc_malloc, libc_memset, libc_memcpy, libc_strcpy, libc_strlen, libc_strdup, libc_strcmp, libc_strchr, libc_strcat, libc_printf, libc_putc, libc_getc, libc_isalnum, libc_isdigit, libc_isalpha, libc_fopen, libc_fread, libc_fgets, libc_fclose, libc_feof, libc_fputc, libc_fflush, libc_free, libc_system, libc_atol, libc_atoi, libc_atof, libc_usleep, libc_msleep, libc_sleep, libc_setmode, libc_fileno, libc_stdin, libc_stdout, libc_stderr, libc_microtime, libc_exit, };
typedef void* ffic_ptr;
typedef ffic_ptr(*ffic_func)();
typedef double (*ffic_func_d)();
typedef long (*ffic_func_l)();
typedef int (*ffic_func_i)();
typedef float (*ffic_func_f)();
typedef char* ffic_string;
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
typedef signed long int ffic_i64;
typedef unsigned long int ffic_u64;
typedef signed long int ffic_ipt;
typedef unsigned long int ffic_upt;
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
typedef enum { type_list, type_long, type_double, type_symbol, type_string, } type_t; ffic_string type_names[] = { "list", "long", "double", "symbol", "string", };;
typedef struct _sao_obj sao_obj,*p_sao_obj;
typedef p_sao_obj (*native_t)(p_sao_obj );
struct _sao_obj { union{ void* ptr; int _type; }; ffic_string _raw; union { struct { p_sao_obj car; p_sao_obj cdr; }; struct { p_sao_obj* _table; long _size; }; struct { ffic_string _string; long _depth;}; struct { native_t _native; ffic_string _ffi;}; long _long; double _double;}; };
p_sao_obj sao_new(sao_obj tpl) {
 sao_obj * ret = libc_(libc_malloc,"malloc")(sizeof(sao_obj));
 libc_(libc_memcpy,"memcpy")(ret,&tpl,sizeof(sao_obj));
 switch(ret->_type){
  case type_symbol:
  case type_string:
   ret->_string=libc_(libc_strdup,"strdup")(ret->_string);
   ret->_raw=libc_(libc_strdup,"strdup")(ret->_string);
   break;
 }
 return ret;
}
p_sao_obj SAO_TAG_argv=(void*)0; p_sao_obj SAO_TAG_global=(void*)0; p_sao_obj SAO_TAG_quote=(void*)0;;
typedef struct _FileChar { int c; struct _FileChar * ptr_prev; struct _FileChar * ptr_next; } FileChar;
typedef struct {
 stream_t _type;
 void* fp;
 ffic_string pos;
 FileChar * ptr_head;
 FileChar * ptr_last;
} sao_stream;
p_sao_obj sao_load_expr(sao_stream * fw);
ffic_func_d atof;
ffic_func_l atol;
p_sao_obj cons(p_sao_obj car, p_sao_obj cdr) { p_sao_obj ret = sao_new((sao_obj){.car=car,.cdr=cdr});return ret; }
p_sao_obj car(p_sao_obj x) { return (x&&!x->_type)?x->car:(void*)0; }
p_sao_obj cdr(p_sao_obj x) { return (x&&!x->_type)?x->cdr:(void*)0; }
p_sao_obj caar(p_sao_obj x) { return ((x&&!x->_type)&&(x->car&&!x->car->_type))? x->car->car : (void*)0; }
p_sao_obj cdar(p_sao_obj x) { return ((x&&!x->_type)&&(x->car&&!x->car->_type))? x->car->cdr : (void*)0; }
p_sao_obj cadr(p_sao_obj x) { return ((x&&!x->_type)&&(x->cdr&&!x->cdr->_type))? x->cdr->car : (void*)0; }
p_sao_obj cddr(p_sao_obj x) { return ((x&&!x->_type)&&(x->cdr&&!x->cdr->_type))? x->cdr->cdr : (void*)0; }
p_sao_obj cadar(p_sao_obj x) { return ((x&&!x->_type)&&(x->car&&!x->car->_type)&&(x->car->cdr&&!x->car->cdr->_type))? x->car->cdr->car:(void*)0; }
p_sao_obj caddr(p_sao_obj x) { return ((x&&!x->_type)&&(x->cdr&&!x->cdr->_type)&&(x->cdr->cdr&&!x->cdr->cdr->_type))? x->cdr->cdr->car:(void*)0; }
p_sao_obj cdddr(p_sao_obj x) { return ((x&&!x->_type)&&(x->cdr&&!x->cdr->_type)&&(x->cdr->cdr&&!x->cdr->cdr->_type))? x->cdr->cdr->cdr:(void*)0; }
p_sao_obj cdadr(p_sao_obj x) { return ((x&&!x->_type)&&(x->cdr&&!x->cdr->_type)&&(x->cdr->car&&!x->cdr->car->_type))? x->cdr->car->cdr:(void*)0; }
p_sao_obj cadddr(p_sao_obj x) { return ((x&&!x->_type)&&(x->cdr&&!x->cdr->_type)&&(x->cdr->cdr&&!x->cdr->cdr->_type)&&(x->cdr->cdr->cdr&&!x->cdr->cdr->cdr->_type))? x->cdr->cdr->cdr->car:(void*)0; }
p_sao_obj sao_is_eq(p_sao_obj x, p_sao_obj y) {
 do{
  if (x == y) return x;
  if (!x || !y) break;
  if (x->_type != y->_type) break;
  switch (x->_type) {
   case type_long: if(x->_long == y->_long) return x;
   case type_symbol:
   case type_string: if(!libc_(libc_strcmp,"strcmp")(x->_string, y->_string)) return x;
  }
 }while(0);
 return (void*)0;
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
   if (fw->pos==0) libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"DEBUG no pos??");
   if (*(fw->pos)==0){
    libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"DEBUG end??");
    sao_enq_c(fw,(-1));
    break;
   }
  }
  ffic_func fgets = libc_(libc_fgets,"fgets");
  ffic_func strlen = libc_(libc_strlen,"strlen");
  int LINE_LEN = 1024;
  char*line=sao_calloc( sizeof(char) *(LINE_LEN) );;
  if(fw->_type==stream_file){
   if(argta[argt_i]){
    libc_(libc_printf,"printf")("> ");
   }
   fgets(line,LINE_LEN,fw->fp);
   long strlen_line = (long) strlen(line);
   if(strlen_line>0){
    for(int i=0;i<strlen_line;i++)
    {
     if('\n'==sao_enq_c(fw,line[i])){ line_num++; }
    }
   }else{
    sao_enq_c(fw,(-1));
   }
  }else{
   while( *(fw->pos)!=0 ){
    if('\n'==sao_enq_c(fw,(*(fw->pos)))){ line_num++; }
    fw->pos++;
   }
   sao_enq_c(fw,(-1));
  }
  libc_(libc_free,"free")(line);
 }while(0);
 return line_num;
}
p_sao_obj sao_expand(p_sao_obj var, p_sao_obj val, p_sao_obj ctx) { return cons(cons(var, val), ctx); }
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
 return (void*)0;
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
p_sao_obj sao_var(p_sao_obj var, p_sao_obj val, p_sao_obj ctx)
{
 if(!ctx) do{libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"ASSERT: sao_var() need ctx");libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"\n");libc_(libc_exit,"exit")(1);}while(0);
 p_sao_obj frame = car(ctx);
 if(!frame) do{libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"ASSERT: sao_var() found no car in ctx");libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"\n");libc_(libc_exit,"exit")(1);}while(0);
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
int sao_peek(sao_stream * fw)
{
 int c = 0;
 FileChar * ptr_head = fw->ptr_head;
 if(ptr_head!=0){ c = ptr_head->c; }
 return c;
}
p_sao_obj sao_read_list(sao_stream * fw)
{
 p_sao_obj obj;
 p_sao_obj cell = (void*)0;
 for (;;) {
  obj = sao_load_expr(fw);
  if (!(obj))
   return sao_reverse(cell, (void*)0);
  cell = cons(obj, cell);
 }
 return (void*)0;
}
void sao_comment(sao_stream * fw) { int c; for (;;) { c = sao_deq_c(fw); if (c == '\n' || c == (-1)) return; } }
double sao_eps = 0.0000001;
p_sao_obj sao_convert_default(ffic_string str){
 if(str){
  if(str[0]=='"'){
   return sao_new((sao_obj){._type=type_string, ._string=str});
  }else if((str[0]=='-'&&((long)libc_(libc_isdigit,"isdigit")(str[1])))||((long)libc_(libc_isdigit,"isdigit")(str[0]))){
   long l_val = atol(str);
   double d_val = atof(str);
   double d_diff = (d_val - l_val);
   p_sao_obj rt;
   rt = (d_diff>=-sao_eps && d_diff<=sao_eps) ? sao_new((sao_obj){._type=type_long, ._long=l_val}) : sao_new((sao_obj){._type=type_double, ._double=d_val});
   rt->_raw = str;
   return rt;
  }else{
   return sao_new((sao_obj){._type=type_symbol,._string=str});
  }
 }
 return (void*)0;
}
void sao_print_default(ffic_string str, p_sao_obj el){
 if (str) libc_(libc_printf,"printf")("%s ", str);
 if (!el) { return; }
 switch (el->_type) {
  case type_string:
   libc_(libc_printf,"printf")("\"%s\"", el->_string); break;
  case type_long:
   libc_(libc_printf,"printf")("%ld", el->_long); break;
  case type_double:
   libc_(libc_printf,"printf")("%g", el->_double); break;
  case type_list:
   {
    int skip=0;
    p_sao_obj ptr = el;
    if(!argta[argt_l]){
     sao_print_default(0, car(ptr));
     skip=1;
    }
    libc_(libc_printf,"printf")("(");
    while (ptr) {
     if(!argta[argt_l]){
      if(skip==1){
       skip=0;
      }else{
       libc_(libc_printf,"printf")(" ");
       sao_print_default(0, ptr->car);
      }
     }else{
      libc_(libc_printf,"printf")(" ");
      sao_print_default(0, ptr->car);
     }
     if ((ptr->cdr)) {
      if (ptr->cdr->_type == type_list) {
       ptr = ptr->cdr;
      } else {
       sao_print_default(".", ptr->cdr);
       break;
      }
     } else
      break;
    }
    libc_(libc_printf,"printf")(")");
   }
  default:
   libc_(libc_printf,"printf")("%s", el->_raw); break;
 }
}
p_sao_obj sao_eval_default(p_sao_obj exp, p_sao_obj ctx){ return exp; }
p_sao_obj(*sao_str_convert)(ffic_string) = sao_convert_default;
void(*sao_print)(ffic_string,p_sao_obj) = sao_print_default;
p_sao_obj(*sao_eval)(p_sao_obj,p_sao_obj) = sao_eval_default;
p_sao_obj sao_load_expr(sao_stream * fw) {
 int c;
 p_sao_obj theSymbol = (void*)0;
 while( (c = sao_deq_c(fw))!=(-1) ) {
  switch(c){
   case '\n':
   case '\r':
    sao_read_line(fw);continue;
   case 0:
   case ' ':
   case '\t':
   case ',':
    if(theSymbol) break;
    continue;
   case ';':
   case '#':
    sao_comment(fw);continue;
   case '^':
    return cons(SAO_TAG_quote, cons(sao_load_expr(fw), (void*)0));
   case '\"':
    {
     char buf[2048] = {0}; int i = 0; int c;
     while ((c = sao_deq_c(fw)) != '\"') {
      if (c == (-1)) return (void*)0;
      if (i >= 2048) do{libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"String too long - maximum length %d characters",2048);libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"\n");libc_(libc_exit,"exit")(1);}while(0);
      buf[i++] = (char) c;
     }
     return sao_new((sao_obj){._type=type_string, ._string=buf});
    }
   case ')':
    return (void*)0;
   case '(':
    {
     p_sao_obj list = sao_read_list(fw);
     if(argta[argt_l]){ return list; }
     if(!theSymbol){
      theSymbol = sao_new((sao_obj){._type=type_symbol,._string="list"});
     }
     p_sao_obj rt = cons(theSymbol,list);
     return rt;
    }
   default:
    {
     char buf[2048] = {c};
     int i = 1, cc;
     while (cc=sao_peek(fw), !libc_(libc_strchr,"strchr")(" \t(),\r\n", cc)) {
      if (i >= 2048) do{libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"Symbol name too long - maximum length %d characters",2048);libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"\n");libc_(libc_exit,"exit")(1);}while(0);
      buf[i++] = sao_deq_c(fw);
     }
     theSymbol = sao_str_convert(buf);
     while (cc=sao_peek(fw), libc_(libc_strchr,"strchr")(" \t", cc)) sao_deq_c(fw);
     if(argta[argt_i]){
      if (libc_(libc_strchr,"strchr")(",(", sao_peek(fw))) continue;
     }else{
      if (libc_(libc_strchr,"strchr")(",\r\n(", sao_peek(fw))) continue;
     }
    }
  }
  break;
 }
 return theSymbol;
}
typedef enum { ctype_long, ctype_double, ctype_int, ctype_float, ctype_i64, ctype_u64, ctype_string, ctype_struct, ctype_pointer, } ctype_t; ffic_string ctype_names[] = { "long", "double", "int", "float", "i64", "u64", "string", "struct", "pointer", };;
enum { type_ctype=1+type_string, type_native, type_table, };
p_sao_obj SAO_TAG_true=(void*)0; p_sao_obj SAO_TAG_false=(void*)0; p_sao_obj SAO_TAG_set=(void*)0; p_sao_obj SAO_TAG_let=(void*)0; p_sao_obj SAO_TAG_var=(void*)0; p_sao_obj SAO_TAG_if=(void*)0; p_sao_obj SAO_TAG_lambda=(void*)0; p_sao_obj SAO_TAG_begin=(void*)0; p_sao_obj SAO_TAG_or=(void*)0; p_sao_obj SAO_TAG_else=(void*)0; p_sao_obj SAO_TAG_cond=(void*)0; p_sao_obj SAO_TAG_error=(void*)0; p_sao_obj SAO_TAG_procedure=(void*)0;;
void _sao_print(ffic_string str, p_sao_obj el){
 if(!el) return sao_print_default(str, el);
 switch (el->_type) {
  case type_string:
  case type_symbol:
  case type_long:
  case type_double:
   return sao_print_default(str, el);
 }
 if (str) libc_(libc_printf,"printf")("%s ", str);
 switch (el->_type) {
  case type_ctype:
   libc_(libc_printf,"printf")("<ctype>"); break;
  case type_native:
   libc_(libc_printf,"printf")("<function>"); break;
  case type_table:
   libc_(libc_printf,"printf")("<table %d>", el->_size); break;
  case type_list:
   if ( sao_is_eq(car(el),SAO_TAG_procedure)) {
    libc_(libc_printf,"printf")("<closure>");
    return;
   }
   int skip=0;
   p_sao_obj ptr = el;
   if(!argta[argt_l]){
     _sao_print(0, car(ptr));
     skip=1;
   }
   libc_(libc_printf,"printf")("(");
   while (ptr) {
    if(!argta[argt_l]){
     if(skip==1){
      skip=0;
     }else{
      libc_(libc_printf,"printf")(" ");
      _sao_print(0, ptr->car);
     }
    }else{
     libc_(libc_printf,"printf")(" ");
     _sao_print(0, ptr->car);
    }
    if ((ptr->cdr)) {
     if (ptr->cdr->_type == type_list) {
      ptr = ptr->cdr;
     } else {
      _sao_print(".", ptr->cdr);
      break;
     }
    } else
     break;
   }
   libc_(libc_printf,"printf")(")");
 }
}
p_sao_obj sao_not_false(p_sao_obj x) {
 p_sao_obj rt = x;
 if (!x || sao_is_eq(x, SAO_TAG_false)) rt = (void*)0;
 else if (x->_type == type_long && x->_long == 0) rt = (void*)0;
 return rt;
}
p_sao_obj sao_eval_list(p_sao_obj exp, p_sao_obj ctx) {
 if (!(exp)) return (void*)0;
 return cons(sao_eval(car(exp), ctx), sao_eval_list(cdr(exp), ctx));
}
long sao_table_hash(const ffic_string s, int ht_size) {
 long h = 0;
 ffic_string u = s;
 while (*u) { h = (h * 256 + (*u)) % ht_size; u++; }
 return h;
}
p_sao_obj sao_table_lookup(p_sao_obj holder,ffic_string s) {
 if(!holder) do{libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"sao_table_lookup(holder)\n");libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"\n");libc_(libc_exit,"exit")(1);}while(0);
 p_sao_obj* the_table = holder->_table;
 if(!the_table) do{libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"empty _table?");libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"\n");libc_(libc_exit,"exit")(1);}while(0);
 if(!holder->_size) do{libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"empty _table.size?");libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"\n");libc_(libc_exit,"exit")(1);}while(0);
 long h = sao_table_hash(s, holder->_size);
 return the_table[h];
}
p_sao_obj sao_table_insert(p_sao_obj holder,p_sao_obj key_obj){
 if(!holder) do{libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"sao_table_insert(holder)\n");libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"\n");libc_(libc_exit,"exit")(1);}while(0);
 if(!key_obj) do{libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"sao_table_insert(key_obj)\n");libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"\n");libc_(libc_exit,"exit")(1);}while(0);
 p_sao_obj* the_table = holder->_table;
 if(!the_table) do{libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"empty _table?");libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"\n");libc_(libc_exit,"exit")(1);}while(0);
 if(!holder->_size) do{libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"empty _table.size?");libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"\n");libc_(libc_exit,"exit")(1);}while(0);
 long h = sao_table_hash(key_obj->_string, holder->_size);
 if(the_table[h]){
 }
 the_table[h]= key_obj;
 return holder;
}
p_sao_obj sao_tbl_resize(p_sao_obj holder,int size){
 if(!holder)
  holder = sao_new((sao_obj){._type=type_table, ._size=size,._table=sao_calloc( sizeof(p_sao_obj) *(size) )});
 else{
  holder->_table = sao_calloc( sizeof(p_sao_obj) *(size) );
  holder->_size = size;
 }
 return holder;
}
p_sao_obj _sao_eval(p_sao_obj exp, p_sao_obj ctx) {
tail:
 if (!exp) { return (void*)0; }
 else if (exp->_type == type_long || exp->_type == type_string) { return exp; }
 else if (exp->_type == type_symbol) {
  p_sao_obj sym = sao_get_var(exp, ctx);
  if (!sym) { if(argta[argt_s]){ do{libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"ERROR: symbol(%s) not found.\n",exp->_string);libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"\n");libc_(libc_exit,"exit")(1);}while(0); } } return sym;
 }
 else if((exp&&!exp->_type)){
  p_sao_obj _car = car(exp);
  p_sao_obj _cadr = cadr(exp);
  if (sao_is_eq(_car, SAO_TAG_quote)) { return _cadr; }
  else if (sao_is_eq(_car, SAO_TAG_lambda)) { return cons(SAO_TAG_procedure, cons(_cadr, cons(cddr(exp), cons(ctx, (void*)0)))); }
  else if (sao_is_eq(_car, SAO_TAG_var)) {
   if ((_cadr&&_cadr->_type)) sao_var(_cadr, sao_eval(caddr(exp), ctx), ctx);
   else {
    p_sao_obj closure = sao_eval(cons(SAO_TAG_lambda, cons(cdr(_cadr),cddr(exp))), ctx);
    sao_var(car(_cadr), closure, ctx);
   }
   return SAO_TAG_true;
  }
  else if (sao_is_eq(_car, SAO_TAG_begin)) {
   p_sao_obj args = cdr(exp);
   for (; (cdr(args)); args = cdr(args)) sao_eval(car(args), ctx);
   exp = car(args);
   goto tail;
  }
  else if (sao_is_eq(_car, SAO_TAG_if)) {
   p_sao_obj predicate = sao_eval(_cadr, ctx);
   exp = (sao_not_false(predicate)) ? caddr(exp) : cadddr(exp);
   goto tail;
  }
  else if (sao_is_eq(_car, SAO_TAG_or)) {
   p_sao_obj predicate = sao_eval(_cadr, ctx);
   exp = (sao_not_false(predicate)) ? caddr(exp) : cadddr(exp);
   goto tail;
  }
  else if (sao_is_eq(_car, SAO_TAG_cond)) {
   p_sao_obj branch = cdr(exp);
   for (; (branch); branch = cdr(branch)) {
    if ( sao_is_eq(caar(branch), SAO_TAG_else) || sao_not_false(sao_eval(caar(branch), ctx)))
    {
     exp = cons(SAO_TAG_begin, cdar(branch));
     goto tail;
    }
   }
   return (void*)0;
  }
  else if (sao_is_eq(_car, SAO_TAG_set)) {
   if ((_cadr&&_cadr->_type)){
    sao_set(_cadr, sao_eval(caddr(exp), ctx), ctx);
   } else {
    p_sao_obj closure =
     sao_eval(cons(SAO_TAG_lambda, cons(cdr(_cadr),cddr(exp))), ctx);
    sao_set(car(_cadr), closure, ctx);
   }
   return SAO_TAG_true;
  }
  else if (sao_is_eq(_car, SAO_TAG_let)) {
   p_sao_obj idx;
   p_sao_obj vars = (void*)0, vals = (void*)0;
   if (!_cadr) return (void*)0;
   if ((_cadr&&_cadr->_type)) {
    for (idx = caddr(exp); (idx); idx = cdr(idx)) { vars = cons(caar(idx), vars); vals = cons(cadar(idx), vals); }
    sao_var(_cadr, sao_eval(cons(SAO_TAG_lambda, cons(vars,cdddr(exp))), sao_expand(vars, vals, ctx)), ctx);
    exp = cons(_cadr, vals);
    goto tail;
   }
   for (idx = _cadr; (idx); idx = cdr(idx)) { vars = cons(caar(idx), vars); vals = cons(cadar(idx), vals); }
   exp = cons(cons(SAO_TAG_lambda, cons(vars,cddr(exp))), vals);
   goto tail;
  }else
  {
   p_sao_obj proc = sao_eval(_car, ctx);
   p_sao_obj args = sao_eval_list(cdr(exp), ctx);
   if (!proc) {
    if(argta[argt_s]){
     sao_print("WARNING: not found correct native to run:", exp);
     libc_(libc_printf,"printf")("\n");
    }
    return (void*)0;
   }
   if (proc->_type == type_native){ return proc->_native(args); }
   if ( sao_is_eq(car(proc), SAO_TAG_procedure))
   {
    ctx = sao_expand(cadr(proc), args, cadddr(proc));
    exp = cons(SAO_TAG_begin, caddr(proc));
    goto tail;
   }
  }
 }
 else{
  sao_print("DEBUG: unhandle atom",exp);
 }
 libc_(libc_printf,"printf")("\n");
 return (void*)0;
}
p_sao_obj sao_type_assert(const ffic_string func, p_sao_obj obj, int type)
{
 if (!obj) {
  do{libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"Invalid argument to function %s: SAO_NULL\n", func);libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"\n");libc_(libc_exit,"exit")(1);}while(0);
 } else if (obj->_type != type) {
  do{libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"ERR: function %s. expected %s got %s\n", func, type_names[type], type_names[obj->_type]);libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"\n");libc_(libc_exit,"exit")(1);}while(0);
 }
 return obj;
}
p_sao_obj native_type(p_sao_obj args) { return sao_new((sao_obj){._type=type_symbol,._string=type_names[car(args)->_type]}); }
p_sao_obj native_list(p_sao_obj args) { return (args); }
p_sao_obj native_cons(p_sao_obj args) { return cons(car(args), cadr(args)); }
p_sao_obj native_car(p_sao_obj args) { if(argta[argt_s]) (sao_type_assert((ffic_string)__func__, car(args), type_list)); return caar(args); }
p_sao_obj native_cdr(p_sao_obj args) { if(argta[argt_s]) (sao_type_assert((ffic_string)__func__, car(args), type_list)); return cdar(args); }
p_sao_obj native_setcar(p_sao_obj args) { (sao_type_assert((ffic_string)__func__, car(args), type_list)); (args->car->car = (cadr(args))); return (void*)0; }
p_sao_obj native_setcdr(p_sao_obj args) { (sao_type_assert((ffic_string)__func__, car(args), type_list)); (args->car->cdr = (cadr(args))); return (void*)0; }
p_sao_obj native_is_null(p_sao_obj args) { return !(car(args)) ? SAO_TAG_true : SAO_TAG_false; }
p_sao_obj native_pairq(p_sao_obj args) {
 if (car(args)->_type != type_list) return SAO_TAG_false;
 return ((caar(args)&&caar(args)->_type) && (cdar(args)&&cdar(args)->_type)) ? SAO_TAG_true : SAO_TAG_false;
}
p_sao_obj native_is_list(p_sao_obj args) {
 p_sao_obj list;
 if (car(args)->_type != type_list)
  return SAO_TAG_false;
 for (list = car(args); (list); list = list->cdr)
  if ((list->cdr) && (list->cdr->_type != type_list))
   return SAO_TAG_false;
 return (car(args)->_type == type_list && native_pairq(args) != SAO_TAG_true) ? SAO_TAG_true : SAO_TAG_false;
}
p_sao_obj native_atom(p_sao_obj expr) {
 return (car(expr)&&car(expr)->_type) ? SAO_TAG_true : SAO_TAG_false;
}
p_sao_obj native_eq(p_sao_obj args) { return sao_is_eq(car(args), cadr(args)) ? SAO_TAG_true : SAO_TAG_false; }
p_sao_obj native_same(p_sao_obj args) {
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
 if ((car(args)->_type == type_table) && (cadr(args)->_type == type_table)) {
  if (car(args)->_size != cadr(args)->_size) {
   return SAO_TAG_false;
  }
  p_sao_obj *va = car(args)->_table;
  p_sao_obj *vb = cadr(args)->_table;
  int i = 0;
  for (i = 0; i < car(args)->_size; i++) {
   if (!sao_is_eq(*(va + i), *(vb + i))) {
    return SAO_TAG_false;
   }
  }
  return SAO_TAG_true;
 }
 return SAO_TAG_false;
}
p_sao_obj native_cmp(p_sao_obj args) {
 if ((car(args)->_type != type_long) || (cadr(args)->_type != type_long)) return SAO_TAG_false;
 return (car(args)->_long == cadr(args)->_long) ? SAO_TAG_true : SAO_TAG_false;
}
p_sao_obj native_gt(p_sao_obj sexp) {
 (sao_type_assert((ffic_string)__func__, car(sexp), type_long));
 (sao_type_assert((ffic_string)__func__, cadr(sexp), type_long));
 return (car(sexp)->_long > cadr(sexp)->_long) ? SAO_TAG_true : SAO_TAG_false;
}
p_sao_obj native_lt(p_sao_obj sexp) {
 (sao_type_assert((ffic_string)__func__, car(sexp), type_long));
 (sao_type_assert((ffic_string)__func__, cadr(sexp), type_long));
 return (car(sexp)->_long < cadr(sexp)->_long) ? SAO_TAG_true : SAO_TAG_false;
}
p_sao_obj native_add(p_sao_obj list) {
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
p_sao_obj native_sub(p_sao_obj list) {
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
p_sao_obj native_div(p_sao_obj list) {
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
p_sao_obj native_mul(p_sao_obj list) {
 (sao_type_assert((ffic_string)__func__, car(list), type_long));
 long total = car(list)->_long;
 list = cdr(list);
 while ((list)) {
  (sao_type_assert((ffic_string)__func__, car(list), type_long));
  total *= car(list)->_long;
  list = cdr(list);
 }
 return sao_new((sao_obj){._type=type_long, ._long=total});
}
char* sao_strcat(char * dst, char * src){
 char *target = libc_(libc_malloc,"malloc")((long)libc_(libc_strlen,"strlen")(dst) + (long)libc_(libc_strlen,"strlen")(src) + 1);
 libc_(libc_strcpy,"strcpy")(target, dst);
 libc_(libc_strcat,"strcat")(target, src);
 return target;
}
p_sao_obj native_shell(p_sao_obj args) {
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
p_sao_obj native_ffi(p_sao_obj args) {
 sao_print("ffi todo",args);
 return SAO_TAG_true;
}
p_sao_obj native_exit(p_sao_obj args) { libc_(libc_exit,"exit")(0); return (void*)0; }
p_sao_obj native_read(p_sao_obj args) { return sao_load_expr(sao_stream_new(libc_(libc_stdin,"stdin"),stream_file)); }
p_sao_obj native_load(p_sao_obj args) {
 p_sao_obj exp;
 p_sao_obj ret = (void*)0;
 ffic_string filename = car(args)->_string;
 void*fp = libc_(libc_fopen,"fopen")(filename, "r");
 if (fp == 0) {
  libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"Error opening file %s\n", filename);
  return (void*)0;
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
p_sao_obj native_vector(p_sao_obj args) {
 p_sao_obj sym = (sao_type_assert((ffic_string)__func__, car(args), type_long));
 return sao_new((sao_obj){._type=type_table, ._size=sym->_long,._table=sao_calloc( sizeof(p_sao_obj) *(sym->_long) )});
}
p_sao_obj native_vget(p_sao_obj args) {
 p_sao_obj vct = (sao_type_assert((ffic_string)__func__, car(args), type_table));
 p_sao_obj key = (sao_type_assert((ffic_string)__func__, cadr(args), type_long));
 if (key->_long >= vct->_size) return (void*)0;
 return vct->_table[key->_long];
}
p_sao_obj native_vset(p_sao_obj args){
 p_sao_obj vct = (sao_type_assert((ffic_string)__func__, car(args), type_table));
 p_sao_obj key = (sao_type_assert((ffic_string)__func__, cadr(args), type_long));
 if (!(caddr(args))) return (void*)0;
 if (key->_long >= vct->_size) return (void*)0;
 car(args)->_table[key->_long] = caddr(args);
 return SAO_TAG_true;
}
p_sao_obj native_print(p_sao_obj args) {
 sao_print(0, car(args));
 libc_(libc_printf,"printf")("\n");
 return (void*)0;
}
p_sao_obj native_c_int(p_sao_obj args) {
 p_sao_obj _car;
 p_sao_obj _cdr = args;
 char * s=(void*)0;
 while( (_car = car(_cdr)) ) {
  if(!s){ s=_car->_string; }
  else s=sao_strcat(s,_car->_string);
  _cdr = cdr(_cdr);
 }
 libc_(libc_printf,"printf")("\n native_c_int=%s\n",s);
 return (void*)0;
}
p_sao_obj saolang_init()
{
 sao_print = _sao_print;
 sao_eval = _sao_eval;
 SAO_TAG_true=sao_new((sao_obj){._type=type_symbol,._string="true"});sao_var(SAO_TAG_true,SAO_TAG_true,SAO_TAG_global); SAO_TAG_false=sao_new((sao_obj){._type=type_symbol,._string="false"});sao_var(SAO_TAG_false,SAO_TAG_false,SAO_TAG_global); SAO_TAG_set=sao_new((sao_obj){._type=type_symbol,._string="set"});sao_var(SAO_TAG_set,SAO_TAG_set,SAO_TAG_global); SAO_TAG_let=sao_new((sao_obj){._type=type_symbol,._string="let"});sao_var(SAO_TAG_let,SAO_TAG_let,SAO_TAG_global); SAO_TAG_var=sao_new((sao_obj){._type=type_symbol,._string="var"});sao_var(SAO_TAG_var,SAO_TAG_var,SAO_TAG_global); SAO_TAG_if=sao_new((sao_obj){._type=type_symbol,._string="if"});sao_var(SAO_TAG_if,SAO_TAG_if,SAO_TAG_global); SAO_TAG_lambda=sao_new((sao_obj){._type=type_symbol,._string="lambda"});sao_var(SAO_TAG_lambda,SAO_TAG_lambda,SAO_TAG_global); SAO_TAG_begin=sao_new((sao_obj){._type=type_symbol,._string="begin"});sao_var(SAO_TAG_begin,SAO_TAG_begin,SAO_TAG_global); SAO_TAG_or=sao_new((sao_obj){._type=type_symbol,._string="or"});sao_var(SAO_TAG_or,SAO_TAG_or,SAO_TAG_global); SAO_TAG_else=sao_new((sao_obj){._type=type_symbol,._string="else"});sao_var(SAO_TAG_else,SAO_TAG_else,SAO_TAG_global); SAO_TAG_cond=sao_new((sao_obj){._type=type_symbol,._string="cond"});sao_var(SAO_TAG_cond,SAO_TAG_cond,SAO_TAG_global); SAO_TAG_error=sao_new((sao_obj){._type=type_symbol,._string="error"});sao_var(SAO_TAG_error,SAO_TAG_error,SAO_TAG_global); SAO_TAG_procedure=sao_new((sao_obj){._type=type_symbol,._string="procedure"});sao_var(SAO_TAG_procedure,SAO_TAG_procedure,SAO_TAG_global);;
 sao_var(sao_new((sao_obj){._type=type_symbol,._string="print"}), sao_new((sao_obj){._type=type_native, ._native=native_print,._ffi="print"}), SAO_TAG_global); sao_var(sao_new((sao_obj){._type=type_symbol,._string="lt"}), sao_new((sao_obj){._type=type_native, ._native=native_lt,._ffi="lt"}), SAO_TAG_global); sao_var(sao_new((sao_obj){._type=type_symbol,._string="add"}), sao_new((sao_obj){._type=type_native, ._native=native_add,._ffi="add"}), SAO_TAG_global); sao_var(sao_new((sao_obj){._type=type_symbol,._string="sub"}), sao_new((sao_obj){._type=type_native, ._native=native_sub,._ffi="sub"}), SAO_TAG_global); sao_var(sao_new((sao_obj){._type=type_symbol,._string="exit"}), sao_new((sao_obj){._type=type_native, ._native=native_exit,._ffi="exit"}), SAO_TAG_global);;
 sao_var(sao_new((sao_obj){._type=type_symbol,._string="atom"}), sao_new((sao_obj){._type=type_native, ._native=native_atom,._ffi="atom"}), SAO_TAG_global); sao_var(sao_new((sao_obj){._type=type_symbol,._string="eq"}), sao_new((sao_obj){._type=type_native, ._native=native_eq,._ffi="eq"}), SAO_TAG_global); sao_var(sao_new((sao_obj){._type=type_symbol,._string="car"}), sao_new((sao_obj){._type=type_native, ._native=native_car,._ffi="car"}), SAO_TAG_global); sao_var(sao_new((sao_obj){._type=type_symbol,._string="cdr"}), sao_new((sao_obj){._type=type_native, ._native=native_cdr,._ffi="cdr"}), SAO_TAG_global); sao_var(sao_new((sao_obj){._type=type_symbol,._string="cons"}), sao_new((sao_obj){._type=type_native, ._native=native_cons,._ffi="cons"}), SAO_TAG_global);;
 sao_var(sao_new((sao_obj){._type=type_symbol,._string="exit"}), sao_new((sao_obj){._type=type_native, ._native=native_exit,._ffi="exit"}), SAO_TAG_global); sao_var(sao_new((sao_obj){._type=type_symbol,._string="shell"}), sao_new((sao_obj){._type=type_native, ._native=native_shell,._ffi="shell"}), SAO_TAG_global); sao_var(sao_new((sao_obj){._type=type_symbol,._string="ffi"}), sao_new((sao_obj){._type=type_native, ._native=native_ffi,._ffi="ffi"}), SAO_TAG_global); sao_var(sao_new((sao_obj){._type=type_symbol,._string="type"}), sao_new((sao_obj){._type=type_native, ._native=native_type,._ffi="type"}), SAO_TAG_global); sao_var(sao_new((sao_obj){._type=type_symbol,._string="cons"}), sao_new((sao_obj){._type=type_native, ._native=native_cons,._ffi="cons"}), SAO_TAG_global); sao_var(sao_new((sao_obj){._type=type_symbol,._string="setcar"}), sao_new((sao_obj){._type=type_native, ._native=native_setcar,._ffi="setcar"}), SAO_TAG_global); sao_var(sao_new((sao_obj){._type=type_symbol,._string="setcdr"}), sao_new((sao_obj){._type=type_native, ._native=native_setcdr,._ffi="setcdr"}), SAO_TAG_global); sao_var(sao_new((sao_obj){._type=type_symbol,._string="list"}), sao_new((sao_obj){._type=type_native, ._native=native_list,._ffi="list"}), SAO_TAG_global); sao_var(sao_new((sao_obj){._type=type_symbol,._string="vector"}), sao_new((sao_obj){._type=type_native, ._native=native_vector,._ffi="vector"}), SAO_TAG_global); sao_var(sao_new((sao_obj){._type=type_symbol,._string="vget"}), sao_new((sao_obj){._type=type_native, ._native=native_vget,._ffi="vget"}), SAO_TAG_global); sao_var(sao_new((sao_obj){._type=type_symbol,._string="vset"}), sao_new((sao_obj){._type=type_native, ._native=native_vset,._ffi="vset"}), SAO_TAG_global); sao_var(sao_new((sao_obj){._type=type_symbol,._string="load"}), sao_new((sao_obj){._type=type_native, ._native=native_load,._ffi="load"}), SAO_TAG_global); sao_var(sao_new((sao_obj){._type=type_symbol,._string="print"}), sao_new((sao_obj){._type=type_native, ._native=native_print,._ffi="print"}), SAO_TAG_global); sao_var(sao_new((sao_obj){._type=type_symbol,._string="read"}), sao_new((sao_obj){._type=type_native, ._native=native_read,._ffi="read"}), SAO_TAG_global); sao_var(sao_new((sao_obj){._type=type_symbol,._string="add"}), sao_new((sao_obj){._type=type_native, ._native=native_add,._ffi="add"}), SAO_TAG_global); sao_var(sao_new((sao_obj){._type=type_symbol,._string="sub"}), sao_new((sao_obj){._type=type_native, ._native=native_sub,._ffi="sub"}), SAO_TAG_global); sao_var(sao_new((sao_obj){._type=type_symbol,._string="mul"}), sao_new((sao_obj){._type=type_native, ._native=native_mul,._ffi="mul"}), SAO_TAG_global); sao_var(sao_new((sao_obj){._type=type_symbol,._string="div"}), sao_new((sao_obj){._type=type_native, ._native=native_div,._ffi="div"}), SAO_TAG_global); sao_var(sao_new((sao_obj){._type=type_symbol,._string="cmp"}), sao_new((sao_obj){._type=type_native, ._native=native_cmp,._ffi="cmp"}), SAO_TAG_global); sao_var(sao_new((sao_obj){._type=type_symbol,._string="lt"}), sao_new((sao_obj){._type=type_native, ._native=native_lt,._ffi="lt"}), SAO_TAG_global); sao_var(sao_new((sao_obj){._type=type_symbol,._string="gt"}), sao_new((sao_obj){._type=type_native, ._native=native_gt,._ffi="gt"}), SAO_TAG_global); sao_var(sao_new((sao_obj){._type=type_symbol,._string="is_null"}), sao_new((sao_obj){._type=type_native, ._native=native_is_null,._ffi="is_null"}), SAO_TAG_global); sao_var(sao_new((sao_obj){._type=type_symbol,._string="is_list"}), sao_new((sao_obj){._type=type_native, ._native=native_is_list,._ffi="is_list"}), SAO_TAG_global); sao_var(sao_new((sao_obj){._type=type_symbol,._string="pairq"}), sao_new((sao_obj){._type=type_native, ._native=native_pairq,._ffi="pairq"}), SAO_TAG_global); sao_var(sao_new((sao_obj){._type=type_symbol,._string="eq"}), sao_new((sao_obj){._type=type_native, ._native=native_eq,._ffi="eq"}), SAO_TAG_global); sao_var(sao_new((sao_obj){._type=type_symbol,._string="same"}), sao_new((sao_obj){._type=type_native, ._native=native_same,._ffi="same"}), SAO_TAG_global);;
 sao_var(sao_new((sao_obj){._type=type_symbol,._string="c_int"}), sao_new((sao_obj){._type=type_native, ._native=native_c_int,._ffi="c_int"}), SAO_TAG_global);;
 return SAO_TAG_global;
}
p_sao_obj sao_parse( sao_stream * fw, p_sao_obj ctx ) {
 sao_read_line(fw);
 ffic_u64 (*microtime)() = ( ffic_u64(*)() ) libc_(libc_microtime,"microtime");
 p_sao_obj rt = (void*)0;
 p_sao_obj exp;
 while((exp=sao_load_expr(fw))){
  if(argta[argt_d]) libc_(libc_printf,"printf")("%llu: ",microtime());
  if(argta[argt_i]||argta[argt_d]){ sao_print("<=", exp); libc_(libc_printf,"printf")("\n"); }
  if (ctx){
   rt = sao_eval(exp,ctx);
   if(argta[argt_d]) libc_(libc_printf,"printf")("%llu: ",microtime());
   if((argta[argt_i]||argta[argt_d])){sao_print("=>", rt); libc_(libc_printf,"printf")("\n");}
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
 ffic_func strcmp = libc_(libc_strcmp,"strcmp");
 atof= (ffic_func_d) libc_(libc_atof,"atof");
 atol= (ffic_func_l) libc_(libc_atol,"atol");
 libc_(libc_setmode,"setmode")(libc_(libc_fileno,"fileno")(libc_(libc_stdin,"stdin")),0x8000 );
 SAO_TAG_global = sao_expand((void*)0, (void*)0, (void*)0);
 SAO_TAG_argv = sao_expand((void*)0, (void*)0, (void*)0);
 SAO_TAG_quote=sao_new((sao_obj){._type=type_symbol,._string="quote"});sao_var(SAO_TAG_quote,SAO_TAG_quote,SAO_TAG_global);
 ffic_string script_file = "-";
 int found_any = 0;
 if(argc>1){
  char argv_line[512] = "_(";
  ffic_string argv_ptr = &argv_line[2];
  for(int i=1;i<argc;i++){ (*argv_ptr++)=' ';ffic_string wk=argv[i];while(*wk) (*argv_ptr++)=(*wk++);}
  *argv_ptr++ = ')'; *argv_ptr++ = '\0';
  sao_stream * fw = sao_stream_new(argv_line,stream_char);
  p_sao_obj arg_expr = sao_load_expr( fw );
  p_sao_obj pos = cdr(arg_expr);
  while(pos){
   p_sao_obj _car = car(pos);
   ffic_string string_or_name=(void*)0;
   long l_val = 1;
   if((_car&&!_car->_type)){
    p_sao_obj _caar = car(_car);
    if(_caar){ string_or_name = _caar->_raw; }
    p_sao_obj _cadar = cadr(_car);
    if(_cadar) l_val = atol(_cadar->_raw);
   }else{
    if(_car) string_or_name = _car->_raw;
   }
   if(string_or_name){
    sao_var(sao_new((sao_obj){._type=type_symbol,._string=string_or_name}), sao_new((sao_obj){._type=type_long, ._long=l_val}), SAO_TAG_argv);
    int found = 0;
    for(int i=0;i<=argt_h;i++) if(!strcmp(string_or_name,argt_names[i])){ argta[i]+=l_val; found=1;break; }
    if(!found) script_file = string_or_name; else found_any++;
   }
   pos = cdr(pos);
  }
  libc_(libc_free,"free")(fw);
  sao_var(SAO_TAG_argv,SAO_TAG_argv,SAO_TAG_global);
 }
 void* fp;
 if(!strcmp("-",script_file)){
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
 p_sao_obj ctx = (void*)0;
 ctx = saolang_init();
 p_sao_obj result = sao_parse( fw, ctx );
 if(argta[argt_p]){ sao_print(0,result);libc_(libc_printf,"printf")("\n"); }
 libc_(libc_fclose,"fclose")(fp); libc_(libc_free,"free")(fw);
 return 0;
}
