// https://github.com/lazear/microlisp/blob/master/scheme/src/scheme.c
// https://en.wikipedia.org/wiki/Scheme_(programming_language)
// https://schemers.org/
/* interpreter for lang(scheme)
 * MIT License
 * Copyright Michael Lazear (c) 2016
 * FFI version by Wanjo Chan (c) 2020
 */
#include "macros.h"
#define DEFINE_ENUM(n) libc_##n,
#define LIBC_FUNC_LIST fprintf,stderr,exit,malloc,memset,strdup,strcmp,printf,\
stdin,putc,getc,ungetc,isalnum,strchr,isdigit,isalpha,fopen,fread,fclose,feof,usleep,\
_setmode,_fileno,\
gettimeofday,calloc,stdout,NULL
//TODO make ffi buffer then after the ffi()
enum {
	ITR(DEFINE_ENUM,EXPAND(LIBC_FUNC_LIST))
};
void* (*libc_a[libc_NULL])();//function buffer
#define libc(f) libcf(libc_##f,#f)
#include "ffi.h"
typedef void*(*ffi_func)();
//ffi_func libcf(int fi,const char* fn);
//TODO change to int=>char* map to get name
ffi_func libcf(int fi,const char* fn){
	return libc_a[fi]?libc_a[fi]:(libc_a[fi]=ffi("c",fn));
}
//////////////////////////////////////////////////////////////////////////////
#define is_null(x) ((x) == 0 || (x) == NIL)
#define is_EOL(x) (is_null((x)) || (x) == EMPTY_LIST)
#define error(x) do{libc(fprintf)(libc(stderr),"%s\n",x);libc(exit)(1);}while(0)
#define caar(x) (car(car((x))))
#define cdar(x) (cdr(car((x))))
#define cadr(x) (car(cdr((x))))
#define caddr(x) (car(cdr(cdr((x)))))
#define cadddr(x) (car(cdr(cdr(cdr((x))))))
#define cadar(x) (car(cdr(car((x)))))
#define cddr(x) (cdr(cdr((x))))
#define cdadr(x) (cdr(car(cdr((x)))))
#define atom(x) (!is_null(x) && (x)->type != type_list)
#define type_check(x, t) (type_check_func(__func__, x, t))
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

object *read_string(FILE *in);
int type_check_func(const char *func, object *obj, type_t type);

/*==============================================================================
	Hash table for saving Lisp symbol objects. Conserves memory and faster compares
	==============================================================================*/
struct htable {
	object *key;
};
/* One dimensional hash table */
static struct htable *HTABLE = 0;
//struct htable *HTABLE = 0;
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
		error("Hash table already initialized or even # of entries");
	HTABLE = libc(malloc)(sizeof(struct htable) * size);
	libc(memset)(HTABLE, 0, sizeof(struct htable) * size);
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

/*==============================================================================
	Memory management - Currently no GC
	==============================================================================*/
int alloc_count = 0;

object *alloc() {
	object *ret = libc(malloc)(sizeof(object));
	alloc_count++;
	return ret;
}

int type_check_func(const char *func, object *obj, type_t type)
{
	if (is_null(obj)) {
		libc(fprintf)(libc(stderr), "Invalid argument to function %s: NIL\n", func);
		libc(exit)(1);
	} else if (obj->type != type) {
		libc(fprintf)(libc(stderr), "ERR: function %s. expected %s got %s\n",
				func, types[type], types[obj->type]
				//func, types_map[type].name, types_map[obj->type].name
				);
		libc(exit)(1);
	}
	return 1;
}

object *make_vector(int size) {
	object *ret = alloc();
	ret->type = type_vector;
	ret->vector = libc(malloc)(sizeof(object *) * size);
	ret->vsize = size;
	libc(memset)(ret->vector, 0, size);
	return ret;
}

object *make_symbol(char *s) {
	object *ret = ht_lookup(s);
	if (is_null(ret)) {
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
	if (is_null(cell) || cell->type != type_list) return NIL;
	return cell->car;
}

inline object *cdr(object *cell) {
	if (is_null(cell) || cell->type != type_list) return NIL;
	return cell->cdr;
}

object *append(object *l1, object *l2) {
	if (is_null(l1)) return l2;
	return cons(car(l1), append(cdr(l1), l2));
}

object *reverse(object *list, object *first) {
	if (is_null(list)) return first;
	return reverse(cdr(list), cons(car(list), first));
}

// Pointer equality
int is_equal(object *x, object *y) {
	if (x == y)
		return 1;
	if (is_null(x) || is_null(y))
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
		case type_primitive:
			return 0;
		case type_vector:
			return 0;
	}
	return 0;
}

int not_false(object *x) {
	if (is_null(x) || is_equal(x, FALSE)) return 0;
	if (x->type == type_integer && x->integer == 0) return 0;
	return 1;
}

int is_tagged(object *cell, object *tag) {
	if (is_null(cell) || cell->type != type_list)
		return 0;
	return is_equal(car(cell), tag);
}

int length(object *exp) {
	if (is_null(exp)) return 0;
	return 1 + length(cdr(exp));
}

object *prim_type(object *args) {
	return make_symbol(types[car(args)->type]);
	//return make_symbol(types_map[car(args)->type].name);
}

//object *prim_get_env(object *args) {
//	//libc(assert)(is_null(args));
//	return ENV;
//}
object *prim_set_env(object *args) {
	ENV = car(args);
	return NIL;
}

object *prim_list(object *args) {
	return (args);
}
object *prim_cons(object *args) {
	return cons(car(args), cadr(args));
}

object *prim_car(object *args) {
#ifdef STRICT
	type_check(car(args), type_list);
#endif
	return caar(args);
}

object *prim_cdr(object *args) {
#ifdef STRICT
	type_check(car(args), type_list);
#endif
	return cdar(args);
}

object *prim_setcar(object *args) {
	type_check(car(args), type_list);
	(args->car->car = (cadr(args)));
	return NIL;
}
object *prim_setcdr(object *args) {
	type_check(car(args), type_list);
	(args->car->cdr = (cadr(args)));
	return NIL;
}

object *prim_is_nullq(object *args) {
	return is_EOL(car(args)) ? TRUE : FALSE;
}

object *prim_pairq(object *args) {
	if (car(args)->type != type_list)
		return FALSE;
	return (atom(caar(args)) && atom(cdar(args))) ? TRUE : FALSE;
}

object *prim_listq(object *args) {
	object *list;
	if (car(args)->type != type_list)
		return FALSE;
	for (list = car(args); !is_null(list); list = list->cdr)
		if (!is_null(list->cdr) && (list->cdr->type != type_list))
			return FALSE;
	return (car(args)->type == type_list && prim_pairq(args) != TRUE) ? TRUE : FALSE;
}

object *prim_atomq(object *sexp) {
	return atom(car(sexp)) ? TRUE : FALSE;
}

/* = primitive, only valid for numbers */
object *prim_neq(object *args) {
	if ((car(args)->type != type_integer) || (cadr(args)->type != type_integer))
		return FALSE;
	return (car(args)->integer == cadr(args)->integer) ? TRUE : FALSE;
}

/* eq? primitive, checks memory location, or if equal values for primitives */
object *prim_eq(object *args) {
	return is_equal(car(args), cadr(args)) ? TRUE : FALSE;
}

object *prim_equal(object *args) {
	if (is_equal(car(args), cadr(args)))
		return TRUE;
	if ((car(args)->type == type_list) && (cadr(args)->type == type_list)) {
		object *a, *b;
		a = car(args);
		b = cadr(args);
		while (!is_null(a) && !is_null(b)) {
			if (!is_equal(car(a), car(b)))
				return FALSE;
			a = cdr(a);
			b = cdr(b);
		}
		return TRUE;
	}
	if ((car(args)->type == type_vector) && (cadr(args)->type == type_vector)) {
		if (car(args)->vsize != cadr(args)->vsize) {
			return FALSE;
		}
		object **va = car(args)->vector;
		object **vb = cadr(args)->vector;
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

object *prim_sub(object *list) {
	type_check(car(list), type_integer);
	i64 total = car(list)->integer;
	list = cdr(list);
	while (!is_null(list)) {
		type_check(car(list), type_integer);
		total -= car(list)->integer;
		list = cdr(list);
	}
	return make_integer(total);
}

object *prim_div(object *list) {
	type_check(car(list), type_integer);
	i64 total = car(list)->integer;
	list = cdr(list);
	while (!is_null(list)) {
		type_check(car(list), type_integer);
		total /= car(list)->integer;
		list = cdr(list);
	}
	return make_integer(total);
}

object *prim_mul(object *list) {
	type_check(car(list), type_integer);
	i64 total = car(list)->integer;
	list = cdr(list);
	while (!is_null(list)) {
		type_check(car(list), type_integer);
		total *= car(list)->integer;
		list = cdr(list);
	}
	return make_integer(total);
}
object *prim_gt(object *sexp) {
	type_check(car(sexp), type_integer);
	type_check(cadr(sexp), type_integer);
	return (car(sexp)->integer > cadr(sexp)->integer) ? TRUE : NIL;
}

object *prim_lt(object *sexp) {
	type_check(car(sexp), type_integer);
	type_check(cadr(sexp), type_integer);
	return (car(sexp)->integer < cadr(sexp)->integer) ? TRUE : NIL;
}

object *prim_print(object *args) {
	print_expression(0, car(args));
	libc(printf)("\n");
	return NIL;
}

object *prim_exit(object *args) {
	//libc(assert)(is_null(args));
	libc(exit)(0);
	return NIL;
}

object *prim_read(object *args) {
	//libc(assert)(is_null(args));
	return read_expression((FILE*)libc(stdin));
}

object *prim_vget(object *args) {
	type_check(car(args), type_vector);
	type_check(cadr(args), type_integer);
	if (cadr(args)->integer >= car(args)->vsize)
		return NIL;
	return car(args)->vector[cadr(args)->integer];
}

object *prim_vset(object *args) {
	type_check(car(args), type_vector);
	type_check(cadr(args), type_integer);
	if (is_null(caddr(args)))
		return NIL;
	if (cadr(args)->integer >= car(args)->vsize)
		return NIL;
	car(args)->vector[cadr(args)->integer] = caddr(args);
	return make_symbol("ok");
}

object *prim_vec(object *args) {
	type_check(car(args), type_integer);
	return make_vector(car(args)->integer);
}

/*==============================================================================
	Environment handling
	==============================================================================*/

object *extend_env(object *var, object *val, object *env) {
	return cons(cons(var, val), env);
}

object *lookup_variable(object *var, object *env) {
	while (!is_null(env)) {
		object *frame = car(env);
		object *vars = car(frame);
		object *vals = cdr(frame);
		while (!is_null(vars)) {
			if (is_equal(car(vars), var))
				return car(vals);
			vars = cdr(vars);
			vals = cdr(vals);
		}
		env = cdr(env);
	}
	return NIL;
}

/* set_variable binds var to val in the first frame in which var occurs */
void set_variable(object *var, object *val, object *env) {
	while (!is_null(env)) {
		object *frame = car(env);
		object *vars = car(frame);
		object *vals = cdr(frame);
		while (!is_null(vars)) {
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

/* define_variable binds var to val in the *current* frame */
object *define_variable(object *var, object *val,
		object *env) {
	object *frame = car(env);
	object *vars = car(frame);
	object *vals = cdr(frame);

	while (!is_null(vars)) {
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

/*==============================================================================
	Recursive descent parser
	==============================================================================*/

char type_symbolS[] = "~!@#$%^&*_-+\\:,.<>|{}[]?=/";

int peek(FILE *in) {
	u64 c = (u64) libc(getc)(in);
	libc(ungetc)(c, in);
	return c;
}

/* skip characters until end of line */
void skip(FILE *in) {
	u64 c;
	for (;;) {
		c = (u64) libc(getc)(in);
		if (c == '\n' || c == (-1))
			return;
	}
}

inline object *read_string(FILE *in)
{
	char buf[256];
	int i = 0;
	u64 c;
	while ((c = (u64) libc(getc)(in)) != '\"') {
		if (c == (-1))
			return NIL;
		if (i >= 256)
			error("String too long - maximum length 256 characters");
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
	while (libc(isalnum)(peek(in)) || libc(strchr)(type_symbolS, peek(in))) {
		if (i >= 128)
			error("Symbol name too long - maximum length 128 characters");
		buf[i++] = (u64) libc(getc)(in);
	}
	buf[i] = '\0';
	return make_symbol(buf);
}

int read_int(FILE *in, int start) {
	while (libc(isdigit)(peek(in)))
		start = start * 10 + ((u64)libc(getc)(in) - '0');
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

//object *_read_quote(FILE *in) {
//	return cons(QUOTE, cons(read_expression(in), NIL));
//}

int depth = 0;

object *read_expression(FILE *in) {
	//int is_stdin = (in == (FILE*) libc(stdin));
	int c;

	for (;;) {
		c = (u64)libc(getc)(in);
		if (c == '\n' || c == '\r' || c == ' ' || c == '\t') {
			//if ((c == '\n' || c == '\r') && is_stdin) {
			//	for (int i = 0; i < depth; i++) libc(printf)("..");
			//}
			continue;
		}
		//libc(printf)("%i ",c);
		if (c == ';') {
			skip(in);
			continue;
		}
		if (c == (-1))
			return 0;
		if (c == '\"')
			return read_string(in);
		if (c == '\'')
			//return _read_quote(in);
			return cons(QUOTE, cons(read_expression(in), NIL));
		if (c == '(') {
			depth++;
			return _read_list(in);
		}
		if (c == ')') {
			depth--;
			return EMPTY_LIST;
		}

		if ((u64)libc(isdigit)(c)) return make_integer(read_int(in, c - '0'));

		if (c == '-' && (u64)libc(isdigit)(peek(in)))
			return make_integer(-1 * read_int(in, (u64)libc(getc)(in) - '0'));

		if (libc(isalpha)(c) || libc(strchr)(type_symbolS, c))
			return _read_symbol(in, c);
	}
	return NIL;
}
void print_expression(char *str, object *e) {
	if (str)
		libc(printf)("%s ", str);
	if (is_null(e)) {
		libc(printf)("'()");
		return;
	}
	switch (e->type) {
		case type_string:
			libc(printf)("\"%s\"", e->string);
			break;
		case type_symbol:
			libc(printf)("%s", e->string);
			break;
		case type_integer:
			libc(printf)("%ld", e->integer);
			break;
		case type_primitive:
			libc(printf)("<function>");
			break;
		case type_vector:
			libc(printf)("<vector %d>", e->vsize);
			break;
		case type_list:
			if (is_tagged(e, PROCEDURE)) {
				libc(printf)("<closure>");
				return;
			}
			libc(printf)("(");
			object **t = &e;
			while (!is_null(*t)) {
				print_expression(0, (*t)->car);
				if (!is_null((*t)->cdr)) {
					libc(printf)(" ");
					if ((*t)->cdr->type == type_list) {
						t = &(*t)->cdr;
					} else {
						print_expression(".", (*t)->cdr);
						break;
					}
				} else
					break;
			}
			libc(printf)(")");
	}
}

object *eval_list(object *exp, object *env) {
	if (is_null(exp)) return NIL;
	return cons(eval(car(exp), env), eval_list(cdr(exp), env));
}

object *eval_sequence(object *exps, object *env) {
	if (is_null(cdr(exps))) return eval(car(exps), env);
	eval(car(exps), env);
	return eval_sequence(cdr(exps), env);
}

object *eval(object *exp, object *env) {

tail:
	if (is_null(exp) || exp == EMPTY_LIST) {
		return NIL;
	} else if (exp->type == type_integer || exp->type == type_string) {
		return exp;
	} else if (exp->type == type_symbol) {
		object *s = lookup_variable(exp, env);
#ifdef STRICT
		if (is_null(s)) {
			print_expression("Unbound symbol:", exp);
			printf("\n");
		}
#endif
		return s;
	} else if (is_tagged(exp, QUOTE)) {
		return cadr(exp);
	} else if (is_tagged(exp, LAMBDA)) {
		return make_procedure(cadr(exp), cddr(exp), env);
	} else if (is_tagged(exp, DEFINE)) {
		if (atom(cadr(exp)))
			define_variable(cadr(exp), eval(caddr(exp), env), env);
		else {
			object *closure =
				eval(make_lambda(cdr(cadr(exp)), cddr(exp)), env);
			define_variable(car(cadr(exp)), closure, env);
		}
		return make_symbol("ok");
	} else if (is_tagged(exp, BEGIN)) {
		object *args = cdr(exp);
		for (; !is_null(cdr(args)); args = cdr(args))
			eval(car(args), env);
		exp = car(args);
		goto tail;
	} else if (is_tagged(exp, IF)) {
		object *predicate = eval(cadr(exp), env);
		exp = (not_false(predicate)) ? caddr(exp) : cadddr(exp);
		goto tail;
	} else if (is_tagged(exp, make_symbol("or"))) {
		object *predicate = eval(cadr(exp), env);
		exp = (not_false(predicate)) ? caddr(exp) : cadddr(exp);
		goto tail;
	} else if (is_tagged(exp, make_symbol("cond"))) {
		object *branch = cdr(exp);
		for (; !is_null(branch); branch = cdr(branch)) {
			if (is_tagged(car(branch), make_symbol("else")) ||
					not_false(eval(caar(branch), env))) {
				exp = cons(BEGIN, cdar(branch));
				goto tail;
			}
		}
		return NIL;
	} else if (is_tagged(exp, SET)) {
		if (atom(cadr(exp)))
			set_variable(cadr(exp), eval(caddr(exp), env), env);
		else {
			object *closure =
				eval(make_lambda(cdr(cadr(exp)), cddr(exp)), env);
			set_variable(car(cadr(exp)), closure, env);
		}
		return make_symbol("ok");
	} else if (is_tagged(exp, LET)) {
		/* We go with the strategy of transforming let into a lambda function*/
		object **tmp;
		object *vars = NIL;
		object *vals = NIL;
		if (is_null(cadr(exp)))
			return NIL;
		/* NAMED LET */
		if (atom(cadr(exp))) {
			for (tmp = &exp->cdr->cdr->car; !is_null(*tmp); tmp = &(*tmp)->cdr) {
				vars = cons(caar(*tmp), vars);
				vals = cons(cadar(*tmp), vals);
			}
			/* Define the named let as a lambda function */
			define_variable(cadr(exp),
					eval(make_lambda(vars, cdr(cddr(exp))),
						extend_env(vars, vals, env)),
					env);
			/* Then evaluate the lambda function with the starting values */
			exp = cons(cadr(exp), vals);
			goto tail;
		}
		for (tmp = &exp->cdr->car; !is_null(*tmp); tmp = &(*tmp)->cdr) {
			vars = cons(caar(*tmp), vars);
			vals = cons(cadar(*tmp), vals);
		}
		exp = cons(make_lambda(vars, cddr(exp)), vals);
		goto tail;
	} else {
		/* procedure structure is as follows:
			 ('procedure, (parameters), (body), (env)) */
		object *proc = eval(car(exp), env);
		object *args = eval_list(cdr(exp), env);
		if (is_null(proc)) {
#ifdef STRICT
			print_expression("Invalid arguments to eval:", exp);
			printf("\n");
#endif

			return NIL;
		}
		if (proc->type == type_primitive)
			return proc->primitive(args);
		if (is_tagged(proc, PROCEDURE)) {
			env = extend_env(cadr(proc), args, cadddr(proc));
			exp = cons(BEGIN, caddr(proc)); /* procedure body */
			goto tail;
		}
	}
	print_expression("Invalid arguments to eval:", exp);
	libc(printf)("\n");
	return NIL;
}

//extern char **environ;
//object *prim_exec(object *args) {
//	type_check(car(args), type_string);
//	int l = length(args);
//	object *tmp = args;
//
//	char **newarg = libc(malloc)(sizeof(char *) * (l + 1));
//	char **n = newarg;
//	for (; l; l--) {
//		type_check(car(tmp), type_string);
//		*n++ = car(tmp)->string;
//		tmp = cdr(tmp);
//	}
//	*n = 0;
//	int pid = (u64) libc(fork)();
//	if (pid == 0) {
//		/* if execve returns -1, there was an errorm so we need to kill*/
//		if (libc(execve)(car(args)->string, newarg, environ)) {
//			libc(perror)(car(args)->string);
//			libc(kill)((u64)libc(getpid()), 15/*SIGTERM*/);
//		}
//	}
//	libc(wait)(&pid);
//	return NIL;
//}

//TODO to improve init speed by  better definition instead of add_*
void init_env() {
#define add_prim(s, c) define_variable(make_symbol(s), make_primitive(c), ENV)
#define add_sym(s, c) do{c=make_symbol(s);define_variable(c,c,ENV);}while(0);
	ENV = extend_env(NIL, NIL, NIL);
	add_sym("#t", TRUE);
	add_sym("#f", FALSE);
	add_sym("quote", QUOTE);
	add_sym("lambda", LAMBDA);
	add_sym("procedure", PROCEDURE);

	//TODO merge three
	add_sym("define", DEFINE);
	add_sym("let", LET);
	add_sym("set!", SET);

	add_sym("begin", BEGIN);
	add_sym("if", IF);
	define_variable(make_symbol("true"), TRUE, ENV);
	define_variable(make_symbol("false"), FALSE, ENV);

	add_prim("cons", prim_cons);
	add_prim("car", prim_car);
	add_prim("cdr", prim_cdr);
	add_prim("set-car!", prim_setcar);
	add_prim("set-cdr!", prim_setcdr);
	add_prim("list", prim_list);
	add_prim("list?", prim_listq);
	add_prim("null?", prim_is_nullq);
	add_prim("pair?", prim_pairq);
	add_prim("atom?", prim_atomq);
	add_prim("eq?", prim_eq);
	add_prim("equal?", prim_equal);

	add_prim("+", prim_add);
	add_prim("-", prim_sub);
	add_prim("*", prim_mul);
	add_prim("/", prim_div);
	add_prim("=", prim_neq);
	add_prim("<", prim_lt);
	add_prim(">", prim_gt);

	add_prim("type", prim_type);
	add_prim("load", load_file);
	add_prim("print", prim_print);
	//add_prim("ffi", prim_ffi);
	//add_prim("get-global-environment", prim_get_env);
	//add_prim("env", prim_get_env);//remove this feature
	//	add_prim("set-global-environment", prim_set_env);
	add_prim("exit", prim_exit);//TODO change to ffi
	//add_prim("exec", prim_exec);//change to ffi
	add_prim("read", prim_read);//read from stdin (like scan)
	add_prim("vector", prim_vec);
	add_prim("vector-get", prim_vget);
	add_prim("vector-set", prim_vset);
}

/* Loads and evaluates a file containing lisp s-expressions */
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
	for (;;) {
		exp = read_expression(fp);
		if (is_null(exp))
			break;
		ret = eval(exp, ENV);
	}
	libc(fclose)(fp);
	return ret;
}
#if defined(DEBUG)
#include "debug_scheme.c"
#endif
//TMP
#define PROFILE
static u64 ffi_microtime(void)
{
#ifdef _WIN32
	//return (u64)(libc(GetTickCount)());
	return (u64)(ffi("kernel32","GetTickCount")());
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
int main(int argc, char **argv)
{
	//FILE * fp = (FILE*) libc(stdin);
	ffi_func printf = libc(printf);
	ffi_func exit = libc(exit);
	ffi_func fopen = libc(fopen);
	ffi_func fread = libc(fread);
	ffi_func fclose = libc(fclose);
	ffi_func feof = libc(feof);
	ffi_func usleep = libc(usleep);

#if defined(_WIN32)
	//libc(_setmode)(libc(_fileno)(stdout), 0x8000 /*_O_BINARY*/);
	libc(_setmode)(libc(_fileno)(libc(stdin)), 0x8000 /*_O_BINARY*/);
#endif
	
	int ok=0,ko=0,k=0;
	int ct = 0;
	//FILE * fp = libc(fopen)("<stdin>","rb");//TODO
	FILE * fp = (FILE*) libc(stdin);
	//while(!feof(fp))
	for(;;)
	{
		//k=0;
		if(1==(int)fread(&k,sizeof(char),1,fp)){
			ok++;
		}else{
			ko++;
			usleep(1000);
			if(ko>3){
				break;
			}
			//if(0==feof(fp)){
			//	sleep(1);
			//}
			printf("ct=%d,ok=%d,ko=%d,k=%d,EOF=%s\n",ct,ok,ko,k,feof(fp)?"Y":"N");
		}
		ct++;
	}
	printf("\nEND ok=%d,ko=%d,k=%d,ct=%d\n",ok,ko,k,ct);
	libc(fclose)(fp);
	return 0;

#if defined(PROFILE)
	libc(printf)("%ld: start\n",ffi_microtime());
#endif
//#if defined(DEBUG)
//	check_env();
//#endif
	ht_init(8192-1);
#if defined(PROFILE)
	libc(printf)("%lu: after ht_init()\n",ffi_microtime());
#endif
	init_env();
#if defined(PROFILE)
	libc(printf)("%lu: after init_env() \n",ffi_microtime());
#endif
//	for (int i = 1; i < argc; i++)
//		load_file(cons(make_symbol(argv[i]), NIL));
	//TODO only if "-" for args[1]...
	for (;;) {
		//TODO -i
#if defined(DEBUG)
		libc(printf)(">");
#endif
		//TODO read_expression into q and the eval in standalone thread?
		object *obj = read_expression((FILE*)libc(stdin));
		if (!is_null(obj)) {
#if defined(PROFILE)
			libc(printf)("%lu: ",ffi_microtime());
#endif
//#if defined(DEBUG)
			print_expression("<=", obj);
			libc(printf)("\n");
//#endif
		}
		object *exp = eval(obj, ENV);
		if (!is_null(exp)) {
#if defined(PROFILE)
			libc(printf)("%lu: ",ffi_microtime());
#endif
//#if defined(DEBUG)
			print_expression("=>", exp);
			libc(printf)("\n");
//#endif
		}else{
			break;
		}
	}
#if defined(PROFILE)
			libc(printf)("%lu: exit\n",ffi_microtime());
#endif
}
