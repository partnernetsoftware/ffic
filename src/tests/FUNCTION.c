extern void printf();
#define dump(v, t) printf(#v "=%" #t "\n", v)
char* ss = __FUNCTION__;
#define FFIC_HASH #
#define FFIC_BRACKET_L (
#define FFIC_BRACKET_R )
#define FFIC_COMMA ,
#define FFIC_QUOTE(x) #x

#define FFIC_EXPAND(...) __VA_ARGS__

#define ffic_delay_include(fff)\
FFIC_HASH include fff

#define SAO_EMPTY()
#define SAO_DEFER(id) id SAO_EMPTY()
#define SAO_OBSTRUCT(...) __VA_ARGS__ SAO_DEFER(SAO_EMPTY)()
#define SAO_EVAL(...)  SAO_EVAL1(SAO_EVAL1(SAO_EVAL1(__VA_ARGS__)))
#define SAO_EVAL1(...) SAO_EVAL2(SAO_EVAL2(SAO_EVAL2(__VA_ARGS__)))
#define SAO_EVAL2(...) SAO_EVAL3(SAO_EVAL3(SAO_EVAL3(__VA_ARGS__)))
#define SAO_EVAL3(...) SAO_EVAL4(SAO_EVAL4(SAO_EVAL4(__VA_ARGS__)))
#define SAO_EVAL4(...) SAO_EVAL5(SAO_EVAL5(SAO_EVAL5(__VA_ARGS__)))
#define SAO_EVAL5(...) __VA_ARGS__

//ffic_delay_include("math3d.h")

//# include "math3d.h"
//SAO_OBSTRUCT(ffic_delay_include("math3d.h"))

//#define aaa(...) SAO_EVAL( dump FFIC_BRACKET_L __VA_ARGS__ FFIC_BRACKET_R )
#define aaa(...) SAO_EVAL( dump FFIC_BRACKET_L FFIC_LIST, s FFIC_BRACKET_R )
typedef struct xxx yyy;
struct xxx { int a; };
yyy v;

void main(){
	aaa();
	dump(__FUNCTION__, s);
	dump(ss, s);
	dump(v.a, d);
#define FFIC_LIST "a,b,c"
}

