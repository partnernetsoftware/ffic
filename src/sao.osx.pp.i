enum { libc_fprintf, libc_malloc, libc_memset, libc_strdup, libc_strcmp, libc_printf, libc_putc, libc_getc, libc_isalnum, libc_strchr, libc_isdigit, libc_isalpha, libc_fopen, libc_fread, libc_fgets, libc_fclose, libc_feof, libc_usleep, libc_msleep, libc_sleep, libc_fputc, libc_strlen, libc_fflush, libc_free, libc_setmode, libc_fileno, libc_stdin, libc_stdout, libc_stderr, libc_microtime, libc_exit, };
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
ffic_func libc_a[libc_exit+1];
ffic_func libc_(int fi,const char* fn){ return libc_a[fi]?libc_a[fi]:(libc_a[fi]=ffic("c",fn)); }
typedef enum { stream_file, stream_char, } stream_t; char* stream_names[] = { "file", "char", };;
typedef enum { type_list, type_integer, type_symbol, type_string, type_native, type_vector, } type_t; char* type_names[] = { "list", "integer", "symbol", "string", "native", "vector", };;
typedef enum { ctype_long, ctype_double, ctype_any, } ctype_t; char* ctype_names[] = { "long", "double", "any", };;
typedef enum { argt_i, argt_p, argt_d, argt_v, argt_e, argt_s, argt_h, } argt_t; char* argt_names[] = { "i", "p", "d", "v", "e", "s", "h", };;
int argta[argt_h+1];
typedef struct _sao_object sao_object;
typedef sao_object *(*native_t)(sao_object *);
struct _sao_object {
 type_t type;
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
  native_t native;
 };
} __attribute__((packed));
sao_object*NIL=0; sao_object*ARGV=0; sao_object*GLOBAL=0; sao_object*TRUE=0; sao_object*FALSE=0; sao_object*QUOTE=0; sao_object*SET=0; sao_object*LET=0; sao_object*DEFINE=0; sao_object*PROCEDURE=0; sao_object*IF=0; sao_object*LAMBDA=0; sao_object*BEGIN=0; sao_object*ERROR=0;;
sao_object *is_tagged(sao_object *cell, sao_object *tag);
sao_object *cons(sao_object *car, sao_object *cdr);
sao_object *native_load(sao_object *args);
sao_object *cdr(sao_object *);
sao_object *car(sao_object *);
sao_object *sao_get_var(sao_object *var, sao_object *ctx);
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
void sao_out_expr(char *str, sao_object *el);
long sao_is_digit(int c) { return (long) libc_(libc_isdigit,"isdigit")(c); }
long sao_is_alpha(int c) { return (long) libc_(libc_isalpha,"isalpha")(c); }
long sao_is_alphanumber(int c) { return (long) libc_(libc_isalnum,"isalnum")(c); }
void* sao_calloc(long _sizeof){return libc_(libc_memset,"memset")(libc_(libc_malloc,"malloc")(_sizeof),0,_sizeof);}
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
    libc_(libc_printf,"printf")("DEBUG !!! newTable(%d) still full ??\n", newsize);
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
 return (cell&&!cell->type)?cell->car:NIL;
}
sao_object *cdr(sao_object *cell) {
 return (cell&&!cell->type)?cell->cdr:NIL;
}
sao_object *append(sao_object *l1, sao_object *l2) {
 if (!l1) return l2;
 return cons(car(l1), append(cdr(l1), l2));
}
sao_object * sao_type_check(const char *func, sao_object *obj, type_t type)
{
 if (!obj) {
  libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"Invalid argument to function %s: NIL\n", func);
  libc_(libc_exit,"exit")(1);
 } else if (obj->type != type) {
  libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"ERR: function %s. expected %s got %s\n", func, type_names[type], type_names[obj->type]);
  libc_(libc_exit,"exit")(1);
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
  ret->_string = libc_(libc_strdup,"strdup")(s);
  ht_insert(ret);
 }else{
  if(!libc_(libc_strcmp,"strcmp")(ret->_string,s)){
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
sao_object * sao_is_eq(sao_object *x, sao_object *y) {
 do{
  if (x == y) return x;
  if (!x || !y) break;
  if (x->type != y->type) break;
  switch (x->type) {
   case type_integer: if(x->_integer == y->_integer) return x;
   case type_symbol:
   case type_string: if(!libc_(libc_strcmp,"strcmp")(x->_string, y->_string)) return x;
   default: break;
  }
 }while(0);
 return NIL;
}
int not_false(sao_object *x) {
 if (!x || sao_is_eq(x, FALSE)) return 0;
 if (x->type == type_integer && x->_integer == 0) return 0;
 return 1;
}
sao_object* is_tagged(sao_object *cell, sao_object *tag)
{
 return (cell&&!cell->type) ? sao_is_eq(car(cell),tag) : NIL;
}
int sao_list_len(sao_object *expr) {
 return !expr ? 0 : (1+sao_list_len(cdr(expr)));
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
int sao_read_line(sao_stream* fw)
{
 int line_num = 0;
 ffic_func feof = libc_(libc_feof,"feof");
 do{
  if(fw->type==stream_file){
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
  char*line=sao_calloc( sizeof(char) *LINE_LEN );;
  if(fw->type==stream_file){
   if(argta[argt_i] || argta[argt_d]){
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
 }while(0);
 return line_num;
}
sao_object * sao_parse( sao_stream * fw, int do_eval ) {
 sao_read_line(fw);
 sao_u64 (*microtime)() = ( sao_u64(*)() ) libc_(libc_microtime,"microtime");
 sao_object *rt = NIL;
 for(;;){
  sao_object* exp = sao_load_expr(fw);
  if(exp==0){ break; }
  if (!!exp) {
   if(argta[argt_d])
    libc_(libc_printf,"printf")("%llu: ",microtime());
   if(argta[argt_i]||argta[argt_d]){
    sao_out_expr("<=", exp);
    libc_(libc_printf,"printf")("\n");
   }
   if (do_eval){
    rt = sao_eval(exp, GLOBAL);
    if(argta[argt_d]) libc_(libc_printf,"printf")("%llu: ",microtime());
    if(argta[argt_i]||argta[argt_d]){
     if ( !!rt) {
      sao_out_expr("=>", rt);
      libc_(libc_printf,"printf")("\n");
     }
    }
   }else{
    rt = exp;
   }
  }
 }
 return rt;
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
 if(argta[argt_s]) (sao_type_check(__func__, car(args), type_list));
 return (car(car((args))));
}
sao_object *native_cdr(sao_object *args) {
 if(argta[argt_s]) (sao_type_check(__func__, car(args), type_list));
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
 return (((car(car((args))))&&(car(car((args))))->type) && ((cdr(car((args))))&&(cdr(car((args))))->type)) ? TRUE : FALSE;
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
 return (car(sexp)&&car(sexp)->type) ? TRUE : FALSE;
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
 return sao_is_eq(car(args), (car(cdr((args))))) ? TRUE : FALSE;
}
sao_object *native_equalq(sao_object *args) {
 if (sao_is_eq(car(args), (car(cdr((args))))))
  return TRUE;
 if ((car(args)->type == type_list) && ((car(cdr((args))))->type == type_list)) {
  sao_object *a, *b;
  a = car(args);
  b = (car(cdr((args))));
  while (!!a && !!b) {
   if (!sao_is_eq(car(a), car(b)))
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
   if (!sao_is_eq(*(va + i), *(vb + i))) {
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
 libc_(libc_exit,"exit")(0);
 return NIL;
}
sao_object *native_read(sao_object *args) {
 return sao_load_expr(sao_stream_new(libc_(libc_stdin,"stdin"),stream_file));
}
sao_object *native_load(sao_object *args) {
 sao_object *exp;
 sao_object *ret = NIL;
 char *filename = car(args)->_string;
 void*fp = libc_(libc_fopen,"fopen")(filename, "r");
 if (fp == 0) {
  libc_(libc_printf,"printf")("Error opening file %s\n", filename);
  return NIL;
 }
 sao_stream * fw = sao_stream_new(fp,stream_file);
 for (;;) {
  exp = sao_load_expr(fw);
  if (!exp)
   break;
  ret = sao_eval(exp, GLOBAL);
 }
 libc_(libc_fclose,"fclose")(fp);
 return ret;
}
sao_object *native_vector(sao_object *args) {
 sao_object * sym = (sao_type_check(__func__, car(args), type_integer));
 return sao_new_vector(sym->_integer);
}
sao_object *native_vget(sao_object *args) {
 sao_object * vct = (sao_type_check(__func__, car(args), type_vector));
 sao_object * key = (sao_type_check(__func__, (car(cdr((args)))), type_integer));
 if (key->_integer >= vct->_len) return NIL;
 return vct->_vector[key->_integer];
}
sao_object *native_vset(sao_object *args){
 sao_object * vct = (sao_type_check(__func__, car(args), type_vector));
 sao_object * key = (sao_type_check(__func__, (car(cdr((args)))), type_integer));
 if (!(car(cdr(cdr((args)))))) return NIL;
 if (key->_integer >= vct->_len) return NIL;
 car(args)->_vector[key->_integer] = (car(cdr(cdr((args)))));
 return sao_new_symbol("ok");
}
sao_object *sao_expand(sao_object *var, sao_object *val, sao_object *ctx) {
 return cons(cons(var, val), ctx);
}
sao_object *sao_get_var(sao_object *var, sao_object *ctx) {
 while (!!ctx) {
  sao_object *frame = car(ctx);
  sao_object *vars = car(frame);
  sao_object *vals = cdr(frame);
  while (!!vars) {
   if (sao_is_eq(car(vars), var))
    return car(vals);
   vars = cdr(vars);
   vals = cdr(vals);
  }
  ctx = cdr(ctx);
 }
 return NIL;
}
sao_object * sao_set_var(sao_object *var, sao_object *val, sao_object *ctx) {
 while (!!ctx) {
  sao_object *frame = car(ctx);
  sao_object *vars = car(frame);
  sao_object *vals = cdr(frame);
  while (!!vars) {
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
sao_object *sao_def_var(sao_object *var, sao_object *val, sao_object *ctx)
{
 if(!ctx) do{libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"%s\n","ASSERT: sao_def_var need ctx");libc_(libc_exit,"exit")(1);}while(0);
 sao_object *frame = car(ctx);
 if(!frame) do{libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"%s\n","ASSERT: sao_def_var(): found no car in ctx");libc_(libc_exit,"exit")(1);}while(0);
 sao_object *vars = car(frame);
 sao_object *vals = cdr(frame);
 while (!!vars) {
  if (sao_is_eq(var, car(vars))) {
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
sao_object *native_print(sao_object *args) {
 sao_out_expr(0, car(args));
 libc_(libc_printf,"printf")("\n");
 return NIL;
}
sao_object *sao_read_symbol(sao_stream * fw, char start)
{
 char buf[128];
 buf[0] = start;
 int i = 1;
 while (sao_is_alphanumber(sao_peek(fw))
   || libc_(libc_strchr,"strchr")(type_symbolS, sao_peek(fw)))
 {
  if (i >= 128)
   do{libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"%s\n","Symbol name too long - maximum length 128 characters");libc_(libc_exit,"exit")(1);}while(0);
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
  if (i >= 256) do{libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"%s\n","String too long - maximum length 256 characters");libc_(libc_exit,"exit")(1);}while(0);
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
  if (libc_(libc_isalpha,"isalpha")(c) || libc_(libc_strchr,"strchr")(type_symbolS, c)){
   theSymbol = sao_read_symbol(fw,c);
   while(' '==sao_peek(fw)) c = sao_deq_c(fw);
   if('('==sao_peek(fw)){
    c = sao_deq_c(fw);
   }else{
    return theSymbol;
   }
  }
  if (c == '(') {
   sao_object * list = sao_read_list(fw);
   if(theSymbol!=NIL){
    list = cons(theSymbol,list);
   }
   return list;
  }
  if (c == ')') { return NIL; }
  if (sao_is_digit(c)) return sao_new_integer(sao_read_int(fw, c - '0'));
  if (c == '-' && sao_is_digit(sao_peek(fw)))
   return sao_new_integer(-1 * sao_read_int(fw, sao_deq_c(fw) - '0'));
 }
 return NIL;
}
void sao_out_expr(char *str, sao_object *el){
 if (str) libc_(libc_printf,"printf")("%s ", str);
 if (!el) { libc_(libc_printf,"printf")("'()"); return; }
 if (!el) { return; }
 switch (el->type) {
  case type_string:
   libc_(libc_printf,"printf")("\"%s\"", el->_string); break;
  case type_symbol:
   libc_(libc_printf,"printf")("%s", el->_string); break;
  case type_integer:
   libc_(libc_printf,"printf")("%ld", el->_integer); break;
  case type_native:
   libc_(libc_printf,"printf")("<function>"); break;
  case type_vector:
   libc_(libc_printf,"printf")("<vector %d>", el->_len); break;
  case type_list:
   if (is_tagged(el, PROCEDURE)) {
    libc_(libc_printf,"printf")("<closure>");
    return;
   }
   int skip=0;
   sao_object **t = &el;
   if (!!*t) {
    if((*t)->car && type_symbol == (*t)->car->type){
     sao_out_expr(0, (*t)->car);
     skip=1;
    }
   }
   libc_(libc_printf,"printf")("(");
   while (!!*t) {
    if(skip==1){
     skip=0;
    }else{
     libc_(libc_printf,"printf")(" ");
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
   libc_(libc_printf,"printf")(")");
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
  sao_object *s = sao_get_var(exp, ctx);
  if (argta[argt_s] && !s) {
   sao_out_expr("Unbound symbol:", exp);
   libc_(libc_printf,"printf")("\n");
  }
  return s;
 } else if (is_tagged(exp, QUOTE)) {
  return (car(cdr((exp))));
 } else if (is_tagged(exp, LAMBDA)) {
  return sao_new_procedure((car(cdr((exp)))), (cdr(cdr((exp)))), ctx);
 } else if (is_tagged(exp, DEFINE)) {
  if (((car(cdr((exp))))&&(car(cdr((exp))))->type))
   sao_def_var((car(cdr((exp)))), sao_eval((car(cdr(cdr((exp))))), ctx), ctx);
  else {
   sao_object *closure =
    sao_eval(sao_new_lambda(cdr((car(cdr((exp))))), (cdr(cdr((exp))))), ctx);
   sao_def_var(car((car(cdr((exp))))), closure, ctx);
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
  if (((car(cdr((exp))))&&(car(cdr((exp))))->type)){
   sao_set_var((car(cdr((exp)))), sao_eval((car(cdr(cdr((exp))))), ctx), ctx);
  } else {
   sao_object *closure =
    sao_eval(sao_new_lambda(cdr((car(cdr((exp))))), (cdr(cdr((exp))))), ctx);
   sao_set_var(car((car(cdr((exp))))), closure, ctx);
  }
  return sao_new_symbol("ok");
 } else if (is_tagged(exp, LET)) {
  sao_object **tmp;
  sao_object *vars = NIL;
  sao_object *vals = NIL;
  if (!(car(cdr((exp))))) return NIL;
  if (((car(cdr((exp))))&&(car(cdr((exp))))->type)) {
   for (tmp = &exp->cdr->cdr->car; !!*tmp; tmp = &(*tmp)->cdr) {
    vars = cons((car(car((*tmp)))), vars);
    vals = cons((car(cdr(car((*tmp))))), vals);
   }
   sao_def_var((car(cdr((exp)))),
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
   if(argta[argt_s]){
    sao_out_expr("WARNING: Invalid arguments to sao_eval:", exp);
    libc_(libc_printf,"printf")("\n");
   }
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
 libc_(libc_printf,"printf")("\n");
 return NIL;
}
sao_object * sao_init(char* langpack )
{
 GLOBAL = sao_expand(NIL, NIL, NIL);
 do{TRUE=sao_new_symbol("true");sao_def_var(TRUE,TRUE,GLOBAL);}while(0);;
 do{FALSE=sao_new_symbol("false");sao_def_var(FALSE,FALSE,GLOBAL);}while(0);;
 sao_def_var(sao_new_symbol("true"), TRUE, GLOBAL);
 sao_def_var(sao_new_symbol("false"), FALSE, GLOBAL);
 do{QUOTE=sao_new_symbol("quote");sao_def_var(QUOTE,QUOTE,GLOBAL);}while(0);;
 do{LAMBDA=sao_new_symbol("lambda");sao_def_var(LAMBDA,LAMBDA,GLOBAL);}while(0);;
 do{PROCEDURE=sao_new_symbol("procedure");sao_def_var(PROCEDURE,PROCEDURE,GLOBAL);}while(0);;
 do{DEFINE=sao_new_symbol("var");sao_def_var(DEFINE,DEFINE,GLOBAL);}while(0);;
 do{LET=sao_new_symbol("let");sao_def_var(LET,LET,GLOBAL);}while(0);;
 do{SET=sao_new_symbol("set");sao_def_var(SET,SET,GLOBAL);}while(0);;
 do{BEGIN=sao_new_symbol("begin");sao_def_var(BEGIN,BEGIN,GLOBAL);}while(0);;
 do{IF=sao_new_symbol("if");sao_def_var(IF,IF,GLOBAL);}while(0);;
 sao_def_var(sao_new_symbol("exit"), sao_new_native(native_exit), GLOBAL); sao_def_var(sao_new_symbol("ffi"), sao_new_native(native_ffi), GLOBAL); sao_def_var(sao_new_symbol("global"), sao_new_native(native_global), GLOBAL); sao_def_var(sao_new_symbol("type"), sao_new_native(native_type), GLOBAL); sao_def_var(sao_new_symbol("cons"), sao_new_native(native_cons), GLOBAL); sao_def_var(sao_new_symbol("car"), sao_new_native(native_car), GLOBAL); sao_def_var(sao_new_symbol("cdr"), sao_new_native(native_cdr), GLOBAL); sao_def_var(sao_new_symbol("setcar"), sao_new_native(native_setcar), GLOBAL); sao_def_var(sao_new_symbol("setcdr"), sao_new_native(native_setcdr), GLOBAL); sao_def_var(sao_new_symbol("list"), sao_new_native(native_list), GLOBAL); sao_def_var(sao_new_symbol("vector"), sao_new_native(native_vector), GLOBAL); sao_def_var(sao_new_symbol("vget"), sao_new_native(native_vget), GLOBAL); sao_def_var(sao_new_symbol("vset"), sao_new_native(native_vset), GLOBAL); sao_def_var(sao_new_symbol("load"), sao_new_native(native_load), GLOBAL); sao_def_var(sao_new_symbol("print"), sao_new_native(native_print), GLOBAL); sao_def_var(sao_new_symbol("read"), sao_new_native(native_read), GLOBAL); sao_def_var(sao_new_symbol("add"), sao_new_native(native_add), GLOBAL); sao_def_var(sao_new_symbol("sub"), sao_new_native(native_sub), GLOBAL); sao_def_var(sao_new_symbol("mul"), sao_new_native(native_mul), GLOBAL); sao_def_var(sao_new_symbol("div"), sao_new_native(native_div), GLOBAL); sao_def_var(sao_new_symbol("cmp"), sao_new_native(native_cmp), GLOBAL); sao_def_var(sao_new_symbol("not"), sao_new_native(native_not), GLOBAL); sao_def_var(sao_new_symbol("lt"), sao_new_native(native_lt), GLOBAL); sao_def_var(sao_new_symbol("gt"), sao_new_native(native_gt), GLOBAL); sao_def_var(sao_new_symbol("is_null"), sao_new_native(native_is_null), GLOBAL); sao_def_var(sao_new_symbol("is_list"), sao_new_native(native_is_list), GLOBAL); sao_def_var(sao_new_symbol("pairq"), sao_new_native(native_pairq), GLOBAL); sao_def_var(sao_new_symbol("atomq"), sao_new_native(native_atomq), GLOBAL); sao_def_var(sao_new_symbol("eqq"), sao_new_native(native_eqq), GLOBAL); sao_def_var(sao_new_symbol("equalq"), sao_new_native(native_equalq), GLOBAL);;
 return GLOBAL;
}
int main(int argc, char **argv) {
 ffic_func strcmp = libc_(libc_strcmp,"strcmp");
 libc_(libc_setmode,"setmode")(libc_(libc_fileno,"fileno")(libc_(libc_stdin,"stdin")),0x8000 );
 ht_resize(16384-1);
 sao_init(0);
 ARGV = sao_expand(NIL, NIL, NIL);
 char * script_file = "-";
 if(argc>1){
  char argv_line[512] = {'_','(',0};
  char * argv_ptr = &argv_line[2];
  for(int i=1;i<argc;i++){*argv_ptr++=' ';char*wk=argv[i];while(*wk)*argv_ptr++=*wk++;}
  *argv_ptr++ = ')';
  sao_stream * fw = sao_stream_new(argv_line,stream_char);
  sao_object * arg_expr = sao_load_expr( fw );
  sao_object * pos = cdr(arg_expr);
  while(!!pos){
   sao_object * _car = car(pos);
   char * string_or_name;
   int i_val = 0;
   if( (_car&&!_car->type) ){
    sao_object* _caar = car(_car);
    string_or_name = _caar->_string;
    sao_object* _cadar = car(cdr(_car));
    i_val = (_cadar && _cadar->type==type_integer) ? _cadar->_integer : 0;
   }else{
    string_or_name = _car->_string;
    i_val = 1;
   }
   sao_def_var(sao_new_symbol(string_or_name), sao_new_integer(i_val), ARGV);
   int found = 0;
   for(int i=0;i<argt_h;i++){
    if(string_or_name[0]==argt_names[i][0]){
     argta[argt_i]++;
     found++;
    }
   }
   if(!found) script_file = string_or_name;
   pos = cdr(pos);
  }
  sao_def_var(ARGV,ARGV,GLOBAL);
 }
 libc_(libc_fprintf,"fprintf")(libc_(libc_stderr,"stderr"),"TODO script_file=%s\n",script_file);
 if(argta[argt_v]) libc_(libc_printf,"printf")("SaoLang (R) v0.0.3 - Wanjo Chan (c) 2020\n");
 if(argta[argt_h]){libc_(libc_printf,"printf")(" Usage: sao [options] [script.sao | -]]\n Options:\n	h:	Help\n	v:	Version\n	i:	Interactive\n	p:	Print final result\n	d:	Dev only\n	e:	Eval\n	s:	Strictive");libc_(libc_exit,"exit")(0);}
 sao_stream * fw = sao_stream_new(libc_(libc_stdin,"stdin"),stream_file);
 sao_object * result = sao_parse( fw, 1 );
 if(argta[argt_p]){ sao_out_expr(0,result);libc_(libc_printf,"printf")("\n"); }
 return 0;
}
