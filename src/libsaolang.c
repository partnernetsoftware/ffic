#define SAO_CHECK_TYPE(x, t) (sao_type_check(__func__, x, t))

p_sao_object sao_type_check(const char *func, p_sao_object obj, type_t type)
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

p_sao_object native_type(p_sao_object args) { return sao_new_symbol(type_names[car(args)->_type]); }
p_sao_object native_global(p_sao_object args) { return SAO_TAG_global; }
p_sao_object native_list(p_sao_object args) { return (args); }
p_sao_object native_cons(p_sao_object args) { return cons(car(args), cadr(args)); }
p_sao_object native_car(p_sao_object args) { if(SAO_ARGV(s)) SAO_CHECK_TYPE(car(args), type_list); return caar(args); }
p_sao_object native_cdr(p_sao_object args) { if(SAO_ARGV(s)) SAO_CHECK_TYPE(car(args), type_list); return cdar(args); }
p_sao_object native_setcar(p_sao_object args) { SAO_CHECK_TYPE(car(args), type_list); (args->car->car = (cadr(args))); return SAO_TAG_nil; }
p_sao_object native_setcdr(p_sao_object args) { SAO_CHECK_TYPE(car(args), type_list); (args->car->cdr = (cadr(args))); return SAO_TAG_nil; }
p_sao_object native_is_null(p_sao_object args) { return !(car(args)) ? SAO_TAG_true : SAO_TAG_false; }
p_sao_object native_pairq(p_sao_object args) {
	if (car(args)->_type != type_list) return SAO_TAG_false;
	return (sao_is_atom(caar(args)) && sao_is_atom(cdar(args))) ? SAO_TAG_true : SAO_TAG_false;
}
p_sao_object native_is_list(p_sao_object args) {
	p_sao_object list;
	if (car(args)->_type != type_list)
		return SAO_TAG_false;
	for (list = car(args); (list); list = list->cdr)
		if ((list->cdr) && (list->cdr->_type != type_list))
			return SAO_TAG_false;
	return (car(args)->_type == type_list && native_pairq(args) != SAO_TAG_true) ? SAO_TAG_true : SAO_TAG_false;
}
p_sao_object native_atomq(p_sao_object sexp) { return sao_is_atom(car(sexp)) ? SAO_TAG_true : SAO_TAG_false; }
p_sao_object native_cmp(p_sao_object args) {
	if ((car(args)->_type != type_integer) || (cadr(args)->_type != type_integer))
		return SAO_TAG_false;
	return (car(args)->_integer == cadr(args)->_integer) ? SAO_TAG_true : SAO_TAG_false;
}
//p_sao_object native_not(p_sao_object args) { return native_cmp(args); }
p_sao_object native_eqq(p_sao_object args) { return sao_is_eq(car(args), cadr(args)) ? SAO_TAG_true : SAO_TAG_false; }
p_sao_object native_equalq(p_sao_object args) {
	if (sao_is_eq(car(args), cadr(args)))
		return SAO_TAG_true;
	if ((car(args)->_type == type_list) && (cadr(args)->_type == type_list)) {
		p_sao_object a, b;
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
		p_sao_object *va = car(args)->_vector;
		p_sao_object *vb = cadr(args)->_vector;
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
p_sao_object native_add(p_sao_object list) {
	SAO_CHECK_TYPE(car(list), type_integer);
	long total = car(list)->_integer;
	list = cdr(list);
	while ((car(list)))
	{
		SAO_CHECK_TYPE(car(list), type_integer);
		total += car(list)->_integer;
		list = cdr(list);
	}
	return sao_new_integer(total);
}
p_sao_object native_sub(p_sao_object list) {
	SAO_CHECK_TYPE(car(list), type_integer);
	long total = car(list)->_integer;
	list = cdr(list);
	while ((list)) {
		SAO_CHECK_TYPE(car(list), type_integer);
		total -= car(list)->_integer;
		list = cdr(list);
	}
	return sao_new_integer(total);
}
p_sao_object native_div(p_sao_object list) {
	SAO_CHECK_TYPE(car(list), type_integer);
	long total = car(list)->_integer;
	list = cdr(list);
	while ((list)) {
		SAO_CHECK_TYPE(car(list), type_integer);
		total /= car(list)->_integer;
		list = cdr(list);
	}
	return sao_new_integer(total);
}
p_sao_object native_mul(p_sao_object list) {
	SAO_CHECK_TYPE(car(list), type_integer);
	long total = car(list)->_integer;
	list = cdr(list);
	while ((list)) {
		SAO_CHECK_TYPE(car(list), type_integer);
		total *= car(list)->_integer;
		list = cdr(list);
	}
	return sao_new_integer(total);
}
p_sao_object native_gt(p_sao_object sexp) {
	SAO_CHECK_TYPE(car(sexp), type_integer);
	SAO_CHECK_TYPE(cadr(sexp), type_integer);
	return (car(sexp)->_integer > cadr(sexp)->_integer) ? SAO_TAG_true : SAO_TAG_nil;
}
p_sao_object native_lt(p_sao_object sexp) {
	SAO_CHECK_TYPE(car(sexp), type_integer);
	SAO_CHECK_TYPE(cadr(sexp), type_integer);
	return (car(sexp)->_integer < cadr(sexp)->_integer) ? SAO_TAG_true : SAO_TAG_nil;
}
p_sao_object native_shell(p_sao_object args) {
	sao_out_expr("native_shell todo",car(args));
	sao_stdout(",len=%d\n",sao_list_len(args));
	p_sao_object _car;
	p_sao_object _cdr = args;
	while( (_car = car(_cdr)) )
	{
		sao_out_expr("\nTMP _car",_car);
		_cdr = cdr(_cdr);
	}
	//libc(system)("ls");
	return SAO_TAG_nil;
}
p_sao_object native_ffi(p_sao_object args) {
	sao_out_expr("ffi todo",args);
	//libc(system)("ls");
	return SAO_TAG_nil;
}
p_sao_object native_exit(p_sao_object args) { libc(exit)(0); return SAO_TAG_nil; }
//TODO merge read/load
p_sao_object native_read(p_sao_object args) { return sao_load_expr(sao_stream_new(libc(stdin),stream_file)); }
p_sao_object native_load(p_sao_object args) { //TODO merge with native_read() 1!
	p_sao_object exp;
	p_sao_object ret = SAO_TAG_nil;
	char *filename = car(args)->_string;
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
p_sao_object native_vector(p_sao_object args) {
	p_sao_object sym = SAO_CHECK_TYPE(car(args), type_integer);
	return sao_new_vector(sym->_integer);
}
p_sao_object native_vget(p_sao_object args) {
	p_sao_object vct = SAO_CHECK_TYPE(car(args), type_vector);
	p_sao_object key = SAO_CHECK_TYPE(cadr(args), type_integer);
	if (key->_integer >= vct->_len) return SAO_TAG_nil;
	return vct->_vector[key->_integer];
}
p_sao_object native_vset(p_sao_object args){
	p_sao_object vct = SAO_CHECK_TYPE(car(args), type_vector);
	p_sao_object key = SAO_CHECK_TYPE(cadr(args), type_integer);
	if (!(caddr(args))) return SAO_TAG_nil;
	if (key->_integer >= vct->_len) return SAO_TAG_nil;
	car(args)->_vector[key->_integer] = caddr(args);
	return SAO_TAG_ok;
}
p_sao_object native_print(p_sao_object args) {
	sao_out_expr(0, car(args));
	sao_stdout("\n");
	return SAO_TAG_nil;
}
#define add_sym_list(n) sao_def_var(sao_new_symbol(#n), sao_new_native(native_##n), SAO_TAG_global);
p_sao_object saolang_init()
{
	SAO_ITR(add_sym_list, print,lt,add,sub,exit);//minimum for fib.sao
	SAO_ITR(add_sym_list,
			exit,global,
			print,
			lt,add,sub,cmp,
			cons,setcar,cdr,
			list);//for test.sao

	return SAO_TAG_global;
//	SAO_ITR(add_sym_list,
//			exit,shell,ffi,global,//sys
//			type,cons,car,cdr,setcar,setcdr,//core
//			list,vector,vget,vset,//data structure
//			load,print,read,//io
//			add,sub,mul,div,cmp,lt,gt,//logic,
//			is_null,is_list,pairq,atomq,eqq,equalq,//helpers
//			);
//	return SAO_TAG_global;
}

