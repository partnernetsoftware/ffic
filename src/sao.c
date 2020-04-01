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
#define NEW_OBJECT(t,name) t*name=libc(calloc)(sizeof(t),1);
#define DEFINE_ENUM_LIBC(n) libc_##n,
#define LIBC_FUNC_LIST fprintf,stderr,exit,malloc,memset,strdup,strcmp,printf,\
	stdin,putc,getc,isalnum,strchr,isdigit,isalpha,fopen,fread,fgets,fclose,feof,\
	usleep,msleep,sleep,fputc,setmode,fileno,gettimeofday,calloc,stdout,strlen,\
	fflush,free,NULL
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
#define is_NIL(x) ((x)==NULL||(x)==NIL)
#define is_EOL(x) (is_NIL((x)) || (x) == END_LIST)
#define error(x) do{libc(fprintf)(libc(stderr),"%s\n",x);libc(exit)(1);}while(0)
typedef enum {
	stream_FILE,//FILE* fp
	stream_char,//char* string
} stream_t;
char *types[] = {"integer","symbol","string","list","native","table"};
typedef enum {
type_integer,type_symbol,type_string,type_list,type_native,type_table
} type_t;
typedef struct _sao_object sao_object;
typedef sao_object *(*native_t)(sao_object *);
struct _sao_object {
	type_t type;
	union {
		long integer;
		char *string;
		struct {
			sao_object **table;
			int vsize;
		};
		struct {
			sao_object *car;
			sao_object *cdr;
		};
		native_t native;
	};
} __attribute__((packed));

sao_object *NIL       = NULL;
sao_object *END_LIST  = NULL;

sao_object *GLOBAL    = NULL;
sao_object *TRUE      = NULL;
sao_object *FALSE     = NULL;
sao_object *QUOTE     = NULL;
sao_object *SET       = NULL;
sao_object *LET       = NULL;
sao_object *DEFINE    = NULL;
sao_object *PROCEDURE = NULL;
sao_object *IF        = NULL;
sao_object *LAMBDA    = NULL;
sao_object *BEGIN     = NULL;

int is_tagged(sao_object *cell, sao_object *tag);
sao_object *cons(sao_object *car, sao_object *cdr);
sao_object *native_load_file(sao_object *args);
sao_object *cdr(sao_object *);
sao_object *car(sao_object *);
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
sao_object *sao_lookup_var(sao_object *var, sao_object *ctx);
int sao_type_check(const char *func, sao_object *obj, type_t type);
typedef struct _FileChar {
	int c;
	struct _FileChar * ptr_prev;
	struct _FileChar * ptr_next;
} FileChar;
typedef struct {
	FILE* fp;
	FileChar * ptr_start;//TODO for gc(start to head->ptr_prev)
	FileChar * ptr_head;
	FileChar * ptr_last;
	long rest;
	long total;//TODO for gc()
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
inline long sao_is_digit(int c) { return (long) libc(isdigit)(c); }
inline long sao_is_alpha(int c) { return (long) libc(isalpha)(c); }
inline long sao_is_alphanumber(int c) { return (long) libc(isalnum)(c); }
////////////////////////////////////////////////////////////////////////
void ht_insert(sao_object *key_obj);
struct htable { sao_object *key; };
static struct htable *gHTable = 0;
static int gHTable_len = 0;//default
//#define TOK_HASH_FUNC(h, c) ((h) + ((h) << 5) + ((h) >> 27) + (c))
static long ht_hash(const char *s, int ht_len) {
	long h = 0;
	char *u = (char *) s;
	while (*u) { h = (h * 256 + (*u)) % ht_len; u++; }
	return h;
}
int ht_resize(int newsize){
	//struct htable * newTable = libc(calloc)(sizeof(struct htable) * newsize);
	struct htable * newTable = libc(malloc)(sizeof(struct htable) * newsize);
	libc(memset)(newTable, 0, sizeof(struct htable) * newsize);
	for(int i=0;i<gHTable_len;i++){
		if (NULL!=gHTable[i].key) {
			int h = ht_hash(gHTable[i].key->string, newsize);
			if(NULL != newTable[h].key){
				//TODO add debug to see why
				//error("!!! newTable still full ??\n");
				libc(printf)("DEBUG !!! newTable still full ??\n");
			}
			newTable[h].key = gHTable[i].key;
			//libc(free)(gHTable[i]);//TODO
		}
	}
	//libc(free)(gHTable);//TODO
	gHTable = newTable;
	gHTable_len = newsize;
	return newsize;
}
void ht_insert(sao_object *key_obj)
{
	long h = ht_hash(key_obj->string, gHTable_len);
	if(NULL != gHTable[h].key && NULL!=gHTable[h].key->string){
		//error("symbol table full.\n");
		int newsize = 2*(gHTable_len+1)-1 ;
		ht_resize( newsize );
		ht_insert( key_obj );
		//gHTable[h].key = key_obj;
		return;
	}
	gHTable[h].key = key_obj;
}

sao_object *ht_lookup(char *s) {
	long h = ht_hash(s, gHTable_len);
	return gHTable[h].key;
}
sao_object *sao_alloc() {
	NEW_OBJECT(sao_object,ret);
	//TODO gc()
	return ret;
}
int sao_type_check(const char *func, sao_object *obj, type_t type)
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
sao_object *make_table(int size) {
	sao_object *ret = sao_alloc();
	ret->type = type_table;
	ret->table = libc(malloc)(sizeof(sao_object *) * size);
	ret->vsize = size;
	libc(memset)(ret->table, 0, size);
	return ret;
}
sao_object *sao_make_symbol(char *s) {
	sao_object *ret = ht_lookup(s);
	if (is_NIL(ret)) {
		ret = sao_alloc();
		ret->type = type_symbol;
		ret->string = libc(strdup)(s);
		ht_insert(ret);
	}else{
		if(!libc(strcmp)(ret->string,s)){
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
	ret->integer = x;
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
inline sao_object *cons(sao_object *car, sao_object *cdr) {
	sao_object *ret = sao_alloc();
	ret->type = type_list;
	ret->car = car;
	ret->cdr = cdr;
	return ret;
}
inline sao_object *car(sao_object *cell) {
	if (is_NIL(cell) || cell->type != type_list) return NIL;
	return cell->car;
}
inline sao_object *cdr(sao_object *cell) {
	if (is_NIL(cell) || cell->type != type_list) return NIL;
	return cell->cdr;
}
sao_object *append(sao_object *l1, sao_object *l2) {
	if (is_NIL(l1)) return l2;
	return cons(car(l1), append(cdr(l1), l2));
}

sao_object * sao_reverse(sao_object *list, sao_object *first) {
	sao_object * rt = (is_NIL(list)) ? first :
		sao_reverse(cdr(list), cons(car(list), first));
	return rt;
}

int is_equal(sao_object *x, sao_object *y) {
	if (x == y)
		return 1;
	if (is_NIL(x) || is_NIL(y))
		return 0;
	if (x->type != y->type)
		return 0;
	switch (x->type) {
		case type_list: return 0;
		case type_integer: return x->integer == y->integer;
		case type_symbol:
		case type_string: return !libc(strcmp)(x->string, y->string);
		case type_native: return 0;
		case type_table: return 0;
	}
	return 0;
}
int not_false(sao_object *x) {
	if (is_NIL(x) || is_equal(x, FALSE)) return 0;
	if (x->type == type_integer && x->integer == 0) return 0;
	return 1;
}
int is_tagged(sao_object *cell, sao_object *tag)
{
	if (is_NIL(cell) || cell->type != type_list) return 0;
	return is_equal(car(cell), tag);
}
int sao_length(sao_object *exp) {
	if (is_NIL(exp)) return 0;
	return 1 + sao_length(cdr(exp));
}
sao_object *native_type(sao_object *args) {
	return sao_make_symbol(types[car(args)->type]);
}
sao_object *native_global(sao_object *args) {
	return GLOBAL;
}
//sao_object *native_set_global(sao_object *args) {
//	GLOBAL = car(args);
//	return NIL;
//}
sao_object *native_list(sao_object *args) {
	return (args);
}
sao_object *native_cons(sao_object *args) {
	return cons(car(args), cadr(args));
}
sao_object *native_car(sao_object *args) {
#ifdef STRICT
	type_check(car(args), type_list);
#endif
	return caar(args);
}
sao_object *native_cdr(sao_object *args) {
#ifdef STRICT
	type_check(car(args), type_list);
#endif
	return cdar(args);
}
sao_object *native_setcar(sao_object *args) {
	type_check(car(args), type_list);
	(args->car->car = (cadr(args)));
	return NIL;
}
sao_object *native_setcdr(sao_object *args) {
	type_check(car(args), type_list);
	(args->car->cdr = (cadr(args)));
	return NIL;
}
sao_object *native_is_null(sao_object *args) {
	return is_EOL(car(args)) ? TRUE : FALSE;
}
sao_object *native_pairq(sao_object *args) {
	if (car(args)->type != type_list)
		return FALSE;
	return (atom(caar(args)) && atom(cdar(args))) ? TRUE : FALSE;
}
sao_object *native_is_list(sao_object *args) {
	sao_object *list;
	if (car(args)->type != type_list)
		return FALSE;
	for (list = car(args); !is_NIL(list); list = list->cdr)
		if (!is_NIL(list->cdr) && (list->cdr->type != type_list))
			return FALSE;
	return (car(args)->type == type_list && native_pairq(args) != TRUE) ? TRUE : FALSE;
}
sao_object *native_atomq(sao_object *sexp) {
	return atom(car(sexp)) ? TRUE : FALSE;
}

sao_object *native_cmp(sao_object *args) {
	if ((car(args)->type != type_integer) || (cadr(args)->type != type_integer))
		return FALSE;
	return (car(args)->integer == cadr(args)->integer) ? TRUE : FALSE;
}
sao_object *native_eq(sao_object *args) {
	return is_equal(car(args), cadr(args)) ? TRUE : FALSE;
}
sao_object *native_equal(sao_object *args) {
	if (is_equal(car(args), cadr(args)))
		return TRUE;
	if ((car(args)->type == type_list) && (cadr(args)->type == type_list)) {
		sao_object *a, *b;
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
		sao_object **va = car(args)->table;
		sao_object **vb = cadr(args)->table;
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
sao_object *native_add(sao_object *list) {
	type_check(car(list), type_integer);
	long total = car(list)->integer;
	list = cdr(list);
	while (!is_EOL(car(list)))
	{
		type_check(car(list), type_integer);
		total += car(list)->integer;
		list = cdr(list);
	}
	return make_integer(total);
}
sao_object *native_sub(sao_object *list) {
	type_check(car(list), type_integer);
	long total = car(list)->integer;
	list = cdr(list);
	while (!is_NIL(list)) {
		type_check(car(list), type_integer);
		total -= car(list)->integer;
		list = cdr(list);
	}
	return make_integer(total);
}
sao_object *native_div(sao_object *list) {
	type_check(car(list), type_integer);
	long total = car(list)->integer;
	list = cdr(list);
	while (!is_NIL(list)) {
		type_check(car(list), type_integer);
		total /= car(list)->integer;
		list = cdr(list);
	}
	return make_integer(total);
}
sao_object *native_mul(sao_object *list) {
	type_check(car(list), type_integer);
	long total = car(list)->integer;
	list = cdr(list);
	while (!is_NIL(list)) {
		type_check(car(list), type_integer);
		total *= car(list)->integer;
		list = cdr(list);
	}
	return make_integer(total);
}
sao_object *native_gt(sao_object *sexp) {
	type_check(car(sexp), type_integer);
	type_check(cadr(sexp), type_integer);
	return (car(sexp)->integer > cadr(sexp)->integer) ? TRUE : NIL;
}
sao_object *native_lt(sao_object *sexp) {
	type_check(car(sexp), type_integer);
	type_check(cadr(sexp), type_integer);
	return (car(sexp)->integer < cadr(sexp)->integer) ? TRUE : NIL;
}
sao_object * native_ffi(sao_object *args) {
	//libc(printf)("ffi todo");
    //int l = sao_length(args);
	sao_out_expr("ffi todo",args);
	return NIL;
}
sao_object *native_exit(sao_object *args) {
	libc(exit)(0);
	return NIL;
}
sao_object *native_read(sao_object *args) {
	SaoStream * fw = SaoStream_new(libc(stdin),stream_FILE);
	return sao_load_expr(fw);
}
sao_object *native_vget(sao_object *args) {
	type_check(car(args), type_table);
	type_check(cadr(args), type_integer);
	if (cadr(args)->integer >= car(args)->vsize)
		return NIL;
	return car(args)->table[cadr(args)->integer];
}
sao_object *native_vset(sao_object *args) {
	type_check(car(args), type_table);
	type_check(cadr(args), type_integer);
	if (is_NIL(caddr(args)))
		return NIL;
	if (cadr(args)->integer >= car(args)->vsize)
		return NIL;
	car(args)->table[cadr(args)->integer] = caddr(args);
	return sao_make_symbol("ok");
}
sao_object *native_vec(sao_object *args) {
	type_check(car(args), type_integer);
	return make_table(car(args)->integer);
}

sao_object *sao_expand(sao_object *var, sao_object *val, sao_object *ctx) {
	return cons(cons(var, val), ctx);
}

sao_object *sao_lookup_var(sao_object *var, sao_object *ctx) {
	while (!is_NIL(ctx)) {
		sao_object *frame = car(ctx);
		sao_object *vars = car(frame);
		sao_object *vals = cdr(frame);
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
void set_variable(sao_object *var, sao_object *val, sao_object *ctx) {
	while (!is_NIL(ctx)) {
		sao_object *frame = car(ctx);
		sao_object *vars = car(frame);
		sao_object *vals = cdr(frame);
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
sao_object *define_variable(sao_object *var, sao_object *val, sao_object *ctx)
{
	sao_object *frame = car(ctx);
	sao_object *vars = car(frame);
	sao_object *vals = cdr(frame);
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
char type_symbolS[] = "~!@#$%^&*_-+\\:.<>|{}[]?=/";
sao_object *eval_list(sao_object *exp, sao_object *ctx) {
	if (is_NIL(exp)) return NIL;
	return cons(sao_eval(car(exp), ctx), eval_list(cdr(exp), ctx));
}
sao_object *eval_sequence(sao_object *exps, sao_object *ctx) {
	if (is_NIL(cdr(exps))) return sao_eval(car(exps), ctx);
	sao_eval(car(exps), ctx);
	return eval_sequence(cdr(exps), ctx);
}
sao_object *native_load_file(sao_object *args) {
	sao_object *exp;
	sao_object *ret = 0;
	char *filename = car(args)->string;
#if defined(DEBUG)
	libc(printf)("Evaluating file %s\n", filename);
#endif
	FILE *fp = libc(fopen)(filename, "r");
	if (fp == 0) {
		libc(printf)("Error opening file %s\n", filename);
		return NIL;
	}
	SaoStream * fw = SaoStream_new(fp,stream_FILE);
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
static long ffi_microtime(void)
{
#ifdef _WIN32
	return (long)(ffic("kernel32","GetTickCount")());
#else
	struct timeval {
		long tv_sec;
		long tv_usec;
	};
	struct timeval * tv = libc(calloc)(sizeof(struct timeval),sizeof(char));
	libc(gettimeofday)(tv, 0);
	return tv->tv_sec*1000 + (tv->tv_usec+500)/1000;
#endif
}
SaoStream * SaoStream_new(void* fp,stream_t stt)
{
	if(stt==stream_char){
		libc(printf)("TODO stream_char");
		return NULL;
	}else{
		//SaoStream * fw = libc(calloc)(sizeof(SaoStream),sizeof(char));
		NEW_OBJECT(SaoStream,fw);
		fw->fp = (FILE*) fp;
		fw->ptr_head = fw->ptr_last = fw->ptr_start = NULL;
		fw->rest = 0;
		return fw;
	}
}
int sao_deq_c(SaoStream *fw)
{
	int c = -2;//
	FileChar * ptr_head = fw->ptr_head;
	if(ptr_head!=NULL){
		c = ptr_head->c;
		fw->ptr_head=ptr_head->ptr_next;
		fw->rest --;
	}
	return c;
}

int sao_enq_c(SaoStream* fw,int k){
	NEW_OBJECT(FileChar,fc);
	fc->c = k; 
	fc->ptr_prev= fw->ptr_last;
	if(NULL==fw->ptr_start){
		fw->ptr_start = fc;
	}
	if(NULL==fw->ptr_head){
		fw->ptr_head = fc;
	}
	if(NULL!=fw->ptr_last){
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
	ffi_func printf = libc(printf);
	ffi_func feof = libc(feof);
	do{
		if(feof(fw->fp)){ break; }
		ffi_func fgets  = libc(fgets);
		ffi_func malloc = libc(malloc);
		ffi_func memset = libc(memset);
		ffi_func calloc = libc(calloc);
		ffi_func strlen = libc(strlen);
		int LINE_LEN = 1024;//TODO
		char *line = calloc(LINE_LEN, sizeof(char));
		fgets(line,LINE_LEN,fw->fp);
		long strlen_line = (long) strlen(line);
		if(strlen_line>0){
			for(int i=0;i<strlen_line;i++)
			{
				if('\n'==sao_enq_c(fw,line[i])){
					line_num++;
				}
			}
		}else{
			sao_enq_c(fw,EOF);
		}
	}while(0);
	return line_num;
}

sao_object *native_print(sao_object *args) {
	sao_out_expr(0, car(args));
	libc(printf)("\n");
	return NIL;
}
sao_object *sao_read_symbol(SaoStream * fw, char start)
{
	char buf[128];
	buf[0] = start;
	int i = 1;
	while (sao_is_alphanumber(sao_peek(fw))
			|| libc(strchr)(type_symbolS, sao_peek(fw)))
	{
		if (i >= 128)
			error("Symbol name too long - maximum length 128 characters");
		buf[i++] = sao_deq_c(fw);
	}
	buf[i] = '\0';
	return sao_make_symbol(buf);
}
sao_object *sao_make_integer(int x)
{
	sao_object *ret = sao_alloc();
	ret->type = type_integer;
	ret->integer = x;
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
		//if(obj==NULL) return NULL;//break the error
		if (obj == END_LIST)
			return sao_reverse(cell, END_LIST);
		cell = cons(obj, cell);
	}
	return END_LIST;
}
inline sao_object *sao_load_str(SaoStream * fw)
{
	char buf[256];
	int i = 0;
	int c;
	while ((c = sao_deq_c(fw)) != '\"') {
		if (c == EOF) return NIL;
		if (i >= 256) error("String too long - maximum length 256 characters");
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
		if (c == '\n' || c == EOF) return;
	}
}
sao_object *sao_load_expr(SaoStream * fw)
{
	ffi_func printf = libc(printf);
	int c;
	//TODO switch(){} for better loop
	for (;;) {
		sao_object * theSymbol = NIL;
		c = sao_deq_c(fw);

		if(c==EOF){
			//printf("\nTMP DEBUG return NULL for c==EOF, depth=(%d)\n",depth);
			return NULL;
		}

		if(c==-2){
			//TODO if mode REPL
//#if defined(REPL)
			//if(depth>0) printf("%d> ",depth);
			//else printf("> ");
//#endif
			sao_read_line(fw);
			continue;
		}
		//printf("%d ",c);
		//switch(c){
		//	case 0: return NIL;
		//	case EOF: return NULL;
		//}
		if (c == '\n' || c == '\r' || c == ' ' || c == '\t'
				|| c == 0
				|| c == ',') { continue; }
		//printf("%d(%c) ",c,c);
		if (c == '\"') return sao_load_str(fw);
		if (c == ';' || c=='#' || (c=='/'&&'/'==sao_peek(fw))){
			sao_comment(fw);
			continue;
		}
		if (c == '\''){
			sao_object * child = sao_load_expr(fw);
			//if(NULL==child){
			//	printf("DEBUG child=sao_load_expr(fw) is NULL\n");
			//	return NULL;
			//}
			return cons(QUOTE, cons(child, NIL));
		}

		if (libc(isalpha)(c) || libc(strchr)(type_symbolS, c)){
			theSymbol = sao_read_symbol(fw,c);
			while(' '==sao_peek(fw)) c = sao_deq_c(fw);//TODO support \t later
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
	ffi_func printf = libc(printf);
	if (str) printf("%s ", str);
	if (is_NIL(e)) { printf("'()"); return; }
	switch (e->type) {
		case type_string: printf("\"%s\"", e->string); break;
		case type_symbol: printf("%s", e->string); break;
		case type_integer: printf("%ld", e->integer); break;
		case type_native: printf("<function>"); break;
		case type_table: printf("<table %d>", e->vsize); break;
		case type_list:
			if (is_tagged(e, PROCEDURE)) {
				printf("<closure>");
				return;
			}
			//TODO bug, if no leading should change back to pure list as (...)
			int skip=0;
			sao_object **t = &e;
			if (!is_NIL(*t)) {
				if(type_symbol == e->car->type){
					sao_out_expr(0, e->car);//out car
					skip=1;
				}
			}
			printf("(");
			while (!is_NIL(*t)) {
				//sao_out_expr(0, (*t)->car);
				//printf(" ");
				if(skip==1){
					skip=0;
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
sao_object *sao_eval(sao_object *exp, sao_object *ctx)
{
tail:
	if (is_NIL(exp) || exp == END_LIST) {
		return NIL;
	} else if (exp->type == type_integer || exp->type == type_string) {
		return exp;
	} else if (exp->type == type_symbol) {
		sao_object *s = sao_lookup_var(exp, ctx);
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
			sao_object *closure =
				sao_eval(make_lambda(cdr(cadr(exp)), cddr(exp)), ctx);
			define_variable(car(cadr(exp)), closure, ctx);
		}
		return sao_make_symbol("ok");
	} else if (is_tagged(exp, BEGIN)) {
		sao_object *args = cdr(exp);
		for (; !is_NIL(cdr(args)); args = cdr(args))
			sao_eval(car(args), ctx);
		exp = car(args);
		goto tail;
	} else if (is_tagged(exp, IF)) {
		sao_object *predicate = sao_eval(cadr(exp), ctx);
		exp = (not_false(predicate)) ? caddr(exp) : cadddr(exp);
		goto tail;
	} else if (is_tagged(exp, sao_make_symbol("or"))) {
		sao_object *predicate = sao_eval(cadr(exp), ctx);
		exp = (not_false(predicate)) ? caddr(exp) : cadddr(exp);
		goto tail;
	} else if (is_tagged(exp, sao_make_symbol("cond"))) {
		sao_object *branch = cdr(exp);
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
			sao_object *closure =
				sao_eval(make_lambda(cdr(cadr(exp)), cddr(exp)), ctx);
			set_variable(car(cadr(exp)), closure, ctx);
		}
		return sao_make_symbol("ok");
	} else if (is_tagged(exp, LET)) {
		/* We go with the strategy of transforming let into a lambda function*/
		sao_object **tmp;
		sao_object *vars = NIL;
		sao_object *vals = NIL;
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
		sao_object *proc = sao_eval(car(exp), ctx);
		sao_object *args = eval_list(cdr(exp), ctx);
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
sao_object * init_global()
{
	//END_LIST = sao_make_type(type_list);
#define add_native(s, c) define_variable(sao_make_symbol(s), make_native(c), GLOBAL)
#define add_sym(s, c) do{c=sao_make_symbol(s);define_variable(c,c,GLOBAL);}while(0);
	GLOBAL = sao_expand(NIL, NIL, NIL);
	add_sym("true", TRUE);
	add_sym("false", FALSE);
	define_variable(sao_make_symbol("true"), TRUE, GLOBAL);
	define_variable(sao_make_symbol("false"), FALSE, GLOBAL);
	add_sym("quote", QUOTE);
	add_sym("lambda", LAMBDA);
	add_sym("procedure", PROCEDURE);
	add_sym("var", DEFINE);//TODO to merge three(DEFINE/LET/PROCEDURE ?)
	add_sym("let", LET);
	add_sym("set!", SET);
	add_sym("begin", BEGIN);//TODO remove or add END
	add_sym("if", IF);

	add_native("ffi", native_ffi);

	add_native("exit", native_exit);
	add_native("global", native_global);

	add_native("cons", native_cons);
	add_native("car", native_car);
	add_native("cdr", native_cdr);
	add_native("set-car!", native_setcar);
	add_native("set-cdr!", native_setcdr);
	add_native("list", native_list);
	add_native("list?", native_is_list);
	add_native("null?", native_is_null);
	add_native("pair?", native_pairq);
	add_native("atom?", native_atomq);
	add_native("eq?", native_eq);
	add_native("equal?", native_equal);
	//TODO "not", native_not
	add_native("add", native_add);
	add_native("sub", native_sub);
	add_native("mul", native_mul);
	add_native("div", native_div);
	add_native("cmp", native_cmp);
	add_native("lt", native_lt);
	add_native("gt", native_gt);
	add_native("type", native_type);
	add_native("load", native_load_file);
	add_native("print", native_print);
	//add_native("ffi", native_ffi);//TODO
	//add_native("exec", native_exec);//TODO change to ffi
	add_native("read", native_read);//read from stdin (like scan)
	add_native("table", native_vec);
	add_native("table-get", native_vget);
	add_native("table-set", native_vset);

	return GLOBAL;
}

//TODO upgrade SaoStream to SaoStream to support string
sao_object * sao_parse( SaoStream * fw, int do_eval )
{
	sao_read_line(fw);
	ffi_func printf = libc(printf);
	
	sao_object *rt = NIL;
	for(;;){
		sao_object *obj = sao_load_expr(fw);
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

			sao_object *rt = sao_eval(obj, GLOBAL);
			if (do_eval){
				if ( !is_NIL(rt)) {
#if defined(PROFILE)
					printf("%lu: ",ffi_microtime());
#endif
					//TODO if "-i"
					sao_out_expr("=>", rt);
					printf("\n");
				}else{
#if defined(DEBUG)
					sao_out_expr("nothing after eval: ",obj);
#endif
					printf("\n");
				}
			}else{
				return obj;
			}
		}else{
			printf("DEBUG TODO depth=%d \n",depth);
		}
	}
	return rt;
}
int main(int argc, char **argv)
{
	ht_resize(8192-1);
	ffi_func printf = libc(printf);
	//TODO sao_load_expr( SaoStreamWrapper ( join(argc, argv) ));
	for(int i=1;i<argc;i++){
		//printf("%s",argv[i]);
		printf("argv[%d] %s\n",i,argv[i]);
	}
	init_global();//ffic("sao","init");//TODO libsao
	libc(setmode)(libc(fileno)(libc(stdin)),0x8000/*O_BINARY*/);
	SaoStream * fw = SaoStream_new(libc(stdin),stream_FILE);
	sao_object * result = sao_parse( fw, 1/*eval*/ );
	//printf("gHTable_len=%d\n",gHTable_len);
	return 0;
}

/* QUICK TODO
 * * printf=>sao_out
 * * +sao_err()
 * * string stream
 * * options in sao
 * * fix empty list leading....
 * * macro the types: (enum=>enum_name)
 */
