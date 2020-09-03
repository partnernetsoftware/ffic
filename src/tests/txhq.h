#define $declare(t,n) t n
#define $use(c,m,t) (t) ffic(#c,#m)
#define $import(c,m,n,t) $declare(t,n) = $use(c,m,t)
#define $dump(v,t) c_printf(#v "=%" #t "\n",v)

$declare(ffic_func,c_printf);
$declare(ffic_func,c_fprintf);
$declare(ffic_ptr,c_stderr);

typedef struct _ffic_def {
	ffic_string c;
	ffic_string m;
	//ffic_def *p;
	ffic_ptr f;
} ffic_def;

//typedef
struct _tx_libs {
	struct {
		ffic_def printf;
	} c;
} tx_libs = {
	.c = {
		.printf = {"c","printf"},
	}
};

//#define $def(c,m,t) tx_libs.c.m.p = $use(c,m,t)
//ffic_ptr ffic_get(ffic_def w) { return w.f?w.f:(w.f=ffic(w.c,w.m)); }
ffic_ptr ffic_get(ffic_def* w) { return w->f?w->f:(w->f=ffic(w->c,w->m)); }

/**
	extern void printf();
	printf("tx_libs=%d\n",tx_libs);
	printf("tx_libs.c.printf.c=%s\n",tx_libs.c.printf.c);
	printf("tx_libs.c.printf.m=%s\n",tx_libs.c.printf.m);
	printf("tx_libs.c.printf.f=%d\n",tx_libs.c.printf.f);
	//ffic_func c_printf = ffic_get(tx_libs.c.printf);
	//ffic_func c_printf = ffic_get(&tx_libs.c.printf);
	//printf("c_printf=%d\n",c_printf);
	//printf("tx_libs.c.printf.f=%d\n",tx_libs.c.printf.f);
#define $send(c,m,t) ((t)ffic_get(&tx_libs.c.m))
	$send(c,printf,ffic_func)("???");
 */
