enum { libc_fprintf, libc_stderr, libc_malloc, libc_memset, libc_strdup, libc_strcmp, libc_printf, libc_stdin, libc_putc, libc_getc, libc_isalnum, libc_strchr, libc_isdigit, libc_isalpha, libc_fopen, libc_fread, libc_fgets, libc_fclose, libc_feof, libc_usleep, libc_msleep, libc_sleep, libc_fputc, libc_setmode, libc_fileno, libc_stdout, libc_strlen, libc_fflush, libc_free, libc_microtime, libc_exit, };
void* (*libc_a[libc_exit+1])();
typedef signed char sao_i8;
typedef unsigned char sao_u8;
typedef signed short int sao_i16;
typedef unsigned short int sao_u16;
typedef signed int sao_i32;
typedef unsigned int sao_u32;
typedef signed long int sao_i64;
typedef unsigned long int sao_u64;
typedef struct __FILE FILE;
extern FILE *__stdinp;
extern FILE *__stdoutp;
extern FILE *__stderrp;
typedef void* ffic_ptr;
typedef ffic_ptr(*ffic_func)();
extern int fprintf(FILE *stream, const char *format, ...);
extern int fflush(FILE *stream);
extern int strcmp(const char*,const char*);
extern ffic_ptr dlopen(const char *,int);
extern ffic_ptr dlsym(ffic_ptr, const char *);
void ffic_strcat(char *buffer, const char *source, const char* append) {
 while (*source) {
  *buffer = *source;
  source++;
  buffer++;
 }
 while (*append) {
  *buffer= *append;
  append++;
  buffer++;
 }
 *buffer = '\0';
}
ffic_ptr ffic_void(){return 0;};
ffic_ptr(*ffic_raw(const char* part1, const char* funcname, const char* part2))()
{
 char libfilename[256] = {0};
 ffic_strcat(libfilename,part1,
   (part2==0)?
   ".dylib"
   :part2
   );
 return dlsym(dlopen(libfilename,1 ), funcname);
}
ffic_ptr ffic_usleep(int nano_seconds)
{
 ffic_raw("libc","usleep",0)(nano_seconds);
 return 0;
};
ffic_ptr ffic_msleep(int microseconds)
{
 ffic_raw("libc","usleep",0)(microseconds*1000);
 return 0;
};
ffic_ptr ffic_sleep(int seconds)
{
 ffic_raw("libc","usleep",0)(seconds*1000000);
 return 0;
}
sao_u64 ffic_microtime(void);
ffic_ptr(*ffic(const char* libname, const char* funcname, ...))()
{
 ffic_ptr addr = 0;
 if(!strcmp("c",libname)){
  if(!strcmp("stderr",funcname)){ addr = __stderrp; }
  else if(!strcmp("stdout",funcname)){ addr = __stdoutp; }
  else if(!strcmp("stdin",funcname)){ addr = __stdinp; }
  else{
   libname =
    "libc"
    ;
   if(!strcmp("microtime",funcname)){ return (ffic_ptr) ffic_microtime; }
   else if(!strcmp("usleep",funcname)){ return ffic_usleep; }
   else if(!strcmp("sleep",funcname)){ return ffic_sleep; }
   else if(!strcmp("msleep",funcname)){ return ffic_msleep; }
   else if(!strcmp("setmode",funcname)){
    addr = ffic_void;
   }
  }
 }
 if(addr==0) addr = ffic_raw(libname,funcname,0);
 if(0==addr){
  fprintf(__stderrp,"ERR: Not found %s.%s\n", libname, funcname);fflush(__stderrp);
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
 if (!gettimeofday) gettimeofday = ffic("c","gettimeofday");
 gettimeofday(&tv, 0);
 return (sao_u64)tv.tv_sec*(sao_u64)1000 + ((tv.tv_usec)/1000)%1000;
}
ffic_func libcbf(int fi,const char* fn);
ffic_func libcbf(int fi,const char* fn){ return libc_a[fi]?libc_a[fi]:(libc_a[fi]=ffic("c",fn)); }
typedef enum { stream_file, stream_char, } stream_t; char* stream_names[] = { "file", "char", };;
typedef enum { type_integer, type_symbol, type_string, type_list, type_native, type_table, } type_t; char* type_names[] = { "integer", "symbol", "string", "list", "native", "table", };;
typedef enum { ctype_long, ctype_double, ctype_any, } ctype_t; char* ctype_names[] = { "long", "double", "any", };;
typedef struct _sao_object sao_object;
typedef sao_object *(*native_t)(sao_object *);
struct _sao_object {
 type_t type;
 union {
  long _integer;
  char *_string;
  struct {
   sao_object **_table;
   int _tblen;
  };
  struct {
   sao_object *car;
   sao_object *cdr;
  };
  double _double;
  native_t native;
 };
} __attribute__((packed));
sao_object*NIL=0; sao_object*END_LIST=0; sao_object*GLOBAL=0; sao_object*TRUE=0; sao_object*FALSE=0; sao_object*QUOTE=0; sao_object*SET=0; sao_object*LET=0; sao_object*DEFINE=0; sao_object*PROCEDURE=0; sao_object*IF=0; sao_object*LAMBDA=0; sao_object*BEGIN=0;;
int is_tagged(sao_object *cell, sao_object *tag);
sao_object *cons(sao_object *car, sao_object *cdr);
sao_object *native_load(sao_object *args);
sao_object *cdr(sao_object *);
sao_object *car(sao_object *);
sao_object *sao_lookup_var(sao_object *var, sao_object *ctx);
int sao_type_check(const char *func, sao_object *obj, type_t type);
typedef struct _FileChar {
 int c;
 struct _FileChar * ptr_prev;
 struct _FileChar * ptr_next;
} FileChar;
typedef struct {
 stream_t type;
 void* fp;
 char* pos;
 FileChar * ptr_start;
 FileChar * ptr_head;
 FileChar * ptr_last;
 long rest;
 long total;
} SaoStream;
SaoStream * SaoStream_new(void*,stream_t);
long sao_is_digit(int c);
long sao_is_alpha(int c);
long sao_is_alphanumber(int c);
sao_object *sao_eval(sao_object *exp, sao_object *ctx);
sao_object *sao_load_expr(SaoStream * fw);
void sao_comment(SaoStream * fw);
sao_object *sao_load_str(SaoStream * fw);
sao_object *sao_read_list(SaoStream * fw);
int sao_read_int(SaoStream * fw, int start);
int sao_peek(SaoStream * fw);
sao_object *sao_make_integer(int x);
sao_object *sao_read_symbol(SaoStream * fw, char start);
void sao_out_expr(char *str, sao_object *e);
long sao_is_digit(int c) { return (long) libcbf(libc_isdigit,"isdigit")(c); }
long sao_is_alpha(int c) { return (long) libcbf(libc_isalpha,"isalpha")(c); }
long sao_is_alphanumber(int c) { return (long) libcbf(libc_isalnum,"isalnum")(c); }
void* sao_alloc_c(long _sizeof){return libcbf(libc_memset,"memset")(libcbf(libc_malloc,"malloc")(_sizeof),0,_sizeof);}
void ht_insert(sao_object *key_obj);
struct htable { sao_object *key; };
static struct htable *gHTable = 0;
static int gHTable_len = 0;
static long ht_hash(const char *s, int ht_len) {
 long h = 0;
 char *u = (char *) s;
 while (*u) { h = (h * 256 + (*u)) % ht_len; u++; }
 return h;
}
int ht_resize(int newsize){
 struct htable * newTable = libcbf(libc_malloc,"malloc")(sizeof(struct htable) * newsize);
 libcbf(libc_memset,"memset")(newTable, 0, sizeof(struct htable) * newsize);
 for(int i=0;i<gHTable_len;i++){
  if (0!=gHTable[i].key) {
   int h = ht_hash(gHTable[i].key->_string, newsize);
   if(0 != newTable[h].key){
    libcbf(libc_printf,"printf")("DEBUG !!! newTable still full ??\n");
   }
   newTable[h].key = gHTable[i].key;
  }
 }
 gHTable = newTable;
 gHTable_len = newsize;
 return newsize;
}
void ht_insert(sao_object *key_obj)
{
 long h = ht_hash(key_obj->_string, gHTable_len);
 if(0 != gHTable[h].key && 0!=gHTable[h].key->_string){
  int newsize = 2*(gHTable_len+1)-1 ;
  ht_resize( newsize );
  ht_insert( key_obj );
  return;
 }
 gHTable[h].key = key_obj;
}
sao_object *ht_lookup(char *s) {
 long h = ht_hash(s, gHTable_len);
 return gHTable[h].key;
}
sao_object *sao_alloc() {
 sao_object*ret=sao_alloc_c( sizeof(sao_object) );
 return ret;
}
int sao_type_check(const char *func, sao_object *obj, type_t type)
{
 if (((obj)==0||(obj)==NIL)) {
  libcbf(libc_fprintf,"fprintf")(libcbf(libc_stderr,"stderr"),"Invalid argument to function %s: NIL\n", func);
  libcbf(libc_exit,"exit")(1);
 } else if (obj->type != type) {
  libcbf(libc_fprintf,"fprintf")(libcbf(libc_stderr,"stderr"),"ERR: function %s. expected %s got %s\n", func, type_names[type], type_names[obj->type]);
  libcbf(libc_exit,"exit")(1);
 }
 return 1;
}
sao_object *make_table(int size) {
 sao_object *ret = sao_alloc();
 ret->type = type_table;
 ret->_table = libcbf(libc_malloc,"malloc")(sizeof(sao_object *) * size);
 ret->_tblen = size;
 libcbf(libc_memset,"memset")(ret->_table, 0, size);
 return ret;
}
sao_object *sao_make_symbol(char *s) {
 sao_object *ret = ht_lookup(s);
 if (((ret)==0||(ret)==NIL)) {
  ret = sao_alloc();
  ret->type = type_symbol;
  ret->_string = libcbf(libc_strdup,"strdup")(s);
  ht_insert(ret);
 }else{
  if(!libcbf(libc_strcmp,"strcmp")(ret->_string,s)){
  }else{
   int newsize = 2*(gHTable_len+1)-1 ;
   ht_resize( newsize );
   return sao_make_symbol(s);
  }
 }
 return ret;
}
sao_object *make_integer(int x) {
 sao_object *ret = sao_alloc();
 ret->type = type_integer;
 ret->_integer = x;
 return ret;
}
sao_object *make_native(native_t x) {
 sao_object *ret = sao_alloc();
 ret->type = type_native;
 ret->native = x;
 return ret;
}
sao_object *make_lambda(sao_object *params, sao_object *body) {
 return cons(LAMBDA, cons(params, body));
}
sao_object *make_procedure(sao_object *params, sao_object *body,
  sao_object *ctx) {
 return cons(PROCEDURE, cons(params, cons(body, cons(ctx, END_LIST))));
}
sao_object *cons(sao_object *car, sao_object *cdr) {
 sao_object *ret = sao_alloc();
 ret->type = type_list;
 ret->car = car;
 ret->cdr = cdr;
 return ret;
}
sao_object *car(sao_object *cell) {
 if (((cell)==0||(cell)==NIL) || cell->type != type_list) return NIL;
 return cell->car;
}
sao_object *cdr(sao_object *cell) {
 if (((cell)==0||(cell)==NIL) || cell->type != type_list) return NIL;
 return cell->cdr;
}
sao_object *append(sao_object *l1, sao_object *l2) {
 if (((l1)==0||(l1)==NIL)) return l2;
 return cons(car(l1), append(cdr(l1), l2));
}
sao_object * sao_reverse(sao_object *list, sao_object *first) {
 sao_object * rt = (((list)==0||(list)==NIL)) ? first :
  sao_reverse(cdr(list), cons(car(list), first));
 return rt;
}
int is_equal(sao_object *x, sao_object *y) {
 if (x == y)
  return 1;
 if (((x)==0||(x)==NIL) || ((y)==0||(y)==NIL))
  return 0;
 if (x->type != y->type)
  return 0;
 switch (x->type) {
  case type_list: return 0;
  case type_integer: return x->_integer == y->_integer;
  case type_symbol:
  case type_string: return !libcbf(libc_strcmp,"strcmp")(x->_string, y->_string);
  case type_native: return 0;
  case type_table: return 0;
 }
 return 0;
}
int not_false(sao_object *x) {
 if (((x)==0||(x)==NIL) || is_equal(x, FALSE)) return 0;
 if (x->type == type_integer && x->_integer == 0) return 0;
 return 1;
}
int is_tagged(sao_object *cell, sao_object *tag)
{
 if (((cell)==0||(cell)==NIL) || cell->type != type_list) return 0;
 return is_equal(car(cell), tag);
}
int sao_length(sao_object *exp) {
 if (((exp)==0||(exp)==NIL)) return 0;
 return 1 + sao_length(cdr(exp));
}
sao_object *native_type(sao_object *args) {
 return sao_make_symbol(type_names[car(args)->type]);
}
sao_object *native_global(sao_object *args) {
 return GLOBAL;
}
sao_object *native_list(sao_object *args) {
 return (args);
}
sao_object *native_cons(sao_object *args) {
 return cons(car(args), (car(cdr((args)))));
}
sao_object *native_car(sao_object *args) {
 return (car(car((args))));
}
sao_object *native_cdr(sao_object *args) {
 return (cdr(car((args))));
}
sao_object *native_setcar(sao_object *args) {
 (sao_type_check(__func__, car(args), type_list));
 (args->car->car = ((car(cdr((args))))));
 return NIL;
}
sao_object *native_setcdr(sao_object *args) {
 (sao_type_check(__func__, car(args), type_list));
 (args->car->cdr = ((car(cdr((args))))));
 return NIL;
}
sao_object *native_is_null(sao_object *args) {
 return ((((car(args)))==0||((car(args)))==NIL) || (car(args)) == END_LIST) ? TRUE : FALSE;
}
sao_object *native_pairq(sao_object *args) {
 if (car(args)->type != type_list)
  return FALSE;
 return ((!(((car(car((args)))))==0||((car(car((args)))))==NIL) && ((car(car((args)))))->type != type_list) && (!(((cdr(car((args)))))==0||((cdr(car((args)))))==NIL) && ((cdr(car((args)))))->type != type_list)) ? TRUE : FALSE;
}
sao_object *native_is_list(sao_object *args) {
 sao_object *list;
 if (car(args)->type != type_list)
  return FALSE;
 for (list = car(args); !((list)==0||(list)==NIL); list = list->cdr)
  if (!((list->cdr)==0||(list->cdr)==NIL) && (list->cdr->type != type_list))
   return FALSE;
 return (car(args)->type == type_list && native_pairq(args) != TRUE) ? TRUE : FALSE;
}
sao_object *native_atomq(sao_object *sexp) {
 return (!((car(sexp))==0||(car(sexp))==NIL) && (car(sexp))->type != type_list) ? TRUE : FALSE;
}
sao_object *native_cmp(sao_object *args) {
 if ((car(args)->type != type_integer) || ((car(cdr((args))))->type != type_integer))
  return FALSE;
 return (car(args)->_integer == (car(cdr((args))))->_integer) ? TRUE : FALSE;
}
sao_object *native_not(sao_object *args) {
 return native_cmp(args);
}
sao_object *native_eqq(sao_object *args) {
 return is_equal(car(args), (car(cdr((args))))) ? TRUE : FALSE;
}
sao_object *native_equalq(sao_object *args) {
 if (is_equal(car(args), (car(cdr((args))))))
  return TRUE;
 if ((car(args)->type == type_list) && ((car(cdr((args))))->type == type_list)) {
  sao_object *a, *b;
  a = car(args);
  b = (car(cdr((args))));
  while (!((a)==0||(a)==NIL) && !((b)==0||(b)==NIL)) {
   if (!is_equal(car(a), car(b)))
    return FALSE;
   a = cdr(a);
   b = cdr(b);
  }
  return TRUE;
 }
 if ((car(args)->type == type_table) && ((car(cdr((args))))->type == type_table)) {
  if (car(args)->_tblen != (car(cdr((args))))->_tblen) {
   return FALSE;
  }
  sao_object **va = car(args)->_table;
  sao_object **vb = (car(cdr((args))))->_table;
  int i = 0;
  for (i = 0; i < car(args)->_tblen; i++) {
   if (!is_equal(*(va + i), *(vb + i))) {
    return FALSE;
   }
  }
  return TRUE;
 }
 return FALSE;
}
sao_object *native_add(sao_object *list) {
 (sao_type_check(__func__, car(list), type_integer));
 long total = car(list)->_integer;
 list = cdr(list);
 while (!((((car(list)))==0||((car(list)))==NIL) || (car(list)) == END_LIST))
 {
  (sao_type_check(__func__, car(list), type_integer));
  total += car(list)->_integer;
  list = cdr(list);
 }
 return make_integer(total);
}
sao_object *native_sub(sao_object *list) {
 (sao_type_check(__func__, car(list), type_integer));
 long total = car(list)->_integer;
 list = cdr(list);
 while (!((list)==0||(list)==NIL)) {
  (sao_type_check(__func__, car(list), type_integer));
  total -= car(list)->_integer;
  list = cdr(list);
 }
 return make_integer(total);
}
sao_object *native_div(sao_object *list) {
 (sao_type_check(__func__, car(list), type_integer));
 long total = car(list)->_integer;
 list = cdr(list);
 while (!((list)==0||(list)==NIL)) {
  (sao_type_check(__func__, car(list), type_integer));
  total /= car(list)->_integer;
  list = cdr(list);
 }
 return make_integer(total);
}
sao_object *native_mul(sao_object *list) {
 (sao_type_check(__func__, car(list), type_integer));
 long total = car(list)->_integer;
 list = cdr(list);
 while (!((list)==0||(list)==NIL)) {
  (sao_type_check(__func__, car(list), type_integer));
  total *= car(list)->_integer;
  list = cdr(list);
 }
 return make_integer(total);
}
sao_object *native_gt(sao_object *sexp) {
 (sao_type_check(__func__, car(sexp), type_integer));
 (sao_type_check(__func__, (car(cdr((sexp)))), type_integer));
 return (car(sexp)->_integer > (car(cdr((sexp))))->_integer) ? TRUE : NIL;
}
sao_object *native_lt(sao_object *sexp) {
 (sao_type_check(__func__, car(sexp), type_integer));
 (sao_type_check(__func__, (car(cdr((sexp)))), type_integer));
 return (car(sexp)->_integer < (car(cdr((sexp))))->_integer) ? TRUE : NIL;
}
sao_object * native_ffi(sao_object *args) {
 sao_out_expr("ffi todo",args);
 return NIL;
}
sao_object *native_exit(sao_object *args) {
 libcbf(libc_exit,"exit")(0);
 return NIL;
}
sao_object *native_read(sao_object *args) {
 return sao_load_expr(SaoStream_new(libcbf(libc_stdin,"stdin"),stream_file));
}
sao_object *native_tget(sao_object *args) {
 (sao_type_check(__func__, car(args), type_table));
 (sao_type_check(__func__, (car(cdr((args)))), type_integer));
 if ((car(cdr((args))))->_integer >= car(args)->_tblen)
  return NIL;
 return car(args)->_table[(car(cdr((args))))->_integer];
}
sao_object *native_tset(sao_object *args) {
 (sao_type_check(__func__, car(args), type_table));
 (sao_type_check(__func__, (car(cdr((args)))), type_integer));
 if ((((car(cdr(cdr((args))))))==0||((car(cdr(cdr((args))))))==NIL))
  return NIL;
 if ((car(cdr((args))))->_integer >= car(args)->_tblen)
  return NIL;
 car(args)->_table[(car(cdr((args))))->_integer] = (car(cdr(cdr((args)))));
 return sao_make_symbol("ok");
}
sao_object *native_table(sao_object *args) {
 (sao_type_check(__func__, car(args), type_integer));
 return make_table(car(args)->_integer);
}
sao_object *sao_expand(sao_object *var, sao_object *val, sao_object *ctx) {
 return cons(cons(var, val), ctx);
}
sao_object *sao_lookup_var(sao_object *var, sao_object *ctx) {
 while (!((ctx)==0||(ctx)==NIL)) {
  sao_object *frame = car(ctx);
  sao_object *vars = car(frame);
  sao_object *vals = cdr(frame);
  while (!((vars)==0||(vars)==NIL)) {
   if (is_equal(car(vars), var))
    return car(vals);
   vars = cdr(vars);
   vals = cdr(vals);
  }
  ctx = cdr(ctx);
 }
 return NIL;
}
void set_variable(sao_object *var, sao_object *val, sao_object *ctx) {
 while (!((ctx)==0||(ctx)==NIL)) {
  sao_object *frame = car(ctx);
  sao_object *vars = car(frame);
  sao_object *vals = cdr(frame);
  while (!((vars)==0||(vars)==NIL)) {
   if (is_equal(car(vars), var)) {
    vals->car = val;
    return;
   }
   vars = cdr(vars);
   vals = cdr(vals);
  }
  ctx = cdr(ctx);
 }
}
sao_object *define_variable(sao_object *var, sao_object *val, sao_object *ctx)
{
 sao_object *frame = car(ctx);
 sao_object *vars = car(frame);
 sao_object *vals = cdr(frame);
 while (!((vars)==0||(vars)==NIL)) {
  if (is_equal(var, car(vars))) {
   vals->car = val;
   return val;
  }
  vars = cdr(vars);
  vals = cdr(vals);
 }
 frame->car = cons(var, car(frame));
 frame->cdr = cons(val, cdr(frame));
 return val;
}
char type_symbolS[] = "~!@#$%^&*_-+\\:.<>|{}[]?=/";
sao_object *eval_list(sao_object *exp, sao_object *ctx) {
 if (((exp)==0||(exp)==NIL)) return NIL;
 return cons(sao_eval(car(exp), ctx), eval_list(cdr(exp), ctx));
}
sao_object *eval_sequence(sao_object *exps, sao_object *ctx) {
 if (((cdr(exps))==0||(cdr(exps))==NIL)) return sao_eval(car(exps), ctx);
 sao_eval(car(exps), ctx);
 return eval_sequence(cdr(exps), ctx);
}
sao_object *native_load(sao_object *args) {
 sao_object *exp;
 sao_object *ret = 0;
 char *filename = car(args)->_string;
 void*fp = libcbf(libc_fopen,"fopen")(filename, "r");
 if (fp == 0) {
  libcbf(libc_printf,"printf")("Error opening file %s\n", filename);
  return NIL;
 }
 SaoStream * fw = SaoStream_new(fp,stream_file);
 for (;;) {
  exp = sao_load_expr(fw);
  if (((exp)==0||(exp)==NIL))
   break;
  ret = sao_eval(exp, GLOBAL);
 }
 libcbf(libc_fclose,"fclose")(fp);
 return ret;
}
SaoStream * SaoStream_new(void* fp,stream_t type)
{
 SaoStream*fw=sao_alloc_c( sizeof(SaoStream) );
 fw->fp = fp;
 if(type==stream_char) fw->pos = fp;
 fw->type = type;
 return fw;
}
int sao_deq_c(SaoStream *fw)
{
 int c = -2;
 FileChar * ptr_head = fw->ptr_head;
 if(ptr_head!=0){
  c = ptr_head->c;
  fw->ptr_head=ptr_head->ptr_next;
  fw->rest --;
 }
 return c;
}
int sao_enq_c(SaoStream* fw,int k){
 FileChar*fc=sao_alloc_c( sizeof(FileChar) );
 fc->c = k;
 fc->ptr_prev= fw->ptr_last;
 if(0==fw->ptr_start){
  fw->ptr_start = fc;
 }
 if(0==fw->ptr_head){
  fw->ptr_head = fc;
 }
 if(0!=fw->ptr_last){
  fw->ptr_last->ptr_next = fc;
 }
 fw->ptr_last = fc;
 fw->rest ++;
 return k;
}
int depth = 0;
int line_num = 0;
int sao_read_line(SaoStream* fw)
{
 ffic_func feof = libcbf(libc_feof,"feof");
 do{
  if(fw->type==stream_file){
   if(feof(fw->fp)){ break; }
  }else{
   if (fw->pos==0) libcbf(libc_fprintf,"fprintf")(libcbf(libc_stderr,"stderr"),"DEBUG no pos?");
   if (*(fw->pos)==0){
    libcbf(libc_fprintf,"fprintf")(libcbf(libc_stderr,"stderr"),"DEBUG end?");
    break;
   }
  }
  ffic_func fgets = libcbf(libc_fgets,"fgets");
  ffic_func malloc = libcbf(libc_malloc,"malloc");
  ffic_func memset = libcbf(libc_memset,"memset");
  ffic_func strlen = libcbf(libc_strlen,"strlen");
  int LINE_LEN = 1024;
  char*line=sao_alloc_c( sizeof(char) *LINE_LEN );
  if(fw->type==stream_file){
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
 }while(0);
 return line_num;
}
sao_object *native_print(sao_object *args) {
 sao_out_expr(0, car(args));
 libcbf(libc_printf,"printf")("\n");
 return NIL;
}
sao_object *sao_read_symbol(SaoStream * fw, char start)
{
 char buf[128];
 buf[0] = start;
 int i = 1;
 while (sao_is_alphanumber(sao_peek(fw))
   || libcbf(libc_strchr,"strchr")(type_symbolS, sao_peek(fw)))
 {
  if (i >= 128)
   do{libcbf(libc_fprintf,"fprintf")(libcbf(libc_stderr,"stderr"),"%s\n","Symbol name too long - maximum length 128 characters");libcbf(libc_exit,"exit")(1);}while(0);
  buf[i++] = sao_deq_c(fw);
 }
 buf[i] = '\0';
 return sao_make_symbol(buf);
}
sao_object *sao_make_integer(int x)
{
 sao_object *ret = sao_alloc();
 ret->type = type_integer;
 ret->_integer = x;
 return ret;
}
int sao_peek(SaoStream * fw)
{
 int c = 0;
 FileChar * ptr_head = fw->ptr_head;
 if(ptr_head!=0){
  c = ptr_head->c;
 }
 return c;
}
int sao_read_int(SaoStream * fw, int start)
{
 while ( sao_is_digit(sao_peek(fw)) )
  start = start * 10 + (sao_deq_c(fw) - '0');
 return start;
}
sao_object *sao_read_list(SaoStream * fw)
{
 sao_object *obj;
 sao_object *cell = END_LIST;
 for (;;) {
  obj = sao_load_expr(fw);
  if (obj == END_LIST)
   return sao_reverse(cell, END_LIST);
  cell = cons(obj, cell);
 }
 return END_LIST;
}
sao_object *sao_load_str(SaoStream * fw)
{
 char buf[256];
 int i = 0;
 int c;
 while ((c = sao_deq_c(fw)) != '\"') {
  if (c == (-1)) return NIL;
  if (i >= 256) do{libcbf(libc_fprintf,"fprintf")(libcbf(libc_stderr,"stderr"),"%s\n","String too long - maximum length 256 characters");libcbf(libc_exit,"exit")(1);}while(0);
  buf[i++] = (char) c;
 }
 buf[i] = '\0';
 sao_object *s = sao_make_symbol(buf);
 s->type = type_string;
 return s;
}
void sao_comment(SaoStream * fw)
{
 int c;
 for (;;) {
  c = sao_deq_c(fw);
  if (c == '\n' || c == (-1)) return;
 }
}
sao_object *sao_load_expr(SaoStream * fw)
{
 int c;
 for (;;) {
  sao_object * theSymbol = NIL;
  c = sao_deq_c(fw);
  switch(c){
   case (-1): return 0;
   case -2: sao_read_line(fw);continue;
   case '\n':
   case '\r':
   case ' ':
   case '\t':
   case 0:
   case ',': continue;
   case '\"': return sao_load_str(fw);
  }
  if (c == ';' || c=='#' || (c=='/'&&'/'==sao_peek(fw))){
   sao_comment(fw);
   continue;
  }
  if (c == '\''){
   sao_object * child = sao_load_expr(fw);
   return cons(QUOTE, cons(child, NIL));
  }
  if (libcbf(libc_isalpha,"isalpha")(c) || libcbf(libc_strchr,"strchr")(type_symbolS, c)){
   theSymbol = sao_read_symbol(fw,c);
   while(' '==sao_peek(fw)) c = sao_deq_c(fw);
   if('('==sao_peek(fw)){
    c = sao_deq_c(fw);
   }else{
    return theSymbol;
   }
  }
  if (c == '(') {
   depth++;
   sao_object * list = sao_read_list(fw);
   if(theSymbol!=NIL){
    list = cons(theSymbol,list);
   }
   return list;
  }
  if (c == ')') {
   depth--;
   return END_LIST;
  }
  if (sao_is_digit(c)) return sao_make_integer(sao_read_int(fw, c - '0'));
  if (c == '-' && sao_is_digit(sao_peek(fw)))
   return sao_make_integer(-1 * sao_read_int(fw, sao_deq_c(fw) - '0'));
 }
 return NIL;
}
void sao_out_expr(char *str, sao_object *e)
{
 if (str) libcbf(libc_printf,"printf")("%s ", str);
 if (((e)==0||(e)==NIL)) { libcbf(libc_printf,"printf")("'()"); return; }
 switch (e->type) {
  case type_string: libcbf(libc_printf,"printf")("\"%s\"", e->_string); break;
  case type_symbol: libcbf(libc_printf,"printf")("%s", e->_string); break;
  case type_integer: libcbf(libc_printf,"printf")("%ld", e->_integer); break;
  case type_native: libcbf(libc_printf,"printf")("<function>"); break;
  case type_table: libcbf(libc_printf,"printf")("<table %d>", e->_tblen); break;
  case type_list:
           if (is_tagged(e, PROCEDURE)) {
            libcbf(libc_printf,"printf")("<closure>");
            return;
           }
           int skip=0;
           sao_object **t = &e;
           if (!((*t)==0||(*t)==NIL)) {
            if(type_symbol == e->car->type){
             sao_out_expr(0, e->car);
             skip=1;
            }
           }
           libcbf(libc_printf,"printf")("(");
           while (!((*t)==0||(*t)==NIL)) {
            if(skip==1){
             skip=0;
            }else{
             libcbf(libc_printf,"printf")(" ");
             sao_out_expr(0, (*t)->car);
            }
            if (!(((*t)->cdr)==0||((*t)->cdr)==NIL)) {
             if ((*t)->cdr->type == type_list) {
              t = &(*t)->cdr;
             } else {
              sao_out_expr(".", (*t)->cdr);
              break;
             }
            } else
             break;
           }
           libcbf(libc_printf,"printf")(")");
 }
}
sao_object *sao_eval(sao_object *exp, sao_object *ctx)
{
tail:
 if (((exp)==0||(exp)==NIL) || exp == END_LIST) {
  return NIL;
 } else if (exp->type == type_integer || exp->type == type_string) {
  return exp;
 } else if (exp->type == type_symbol) {
  sao_object *s = sao_lookup_var(exp, ctx);
  return s;
 } else if (is_tagged(exp, QUOTE)) {
  return (car(cdr((exp))));
 } else if (is_tagged(exp, LAMBDA)) {
  return make_procedure((car(cdr((exp)))), (cdr(cdr((exp)))), ctx);
 } else if (is_tagged(exp, DEFINE)) {
  if ((!(((car(cdr((exp)))))==0||((car(cdr((exp)))))==NIL) && ((car(cdr((exp)))))->type != type_list))
   define_variable((car(cdr((exp)))), sao_eval((car(cdr(cdr((exp))))), ctx), ctx);
  else {
   sao_object *closure =
    sao_eval(make_lambda(cdr((car(cdr((exp))))), (cdr(cdr((exp))))), ctx);
   define_variable(car((car(cdr((exp))))), closure, ctx);
  }
  return sao_make_symbol("ok");
 } else if (is_tagged(exp, BEGIN)) {
  sao_object *args = cdr(exp);
  for (; !((cdr(args))==0||(cdr(args))==NIL); args = cdr(args))
   sao_eval(car(args), ctx);
  exp = car(args);
  goto tail;
 } else if (is_tagged(exp, IF)) {
  sao_object *predicate = sao_eval((car(cdr((exp)))), ctx);
  exp = (not_false(predicate)) ? (car(cdr(cdr((exp))))) : (car(cdr(cdr(cdr((exp))))));
  goto tail;
 } else if (is_tagged(exp, sao_make_symbol("or"))) {
  sao_object *predicate = sao_eval((car(cdr((exp)))), ctx);
  exp = (not_false(predicate)) ? (car(cdr(cdr((exp))))) : (car(cdr(cdr(cdr((exp))))));
  goto tail;
 } else if (is_tagged(exp, sao_make_symbol("cond"))) {
  sao_object *branch = cdr(exp);
  for (; !((branch)==0||(branch)==NIL); branch = cdr(branch)) {
   if (is_tagged(car(branch), sao_make_symbol("else")) ||
     not_false(sao_eval((car(car((branch)))), ctx))) {
    exp = cons(BEGIN, (cdr(car((branch)))));
    goto tail;
   }
  }
  return NIL;
 } else if (is_tagged(exp, SET)) {
  if ((!(((car(cdr((exp)))))==0||((car(cdr((exp)))))==NIL) && ((car(cdr((exp)))))->type != type_list))
   set_variable((car(cdr((exp)))), sao_eval((car(cdr(cdr((exp))))), ctx), ctx);
  else {
   sao_object *closure =
    sao_eval(make_lambda(cdr((car(cdr((exp))))), (cdr(cdr((exp))))), ctx);
   set_variable(car((car(cdr((exp))))), closure, ctx);
  }
  return sao_make_symbol("ok");
 } else if (is_tagged(exp, LET)) {
  sao_object **tmp;
  sao_object *vars = NIL;
  sao_object *vals = NIL;
  if ((((car(cdr((exp)))))==0||((car(cdr((exp)))))==NIL)) return NIL;
  if ((!(((car(cdr((exp)))))==0||((car(cdr((exp)))))==NIL) && ((car(cdr((exp)))))->type != type_list)) {
   for (tmp = &exp->cdr->cdr->car; !((*tmp)==0||(*tmp)==NIL); tmp = &(*tmp)->cdr) {
    vars = cons((car(car((*tmp)))), vars);
    vals = cons((car(cdr(car((*tmp))))), vals);
   }
   define_variable((car(cdr((exp)))),
     sao_eval(make_lambda(vars, cdr((cdr(cdr((exp)))))),
      sao_expand(vars, vals, ctx)),
     ctx);
   exp = cons((car(cdr((exp)))), vals);
   goto tail;
  }
  for (tmp = &exp->cdr->car; !((*tmp)==0||(*tmp)==NIL); tmp = &(*tmp)->cdr) {
   vars = cons((car(car((*tmp)))), vars);
   vals = cons((car(cdr(car((*tmp))))), vals);
  }
  exp = cons(make_lambda(vars, (cdr(cdr((exp))))), vals);
  goto tail;
 } else {
  sao_object *proc = sao_eval(car(exp), ctx);
  sao_object *args = eval_list(cdr(exp), ctx);
  if (((proc)==0||(proc)==NIL)) {
   return NIL;
  }
  if (proc->type == type_native)
   return proc->native(args);
  if (is_tagged(proc, PROCEDURE)) {
   ctx = sao_expand((car(cdr((proc)))), args, (car(cdr(cdr(cdr((proc)))))));
   exp = cons(BEGIN, (car(cdr(cdr((proc))))));
   goto tail;
  }
 }
 sao_out_expr("Invalid arguments to sao_eval:", exp);
 libcbf(libc_printf,"printf")("\n");
 return NIL;
}
sao_object * sao_init()
{
 GLOBAL = sao_expand(NIL, NIL, NIL);
 do{TRUE=sao_make_symbol("true");define_variable(TRUE,TRUE,GLOBAL);}while(0);;
 do{FALSE=sao_make_symbol("false");define_variable(FALSE,FALSE,GLOBAL);}while(0);;
 define_variable(sao_make_symbol("true"), TRUE, GLOBAL);
 define_variable(sao_make_symbol("false"), FALSE, GLOBAL);
 do{QUOTE=sao_make_symbol("quote");define_variable(QUOTE,QUOTE,GLOBAL);}while(0);;
 do{LAMBDA=sao_make_symbol("lambda");define_variable(LAMBDA,LAMBDA,GLOBAL);}while(0);;
 do{PROCEDURE=sao_make_symbol("procedure");define_variable(PROCEDURE,PROCEDURE,GLOBAL);}while(0);;
 do{DEFINE=sao_make_symbol("var");define_variable(DEFINE,DEFINE,GLOBAL);}while(0);;
 do{LET=sao_make_symbol("let");define_variable(LET,LET,GLOBAL);}while(0);;
 do{SET=sao_make_symbol("set!");define_variable(SET,SET,GLOBAL);}while(0);;
 do{BEGIN=sao_make_symbol("begin");define_variable(BEGIN,BEGIN,GLOBAL);}while(0);;
 do{IF=sao_make_symbol("if");define_variable(IF,IF,GLOBAL);}while(0);;
 define_variable(sao_make_symbol("exit"), make_native(native_exit), GLOBAL); define_variable(sao_make_symbol("ffi"), make_native(native_ffi), GLOBAL); define_variable(sao_make_symbol("global"), make_native(native_global), GLOBAL); define_variable(sao_make_symbol("type"), make_native(native_type), GLOBAL); define_variable(sao_make_symbol("cons"), make_native(native_cons), GLOBAL); define_variable(sao_make_symbol("car"), make_native(native_car), GLOBAL); define_variable(sao_make_symbol("cdr"), make_native(native_cdr), GLOBAL); define_variable(sao_make_symbol("setcar"), make_native(native_setcar), GLOBAL); define_variable(sao_make_symbol("setcdr"), make_native(native_setcdr), GLOBAL); define_variable(sao_make_symbol("list"), make_native(native_list), GLOBAL); define_variable(sao_make_symbol("table"), make_native(native_table), GLOBAL); define_variable(sao_make_symbol("tget"), make_native(native_tget), GLOBAL); define_variable(sao_make_symbol("tset"), make_native(native_tset), GLOBAL); define_variable(sao_make_symbol("add"), make_native(native_add), GLOBAL); define_variable(sao_make_symbol("sub"), make_native(native_sub), GLOBAL); define_variable(sao_make_symbol("mul"), make_native(native_mul), GLOBAL); define_variable(sao_make_symbol("div"), make_native(native_div), GLOBAL); define_variable(sao_make_symbol("cmp"), make_native(native_cmp), GLOBAL); define_variable(sao_make_symbol("not"), make_native(native_not), GLOBAL); define_variable(sao_make_symbol("lt"), make_native(native_lt), GLOBAL); define_variable(sao_make_symbol("gt"), make_native(native_gt), GLOBAL); define_variable(sao_make_symbol("load"), make_native(native_load), GLOBAL); define_variable(sao_make_symbol("print"), make_native(native_print), GLOBAL); define_variable(sao_make_symbol("read"), make_native(native_read), GLOBAL); define_variable(sao_make_symbol("is_null"), make_native(native_is_null), GLOBAL); define_variable(sao_make_symbol("is_list"), make_native(native_is_list), GLOBAL); define_variable(sao_make_symbol("pairq"), make_native(native_pairq), GLOBAL); define_variable(sao_make_symbol("atomq"), make_native(native_atomq), GLOBAL); define_variable(sao_make_symbol("eqq"), make_native(native_eqq), GLOBAL); define_variable(sao_make_symbol("equalq"), make_native(native_equalq), GLOBAL);;
 return GLOBAL;
}
sao_object * sao_parse( SaoStream * fw, int do_eval )
{
 sao_read_line(fw);
 sao_u64 (*microtime)() = ( sao_u64(*)() ) libcbf(libc_microtime,"microtime");
 sao_object *rt = NIL;
 for(;;){
  sao_object *obj = sao_load_expr(fw);
  if(obj==0){
   break;
  }
  if (!((obj)==0||(obj)==NIL)) {
   libcbf(libc_printf,"printf")("%llu: ",microtime());
   sao_out_expr("<=", obj);
   libcbf(libc_printf,"printf")("\n");
   sao_object *rt = sao_eval(obj, GLOBAL);
   if (do_eval){
    libcbf(libc_printf,"printf")("%llu: ",microtime());
    if ( !((rt)==0||(rt)==NIL)) {
     sao_out_expr("=>", rt);
     libcbf(libc_printf,"printf")("\n");
    }
   }else{
    return obj;
   }
  }else{
   libcbf(libc_printf,"printf")("DEBUG TODO depth=%d \n",depth);
  }
 }
 return rt;
}
int main(int argc, char **argv)
{
 ht_resize(8192-1);
 if(argc>1){
  SaoStream * fw = SaoStream_new(argv[1],stream_char);
  sao_object * arg_expr = sao_load_expr( fw );
  sao_out_expr("DEBUG car(arg_expr)=>",arg_expr);
  return 0;
 }
 sao_init();
 libcbf(libc_setmode,"setmode")(libcbf(libc_fileno,"fileno")(libcbf(libc_stdin,"stdin")),0x8000 );
 SaoStream * fw = SaoStream_new(libcbf(libc_stdin,"stdin"),stream_file);
 sao_object * result = sao_parse( fw, 1 );
 return 0;
}
