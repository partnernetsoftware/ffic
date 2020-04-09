p_sao_obj sao_type_check(const ffic_string func, p_sao_obj obj, type_t type)
{
	if (!(obj)) {
		sao_stderr("Invalid argument to function %s: SAO_TAG_nil\n", func);
		libc(exit)(1);
	} else if (obj->_type != type) {
		sao_stderr( "ERR: function %s. expected %s got %s\n",
				func, type_names[type], type_names[obj->_type]);
		libc(exit)(1);
	}
	return obj;
}
#define SAO_CHECK_TYPE(x, t) (sao_type_check((ffic_string)__func__, x, t))

p_sao_obj native_type(p_sao_obj args) { return sao_new_symbol(type_names[car(args)->_type]); }
p_sao_obj native_global(p_sao_obj args) { return SAO_TAG_global; }
p_sao_obj native_list(p_sao_obj args) { return (args); }
p_sao_obj native_cons(p_sao_obj args) { return cons(car(args), cadr(args)); }
p_sao_obj native_car(p_sao_obj args) { if(SAO_ARGV(s)) SAO_CHECK_TYPE(car(args), type_list); return caar(args); }
p_sao_obj native_cdr(p_sao_obj args) { if(SAO_ARGV(s)) SAO_CHECK_TYPE(car(args), type_list); return cdar(args); }
p_sao_obj native_setcar(p_sao_obj args) { SAO_CHECK_TYPE(car(args), type_list); (args->car->car = (cadr(args))); return SAO_TAG_nil; }
p_sao_obj native_setcdr(p_sao_obj args) { SAO_CHECK_TYPE(car(args), type_list); (args->car->cdr = (cadr(args))); return SAO_TAG_nil; }
p_sao_obj native_is_null(p_sao_obj args) { return !(car(args)) ? SAO_TAG_true : SAO_TAG_false; }
p_sao_obj native_pairq(p_sao_obj args) {
	if (car(args)->_type != type_list) return SAO_TAG_false;
	return (sao_is_atom(caar(args)) && sao_is_atom(cdar(args))) ? SAO_TAG_true : SAO_TAG_false;
}
p_sao_obj native_is_list(p_sao_obj args) {
	p_sao_obj list;
	if (car(args)->_type != type_list)
		return SAO_TAG_false;
	for (list = car(args); (list); list = list->cdr)
		if ((list->cdr) && (list->cdr->_type != type_list))
			return SAO_TAG_false;
	return (car(args)->_type == type_list && native_pairq(args) != SAO_TAG_true) ? SAO_TAG_true : SAO_TAG_false;
}
p_sao_obj native_atom(p_sao_obj expr) {
	//sao_stderr("debug native_atom\n",expr);
	return sao_is_atom(car(expr)) ? SAO_TAG_true : SAO_TAG_false;
}
p_sao_obj native_cmp(p_sao_obj args) {
	if ((car(args)->_type != type_integer) || (cadr(args)->_type != type_integer))
		return SAO_TAG_false;
	return (car(args)->_integer == cadr(args)->_integer) ? SAO_TAG_true : SAO_TAG_false;
}
//p_sao_obj native_not(p_sao_obj args) { return native_cmp(args); }
p_sao_obj native_eq(p_sao_obj args) { return sao_is_eq(car(args), cadr(args)) ? SAO_TAG_true : SAO_TAG_false; }
p_sao_obj native_equalq(p_sao_obj args) {
	if (sao_is_eq(car(args), cadr(args)))
		return SAO_TAG_true;
	if ((car(args)->_type == type_list) && (cadr(args)->_type == type_list)) {
		p_sao_obj a, b;
		a = car(args);
		b = cadr(args);
		while ((a) && (b)) {
			if (!sao_is_eq(car(a), car(b)))
				return SAO_TAG_false;
			a = cdr(a);
			b = cdr(b);
		}
		return SAO_TAG_true;
	}
	if ((car(args)->_type == type_vector) && (cadr(args)->_type == type_vector)) {
		if (car(args)->_len != cadr(args)->_len) {
			return SAO_TAG_false;
		}
		p_sao_obj *va = car(args)->_vector;
		p_sao_obj *vb = cadr(args)->_vector;
		int i = 0;
		for (i = 0; i < car(args)->_len; i++) {
			if (!sao_is_eq(*(va + i), *(vb + i))) {
				return SAO_TAG_false;
			}
		}
		return SAO_TAG_true;
	}
	return SAO_TAG_false;
}
p_sao_obj native_add(p_sao_obj list) {
	SAO_CHECK_TYPE(car(list), type_integer);
	long total = car(list)->_integer;
	list = cdr(list);
	while ((car(list)))
	{
		SAO_CHECK_TYPE(car(list), type_integer);
		total += car(list)->_integer;
		list = cdr(list);
	}
	//return sao_new_integer(total);
	return sao_new((sao_obj) {._type=type_integer, ._integer=(total)} );
}
p_sao_obj native_sub(p_sao_obj list) {
	SAO_CHECK_TYPE(car(list), type_integer);
	long total = car(list)->_integer;
	list = cdr(list);
	while ((list)) {
		SAO_CHECK_TYPE(car(list), type_integer);
		total -= car(list)->_integer;
		list = cdr(list);
	}
	return sao_new((sao_obj) {._type=type_integer, ._integer=(total)} );
	//return sao_new_integer(total);
}
p_sao_obj native_div(p_sao_obj list) {
	SAO_CHECK_TYPE(car(list), type_integer);
	long total = car(list)->_integer;
	list = cdr(list);
	while ((list)) {
		SAO_CHECK_TYPE(car(list), type_integer);
		total /= car(list)->_integer;
		list = cdr(list);
	}
	//return sao_new_integer(total);
	return sao_new((sao_obj) {._type=type_integer, ._integer=(total)} );
}
p_sao_obj native_mul(p_sao_obj list) {
	SAO_CHECK_TYPE(car(list), type_integer);
	long total = car(list)->_integer;
	list = cdr(list);
	while ((list)) {
		SAO_CHECK_TYPE(car(list), type_integer);
		total *= car(list)->_integer;
		list = cdr(list);
	}
	//return sao_new_integer(total);
	return sao_new((sao_obj) {._type=type_integer, ._integer=(total)} );
}
p_sao_obj native_gt(p_sao_obj sexp) {
	SAO_CHECK_TYPE(car(sexp), type_integer);
	SAO_CHECK_TYPE(cadr(sexp), type_integer);
	return (car(sexp)->_integer > cadr(sexp)->_integer) ? SAO_TAG_true : SAO_TAG_nil;
}
p_sao_obj native_lt(p_sao_obj sexp) {
	SAO_CHECK_TYPE(car(sexp), type_integer);
	SAO_CHECK_TYPE(cadr(sexp), type_integer);
	return (car(sexp)->_integer < cadr(sexp)->_integer) ? SAO_TAG_true : SAO_TAG_nil;
}
char* sao_strcat(char * dst, char * src){
	char *target = malloc(strlen(dst) + strlen(src) + 1);
	strcpy(target, dst);
	strcat(target, src); 
	return target;
}
p_sao_obj native_shell(p_sao_obj args) {
	p_sao_obj _car;
	p_sao_obj _cdr = args;
	char * cmd=SAO_NULL;
	while( (_car = car(_cdr)) ) {
		if(!cmd){ cmd=_car->_string; }
		else cmd=sao_strcat(cmd,_car->_string);
		_cdr = cdr(_cdr);
	}
	//libc(printf)("\nnative_shell cmd=%s\n",cmd);
	if(cmd) libc(system)(cmd);//TODO return result as data.
	return SAO_TAG_nil;
}
p_sao_obj native_ffi(p_sao_obj args) {
	sao_out_expr("ffi todo",args);
	//libc(system)("ls");
	return SAO_TAG_nil;
}
p_sao_obj native_exit(p_sao_obj args) { libc(exit)(0); return SAO_TAG_nil; }
//TODO merge read/load
p_sao_obj native_read(p_sao_obj args) { return sao_load_expr(sao_stream_new(libc(stdin),stream_file)); }
p_sao_obj native_load(p_sao_obj args) { //TODO merge with native_read() 1!
	p_sao_obj exp;
	p_sao_obj ret = SAO_TAG_nil;
	ffic_string filename = car(args)->_string;
	//TODO
	void*fp = libc(fopen)(filename, "r");
	if (fp == 0) {
		sao_stderr("Error opening file %s\n", filename);
		return SAO_TAG_nil;
	}
	sao_stream * fw = sao_stream_new(fp,stream_file);
	for (;;) {
		exp = sao_load_expr(fw);
		if (!(exp))
			break;
		ret = sao_eval(exp, SAO_TAG_global);
	}
	libc(fclose)(fp);
	return ret;
}
p_sao_obj native_vector(p_sao_obj args) {
	p_sao_obj sym = SAO_CHECK_TYPE(car(args), type_integer);
	return sao_new((sao_obj){._type=type_symbol,._len=sym->_integer});
}
p_sao_obj native_vget(p_sao_obj args) {
	p_sao_obj vct = SAO_CHECK_TYPE(car(args), type_vector);
	p_sao_obj key = SAO_CHECK_TYPE(cadr(args), type_integer);
	if (key->_integer >= vct->_len) return SAO_TAG_nil;
	return vct->_vector[key->_integer];
}
p_sao_obj native_vset(p_sao_obj args){
	p_sao_obj vct = SAO_CHECK_TYPE(car(args), type_vector);
	p_sao_obj key = SAO_CHECK_TYPE(cadr(args), type_integer);
	if (!(caddr(args))) return SAO_TAG_nil;
	if (key->_integer >= vct->_len) return SAO_TAG_nil;
	car(args)->_vector[key->_integer] = caddr(args);
	return SAO_TAG_ok;
}
p_sao_obj native_print(p_sao_obj args) {
	sao_out_expr(0, car(args));
	sao_stdout("\n");
	return SAO_TAG_nil;
}
p_sao_obj native_c_int(p_sao_obj args) {
	p_sao_obj _car;
	p_sao_obj _cdr = args;
	char * s=SAO_NULL;
	while( (_car = car(_cdr)) ) {
		if(!s){ s=_car->_string; }
		else s=sao_strcat(s,_car->_string);
		_cdr = cdr(_cdr);
	}
	libc(printf)("\n native_c_int=%s\n",s);
	return SAO_TAG_nil;
}
#define sao_new_native(x,n) sao_new((sao_obj){._type=type_native, ._native=x,._ffi=n})
#define add_sym_list(n) sao_def_var(sao_new_symbol(#n), sao_new_native(native_##n,#n), SAO_TAG_global);
p_sao_obj saolang_init()
{
	SAO_ITR(add_sym_list, print,lt,add,sub,exit);//minimum for fib.sao
	//CommonLisp: format,defun
	//Clojure:defn
	SAO_ITR(add_sym_list, //quote,cond,var(i.e. define),
			atom,eq,car,cdr,cons,//function from LISP
	SAO_ITR(add_sym_list,
			exit,shell,ffi,global,//sys
			type,cons,setcar,setcdr,//core
			list,vector,vget,vset,//data structure
			load,print,read,//io
			add,sub,mul,div,cmp,lt,gt,//logic,
			is_null,is_list,pairq,eq,equalq,//helpers
			);
	SAO_ITR(add_sym_list, c_int);
	return SAO_TAG_global;
}

