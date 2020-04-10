//WARNING: do not go production unless gc() is done!
#define SAO_VERSION "0.0.7"
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
#define SAO_EVAL(...) SAO_EVAL1(SAO_EVAL1(SAO_EVAL1(__VA_ARGS__)))
#define SAO_EVAL1(...) SAO_EVAL2(SAO_EVAL2(SAO_EVAL2(__VA_ARGS__)))
#define SAO_EVAL2(...) SAO_EVAL3(SAO_EVAL3(SAO_EVAL3(__VA_ARGS__)))
#define SAO_EVAL3(...) SAO_EVAL4(SAO_EVAL4(SAO_EVAL4(__VA_ARGS__)))
#define SAO_EVAL4(...) SAO_EVAL5(SAO_EVAL5(SAO_EVAL5(__VA_ARGS__)))
#define SAO_EVAL5(...) __VA_ARGS__
#define SAO_WHILE(m,v, ...) SAO_WHEN(SAO_NOT(SAO_IS_PAREN(v ()))) (SAO_OBSTRUCT(m) (v) SAO_OBSTRUCT(SAO_WHILE_INDIRECT) () (m, __VA_ARGS__))
#define SAO_WHILE_INDIRECT() SAO_WHILE 
#define SAO_WHILE1(m,v1,v, ...) SAO_WHEN(SAO_NOT(SAO_IS_PAREN(v ()))) (SAO_OBSTRUCT(m) (v1,v) SAO_OBSTRUCT(SAO_WHILE_INDIRECT1) () (m,v1,__VA_ARGS__))
#define SAO_WHILE_INDIRECT1() SAO_WHILE1
#define SAO_ITR(mmm,qqq,...) SAO_EVAL( SAO_WHILE( mmm,qqq,__VA_ARGS__ ) )
#define SAO_ITR1(mmm,mm1,qqq,...) SAO_EVAL( SAO_WHILE1( mmm,mm1,qqq,__VA_ARGS__) )
//////////////////////////////////////////////////////////////////////////////
#define DEFINE_ENUM_LIBC(n) libc_##n,
enum { SAO_ITR(DEFINE_ENUM_LIBC,fprintf,malloc,memset,memcpy,strcpy,strlen,strdup,strcmp,strchr,strcat,printf,putc,getc,isalnum,isdigit,isalpha,fopen,fread,fgets,fclose,feof,fputc,fflush,free,system,  usleep,msleep,sleep,setmode,fileno,stdin,stdout,stderr,microtime,exit) };
#define libc(f) libc_(libc_##f,#f)
#include "ffic.h" //github.com/partnernetsoftware/ffic/blob/master/src/ffic.h
ffic_func libc_a[libc_exit+1];
ffic_func libc_(int fi,const ffic_string fn){ return libc_a[fi]?libc_a[fi]:(libc_a[fi]=ffic("c",fn)); }
#define SAO_NULL ((void*)0)
#define SAO_EOF (-1)
#define SAO_CAT_COMMA(a,b) a##b,
void* sao_calloc(long _sizeof){return libc(memset)(libc(malloc)(_sizeof),0,_sizeof);}
#define SAO_NEW_C(t,...) sao_calloc( sizeof(t) SAO_IF(SAO_IS_PAREN(__VA_ARGS__ ()))(SAO_EAT(),*(__VA_ARGS__)) )
#define SAO_NEW_OBJECT(t,n,...) t*n=SAO_NEW_C(t,__VA_ARGS__);
#define define_enum_name(n) #n,
#define define_enum_item(p,v) p##_##v,
#define define_enum_t(n, ...) typedef enum { SAO_ITR1(define_enum_item,n,__VA_ARGS__) } n##_t;
#define define_map_arr(n, ...) ffic_string n##_names[] = { SAO_ITR(define_enum_name,__VA_ARGS__) };
#define define_map(n, ...) define_enum_t(n,__VA_ARGS__) define_map_arr(n,__VA_ARGS__)
#define sao_stderr(...) libc(fprintf)(libc(stderr),__VA_ARGS__)
#define sao_stdout(...) libc(printf)(__VA_ARGS__)
#define sao_error(...) do{sao_stderr(__VA_ARGS__);sao_stderr("\n");libc(exit)(1);}while(0)
#define sao_warn(...) sao_stderr(__VA_ARGS__);
define_map(argt, i,p,d,v,e,s,l,h);
int argta[argt_h+1];
#define SAO_ARGV(x) argta[argt_##x]
define_map(ctype, long,double,int,float,i64,u64,string,struct,pointer);//etc TODO
define_map(stream, file,char);
define_map(type, list,integer,double,symbol,string,native,vector,table);
typedef struct _sao_obj sao_obj,*p_sao_obj;
typedef p_sao_obj (*native_t)(p_sao_obj );
struct _sao_obj {
	//union {
		//void* ptr3[3];//for future speed improving
		//struct {
			union{ void* ptr; type_t _type; };
			union {
				struct { p_sao_obj car; p_sao_obj cdr; }; 
				struct { p_sao_obj* _vector; long _len; };
				struct { p_sao_obj* _table; long _size; };
				struct { ffic_string _string; long _depth;};
				struct { native_t _native; ffic_string _ffi;/* $sharelib.$method */ };
				long _integer;
				double _double;//TODO with basic math.
			};
		//};
	//};
};
p_sao_obj sao_new(sao_obj tpl) {
	//TODO gc()
	sao_obj * ret = libc(malloc)(sizeof(sao_obj));
	libc(memcpy)(ret,&tpl,sizeof(sao_obj));
	switch(ret->_type){
		case type_symbol:
			//TODO jot the symbol depth
			//	p_sao_obj ret = sao_table_lookup(g_symbol_holder,s);
			//	if (!(ret)) {
			//		ret = sao_alloc(type_symbol);
			//		ret->_string = libc(strdup)(s);
			//		//ht_insert(ret);
			//		sao_table_insert(g_symbol_holder,ret);
			//	}else{
			//		//TODO need using depth also?
			//		if(!libc(strcmp)(ret->_string,s)){
			//			//sao_warn("sao_table_insert again same for (%s)?\n",s);
			//			//sao_table_insert(g_symbol_holder,ret);
			//		}else{
			//			sao_error("g_symbol_holder full? (%s,%s)\n",ret->_string,s);
			//		//	int newsize = 2*(gHTable_len+1)-1 ;
			//		//	ht_resize( newsize );
			//		//	return sao_new_symbol(s);
			//		}
			//	}
		case type_string:
			ret->_string=libc(strdup)(ret->_string);break;
		case type_vector:
			ret->_vector = SAO_NEW_C(p_sao_obj,ret->_len);break;//
		case type_table:
			ret->_table = SAO_NEW_C(p_sao_obj,ret->_size);break;//
		case type_native: //TODO
			break;
		case type_double:
		case type_integer:
		case type_list://TODO
			break;
	}
	return ret;
}
#define define_sao_tag(n) p_sao_obj SAO_TAG_##n=SAO_NULL;
#define LIST_SAO_TAG true,false,quote,set,let,var,procedure,if,lambda,begin,or,ok,else,cond,error
SAO_ITR(define_sao_tag, nil,argv,global);
SAO_ITR(define_sao_tag, SAO_EXPAND(LIST_SAO_TAG));
typedef struct _FileChar {
	int c;
	struct _FileChar * ptr_prev;
	struct _FileChar * ptr_next;
} FileChar;
typedef struct {
	stream_t _type;
	void* fp;
	ffic_string pos;//for stream_char only
	//FileChar * ptr_start;//TODO for gc()
	FileChar * ptr_head;
	FileChar * ptr_last;
} sao_stream;

p_sao_obj sao_load_expr(sao_stream * fw);

#define sao_is_list(x) (x&&!x->_type)
#define sao_is_atom(x) (x&&x->_type)
#define sao_is_digit(c) ((long)libc(isdigit)(c))
#define sao_is_alpha(c) ((long)libc(isalpha)(c))
#define sao_is_alphanumber(c) ((long)libc(isalnum)(c))

//p_sao_obj g_symbol_holder = SAO_NULL;

p_sao_obj cons(p_sao_obj car, p_sao_obj cdr) { p_sao_obj ret = sao_new((sao_obj){._type=type_list,.car=car,.cdr=cdr});return ret; }
p_sao_obj car(p_sao_obj x) { return sao_is_list(x)?x->car:SAO_TAG_nil; }
p_sao_obj cdr(p_sao_obj x) { return sao_is_list(x)?x->cdr:SAO_TAG_nil; }
p_sao_obj caar(p_sao_obj x) { return (sao_is_list(x)&&sao_is_list(x->car))? x->car->car : SAO_TAG_nil; }
p_sao_obj cdar(p_sao_obj x) { return (sao_is_list(x)&&sao_is_list(x->car))? x->car->cdr : SAO_TAG_nil; }
p_sao_obj cadr(p_sao_obj x) { return (sao_is_list(x)&&sao_is_list(x->cdr))? x->cdr->car : SAO_TAG_nil; }
p_sao_obj cddr(p_sao_obj x) { return (sao_is_list(x)&&sao_is_list(x->cdr))? x->cdr->cdr : SAO_TAG_nil; }
p_sao_obj cadar(p_sao_obj x) { return (sao_is_list(x)&&sao_is_list(x->car)&&sao_is_list(x->car->cdr))? x->car->cdr->car:SAO_TAG_nil; }
p_sao_obj caddr(p_sao_obj x) { return (sao_is_list(x)&&sao_is_list(x->cdr)&&sao_is_list(x->cdr->cdr))? x->cdr->cdr->car:SAO_TAG_nil; }
p_sao_obj cdddr(p_sao_obj x) { return (sao_is_list(x)&&sao_is_list(x->cdr)&&sao_is_list(x->cdr->cdr))? x->cdr->cdr->cdr:SAO_TAG_nil; }
p_sao_obj cdadr(p_sao_obj x) { return (sao_is_list(x)&&sao_is_list(x->cdr)&&sao_is_list(x->cdr->car))? x->cdr->car->cdr:SAO_TAG_nil; }
p_sao_obj cadddr(p_sao_obj x) { return (sao_is_list(x)&&sao_is_list(x->cdr)&&sao_is_list(x->cdr->cdr)&&sao_is_list(x->cdr->cdr->cdr))? x->cdr->cdr->cdr->car:SAO_TAG_nil; }
#define sao_new_symbol(s) sao_new((sao_obj){._type=type_symbol,._string=s})
#define sao_new_lambda(params,body) cons(SAO_TAG_lambda, cons(params,body))
#define sao_new_procedure(params,body,ctx) cons(SAO_TAG_procedure, cons(params, cons(body, cons(ctx, SAO_TAG_nil))))
#define sao_new_table(s) sao_new((sao_obj){._type=type_table, ._size=s})
#define sao_new_string(s) sao_new((sao_obj){._type=type_string, ._string=s})
#define sao_new_integer(i) sao_new((sao_obj){._type=type_integer, ._integer=i})
#define sao_new_native(x,n) sao_new((sao_obj){._type=type_native, ._native=x,._ffi=n})

long sao_table_hash(const ffic_string s, int ht_len) {
	long h = 0;
	ffic_string u = s;
	while (*u) { h = (h * 256 + (*u)) % ht_len; u++; }
	return h;
}
p_sao_obj sao_table_lookup(p_sao_obj holder,ffic_string s) {
	if(!holder) sao_error("sao_table_lookup(holder)\n");
	p_sao_obj* the_table = holder->_table;
	if(!the_table) sao_error("empty _table?");
	if(!holder->_size) sao_error("empty _table.size?");
	long h = sao_table_hash(s, holder->_size);
	return the_table[h];
}
p_sao_obj sao_table_insert(p_sao_obj holder,p_sao_obj key_obj){
	if(!holder) sao_error("sao_table_insert(holder)\n");
	if(!key_obj) sao_error("sao_table_insert(key_obj)\n");

	p_sao_obj* the_table = holder->_table;
	if(!the_table) sao_error("empty _table?");
	if(!holder->_size) sao_error("empty _table.size?");
	long h = sao_table_hash(key_obj->_string, holder->_size);
	if(the_table[h]){
		//sao_warn("TODO sao_table_insert table need to resize (%d,%s)?\n",h,key_obj->_string);
	}
	//if(!the_table || (SAO_NULL != the_table[h] && SAO_NULL!=the_table[h]->_string)){
	//	int size = 2*(holder->size+1)-1 ;
	//	sao_tbl_resize(holder, size);
	//	the_table = sao_tbl_resize(holder, key_obj);//again
	//}
	the_table[h]= key_obj;
	return holder;
}
p_sao_obj sao_tbl_resize(p_sao_obj holder,int size){
	//if(!holder)
	if(!holder)
		holder = sao_new_table(size);
	//TMP...(fake resize first) TODO to implement the real resize soon
	else{
		holder->_table = SAO_NEW_C(p_sao_obj,size);//TMP
		holder->_size = size;
	}
	return holder;
}
//p_sao_obj sao_append(p_sao_obj l1, p_sao_obj l2) {
//	if (!(l1)) return l2;
//	return cons(car(l1), sao_append(cdr(l1), l2));
//}
p_sao_obj sao_reverse(p_sao_obj list, p_sao_obj first) {
	p_sao_obj rt = (!(list)) ? first :
		sao_reverse(cdr(list), cons(car(list), first));
	return rt;
}
p_sao_obj sao_is_eq(p_sao_obj x, p_sao_obj y) {
	do{
		if (x == y) return x;
		if (!x || !y) break;
		if (x->_type != y->_type) break;
		switch (x->_type) {
			case type_integer: if(x->_integer == y->_integer) return x;
			case type_symbol:
			case type_string: if(!libc(strcmp)(x->_string, y->_string)) return x;
			default: break;
		}
	}while(0);
	return SAO_TAG_nil;
}
//p_sao_obj sao_is_tagged(p_sao_obj cell, p_sao_obj tag) { return (cell&&!cell->_type) ? sao_is_eq(car(cell),tag) : SAO_TAG_nil; }
p_sao_obj sao_is_tagged(p_sao_obj cell, p_sao_obj tag) { return sao_is_list(cell) ? sao_is_eq(car(cell),tag) : SAO_TAG_nil; }
int sao_list_len(p_sao_obj expr) { return (expr) ? (1+sao_list_len(cdr(expr))):0; } //TODO improve ?
int sao_deq_c(sao_stream *fw)
{
	int c = -2;//
	FileChar * ptr_head = fw->ptr_head;
	if(ptr_head!=SAO_NULL){ c = ptr_head->c; fw->ptr_head=ptr_head->ptr_next; }
	return c;
}
int sao_enq_c(sao_stream* fw,int k){
	SAO_NEW_OBJECT(FileChar,fc);
	fc->c = k; 
	fc->ptr_prev= fw->ptr_last;
	//if(SAO_NULL==fw->ptr_start){ fw->ptr_start = fc; }
	if(SAO_NULL==fw->ptr_head){ fw->ptr_head = fc; }
	if(SAO_NULL!=fw->ptr_last){ fw->ptr_last->ptr_next = fc; }
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
			if (fw->pos==0) sao_stderr("DEBUG no pos?");
			if (*(fw->pos)==0){
				sao_stderr("DEBUG end?");
				break;
			}
		}
		ffic_func fgets = libc(fgets);
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
p_sao_obj sao_expand(p_sao_obj var, p_sao_obj val, p_sao_obj ctx) {
	return cons(cons(var, val), ctx);
}
//TODO should using g_symbol_holder later
p_sao_obj sao_get_var(p_sao_obj var, p_sao_obj ctx) {
	while ((ctx)) {
		p_sao_obj frame = car(ctx);
		p_sao_obj vars = car(frame);
		p_sao_obj vals = cdr(frame);
		while ((vars)) {
			if (sao_is_eq(car(vars), var))
				return car(vals);
			vars = cdr(vars);
			vals = cdr(vals);
		}
		ctx = cdr(ctx);
	}
	return SAO_TAG_nil;
}
//TODO replace var->val when found.
p_sao_obj sao_set_var(p_sao_obj var, p_sao_obj val, p_sao_obj ctx) {
	while ((ctx)) {
		p_sao_obj frame = car(ctx);
		p_sao_obj vars = car(frame);
		p_sao_obj vals = cdr(frame);
		while ((vars)) {
			if (sao_is_eq(car(vars), var)) {
				vals->car = val;
				return car(vals);
				//return SAO_TAG_nil;
			}
			vars = cdr(vars);
			vals = cdr(vals);
		}
		ctx = cdr(ctx);
	}
	return val;
}
//TODO 
p_sao_obj sao_def_var(p_sao_obj var, p_sao_obj val, p_sao_obj ctx)
{
	if(!ctx) sao_error("ASSERT: sao_def_var need ctx");
	p_sao_obj frame = car(ctx);
	if(!frame) sao_error("ASSERT: sao_def_var(): found no car in ctx");
	p_sao_obj vars = car(frame);
	p_sao_obj vals = cdr(frame);
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
sao_stream * sao_stream_new(void* fp,stream_t type)
{
	SAO_NEW_OBJECT(sao_stream,fw);
	fw->fp = fp;
	if(type==stream_char) fw->pos = fp;
	fw->_type = type;
	return fw;
}
//sao_stream * sao_stream_delete(sao_stream* fw) //TODO clean up 
int sao_peek(sao_stream * fw)
{
	int c = 0;
	FileChar * ptr_head = fw->ptr_head;
	if(ptr_head!=0){ c = ptr_head->c; }
	return c;
}
p_sao_obj sao_read_symbol(sao_stream * fw, char start)
{
	char buf[128];
	buf[0] = start;
	int i = 1;
	while (sao_is_alphanumber(sao_peek(fw)) || libc(strchr)(type_symbolS, sao_peek(fw)))
	{
		if (i >= 128) sao_error("Symbol name too long - maximum length 128 characters");
		buf[i++] = sao_deq_c(fw);
	}
	buf[i] = '\0';
	return sao_new_symbol(buf);
}
// TODO read number(expecially float/double)
int sao_read_int(sao_stream * fw, int start)
{
	while ( sao_is_digit(sao_peek(fw)) ) start = start * 10 + (sao_deq_c(fw) - '0');
	return start;
}
p_sao_obj sao_read_list(sao_stream * fw)
{
	p_sao_obj obj;
	p_sao_obj cell = SAO_TAG_nil;
	for (;;) {
		obj = sao_load_expr(fw);
		if (!(obj))
			return sao_reverse(cell, SAO_TAG_nil);
		cell = cons(obj, cell);
	}
	return SAO_TAG_nil;
}
p_sao_obj sao_read_str(sao_stream * fw) {
	char buf[1024]; int i = 0; int c;//TODO support longer string..
	while ((c = sao_deq_c(fw)) != '\"') {
		if (c == SAO_EOF) return SAO_TAG_nil;
		if (i >= 1024) sao_error("String too long - maximum length 1024 characters");
		buf[i++] = (char) c;
	}
	buf[i] = '\0';
	return sao_new_string(buf);
}
void sao_comment(sao_stream * fw) { int c; for (;;) { c = sao_deq_c(fw); if (c == '\n' || c == SAO_EOF) return; } }
p_sao_obj sao_load_expr(sao_stream * fw) //TODO add ,depth ?
{
	int c;
	for (;;) {
		p_sao_obj theSymbol = SAO_TAG_nil;
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
			case '\"': return sao_read_str(fw);
		}
		if (c == ';' || c=='#' || (c=='/'&&'/'==sao_peek(fw))){ sao_comment(fw); continue; }
		if (c == '\''){
			p_sao_obj child = sao_load_expr(fw);
			return cons(SAO_TAG_quote, cons(child, SAO_TAG_nil));
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
			p_sao_obj list = sao_read_list(fw);
			if(SAO_ARGV(l)){ return list; }
			list = cons(theSymbol,list);
			return list;
		}
		if (c == ')') {
			//TODO check depth, and should return error if the pracket is not correct
			return SAO_TAG_nil;
		}
		//TODO parsing interger/number need upgrade algo soon:
		if (sao_is_digit(c))
			return sao_new_integer(sao_read_int(fw, c - '0'));
			//return sao_new( (sao_obj) {._type=type_integer, ._integer=sao_read_int(fw, c - '0')} );
		if (c == '-' && sao_is_digit(sao_peek(fw)))
			return sao_new_integer(-1*sao_read_int(fw, c - '0'));
			//return sao_new( (sao_obj) {._type=type_integer, ._integer=-1*sao_read_int(fw, c - '0')} );
	}
	return SAO_TAG_nil;
}
//TODO has bug to fix, don't use seriously.
void sao_out_expr(ffic_string str, p_sao_obj el){
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
		case type_double:
			sao_stdout("%f", el->_double); break;
		case type_native:
			sao_stdout("<function>"); break;
		case type_vector:
			sao_stdout("<vector %d>", el->_len); break;
		case type_table:
			sao_stdout("<table %d>", el->_size); break;
		case type_list:
			if (sao_is_tagged(el, SAO_TAG_procedure)) {
				sao_stdout("<closure>");//lambda
				return;
			}
			int skip=0;
			p_sao_obj *t = &el;
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
#include "libsaolang.c" //@ref sao_eval() and saolang_init() 
p_sao_obj sao_parse( sao_stream * fw, int do_eval ) {
	sao_read_line(fw);
	ffic_u64 (*microtime)() = ( ffic_u64(*)() ) libc(microtime);
	p_sao_obj rt = SAO_TAG_nil;
	p_sao_obj exp;
	while((exp=sao_load_expr(fw))){
		if(SAO_ARGV(d)) sao_stdout("%llu: ",microtime());
		if(SAO_ARGV(i)||SAO_ARGV(d)){ sao_out_expr("<=", exp); sao_stdout("\n"); }
		if (do_eval){
			rt = sao_eval(exp, SAO_TAG_global);
			if(SAO_ARGV(d)) sao_stdout("%llu: ",microtime());
			if((SAO_ARGV(i)||SAO_ARGV(d))&&rt){sao_out_expr("=>", rt); sao_stdout("\n");}
		}else{
			rt = exp;
		}
	}
	return rt;
}
//#define add_sym_x(x) do{SAO_TAG_##x=sao_new_symbol(#x);sao_def_var(SAO_TAG_##x,SAO_TAG_##x,SAO_TAG_global);}while(0);
//#define add_sym_x(x) {SAO_TAG_##x=sao_new_symbol(#x);sao_def_var(SAO_TAG_##x,SAO_TAG_##x,SAO_TAG_global);}
#define add_sym_x(x) SAO_TAG_##x=sao_new_symbol(#x);sao_def_var(SAO_TAG_##x,SAO_TAG_##x,SAO_TAG_global);
void print_version(){ sao_stdout(" SaoLang (R) v" SAO_VERSION " - Wanjo Chan (c) 2020\n"); }
void print_help(){ sao_stdout("Usage	 : sao [options] [script.sao | -]]\nOptions	 :\n	h:	Help\n	v:	Version\n	i:	Interactive\n	p:	Print final result\n	d:	Dev only\n	e:	Eval\n	s:	Strict mode\n	l:	Lisp syntax\n"); }
int main(int argc,char **argv, char** envp) {
	ffic_func strcmp = libc(strcmp);
	libc(setmode)(libc(fileno)(libc(stdin)),0x8000/*O_BINARY*/);
	//g_symbol_holder = sao_new_table(65536-1);//TODO auto expand
	SAO_TAG_global = sao_expand(SAO_TAG_nil, SAO_TAG_nil, SAO_TAG_nil);
	SAO_TAG_argv = sao_expand(SAO_TAG_nil, SAO_TAG_nil, SAO_TAG_nil);
	SAO_ITR(add_sym_x, SAO_EXPAND(LIST_SAO_TAG));//core tags
	saolang_init();
	ffic_string script_file = "-";
	int found_any = 0;
	if(argc>1){
		char argv_line[512] = {'_','(',0};
		ffic_string argv_ptr = &argv_line[2];
		for(int i=1;i<argc;i++){*argv_ptr++=' ';ffic_string wk=argv[i];while(*wk)*argv_ptr++=*wk++;}
		*argv_ptr++ = ')'; //*argv_ptr++ = '\0';
		sao_stream * fw = sao_stream_new(argv_line,stream_char);
		p_sao_obj arg_expr = sao_load_expr( fw );
		p_sao_obj pos = cdr(arg_expr);
		while(pos){
			p_sao_obj _car = car(pos);
			ffic_string string_or_name;
			int i_val = 0;
			if( (_car&&!_car->_type) ){
				p_sao_obj _caar = car(_car);
				string_or_name = _caar->_string;
				p_sao_obj _cadar = car(cdr(_car));
				i_val = (_cadar && _cadar->_type==type_integer) ? _cadar->_integer : 0;
			}else{
				string_or_name = _car->_string;
				i_val = 1;
			}
			sao_def_var(sao_new_symbol(string_or_name),
					//sao_new((sao_obj) {._type=type_integer, ._integer=(i_val)} ),r
					sao_new_integer(i_val),
					SAO_TAG_argv);//@ref sao_get_var
			int found = 0;
			for(int i=0;i<=argt_h;i++) if(string_or_name[0]==argt_names[i][0]){ argta[i]+=i_val; found=1;break; }
			if(!found) script_file = string_or_name; else found_any++;
			pos = cdr(pos);
		}
		libc(free)(fw);//
		sao_def_var(SAO_TAG_argv,SAO_TAG_argv,SAO_TAG_global);//for later use
	}
	if(!found_any){ print_help();SAO_ARGV(i)++; SAO_ARGV(v)++; }
	else { if(SAO_ARGV(i)){SAO_ARGV(v)++; found_any++;} }
	if(SAO_ARGV(v)){ print_version();if(found_any==1)libc(exit)(0); }
	if(SAO_ARGV(h)){ print_help();libc(exit)(0);}
	void* fp = ((!strcmp("-",script_file)) ? (void*)libc(stdin) : (void*)libc(fopen)(script_file, "r"));
	if(!fp) sao_error("FILE NOT FOUND: %s",script_file);
	sao_stream * fw = sao_stream_new(fp,stream_file);
	p_sao_obj result = sao_parse( fw, 1/*eval*/ );
	if(SAO_ARGV(p)){ sao_out_expr(0,result);sao_stdout("\n"); }
	libc(fclose)(fp); libc(free)(fw);
	return 0;
}
