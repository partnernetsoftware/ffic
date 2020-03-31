enum {
 libc_fprintf, libc_stderr, libc_exit, libc_malloc, libc_memset, libc_strdup, libc_strcmp, libc_printf, libc_stdin, libc_putc, libc_getc, libc_isalnum, libc_strchr, libc_isdigit, libc_isalpha, libc_fopen, libc_fread, libc_fgets, libc_fclose, libc_feof, libc_usleep, libc_msleep, libc_sleep, libc_fputc, libc_setmode, libc_fileno, libc_gettimeofday, libc_calloc, libc_stdout, libc_NULL,
};
void* (*libc_a[libc_NULL])();
typedef signed char i8;
typedef signed short int i16;
typedef signed int i32;
typedef signed long int i64;
typedef unsigned char u8;
typedef unsigned short int u16;
typedef unsigned int u32;
typedef unsigned long int u64;
typedef struct __FILE FILE;
extern FILE *__stdinp;
extern FILE *__stdoutp;
extern FILE *__stderrp;
extern int fprintf(FILE *stream, const char *format, ...);
extern int fflush(FILE *stream);
extern int strcmp(const char*,const char*);
extern void* dlopen(const char *,int);
extern void *dlsym(void *, const char *);
void ffic_strcat(char *target, const char *source, const char* append) {
 while (*source) {
  *target = *source;
  source++;
  target++;
 }
 while (*append) {
  *target = *append;
  append++;
  target++;
 }
 *target = '\0';
}
void* ffic_void(){return 0;};
void*(*ffic_raw(const char* part1, const char* funcname, const char* part2))()
{
 char libfilename[256] = {0};
 ffic_strcat(libfilename,part1,
   (part2==0)?
   ".dylib"
   :part2
   );
 void* rt_dlopen = (void*) dlopen(libfilename,1 );
 void* addr = dlsym(rt_dlopen, funcname);
 if(0==addr){
  fprintf(__stderrp,"ERR: Not found %s.%s\n", libfilename, funcname);fflush(__stderrp);
  return ffic_void;
 }
 return addr;
}
void* ffic_usleep(int nano_seconds);
void* ffic_msleep(int microseconds);
void* ffic_sleep(int seconds);
void*(*ffic(const char* libname, const char* funcname, ...))()
{
 void* addr = 0;
 if(!strcmp("c",libname)){
  if(!strcmp("stderr",funcname)){
   addr = __stderrp;
  }else if(!strcmp("stdout",funcname)){
   addr = __stdoutp;
  }else if(!strcmp("stdin",funcname)){
   addr = __stdinp;
  }else{
   libname =
    "libc"
    ;
   if(!strcmp("fileno",funcname)){
   }else if(!strcmp("setmode",funcname)){
    addr = ffic_void;
   }else if(!strcmp("strdup",funcname)){
   }else if(!strcmp("usleep",funcname)){
    return ffic_usleep;
   }else if(!strcmp("sleep",funcname)){
    return ffic_sleep;
   }else if(!strcmp("msleep",funcname)){
    return ffic_msleep;
   }
  }
 }
 if(addr==0) addr = ffic_raw(libname,funcname,0);
 return addr;
}
void* ffic_sleep(int seconds)
{
 ffic_raw("libc","usleep",0)(seconds*1000000);
 return 0;
}
void* ffic_msleep(int microseconds)
{
 ffic_raw("libc","usleep",0)(microseconds*1000);
 return 0;
};
void* ffic_usleep(int nano_seconds)
{
 ffic_raw("libc","usleep",0)(nano_seconds);
 return 0;
};
typedef void*(*ffi_func)();
ffi_func libcf(int fi,const char* fn){
 return libc_a[fi]?libc_a[fi]:(libc_a[fi]=ffic("c",fn));
}
char *types[6] = {"integer","symbol","string","list","native","table"};
typedef enum {
 type_integer, type_symbol, type_string, type_list, type_native, type_table
} type_t;
typedef struct object object;
typedef object *(*native_t)(object *);
struct object {
 type_t type;
 union {
  i64 integer;
  char *string;
  struct {
   object **table;
   int vsize;
  };
  struct {
   object *car;
   object *cdr;
  };
  native_t native;
 };
} __attribute__((packed));
object *GLOBAL;
object *NIL;
object *END_LIST;
object *TRUE;
object *FALSE;
object *QUOTE;
object *DEFINE;
object *SET;
object *LET;
object *IF;
object *LAMBDA;
object *BEGIN;
object *PROCEDURE;
int is_tagged(object *cell, object *tag);
object *cons(object *car, object *cdr);
object *load_file(object *args);
object *cdr(object *);
object *car(object *);
object *sao_lookup_var(object *var, object *ctx);
int sao_type_check(const char *func, object *obj, type_t type);
typedef struct _FileChar FileChar;
struct _FileChar {
 int c;
 FileChar * prev;
 FileChar * next;
};
typedef struct {
 FILE* fp;
 FileChar * first;
 FileChar * last;
 FileChar * current;
 long count;
} FILEWrapper;
FILEWrapper * FileWrapper_new(FILE* fp);
u64 sao_is_digit(int c);
u64 sao_is_alpha(int c);
u64 sao_is_alphanumber(int c);
object *sao_eval(object *exp, object *ctx);
object *sao_load_expr(FILEWrapper * fw);
void sao_comment(FILEWrapper * fw);
object *sao_load_str(FILEWrapper * fw);
object *sao_read_list(FILEWrapper * fw);
int sao_read_int(FILEWrapper * fw, int start);
int sao_peek(FILEWrapper * fw);
object *sao_make_integer(int x);
object *sao_read_symbol(FILEWrapper * fw, char start);
void sao_out_expr(char *str, object *e);
inline u64 sao_is_digit(int c) { return (u64) libcf(libc_isdigit,"isdigit")(c); }
inline u64 sao_is_alpha(int c) { return (u64) libcf(libc_isalpha,"isalpha")(c); }
inline u64 sao_is_alphanumber(int c) { return (u64) libcf(libc_isalnum,"isalnum")(c); }
struct htable { object *key; };
static struct htable *HTABLE = 0;
static int HTABLE_SIZE = 0;
static i64 ht_hash(const char *s) {
 i64 h = 0;
 u8 *u = (u8 *) s;
 while (*u) { h = (h * 256 + (*u)) % HTABLE_SIZE; u++; }
 return h;
}
int ht_init(int size) {
 if (HTABLE || !(size % 2))
  do{libcf(libc_fprintf,"fprintf")(libcf(libc_stderr,"stderr"),"%s\n","Hash table already initialized or even # of entries");libcf(libc_exit,"exit")(1);}while(0);
 HTABLE = libcf(libc_malloc,"malloc")(sizeof(struct htable) * size);
 libcf(libc_memset,"memset")(HTABLE, 0, sizeof(struct htable) * size);
 HTABLE_SIZE = size;
 if(HTABLE_SIZE==0)
  do{libcf(libc_fprintf,"fprintf")(libcf(libc_stderr,"stderr"),"%s\n","HTABLE_SIZE=0???");libcf(libc_exit,"exit")(1);}while(0);
 return size;
}
void ht_insert(object *key) {
 i64 h = ht_hash(key->string);
 HTABLE[h].key = key;
}
object *ht_lookup(char *s) {
 i64 h = ht_hash(s);
 return HTABLE[h].key;
}
object *alloc() {
 object *ret = libcf(libc_malloc,"malloc")(sizeof(object));
 return ret;
}
int sao_type_check(const char *func, object *obj, type_t type)
{
 if (((obj)==0||(obj)==NIL)) {
  libcf(libc_fprintf,"fprintf")(libcf(libc_stderr,"stderr"), "Invalid argument to function %s: NIL\n", func);
  libcf(libc_exit,"exit")(1);
 } else if (obj->type != type) {
  libcf(libc_fprintf,"fprintf")(libcf(libc_stderr,"stderr"), "ERR: function %s. expected %s got %s\n",
    func, types[type], types[obj->type]);
  libcf(libc_exit,"exit")(1);
 }
 return 1;
}
object *make_table(int size) {
 object *ret = alloc();
 ret->type = type_table;
 ret->table = libcf(libc_malloc,"malloc")(sizeof(object *) * size);
 ret->vsize = size;
 libcf(libc_memset,"memset")(ret->table, 0, size);
 return ret;
}
object *sao_make_symbol(char *s) {
 object *ret = ht_lookup(s);
 if (((ret)==0||(ret)==NIL)) {
  ret = alloc();
  ret->type = type_symbol;
  ret->string = libcf(libc_strdup,"strdup")(s);
  ht_insert(ret);
 }
 return ret;
}
object *make_integer(int x) {
 object *ret = alloc();
 ret->type = type_integer;
 ret->integer = x;
 return ret;
}
object *make_native(native_t x) {
 object *ret = alloc();
 ret->type = type_native;
 ret->native = x;
 return ret;
}
object *make_lambda(object *params, object *body) {
 return cons(LAMBDA, cons(params, body));
}
object *make_procedure(object *params, object *body,
  object *ctx) {
 return cons(PROCEDURE, cons(params, cons(body, cons(ctx, END_LIST))));
}
inline object *cons(object *car, object *cdr) {
 object *ret = alloc();
 ret->type = type_list;
 ret->car = car;
 ret->cdr = cdr;
 return ret;
}
inline object *car(object *cell) {
 if (((cell)==0||(cell)==NIL) || cell->type != type_list) return NIL;
 return cell->car;
}
inline object *cdr(object *cell) {
 if (((cell)==0||(cell)==NIL) || cell->type != type_list) return NIL;
 return cell->cdr;
}
object *append(object *l1, object *l2) {
 if (((l1)==0||(l1)==NIL)) return l2;
 return cons(car(l1), append(cdr(l1), l2));
}
object * sao_reverse(object *list, object *first) {
 object * rt = (((list)==0||(list)==NIL)) ? first :
  sao_reverse(cdr(list), cons(car(list), first));
 return rt;
}
int is_equal(object *x, object *y) {
 if (x == y)
  return 1;
 if (((x)==0||(x)==NIL) || ((y)==0||(y)==NIL))
  return 0;
 if (x->type != y->type)
  return 0;
 switch (x->type) {
  case type_list:
   return 0;
  case type_integer:
   return x->integer == y->integer;
  case type_symbol:
  case type_string:
   return !libcf(libc_strcmp,"strcmp")(x->string, y->string);
  case type_native:
   return 0;
  case type_table:
   return 0;
 }
 return 0;
}
int not_false(object *x) {
 if (((x)==0||(x)==NIL) || is_equal(x, FALSE)) return 0;
 if (x->type == type_integer && x->integer == 0) return 0;
 return 1;
}
int is_tagged(object *cell, object *tag) {
 if (((cell)==0||(cell)==NIL) || cell->type != type_list)
  return 0;
 return is_equal(car(cell), tag);
}
int length(object *exp) {
 if (((exp)==0||(exp)==NIL)) return 0;
 return 1 + length(cdr(exp));
}
object *native_type(object *args) {
 return sao_make_symbol(types[car(args)->type]);
}
object *native_get_global(object *args) {
 return GLOBAL;
}
object *native_list(object *args) {
 return (args);
}
object *native_cons(object *args) {
 return cons(car(args), (car(cdr((args)))));
}
object *native_car(object *args) {
 return (car(car((args))));
}
object *native_cdr(object *args) {
 return (cdr(car((args))));
}
object *native_setcar(object *args) {
 (sao_type_check(__func__, car(args), type_list));
 (args->car->car = ((car(cdr((args))))));
 return NIL;
}
object *native_setcdr(object *args) {
 (sao_type_check(__func__, car(args), type_list));
 (args->car->cdr = ((car(cdr((args))))));
 return NIL;
}
object *native_is_nullq(object *args) {
 return ((((car(args)))==0||((car(args)))==NIL) || (car(args)) == END_LIST) ? TRUE : FALSE;
}
object *native_pairq(object *args) {
 if (car(args)->type != type_list)
  return FALSE;
 return ((!(((car(car((args)))))==0||((car(car((args)))))==NIL) && ((car(car((args)))))->type != type_list) && (!(((cdr(car((args)))))==0||((cdr(car((args)))))==NIL) && ((cdr(car((args)))))->type != type_list)) ? TRUE : FALSE;
}
object *native_listq(object *args) {
 object *list;
 if (car(args)->type != type_list)
  return FALSE;
 for (list = car(args); !((list)==0||(list)==NIL); list = list->cdr)
  if (!((list->cdr)==0||(list->cdr)==NIL) && (list->cdr->type != type_list))
   return FALSE;
 return (car(args)->type == type_list && native_pairq(args) != TRUE) ? TRUE : FALSE;
}
object *native_atomq(object *sexp) {
 return (!((car(sexp))==0||(car(sexp))==NIL) && (car(sexp))->type != type_list) ? TRUE : FALSE;
}
object *native_cmp(object *args) {
 if ((car(args)->type != type_integer) || ((car(cdr((args))))->type != type_integer))
  return FALSE;
 return (car(args)->integer == (car(cdr((args))))->integer) ? TRUE : FALSE;
}
object *native_eq(object *args) {
 return is_equal(car(args), (car(cdr((args))))) ? TRUE : FALSE;
}
object *native_equal(object *args) {
 if (is_equal(car(args), (car(cdr((args))))))
  return TRUE;
 if ((car(args)->type == type_list) && ((car(cdr((args))))->type == type_list)) {
  object *a, *b;
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
  if (car(args)->vsize != (car(cdr((args))))->vsize) {
   return FALSE;
  }
  object **va = car(args)->table;
  object **vb = (car(cdr((args))))->table;
  int i = 0;
  for (i = 0; i < car(args)->vsize; i++) {
   if (!is_equal(*(va + i), *(vb + i))) {
    return FALSE;
   }
  }
  return TRUE;
 }
 return FALSE;
}
object *native_add(object *list) {
 (sao_type_check(__func__, car(list), type_integer));
 i64 total = car(list)->integer;
 list = cdr(list);
 while (!((((car(list)))==0||((car(list)))==NIL) || (car(list)) == END_LIST)) {
  (sao_type_check(__func__, car(list), type_integer));
  total += car(list)->integer;
  list = cdr(list);
 }
 return make_integer(total);
}
object *native_sub(object *list) {
 (sao_type_check(__func__, car(list), type_integer));
 i64 total = car(list)->integer;
 list = cdr(list);
 while (!((list)==0||(list)==NIL)) {
  (sao_type_check(__func__, car(list), type_integer));
  total -= car(list)->integer;
  list = cdr(list);
 }
 return make_integer(total);
}
object *native_div(object *list) {
 (sao_type_check(__func__, car(list), type_integer));
 i64 total = car(list)->integer;
 list = cdr(list);
 while (!((list)==0||(list)==NIL)) {
  (sao_type_check(__func__, car(list), type_integer));
  total /= car(list)->integer;
  list = cdr(list);
 }
 return make_integer(total);
}
object *native_mul(object *list) {
 (sao_type_check(__func__, car(list), type_integer));
 i64 total = car(list)->integer;
 list = cdr(list);
 while (!((list)==0||(list)==NIL)) {
  (sao_type_check(__func__, car(list), type_integer));
  total *= car(list)->integer;
  list = cdr(list);
 }
 return make_integer(total);
}
object *native_gt(object *sexp) {
 (sao_type_check(__func__, car(sexp), type_integer));
 (sao_type_check(__func__, (car(cdr((sexp)))), type_integer));
 return (car(sexp)->integer > (car(cdr((sexp))))->integer) ? TRUE : NIL;
}
object *native_lt(object *sexp) {
 (sao_type_check(__func__, car(sexp), type_integer));
 (sao_type_check(__func__, (car(cdr((sexp)))), type_integer));
 return (car(sexp)->integer < (car(cdr((sexp))))->integer) ? TRUE : NIL;
}
object *native_exit(object *args) {
 libcf(libc_exit,"exit")(0);
 return NIL;
}
object *native_read(object *args) {
 FILEWrapper * fw = FileWrapper_new((FILE*)libcf(libc_stdin,"stdin"));
 return sao_load_expr(fw);
}
object *native_vget(object *args) {
 (sao_type_check(__func__, car(args), type_table));
 (sao_type_check(__func__, (car(cdr((args)))), type_integer));
 if ((car(cdr((args))))->integer >= car(args)->vsize)
  return NIL;
 return car(args)->table[(car(cdr((args))))->integer];
}
object *native_vset(object *args) {
 (sao_type_check(__func__, car(args), type_table));
 (sao_type_check(__func__, (car(cdr((args)))), type_integer));
 if ((((car(cdr(cdr((args))))))==0||((car(cdr(cdr((args))))))==NIL))
  return NIL;
 if ((car(cdr((args))))->integer >= car(args)->vsize)
  return NIL;
 car(args)->table[(car(cdr((args))))->integer] = (car(cdr(cdr((args)))));
 return sao_make_symbol("ok");
}
object *native_vec(object *args) {
 (sao_type_check(__func__, car(args), type_integer));
 return make_table(car(args)->integer);
}
object *sao_expand(object *var, object *val, object *ctx) {
 return cons(cons(var, val), ctx);
}
object *sao_lookup_var(object *var, object *ctx) {
 while (!((ctx)==0||(ctx)==NIL)) {
  object *frame = car(ctx);
  object *vars = car(frame);
  object *vals = cdr(frame);
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
void set_variable(object *var, object *val, object *ctx) {
 while (!((ctx)==0||(ctx)==NIL)) {
  object *frame = car(ctx);
  object *vars = car(frame);
  object *vals = cdr(frame);
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
object *define_variable(object *var, object *val,
  object *ctx) {
 object *frame = car(ctx);
 object *vars = car(frame);
 object *vals = cdr(frame);
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
object *eval_list(object *exp, object *ctx) {
 if (((exp)==0||(exp)==NIL)) return NIL;
 return cons(sao_eval(car(exp), ctx), eval_list(cdr(exp), ctx));
}
object *eval_sequence(object *exps, object *ctx) {
 if (((cdr(exps))==0||(cdr(exps))==NIL)) return sao_eval(car(exps), ctx);
 sao_eval(car(exps), ctx);
 return eval_sequence(cdr(exps), ctx);
}
object *load_file(object *args) {
 object *exp;
 object *ret = 0;
 char *filename = car(args)->string;
 FILE *fp = libcf(libc_fopen,"fopen")(filename, "r");
 if (fp == 0) {
  libcf(libc_printf,"printf")("Error opening file %s\n", filename);
  return NIL;
 }
 FILEWrapper * fw = FileWrapper_new(fp);
 for (;;) {
  exp = sao_load_expr(fw);
  if (((exp)==0||(exp)==NIL))
   break;
  ret = sao_eval(exp, GLOBAL);
 }
 libcf(libc_fclose,"fclose")(fp);
 return ret;
}
static u64 ffi_microtime(void)
{
 struct timeval {
  u64 tv_sec;
  u64 tv_usec;
 };
 struct timeval * tv = libcf(libc_calloc,"calloc")(sizeof(struct timeval),sizeof(char));
 libcf(libc_gettimeofday,"gettimeofday")(tv, 0);
 return tv->tv_sec*1000 + (tv->tv_usec+500)/1000;
}
FILEWrapper * FileWrapper_new(FILE* fp)
{
 FILEWrapper*fw=libcf(libc_calloc,"calloc")(sizeof(FILEWrapper),sizeof(char));;
 fw->fp = fp;
 fw->current = fw->last = fw->first = (void*)0;
 fw->count = 0;
 return fw;
}
void FileWrapper_feed(FILEWrapper* fw)
{
 ffi_func printf = libcf(libc_printf,"printf");
 ffi_func fread = libcf(libc_fread,"fread");
 ffi_func fgets = libcf(libc_fgets,"fgets");
 ffi_func malloc = libcf(libc_malloc,"malloc");
 ffi_func memset = libcf(libc_memset,"memset");
 int ok=0,ko=0;
 int k=0;
 int ct = 0;
 for(;;)
 {
  char*line = malloc(1024);
  if (line == 0) native_exit(NIL);
  memset(line, -1, 1024);
  fgets(line,1024,fw->fp);
  for(int i=0;i<1024;i++){
   int k = line[i];
   if(k<0) return;
   FileChar*fc=libcf(libc_calloc,"calloc")(sizeof(FileChar),sizeof(char));;
   fc->c = k;
   fc->next = (void*) 0;
   fc->prev = (void*) 0;
   if(0==fw->first){
    fw->first = fc;
    fw->current = fc;
   }
   if(0==fw->last){
    fw->last = fc;
   }else{
    fc->prev = fw->last;
    fw->last->next = fc;
    fw->last = fc;
   }
   fw->count+=1;
   ok++;
   ct++;
  }
 }
}
int sao_getc(FILEWrapper *fw)
{
 int c = -1;
 FileChar * current = fw->current;
 if(current!=0){
  c = current->c;
  fw->current=current->next;
 }
 return c;
}
object *sao_print(object *args) {
 sao_out_expr(0, car(args));
 libcf(libc_printf,"printf")("\n");
 return NIL;
}
object *sao_read_symbol(FILEWrapper * fw, char start)
{
 char buf[128];
 buf[0] = start;
 int i = 1;
 while (sao_is_alphanumber(sao_peek(fw))
   || libcf(libc_strchr,"strchr")(type_symbolS, sao_peek(fw)))
 {
  if (i >= 128)
   do{libcf(libc_fprintf,"fprintf")(libcf(libc_stderr,"stderr"),"%s\n","Symbol name too long - maximum length 128 characters");libcf(libc_exit,"exit")(1);}while(0);
  buf[i++] = sao_getc(fw);
 }
 buf[i] = '\0';
 return sao_make_symbol(buf);
}
object *sao_make_integer(int x)
{
 object *ret = alloc();
 ret->type = type_integer;
 ret->integer = x;
 return ret;
}
int sao_peek(FILEWrapper * fw)
{
 int c = -1;
 FileChar * current = fw->current;
 if(current!=0){
  c = current->c;
 }
 return c;
}
int sao_read_int(FILEWrapper * fw, int start)
{
 while ( sao_is_digit(sao_peek(fw)) )
  start = start * 10 + (sao_getc(fw) - '0');
 return start;
}
object *sao_read_list(FILEWrapper * fw)
{
 object *obj;
 object *cell = END_LIST;
 for (;;) {
  obj = sao_load_expr(fw);
  if (obj == END_LIST)
   return sao_reverse(cell, END_LIST);
  cell = cons(obj, cell);
 }
 return END_LIST;
}
inline object *sao_load_str(FILEWrapper * fw)
{
 char buf[256];
 int i = 0;
 int c;
 while ((c = sao_getc(fw)) != '\"') {
  if (c == (-1))
   return NIL;
  if (i >= 256) do{libcf(libc_fprintf,"fprintf")(libcf(libc_stderr,"stderr"),"%s\n","String too long - maximum length 256 characters");libcf(libc_exit,"exit")(1);}while(0);
  buf[i++] = (char) c;
 }
 buf[i] = '\0';
 object *s = sao_make_symbol(buf);
 s->type = type_string;
 return s;
}
void sao_comment(FILEWrapper * fw)
{
 int c;
 for (;;) {
  c = sao_getc(fw);
  if (c == '\n' || c == (-1)) return;
 }
}
int depth = 0;
object *sao_load_expr(FILEWrapper * fw)
{
 ffi_func printf = libcf(libc_printf,"printf");
 int c;
 for (;;) {
  object * theSymbol = NIL;
  c = sao_getc(fw);
  if (c == (-1)) return 0;
  if (c == '\n' || c == '\r' || c == ' ' || c == '\t'
    || c == 0
    || c == ',' || (c=='/'&&'/'==sao_peek(fw)))
  {
   continue;
  }
  if (c == '\"') return sao_load_str(fw);
  if (c == ';' || c=='#') { sao_comment(fw); continue; }
  if (c == '\'') return cons(QUOTE, cons(sao_load_expr(fw), NIL));
  if (libcf(libc_isalpha,"isalpha")(c) || libcf(libc_strchr,"strchr")(type_symbolS, c)){
   theSymbol = sao_read_symbol(fw,c);
   if('('==sao_peek(fw)){
    c = sao_getc(fw);
   }else{
    return theSymbol;
   }
  }
  if (c == '(') {
   depth++;
   object * list = sao_read_list(fw);
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
   return sao_make_integer(-1 * sao_read_int(fw, sao_getc(fw) - '0'));
 }
 return NIL;
}
void sao_out_expr(char *str, object *e)
{
 if (str)
  libcf(libc_printf,"printf")("%s ", str);
 if (((e)==0||(e)==NIL)) {
  libcf(libc_printf,"printf")("'()");
  return;
 }
 switch (e->type) {
  case type_string:
   libcf(libc_printf,"printf")("\"%s\"", e->string);
   break;
  case type_symbol:
   libcf(libc_printf,"printf")("%s", e->string);
   break;
  case type_integer:
   libcf(libc_printf,"printf")("%ld", e->integer);
   break;
  case type_native:
   libcf(libc_printf,"printf")("<function>");
   break;
  case type_table:
   libcf(libc_printf,"printf")("<table %d>", e->vsize);
   break;
  case type_list:
   if (is_tagged(e, PROCEDURE)) {
    libcf(libc_printf,"printf")("<closure>");
    return;
   }
   int first=0;
   sao_out_expr(0, e->car);
   libcf(libc_printf,"printf")("(");
   object **t = &e;
   while (!((*t)==0||(*t)==NIL)) {
    if(first==0){
     first=1;
    }else{
     libcf(libc_printf,"printf")(" ");
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
   libcf(libc_printf,"printf")(")");
 }
}
object *sao_eval(object *exp, object *ctx)
{
tail:
 if (((exp)==0||(exp)==NIL) || exp == END_LIST) {
  return NIL;
 } else if (exp->type == type_integer || exp->type == type_string) {
  return exp;
 } else if (exp->type == type_symbol) {
  object *s = sao_lookup_var(exp, ctx);
  return s;
 } else if (is_tagged(exp, QUOTE)) {
  return (car(cdr((exp))));
 } else if (is_tagged(exp, LAMBDA)) {
  return make_procedure((car(cdr((exp)))), (cdr(cdr((exp)))), ctx);
 } else if (is_tagged(exp, DEFINE)) {
  if ((!(((car(cdr((exp)))))==0||((car(cdr((exp)))))==NIL) && ((car(cdr((exp)))))->type != type_list))
   define_variable((car(cdr((exp)))), sao_eval((car(cdr(cdr((exp))))), ctx), ctx);
  else {
   object *closure =
    sao_eval(make_lambda(cdr((car(cdr((exp))))), (cdr(cdr((exp))))), ctx);
   define_variable(car((car(cdr((exp))))), closure, ctx);
  }
  return sao_make_symbol("ok");
 } else if (is_tagged(exp, BEGIN)) {
  object *args = cdr(exp);
  for (; !((cdr(args))==0||(cdr(args))==NIL); args = cdr(args))
   sao_eval(car(args), ctx);
  exp = car(args);
  goto tail;
 } else if (is_tagged(exp, IF)) {
  object *predicate = sao_eval((car(cdr((exp)))), ctx);
  exp = (not_false(predicate)) ? (car(cdr(cdr((exp))))) : (car(cdr(cdr(cdr((exp))))));
  goto tail;
 } else if (is_tagged(exp, sao_make_symbol("or"))) {
  object *predicate = sao_eval((car(cdr((exp)))), ctx);
  exp = (not_false(predicate)) ? (car(cdr(cdr((exp))))) : (car(cdr(cdr(cdr((exp))))));
  goto tail;
 } else if (is_tagged(exp, sao_make_symbol("cond"))) {
  object *branch = cdr(exp);
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
   object *closure =
    sao_eval(make_lambda(cdr((car(cdr((exp))))), (cdr(cdr((exp))))), ctx);
   set_variable(car((car(cdr((exp))))), closure, ctx);
  }
  return sao_make_symbol("ok");
 } else if (is_tagged(exp, LET)) {
  object **tmp;
  object *vars = NIL;
  object *vals = NIL;
  if ((((car(cdr((exp)))))==0||((car(cdr((exp)))))==NIL))
   return NIL;
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
  object *proc = sao_eval(car(exp), ctx);
  object *args = eval_list(cdr(exp), ctx);
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
 libcf(libc_printf,"printf")("\n");
 return NIL;
}
void init_global()
{
 GLOBAL = sao_expand(NIL, NIL, NIL);
 do{TRUE=sao_make_symbol("#t");define_variable(TRUE,TRUE,GLOBAL);}while(0);;
 do{FALSE=sao_make_symbol("#f");define_variable(FALSE,FALSE,GLOBAL);}while(0);;
 do{QUOTE=sao_make_symbol("quote");define_variable(QUOTE,QUOTE,GLOBAL);}while(0);;
 do{LAMBDA=sao_make_symbol("lambda");define_variable(LAMBDA,LAMBDA,GLOBAL);}while(0);;
 do{PROCEDURE=sao_make_symbol("procedure");define_variable(PROCEDURE,PROCEDURE,GLOBAL);}while(0);;
 do{DEFINE=sao_make_symbol("var");define_variable(DEFINE,DEFINE,GLOBAL);}while(0);;
 do{LET=sao_make_symbol("let");define_variable(LET,LET,GLOBAL);}while(0);;
 do{SET=sao_make_symbol("set!");define_variable(SET,SET,GLOBAL);}while(0);;
 do{BEGIN=sao_make_symbol("begin");define_variable(BEGIN,BEGIN,GLOBAL);}while(0);;
 do{IF=sao_make_symbol("if");define_variable(IF,IF,GLOBAL);}while(0);;
 define_variable(sao_make_symbol("true"), TRUE, GLOBAL);
 define_variable(sao_make_symbol("false"), FALSE, GLOBAL);
 define_variable(sao_make_symbol("cons"), make_native(native_cons), GLOBAL);
 define_variable(sao_make_symbol("car"), make_native(native_car), GLOBAL);
 define_variable(sao_make_symbol("cdr"), make_native(native_cdr), GLOBAL);
 define_variable(sao_make_symbol("set-car!"), make_native(native_setcar), GLOBAL);
 define_variable(sao_make_symbol("set-cdr!"), make_native(native_setcdr), GLOBAL);
 define_variable(sao_make_symbol("list"), make_native(native_list), GLOBAL);
 define_variable(sao_make_symbol("list?"), make_native(native_listq), GLOBAL);
 define_variable(sao_make_symbol("null?"), make_native(native_is_nullq), GLOBAL);
 define_variable(sao_make_symbol("pair?"), make_native(native_pairq), GLOBAL);
 define_variable(sao_make_symbol("atom?"), make_native(native_atomq), GLOBAL);
 define_variable(sao_make_symbol("eq?"), make_native(native_eq), GLOBAL);
 define_variable(sao_make_symbol("equal?"), make_native(native_equal), GLOBAL);
 define_variable(sao_make_symbol("add"), make_native(native_add), GLOBAL);
 define_variable(sao_make_symbol("sub"), make_native(native_sub), GLOBAL);
 define_variable(sao_make_symbol("mul"), make_native(native_mul), GLOBAL);
 define_variable(sao_make_symbol("div"), make_native(native_div), GLOBAL);
 define_variable(sao_make_symbol("cmp"), make_native(native_cmp), GLOBAL);
 define_variable(sao_make_symbol("lt"), make_native(native_lt), GLOBAL);
 define_variable(sao_make_symbol("gt"), make_native(native_gt), GLOBAL);
 define_variable(sao_make_symbol("type"), make_native(native_type), GLOBAL);
 define_variable(sao_make_symbol("load"), make_native(load_file), GLOBAL);
 define_variable(sao_make_symbol("print"), make_native(sao_print), GLOBAL);
 define_variable(sao_make_symbol("global"), make_native(native_get_global), GLOBAL);
 define_variable(sao_make_symbol("exit"), make_native(native_exit), GLOBAL);
 define_variable(sao_make_symbol("read"), make_native(native_read), GLOBAL);
 define_variable(sao_make_symbol("table"), make_native(native_vec), GLOBAL);
 define_variable(sao_make_symbol("table-get"), make_native(native_vget), GLOBAL);
 define_variable(sao_make_symbol("table-set"), make_native(native_vset), GLOBAL);
}
int main(int argc, char **argv)
{
 ffi_func printf = libcf(libc_printf,"printf");
 for(int i=1;i<argc;i++){
  printf("argv[%d] %s\n",i,argv[i]);
 }
 ht_init(8192-1);
 init_global();
 libcf(libc_setmode,"setmode")(libcf(libc_fileno,"fileno")(libcf(libc_stdin,"stdin")),0x8000 );
 FILEWrapper * fw = FileWrapper_new((FILE*)libcf(libc_stdin,"stdin"));
 for(;;){
  FileWrapper_feed(fw);
  object *obj = sao_load_expr(fw);
  if (!((obj)==0||(obj)==NIL)) {
   printf("%lu: ",ffi_microtime());
   sao_out_expr("<=", obj);
   printf("\n");
   object *exp = sao_eval(obj, GLOBAL);
   if (!((exp)==0||(exp)==NIL)) {
    printf("%lu: ",ffi_microtime());
    sao_out_expr("=>", exp);
    printf("\n");
   }else{
   }
  }else{
   printf(" end ");
   break;
  }
 }
 return 0;
}
