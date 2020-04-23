typedef void*(*ffic_func)();
extern void*(*ffic())();//ok
#define libc(f) ffic("c",#f)

#define OUTS(x) libc(printf)(#x "=%s\n", #x);
#define OUTD(x) libc(printf)(#x "=%ld\n", x);
#define FOUTD(x) libc(fprintf)(libc(stderr),#x "=%ld\n", x);

typedef struct {
	ffic_func func;
	int i;
} libc_func;

void* test(){
	OUTS(From test());
	return 0;
}

int main(){
//	ffic_func printf = libc(printf);
//	ffic_func fprintf = libc(fprintf);
//	ffic_func stderr = libc(stderr);

	OUTD(ffic);
	OUTD( ((long)6)&((long)(128-1)) );

	OUTS(hello 42);
	OUTD(sizeof(void*));
	OUTD(sizeof(float));
	OUTD(sizeof(double));
	OUTD(sizeof(int));
	OUTD(sizeof(long));
	OUTD(sizeof(long int));
	OUTD(sizeof(long long int));
	OUTD(libc(stdout));
	OUTD(libc(stderr));
	FOUTD(libc(stderr));

	libc_func cf = {.func=test};
	cf.func();
	ffic_func f = cf.func;
	f();
	//((ffic_func)(&cf))();

	//libc(printf)("stdout=%d\n",libc(stdout));
	//libc(printf)("stderr=%d\n",libc(stderr));
	//libc(fprintf)(libc(stderr),"fprintf.stderr=%d\n",libc(stderr));
	return 0;
}
