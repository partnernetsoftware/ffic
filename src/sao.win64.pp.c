enum { libc_fprintf, libc_malloc, libc_memset, libc_memcpy, libc_strcpy, libc_strlen, libc_strdup, libc_strcmp, libc_strchr, libc_strcat, libc_printf, libc_putc, libc_getc, libc_isalnum, libc_isdigit, libc_isalpha, libc_fopen, libc_fread, libc_fgets, libc_fclose, libc_feof, libc_fputc, libc_fflush, libc_free, libc_system, libc_atol, libc_atoi, libc_atof, libc_usleep, libc_msleep, libc_sleep, libc_setmode, libc_fileno, libc_stdin, libc_stdout, libc_stderr, libc_microtime, libc_exit, };
typedef void* ffic_ptr;
typedef ffic_ptr(*ffic_func)();
typedef char* ffic_string;
typedef enum { ffic_os_unknown, ffic_os_win, ffic_os_osx, ffic_os_unx, } ffic_os_t;
ffic_os_t ffic_os = ffic_os_win;
ffic_string ffic_libcname = "msvcrt";
ffic_string ffic_sosuffix = ".dll";
static ffic_func ffic_gettimeofday=(ffic_ptr)0;
typedef struct __FILE FILE;
typedef signed char ffic_i8;
typedef unsigned char ffic_u8;
typedef signed short int ffic_i16;
typedef unsigned short int ffic_u16;
typedef signed int ffic_i32;
typedef unsigned int ffic_u32;
typedef signed long int ffic_ipt;
typedef signed long int ffic_i64;
typedef unsigned long int ffic_u64;
extern ffic_ptr LoadLibraryA(const char*);
extern ffic_ptr GetProcAddress(ffic_ptr,const char*);
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
 ffic_ptr rt = GetProcAddress(LoadLibraryA(libfilename), funcname);
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
typedef enum { ctype_long, ctype_double, ctype_int, ctype_float, ctype_i64, ctype_u64, ctype_string, ctype_struct, ctype_pointer, } ctype_t; ffic_string ctype_names[] = { "long", "double", "int", "float", "i64", "u64", "string", "struct", "pointer", };;
typedef enum { stream_file, stream_char, } stream_t; ffic_string stream_names[] = { "file", "char", };;
typedef enum { type_list, type_integer, type_double, type_symbol, type_string, type_native, type_vector, type_table, type_ctype, } type_t; ffic_string type_names[] = { "list", "integer", "double", "symbol", "string", "native", "vector", "table", "ctype", };;
typedef struct _sao_obj sao_obj,*p_sao_obj;
typedef p_sao_obj (*native_t)(p_sao_obj );
typedef union { struct { p_sao_obj car; p_sao_obj cdr; }; struct { p_sao_obj* _vector; long _len; }; struct { p_sao_obj* _table; long _size; }; struct { ffic_string _string; long _depth;}; struct { native_t _native; ffic_string _ffi;}; long _integer; double _double;} sao_obj_v, *p_sao_obj_v;
struct _sao_obj {
   union{ void* ptr; type_t _type; };
   ffic_string _raw;
   union { struct { p_sao_obj car; p_sao_obj cdr; }; struct { p_sao_obj* _vector; long _len; }; struct { p_sao_obj* _table; long _size; }; struct { ffic_string _string; long _depth;}; struct { native_t _native; ffic_string _ffi;}; long _integer; double _double;};
};
p_sao_obj sao_new(sao_obj tpl) {
 sao_obj * ret = libc_(libc_malloc,"malloc")(sizeof(sao_obj));
 libc_(libc_memcpy,"memcpy")(ret,&tpl,sizeof(sao_obj));
 switch(ret->_type){
  case type_symbol:
  case type_string:
   ret->_raw=libc_(libc_strdup,"strdup")(ret->_string);
   ret->_string=libc_(libc_strdup,"strdup")(ret->_string);
   break;
  case type_vector:
   ret->_vector = sao_calloc( sizeof(p_sao_obj) *(ret->_len) );break;
  case type_table:
   ret->_table = sao_calloc( sizeof(p_sao_obj) *(ret->_size) );break;
  case type_native:
   break;
  case type_double:
  case type_integer:
  case type_list:
   break;
  case type_ctype:
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
p_sao_obj cons(p_sao_obj car, p_sao_obj cdr) { p_sao_obj ret = sao_new((sao_obj){._type=type_list,.car=car,.cdr=cdr});return ret; }
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
   case type_integer: if(x->_integer == y->_integer) return x;
   case type_symbol:
   case type_string: if(!libc_(libc_strcmp,"strcmp")(x->_string, y->_string)) return x;
   default: break;
  }
 }while(0);
 return (void*)0;
}
p_sao_obj sao_append(p_sao_obj L1, p_sao_obj L2) { return (L1)?cons(car(L1), sao_append(cdr(L1), L2)) : L2; }
p_sao_obj sao_reverse(p_sao_obj L, p_sao_obj F) { return (!L) ? F: sao_reverse(cdr(L), cons(car(L), F)); }
p_sao_obj sao_is_tagged(p_sao_obj cell, p_sao_obj tag) { return (cell&&!cell->_type) ? sao_is_eq(car(cell),tag) : (void*)0; }
int sao_list_len(p_sao_obj expr) { return (expr) ? (1+sao_list_len(cdr(expr))):0; }
int sao_deq_c(sao_stream *fw)
{
 int c = -2;
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
   if(feof(fw->fp)){ break; }
  }else{
   if (fw->pos==0) libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"DEBUG no pos?");
   if (*(fw->pos)==0){
    libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"DEBUG end?");
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
   if (sao_is_eq(car(vars), var))
    return car(vals);
   vars = cdr(vars);
   vals = cdr(vals);
  }
  ctx = cdr(ctx);
 }
 return (void*)0;
}
p_sao_obj sao_set_var(p_sao_obj var, p_sao_obj val, p_sao_obj ctx) {
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
char type_symbolS[] = "~!@#$%&*_-+\\:.<>|{}[]?=/";
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
int sao_read_int(sao_stream * fw, int start)
{
 while ( ((long)libc_(libc_isdigit,"isdigit")(sao_peek(fw))) ) start = start * 10 + (sao_deq_c(fw) - '0');
 return start;
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
p_sao_obj sao_default_convert(ffic_string str){
 if(str){
  if(str[0]=='"'){
   return sao_new((sao_obj){._type=type_string, ._string=str});
  }else if(str[0]=='-'||((long)libc_(libc_isdigit,"isdigit")(str[0]))){
   double d_val = (double) (ffic_ipt) libc_(libc_atof,"atof")(str);
   long l_val = (long) libc_(libc_atol,"atol")(str);
   int i_val = (long) libc_(libc_atoi,"atoi")(str);
   libc_(libc_printf,"printf")("DEBUG sao_default_convert=%s,l_val=%ld,d_val=%f,i_val=%d\n",str,l_val,d_val,i_val);
   return sao_new((sao_obj){._type=type_string, ._string=str});
  }else{
   return sao_new((sao_obj){._type=type_symbol,._string=str});
  }
 }
 return (void*)0;
}
p_sao_obj(*sao_str_convert)(ffic_string) = sao_default_convert;
p_sao_obj sao_load_expr(sao_stream * fw)
{
 int c;
 for (;;) {
  c = sao_deq_c(fw);
  switch(c){
   case (-1):
    return (void*)0;
   case -2:
    sao_read_line(fw);continue;
   case '\n':
   case '\r':
   case ' ':
   case '\t':
   case 0:
   case ',':
    continue;
   case '\"':
    {
     char buf[2048]; int i = 0; int c;
     while ((c = sao_deq_c(fw)) != '\"') {
      if (c == (-1)) return (void*)0;
      if (i >= 2048) do{libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"String too long - maximum length %d characters",2048);libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"\n");libc_(libc_exit,"exit")(1);}while(0);
      buf[i++] = (char) c;
     }
     buf[i] = '\0';
     p_sao_obj theSymbol = sao_new((sao_obj){._type=type_string, ._string=buf});
     return theSymbol;
    }
  }
  if (c == ';' || c=='#' || (c=='/'&&'/'==sao_peek(fw))){ sao_comment(fw); continue; }
  if (c == '^'){
   return cons(SAO_TAG_quote, cons(sao_load_expr(fw), (void*)0));
  }
  p_sao_obj theSymbol = (void*)0;
  if (c!='('&&c!=')')
  {
   char buf[2048];
   buf[0] = c;
   int i = 1;
   int cc;
   while (cc=sao_peek(fw),((long)libc_(libc_isalnum,"isalnum")(cc)) || libc_(libc_strchr,"strchr")(type_symbolS, cc))
   {
    if (i >= 2048) do{libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"Symbol name too long - maximum length %d characters",2048);libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"\n");libc_(libc_exit,"exit")(1);}while(0);
    buf[i++] = sao_deq_c(fw);
   }
   buf[i] = '\0';
   theSymbol = sao_str_convert(buf);
   if(argta[argt_l]){ return theSymbol; }
   else{
    while( (libc_(libc_strchr,"strchr")(" \t", sao_peek(fw))) ) c = sao_deq_c(fw);
    if('('==sao_peek(fw)){
     c = sao_deq_c(fw);
    }else{
     return theSymbol;
    }
   }
  }
  if (c == '(') {
   p_sao_obj list = sao_read_list(fw);
   if(argta[argt_l]){ return list; }
   list = cons(theSymbol,list);
   return list;
  }
  if (c == ')') {
   return (void*)0;
  }
 }
 return (void*)0;
}
p_sao_obj sao_eval(p_sao_obj exp, p_sao_obj ctx) { return exp; }
void sao_out_expr(ffic_string str, p_sao_obj el){
 if (str) libc_(libc_printf,"printf")("%s ", str);
 if (!el) { return; }
 switch (el->_type) {
  case type_list:
   {
    int skip=0;
    p_sao_obj ptr = el;
    if(!argta[argt_l]){
      sao_out_expr(0, car(ptr));
      skip=1;
    }
    libc_(libc_printf,"printf")("(");
    while (ptr)
    {
     if(!argta[argt_l]){
      if(skip==1){
       skip=0;
      }else{
       libc_(libc_printf,"printf")(" ");
       sao_out_expr(0, car(ptr));
      }
     }else{
      libc_(libc_printf,"printf")(" ");
      sao_out_expr(0, car(ptr));
     }
     if (cdr(ptr))
     {
      if ((cdr(ptr)&&!cdr(ptr)->_type))
       ptr = ptr->cdr;
      else {
       sao_out_expr(".", ptr->cdr);
       break;
      }
     } else
      break;
    }
    libc_(libc_printf,"printf")(")");
   }
   break;
  case type_integer:
   libc_(libc_printf,"printf")("%ld", el->_integer); break;
  case type_string:
   libc_(libc_printf,"printf")("\"%s\"", el->_string); break;
  default:
   libc_(libc_printf,"printf")("<%s>", el->_raw); break;
 }
}
p_sao_obj sao_parse( sao_stream * fw, p_sao_obj ctx ) {
 sao_read_line(fw);
 ffic_u64 (*microtime)() = ( ffic_u64(*)() ) libc_(libc_microtime,"microtime");
 p_sao_obj rt = (void*)0;
 p_sao_obj exp;
 while((exp=sao_load_expr(fw))){
  if(argta[argt_d]) libc_(libc_printf,"printf")("%llu: ",microtime());
  if(argta[argt_i]||argta[argt_d]){ sao_out_expr("<=", exp); libc_(libc_printf,"printf")("\n"); }
  if (ctx){
   rt = sao_eval(exp,ctx);
   if(argta[argt_d]) libc_(libc_printf,"printf")("%llu: ",microtime());
   if((argta[argt_i]||argta[argt_d])&&rt){sao_out_expr("=>", rt); libc_(libc_printf,"printf")("\n");}
  }else{
   rt = exp;
   if((argta[argt_i]||argta[argt_d])){
    sao_out_expr("==>", rt); libc_(libc_printf,"printf")("\n");
   }
  }
 }
 return rt;
}
void print_version(){ libc_(libc_printf,"printf")(" SaoLang (R) v" "0.0.7" " - Wanjo Chan (c) 2020\n"); }
void print_help(){ libc_(libc_printf,"printf")("Usage	 : sao [options] [script.sao | -]]\nOptions	 :\n	h:	Help\n	v:	Version\n	i:	Interactive\n	p:	Print final result\n	d:	Dev only\n	e:	Eval\n	s:	Strict mode\n	l:	Lisp syntax\n"); }
int main(int argc,char **argv, char** envp) {
 ffic_func strcmp = libc_(libc_strcmp,"strcmp");
 libc_(libc_setmode,"setmode")(libc_(libc_fileno,"fileno")(libc_(libc_stdin,"stdin")),0x8000 );
 SAO_TAG_global = sao_expand((void*)0, (void*)0, (void*)0);
 SAO_TAG_argv = sao_expand((void*)0, (void*)0, (void*)0);
 SAO_TAG_quote=sao_new((sao_obj){._type=type_symbol,._string="quote"});sao_var(SAO_TAG_quote,SAO_TAG_quote,SAO_TAG_global);;
 ffic_string script_file = "-";
 int found_any = 0;
 if(argc>1){
  char argv_line[512] = "_(";
  ffic_string argv_ptr = &argv_line[2];
  for(int i=1;i<argc;i++){*argv_ptr++=' ';ffic_string wk=argv[i];while(*wk)*argv_ptr++=*wk++;}
  *argv_ptr++ = ')'; *argv_ptr++ = '\0';
  sao_stream * fw = sao_stream_new(argv_line,stream_char);
  p_sao_obj arg_expr = sao_load_expr( fw );
  p_sao_obj pos = cdr(arg_expr);
  while(pos){
   p_sao_obj _car = car(pos);
   ffic_string string_or_name;
   int l_val = 0;
   if((_car&&!_car->_type)){
    p_sao_obj _caar = car(_car);
    string_or_name = _caar->_string;
    p_sao_obj _cadar = car(cdr(_car));
    if(_cadar) l_val = (long) libc_(libc_atol,"atol")(_cadar->_raw);
   }else{
    string_or_name = _car->_string;
    l_val = 1;
   }
   sao_var(sao_new((sao_obj){._type=type_symbol,._string=string_or_name}), sao_new((sao_obj){._type=type_integer, ._integer=l_val}), SAO_TAG_argv);
   int found = 0;
   for(int i=0;i<=argt_h;i++) if(!strcmp(string_or_name,argt_names[i])){ argta[i]+=l_val; found=1;break; }
   if(!found) script_file = string_or_name; else found_any++;
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
 p_sao_obj result = sao_parse( fw, ctx );
 if(argta[argt_p]){ sao_out_expr(0,result);libc_(libc_printf,"printf")("\n"); }
 libc_(libc_fclose,"fclose")(fp); libc_(libc_free,"free")(fw);
 return 0;
}
