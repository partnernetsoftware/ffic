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
 while (*source) *(buffer++) = *(source++);
 while (*append) *(buffer++) = *(append++);
 *buffer = '\0';
}
ffic_ptr ffic_void(){return 0;};
ffic_ptr(*ffic_raw(const char* part1, const char* funcname, const char* part2))()
{
 char libfilename[512] = {0};
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
 gettimeofday = ffic("c","gettimeofday");
 gettimeofday(&tv, 0);
 return ((sao_u64)tv.tv_sec*(sao_u64)1000 + (((sao_u64)tv.tv_usec)/(sao_u64)1000)%(sao_u64)1000);
}
ffic_func libcbf(int fi,const char* fn);
ffic_func libcbf(int fi,const char* fn){ return libc_a[fi]?libc_a[fi]:(libc_a[fi]=ffic("c",fn)); }
typedef enum { stream_file, stream_char, } stream_t; char* stream_names[] = { "file", "char", };;
typedef enum { type_list, type_integer, type_symbol, type_string, type_native, type_vector, } type_t; char* type_names[] = { "list", "integer", "symbol", "string", "native", "vector", };;
typedef enum { ctype_long, ctype_double, ctype_any, } ctype_t; char* ctype_names[] = { "long", "double", "any", };;
typedef struct _sao_object sao_object;
typedef sao_object *(*native_t)(sao_object *);
struct _sao_object {
 type_t type;
 int gc;
 union {
  long _integer;
  char *_string;
  struct {
   sao_object **_vector;
   int _len;
  };
  struct {
   sao_object *car;
   sao_object *cdr;
  };
  double _double;
  native_t native;
 };
} __attribute__((packed));
sao_object*NIL=0; sao_object*GLOBAL=0; sao_object*TRUE=0; sao_object*FALSE=0; sao_object*QUOTE=0; sao_object*SET=0; sao_object*LET=0; sao_object*DEFINE=0; sao_object*PROCEDURE=0; sao_object*IF=0; sao_object*LAMBDA=0; sao_object*BEGIN=0; sao_object*ERROR=0;;
sao_object *is_tagged(sao_object *cell, sao_object *tag);
sao_object *cons(sao_object *car, sao_object *cdr);
sao_object *native_load(sao_object *args);
sao_object *cdr(sao_object *);
sao_object *car(sao_object *);
sao_object *sao_lookup_var(sao_object *var, sao_object *ctx);
sao_object *sao_type_check(const char *func, sao_object *obj, type_t type);
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
} sao_stream;
sao_stream * sao_stream_new(void*,stream_t);
long sao_is_digit(int c);
long sao_is_alpha(int c);
long sao_is_alphanumber(int c);
sao_object *sao_eval(sao_object *exp, sao_object *ctx);
sao_object *sao_load_expr(sao_stream * fw);
void sao_comment(sao_stream * fw);
sao_object *sao_load_str(sao_stream * fw);
sao_object *sao_read_list(sao_stream * fw);
int sao_read_int(sao_stream * fw, int start);
int sao_peek(sao_stream * fw);
sao_object *sao_new_integer(int x);
sao_object *sao_read_symbol(sao_stream * fw, char start);
void sao_out_expr(char *str, sao_object *e);
long sao_is_digit(int c) { return (long) libcbf(libc_isdigit,"isdigit")(c); }
long sao_is_alpha(int c) { return (long) libcbf(libc_isalpha,"isalpha")(c); }
long sao_is_alphanumber(int c) { return (long) libcbf(libc_isalnum,"isalnum")(c); }
void* sao_calloc(long _sizeof){return libcbf(libc_memset,"memset")(libcbf(libc_malloc,"malloc")(_sizeof),0,_sizeof);}
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
 struct htable * newTable = sao_calloc( sizeof(struct htable) *newsize );
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
sao_object *sao_alloc(type_t type) {
 sao_object*ret=sao_calloc( sizeof(sao_object) );;
 ret->type = type;
 return ret;
}
sao_object *cons(sao_object *car, sao_object *cdr) {
 sao_object *ret = sao_alloc(type_list);
 ret->car = car;
 ret->cdr = cdr;
 return ret;
}
sao_object *car(sao_object *cell) {
 return (cell&&!(cell->type))?cell->car:NIL;
}
sao_object *cdr(sao_object *cell) {
 return (cell&&!(cell->type))?cell->cdr:NIL;
}
sao_object *append(sao_object *l1, sao_object *l2) {
 if (!l1) return l2;
 return cons(car(l1), append(cdr(l1), l2));
}
sao_object * sao_type_check(const char *func, sao_object *obj, type_t type)
{
 if (!obj) {
  libcbf(libc_fprintf,"fprintf")(libcbf(libc_stderr,"stderr"),"Invalid argument to function %s: NIL\n", func);
  libcbf(libc_exit,"exit")(1);
 } else if (obj->type != type) {
  libcbf(libc_fprintf,"fprintf")(libcbf(libc_stderr,"stderr"),"ERR: function %s. expected %s got %s\n", func, type_names[type], type_names[obj->type]);
  libcbf(libc_exit,"exit")(1);
 }
 return obj;
}
sao_object *sao_new_vector(int size) {
 sao_object *ret = sao_alloc(type_vector);
 ret->_vector = sao_calloc( sizeof(sao_object) *size );
 ret->_len = size;
 return ret;
}
sao_object *sao_new_symbol(char *s) {
 sao_object *ret = ht_lookup(s);
 if (!ret) {
  ret = sao_alloc(type_symbol);
  ret->_string = libcbf(libc_strdup,"strdup")(s);
  ht_insert(ret);
 }else{
  if(!libcbf(libc_strcmp,"strcmp")(ret->_string,s)){
  }else{
   int newsize = 2*(gHTable_len+1)-1 ;
   ht_resize( newsize );
   return sao_new_symbol(s);
  }
 }
 return ret;
}
sao_object *sao_new_native(native_t x) {
 sao_object *ret = sao_alloc(type_native);
 ret->native = x;
 return ret;
}
sao_object *sao_new_lambda(sao_object *params, sao_object *body) {
 return cons(LAMBDA, cons(params, body));
}
sao_object *sao_new_procedure(sao_object *params, sao_object *body,
  sao_object *ctx) {
 return cons(PROCEDURE, cons(params, cons(body, cons(ctx, NIL))));
}
sao_object * sao_reverse(sao_object *list, sao_object *first) {
 sao_object * rt = (!list) ? first :
  sao_reverse(cdr(list), cons(car(list), first));
 return rt;
}
sao_object * is_equal(sao_object *x, sao_object *y)
{
 if (x == y) return x;
 if (!x || !y) return NIL;
 if (x->type != y->type) return NIL;
 switch (x->type) {
  case type_integer: if(x->_integer == y->_integer)return x;
  case type_symbol:
  case type_string: if(!libcbf(libc_strcmp,"strcmp")(x->_string, y->_string)) return x;
  default: return NIL;
 }
 return NIL;
}
int not_false(sao_object *x) {
 if (!x || is_equal(x, FALSE)) return 0;
 if (x->type == type_integer && x->_integer == 0) return 0;
 return 1;
}
sao_object* is_tagged(sao_object *cell, sao_object *tag)
{
 return (cell&&!(cell->type)) ? is_equal(car(cell),tag) : NIL;
}
int sao_length(sao_object *exp) {
 if (!exp) return 0;
 return 1 + sao_length(cdr(exp));
}
sao_object *native_type(sao_object *args) {
 return sao_new_symbol(type_names[car(args)->type]);
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
 return !car(args) ? TRUE : FALSE;
}
sao_object *native_pairq(sao_object *args) {
 if (car(args)->type != type_list)
  return FALSE;
 return (((car(car((args)))) && (car(car((args))))->type) && ((cdr(car((args)))) && (cdr(car((args))))->type)) ? TRUE : FALSE;
}
sao_object *native_is_list(sao_object *args) {
 sao_object *list;
 if (car(args)->type != type_list)
  return FALSE;
 for (list = car(args); !!list; list = list->cdr)
  if (!!list->cdr && (list->cdr->type != type_list))
   return FALSE;
 return (car(args)->type == type_list && native_pairq(args) != TRUE) ? TRUE : FALSE;
}
sao_object *native_atomq(sao_object *sexp) {
 return (car(sexp) && car(sexp)->type) ? TRUE : FALSE;
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
  while (!!a && !!b) {
   if (!is_equal(car(a), car(b)))
    return FALSE;
   a = cdr(a);
   b = cdr(b);
  }
  return TRUE;
 }
 if ((car(args)->type == type_vector) && ((car(cdr((args))))->type == type_vector)) {
  if (car(args)->_len != (car(cdr((args))))->_len) {
   return FALSE;
  }
  sao_object **va = car(args)->_vector;
  sao_object **vb = (car(cdr((args))))->_vector;
  int i = 0;
  for (i = 0; i < car(args)->_len; i++) {
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
 while (!!car(list))
 {
  (sao_type_check(__func__, car(list), type_integer));
  total += car(list)->_integer;
  list = cdr(list);
 }
 return sao_new_integer(total);
}
sao_object *native_sub(sao_object *list) {
 (sao_type_check(__func__, car(list), type_integer));
 long total = car(list)->_integer;
 list = cdr(list);
 while (!!list) {
  (sao_type_check(__func__, car(list), type_integer));
  total -= car(list)->_integer;
  list = cdr(list);
 }
 return sao_new_integer(total);
}
sao_object *native_div(sao_object *list) {
 (sao_type_check(__func__, car(list), type_integer));
 long total = car(list)->_integer;
 list = cdr(list);
 while (!!list) {
  (sao_type_check(__func__, car(list), type_integer));
  total /= car(list)->_integer;
  list = cdr(list);
 }
 return sao_new_integer(total);
}
sao_object *native_mul(sao_object *list) {
 (sao_type_check(__func__, car(list), type_integer));
 long total = car(list)->_integer;
 list = cdr(list);
 while (!!list) {
  (sao_type_check(__func__, car(list), type_integer));
  total *= car(list)->_integer;
  list = cdr(list);
 }
 return sao_new_integer(total);
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
 return sao_load_expr(sao_stream_new(libcbf(libc_stdin,"stdin"),stream_file));
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
 sao_stream * fw = sao_stream_new(fp,stream_file);
 for (;;) {
  exp = sao_load_expr(fw);
  if (!exp)
   break;
  ret = sao_eval(exp, GLOBAL);
 }
 libcbf(libc_fclose,"fclose")(fp);
 return ret;
}
sao_object *native_tget(sao_object *args) {
 sao_object * vct = (sao_type_check(__func__, car(args), type_vector));
 sao_object * key = (sao_type_check(__func__, (car(cdr((args)))), type_integer));
 if (key->_integer >= vct->_len) return NIL;
 return vct->_vector[key->_integer];
}
sao_object *native_tset(sao_object *args){
 sao_object * vct = (sao_type_check(__func__, car(args), type_vector));
 sao_object * key = (sao_type_check(__func__, (car(cdr((args)))), type_integer));
 if (!(car(cdr(cdr((args)))))) return NIL;
 if (key->_integer >= vct->_len) return NIL;
 car(args)->_vector[key->_integer] = (car(cdr(cdr((args)))));
 return sao_new_symbol("ok");
}
sao_object *native_vector(sao_object *args) {
 sao_object * sym = (sao_type_check(__func__, car(args), type_integer));
 return sao_new_vector(sym->_integer);
}
sao_object *sao_expand(sao_object *var, sao_object *val, sao_object *ctx) {
 return cons(cons(var, val), ctx);
}
sao_object *sao_lookup_var(sao_object *var, sao_object *ctx) {
 while (!!ctx) {
  sao_object *frame = car(ctx);
  sao_object *vars = car(frame);
  sao_object *vals = cdr(frame);
  while (!!vars) {
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
 while (!!ctx) {
  sao_object *frame = car(ctx);
  sao_object *vars = car(frame);
  sao_object *vals = cdr(frame);
  while (!!vars) {
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
 while (!!vars) {
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
 if (!exp) return NIL;
 return cons(sao_eval(car(exp), ctx), eval_list(cdr(exp), ctx));
}
sao_object *eval_sequence(sao_object *exps, sao_object *ctx) {
 if (!cdr(exps)) return sao_eval(car(exps), ctx);
 sao_eval(car(exps), ctx);
 return eval_sequence(cdr(exps), ctx);
}
sao_stream * sao_stream_new(void* fp,stream_t type)
{
 sao_stream*fw=sao_calloc( sizeof(sao_stream) );;
 fw->fp = fp;
 if(type==stream_char) fw->pos = fp;
 fw->type = type;
 return fw;
}
int sao_deq_c(sao_stream *fw)
{
 int c = -2;
 FileChar * ptr_head = fw->ptr_head;
 if(ptr_head!=0){
  c = ptr_head->c;
  fw->ptr_head=ptr_head->ptr_next;
 }
 return c;
}
int sao_enq_c(sao_stream* fw,int k){
 FileChar*fc=sao_calloc( sizeof(FileChar) );;
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
 return k;
}
int depth = 0;
int line_num = 0;
int sao_read_line(sao_stream* fw)
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
  ffic_func strlen = libcbf(libc_strlen,"strlen");
  int LINE_LEN = 1024;
  char*line=sao_calloc( sizeof(char) *LINE_LEN );;
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
sao_object *sao_read_symbol(sao_stream * fw, char start)
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
 return sao_new_symbol(buf);
}
sao_object *sao_new_integer(int x)
{
 sao_object *ret = sao_alloc(type_integer);
 ret->_integer = x;
 return ret;
}
int sao_peek(sao_stream * fw)
{
 int c = 0;
 FileChar * ptr_head = fw->ptr_head;
 if(ptr_head!=0){
  c = ptr_head->c;
 }
 return c;
}
int sao_read_int(sao_stream * fw, int start)
{
 while ( sao_is_digit(sao_peek(fw)) )
  start = start * 10 + (sao_deq_c(fw) - '0');
 return start;
}
sao_object *sao_read_list(sao_stream * fw)
{
 sao_object *obj;
 sao_object *cell = NIL;
 for (;;) {
  obj = sao_load_expr(fw);
  if (!obj)
   return sao_reverse(cell, NIL);
  cell = cons(obj, cell);
 }
 return NIL;
}
sao_object *sao_load_str(sao_stream * fw)
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
 sao_object *s = sao_new_symbol(buf);
 s->type = type_string;
 return s;
}
void sao_comment(sao_stream * fw)
{
 int c;
 for (;;) {
  c = sao_deq_c(fw);
  if (c == '\n' || c == (-1)) return;
 }
}
sao_object *sao_load_expr(sao_stream * fw)
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
   return NIL;
  }
  if (sao_is_digit(c)) return sao_new_integer(sao_read_int(fw, c - '0'));
  if (c == '-' && sao_is_digit(sao_peek(fw)))
   return sao_new_integer(-1 * sao_read_int(fw, sao_deq_c(fw) - '0'));
 }
 return NIL;
}
void sao_out_expr(char *str, sao_object *e)
{
 if (str) libcbf(libc_printf,"printf")("%s ", str);
 if (!e) { return; }
 switch (e->type) {
  case type_string:
   libcbf(libc_printf,"printf")("\"%s\"", e->_string); break;
  case type_symbol:
   libcbf(libc_printf,"printf")("%s", e->_string); break;
  case type_integer:
   libcbf(libc_printf,"printf")("%ld", e->_integer); break;
  case type_native:
   libcbf(libc_printf,"printf")("<function>"); break;
  case type_vector:
   libcbf(libc_printf,"printf")("<vector %d>", e->_len); break;
  case type_list:
   if (is_tagged(e, PROCEDURE)) {
    libcbf(libc_printf,"printf")("<closure>");
    return;
   }
   int skip=0;
   sao_object **t = &e;
   if (!!*t) {
    if(type_symbol == e->car->type){
     sao_out_expr(0, e->car);
     skip=1;
    }
   }
   libcbf(libc_printf,"printf")("(");
   while (!!*t) {
    if(skip==1){
     skip=0;
    }else{
     libcbf(libc_printf,"printf")(" ");
     sao_out_expr(0, (*t)->car);
    }
    if (!!(*t)->cdr) {
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
 if (!exp)
 {
  return NIL;
 } else if (exp->type == type_integer || exp->type == type_string) {
  return exp;
 } else if (exp->type == type_symbol) {
  sao_object *s = sao_lookup_var(exp, ctx);
  return s;
 } else if (is_tagged(exp, QUOTE)) {
  return (car(cdr((exp))));
 } else if (is_tagged(exp, LAMBDA)) {
  return sao_new_procedure((car(cdr((exp)))), (cdr(cdr((exp)))), ctx);
 } else if (is_tagged(exp, DEFINE)) {
  if (((car(cdr((exp)))) && (car(cdr((exp))))->type))
   define_variable((car(cdr((exp)))), sao_eval((car(cdr(cdr((exp))))), ctx), ctx);
  else {
   sao_object *closure =
    sao_eval(sao_new_lambda(cdr((car(cdr((exp))))), (cdr(cdr((exp))))), ctx);
   define_variable(car((car(cdr((exp))))), closure, ctx);
  }
  return sao_new_symbol("ok");
 } else if (is_tagged(exp, BEGIN)) {
  sao_object *args = cdr(exp);
  for (; !!cdr(args); args = cdr(args))
   sao_eval(car(args), ctx);
  exp = car(args);
  goto tail;
 } else if (is_tagged(exp, IF)) {
  sao_object *predicate = sao_eval((car(cdr((exp)))), ctx);
  exp = (not_false(predicate)) ? (car(cdr(cdr((exp))))) : (car(cdr(cdr(cdr((exp))))));
  goto tail;
 } else if (is_tagged(exp, sao_new_symbol("or"))) {
  sao_object *predicate = sao_eval((car(cdr((exp)))), ctx);
  exp = (not_false(predicate)) ? (car(cdr(cdr((exp))))) : (car(cdr(cdr(cdr((exp))))));
  goto tail;
 } else if (is_tagged(exp, sao_new_symbol("cond"))) {
  sao_object *branch = cdr(exp);
  for (; !!branch; branch = cdr(branch)) {
   if (is_tagged(car(branch), sao_new_symbol("else")) ||
     not_false(sao_eval((car(car((branch)))), ctx))) {
    exp = cons(BEGIN, (cdr(car((branch)))));
    goto tail;
   }
  }
  return NIL;
 } else if (is_tagged(exp, SET)) {
  if (((car(cdr((exp)))) && (car(cdr((exp))))->type)){
   set_variable((car(cdr((exp)))), sao_eval((car(cdr(cdr((exp))))), ctx), ctx);
  } else {
   sao_object *closure =
    sao_eval(sao_new_lambda(cdr((car(cdr((exp))))), (cdr(cdr((exp))))), ctx);
   set_variable(car((car(cdr((exp))))), closure, ctx);
  }
  return sao_new_symbol("ok");
 } else if (is_tagged(exp, LET)) {
  sao_object **tmp;
  sao_object *vars = NIL;
  sao_object *vals = NIL;
  if (!(car(cdr((exp))))) return NIL;
  if (((car(cdr((exp)))) && (car(cdr((exp))))->type)) {
   for (tmp = &exp->cdr->cdr->car; !!*tmp; tmp = &(*tmp)->cdr) {
    vars = cons((car(car((*tmp)))), vars);
    vals = cons((car(cdr(car((*tmp))))), vals);
   }
   define_variable((car(cdr((exp)))),
     sao_eval(sao_new_lambda(vars, cdr((cdr(cdr((exp)))))),
      sao_expand(vars, vals, ctx)),
     ctx);
   exp = cons((car(cdr((exp)))), vals);
   goto tail;
  }
  for (tmp = &exp->cdr->car; !!*tmp; tmp = &(*tmp)->cdr) {
   vars = cons((car(car((*tmp)))), vars);
   vals = cons((car(cdr(car((*tmp))))), vals);
  }
  exp = cons(sao_new_lambda(vars, (cdr(cdr((exp))))), vals);
  goto tail;
 } else {
  sao_object *proc = sao_eval(car(exp), ctx);
  sao_object *args = eval_list(cdr(exp), ctx);
  if (!proc) {
   return NIL;
  }
  if (proc->type == type_native){
   return proc->native(args);
  }
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
 do{TRUE=sao_new_symbol("true");define_variable(TRUE,TRUE,GLOBAL);}while(0);;
 do{FALSE=sao_new_symbol("false");define_variable(FALSE,FALSE,GLOBAL);}while(0);;
 define_variable(sao_new_symbol("true"), TRUE, GLOBAL);
 define_variable(sao_new_symbol("false"), FALSE, GLOBAL);
 do{QUOTE=sao_new_symbol("quote");define_variable(QUOTE,QUOTE,GLOBAL);}while(0);;
 do{LAMBDA=sao_new_symbol("lambda");define_variable(LAMBDA,LAMBDA,GLOBAL);}while(0);;
 do{PROCEDURE=sao_new_symbol("procedure");define_variable(PROCEDURE,PROCEDURE,GLOBAL);}while(0);;
 do{DEFINE=sao_new_symbol("var");define_variable(DEFINE,DEFINE,GLOBAL);}while(0);;
 do{LET=sao_new_symbol("let");define_variable(LET,LET,GLOBAL);}while(0);;
 do{SET=sao_new_symbol("set");define_variable(SET,SET,GLOBAL);}while(0);;
 do{BEGIN=sao_new_symbol("begin");define_variable(BEGIN,BEGIN,GLOBAL);}while(0);;
 do{IF=sao_new_symbol("if");define_variable(IF,IF,GLOBAL);}while(0);;
 define_variable(sao_new_symbol("exit"), sao_new_native(native_exit), GLOBAL); define_variable(sao_new_symbol("ffi"), sao_new_native(native_ffi), GLOBAL); define_variable(sao_new_symbol("global"), sao_new_native(native_global), GLOBAL); define_variable(sao_new_symbol("type"), sao_new_native(native_type), GLOBAL); define_variable(sao_new_symbol("cons"), sao_new_native(native_cons), GLOBAL); define_variable(sao_new_symbol("car"), sao_new_native(native_car), GLOBAL); define_variable(sao_new_symbol("cdr"), sao_new_native(native_cdr), GLOBAL); define_variable(sao_new_symbol("setcar"), sao_new_native(native_setcar), GLOBAL); define_variable(sao_new_symbol("setcdr"), sao_new_native(native_setcdr), GLOBAL); define_variable(sao_new_symbol("list"), sao_new_native(native_list), GLOBAL); define_variable(sao_new_symbol("vector"), sao_new_native(native_vector), GLOBAL); define_variable(sao_new_symbol("tget"), sao_new_native(native_tget), GLOBAL); define_variable(sao_new_symbol("tset"), sao_new_native(native_tset), GLOBAL); define_variable(sao_new_symbol("add"), sao_new_native(native_add), GLOBAL); define_variable(sao_new_symbol("sub"), sao_new_native(native_sub), GLOBAL); define_variable(sao_new_symbol("mul"), sao_new_native(native_mul), GLOBAL); define_variable(sao_new_symbol("div"), sao_new_native(native_div), GLOBAL); define_variable(sao_new_symbol("cmp"), sao_new_native(native_cmp), GLOBAL); define_variable(sao_new_symbol("not"), sao_new_native(native_not), GLOBAL); define_variable(sao_new_symbol("lt"), sao_new_native(native_lt), GLOBAL); define_variable(sao_new_symbol("gt"), sao_new_native(native_gt), GLOBAL); define_variable(sao_new_symbol("load"), sao_new_native(native_load), GLOBAL); define_variable(sao_new_symbol("print"), sao_new_native(native_print), GLOBAL); define_variable(sao_new_symbol("read"), sao_new_native(native_read), GLOBAL); define_variable(sao_new_symbol("is_null"), sao_new_native(native_is_null), GLOBAL); define_variable(sao_new_symbol("is_list"), sao_new_native(native_is_list), GLOBAL); define_variable(sao_new_symbol("pairq"), sao_new_native(native_pairq), GLOBAL); define_variable(sao_new_symbol("atomq"), sao_new_native(native_atomq), GLOBAL); define_variable(sao_new_symbol("eqq"), sao_new_native(native_eqq), GLOBAL); define_variable(sao_new_symbol("equalq"), sao_new_native(native_equalq), GLOBAL);;
 return GLOBAL;
}
sao_object * sao_parse( sao_stream * fw, int do_eval )
{
 sao_read_line(fw);
 sao_u64 (*microtime)() = ( sao_u64(*)() ) libcbf(libc_microtime,"microtime");
 sao_object *rt = NIL;
 for(;;){
  sao_object *obj = sao_load_expr(fw);
  if(obj==0){ break; }
  if (!!obj) {
   libcbf(libc_printf,"printf")("%llu: ",microtime());
   sao_out_expr("<=", obj);
   libcbf(libc_printf,"printf")("\n");
   sao_object *rt = sao_eval(obj, GLOBAL);
   if (do_eval){
    libcbf(libc_printf,"printf")("%llu: ",microtime());
    if ( !!rt) {
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
 libcbf(libc_setmode,"setmode")(libcbf(libc_fileno,"fileno")(libcbf(libc_stdin,"stdin")),0x8000 );
 ht_resize(8192-1);
 if(argc>1){
  sao_stream * fw = sao_stream_new(argv[1],stream_char);
  sao_object * arg_expr = sao_load_expr( fw );
  sao_out_expr("DEBUG car(arg_expr)=>",arg_expr);
  return 0;
 }
 sao_init();
 sao_stream * fw = sao_stream_new(libcbf(libc_stdin,"stdin"),stream_file);
 sao_object * result = sao_parse( fw, 1 );
 return 0;
}
