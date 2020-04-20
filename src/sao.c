//WARNING: dont go production unless gc() is done
#define SAO_VERSION "0.0.8"
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
#define SAO_QUOTE(sth) #sth
//////////////////////////////////////////////////////////////////////////////
#define DEFINE_ENUM_LIBC(n) libc_##n,
enum { SAO_ITR(DEFINE_ENUM_LIBC,fprintf,malloc,memset,memcpy,strcpy,strlen,strdup,strcmp,strchr,strcat,printf,putc,getc,isalnum,isdigit,isalpha,fopen,fread,fgets,fgetc,fclose,feof,fputc,fflush,free,system,atol,atoi,atof,  usleep,msleep,sleep,setmode,fileno,stdin,stdout,stderr,microtime,exit) };
#define libc(f) libc_(libc_##f,#f)
#include "ffic.h" //github.com/partnernetsoftware/ffic/blob/master/src/ffic.h
ffic_func libc_a[libc_exit+1];
ffic_func libc_(int fi,const ffic_string fn){ return libc_a[fi]?libc_a[fi]:(libc_a[fi]=ffic("c",fn)); }
#define SAO_NULL (void*)0  //this one is faster then ((void*)0) or just 0
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
define_map(stream, file,char);//
define_map(type,   list,vector,long,double,symbol,string);
typedef struct _sao_obj_v sao_obj_v, *p_sao_obj_v;
typedef struct _sao_obj sao_obj,*p_sao_obj;
typedef p_sao_obj (*native_t)(p_sao_obj args,p_sao_obj ctx);
//TODO merege _len /_depth/_wdepth/
#define SAO_OBJ_V union {\
	struct { p_sao_obj car; p_sao_obj cdr; }; \
	struct { union {\
		p_sao_obj* _vector; \
		ffic_string _string;\
		ffic_wstring _wstring;\
	}; long _len; };\
	struct { native_t _native; ffic_string _ffi;};\
	long _long;\
	double _double;\
}
struct _sao_obj_v { SAO_OBJ_V; };
struct _sao_obj { union{ void* ptr; int _type; }; ffic_string _raw; union{ SAO_OBJ_V; sao_obj_v v;}; };
p_sao_obj sao_new(sao_obj tpl) {
	//TODO gc()
	sao_obj * ret = libc(malloc)(sizeof(sao_obj));
	libc(memcpy)(ret,&tpl,sizeof(sao_obj));
	switch(ret->_type){
		case type_symbol:
		case type_string:
			ret->_string=libc(strdup)(ret->_string);
			ret->_raw=libc(strdup)(ret->_string);
			break;
	}
	return ret;
}
#define define_sao_tag(n) p_sao_obj SAO_TAG_##n=SAO_NULL;
SAO_ITR(define_sao_tag, nil,vector,table,argv,global,begin,end,quote);
typedef struct _FileChar { int c; struct _FileChar * ptr_prev; struct _FileChar * ptr_next; } FileChar;
typedef struct {
	stream_t _type;
	void* fp;
	ffic_string pos;//for stream_char only
	//FileChar * ptr_start;//TODO for gc()
	FileChar * ptr_head;
	FileChar * ptr_last;
} sao_stream;
p_sao_obj sao_load_expr(sao_stream * fw);
ffic_func_d sao_atof;
ffic_func_l sao_atol;
ffic_func_i sao_strchr;
ffic_func_i sao_strcmp;
#define sao_is_list(x) (x&&!x->_type)
#define sao_is_atom(x) (x&&x->_type)
#define sao_is_symbol(x) (x&&x->_type==type_symbol)
#define sao_is_digit(c) ((long)libc(isdigit)(c))
#define sao_is_alpha(c) ((long)libc(isalpha)(c))
#define sao_is_alphanumber(c) ((long)libc(isalnum)(c))
#define sao_new_list(a,d) sao_new((sao_obj){.car=a,.cdr=d})
#define sao_new_symbol(s) sao_new((sao_obj){._type=type_symbol,._string=s})
#define sao_new_string(s) sao_new((sao_obj){._type=type_string, ._string=s})
#define sao_new_long(i) sao_new((sao_obj){._type=type_long, ._long=i})
#define sao_new_double(d) sao_new((sao_obj){._type=type_double, ._double=d})
p_sao_obj cons(p_sao_obj a, p_sao_obj d){return sao_new_list(a,d);}
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
p_sao_obj cadddr(p_sao_obj x) { return (sao_is_list(x)&&sao_is_list(x->cdr)&&sao_is_list(x->cdr->cdr)&&sao_is_list(x->cdr->cdr->cdr))? x->cdr->cdr->cdr->car:SAO_TAG_nil; } //TODO macro sao_list_path(x,d,d,d,a) => x->cdr->cdr->cdr->car when compile...
p_sao_obj sao_is_eq(p_sao_obj x, p_sao_obj y) {
	do{
		if (x == y) return x;
		if (!x || !y) break;
		if (x->_type != y->_type) break;
		switch (x->_type) {
			case type_long: if(x->_long == y->_long) return x;
			case type_symbol:
			case type_string: if(!sao_strcmp(x->_string, y->_string)) return x;
		}
	}while(0);
	return SAO_TAG_nil;
}
p_sao_obj sao_append(p_sao_obj L1, p_sao_obj L2) { return (L1)?cons(car(L1), sao_append(cdr(L1), L2)) : L2; }
p_sao_obj sao_reverse(p_sao_obj L, p_sao_obj F) { return (!L) ? F: sao_reverse(cdr(L), cons(car(L), F)); }
int sao_list_len(p_sao_obj expr) { return (expr) ? (1+sao_list_len(cdr(expr))):0; } 
int sao_deq_c(sao_stream *fw)
{
	int c = '\n';
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
int sao_read_line(sao_stream* fw) 
{
	int line_num = 0;
	ffic_func feof = libc(feof);
	do{
		if(fw->_type==stream_file){
			if(!fw->fp) sao_error("FILE NOT FOUND?");
			if(feof(fw->fp)){ sao_enq_c(fw,SAO_EOF); break; }
		}else{
			if (fw->pos==0) sao_stderr("DEBUG no pos??");//should not see??
			if (*(fw->pos)==0){
				sao_stderr("DEBUG end??");//should not see?
				sao_enq_c(fw,SAO_EOF);
				break;
			}
		}
		ffic_func putc = libc(putc);
		ffic_func_i fgetc = (ffic_func_i) libc(fgetc);
		if(fw->_type==stream_file){
			if(SAO_ARGV(i)){ sao_stdout("> "); }
			for(int c,cc;;){
				cc = c = fgetc(fw->fp);
				sao_enq_c(fw,cc);
				if(c=='\n') line_num++;
				if(c==SAO_EOF||c=='\n')break;
			}
		}else{
			while( *(fw->pos)!=0 ){
				if('\n'==sao_enq_c(fw,(*(fw->pos)))){ line_num++; }
				fw->pos++;
			}
			sao_enq_c(fw,SAO_EOF);
		}
	}while(0);
	return line_num;
}
//////////////////////////////////////////////////////////////////////////////
//@ref sao_eval
p_sao_obj sao_get_var(p_sao_obj var, p_sao_obj ctx) {
	while ((ctx)) {
		p_sao_obj frame = car(ctx);
		p_sao_obj vars = car(frame);
		p_sao_obj vals = cdr(frame);
		while ((vars)) {
			if (sao_is_eq(car(vars), var)) return car(vals);
			vars = cdr(vars);
			vals = cdr(vals);
		}
		ctx = cdr(ctx);
	}
	return SAO_TAG_nil;
}
//:replace var->val when found.
p_sao_obj sao_set(p_sao_obj var, p_sao_obj val, p_sao_obj ctx) {
	while ((ctx)) {
		p_sao_obj frame = car(ctx);
		p_sao_obj vars = car(frame);
		p_sao_obj vals = cdr(frame);
		while ((vars)) {
			if (sao_is_eq(car(vars), var)) {
				vals->car = val;
				return car(vals);//
				//return SAO_TAG_nil;
			}
			vars = cdr(vars);
			vals = cdr(vals);
		}
		ctx = cdr(ctx);
	}
	return val;
}
//TODO  merge with sao_set
p_sao_obj sao_var(p_sao_obj var, p_sao_obj val, p_sao_obj ctx)
{
	if(!ctx) sao_error("ASSERT: sao_var() need ctx");
	p_sao_obj frame = car(ctx);
	if(!frame) sao_error("ASSERT: sao_var() found no car in ctx");
	p_sao_obj vars = car(frame);
	p_sao_obj vals = cdr(frame);
	while ((vars)) {
		if (sao_is_eq(var, car(vars))) { vals->car = val; return val; }
		vars = cdr(vars);
		vals = cdr(vals);
	}
	frame->car = cons(var, car(frame));
	frame->cdr = cons(val, cdr(frame));
	return val;
}
//////////////////////////////////////////////////////////////////////////////
sao_stream * sao_stream_new(void* fp,stream_t type)
{
	SAO_NEW_OBJECT(sao_stream,fw);
	fw->fp = fp;
	if(type==stream_char) fw->pos = fp;
	fw->_type = type;
	return fw;
}
double sao_eps = 0.0000001;
p_sao_obj sao_convert_default(ffic_string str){
	if(str){
		if(str[0]=='"'){
			return sao_new_string(str);
		}else if((str[0]=='-'&&sao_is_digit(str[1]))||sao_is_digit(str[0])){ //TODO speed up later.
			long l_val = sao_atol(str);
			double d_val = sao_atof(str);
			double d_diff = (d_val - l_val);
			p_sao_obj rt;
			rt = (d_diff>=-sao_eps && d_diff<=sao_eps) ?  sao_new_long(l_val) : sao_new_double(d_val);
			rt->_raw = str;
			return rt;
		}else{
			return sao_new_symbol(str);
		}
	}
	return SAO_TAG_nil;
}
static void(*sao_print)(ffic_string,p_sao_obj);
void sao_print_default(ffic_string str, p_sao_obj el){
	if (str) sao_stdout(str);
	if (!el) {sao_stdout("nil");return;}
	switch (el->_type) {
		case type_string:
			//sao_stdout("\"%s\"", el->_string); break;
			sao_stdout("%s", el->_string); break;
		case type_symbol:
			if(el->_string){
				sao_stdout("%s", el->_string);
			}else
				sao_stdout("()");
			break;
		case type_long:
			sao_stdout("%ld", el->_long); break;
		case type_double:
			sao_stdout("%g", el->_double); break;
		case type_list:
			{
				int skip=0;
				p_sao_obj ptr = el;
				if(!SAO_ARGV(l)){
					p_sao_obj _car = car(ptr);
					if(!_car || sao_is_symbol(_car)){
						sao_print(0, _car);//
						skip=1;
					}
				}
				sao_stdout("(");
				int t = 0;
				while (ptr) {
					if(t==1) sao_stdout(",");
					if(SAO_ARGV(l)){
						sao_print(0, ptr->car);
						if(t==0) t=1;
					}else{
						if(skip==1){ skip=0;
						}else{ sao_print(0, ptr->car); if(t==0) t=1;
							//sao_print("<cdr=%d>",ptr->cdr);
						}
					}
					if (ptr->cdr) {
						if (ptr->cdr->_type == type_list) { ptr = ptr->cdr; }
						else { sao_print(", ", ptr->cdr); break; }
					} else break;
				}
				sao_stdout(")");
				break;
			}
		default:
			sao_stdout("<%d>", el->_type); break;
	}
}
p_sao_obj sao_eval_default(p_sao_obj exp, p_sao_obj ctx){ return exp; }
p_sao_obj(*sao_str_convert)(ffic_string) = sao_convert_default;
p_sao_obj(*sao_eval)(p_sao_obj,p_sao_obj) = sao_eval_default;
#define SAO_MAX_BUF_LEN 2048 //TODO support longer string..
//sao_stream * sao_stream_delete(sao_stream* fw) //TODO clean up 
int sao_peek(sao_stream * fw)
{
	int c = 0;
	FileChar * ptr_head = fw->ptr_head;
	if(ptr_head!=0){ c = ptr_head->c; }
	return c;
}
p_sao_obj sao_read_list(sao_stream * fw)
{
	p_sao_obj rt = SAO_TAG_nil;
	for (p_sao_obj obj,cell=SAO_TAG_nil;;) {
		obj = sao_load_expr(fw);
		if (!obj || obj==SAO_TAG_end) { rt = sao_reverse(cell, SAO_TAG_nil); break; }
		cell = cons(obj, cell);
	}
	if(rt==SAO_TAG_nil) rt = cons(SAO_TAG_nil,SAO_TAG_nil);
	return rt;
}
p_sao_obj sao_load_expr(sao_stream * fw) {
	int c;
	p_sao_obj theSymbol = SAO_TAG_nil;
	while( (c = sao_deq_c(fw))!=SAO_EOF ) {
		switch(c){
			case '\n': case '\r': sao_read_line(fw);continue;
			case 0: case ' ': case '\t': case ',': if(theSymbol) break; continue;
			case ';': case '#': for (int c=0;!(c == '\n' || c == SAO_EOF);c = sao_deq_c(fw)); continue;
			case '^': return cons(SAO_TAG_quote, cons(sao_load_expr(fw), SAO_TAG_nil));
			case '\"':
				{
					char buf[SAO_MAX_BUF_LEN] = {0};
					for(int c,i=0;;){
						if (i >= SAO_MAX_BUF_LEN) sao_error("String too long - maximum length %d characters",SAO_MAX_BUF_LEN);
						c=sao_deq_c(fw);
						if (c == SAO_EOF){ return SAO_TAG_nil; }
						if(c=='\"') break;
						if(c=='\\'&&'\"'==sao_peek(fw)) c=sao_deq_c(fw);
						buf[i++] = c;
					}
					return sao_new_string(buf);
				}
			case '}': case ']': case ')': return SAO_TAG_end;
			case '{':return cons(SAO_TAG_table,sao_read_list(fw));
			case '(':
				{
					p_sao_obj list = sao_read_list(fw);
					if(SAO_ARGV(l)){ return list; }//LISP
					return (theSymbol) ? cons(theSymbol,list) : list;
				}
			case '[':return cons(SAO_TAG_vector,sao_read_list(fw));
			default:
				{
					char buf[SAO_MAX_BUF_LEN] = {c};
					int i = 1, cc;
					while (cc=sao_peek(fw), !sao_strchr(" \t,()[]{}\r\n", cc)) {
						if (i >= SAO_MAX_BUF_LEN) sao_error("Symbol name too long - maximum length %d characters",SAO_MAX_BUF_LEN);
						buf[i++] = sao_deq_c(fw);
					}
					theSymbol = sao_str_convert(buf);
					while (cc=sao_peek(fw), sao_strchr(" \t", cc)) sao_deq_c(fw);
					if (sao_strchr((SAO_ARGV(i))?",({":"\r\n,({",sao_peek(fw))) continue;
				}
		}//switch
		break;
	}
	return theSymbol;
}
#define sao_add_sym_x(x) SAO_TAG_##x=sao_new_symbol(#x);sao_var(SAO_TAG_##x,SAO_TAG_##x,SAO_TAG_global);
#include "libsaolang.c"
p_sao_obj sao_parse( sao_stream * fw, p_sao_obj ctx ) {
	sao_read_line(fw);
	ffic_u64 (*microtime)() = ( ffic_u64(*)() ) libc(microtime);
	p_sao_obj rt = SAO_TAG_nil;
	p_sao_obj exp = SAO_TAG_nil;
	while((exp=sao_load_expr(fw))){
		if(SAO_ARGV(d)) sao_stdout("%llu: ",microtime());
		if(SAO_ARGV(i)||SAO_ARGV(d)){ sao_print("<=", exp); sao_stdout("\n"); }
		if (ctx){
			rt = sao_eval(exp,ctx);
			if(SAO_ARGV(d)) sao_stdout("%llu: ",microtime());
			if((SAO_ARGV(i)||SAO_ARGV(d))){sao_print("=>", rt); sao_stdout("%s","\n");}
		}else{
			rt = exp;
			if(SAO_ARGV(i)||SAO_ARGV(d)){
				sao_print("==>", rt); sao_stdout("\n");
			}
		}
	}
	return rt;
}
void print_version(){ sao_stdout(" SaoLang (R) v" SAO_VERSION " - Wanjo Chan (c) 2020\n"); }
void print_help(){ sao_stdout("Usage	 : sao [options] [script.sao | -]]\nOptions	 :\n	h:	Help\n	v:	Version\n	i:	Interactive\n	p:	Print final result\n	d:	Dev only\n	e:	Eval\n	s:	Strict mode\n	l:	Lisp syntax\n"); }
int main(int argc,char **argv, char** envp) {
	sao_print = sao_print_default;
	sao_strcmp = (ffic_func_i) libc(strcmp);
	sao_atof   = (ffic_func_d) libc(atof);
	sao_atol   = (ffic_func_l) libc(atol);
	sao_strchr = (ffic_func_i) libc(strchr);
	libc(setmode)(libc(fileno)(libc(stdin)),0x8000/*O_BINARY*/);
	SAO_TAG_global = cons(cons(SAO_TAG_nil, SAO_TAG_nil), SAO_TAG_nil);
	SAO_TAG_argv = cons(cons(SAO_TAG_nil, SAO_TAG_nil), SAO_TAG_nil);

	SAO_ITR(sao_add_sym_x, quote,vector,table,begin,end);
	ffic_string script_file = "-";
	int found_any = 0;
	if(argc>1){
		char argv_line[512] = "("; ffic_string argv_ptr = &argv_line[1];
		for(int i=1;i<argc;i++){ (*argv_ptr++)=' ';ffic_string wk=argv[i];while(*wk) (*argv_ptr++)=(*wk++);}
		*argv_ptr++ = ')'; *argv_ptr++ = '\0';
		sao_stream * fw = sao_stream_new(argv_line,stream_char);
		p_sao_obj arg_expr = sao_load_expr( fw );
		p_sao_obj pos = arg_expr;
		while(pos){
			p_sao_obj _car = car(pos);
			pos = cdr(pos);
			if(!_car) continue;
			ffic_string string_or_name=SAO_NULL;
			long l_val = 1;
			if(sao_is_list(_car)){
				p_sao_obj _caar = car(_car);
				if(_caar){ string_or_name = _caar->_string; }
				p_sao_obj _cadar = cadr(_car);
				if(_cadar) l_val = sao_atol(_cadar->_string);
			}else{
				if(_car) string_or_name = _car->_string;
			}
			if(string_or_name){
				sao_var(sao_new_symbol(string_or_name), sao_new_long(l_val), SAO_TAG_argv);
				int found = 0;
				if(!sao_strcmp(string_or_name,"-")){ found_any++; }
				else{
					for(int i=0;i<=argt_h;i++) if(!sao_strcmp(string_or_name,argt_names[i])){ argta[i]+=l_val; found++;break; }
				}
				if(!found) script_file = string_or_name; else found_any++;
			}
		}
		libc(free)(fw);//
		sao_var(SAO_TAG_argv,SAO_TAG_argv,SAO_TAG_global);//for later use
	}
	void* fp;
	if(!sao_strcmp("-",script_file)){
		fp = libc(stdin);
		if(!found_any){ print_help();SAO_ARGV(i)++; SAO_ARGV(v)++; }
		else { if(SAO_ARGV(i)){SAO_ARGV(v)++; found_any++;} }
		if(SAO_ARGV(v)){ print_version();if(found_any==1)libc(exit)(0); }
		if(SAO_ARGV(h)){ print_help();libc(exit)(0);}
	}else{
		fp = libc(fopen)(script_file, "r");
		if(!fp) sao_error("FILE NOT FOUND: %s",script_file);
	}
	sao_stream * fw = sao_stream_new(fp,stream_file);
	p_sao_obj ctx = SAO_TAG_nil;
	ctx = saolang_init();//TODO can be override by argv:c(name)
	p_sao_obj result = sao_parse( fw, ctx );
	if(SAO_ARGV(p)){ sao_print(0,result);sao_stdout("\n"); }
	libc(fclose)(fp); libc(free)(fw);
	return 0;
}
