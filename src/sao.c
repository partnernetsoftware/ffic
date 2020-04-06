//WARNING: do not go production unless gc() is done!
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
#define SAO_WHILE(m,v, ...) SAO_WHEN(SAO_NOT(SAO_IS_PAREN(v ()))) ( SAO_OBSTRUCT(m) (v) SAO_OBSTRUCT(SAO_WHILE_INDIRECT) () (m, __VA_ARGS__) )
#define SAO_WHILE_INDIRECT() SAO_WHILE 
#define SAO_WHILE1(m,v1,v, ...) SAO_WHEN(SAO_NOT(SAO_IS_PAREN(v ()))) ( SAO_OBSTRUCT(m) (v1,v) SAO_OBSTRUCT(SAO_WHILE_INDIRECT1) () (m,v1,__VA_ARGS__) )
#define SAO_WHILE_INDIRECT1() SAO_WHILE1
#define SAO_ITR(mmm,qqq,...) SAO_EVAL( SAO_WHILE( mmm,qqq,__VA_ARGS__ ) )
#define SAO_ITR1(mmm,mm1,qqq,...) SAO_EVAL( SAO_WHILE1( mmm,mm1,qqq,__VA_ARGS__) )
//////////////////////////////////////////////////////////////////////////////
#define DEFINE_ENUM_LIBC(n) libc_##n,
enum { SAO_ITR(DEFINE_ENUM_LIBC,fprintf,malloc,memset,strdup,strcmp,printf,putc,getc,isalnum,strchr,isdigit,isalpha,fopen,fread,fgets,fclose,feof, usleep,msleep,sleep,fputc,strlen,fflush,free,system,\
		setmode,fileno,stdin,stdout,stderr,microtime,exit) };
#define libc(f) libc_(libc_##f,#f)
#include "ffic.h" //github.com/partnernetsoftware/ffic/blob/master/src/ffic.h
ffic_func libc_a[libc_exit+1];
ffic_func libc_(int fi,const char* fn){ return libc_a[fi]?libc_a[fi]:(libc_a[fi]=ffic("c",fn)); }
//#define SAO_NULL 0
#define SAO_NULL ((void*)0)
#define SAO_EOF (-1)
#define SAO_CAT_COMMA(a,b) a##b,
#define define_enum_name(n) #n,
#define define_enum_item(p,v) p##_##v,
#define define_enum_t(n, ...) typedef enum { SAO_ITR1(define_enum_item,n,__VA_ARGS__) } n##_t;
#define define_map_arr(n, ...) char* n##_names[] = { SAO_ITR(define_enum_name,__VA_ARGS__) };
#define define_map(n, ...) define_enum_t(n,__VA_ARGS__) define_map_arr(n,__VA_ARGS__)
#define SAO_NEW(t,...) sao_calloc( sizeof(t) SAO_IF(SAO_IS_PAREN(__VA_ARGS__ ()))(SAO_EAT(),*__VA_ARGS__) )
#define SAO_NEW_OBJECT(t,n,...) t*n=SAO_NEW(t,__VA_ARGS__);
#define sao_stderr(...) libc(fprintf)(libc(stderr),__VA_ARGS__)
#define sao_stdout(...) libc(printf)(__VA_ARGS__)
#define sao_error(...) do{sao_stderr(__VA_ARGS__);sao_stderr("\n");libc(exit)(1);}while(0)
#define sao_warn(...) sao_stderr(__VA_ARGS__);
//#define SAO_CHECK_TYPE(x, t) (sao_type_check(__func__, x, t))
define_map(stream, file,char);
define_map(type,   list,integer,symbol,string,native,vector);
define_map(ctype,  long,double,any);
define_map(argt,   i,p,d,v,e,s,l,h);
int argta[argt_h+1];
#define SAO_ARGV(x) argta[argt_##x]
typedef struct _sao_object sao_object;
typedef sao_object *(*native_t)(sao_object *);
struct _sao_object {
	union {
		void* ptr3[3];//for special case later
		struct {
			union {
				struct {
					sao_object *car;
					sao_object *cdr;
					sao_object *upr;//TODO upper link for context 
				};
				struct {
					sao_object **_vector;
					int _len;
				};
				char *_string;
				long _integer;
				double _double;//TODO
				native_t _native;
			};
			type_t _type;
		};
	};
	//int gc;//TODO
};//__attribute__((packed));
#define define_sao_object(n) sao_object*n=SAO_NULL;
SAO_ITR(define_sao_object, NIL,ARGV,GLOBAL,TRUE,FALSE,QUOTE,SET,LET,DEFINE,PROCEDURE,IF,LAMBDA,BEGIN,OR,OK,ELSE,COND,ERROR);
typedef struct _FileChar {
	int c;
	struct _FileChar * ptr_prev;
	struct _FileChar * ptr_next;
} FileChar;
typedef struct {
	stream_t _type;
	void* fp;
	char* pos;//for stream_char only
	FileChar * ptr_start;
	FileChar * ptr_head;
	FileChar * ptr_last;
	//long _total;//TODO for gc()
} sao_stream;

sao_object *sao_eval(sao_object *exp, sao_object *ctx);
sao_object *sao_load_expr(sao_stream * fw);

sao_object * sao_is_atom(sao_object * x){ return (x&&x->_type)?x:NIL; }
long sao_is_digit(int c) { return (long) libc(isdigit)(c); }
long sao_is_alpha(int c) { return (long) libc(isalpha)(c); }
long sao_is_alphanumber(int c) { return (long) libc(isalnum)(c); }
void* sao_calloc(long _sizeof){return libc(memset)(libc(malloc)(_sizeof),0,_sizeof);}

//void ht_insert(sao_object *key_obj);
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
				sao_stdout("DEBUG ! newTable(%d) still full ??\n", newsize);
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
	SAO_NEW_OBJECT(sao_object,ret);//TODO gc()
	if(ret<0) sao_error("ASSERT: mem full when sao_alloc()");
	ret->_type = type;
	return ret;
}
sao_object * cons(sao_object *car, sao_object *cdr) {
	sao_object *ret = sao_alloc(type_list);
	ret->car = car;
	ret->cdr = cdr;
	return ret;
}
sao_object * car(sao_object *x) { return (!x || x->_type)? NIL: x->car; }
sao_object * cdr(sao_object *x) { return (!x || x->_type)? NIL: x->cdr; }
sao_object *caar(sao_object *x) { return (!x || x->_type || !x->car || x->car->_type)? NIL: x->car->car; }
sao_object *cdar(sao_object *x) { return (!x || x->_type || !x->car || x->car->_type)? NIL: x->car->cdr; }
sao_object *cadr(sao_object *x) { return (!x || x->_type || !x->cdr || x->cdr->_type)? NIL: x->cdr->car; }
sao_object *cddr(sao_object *x) { return (!x || x->_type || !x->cdr || x->cdr->_type)? NIL: x->cdr->cdr; }
sao_object *cadar(sao_object *x) {
	if(!x) return NIL;
	if(x->_type) return NIL;
	if(!x->car)return NIL;
	if(x->car->_type)return NIL;
	if(!x->car->cdr)return NIL;
	if(x->car->cdr->_type)return NIL;
	return x->car->cdr->car;
}
sao_object *caddr(sao_object *x) {
	if(!x)return NIL;
	if(x->_type) return NIL;
	if(!x->cdr)return NIL;
	if(x->cdr->_type)return NIL;
	if(!x->cdr->cdr)return NIL;
	if(x->cdr->cdr->_type)return NIL;
	return x->cdr->cdr->car;
}
sao_object *cdddr(sao_object *x) {
	if(!x)return NIL;
	if(x->_type) return NIL;
	if(!x->cdr)return NIL;
	if(x->cdr->_type)return NIL;
	if(!x->cdr->cdr)return NIL;
	if(x->cdr->cdr->_type)return NIL;
	return x->cdr->cdr->cdr;
}
sao_object *cdadr(sao_object *x) {
	if(!x)return NIL;
	if(x->_type) return NIL;
	if(!x->cdr)return NIL;
	if(x->cdr->_type)return NIL;
	if(!x->cdr->car)return NIL;
	if(x->cdr->car->_type)return NIL;
	return x->cdr->car->cdr;
}
sao_object *cadddr(sao_object *x) {
	if(!x)return NIL;
	if(x->_type) return NIL;
	if(!x->cdr)return NIL;
	if(x->cdr->_type)return NIL;
	if(!x->cdr->cdr)return NIL;
	if(x->cdr->cdr->_type)return NIL;
	if(!x->cdr->cdr->cdr)return NIL;
	if(x->cdr->cdr->cdr->_type)return NIL;
	return x->cdr->cdr->cdr->car;
}
//sao_object *append(sao_object *l1, sao_object *l2) {
//	if (!(l1)) return l2;
//	return cons(car(l1), append(cdr(l1), l2));
//}
sao_object *sao_new_vector(int size) {
	sao_object *ret = sao_alloc(type_vector);
	ret->_vector = SAO_NEW(sao_object,size);
	ret->_len = size;
	return ret;
}
sao_object *sao_new_symbol(char *s) {
	sao_object *ret = ht_lookup(s);
	if (!(ret)) {
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
	ret->_native = x;
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
	sao_object * rt = (!(list)) ? first :
		sao_reverse(cdr(list), cons(car(list), first));
	return rt;
}
sao_object * sao_is_eq(sao_object *x, sao_object *y) {
	do{
		if (x == y) return x;
		if (!(x) || !(y)) break;
		if (x->_type != y->_type) break;
		switch (x->_type) {
			case type_integer: if(x->_integer == y->_integer) return x;
			case type_symbol:
			case type_string: if(!libc(strcmp)(x->_string, y->_string)) return x;
			default: break;
		}
	}while(0);
	return NIL;
}
sao_object * sao_not_false(sao_object *x) {
	if (!(x) || sao_is_eq(x, FALSE)) return NIL;
	if (x->_type == type_integer && x->_integer == 0) return NIL;
	return x;
}
sao_object* is_tagged(sao_object *cell, sao_object *tag) { return (cell&&!cell->_type) ? sao_is_eq(car(cell),tag) : NIL; }
int sao_list_len(sao_object *expr) { return (expr) ? (1+sao_list_len(cdr(expr))):0; }
int sao_deq_c(sao_stream *fw)
{
	int c = -2;//
	FileChar * ptr_head = fw->ptr_head;
	if(ptr_head!=SAO_NULL){
		c = ptr_head->c;
		fw->ptr_head=ptr_head->ptr_next;
	}
	return c;
}
int sao_enq_c(sao_stream* fw,int k){
	SAO_NEW_OBJECT(FileChar,fc);
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
	return k;
}
int sao_read_line(sao_stream* fw) //TODO int * line_num
{
	int line_num = 0;
	ffic_func feof = libc(feof);
	do{
		if(fw->_type==stream_file){
			if(!fw->fp) sao_error("FILE NOT FOUND?");
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
		SAO_NEW_OBJECT(char,line,LINE_LEN);
		if(fw->_type==stream_file){
			if(SAO_ARGV(i)){
				sao_stdout("> ");
			}
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
		libc(free)(line);//TODO SAO_DELETE_OBJECT
	}while(0);
	return line_num;
}
//////////////////////////////////////////////////////////////////////////////
sao_object *sao_expand(sao_object *var, sao_object *val, sao_object *ctx) {
	return cons(cons(var, val), ctx);
}
sao_object *sao_get_var(sao_object *var, sao_object *ctx) {
	while ((ctx)) {
		sao_object *frame = car(ctx);
		sao_object *vars = car(frame);
		sao_object *vals = cdr(frame);
		while ((vars)) {
			if (sao_is_eq(car(vars), var))
				return car(vals);
			vars = cdr(vars);
			vals = cdr(vals);
		}
		ctx = cdr(ctx);
	}
	return NIL;
}
//TODO replace var->val when found.
sao_object * sao_set_var(sao_object *var, sao_object *val, sao_object *ctx) {
	while ((ctx)) {
		sao_object *frame = car(ctx);
		sao_object *vars = car(frame);
		sao_object *vals = cdr(frame);
		while ((vars)) {
			if (sao_is_eq(car(vars), var)) {
				vals->car = val;
				return car(vals);
				//return NIL;
			}
			vars = cdr(vars);
			vals = cdr(vals);
		}
		ctx = cdr(ctx);
	}
	return val;
}
//TODO 
sao_object *sao_def_var(sao_object *var, sao_object *val, sao_object *ctx)
{
	if(!ctx) sao_error("ASSERT: sao_def_var need ctx");
	sao_object *frame = car(ctx);
	if(!frame) sao_error("ASSERT: sao_def_var(): found no car in ctx");
	sao_object *vars = car(frame);
	sao_object *vals = cdr(frame);
	while ((vars)) {
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
	if (!(exp)) return NIL;
	return cons(sao_eval(car(exp), ctx), eval_list(cdr(exp), ctx));
}
//TODO
//sao_object *eval_sequence(sao_object *exps, sao_object *ctx) {
//	if (!(cdr(exps))) return sao_eval(car(exps), ctx);
//	sao_eval(car(exps), ctx);
//	return eval_sequence(cdr(exps), ctx);
//}
sao_stream * sao_stream_new(void* fp,stream_t type)
{
	SAO_NEW_OBJECT(sao_stream,fw);
	fw->fp = fp;
	if(type==stream_char) fw->pos = fp;
	fw->_type = type;
	return fw;
}
//sao_stream * sao_stream_delete(sao_stream* fw) //TODO clean up FileChar 1by1
int sao_peek(sao_stream * fw)
{
	int c = 0;
	FileChar * ptr_head = fw->ptr_head;
	if(ptr_head!=0){
		c = ptr_head->c;
	}
	return c;
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
		if (!(obj))
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
	s->_type = type_string;
	return s;
}
void sao_comment(sao_stream * fw) { int c; for (;;) { c = sao_deq_c(fw); if (c == '\n' || c == SAO_EOF) return; } }
sao_object *sao_load_expr(sao_stream * fw)
{
	int c;
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
			if(SAO_ARGV(l)){ return theSymbol; }
			else{
				while(' '==sao_peek(fw)) c = sao_deq_c(fw);//TODO support \t later
				if('('==sao_peek(fw)){
					c = sao_deq_c(fw);//jump next
				}else{
					return theSymbol;
				}
			}
		}
		if (c == '(') {
			sao_object * list = sao_read_list(fw);
			if(SAO_ARGV(l)){ return list; }
			list = cons(theSymbol,list);
			return list;
		}
		if (c == ')') { return NIL; }
		if (sao_is_digit(c)) return sao_new_integer(sao_read_int(fw, c - '0'));
		if (c == '-' && sao_is_digit(sao_peek(fw)))
			return sao_new_integer(-1 * sao_read_int(fw, sao_deq_c(fw) - '0'));
	}
	return NIL;
}
//TODO has bug to fix, don't use seriously.
void sao_out_expr(char *str, sao_object *el){
	if (str) sao_stdout("%s ", str);
	if (!(el)) { sao_stdout("'()"); return; }//TODO
	if (!(el)) { return; }
	switch (el->_type) {
		case type_string:
			sao_stdout("\"%s\"", el->_string); break;
		case type_symbol:
			sao_stdout("%s", el->_string); break;
		case type_integer:
			sao_stdout("%ld", el->_integer); break;
		case type_native:
			sao_stdout("<function>"); break;
		case type_vector:
			sao_stdout("<vector %d>", el->_len); break;
		case type_list:
			if (is_tagged(el, PROCEDURE)) {
				sao_stdout("<closure>");//lambda
				return;
			}
			int skip=0;
			sao_object **t = &el;
			if(!SAO_ARGV(l)){
				//if(!caller_string){
				//	sao_stdout(" [%s] ",caller_string);
				//}
				//else
				if ((*t)) {
					if((*t)->car && type_symbol == (*t)->car->_type){
						sao_out_expr(0, (*t)->car);//
						skip=1;
					}
				}
			}
			sao_stdout("(");
			while ((*t)) {
				if(!SAO_ARGV(l)){
					if(skip==1){
						skip=0;
					}else{
						sao_stdout(" ");
						sao_out_expr(0, (*t)->car);
					}
				}else{
					sao_stdout(" ");
					sao_out_expr(0, (*t)->car);
				}
				if (((*t)->cdr)) {
					if ((*t)->cdr->_type == type_list) {
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
	if (exp) sao_stdout("DEBUG 666 eval[%d]\n",exp->_type);
	if (!(exp))
	{
		return NIL;
	} else if (exp->_type == type_integer || exp->_type == type_string) {
		return exp;
	} else if (exp->_type == type_symbol) {
		sao_object *s = sao_get_var(exp, ctx);
		if (SAO_ARGV(s) && !(s)) {
			sao_out_expr("WARNING: Unbound symbol:", exp);sao_stdout("\n");
		}
		return s;
	} else if (is_tagged(exp, QUOTE)) {
		return cadr(exp);
	} else if (is_tagged(exp, LAMBDA)) {
		return sao_new_procedure(cadr(exp), cddr(exp), ctx);
	} else if (is_tagged(exp, DEFINE)) {
		if (sao_is_atom(cadr(exp)))
			sao_def_var(cadr(exp), sao_eval(caddr(exp), ctx), ctx);
		else {
			sao_object *closure =
				sao_eval(sao_new_lambda(cdr(cadr(exp)), cddr(exp)), ctx);
			sao_def_var(car(cadr(exp)), closure, ctx);
		}
		return OK;
	} else if (is_tagged(exp, BEGIN)) {
		sao_object *args = cdr(exp);
		for (; (cdr(args)); args = cdr(args))
			sao_eval(car(args), ctx);
		exp = car(args);
		goto tail;
	} else if (is_tagged(exp, IF)) {
		sao_object *predicate = sao_eval(cadr(exp), ctx);
		exp = (sao_not_false(predicate)) ? caddr(exp) : cadddr(exp);
		goto tail;
	} else if (is_tagged(exp, OR)) {
		sao_object *predicate = sao_eval(cadr(exp), ctx);
		exp = (sao_not_false(predicate)) ? caddr(exp) : cadddr(exp);
		goto tail;
	} else if (is_tagged(exp, COND)) {
		sao_object *branch = cdr(exp);
		for (; (branch); branch = cdr(branch)) {
			if (is_tagged(car(branch), ELSE) ||
					sao_not_false(sao_eval(caar(branch), ctx))) {
				exp = cons(BEGIN, cdar(branch));
				goto tail;
			}
		}
		return NIL;
	} else if (is_tagged(exp, SET)) { //TODO SET works in current ctx
		if (sao_is_atom(cadr(exp))){
			sao_set_var(cadr(exp), sao_eval(caddr(exp), ctx), ctx);
		} else {
			sao_object *closure =
				sao_eval(sao_new_lambda(cdr(cadr(exp)), cddr(exp)), ctx);
			sao_set_var(car(cadr(exp)), closure, ctx);
		}
		return OK;
	} else if (is_tagged(exp, LET)) { /* convert to lambda .. */
		sao_object *pointer;
		sao_object *vars = NIL;
		sao_object *vals = NIL;
		if (!(cadr(exp))) return NIL;
		if (sao_is_atom(cadr(exp))) {
			for (pointer = caddr(exp); (pointer); pointer = cdr(pointer))
			{
				vars = cons(caar(pointer), vars);
				vals = cons(cadar(pointer), vals);
			}
			sao_def_var(cadr(exp),
					sao_eval(sao_new_lambda(vars, cdr(cddr(exp))),
						sao_expand(vars, vals, ctx)),
					ctx); /* evaluate lambda */
			exp = cons(cadr(exp), vals);
			goto tail;
		}
		for (pointer = cadr(exp); (pointer); pointer = cdr(pointer)) {
			vars = cons(caar(pointer), vars);
			vals = cons(cadar(pointer), vals);
		}
		exp = cons(sao_new_lambda(vars, cddr(exp)), vals);
		goto tail;
	} else { /* procedure, parameters, body expr, ctx */
		sao_object *proc = sao_eval(car(exp), ctx);
		sao_object *args = eval_list(cdr(exp), ctx);
		if (!(proc)) {
			if(SAO_ARGV(s)){
				sao_out_expr("WARNING: Invalid arguments to sao_eval:", exp);
				sao_stdout("\n");
			}
			return NIL;
		}
		if (proc->_type == type_native){
			sao_stdout("DEBUG 888 native[%d]\n",proc->_native);
			return proc->_native(args);
		}
		if (is_tagged(proc, PROCEDURE)) {
			ctx = sao_expand(cadr(proc), args, cadddr(proc));
			exp = cons(BEGIN, caddr(proc)); /* procedure body */
			goto tail;
		}
	}
	sao_out_expr("Invalid arguments to sao_eval:", exp);
	sao_stdout("\n");
	return NIL;
}
sao_object * sao_parse( sao_stream * fw, int do_eval ) {
	sao_read_line(fw);
	sao_u64 (*microtime)() = ( sao_u64(*)() ) libc(microtime);
	sao_object *rt = NIL;
	for(;;){
		sao_object* exp = sao_load_expr(fw);
		if(exp==SAO_NULL){
			break;
		}
		if ((exp)) {
			if(SAO_ARGV(d)) sao_stdout("%llu: ",microtime());
			if(SAO_ARGV(i)||SAO_ARGV(d)){
				sao_out_expr("<=", exp);
				sao_stdout("\n");
			}
			if (do_eval){
				rt = sao_eval(exp, GLOBAL);
				if(SAO_ARGV(d)) sao_stdout("%llu: ",microtime());
				if(SAO_ARGV(i)||SAO_ARGV(d)){
					if ( (rt)) {
						sao_out_expr("=>", rt);
						sao_stdout("\n");
					}
				}
			}else{
				rt = exp;
			}
		}
	}
	return rt;
}
sao_object * sao_type_check(const char *func, sao_object *obj, type_t type)
{
	if (!(obj)) {
		sao_stderr("Invalid argument to function %s: NIL\n", func);
		libc(exit)(1);
	} else if (obj->_type != type) {
		sao_stderr( "ERR: function %s. expected %s got %s\n",
				func, type_names[type], type_names[obj->_type]);
		libc(exit)(1);
	}
	return obj;
}
#define SAO_CHECK_TYPE(x, t) (sao_type_check(__func__, x, t))

#include "libsaolang.c" //
#define add_sym(s, c) do{c=sao_new_symbol(s);sao_def_var(c,c,GLOBAL);}while(0);
sao_object * sao_init() {
	GLOBAL = sao_expand(NIL, NIL, NIL);
	add_sym("true", TRUE);
	add_sym("false", FALSE);
	add_sym("quote", QUOTE);
	add_sym("lambda", LAMBDA);
	add_sym("procedure", PROCEDURE);

	//TODO to merge three(DEFINE/LET/PROCEDURE ?)
	add_sym("var", DEFINE);
	add_sym("let", LET);
	add_sym("set", SET);
	add_sym("begin", BEGIN);//TODO remove or add END
	add_sym("if", IF);

	add_sym("else", ELSE);
	add_sym("cond", COND);
	add_sym("or", OR);
	add_sym("ok", OK);

//	SAO_ITR(add_sym_list,
//			load,print,read,//io
//			exit,shell,ffi,global,//sys
//			type,cons,car,cdr,setcar,setcdr,//core
//			list,vector,vget,vset,//data structure
//			add,sub,mul,div,cmp,lt,gt,//logic,
//			is_null,is_list,pairq,atomq,eqq,equalq,//helpers
//			);
	return GLOBAL;
}
//////////////////////////////////////////////////////////////////////////////
void print_version(){ sao_stdout(" SaoLang (R) v0.0.5 - Wanjo Chan (c) 2020\n"); }
void print_help(){ sao_stdout("Usage	 : sao [options] [script.sao | -]]\nOptions	 :\n	h:	Help\n	v:	Version\n	i:	Interactive\n	p:	Print final result\n	d:	Dev only\n	e:	Eval\n	s:	Strict mode\n	l:	Lisp syntax\n"); }
int main(int argc, char **argv) {
	ffic_func strcmp = libc(strcmp);
	libc(setmode)(libc(fileno)(libc(stdin)),0x8000/*O_BINARY*/);
	ht_resize(16384-1);//TODO improve hashtable later
	sao_init();
	saolang_init();
	//ARGV = cons(NIL,NIL);
	ARGV = sao_expand(NIL, NIL, NIL);
	char * script_file = "-";
	int found_any = 0;
	if(argc>1){
		char argv_line[512] = {'_','(',0};
		char * argv_ptr = &argv_line[2];
		for(int i=1;i<argc;i++){*argv_ptr++=' ';char*wk=argv[i];while(*wk)*argv_ptr++=*wk++;}
		*argv_ptr++ = ')'; //*argv_ptr++ = '\0';
		sao_stream * fw = sao_stream_new(argv_line,stream_char);
		sao_object * arg_expr = sao_load_expr( fw );
		sao_object * pos = cdr(arg_expr);
		while(pos){
			sao_object * _car = car(pos);
			char * string_or_name;
			int i_val = 0;
			if( (_car&&!_car->_type) ){
				sao_object* _caar = car(_car);
				string_or_name = _caar->_string;
				sao_object* _cadar = car(cdr(_car));
				i_val = (_cadar && _cadar->_type==type_integer) ? _cadar->_integer : 0;
			}else{
				string_or_name = _car->_string;
				i_val = 1;
			}
			sao_def_var(sao_new_symbol(string_or_name), sao_new_integer(i_val), ARGV);//@ref sao_get_var
			int found = 0;
			for(int i=0;i<=argt_h;i++){
				if(string_or_name[0]==argt_names[i][0]){
					argta[i]+=i_val;
					found=1;break;
				}
			}
			if(!found) script_file = string_or_name;
			else found_any++;
			pos = cdr(pos);
		}
		libc(free)(fw);//
		sao_def_var(ARGV,ARGV,GLOBAL);//for later use
	}
	if(!found_any){ print_help();SAO_ARGV(i)++; SAO_ARGV(v)++; }
	else { if(SAO_ARGV(i)){SAO_ARGV(v)++; found_any++;} }
	if(SAO_ARGV(v)){ print_version();if(found_any==1)libc(exit)(0); }
	if(SAO_ARGV(h)){ print_help();libc(exit)(0);}
	void* fp = ((!strcmp("-",script_file)) ? (void*)libc(stdin) : (void*)libc(fopen)(script_file, "r"));
	if(!fp) sao_error("FILE NOT FOUND: %s",script_file);
	sao_stream * fw = sao_stream_new(fp,stream_file);
	sao_object * result = sao_parse( fw, 1/*eval*/ );
	if(SAO_ARGV(p)){ sao_out_expr(0,result);sao_stdout("\n"); }
	libc(fclose)(fp);//
	libc(free)(fw);//
	return 0;
}
