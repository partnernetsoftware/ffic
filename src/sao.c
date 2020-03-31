#define SAO_CAT(a, ...) SAO_PRIMITIVE_CAT(a, __VA_ARGS__)
#define SAO_PRIMITIVE_CAT(a, ...) a ## __VA_ARGS__
#define SAO_IIF(c) SAO_PRIMITIVE_CAT(SAO_IIF_, c)
#define SAO_IIF_0(t, ...) __VA_ARGS__
#define SAO_IIF_1(t, ...) t
#define SAO_CHECK_N(x, n, ...) n
#define SAO_CHECK(...) SAO_CHECK_N(__VA_ARGS__, 0,)
#define SAO_PROBE(x) x, 1,
#define SAO_IS_PAREN(x) SAO_CHECK(SAO_IS_PAREN_PROBE x)
#define SAO_IS_PAREN_PROBE(...) SAO_PROBE(~)
#define SAO_NOT(x) SAO_CHECK(SAO_PRIMITIVE_CAT(SAO_NOT_, x))
#define SAO_NOT_0 SAO_PROBE(~)
#define SAO_COMPL(b) SAO_PRIMITIVE_CAT(SAO_COMPL_, b)
#define SAO_COMPL_0 1
#define SAO_COMPL_1 0
#define SAO_BOOL(x) SAO_COMPL(SAO_NOT(x))
#define SAO_IF(c) SAO_IIF(SAO_BOOL(c))
#define SAO_EAT(...)
#define SAO_EXPAND(...) __VA_ARGS__
#define SAO_WHEN(c) SAO_IF(c)(SAO_EXPAND, SAO_EAT)
#define SAO_EMPTY()
#define SAO_DEFER(id) id SAO_EMPTY()
#define SAO_OBSTRUCT(...) __VA_ARGS__ SAO_DEFER(SAO_EMPTY)()
#define SAO_EVAL(...)  SAO_EVAL1(SAO_EVAL1(SAO_EVAL1(__VA_ARGS__)))
#define SAO_EVAL1(...) SAO_EVAL2(SAO_EVAL2(SAO_EVAL2(__VA_ARGS__)))
#define SAO_EVAL2(...) SAO_EVAL3(SAO_EVAL3(SAO_EVAL3(__VA_ARGS__)))
#define SAO_EVAL3(...) SAO_EVAL4(SAO_EVAL4(SAO_EVAL4(__VA_ARGS__)))
#define SAO_EVAL4(...) SAO_EVAL5(SAO_EVAL5(SAO_EVAL5(__VA_ARGS__)))
#define SAO_EVAL5(...) __VA_ARGS__
#define SAO_WHILE(macro, value, ...) SAO_WHEN(SAO_NOT(SAO_IS_PAREN(value ())))\
	( SAO_OBSTRUCT(macro) (value) SAO_OBSTRUCT(SAO_WHILE_INDIRECT) () (macro, __VA_ARGS__) )
#define SAO_WHILE_INDIRECT() SAO_WHILE 
#define SAO_ITR(mmm,qqq,...) SAO_EVAL( SAO_WHILE( mmm,qqq,__VA_ARGS__ ) )
//////////////////////////////////////////////////////////////////////////////
#define DEFINE_ENUM_LIBC(n) libc_##n,
#define LIBC_FUNC_LIST fprintf,stderr,exit,malloc,memset,strdup,strcmp,printf,\
	stdin,putc,getc,isalnum,strchr,isdigit,isalpha,fopen,fread,fgets,fclose,feof,\
	usleep,msleep,sleep,fputc,setmode,fileno,gettimeofday,calloc,stdout,strlen,NULL
//TODO macro for (int=>char* map)
enum {
	SAO_ITR(DEFINE_ENUM_LIBC,SAO_EXPAND(LIBC_FUNC_LIST))
};
void* (*libc_a[libc_NULL])();//function buffer
#define libc(f) libcf(libc_##f,#f)
#include "ffic.h" //github.com/partnernetsoftware/ffic/blob/master/src/ffic.h
typedef void*(*ffi_func)();
ffi_func libcf(int fi,const char* fn){
	return libc_a[fi]?libc_a[fi]:(libc_a[fi]=ffic("c",fn));
}
//#define NULL ((void*)0)
#define NULL 0
#define EOF (-1)
//////////////////////////////////////////////////////////////////////////////
//#define is_NIL(x) ((x)==NULL||(x)==NIL)
#define is_NIL(x) ((x)==NULL||(x)==NIL)
#define is_EOL(x) (is_NIL((x)) || (x) == END_LIST)
#define error(x) do{libc(fprintf)(libc(stderr),"%s\n",x);libc(exit)(1);}while(0)

char *types[7] = {"integer","symbol","string","list","native","table","null"};
typedef enum {
	type_integer, type_symbol, type_string, type_list, type_native, type_table, type_null
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
object *GLOBAL = NULL;
object *NIL = NULL;
object *END_LIST = NULL;
object *TRUE = NULL;
object *FALSE = NULL;
object *QUOTE = NULL;
object *DEFINE = NULL;
object *SET = NULL;
object *LET = NULL;
object *IF = NULL;
object *LAMBDA = NULL;
object *BEGIN = NULL;
object *PROCEDURE = NULL;

int is_tagged(object *cell, object *tag);
object *cons(object *car, object *cdr);
object *load_file(object *args);
object *cdr(object *);
object *car(object *);
#define caar(x) (car(car((x))))
#define cdar(x) (cdr(car((x))))
#define cadr(x) (car(cdr((x))))
#define caddr(x) (car(cdr(cdr((x)))))
#define cadddr(x) (car(cdr(cdr(cdr((x))))))
#define cadar(x) (car(cdr(car((x)))))
#define cddr(x) (cdr(cdr((x))))
#define cdadr(x) (cdr(car(cdr((x)))))
#define atom(x) (!is_NIL(x) && (x)->type != type_list)
#define type_check(x, t) (sao_type_check(__func__, x, t))
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
FILEWrapper * FILEWrapper_new(FILE* fp);
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
inline u64 sao_is_digit(int c) { return (u64) libc(isdigit)(c); }
inline u64 sao_is_alpha(int c) { return (u64) libc(isalpha)(c); }
inline u64 sao_is_alphanumber(int c) { return (u64) libc(isalnum)(c); }
////////////////////////////////////////////////////////////////////////
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
		error("Hash table already initialized or even # of entries");
	//printf("ht_init %d\n",size);
	HTABLE = libc(malloc)(sizeof(struct htable) * size);
	libc(memset)(HTABLE, 0, sizeof(struct htable) * size);
	HTABLE_SIZE = size;
	if(HTABLE_SIZE==0)
		error("HTABLE_SIZE=0???");
	return size;
}
void ht_insert(object *key) {
	i64 h = ht_hash(key->string);
	HTABLE[h].key = key;
}
//TODO expand when every hit (ref to tcc later)
object *ht_lookup(char *s) {
	i64 h = ht_hash(s);
	return HTABLE[h].key;
}
////////////////////////////////////////////////////////////////////////
object *alloc() {
	object *ret = libc(malloc)(sizeof(object)); //TODO gc()
	return ret;
}
int sao_type_check(const char *func, object *obj, type_t type)
{
	if (is_NIL(obj)) {
		libc(fprintf)(libc(stderr), "Invalid argument to function %s: NIL\n", func);
		libc(exit)(1);
	} else if (obj->type != type) {
		libc(fprintf)(libc(stderr), "ERR: function %s. expected %s got %s\n",
				func, types[type], types[obj->type]);
		libc(exit)(1);
	}
	return 1;
}
object *make_table(int size) {
	object *ret = alloc();
	ret->type = type_table;
	ret->table = libc(malloc)(sizeof(object *) * size);
	ret->vsize = size;
	libc(memset)(ret->table, 0, size);
	return ret;
}
object *sao_make_symbol(char *s) {
	object *ret = ht_lookup(s);
	if (is_NIL(ret)) {
		ret = alloc();
		ret->type = type_symbol;
		ret->string = libc(strdup)(s);
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
	if (is_NIL(cell) || cell->type != type_list) return NIL;
	return cell->car;
}
inline object *cdr(object *cell) {
	if (is_NIL(cell) || cell->type != type_list) return NIL;
	return cell->cdr;
}
object *append(object *l1, object *l2) {
	if (is_NIL(l1)) return l2;
	return cons(car(l1), append(cdr(l1), l2));
}

object * sao_reverse(object *list, object *first) {
	object * rt = (is_NIL(list)) ? first :
		sao_reverse(cdr(list), cons(car(list), first));
	return rt;
}

int is_equal(object *x, object *y) {
	if (x == y)
		return 1;
	if (is_NIL(x) || is_NIL(y))
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
			return !libc(strcmp)(x->string, y->string);
		case type_native:
			return 0;
		case type_table:
			return 0;
	}
	return 0;
}
int not_false(object *x) {
	if (is_NIL(x) || is_equal(x, FALSE)) return 0;
	if (x->type == type_integer && x->integer == 0) return 0;
	return 1;
}
int is_tagged(object *cell, object *tag) {
	if (is_NIL(cell) || cell->type != type_list)
		return 0;
	return is_equal(car(cell), tag);
}
int length(object *exp) {
	if (is_NIL(exp)) return 0;
	return 1 + length(cdr(exp));
}
object *native_type(object *args) {
	return sao_make_symbol(types[car(args)->type]);
}
object *native_get_global(object *args) {
	//libc(assert)(is_NIL(args));
	return GLOBAL;
}
//object *native_set_global(object *args) {
//	GLOBAL = car(args);
//	return NIL;
//}
object *native_list(object *args) {
	return (args);
}
object *native_cons(object *args) {
	return cons(car(args), cadr(args));
}
object *native_car(object *args) {
#ifdef STRICT
	type_check(car(args), type_list);
#endif
	return caar(args);
}
object *native_cdr(object *args) {
#ifdef STRICT
	type_check(car(args), type_list);
#endif
	return cdar(args);
}
object *native_setcar(object *args) {
	type_check(car(args), type_list);
	(args->car->car = (cadr(args)));
	return NIL;
}
object *native_setcdr(object *args) {
	type_check(car(args), type_list);
	(args->car->cdr = (cadr(args)));
	return NIL;
}
object *native_is_NILq(object *args) {
	return is_EOL(car(args)) ? TRUE : FALSE;
}
object *native_pairq(object *args) {
	if (car(args)->type != type_list)
		return FALSE;
	return (atom(caar(args)) && atom(cdar(args))) ? TRUE : FALSE;
}
object *native_listq(object *args) {
	object *list;
	if (car(args)->type != type_list)
		return FALSE;
	for (list = car(args); !is_NIL(list); list = list->cdr)
		if (!is_NIL(list->cdr) && (list->cdr->type != type_list))
			return FALSE;
	return (car(args)->type == type_list && native_pairq(args) != TRUE) ? TRUE : FALSE;
}
object *native_atomq(object *sexp) {
	return atom(car(sexp)) ? TRUE : FALSE;
}

object *native_cmp(object *args) {
	if ((car(args)->type != type_integer) || (cadr(args)->type != type_integer))
		return FALSE;
	return (car(args)->integer == cadr(args)->integer) ? TRUE : FALSE;
}
object *native_eq(object *args) {
	return is_equal(car(args), cadr(args)) ? TRUE : FALSE;
}
object *native_equal(object *args) {
	if (is_equal(car(args), cadr(args)))
		return TRUE;
	if ((car(args)->type == type_list) && (cadr(args)->type == type_list)) {
		object *a, *b;
		a = car(args);
		b = cadr(args);
		while (!is_NIL(a) && !is_NIL(b)) {
			if (!is_equal(car(a), car(b)))
				return FALSE;
			a = cdr(a);
			b = cdr(b);
		}
		return TRUE;
	}
	if ((car(args)->type == type_table) && (cadr(args)->type == type_table)) {
		if (car(args)->vsize != cadr(args)->vsize) {
			return FALSE;
		}
		object **va = car(args)->table;
		object **vb = cadr(args)->table;
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
	type_check(car(list), type_integer);
	i64 total = car(list)->integer;
	list = cdr(list);
	while (!is_EOL(car(list))) {
		type_check(car(list), type_integer);
		total += car(list)->integer;
		list = cdr(list);
	}
	return make_integer(total);
}
object *native_sub(object *list) {
	type_check(car(list), type_integer);
	i64 total = car(list)->integer;
	list = cdr(list);
	while (!is_NIL(list)) {
		type_check(car(list), type_integer);
		total -= car(list)->integer;
		list = cdr(list);
	}
	return make_integer(total);
}
object *native_div(object *list) {
	type_check(car(list), type_integer);
	i64 total = car(list)->integer;
	list = cdr(list);
	while (!is_NIL(list)) {
		type_check(car(list), type_integer);
		total /= car(list)->integer;
		list = cdr(list);
	}
	return make_integer(total);
}
object *native_mul(object *list) {
	type_check(car(list), type_integer);
	i64 total = car(list)->integer;
	list = cdr(list);
	while (!is_NIL(list)) {
		type_check(car(list), type_integer);
		total *= car(list)->integer;
		list = cdr(list);
	}
	return make_integer(total);
}
object *native_gt(object *sexp) {
	type_check(car(sexp), type_integer);
	type_check(cadr(sexp), type_integer);
	return (car(sexp)->integer > cadr(sexp)->integer) ? TRUE : NIL;
}
object *native_lt(object *sexp) {
	type_check(car(sexp), type_integer);
	type_check(cadr(sexp), type_integer);
	return (car(sexp)->integer < cadr(sexp)->integer) ? TRUE : NIL;
}
object *native_exit(object *args) {
	//libc(assert)(is_NIL(args));
	libc(exit)(0);
	return NIL;
}
object *native_read(object *args) {
	//libc(assert)(is_NIL(args));
	FILEWrapper * fw = FILEWrapper_new((FILE*)libc(stdin));
	return sao_load_expr(fw);
}
object *native_vget(object *args) {
	type_check(car(args), type_table);
	type_check(cadr(args), type_integer);
	if (cadr(args)->integer >= car(args)->vsize)
		return NIL;
	return car(args)->table[cadr(args)->integer];
}
object *native_vset(object *args) {
	type_check(car(args), type_table);
	type_check(cadr(args), type_integer);
	if (is_NIL(caddr(args)))
		return NIL;
	if (cadr(args)->integer >= car(args)->vsize)
		return NIL;
	car(args)->table[cadr(args)->integer] = caddr(args);
	return sao_make_symbol("ok");
}
object *native_vec(object *args) {
	type_check(car(args), type_integer);
	return make_table(car(args)->integer);
}
object *sao_expand(object *var, object *val, object *ctx) {
	return cons(cons(var, val), ctx);
}
object *sao_lookup_var(object *var, object *ctx) {
	while (!is_NIL(ctx)) {
		object *frame = car(ctx);
		object *vars = car(frame);
		object *vals = cdr(frame);
		while (!is_NIL(vars)) {
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
	while (!is_NIL(ctx)) {
		object *frame = car(ctx);
		object *vars = car(frame);
		object *vals = cdr(frame);
		while (!is_NIL(vars)) {
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

object *define_variable(object *var, object *val, object *ctx)
{
	object *frame = car(ctx);
	object *vars = car(frame);
	object *vals = cdr(frame);
	while (!is_NIL(vars)) {
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
//char type_symbolS[] = "~!@#$%^&*_-+\\:,.<>|{}[]?=/";
char type_symbolS[] = "~!@#$%^&*_-+\\:.<>|{}[]?=/";
object *eval_list(object *exp, object *ctx) {
	if (is_NIL(exp)) return NIL;
	return cons(sao_eval(car(exp), ctx), eval_list(cdr(exp), ctx));
}
object *eval_sequence(object *exps, object *ctx) {
	if (is_NIL(cdr(exps))) return sao_eval(car(exps), ctx);
	sao_eval(car(exps), ctx);
	return eval_sequence(cdr(exps), ctx);
}
object *load_file(object *args) {
	object *exp;
	object *ret = 0;
	char *filename = car(args)->string;
#if defined(DEBUG)
	libc(printf)("Evaluating file %s\n", filename);
#endif
	FILE *fp = libc(fopen)(filename, "r");
	if (fp == 0) {
		libc(printf)("Error opening file %s\n", filename);
		return NIL;
	}
	FILEWrapper * fw = FILEWrapper_new(fp);
	for (;;) {
		exp = sao_load_expr(fw);
		if (is_NIL(exp))
			break;
		ret = sao_eval(exp, GLOBAL);
	}
	libc(fclose)(fp);
	return ret;
}
#if defined(DEBUG)
#include "debug_scheme.c"
#endif
#define PROFILE
static u64 ffi_microtime(void)
{
#ifdef _WIN32
	return (u64)(ffic("kernel32","GetTickCount")());
#else
	struct timeval {
		u64 tv_sec;
		u64 tv_usec;
	};
	struct timeval * tv = libc(calloc)(sizeof(struct timeval),sizeof(char));
	libc(gettimeofday)(tv, 0);
	return tv->tv_sec*1000 + (tv->tv_usec+500)/1000;
#endif
}
#define NEW_OBJECT(t,name) t*name=libc(calloc)(sizeof(t),sizeof(char));
FILEWrapper * FILEWrapper_new(FILE* fp)
{
	//FILEWrapper * fw = libc(calloc)(sizeof(FILEWrapper),sizeof(char));
	NEW_OBJECT(FILEWrapper,fw);
	fw->fp = fp;
	fw->current = fw->last = fw->first = (void*)0;
	fw->count = 0;
	return fw;
}

inline void FILEWrapper_feed_char(FILEWrapper* fw,int k){
	//printf("%d ",k);
	NEW_OBJECT(FileChar,fc);
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
		fc->prev = fw->last;//
		fw->last->next = fc;
		fw->last = fc;
	}
	fw->count++;
}
int depth = 0;
void FILEWrapper_feed_line(FILEWrapper* fw)
{
	ffi_func printf = libc(printf);
	ffi_func feof = libc(feof);
	if(feof(fw->fp)){
		return;
	}
	ffi_func fgets  = libc(fgets);
	ffi_func malloc = libc(malloc);
	ffi_func memset = libc(memset);
	ffi_func calloc = libc(calloc);
	ffi_func strlen = libc(strlen);
	int LINE_LEN = 1024;//TODO
	for(;;){
		char *line = calloc(LINE_LEN, sizeof(char));
		fgets(line,LINE_LEN,fw->fp);
		long strlen_line = (long) strlen(line);
		if(strlen_line>0){
			//printf("DEBUG strlen_line(%d):%s\n",strlen_line,line);
			for(int i=0;i<strlen_line;i++)
			{
				FILEWrapper_feed_char(fw,line[i]);
			}
			//FILEWrapper_feed_char(fw,'\n');
		}else{
			//printf("DEBUG feed char EOF\n");
			FILEWrapper_feed_char(fw,EOF);
			//return;
			break;
		}
	}
	//printf("after FILEWrapper_feed_char depth=%d\n",depth);
}

int sao_getc(FILEWrapper *fw) //like atok
{
	int c = 0;//pending
	FileChar * current = fw->current;
	if(current!=0){
		c = current->c;
		fw->current=current->next;
	}
	return c;
}
object *sao_print(object *args) {
	sao_out_expr(0, car(args));
	libc(printf)("\n");
	return NIL;
}
object *sao_read_symbol(FILEWrapper * fw, char start)
{
	char buf[128];
	buf[0] = start;
	int i = 1;
	while (sao_is_alphanumber(sao_peek(fw))
			|| libc(strchr)(type_symbolS, sao_peek(fw)))
	{
		if (i >= 128)
			error("Symbol name too long - maximum length 128 characters");
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
object *sao_make_null()
{
	object *ret = alloc();
	ret->type = type_null;
	return ret;
}
int sao_peek(FILEWrapper * fw)
{
	int c = 0;
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
		if (c == EOF)
			return NIL;
		if (i >= 256) error("String too long - maximum length 256 characters");
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
		if (c == '\n' || c == EOF) return;
	}
}
object *sao_load_expr(FILEWrapper * fw)
{
	ffi_func printf = libc(printf);
	int c;
	//TODO switch(){} for better loop
	for (;;) {
		object * theSymbol = NIL;
		c = sao_getc(fw);
		//printf("%d ",c);
		if(c==EOF){
			//printf("DEBUG return NULL for c==EOF, depth=(%d)\n",depth);
			return NULL;
		}
		if(c==0){
			printf("depth(%d)\n",depth);
			//return NIL;
			//continue;
			return NULL;
		}
		//switch(c){
		//	case 0: return NIL;
		//	case EOF: return NULL;
		//}
		if (c == '\n' || c == '\r' || c == ' ' || c == '\t'
				|| c == ',') { continue; }
		//printf("%d(%c) ",c,c);
		if (c == '\"') return sao_load_str(fw);
		if (c == ';' || c=='#' || (c=='/'&&'/'==sao_peek(fw))){
			sao_comment(fw);
			continue;
		}
		if (c == '\'') return cons(QUOTE, cons(sao_load_expr(fw), NIL));

		if (libc(isalpha)(c) || libc(strchr)(type_symbolS, c)){
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
			//depth--;
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
	ffi_func printf = libc(printf);
	if (str)
		printf("%s ", str);
	if (is_NIL(e)) {
		printf("'()");
		return;
	}
	switch (e->type) {
		case type_string:
			printf("\"%s\"", e->string);
			break;
		case type_symbol:
			printf("%s", e->string);
			break;
		case type_integer:
			printf("%ld", e->integer);
			break;
		case type_native:
			printf("<function>");
			break;
		case type_table:
			printf("<table %d>", e->vsize);
			break;
		case type_list:
			if (is_tagged(e, PROCEDURE)) {
				printf("<closure>");
				return;
			}
			int first=0;
			sao_out_expr(0, e->car);//out car
			printf("(");
			object **t = &e;
			while (!is_NIL(*t)) {
				if(first==0){ //skip
					first=1;
				}else{
					printf(" ");
					sao_out_expr(0, (*t)->car);
				}
				if (!is_NIL((*t)->cdr)) {
					if ((*t)->cdr->type == type_list) {
						t = &(*t)->cdr;
					} else {
						sao_out_expr(".", (*t)->cdr);
						break;
					}
				} else
					break;
			}
			printf(")");
	}
}
object *sao_eval(object *exp, object *ctx)
{
tail:
	if (is_NIL(exp) || exp == END_LIST) {
		return NIL;
	} else if (exp->type == type_integer || exp->type == type_string) {
		return exp;
	} else if (exp->type == type_symbol) {
		object *s = sao_lookup_var(exp, ctx);
#ifdef STRICT
		if (is_NIL(s)) {
			sao_out_expr("Unbound symbol:", exp);
			printf("\n");
		}
#endif
		return s;
	} else if (is_tagged(exp, QUOTE)) {
		return cadr(exp);
	} else if (is_tagged(exp, LAMBDA)) {
		return make_procedure(cadr(exp), cddr(exp), ctx);
	} else if (is_tagged(exp, DEFINE)) {
		if (atom(cadr(exp)))
			define_variable(cadr(exp), sao_eval(caddr(exp), ctx), ctx);
		else {
			object *closure =
				sao_eval(make_lambda(cdr(cadr(exp)), cddr(exp)), ctx);
			define_variable(car(cadr(exp)), closure, ctx);
		}
		return sao_make_symbol("ok");
	} else if (is_tagged(exp, BEGIN)) {
		object *args = cdr(exp);
		for (; !is_NIL(cdr(args)); args = cdr(args))
			sao_eval(car(args), ctx);
		exp = car(args);
		goto tail;
	} else if (is_tagged(exp, IF)) {
		object *predicate = sao_eval(cadr(exp), ctx);
		exp = (not_false(predicate)) ? caddr(exp) : cadddr(exp);
		goto tail;
	} else if (is_tagged(exp, sao_make_symbol("or"))) {
		object *predicate = sao_eval(cadr(exp), ctx);
		exp = (not_false(predicate)) ? caddr(exp) : cadddr(exp);
		goto tail;
	} else if (is_tagged(exp, sao_make_symbol("cond"))) {
		object *branch = cdr(exp);
		for (; !is_NIL(branch); branch = cdr(branch)) {
			if (is_tagged(car(branch), sao_make_symbol("else")) ||
					not_false(sao_eval(caar(branch), ctx))) {
				exp = cons(BEGIN, cdar(branch));
				goto tail;
			}
		}
		return NIL;
	} else if (is_tagged(exp, SET)) {
		if (atom(cadr(exp)))
			set_variable(cadr(exp), sao_eval(caddr(exp), ctx), ctx);
		else {
			object *closure =
				sao_eval(make_lambda(cdr(cadr(exp)), cddr(exp)), ctx);
			set_variable(car(cadr(exp)), closure, ctx);
		}
		return sao_make_symbol("ok");
	} else if (is_tagged(exp, LET)) {
		/* We go with the strategy of transforming let into a lambda function*/
		object **tmp;
		object *vars = NIL;
		object *vals = NIL;
		if (is_NIL(cadr(exp)))
			return NIL;
		/* NAMED LET */
		if (atom(cadr(exp))) {
			for (tmp = &exp->cdr->cdr->car; !is_NIL(*tmp); tmp = &(*tmp)->cdr) {
				vars = cons(caar(*tmp), vars);
				vals = cons(cadar(*tmp), vals);
			}
			/* Define the named let as a lambda function */
			define_variable(cadr(exp),
					sao_eval(make_lambda(vars, cdr(cddr(exp))),
						sao_expand(vars, vals, ctx)),
					ctx);
			/* Then evaluate the lambda function with the starting values */
			exp = cons(cadr(exp), vals);
			goto tail;
		}
		for (tmp = &exp->cdr->car; !is_NIL(*tmp); tmp = &(*tmp)->cdr) {
			vars = cons(caar(*tmp), vars);
			vals = cons(cadar(*tmp), vals);
		}
		exp = cons(make_lambda(vars, cddr(exp)), vals);
		goto tail;
	} else {
		/* procedure structure is as follows:
			 ('procedure, (parameters), (body), (ctx)) */
		object *proc = sao_eval(car(exp), ctx);
		object *args = eval_list(cdr(exp), ctx);
		if (is_NIL(proc)) {
#ifdef STRICT
			sao_out_expr("Invalid arguments to sao_eval:", exp);
			printf("\n");
#endif
			return NIL;
		}
		if (proc->type == type_native)
			return proc->native(args);
		if (is_tagged(proc, PROCEDURE)) {
			ctx = sao_expand(cadr(proc), args, cadddr(proc));
			exp = cons(BEGIN, caddr(proc)); /* procedure body */
			goto tail;
		}
	}
	sao_out_expr("Invalid arguments to sao_eval:", exp);
	libc(printf)("\n");
	return NIL;
}
void init_global()
{
	NIL = sao_make_null();

#define add_native(s, c) define_variable(sao_make_symbol(s), make_native(c), GLOBAL)
#define add_sym(s, c) do{c=sao_make_symbol(s);define_variable(c,c,GLOBAL);}while(0);
	GLOBAL = sao_expand(NIL, NIL, NIL);

	add_sym("#t", TRUE);
	add_sym("#f", FALSE);

	add_sym("quote", QUOTE);
	add_sym("lambda", LAMBDA);
	add_sym("procedure", PROCEDURE);

	//TODO merge three:
	add_sym("var", DEFINE);
	add_sym("let", LET);
	add_sym("set!", SET);

	add_sym("begin", BEGIN);//TODO remove or add END
	add_sym("if", IF);
	define_variable(sao_make_symbol("true"), TRUE, GLOBAL);
	define_variable(sao_make_symbol("false"), FALSE, GLOBAL);
	add_native("cons", native_cons);
	add_native("car", native_car);
	add_native("cdr", native_cdr);
	add_native("set-car!", native_setcar);
	add_native("set-cdr!", native_setcdr);
	add_native("list", native_list);
	add_native("list?", native_listq);
	add_native("null?", native_is_NILq);
	add_native("pair?", native_pairq);
	add_native("atom?", native_atomq);

	add_native("eq?", native_eq);
	add_native("equal?", native_equal);

	//TODO "!", native_not

	add_native("add", native_add);
	add_native("sub", native_sub);
	add_native("mul", native_mul);
	add_native("div", native_div);
	add_native("cmp", native_cmp);
	add_native("lt", native_lt);
	add_native("gt", native_gt);

	add_native("type", native_type);
	add_native("load", load_file);
	add_native("print", sao_print);
	//add_native("ffi", native_ffi);//TODO
	add_native("global", native_get_global);
	add_native("exit", native_exit);//TODO change to ffi
	//add_native("exec", native_exec);//TODO change to ffi
	add_native("read", native_read);//read from stdin (like scan)

	add_native("table", native_vec);
	add_native("table-get", native_vget);
	add_native("table-set", native_vset);
}

int main(int argc, char **argv)
{
	ffi_func printf = libc(printf);
	ffi_func feof = libc(feof);
	for(int i=1;i<argc;i++){
		//printf("%s",argv[i]);
		//object *obj = sao_load_expr(fw);//TODO wrap string to FILEWrapper !
		printf("argv[%d] %s\n",i,argv[i]);
	}

	//TODO fprintf(stderr,)
	ht_init(8192-1);
	init_global();//TODO make libsaodefault for the natives
	libc(setmode)(libc(fileno)(libc(stdin)),0x8000/*O_BINARY*/);
	FILEWrapper * fw = FILEWrapper_new((FILE*)libc(stdin));
	for(;;){
		FILEWrapper_feed_line(fw);
		if(depth>0){
			printf("depth=%d \n",depth);
		//	continue;//feed more...
		}
		//FILEWrapper_feed_line(fw);
		//FILEWrapper_feed_line(fw);
		//FILEWrapper_feed_line(fw);
		//FILEWrapper_feed_line(fw);
		//FILEWrapper_feed_line(fw);
		object *obj = sao_load_expr(fw);
		if(obj==NULL){
			//printf("DEBUG NULL to exit\n");
			break;
		}
		if (!is_NIL(obj)) {
#if defined(PROFILE)
			printf("%lu: ",ffi_microtime());
#endif
			sao_out_expr("<=", obj);
			printf("\n");
			object *exp = sao_eval(obj, GLOBAL);
			if (!is_NIL(exp)) {
#if defined(PROFILE)
				printf("%lu: ",ffi_microtime());
#endif
				//TODO if "-i"
				sao_out_expr("=>", exp);
				printf("\n");
			}else{
				//sao_out_expr("null??",exp);
				//printf("\n");
			}
		}else{
			//printf(" DEBUG more ? \n");
		}
	}
	return 0;
}
