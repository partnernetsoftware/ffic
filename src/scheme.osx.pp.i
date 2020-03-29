enum {
 libc_fprintf, libc_stderr, libc_exit, libc_malloc, libc_memset, libc_strdup, libc_strcmp, libc_printf, libc_assert, libc_stdin, libc_getc, libc_ungetc, libc_isalnum, libc_strchr, libc_isdigit, libc_isalpha, libc_fopen, libc_fclose, libc_gettimeofday, libc_calloc, libc_stdout, libc_NULL,
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
int sprintf(char *str, const char *format, ...);
int fprintf(FILE *stream, const char *format, ...);
int fflush(FILE *stream);
extern int strcmp(const char*,const char*);
extern void* dlopen(const char *,int);
extern void *dlsym(void *, const char *);
void* ffi_void(){return 0;};
void*(*ffi_raw(const char* libfilename, const char* funcname, ...))()
{
 void* rt_dlopen = (void*) dlopen(libfilename,1 );
 void* addr = dlsym(rt_dlopen, funcname);
 if(0==addr){
  fprintf(__stderrp,"ERR: Not found %s.%s\n", libfilename, funcname);fflush(__stderrp);
  return ffi_void;
 }
 return addr;
}
void*(*ffi(const char* libname, const char* funcname, ...))()
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
   addr = ffi_raw(
     "libc.dylib"
     ,funcname);
  }
 }else{
  char libfilename[128] = {0};
  sprintf(libfilename,
    "%s%s",
    libname,
    ".dylib"
    );
  addr = ffi_raw(libfilename,funcname);
 }
 return addr;
}
typedef void*(*ffi_func)();
ffi_func libcf(int fi,const char* fn){
 return libc_a[fi]?libc_a[fi]:(libc_a[fi]=ffi("c",fn));
}
char *types[6] = {"integer","symbol","string","list","primitive","vector"};
typedef enum {
 type_integer, type_symbol, type_string, type_list, type_primitive, type_vector
} type_t;
typedef struct object object;
typedef object *(*primitive_t)(object *);
struct object {
 char gc;
 type_t type;
 union {
  i64 integer;
  char *string;
  struct {
   object **vector;
   int vsize;
  };
  struct {
   object *car;
   object *cdr;
  };
  primitive_t primitive;
 };
} __attribute__((packed));
object *ENV;
object *NIL;
object *EMPTY_LIST;
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
void print_expression(char *, object *);
int is_tagged(object *cell, object *tag);
object *read_expression(FILE *in);
object *eval(object *exp, object *env);
object *cons(object *x, object *y);
object *load_file(object *args);
object *cdr(object *);
object *car(object *);
object *lookup_variable(object *var, object *env);
int type_check_func(const char *func, object *obj, type_t type);
struct htable {
 object *key;
};
static struct htable *HTABLE = 0;
static int HTABLE_SIZE;
static i64 hash(const char *s) {
 i64 h = 0;
 u8 *u = (u8 *)s;
 while (*u) {
  h = (h * 256 + *u) % HTABLE_SIZE;
  u++;
 }
 return h;
}
int ht_init(int size) {
 if (HTABLE || !(size % 2))
  do{libcf(libc_fprintf,"fprintf")(libcf(libc_stderr,"stderr"),"%s\n","Hash table already initialized or even # of entries");libcf(libc_exit,"exit")(1);}while(0);
 HTABLE = libcf(libc_malloc,"malloc")(sizeof(struct htable) * size);
 libcf(libc_memset,"memset")(HTABLE, 0, sizeof(struct htable) * size);
 HTABLE_SIZE = size;
 return size;
}
void ht_insert(object *key) {
 i64 h = hash(key->string);
 HTABLE[h].key = key;
}
object *ht_lookup(char *s) {
 i64 h = hash(s);
 return HTABLE[h].key;
}
int alloc_count = 0;
object *alloc() {
 object *ret = libcf(libc_malloc,"malloc")(sizeof(object));
 alloc_count++;
 return ret;
}
int type_check_func(const char *func, object *obj, type_t type)
{
 if (((obj) == 0 || (obj) == NIL)) {
  libcf(libc_fprintf,"fprintf")(libcf(libc_stderr,"stderr"), "Invalid argument to function %s: NIL\n", func);
  libcf(libc_exit,"exit")(1);
 } else if (obj->type != type) {
  libcf(libc_fprintf,"fprintf")(libcf(libc_stderr,"stderr"), "ERR: function %s. expected %s got %s\n",
    func, types[type], types[obj->type]
    );
  libcf(libc_exit,"exit")(1);
 }
 return 1;
}
object *make_vector(int size) {
 object *ret = alloc();
 ret->type = type_vector;
 ret->vector = libcf(libc_malloc,"malloc")(sizeof(object *) * size);
 ret->vsize = size;
 libcf(libc_memset,"memset")(ret->vector, 0, size);
 return ret;
}
object *make_symbol(char *s) {
 object *ret = ht_lookup(s);
 if (((ret) == 0 || (ret) == NIL)) {
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
object *make_primitive(primitive_t x) {
 object *ret = alloc();
 ret->type = type_primitive;
 ret->primitive = x;
 return ret;
}
object *make_lambda(object *params, object *body) {
 return cons(LAMBDA, cons(params, body));
}
object *make_procedure(object *params, object *body,
  object *env) {
 return cons(PROCEDURE, cons(params, cons(body, cons(env, EMPTY_LIST))));
}
inline object *cons(object *x, object *y) {
 object *ret = alloc();
 ret->type = type_list;
 ret->car = x;
 ret->cdr = y;
 return ret;
}
inline object *car(object *cell) {
 if (((cell) == 0 || (cell) == NIL) || cell->type != type_list) return NIL;
 return cell->car;
}
inline object *cdr(object *cell) {
 if (((cell) == 0 || (cell) == NIL) || cell->type != type_list) return NIL;
 return cell->cdr;
}
object *append(object *l1, object *l2) {
 if (((l1) == 0 || (l1) == NIL)) return l2;
 return cons(car(l1), append(cdr(l1), l2));
}
object *reverse(object *list, object *first) {
 if (((list) == 0 || (list) == NIL)) return first;
 return reverse(cdr(list), cons(car(list), first));
}
int is_equal(object *x, object *y) {
 if (x == y)
  return 1;
 if (((x) == 0 || (x) == NIL) || ((y) == 0 || (y) == NIL))
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
  case type_primitive:
   return 0;
  case type_vector:
   return 0;
 }
 return 0;
}
int not_false(object *x) {
 if (((x) == 0 || (x) == NIL) || is_equal(x, FALSE)) return 0;
 if (x->type == type_integer && x->integer == 0) return 0;
 return 1;
}
int is_tagged(object *cell, object *tag) {
 if (((cell) == 0 || (cell) == NIL) || cell->type != type_list)
  return 0;
 return is_equal(car(cell), tag);
}
int length(object *exp) {
 if (((exp) == 0 || (exp) == NIL)) return 0;
 return 1 + length(cdr(exp));
}
object *prim_type(object *args) {
 return make_symbol(types[car(args)->type]);
}
object *prim_set_env(object *args) {
 ENV = car(args);
 return NIL;
}
object *prim_list(object *args) {
 return (args);
}
object *prim_cons(object *args) {
 return cons(car(args), (car(cdr((args)))));
}
object *prim_car(object *args) {
 return (car(car((args))));
}
object *prim_cdr(object *args) {
 return (cdr(car((args))));
}
object *prim_setcar(object *args) {
 (type_check_func(__func__, car(args), type_list));
 (args->car->car = ((car(cdr((args))))));
 return NIL;
}
object *prim_setcdr(object *args) {
 (type_check_func(__func__, car(args), type_list));
 (args->car->cdr = ((car(cdr((args))))));
 return NIL;
}
object *prim_is_nullq(object *args) {
 return ((((car(args))) == 0 || ((car(args))) == NIL) || (car(args)) == EMPTY_LIST) ? TRUE : FALSE;
}
object *prim_pairq(object *args) {
 if (car(args)->type != type_list)
  return FALSE;
 return ((!(((car(car((args))))) == 0 || ((car(car((args))))) == NIL) && ((car(car((args)))))->type != type_list) && (!(((cdr(car((args))))) == 0 || ((cdr(car((args))))) == NIL) && ((cdr(car((args)))))->type != type_list)) ? TRUE : FALSE;
}
object *prim_listq(object *args) {
 object *list;
 if (car(args)->type != type_list)
  return FALSE;
 for (list = car(args); !((list) == 0 || (list) == NIL); list = list->cdr)
  if (!((list->cdr) == 0 || (list->cdr) == NIL) && (list->cdr->type != type_list))
   return FALSE;
 return (car(args)->type == type_list && prim_pairq(args) != TRUE) ? TRUE : FALSE;
}
object *prim_atomq(object *sexp) {
 return (!((car(sexp)) == 0 || (car(sexp)) == NIL) && (car(sexp))->type != type_list) ? TRUE : FALSE;
}
object *prim_neq(object *args) {
 if ((car(args)->type != type_integer) || ((car(cdr((args))))->type != type_integer))
  return FALSE;
 return (car(args)->integer == (car(cdr((args))))->integer) ? TRUE : FALSE;
}
object *prim_eq(object *args) {
 return is_equal(car(args), (car(cdr((args))))) ? TRUE : FALSE;
}
object *prim_equal(object *args) {
 if (is_equal(car(args), (car(cdr((args))))))
  return TRUE;
 if ((car(args)->type == type_list) && ((car(cdr((args))))->type == type_list)) {
  object *a, *b;
  a = car(args);
  b = (car(cdr((args))));
  while (!((a) == 0 || (a) == NIL) && !((b) == 0 || (b) == NIL)) {
   if (!is_equal(car(a), car(b)))
    return FALSE;
   a = cdr(a);
   b = cdr(b);
  }
  return TRUE;
 }
 if ((car(args)->type == type_vector) && ((car(cdr((args))))->type == type_vector)) {
  if (car(args)->vsize != (car(cdr((args))))->vsize) {
   return FALSE;
  }
  object **va = car(args)->vector;
  object **vb = (car(cdr((args))))->vector;
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
object *prim_add(object *list) {
 (type_check_func(__func__, car(list), type_integer));
 i64 total = car(list)->integer;
 list = cdr(list);
 while (!((((car(list))) == 0 || ((car(list))) == NIL) || (car(list)) == EMPTY_LIST)) {
  (type_check_func(__func__, car(list), type_integer));
  total += car(list)->integer;
  list = cdr(list);
 }
 return make_integer(total);
}
object *prim_sub(object *list) {
 (type_check_func(__func__, car(list), type_integer));
 i64 total = car(list)->integer;
 list = cdr(list);
 while (!((list) == 0 || (list) == NIL)) {
  (type_check_func(__func__, car(list), type_integer));
  total -= car(list)->integer;
  list = cdr(list);
 }
 return make_integer(total);
}
object *prim_div(object *list) {
 (type_check_func(__func__, car(list), type_integer));
 i64 total = car(list)->integer;
 list = cdr(list);
 while (!((list) == 0 || (list) == NIL)) {
  (type_check_func(__func__, car(list), type_integer));
  total /= car(list)->integer;
  list = cdr(list);
 }
 return make_integer(total);
}
object *prim_mul(object *list) {
 (type_check_func(__func__, car(list), type_integer));
 i64 total = car(list)->integer;
 list = cdr(list);
 while (!((list) == 0 || (list) == NIL)) {
  (type_check_func(__func__, car(list), type_integer));
  total *= car(list)->integer;
  list = cdr(list);
 }
 return make_integer(total);
}
object *prim_gt(object *sexp) {
 (type_check_func(__func__, car(sexp), type_integer));
 (type_check_func(__func__, (car(cdr((sexp)))), type_integer));
 return (car(sexp)->integer > (car(cdr((sexp))))->integer) ? TRUE : NIL;
}
object *prim_lt(object *sexp) {
 (type_check_func(__func__, car(sexp), type_integer));
 (type_check_func(__func__, (car(cdr((sexp)))), type_integer));
 return (car(sexp)->integer < (car(cdr((sexp))))->integer) ? TRUE : NIL;
}
object *prim_print(object *args) {
 print_expression(0, car(args));
 libcf(libc_printf,"printf")("\n");
 return NIL;
}
object *prim_exit(object *args) {
 libcf(libc_exit,"exit")(0);
 return NIL;
}
object *prim_read(object *args) {
 return read_expression((FILE*)libcf(libc_stdin,"stdin"));
}
object *prim_vget(object *args) {
 (type_check_func(__func__, car(args), type_vector));
 (type_check_func(__func__, (car(cdr((args)))), type_integer));
 if ((car(cdr((args))))->integer >= car(args)->vsize)
  return NIL;
 return car(args)->vector[(car(cdr((args))))->integer];
}
object *prim_vset(object *args) {
 (type_check_func(__func__, car(args), type_vector));
 (type_check_func(__func__, (car(cdr((args)))), type_integer));
 if ((((car(cdr(cdr((args)))))) == 0 || ((car(cdr(cdr((args)))))) == NIL))
  return NIL;
 if ((car(cdr((args))))->integer >= car(args)->vsize)
  return NIL;
 car(args)->vector[(car(cdr((args))))->integer] = (car(cdr(cdr((args)))));
 return make_symbol("ok");
}
object *prim_vec(object *args) {
 (type_check_func(__func__, car(args), type_integer));
 return make_vector(car(args)->integer);
}
object *extend_env(object *var, object *val, object *env) {
 return cons(cons(var, val), env);
}
object *lookup_variable(object *var, object *env) {
 while (!((env) == 0 || (env) == NIL)) {
  object *frame = car(env);
  object *vars = car(frame);
  object *vals = cdr(frame);
  while (!((vars) == 0 || (vars) == NIL)) {
   if (is_equal(car(vars), var))
    return car(vals);
   vars = cdr(vars);
   vals = cdr(vals);
  }
  env = cdr(env);
 }
 return NIL;
}
void set_variable(object *var, object *val, object *env) {
 while (!((env) == 0 || (env) == NIL)) {
  object *frame = car(env);
  object *vars = car(frame);
  object *vals = cdr(frame);
  while (!((vars) == 0 || (vars) == NIL)) {
   if (is_equal(car(vars), var)) {
    vals->car = val;
    return;
   }
   vars = cdr(vars);
   vals = cdr(vals);
  }
  env = cdr(env);
 }
}
object *define_variable(object *var, object *val,
  object *env) {
 object *frame = car(env);
 object *vars = car(frame);
 object *vals = cdr(frame);
 while (!((vars) == 0 || (vars) == NIL)) {
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
char type_symbolS[] = "~!@#$%^&*_-+\\:,.<>|{}[]?=/";
int peek(FILE *in) {
 u64 c = (u64) libcf(libc_getc,"getc")(in);
 libcf(libc_ungetc,"ungetc")(c, in);
 return c;
}
void skip(FILE *in) {
 u64 c;
 for (;;) {
  c = (u64) libcf(libc_getc,"getc")(in);
  if (c == '\n' || c == (-1))
   return;
 }
}
object *_read_string(FILE *in) {
 char buf[256];
 int i = 0;
 u64 c;
 while ((c = (u64) libcf(libc_getc,"getc")(in)) != '\"') {
  if (c == (-1))
   return NIL;
  if (i >= 256)
   do{libcf(libc_fprintf,"fprintf")(libcf(libc_stderr,"stderr"),"%s\n","String too long - maximum length 256 characters");libcf(libc_exit,"exit")(1);}while(0);
  buf[i++] = (char)c;
 }
 buf[i] = '\0';
 object *s = make_symbol(buf);
 s->type = type_string;
 return s;
}
object *_read_symbol(FILE *in, char start) {
 char buf[128];
 buf[0] = start;
 int i = 1;
 while (libcf(libc_isalnum,"isalnum")(peek(in)) || libcf(libc_strchr,"strchr")(type_symbolS, peek(in))) {
  if (i >= 128)
   do{libcf(libc_fprintf,"fprintf")(libcf(libc_stderr,"stderr"),"%s\n","Symbol name too long - maximum length 128 characters");libcf(libc_exit,"exit")(1);}while(0);
  buf[i++] = (u64) libcf(libc_getc,"getc")(in);
 }
 buf[i] = '\0';
 return make_symbol(buf);
}
int read_int(FILE *in, int start) {
 while (libcf(libc_isdigit,"isdigit")(peek(in)))
  start = start * 10 + ((u64)libcf(libc_getc,"getc")(in) - '0');
 return start;
}
object *_read_list(FILE *in) {
 object *obj;
 object *cell = EMPTY_LIST;
 for (;;) {
  obj = read_expression(in);
  if (obj == EMPTY_LIST)
   return reverse(cell, EMPTY_LIST);
  cell = cons(obj, cell);
 }
 return EMPTY_LIST;
}
int depth = 0;
object *read_expression(FILE *in) {
 int c;
 for (;;) {
  c = (u64)libcf(libc_getc,"getc")(in);
  if (c == '\n' || c == '\r' || c == ' ' || c == '\t') {
   continue;
  }
  if (c == ';') {
   skip(in);
   continue;
  }
  if (c == (-1))
   return 0;
  if (c == '\"')
   return _read_string(in);
  if (c == '\'')
   return cons(QUOTE, cons(read_expression(in), NIL));
  if (c == '(') {
   depth++;
   return _read_list(in);
  }
  if (c == ')') {
   depth--;
   return EMPTY_LIST;
  }
  if ((u64)libcf(libc_isdigit,"isdigit")(c))
   return make_integer(read_int(in, c - '0'));
  if (c == '-' && (u64)libcf(libc_isdigit,"isdigit")(peek(in)))
   return make_integer(-1 * read_int(in, (u64)libcf(libc_getc,"getc")(in) - '0'));
  if (libcf(libc_isalpha,"isalpha")(c) || libcf(libc_strchr,"strchr")(type_symbolS, c))
   return _read_symbol(in, c);
 }
 return NIL;
}
void print_expression(char *str, object *e) {
 if (str)
  libcf(libc_printf,"printf")("%s ", str);
 if (((e) == 0 || (e) == NIL)) {
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
  case type_primitive:
   libcf(libc_printf,"printf")("<function>");
   break;
  case type_vector:
   libcf(libc_printf,"printf")("<vector %d>", e->vsize);
   break;
  case type_list:
   if (is_tagged(e, PROCEDURE)) {
    libcf(libc_printf,"printf")("<closure>");
    return;
   }
   libcf(libc_printf,"printf")("(");
   object **t = &e;
   while (!((*t) == 0 || (*t) == NIL)) {
    print_expression(0, (*t)->car);
    if (!(((*t)->cdr) == 0 || ((*t)->cdr) == NIL)) {
     libcf(libc_printf,"printf")(" ");
     if ((*t)->cdr->type == type_list) {
      t = &(*t)->cdr;
     } else {
      print_expression(".", (*t)->cdr);
      break;
     }
    } else
     break;
   }
   libcf(libc_printf,"printf")(")");
 }
}
object *eval_list(object *exp, object *env) {
 if (((exp) == 0 || (exp) == NIL)) return NIL;
 return cons(eval(car(exp), env), eval_list(cdr(exp), env));
}
object *eval_sequence(object *exps, object *env) {
 if (((cdr(exps)) == 0 || (cdr(exps)) == NIL)) return eval(car(exps), env);
 eval(car(exps), env);
 return eval_sequence(cdr(exps), env);
}
object *eval(object *exp, object *env) {
tail:
 if (((exp) == 0 || (exp) == NIL) || exp == EMPTY_LIST) {
  return NIL;
 } else if (exp->type == type_integer || exp->type == type_string) {
  return exp;
 } else if (exp->type == type_symbol) {
  object *s = lookup_variable(exp, env);
  return s;
 } else if (is_tagged(exp, QUOTE)) {
  return (car(cdr((exp))));
 } else if (is_tagged(exp, LAMBDA)) {
  return make_procedure((car(cdr((exp)))), (cdr(cdr((exp)))), env);
 } else if (is_tagged(exp, DEFINE)) {
  if ((!(((car(cdr((exp))))) == 0 || ((car(cdr((exp))))) == NIL) && ((car(cdr((exp)))))->type != type_list))
   define_variable((car(cdr((exp)))), eval((car(cdr(cdr((exp))))), env), env);
  else {
   object *closure =
    eval(make_lambda(cdr((car(cdr((exp))))), (cdr(cdr((exp))))), env);
   define_variable(car((car(cdr((exp))))), closure, env);
  }
  return make_symbol("ok");
 } else if (is_tagged(exp, BEGIN)) {
  object *args = cdr(exp);
  for (; !((cdr(args)) == 0 || (cdr(args)) == NIL); args = cdr(args))
   eval(car(args), env);
  exp = car(args);
  goto tail;
 } else if (is_tagged(exp, IF)) {
  object *predicate = eval((car(cdr((exp)))), env);
  exp = (not_false(predicate)) ? (car(cdr(cdr((exp))))) : (car(cdr(cdr(cdr((exp))))));
  goto tail;
 } else if (is_tagged(exp, make_symbol("or"))) {
  object *predicate = eval((car(cdr((exp)))), env);
  exp = (not_false(predicate)) ? (car(cdr(cdr((exp))))) : (car(cdr(cdr(cdr((exp))))));
  goto tail;
 } else if (is_tagged(exp, make_symbol("cond"))) {
  object *branch = cdr(exp);
  for (; !((branch) == 0 || (branch) == NIL); branch = cdr(branch)) {
   if (is_tagged(car(branch), make_symbol("else")) ||
     not_false(eval((car(car((branch)))), env))) {
    exp = cons(BEGIN, (cdr(car((branch)))));
    goto tail;
   }
  }
  return NIL;
 } else if (is_tagged(exp, SET)) {
  if ((!(((car(cdr((exp))))) == 0 || ((car(cdr((exp))))) == NIL) && ((car(cdr((exp)))))->type != type_list))
   set_variable((car(cdr((exp)))), eval((car(cdr(cdr((exp))))), env), env);
  else {
   object *closure =
    eval(make_lambda(cdr((car(cdr((exp))))), (cdr(cdr((exp))))), env);
   set_variable(car((car(cdr((exp))))), closure, env);
  }
  return make_symbol("ok");
 } else if (is_tagged(exp, LET)) {
  object **tmp;
  object *vars = NIL;
  object *vals = NIL;
  if ((((car(cdr((exp))))) == 0 || ((car(cdr((exp))))) == NIL))
   return NIL;
  if ((!(((car(cdr((exp))))) == 0 || ((car(cdr((exp))))) == NIL) && ((car(cdr((exp)))))->type != type_list)) {
   for (tmp = &exp->cdr->cdr->car; !((*tmp) == 0 || (*tmp) == NIL); tmp = &(*tmp)->cdr) {
    vars = cons((car(car((*tmp)))), vars);
    vals = cons((car(cdr(car((*tmp))))), vals);
   }
   define_variable((car(cdr((exp)))),
     eval(make_lambda(vars, cdr((cdr(cdr((exp)))))),
      extend_env(vars, vals, env)),
     env);
   exp = cons((car(cdr((exp)))), vals);
   goto tail;
  }
  for (tmp = &exp->cdr->car; !((*tmp) == 0 || (*tmp) == NIL); tmp = &(*tmp)->cdr) {
   vars = cons((car(car((*tmp)))), vars);
   vals = cons((car(cdr(car((*tmp))))), vals);
  }
  exp = cons(make_lambda(vars, (cdr(cdr((exp))))), vals);
  goto tail;
 } else {
  object *proc = eval(car(exp), env);
  object *args = eval_list(cdr(exp), env);
  if (((proc) == 0 || (proc) == NIL)) {
   return NIL;
  }
  if (proc->type == type_primitive)
   return proc->primitive(args);
  if (is_tagged(proc, PROCEDURE)) {
   env = extend_env((car(cdr((proc)))), args, (car(cdr(cdr(cdr((proc)))))));
   exp = cons(BEGIN, (car(cdr(cdr((proc))))));
   goto tail;
  }
 }
 print_expression("Invalid arguments to eval:", exp);
 libcf(libc_printf,"printf")("\n");
 return NIL;
}
void init_env() {
 ENV = extend_env(NIL, NIL, NIL);
 do{TRUE=make_symbol("#t");define_variable(TRUE,TRUE,ENV);}while(0);;
 do{FALSE=make_symbol("#f");define_variable(FALSE,FALSE,ENV);}while(0);;
 do{QUOTE=make_symbol("quote");define_variable(QUOTE,QUOTE,ENV);}while(0);;
 do{LAMBDA=make_symbol("lambda");define_variable(LAMBDA,LAMBDA,ENV);}while(0);;
 do{PROCEDURE=make_symbol("procedure");define_variable(PROCEDURE,PROCEDURE,ENV);}while(0);;
 do{DEFINE=make_symbol("define");define_variable(DEFINE,DEFINE,ENV);}while(0);;
 do{LET=make_symbol("let");define_variable(LET,LET,ENV);}while(0);;
 do{SET=make_symbol("set!");define_variable(SET,SET,ENV);}while(0);;
 do{BEGIN=make_symbol("begin");define_variable(BEGIN,BEGIN,ENV);}while(0);;
 do{IF=make_symbol("if");define_variable(IF,IF,ENV);}while(0);;
 define_variable(make_symbol("true"), TRUE, ENV);
 define_variable(make_symbol("false"), FALSE, ENV);
 define_variable(make_symbol("cons"), make_primitive(prim_cons), ENV);
 define_variable(make_symbol("car"), make_primitive(prim_car), ENV);
 define_variable(make_symbol("cdr"), make_primitive(prim_cdr), ENV);
 define_variable(make_symbol("set-car!"), make_primitive(prim_setcar), ENV);
 define_variable(make_symbol("set-cdr!"), make_primitive(prim_setcdr), ENV);
 define_variable(make_symbol("list"), make_primitive(prim_list), ENV);
 define_variable(make_symbol("list?"), make_primitive(prim_listq), ENV);
 define_variable(make_symbol("null?"), make_primitive(prim_is_nullq), ENV);
 define_variable(make_symbol("pair?"), make_primitive(prim_pairq), ENV);
 define_variable(make_symbol("atom?"), make_primitive(prim_atomq), ENV);
 define_variable(make_symbol("eq?"), make_primitive(prim_eq), ENV);
 define_variable(make_symbol("equal?"), make_primitive(prim_equal), ENV);
 define_variable(make_symbol("+"), make_primitive(prim_add), ENV);
 define_variable(make_symbol("-"), make_primitive(prim_sub), ENV);
 define_variable(make_symbol("*"), make_primitive(prim_mul), ENV);
 define_variable(make_symbol("/"), make_primitive(prim_div), ENV);
 define_variable(make_symbol("="), make_primitive(prim_neq), ENV);
 define_variable(make_symbol("<"), make_primitive(prim_lt), ENV);
 define_variable(make_symbol(">"), make_primitive(prim_gt), ENV);
 define_variable(make_symbol("type"), make_primitive(prim_type), ENV);
 define_variable(make_symbol("load"), make_primitive(load_file), ENV);
 define_variable(make_symbol("print"), make_primitive(prim_print), ENV);
 define_variable(make_symbol("exit"), make_primitive(prim_exit), ENV);
 define_variable(make_symbol("read"), make_primitive(prim_read), ENV);
 define_variable(make_symbol("vector"), make_primitive(prim_vec), ENV);
 define_variable(make_symbol("vector-get"), make_primitive(prim_vget), ENV);
 define_variable(make_symbol("vector-set"), make_primitive(prim_vset), ENV);
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
 for (;;) {
  exp = read_expression(fp);
  if (((exp) == 0 || (exp) == NIL))
   break;
  ret = eval(exp, ENV);
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
int main(int argc, char **argv)
{
 libcf(libc_printf,"printf")("%ld: start\n",ffi_microtime());
 ht_init(8192-1);
 libcf(libc_printf,"printf")("%lu: after ht_init()\n",ffi_microtime());
 init_env();
 libcf(libc_printf,"printf")("%lu: after init_env() \n",ffi_microtime());
 for (;;) {
  object *obj = read_expression((FILE*)libcf(libc_stdin,"stdin"));
  if (!((obj) == 0 || (obj) == NIL)) {
   libcf(libc_printf,"printf")("%lu: ",ffi_microtime());
   print_expression("<=", obj);
   libcf(libc_printf,"printf")("\n");
  }
  object *exp = eval(obj, ENV);
  if (!((exp) == 0 || (exp) == NIL)) {
   libcf(libc_printf,"printf")("%lu: ",ffi_microtime());
   print_expression("=>", exp);
   libcf(libc_printf,"printf")("\n");
  }else{
   break;
  }
 }
   libcf(libc_printf,"printf")("%lu: exit\n",ffi_microtime());
}
