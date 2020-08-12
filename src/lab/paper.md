# Design 

## 2020

```
_type => [list/tree, vector, prim, ..., symbol, string]
_raw => char*

SAO_ITR(define_sao_tag, nil,at,vector,map,argv,global,begin,end,quote);
	SAO_TAG_global = cons(cons(SAO_TAG_nil, SAO_TAG_nil), SAO_TAG_nil);
	SAO_TAG_argv = cons(cons(SAO_TAG_nil, SAO_TAG_nil), SAO_TAG_nil);
	SAO_TAG_nilnil=sao_new_symbol("@@");sao_var(SAO_TAG_nilnil,SAO_TAG_nil,SAO_TAG_global);
	sao_add_sym_sx("@",at);//
	sao_add_sym_sx("@^",quote);//
	sao_add_sym_sx("@V",vector);//vector(like json-array)
	sao_add_sym_sx("@M",map);//map(like json-object)
	sao_add_sym_sx("@B",begin);//start of procedure
	sao_add_sym_sx("@E",end);//end of )]}

#define LIST_SAO_TAG true,false,set,if,lambda,procedure,nilnil
SAO_ITR(define_sao_tag, SAO_EXPAND(LIST_SAO_TAG));


========================================================================
typedef struct _sao_obj_v sao_obj_v, *p_sao_obj_v;
typedef struct _sao_obj sao_obj,*p_sao_obj;
typedef p_sao_obj (*sao_native_t)(p_sao_obj args,p_sao_obj ctx);                //late-binding
#define SAO_OBJ_V union {\
	struct { p_sao_obj car; p_sao_obj cdr; }; \
	struct { union {\
		p_sao_obj* _vector; \
		ffic_string _string;\
		ffic_wstring _wstring;\
	}; union {sao_native_t _native;ffic_ipt _len;long _long;double _double;}; };\
}
struct _sao_obj_v { SAO_OBJ_V; };
struct _sao_obj { union{ void* ptr; int _type; }; ffic_string _raw; union{ SAO_OBJ_V; sao_obj_v v;}; };
========================================================================

[
union{ ptr,_type },
_raw,
union{
 [car,cdr]
 _vector
 _string
 _wstring
},
{
 _long
 _double
 _len
 _native
} v]


list: car/cdr from LISP, pointer to the left and right


```

# Ref

https://en.wikipedia.org/wiki/Scheme_(programming_language)

Scheme: An Interpreter for Extended Lambda Calculus，1975
Lambda: The Ultimate Imperative，1976
Lambda: The Ultimate Declarative，1976
Debunking the 'Expensive Procedure Call' Myth, or, Procedure Call Implementations Considered Harmful, or, Lambda: The Ultimate GOTO，1977
The Art of the Interpreter or, the Modularity Complex (Parts Zero, One, and Two)，1978
RABBIT: A Compiler for SCHEME，1978
Design of LISP-based Processors, or SCHEME: A Dielectric LISP, or Finite Memories Considered Harmful, or LAMBDA: The Ultimate Opcode，1979
Compiler Optimization Based on Viewing LAMBDA as RENAME + GOTO，1980
Design of a Lisp-based Processor，1980

https://en.wikipedia.org/wiki/Fixed-point_combinator
