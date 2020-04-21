define_map(ctype,  long,double,int,float,i64,u64,string,struct,pointer);//etc TODO
enum { type_ctype=1+type_string, type_native, };
//#define LIST_SAO_TAG true,false,set,let,var,if,lambda,procedure,at
#define LIST_SAO_TAG true,false,set,let,if,lambda,procedure,at
SAO_ITR(define_sao_tag, SAO_EXPAND(LIST_SAO_TAG));

#define sao_new_vector(s) sao_new((sao_obj){._type=type_vector, ._len=s,._vector=SAO_NEW_C(p_sao_obj,s)})
#define sao_new_native(x,n) sao_new((sao_obj){._type=type_native, ._native=x,._ffi=n})
#define sao_new_lambda(params,body) cons(SAO_TAG_lambda, cons(params,body))
#define sao_new_procedure(params,body,ctx) cons(SAO_TAG_procedure, cons(params, cons(body, cons(ctx, SAO_TAG_nil))))
//#define sao_add_sym_x(x) SAO_TAG_##x=sao_new_symbol(#x);sao_var(SAO_TAG_##x,SAO_TAG_##x,SAO_TAG_global);
#define add_sym_list(n) sao_var(sao_new_symbol(#n), sao_new_native(native_##n,#n), SAO_TAG_global);

void _sao_print(ffic_string str, p_sao_obj el){

	if(!el) return sao_print_default(str, el);
	switch (el->_type) {
		case type_list:
			if(sao_is_eq(car(el),SAO_TAG_procedure)){
				sao_stdout("<closure>");
				return;
			}
		case type_string:
		case type_symbol:
		case type_long:
		case type_double:
			return sao_print_default(str, el);
	}
	//
	if (str) sao_stdout(str);
	switch (el->_type) {
		case type_vector:
			sao_stdout("[");
			for(int i=0;i<el->_len;i++){
				sao_print(0,el->_vector[i]);
				if(i+1<el->_len)
				sao_stdout(",");
			}
			sao_stdout("]");
			break;
		case type_ctype://TODO 
			sao_stdout("<ctype>"); break;
		case type_native:
			sao_stdout("<native>"); break;
		default:
			sao_stdout("<TODO _%d>", el->_type); //
	}
}
//#include "ffic.h"
//make libsaolang.(dylib|dll|so) for ffic loading
p_sao_obj sao_not_false(p_sao_obj x) {
	p_sao_obj rt = x;
	if (!x || sao_is_eq(x, SAO_TAG_false)) rt = SAO_TAG_nil;
	else if (x->_type == type_long && x->_long == 0) rt = SAO_TAG_nil;
	return rt;
}
p_sao_obj sao_eval_list(p_sao_obj exp, p_sao_obj ctx) {
	if (!exp) return SAO_TAG_nil;
	p_sao_obj _car = sao_eval(car(exp), ctx);
	p_sao_obj _cdr = sao_eval_list(cdr(exp), ctx);
//	sao_print("DEBUG{",_car);
//	sao_print(",",_car);
	return cons(_car, _cdr);
}
long sao_vector_hash(const ffic_string s, int ht_len) {
	long h = 0;
	ffic_string u = s;
	while (*u) { h = (h * 256 + (*u)) % ht_len; u++; }
	return h;
}
p_sao_obj sao_vector_lookup(p_sao_obj holder,ffic_string s) {
	if(!holder) sao_error("sao_vector_lookup(holder)\n");
	p_sao_obj* the_vector = holder->_vector;
	if(!the_vector) sao_error("empty _vector?");
	if(!holder->_len) sao_error("empty _vector._len?");
	long h = sao_vector_hash(s, holder->_len);
	return the_vector[h];
}
p_sao_obj sao_vector_insert(p_sao_obj holder,p_sao_obj key_obj){
	if(!holder) sao_error("sao_vector_insert(holder)\n");
	if(!key_obj) sao_error("sao_vector_insert(key_obj)\n");

	p_sao_obj* the_vector = holder->_vector;
	if(!the_vector) sao_error("empty _vector?");
	if(!holder->_len) sao_error("empty _vector._len?");
	long h = sao_vector_hash(key_obj->_string, holder->_len);
	if(the_vector[h]){
		//sao_warn("TODO sao_vector_insert table need to resize (%d,%s)?\n",h,key_obj->_string);
	}
	//if(!the_vector || (SAO_TAG_nil!= the_vector[h] && SAO_TAG_nil!=the_vector[h]->_string)){
	//	int _len= 2*(holder->_len+1)-1 ;
	//	sao_tbl_resize(holder, _len);
	//	the_vector = sao_tbl_resize(holder, key_obj);//again
	//}
	the_vector[h]= key_obj;
	return holder;
}
p_sao_obj sao_tbl_resize(p_sao_obj holder,int _len){
	//if(!holder)
	if(!holder)
		holder = sao_new_vector(_len);
	//TMP...(fake resize first) TODO to implement the real resize soon
	else{
		holder->_vector = SAO_NEW_C(p_sao_obj,_len);//TMP
		holder->_len = _len;
	}
	return holder;
}

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
p_sao_obj _sao_eval(p_sao_obj expr, p_sao_obj ctx) {
tail://tail loop to save recursive stacks
	if (!expr) return SAO_TAG_nil; 
	switch(expr->_type){
		case type_long:
		case type_double:
		case type_string:
			break;
		case type_vector:
			{
				p_sao_obj rt = sao_new_vector(expr->_len);
				for(int i=0;i<expr->_len;i++){ rt->_vector[i] = sao_eval(expr->_vector[i],ctx); }
				return rt;
			}
		case type_symbol:
			return sao_get_var(expr, ctx);
		case type_list:
			{
				p_sao_obj _car = car(expr);
				p_sao_obj _cadr = cadr(expr);
				p_sao_obj _cdr = cdr(expr);
				if (sao_is_eq(_car, SAO_TAG_vector)) {//TODO need improve 
					//return _cdr;
					p_sao_obj vector_a[512];
					int i=0;
					for (;;) {
						if(!car(_cdr)) break;
						vector_a[i++] = car(_cdr);
						if(i>=512) sao_error("vector len > 512...");//TODO improve later
						_cdr = cdr(_cdr);
					}
					p_sao_obj rt = sao_new_vector(i);
					for(int j=0;j<i;j++){ rt->_vector[j]=vector_a[j]; }
					return rt;
				}
				if (sao_is_eq(_car, SAO_TAG_quote)) { return _cadr; }
				else if (sao_is_eq(_car, SAO_TAG_lambda)) {
					p_sao_obj _cddr = cddr(expr);
					return sao_new_procedure(_cadr, _cddr, ctx);
				}
				else if (sao_is_eq(_car,SAO_TAG_at)) {
					if (sao_is_atom(_cadr)) sao_var(_cadr, sao_eval(caddr(expr), ctx), ctx);
					else {
						sao_var(car(_cadr), sao_eval(sao_new_lambda(cdr(_cadr), cddr(expr)), ctx), ctx);
					}
					return SAO_TAG_true;
				}
				else if (sao_is_eq(_car, SAO_TAG_begin)) {
					p_sao_obj args = cdr(expr);
					//sao_print("\nDEBUG 102 ",args);
					for (; (cdr(args)); args = cdr(args)){
						//sao_print("\nDEBUG 103 ",args);
						sao_eval(car(args), ctx);
					}
					expr = car(args);
					//sao_print("\nDEBUG 104 ",expr);
					goto tail;
				}
				else if (sao_is_eq(_car, SAO_TAG_if)) { //if((predicate),(when_true),(when_false))
					p_sao_obj predicate = sao_eval(_cadr, ctx);
					expr = (sao_not_false(predicate)) ? caddr(expr) : cadddr(expr);
					goto tail;
				}
				//else if (sao_is_eq(_car, SAO_TAG_or)) {
				//	p_sao_obj predicate = sao_eval(_cadr, ctx);
				//	expr = (sao_not_false(predicate)) ? caddr(expr) : cadddr(expr);
				//	goto tail;
				//}
				///else if (sao_is_eq(_car, SAO_TAG_cond)) {
				///	p_sao_obj branch = cdr(expr);
				///	for (; (branch); branch = cdr(branch) ) {
				///		//sao_print("\nDEBUG 100 ",branch);
				///		if ( sao_is_eq(caar(branch), SAO_TAG_else) || sao_not_false(sao_eval(caar(branch), ctx)))
				///		{
				///			expr = cons(SAO_TAG_begin, cdar(branch));
				///			goto tail;
				///		}
				///	}
				///	return SAO_TAG_nil;
				///	//return SAO_TAG_false;//should nil??
				///}
				else if (sao_is_eq(_car, SAO_TAG_set)) { //TODO works in current ctx
					if (sao_is_atom(_cadr)){
						sao_set(_cadr, sao_eval(caddr(expr), ctx), ctx);
					} else {
						sao_set(car(_cadr), sao_eval(sao_new_lambda(cdr(_cadr), cddr(expr)), ctx), ctx);
					}
					return SAO_TAG_true;
				}
				else if (sao_is_eq(_car, SAO_TAG_let)) { /* convert to lambda, TODO merge with? */
					p_sao_obj idx;
					p_sao_obj vars = SAO_TAG_nil, vals = SAO_TAG_nil;
					if (!_cadr) return SAO_TAG_nil;//
					if (sao_is_atom(_cadr)) {
						for (idx = caddr(expr); (idx); idx = cdr(idx)) { vars = cons(caar(idx), vars); vals = cons(cadar(idx), vals); }
						sao_var(_cadr, sao_eval(sao_new_lambda(vars, cdddr(expr)), cons(cons(vars, vals), ctx)), ctx);
						expr = cons(_cadr, vals);
						goto tail;
					}
					for (idx = _cadr; (idx); idx = cdr(idx)) { vars = cons(caar(idx), vars); vals = cons(cadar(idx), vals); }
					expr = cons(sao_new_lambda(vars, cddr(expr)), vals);
					goto tail;
				}else
				{
					if(!_car){
						return cons(SAO_TAG_nil,sao_eval_list(_cdr, ctx));
					}
					p_sao_obj proc = sao_eval(_car, ctx);
					if (!proc) {
						//if(SAO_ARGV(s)){
						sao_print("WARN: 404 ", expr);//
						sao_stdout("\n");
						//}
						return SAO_TAG_nil;
						//return SAO_NULL;
						//return expr;
						//return SAO_TAG_false;//TODO
					}
					p_sao_obj args = sao_eval_list(cdr(expr), ctx);
					if (proc->_type == type_native){
						return proc->_native(args,ctx);
					}
					//TODO if empty native but ffi, should auto load into _native 

					if ( sao_is_eq(car(proc), SAO_TAG_procedure))
					{
						p_sao_obj _cadr_proc = cadr(proc);
						//sao_print("\n; DEBUG _cadr_proc ",_cadr_proc);
						if(!car(_cadr_proc)){//for NULL() case...
							_cadr_proc = cdr(_cadr_proc);
						}
						//sao_print("\n; DEBUG _cadr_proc ",_cadr_proc);
						ctx = cons(cons(_cadr_proc, args), cadddr(proc));//TODO to improve ctx
						expr = cons(SAO_TAG_begin, caddr(proc));
						goto tail;
					//}else{
						//return expr;
					}
				}
				//sao_warn("DEBUG 400: sao_is_list SAO_TAG_nil?\n");
				break;
			}
		default:
			sao_print("TODO {",expr);
			sao_stdout("}\n");
	}
	return expr;
}

p_sao_obj sao_type_assert(const ffic_string func, p_sao_obj obj, int type)
{
	if (!obj) {
		//sao_stderr("Invalid argument to function %s: SAO_TAG_nil\n", func); libc(exit)(1);
		sao_error("Invalid argument to function %s: SAO_TAG_nil\n", func);
	} else if (obj->_type != type) {
		//sao_stderr( "ERR: function %s. expected %s got %s\n", func, type_names[type], type_names[obj->_type]); libc(exit)(1);
		sao_error( "ERR: function %s. expected %s got %s\n", func, type_names[type], type_names[obj->_type]);
	}
	return obj;
}
#define SAO_ASSERT_TYPE(x, t) (sao_type_assert((ffic_string)__func__, x, t))

p_sao_obj native_type(p_sao_obj args,p_sao_obj ctx) { return sao_new_symbol(type_names[car(args)->_type]); }
p_sao_obj native_global(p_sao_obj args,p_sao_obj ctx) { return SAO_TAG_global; }
p_sao_obj native_debug(p_sao_obj args,p_sao_obj ctx) {
	sao_print("\nnative_debug.args=",args);
	sao_print("\nnative_debug.ctx=",ctx);
	//sao_stdout("\nlong=%d\n",car(args)->v._long);
	p_sao_obj _car = car(args);
	if(_car){
		if (_car->_type == type_long){
			sao_stdout("\nlong=%ld\n",car(args)->v._long);
		}else{
			sao_stdout("\n native_debug TODO type(%d)",_car->_type);
		}
	}else
		sao_stdout("\n native_debug TODO no args");
	return SAO_TAG_true;
}
p_sao_obj native_list(p_sao_obj args,p_sao_obj ctx) { return (args); }
p_sao_obj native_cons(p_sao_obj args,p_sao_obj ctx) {
	return cons(car(args),cadr(args));
//	p_sao_obj _car = car(args);
//	p_sao_obj _cadr = cadr(args);
//	//return cons(_car,_cadr)
//	//if(!_car) return _cadr;
//	//if(!_cadr){ return _car; }
//	//if(!sao_is_list(_cadr)) _cadr = cons(_cadr,SAO_TAG_nil);//TMP
//	p_sao_obj rt = cons(_car, _cadr);
//	//sao_print("\n native_cons._car=",_car);
//	//sao_print("\n native_cons._cadr=",_cadr);
//	sao_print("\n native_cons.rt=",rt);
//	sao_stdout("\n");
//	return rt;
}
p_sao_obj native_car(p_sao_obj args,p_sao_obj ctx) {
	p_sao_obj rt = caar(args);
	if(!rt) rt = car(args);
	return rt;
}
p_sao_obj native_cdr(p_sao_obj args,p_sao_obj ctx) {
	p_sao_obj rt = cdar(args);
	if(!rt) rt = cdr(args);
	return rt;
}
p_sao_obj native_setcar(p_sao_obj args,p_sao_obj ctx) { SAO_ASSERT_TYPE(car(args), type_list); (args->car->car = (cadr(args))); return SAO_TAG_nil; }
p_sao_obj native_setcdr(p_sao_obj args,p_sao_obj ctx) { SAO_ASSERT_TYPE(car(args), type_list); (args->car->cdr = (cadr(args))); return SAO_TAG_nil; }
p_sao_obj sao_is_empty(p_sao_obj ee){
	p_sao_obj rt = SAO_TAG_nil;//nil=>false
	for(;;){
		if(!ee) {rt=SAO_TAG_true;break;}
		switch(ee->_type){
			case type_list:
				if(!sao_is_empty(car(ee))) break;
				if(!sao_is_empty(cdr(ee))) break;
				rt=SAO_TAG_true;
				break;
			case type_string:
				if(libc(strlen)(ee->_string)) rt = SAO_TAG_true;
		}
		break;
	}
	sao_print("\n# DEBUG sao_is_empty=",ee);
	sao_print("\n# DEBUG rt=",rt);
	sao_stdout("\n");
	return rt;
}
p_sao_obj native_is_empty(p_sao_obj args,p_sao_obj ctx) {
	if(!args) return SAO_TAG_true;
	if(!sao_is_list(args)) sao_error("native_is_empty.args must be list");
	p_sao_obj _car = car(args);
	//p_sao_obj _cadr = cadr(args);
	if(!sao_is_empty(_car)) return SAO_TAG_false;
	return SAO_TAG_true;
}
p_sao_obj native__null(p_sao_obj args,p_sao_obj ctx) { return SAO_TAG_nil; }
p_sao_obj native__ctx(p_sao_obj args,p_sao_obj ctx) { return ctx; }
//p_sao_obj native_is_nil(p_sao_obj args,p_sao_obj ctx) { return (car(args)) ? SAO_TAG_false : SAO_TAG_true; }
p_sao_obj native_is_nil(p_sao_obj args,p_sao_obj ctx) {
	p_sao_obj rt = SAO_TAG_false;//nil=>false
	for(;;){
		if(!args) rt = SAO_TAG_true;
		p_sao_obj _car = car(args);
		if(!_car) rt = SAO_TAG_true;
		else if(sao_is_list(_car)){
			if(!car(_car) && !cdr(_car)) rt = SAO_TAG_true;
		}
		break;
	}
	return rt;
}
p_sao_obj native_pairq(p_sao_obj args,p_sao_obj ctx) {
	if (car(args)->_type != type_list) return SAO_TAG_false;
	return (sao_is_atom(caar(args)) && sao_is_atom(cdar(args))) ? SAO_TAG_true : SAO_TAG_false;
}
p_sao_obj native_is_list(p_sao_obj args,p_sao_obj ctx) {
	p_sao_obj list;
	if (car(args)->_type != type_list)
		return SAO_TAG_false;
	for (list = car(args); (list); list = list->cdr)
		if ((list->cdr) && (list->cdr->_type != type_list))
			return SAO_TAG_false;
	return (car(args)->_type == type_list && native_pairq(args,ctx) != SAO_TAG_true) ? SAO_TAG_true : SAO_TAG_false;
}
p_sao_obj native_atom(p_sao_obj expr,p_sao_obj ctx) {
	//sao_stderr("debug native_atom\n",expr);
	return sao_is_atom(car(expr)) ? SAO_TAG_true : SAO_TAG_false;
}
//===
//p_sao_obj native_eeq(p_sao_obj args,p_sao_obj ctx) { return sao_is_eq(car(args), cadr(args)) ? SAO_TAG_true : SAO_TAG_false; }
//==
p_sao_obj native_eq(p_sao_obj args,p_sao_obj ctx) { return sao_is_eq(car(args), cadr(args)) ? SAO_TAG_true : SAO_TAG_false; }

//eq+
p_sao_obj native_same(p_sao_obj args,p_sao_obj ctx) {
	if (sao_is_eq(car(args), cadr(args))) return SAO_TAG_true;
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
//////////////////////////////////////////////////////////////////////////////
//FOR int only, should change to "eqi"/"eqd"/"eqn" ?
p_sao_obj native_cmp(p_sao_obj args,p_sao_obj ctx) {
	p_sao_obj _a = car(args);
	p_sao_obj _b = cadr(args);
	if(_a && _a->_type!=type_long){
		sao_print("DEBUG _a",_a);
		return SAO_TAG_false;
	}
	if(_b && _b->_type!=type_long){
		sao_print("DEBUG _b",_b);
		return SAO_TAG_false;
	}
	long _a_l = _a ? _a->_long:0,
			 _b_l = _b ? _b->_long:0;
	p_sao_obj rt = (_a_l==_b_l) ? SAO_TAG_true : SAO_TAG_false;
	//sao_print("cmp.rt=",rt);
	//sao_stdout(",DEBUG _a_l=%d,_b_l=%d\n",_a_l,_b_l);
	return rt;
}
//p_sao_obj native_not(p_sao_obj args) { return native_cmp(args); }
p_sao_obj native_gt(p_sao_obj sexp,p_sao_obj ctx) {
	SAO_ASSERT_TYPE(car(sexp), type_long);
	SAO_ASSERT_TYPE(cadr(sexp), type_long);
	return (car(sexp)->_long > cadr(sexp)->_long) ? SAO_TAG_true : SAO_TAG_false;
}
p_sao_obj native_lt(p_sao_obj sexp,p_sao_obj ctx) {
	SAO_ASSERT_TYPE(car(sexp), type_long);
	SAO_ASSERT_TYPE(cadr(sexp), type_long);
	return (car(sexp)->_long < cadr(sexp)->_long) ? SAO_TAG_true : SAO_TAG_false;
}
p_sao_obj native_add(p_sao_obj list,p_sao_obj ctx) {
	SAO_ASSERT_TYPE(car(list), type_long);
	long total = car(list)->_long;
	list = cdr(list);
	while ((car(list)))
	{
		SAO_ASSERT_TYPE(car(list), type_long);
		total += car(list)->_long;
		list = cdr(list);
	}
	return sao_new_long(total);
}
p_sao_obj native_sub(p_sao_obj list,p_sao_obj ctx) {
	SAO_ASSERT_TYPE(car(list), type_long);
	long total = car(list)->_long;
	list = cdr(list);
	while ((list)) {
		SAO_ASSERT_TYPE(car(list), type_long);
		total -= car(list)->_long;
		list = cdr(list);
	}
	return sao_new_long(total);
}
p_sao_obj native_div(p_sao_obj list,p_sao_obj ctx) {
	SAO_ASSERT_TYPE(car(list), type_long);
	long total = car(list)->_long;
	list = cdr(list);
	while ((list)) {
		SAO_ASSERT_TYPE(car(list), type_long);
		total /= car(list)->_long;
		list = cdr(list);
	}
	return sao_new_long(total);
}
p_sao_obj native_mul(p_sao_obj list,p_sao_obj ctx) {
	p_sao_obj _car = car(list);
	//SAO_ASSERT_TYPE(_car, type_long);
	if(!_car) return SAO_TAG_nil;
	if(_car->_type == type_long){
		long total = _car->_long;
		list = cdr(list);
		while ((list)) {
			//SAO_ASSERT_TYPE(car(list), type_long);
			_car  = car(list);
			if(!_car) break;
			if(_car->_type != type_long){
				sao_warn("WARN: mul() is not yet support type of (%d)\n", _car->_type);
				break;
			}
			total *= _car->_long;
			list = cdr(list);
		}
		return sao_new_long(total);
	}else if(_car->_type == type_vector){
		sao_warn("WARN: Matrix Calc is coming soon");
	}else{
		sao_warn("WARN: mul() is not yet support type of (%d)\n", _car->_type);
	}
	return SAO_TAG_nil;
}
//////////////////////////////////////////////////////////////////////////////
char* sao_strcat(char * dst, char * src){
	char *target = libc(malloc)((long)libc(strlen)(dst) + (long)libc(strlen)(src) + 1);
	libc(strcpy)(target, dst);
	libc(strcat)(target, src); 
	return target;
}
p_sao_obj native_shell(p_sao_obj args,p_sao_obj ctx) {
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
	return SAO_TAG_true;
}
p_sao_obj native_ffi(p_sao_obj args,p_sao_obj ctx) {
	sao_print("ffi todo",args);
	//libc(system)("ls");
	return SAO_TAG_true;
}
p_sao_obj native_exit(p_sao_obj args,p_sao_obj ctx) { libc(exit)(0); return SAO_TAG_nil; }
//TODO merge read/load
p_sao_obj native_read(p_sao_obj args,p_sao_obj ctx) { return sao_load_expr(sao_stream_new(libc(stdin),stream_file)); }
p_sao_obj native_load(p_sao_obj args,p_sao_obj ctx) { //TODO merge with native_read() 1!
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
		if (!exp) break;
		ret = sao_eval(exp, SAO_TAG_global);//attach to global here. TODO attach the to the caller later (or the 2nd argv)
	}
	libc(fclose)(fp);
	return ret;
}
p_sao_obj native_vget(p_sao_obj args,p_sao_obj ctx) {
	p_sao_obj vct = SAO_ASSERT_TYPE(car(args), type_vector);
	p_sao_obj key = SAO_ASSERT_TYPE(cadr(args), type_long);
	if (key->_long >= vct->_len) return SAO_TAG_nil;
	return vct->_vector[key->_long];
}
p_sao_obj native_vset(p_sao_obj args,p_sao_obj ctx){
	p_sao_obj vct = SAO_ASSERT_TYPE(car(args), type_vector);
	p_sao_obj key = SAO_ASSERT_TYPE(cadr(args), type_long);
	if (!(caddr(args))) return SAO_TAG_nil;
	if (key->_long >= vct->_len) return SAO_TAG_nil;
	car(args)->_vector[key->_long] = caddr(args);
	return SAO_TAG_true;
}
p_sao_obj native_print(p_sao_obj list,p_sao_obj ctx) {
	p_sao_obj _ptr;
	int t = 0;
	for(;;){
		_ptr = car(list);
		if(!_ptr) break;
		sao_print(t?" ":0,_ptr);t=1;
		list = cdr(list);
	}
	sao_stdout("\n");
	return _ptr;
}
p_sao_obj native_c_int(p_sao_obj args,p_sao_obj ctx) {
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
p_sao_obj saolang_init()
{
	sao_print = _sao_print;
	sao_eval = _sao_eval;

//#define LIST_SAO_TAG true,false,set,let,if,lambda,procedure,at
	//SAO_ITR(sao_add_sym_x, SAO_EXPAND(LIST_SAO_TAG));
	SAO_ITR(sao_add_sym_x, set,let,lambda,procedure);

	SAO_TAG_at=sao_new_symbol("@");sao_var(SAO_TAG_at,SAO_TAG_at,SAO_TAG_global);
	SAO_TAG_true=sao_new_symbol("@1");sao_var(SAO_TAG_true,SAO_TAG_true,SAO_TAG_global);
	SAO_TAG_false=sao_new_symbol("@0");sao_var(SAO_TAG_false,SAO_TAG_false,SAO_TAG_global);
	SAO_TAG_if=sao_new_symbol("@?");sao_var(SAO_TAG_if,SAO_TAG_if,SAO_TAG_global);

	sao_var(sao_new_symbol("@+"), sao_new_native(native_add,"@+"), SAO_TAG_global);
	sao_var(sao_new_symbol("@-"), sao_new_native(native_sub,"@-"), SAO_TAG_global);
	sao_var(sao_new_symbol("@*"), sao_new_native(native_mul,"@*"), SAO_TAG_global);
	sao_var(sao_new_symbol("@/"), sao_new_native(native_div,"@/"), SAO_TAG_global);
	
	//p_sao_obj g_symbol_holder = SAO_TAG_nil;
	//g_symbol_holder = sao_new_vector(65536-1);//TODO auto expand for the tables
	SAO_ITR(add_sym_list, print,lt,add,sub,exit);//minimum for fib.sao
	SAO_ITR(add_sym_list, //quote,cond,var(i.e. define),
			atom,eq,car,cdr,cons,//function from LISP
			);
	SAO_ITR(add_sym_list,
			exit,shell,ffi,//sys
			global,//FOR DEV MODE
			type,cons,setcar,setcdr,//core
			debug,
			list,//TODO will be removed soon
			//vector,
			//vget,vset,//data structure TODO
			load,print,read,//io
			add,sub,mul,div,cmp,lt,gt,//logic,
			is_empty,is_nil,is_list,pairq,eq,same,//helpers
			_null,_ctx,//for debug only...
			);
	//@(fb(n),if(lt(n,3),1,+(fb(-(n,1)),fb(-(n,2)))))
	SAO_ITR(add_sym_list, c_int);
	return SAO_TAG_global;
}

#if 0
//TODO jot the symbol depth
//	p_sao_obj ret = sao_vector_lookup(g_symbol_holder,s);
//	if (!(ret)) {
//		ret = sao_alloc(type_symbol);
//		ret->_string = libc(strdup)(s);
//		//ht_insert(ret);
//		sao_vector_insert(g_symbol_holder,ret);
//	}else{
//		//TODO need using depth also?
//		if(!libc(strcmp)(ret->_string,s)){
//			//sao_warn("sao_vector_insert again same for (%s)?\n",s);
//			//sao_vector_insert(g_symbol_holder,ret);
//		}else{
//			sao_error("g_symbol_holder full? (%s,%s)\n",ret->_string,s);
//		//	int newlen = 2*(gHTable_len+1)-1 ;
//		//	ht_resize( newlen );
//		//	return sao_new_symbol(s);
//		}
//	}
//int sao_clen(int val) {
//	if (val < 128) { return 1;
//	} else if (val < 224) { return 2;
//	} else if (val < 240) { return 3;
//	} else { return 4; }
//}

#endif
