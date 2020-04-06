sao_object *native_type(sao_object *args) { return sao_new_symbol(type_names[car(args)->_type]); }
sao_object *native_global(sao_object *args) { return GLOBAL; }
sao_object *native_list(sao_object *args) { return (args); }
sao_object *native_cons(sao_object *args) { return cons(car(args), cadr(args)); }
sao_object *native_car(sao_object *args) { if(SAO_ARGV(s)) SAO_CHECK_TYPE(car(args), type_list); return caar(args); }
sao_object *native_cdr(sao_object *args) { if(SAO_ARGV(s)) SAO_CHECK_TYPE(car(args), type_list); return cdar(args); }
sao_object *native_setcar(sao_object *args) { SAO_CHECK_TYPE(car(args), type_list); (args->car->car = (cadr(args))); return NIL; }
sao_object *native_setcdr(sao_object *args) { SAO_CHECK_TYPE(car(args), type_list); (args->car->cdr = (cadr(args))); return NIL; }
sao_object *native_is_null(sao_object *args) { return !(car(args)) ? TRUE : FALSE; }
sao_object *native_pairq(sao_object *args) {
	if (car(args)->_type != type_list) return FALSE;
	return (sao_is_atom(caar(args)) && sao_is_atom(cdar(args))) ? TRUE : FALSE;
}
sao_object *native_is_list(sao_object *args) {
	sao_object *list;
	if (car(args)->_type != type_list)
		return FALSE;
	for (list = car(args); (list); list = list->cdr)
		if ((list->cdr) && (list->cdr->_type != type_list))
			return FALSE;
	return (car(args)->_type == type_list && native_pairq(args) != TRUE) ? TRUE : FALSE;
}
sao_object *native_atomq(sao_object *sexp) { return sao_is_atom(car(sexp)) ? TRUE : FALSE; }
sao_object *native_cmp(sao_object *args) {
	if ((car(args)->_type != type_integer) || (cadr(args)->_type != type_integer))
		return FALSE;
	return (car(args)->_integer == cadr(args)->_integer) ? TRUE : FALSE;
}
//sao_object *native_not(sao_object *args) { return native_cmp(args); }
sao_object *native_eqq(sao_object *args) { return sao_is_eq(car(args), cadr(args)) ? TRUE : FALSE; }
sao_object *native_equalq(sao_object *args) {
	if (sao_is_eq(car(args), cadr(args)))
		return TRUE;
	if ((car(args)->_type == type_list) && (cadr(args)->_type == type_list)) {
		sao_object *a, *b;
		a = car(args);
		b = cadr(args);
		while ((a) && (b)) {
			if (!sao_is_eq(car(a), car(b)))
				return FALSE;
			a = cdr(a);
			b = cdr(b);
		}
		return TRUE;
	}
	if ((car(args)->_type == type_vector) && (cadr(args)->_type == type_vector)) {
		if (car(args)->_len != cadr(args)->_len) {
			return FALSE;
		}
		sao_object **va = car(args)->_vector;
		sao_object **vb = cadr(args)->_vector;
		int i = 0;
		for (i = 0; i < car(args)->_len; i++) {
			if (!sao_is_eq(*(va + i), *(vb + i))) {
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
	while ((car(list)))
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
	while ((list)) {
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
	while ((list)) {
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
	while ((list)) {
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
sao_object * native_shell(sao_object *args) {
	sao_out_expr("native_shell todo",car(args));
	sao_stdout(",len=%d\n",sao_list_len(args));
	sao_object * _car;
	sao_object * _cdr = args;
	while( (_car = car(_cdr)) )
	{
		sao_out_expr("\nTMP _car",_car);
		_cdr = cdr(_cdr);
	}
	//libc(system)("ls");
	return NIL;
}
sao_object * native_ffi(sao_object *args) {
	sao_out_expr("ffi todo",args);
	//libc(system)("ls");
	return NIL;
}
sao_object *native_exit(sao_object *args) { libc(exit)(0); return NIL; }
//TODO merge read/load
sao_object *native_read(sao_object *args) { return sao_load_expr(sao_stream_new(libc(stdin),stream_file)); }
sao_object *native_load(sao_object *args) { //TODO merge with native_read() 1!
	sao_object *exp;
	sao_object *ret = NIL;
	char *filename = car(args)->_string;
	//TODO
	void*fp = libc(fopen)(filename, "r");
	if (fp == 0) {
		sao_stderr("Error opening file %s\n", filename);
		return NIL;
	}
	sao_stream * fw = sao_stream_new(fp,stream_file);
	for (;;) {
		exp = sao_load_expr(fw);
		if (!(exp))
			break;
		ret = sao_eval(exp, GLOBAL);
	}
	libc(fclose)(fp);
	return ret;
}
sao_object *native_vector(sao_object *args) {
	sao_object * sym = SAO_CHECK_TYPE(car(args), type_integer);
	return sao_new_vector(sym->_integer);
}
sao_object *native_vget(sao_object *args) {
	sao_object * vct = SAO_CHECK_TYPE(car(args), type_vector);
	sao_object * key = SAO_CHECK_TYPE(cadr(args), type_integer);
	if (key->_integer >= vct->_len) return NIL;
	return vct->_vector[key->_integer];
}
sao_object *native_vset(sao_object *args){
	sao_object * vct = SAO_CHECK_TYPE(car(args), type_vector);
	sao_object * key = SAO_CHECK_TYPE(cadr(args), type_integer);
	if (!(caddr(args))) return NIL;
	if (key->_integer >= vct->_len) return NIL;
	car(args)->_vector[key->_integer] = caddr(args);
	return OK;
}
sao_object *native_print(sao_object *args) {
	sao_out_expr(0, car(args));
	sao_stdout("\n");
	return NIL;
}
#define add_sym_list(n) sao_def_var(sao_new_symbol(#n), sao_new_native(native_##n), GLOBAL);
sao_object * saolang_init()
{
	//SAO_ITR(add_sym_list, print);
	//return GLOBAL;
	SAO_ITR(add_sym_list,
			exit,shell,ffi,global,//sys
			type,cons,car,cdr,setcar,setcdr,//core
			list,vector,vget,vset,//data structure
			load,print,read,//io
			add,sub,mul,div,cmp,lt,gt,//logic,
			is_null,is_list,pairq,atomq,eqq,equalq,//helpers
			);
	return GLOBAL;
}

