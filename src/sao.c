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
#define SAO_WHILE1(macro, value1,value, ...) \
	SAO_WHEN(SAO_NOT(SAO_IS_PAREN(value ()))) \
( SAO_OBSTRUCT(macro) (value1,value) SAO_OBSTRUCT(SAO_WHILE_INDIRECT1) () (macro, value1,__VA_ARGS__) \
)
#define SAO_WHILE_INDIRECT1() SAO_WHILE1
#define SAO_ITR(mmm,qqq,...) SAO_EVAL( SAO_WHILE( mmm,qqq,__VA_ARGS__ ) )
#define SAO_ITR1(mmm,mm1,qqq,...) SAO_EVAL( SAO_WHILE1( mmm,mm1,qqq,__VA_ARGS__) )
//////////////////////////////////////////////////////////////////////////////
#define DEFINE_ENUM_LIBC(n) libc_##n,
#define LIBC_FUNC_LIST fprintf,stderr,malloc,memset,strdup,strcmp,printf,\
	stdin,putc,getc,isalnum,strchr,isdigit,isalpha,fopen,fread,fgets,fclose,feof,\
	usleep,msleep,sleep,fputc,setmode,fileno,stdout,strlen,\
	fflush,free,microtime,exit
enum { SAO_ITR(DEFINE_ENUM_LIBC,SAO_EXPAND(LIBC_FUNC_LIST)) };
void* (*libc_a[libc_exit+1])();//buffer for libc
#define libc(f) libcbf(libc_##f,#f)
#include "ffic.h" //github.com/partnernetsoftware/ffic/blob/master/src/ffic.h
ffic_func libcbf(int fi,const char* fn);
ffic_func libcbf(int fi,const char* fn){ return libc_a[fi]?libc_a[fi]:(libc_a[fi]=ffic("c",fn)); }
#define SAO_NULL 0 // same as ((void*)0)
#define SAO_EOF (-1)
#define define_enum_name(n) #n,
#define define_enum_item(p,v) p##_##v,
#define define_enum(n, ...) typedef enum { SAO_ITR1(define_enum_item,n,__VA_ARGS__) } n##_t;
#define define_map_arr(n, ...) char* n##_names[] = { SAO_ITR(define_enum_name,__VA_ARGS__) };
#define define_map(n, ...) define_enum(n,__VA_ARGS__) define_map_arr(n,__VA_ARGS__)
#define SAO_NEW(t,...) sao_calloc( sizeof(t) SAO_IF(SAO_IS_PAREN(__VA_ARGS__ ()))(SAO_EAT(),*__VA_ARGS__) )
#define NEW_OBJECT(t,n,...) t*n=SAO_NEW(t,__VA_ARGS__);
//#define is_NIL(x) ((x)==SAO_NULL||(x)==NIL)
#define is_NIL(x) (!x)
#define sao_stderr(...) libc(fprintf)(libc(stderr),__VA_ARGS__)
#define sao_stdout(...) libc(printf)(__VA_ARGS__)
#define sao_error(x) do{sao_stderr("%s\n",x);libc(exit)(1);}while(0)
#define sao_warn(...) do{sao_stderr(__VA_ARGS__);}while(0)
#define caar(x) (car(car((x)))) //head of head
#define cdar(x) (cdr(car((x)))) //rest of head
#define cadr(x) (car(cdr((x)))) //head of rest
#define cddr(x) (cdr(cdr((x)))) //rest of rest
#define cadar(x) (car(cdr(car((x)))))
#define caddr(x) (car(cdr(cdr((x)))))
#define cdddr(x) (cdr(cdr(cdr((x)))))
#define cdadr(x) (cdr(car(cdr((x)))))
#define cadddr(x) (car(cdr(cdr(cdr((x))))))
#define atom(x) (!is_NIL(x) && (x)->type != type_list)
#define SAO_CHECK_TYPE(x, t) (sao_type_check(__func__, x, t))
//#define car(x) ((is_NIL(x)||x->type!=type_list)?NIL:x->car)
//////////////////////////////////////////////////////////////////////////////
define_map(stream, file,char);
//define_map(type,   integer,symbol,string,list,native,vector);
define_map(type,   list,integer,symbol,string,native,vector);
define_map(ctype,  long,double,any);
typedef struct _sao_object sao_object;
typedef sao_object *(*native_t)(sao_object *);
struct _sao_object {
	type_t type;
	int gc;//TODO
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
		double _double;//TODO maths
		//TODO BigNumber * _bignum;
		native_t native;
	};
} __attribute__((packed));
#define define_sao_object(n) sao_object*n=SAO_NULL;
SAO_ITR(define_sao_object, NIL,GLOBAL,TRUE,FALSE,QUOTE,SET,LET,DEFINE,PROCEDURE,IF,LAMBDA,BEGIN,ERROR);
int is_tagged(sao_object *cell, sao_object *tag);
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
	char* pos;//for stream_char only
	FileChar * ptr_start;
	FileChar * ptr_head;
	FileChar * ptr_last;
	//long _rest;//TODO for profiling
	//long _total;//TODO for gc()
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
long sao_is_digit(int c) { return (long) libc(isdigit)(c); }
long sao_is_alpha(int c) { return (long) libc(isalpha)(c); }
long sao_is_alphanumber(int c) { return (long) libc(isalnum)(c); }
void* sao_calloc(long _sizeof){return libc(memset)(libc(malloc)(_sizeof),0,_sizeof);}
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
	struct htable * newTable = SAO_NEW(struct htable,newsize);
	for(int i=0;i<gHTable_len;i++){
		if (SAO_NULL!=gHTable[i].key) {
			int h = ht_hash(gHTable[i].key->_string, newsize);
			if(SAO_NULL != newTable[h].key){
				//TODO add debug to see why
				//sao_error("!!! newTable still full ??\n");
				sao_stdout("DEBUG !!! newTable still full ??\n");
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
	long h = ht_hash(key_obj->_string, gHTable_len);
	if(SAO_NULL != gHTable[h].key && SAO_NULL!=gHTable[h].key->_string){
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
sao_object *sao_alloc(type_t type) {
	NEW_OBJECT(sao_object,ret);//TODO gc()
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
	return (is_NIL(cell) || cell->type != type_list) ? NIL : cell->car;
}
sao_object *cdr(sao_object *cell) {
	return (is_NIL(cell) || cell->type != type_list) ? NIL : cell->cdr;
}
sao_object *append(sao_object *l1, sao_object *l2) {
	if (is_NIL(l1)) return l2;
	return cons(car(l1), append(cdr(l1), l2));
}
sao_object * sao_type_check(const char *func, sao_object *obj, type_t type)
{
	if (is_NIL(obj)) {
		sao_stderr("Invalid argument to function %s: NIL\n", func);
		libc(exit)(1);
	} else if (obj->type != type) {
		sao_stderr( "ERR: function %s. expected %s got %s\n",
				func, type_names[type], type_names[obj->type]);
		libc(exit)(1);
	}
	return obj;
}
sao_object *sao_new_vector(int size) {
	sao_object *ret = sao_alloc(type_vector);
	ret->_vector = SAO_NEW(sao_object,size);
	ret->_len = size;
	return ret;
}
sao_object *sao_new_symbol(char *s) {
	sao_object *ret = ht_lookup(s);
	if (is_NIL(ret)) {
		ret = sao_alloc(type_symbol);
		ret->_string = libc(strdup)(s);
		ht_insert(ret);
	}else{
		if(!libc(strcmp)(ret->_string,s)){
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
		case type_integer: return x->_integer == y->_integer;
		case type_symbol:
		case type_string: return !libc(strcmp)(x->_string, y->_string);
		case type_native: return 0;
		case type_vector: return 0;
	}
	return 0;
}
int not_false(sao_object *x) {
	if (is_NIL(x) || is_equal(x, FALSE)) return 0;
	if (x->type == type_integer && x->_integer == 0) return 0;
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
	return sao_new_symbol(type_names[car(args)->type]);
}
sao_object *native_global(sao_object *args) {
	return GLOBAL;
}
sao_object *native_list(sao_object *args) {
	return (args);
}
sao_object *native_cons(sao_object *args) {
	return cons(car(args), cadr(args));
}
sao_object *native_car(sao_object *args) {
#ifdef STRICT
	SAO_CHECK_TYPE(car(args), type_list);
#endif
	return caar(args);
}
sao_object *native_cdr(sao_object *args) {
#ifdef STRICT
	SAO_CHECK_TYPE(car(args), type_list);
#endif
	return cdar(args);
}
sao_object *native_setcar(sao_object *args) {
	SAO_CHECK_TYPE(car(args), type_list);
	(args->car->car = (cadr(args)));
	return NIL;
}
sao_object *native_setcdr(sao_object *args) {
	SAO_CHECK_TYPE(car(args), type_list);
	(args->car->cdr = (cadr(args)));
	return NIL;
}
sao_object *native_is_null(sao_object *args) {
	return is_NIL(car(args)) ? TRUE : FALSE;
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
	return (car(args)->_integer == cadr(args)->_integer) ? TRUE : FALSE;
}

sao_object *native_not(sao_object *args) {
	return native_cmp(args);
}

sao_object *native_eqq(sao_object *args) {
	return is_equal(car(args), cadr(args)) ? TRUE : FALSE;
}
sao_object *native_equalq(sao_object *args) {
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
	if ((car(args)->type == type_vector) && (cadr(args)->type == type_vector)) {
		if (car(args)->_len != cadr(args)->_len) {
			return FALSE;
		}
		sao_object **va = car(args)->_vector;
		sao_object **vb = cadr(args)->_vector;
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
	SAO_CHECK_TYPE(car(list), type_integer);
	long total = car(list)->_integer;
	list = cdr(list);
	while (!is_NIL(car(list)))
	{
		SAO_CHECK_TYPE(car(list), type_integer);
		total += car(list)->_integer;
		list = cdr(list);
	}
	return sao_new_integer(total);
}
sao_object *native_sub(sao_object *list) {
	SAO_CHECK_TYPE(car(list), type_integer);
	long total = car(list)->_integer;
	list = cdr(list);
	while (!is_NIL(list)) {
		SAO_CHECK_TYPE(car(list), type_integer);
		total -= car(list)->_integer;
		list = cdr(list);
	}
	return sao_new_integer(total);
}
sao_object *native_div(sao_object *list) {
	SAO_CHECK_TYPE(car(list), type_integer);
	long total = car(list)->_integer;
	list = cdr(list);
	while (!is_NIL(list)) {
		SAO_CHECK_TYPE(car(list), type_integer);
		total /= car(list)->_integer;
		list = cdr(list);
	}
	return sao_new_integer(total);
}
sao_object *native_mul(sao_object *list) {
	SAO_CHECK_TYPE(car(list), type_integer);
	long total = car(list)->_integer;
	list = cdr(list);
	while (!is_NIL(list)) {
		SAO_CHECK_TYPE(car(list), type_integer);
		total *= car(list)->_integer;
		list = cdr(list);
	}
	return sao_new_integer(total);
}
sao_object *native_gt(sao_object *sexp) {
	SAO_CHECK_TYPE(car(sexp), type_integer);
	SAO_CHECK_TYPE(cadr(sexp), type_integer);
	return (car(sexp)->_integer > cadr(sexp)->_integer) ? TRUE : NIL;
}
sao_object *native_lt(sao_object *sexp) {
	SAO_CHECK_TYPE(car(sexp), type_integer);
	SAO_CHECK_TYPE(cadr(sexp), type_integer);
	return (car(sexp)->_integer < cadr(sexp)->_integer) ? TRUE : NIL;
}
sao_object * native_ffi(sao_object *args) {
	sao_out_expr("ffi todo",args);
	return NIL;
}
sao_object *native_exit(sao_object *args) {
	libc(exit)(0);
	return NIL;
}
//TODO merge read/load
sao_object *native_read(sao_object *args) {
	return sao_load_expr(sao_stream_new(libc(stdin),stream_file));
}
sao_object *native_load(sao_object *args) { //TODO merge with native_read() 1!!!
	sao_object *exp;
	sao_object *ret = 0;
	char *filename = car(args)->_string;
#if defined(DEBUG)
	sao_stdout("Evaluating file %s\n", filename);
#endif
	//TODO
	void*fp = libc(fopen)(filename, "r");
	if (fp == 0) {
		sao_stdout("Error opening file %s\n", filename);
		return NIL;
	}
	sao_stream * fw = sao_stream_new(fp,stream_file);
	for (;;) {
		exp = sao_load_expr(fw);
		if (is_NIL(exp))
			break;
		ret = sao_eval(exp, GLOBAL);
	}
	libc(fclose)(fp);
	return ret;
}
sao_object *native_tget(sao_object *args) {
	sao_object * vct = SAO_CHECK_TYPE(car(args), type_vector);
	sao_object * key = SAO_CHECK_TYPE(cadr(args), type_integer);
	if (key->_integer >= vct->_len) return NIL;
	return vct->_vector[key->_integer];
}
sao_object *native_tset(sao_object *args){
	sao_object * vct = SAO_CHECK_TYPE(car(args), type_vector);
	sao_object * key = SAO_CHECK_TYPE(cadr(args), type_integer);
	if (is_NIL(caddr(args))) return NIL;
	if (key->_integer >= vct->_len) return NIL;
	car(args)->_vector[key->_integer] = caddr(args);
	return sao_new_symbol("ok");
}
sao_object *native_vector(sao_object *args) {
	sao_object * sym = SAO_CHECK_TYPE(car(args), type_integer);
	return sao_new_vector(sym->_integer);
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
#define PROFILE
sao_stream * sao_stream_new(void* fp,stream_t type)
{
	NEW_OBJECT(sao_stream,fw);
	fw->fp = fp;
	if(type==stream_char) fw->pos = fp;
	fw->type = type;
	return fw;
}
int sao_deq_c(sao_stream *fw)
{
	int c = -2;//
	FileChar * ptr_head = fw->ptr_head;
	if(ptr_head!=SAO_NULL){
		c = ptr_head->c;
		fw->ptr_head=ptr_head->ptr_next;
		//fw->_rest --;
	}
	return c;
}
int sao_enq_c(sao_stream* fw,int k){
	NEW_OBJECT(FileChar,fc);
	fc->c = k; 
	fc->ptr_prev= fw->ptr_last;
	if(SAO_NULL==fw->ptr_start){
		fw->ptr_start = fc;
	}
	if(SAO_NULL==fw->ptr_head){
		fw->ptr_head = fc;
	}
	if(SAO_NULL!=fw->ptr_last){
		fw->ptr_last->ptr_next = fc;
	}
	fw->ptr_last = fc;
	//fw->_rest ++;
	return k;
}
int depth = 0;
int line_num = 0;
int sao_read_line(sao_stream* fw)
{
	ffic_func feof = libc(feof);
	do{
		if(fw->type==stream_file){
			if(feof(fw->fp)){ break; }
		}else{
			//if(feof(fw->fp)){ break; }
			if (fw->pos==0) sao_stderr("DEBUG no pos?");
			if (*(fw->pos)==0){
				sao_stderr("DEBUG end?");
				break;
			}
		}
		ffic_func fgets  = libc(fgets);
		ffic_func strlen = libc(strlen);
		int LINE_LEN = 1024;//TODO
		NEW_OBJECT(char,line,LINE_LEN);//TODO gc
		if(fw->type==stream_file){
			fgets(line,LINE_LEN,fw->fp);
			long strlen_line = (long) strlen(line);
			if(strlen_line>0){
				for(int i=0;i<strlen_line;i++)
				{
					if('\n'==sao_enq_c(fw,line[i])){ line_num++; }
				}
			}else{
				sao_enq_c(fw,SAO_EOF);
			}
		}else{
			while( *(fw->pos)!=0 ){
				if('\n'==sao_enq_c(fw,(*(fw->pos)))){ line_num++; }
				//sao_stderr(".");
				fw->pos++;
			}
			sao_enq_c(fw,SAO_EOF);
		}
	}while(0);
	return line_num;
}
sao_object *native_print(sao_object *args) {
	sao_out_expr(0, car(args));
	sao_stdout("\n");
	return NIL;
}
sao_object *sao_read_symbol(sao_stream * fw, char start)
{
	char buf[128];
	buf[0] = start;
	int i = 1;
	while (sao_is_alphanumber(sao_peek(fw))
			|| libc(strchr)(type_symbolS, sao_peek(fw)))
	{
		if (i >= 128)
			sao_error("Symbol name too long - maximum length 128 characters");
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
		if (is_NIL(obj))
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
		if (c == SAO_EOF) return NIL;
		if (i >= 256) sao_error("String too long - maximum length 256 characters");
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
		if (c == '\n' || c == SAO_EOF) return;
	}
}
sao_object *sao_load_expr(sao_stream * fw)
{
	int c;
	//TODO switch(){} for better loop
	for (;;) {
		sao_object * theSymbol = NIL;
		c = sao_deq_c(fw);
		switch(c){
			case SAO_EOF: return SAO_NULL;
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
		if (libc(isalpha)(c) || libc(strchr)(type_symbolS, c)){
			theSymbol = sao_read_symbol(fw,c);
			while(' '==sao_peek(fw)) c = sao_deq_c(fw);//TODO support \t later
			if('('==sao_peek(fw)){
				c = sao_deq_c(fw);//jump next
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
	if (str) sao_stdout("%s ", str);
	//if (is_NIL(e)) { sao_stdout("'()"); return; }
	if (is_NIL(e)) { return; }
	switch (e->type) {
		case type_string: sao_stdout("\"%s\"", e->_string); break;
		case type_symbol: sao_stdout("%s", e->_string); break;
		case type_integer: sao_stdout("%ld", e->_integer); break;
		case type_native: sao_stdout("<function>"); break;
		case type_vector: sao_stdout("<vector %d>", e->_len); break;
		case type_list:
										 if (is_tagged(e, PROCEDURE)) {
											 sao_stdout("<closure>");
											 return;
										 }
										 int skip=0;
										 sao_object **t = &e;
										 if (!is_NIL(*t)) {
											 if(type_symbol == e->car->type){
												 sao_out_expr(0, e->car);
												 skip=1;
											 }
										 }
										 sao_stdout("(");
										 while (!is_NIL(*t)) {
											 if(skip==1){
												 skip=0;
											 }else{
												 sao_stdout(" ");
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
										 sao_stdout(")");
	}
}
sao_object *sao_eval(sao_object *exp, sao_object *ctx)
{
tail:
	if (is_NIL(exp))
	{
		return NIL;
	} else if (exp->type == type_integer || exp->type == type_string) {
		return exp;
	} else if (exp->type == type_symbol) {
		sao_object *s = sao_lookup_var(exp, ctx);
#ifdef STRICT
		if (is_NIL(s)) {
			sao_out_expr("Unbound symbol:", exp);
			sao_stdout("\n");
		}
#endif
		return s;
	} else if (is_tagged(exp, QUOTE)) {
		return cadr(exp);
	} else if (is_tagged(exp, LAMBDA)) {
		return sao_new_procedure(cadr(exp), cddr(exp), ctx);
	} else if (is_tagged(exp, DEFINE)) {
		if (atom(cadr(exp)))
			define_variable(cadr(exp), sao_eval(caddr(exp), ctx), ctx);
		else {
			sao_object *closure =
				sao_eval(sao_new_lambda(cdr(cadr(exp)), cddr(exp)), ctx);
			define_variable(car(cadr(exp)), closure, ctx);
		}
		return sao_new_symbol("ok");
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
	} else if (is_tagged(exp, sao_new_symbol("or"))) {
		sao_object *predicate = sao_eval(cadr(exp), ctx);
		exp = (not_false(predicate)) ? caddr(exp) : cadddr(exp);
		goto tail;
	} else if (is_tagged(exp, sao_new_symbol("cond"))) {
		sao_object *branch = cdr(exp);
		for (; !is_NIL(branch); branch = cdr(branch)) {
			if (is_tagged(car(branch), sao_new_symbol("else")) ||
					not_false(sao_eval(caar(branch), ctx))) {
				exp = cons(BEGIN, cdar(branch));
				goto tail;
			}
		}
		return NIL;
	} else if (is_tagged(exp, SET)) {
		if (atom(cadr(exp))){
			set_variable(cadr(exp), sao_eval(caddr(exp), ctx), ctx);
		} else {
			sao_object *closure =
				sao_eval(sao_new_lambda(cdr(cadr(exp)), cddr(exp)), ctx);
			set_variable(car(cadr(exp)), closure, ctx);
		}
		return sao_new_symbol("ok");
	} else if (is_tagged(exp, LET)) { /* transform into a lambda function*/
		sao_object **tmp;
		sao_object *vars = NIL;
		sao_object *vals = NIL;
		if (is_NIL(cadr(exp))) return NIL;
		if (atom(cadr(exp))) {
			for (tmp = &exp->cdr->cdr->car; !is_NIL(*tmp); tmp = &(*tmp)->cdr) {
				vars = cons(caar(*tmp), vars);
				vals = cons(cadar(*tmp), vals);
			}
			define_variable(cadr(exp),
					sao_eval(sao_new_lambda(vars, cdr(cddr(exp))),
						sao_expand(vars, vals, ctx)),
					ctx); /* evaluate the lambda function with the starting values */
			exp = cons(cadr(exp), vals);
			goto tail;
		}
		for (tmp = &exp->cdr->car; !is_NIL(*tmp); tmp = &(*tmp)->cdr) {
			vars = cons(caar(*tmp), vars);
			vals = cons(cadar(*tmp), vals);
		}
		exp = cons(sao_new_lambda(vars, cddr(exp)), vals);
		goto tail;
	} else { /* ('procedure, (parameters), (body), (ctx)) */

		sao_object *proc = sao_eval(car(exp), ctx);
		sao_object *args = eval_list(cdr(exp), ctx);
		if (is_NIL(proc)) {
#ifdef STRICT
			sao_out_expr("Invalid arguments to sao_eval:", exp);
			sao_stdout("\n");
#endif
			return NIL;
		}
		if (proc->type == type_native){
			//sao_warn("DEBUG calling native %s\n",proc->_string);
			return proc->native(args);
		}
		if (is_tagged(proc, PROCEDURE)) {
			//sao_warn("DEBUG calling procedure:%s\n",proc->_string);
			ctx = sao_expand(cadr(proc), args, cadddr(proc));
			exp = cons(BEGIN, caddr(proc)); /* procedure body */
			goto tail;
		}
	}
	sao_out_expr("Invalid arguments to sao_eval:", exp);
	sao_stdout("\n");
	return NIL;
}
#define add_native(s, c) define_variable(sao_new_symbol(s), sao_new_native(c), GLOBAL)
#define add_sym(s, c) do{c=sao_new_symbol(s);define_variable(c,c,GLOBAL);}while(0);
#define add_sym_with(n) add_native(#n, native_##n);
sao_object * sao_init()
{
	GLOBAL = sao_expand(NIL, NIL, NIL);
	add_sym("true", TRUE);
	add_sym("false", FALSE);
	define_variable(sao_new_symbol("true"), TRUE, GLOBAL);
	define_variable(sao_new_symbol("false"), FALSE, GLOBAL);
	add_sym("quote", QUOTE);
	add_sym("lambda", LAMBDA);
	add_sym("procedure", PROCEDURE);
	add_sym("var", DEFINE);//TODO to merge three(DEFINE/LET/PROCEDURE ?)
	add_sym("let", LET);
	add_sym("set", SET);
	add_sym("begin", BEGIN);//TODO remove or add END
	add_sym("if", IF);

	SAO_ITR(add_sym_with,SAO_EXPAND(
				exit,ffi,global,//sys
				type,cons,car,cdr,setcar,setcdr,//lang
				list,vector,tget,tset,//data
				add,sub,mul,div,cmp,not,lt,gt,//logic
				load,print,read,//io
				is_null,is_list,
				pairq,atomq,eqq,equalq,
				));
	return GLOBAL;
}
//TODO upgrade sao_stream to sao_stream to support _string
sao_object * sao_parse( sao_stream * fw, int do_eval )
{
	sao_read_line(fw);
	sao_u64 (*microtime)() = ( sao_u64(*)() ) libc(microtime);
	sao_object *rt = NIL;
	for(;;){
		sao_object *obj = sao_load_expr(fw);
		if(obj==SAO_NULL){ break; }
		if (!is_NIL(obj)) {
			sao_stdout("%llu: ",microtime());//TODO hide default option
			sao_out_expr("<=", obj);//TODO show only -i
			sao_stdout("\n");//ditto

			sao_object *rt = sao_eval(obj, GLOBAL);
			if (do_eval){
				sao_stdout("%llu: ",microtime());//TODO hide default
				if ( !is_NIL(rt)) {
					sao_out_expr("=>", rt);//TODO show only -i
					sao_stdout("\n");//ditto
				}
			}else{
				return obj;
			}
		}else{
			sao_stdout("DEBUG TODO depth=%d \n",depth);
		}
	}
	return rt;
}
int main(int argc, char **argv)
{
	//sao_warn("DEBUG type_list=%d\n",type_list);

	libc(setmode)(libc(fileno)(libc(stdin)),0x8000/*O_BINARY*/);
	ht_resize(8192-1);
	if(argc>1){
		sao_stream * fw = sao_stream_new(argv[1],stream_char);
		sao_object * arg_expr = sao_load_expr( fw );
		sao_out_expr("DEBUG car(arg_expr)=>",arg_expr);
		return 0;
	}
	sao_init();//TODO ffic("libsao","init")
	sao_stream * fw = sao_stream_new(libc(stdin),stream_file);
	sao_object * result = sao_parse( fw, 1/*eval*/ );
	return 0;
}
