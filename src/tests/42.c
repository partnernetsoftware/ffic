typedef void*(*ffic_func)();
extern void*(*ffic())();//ok
#define libc(f) ffic("c",#f)

#define OUTS(x) libc(printf)(#x "=%s\n", #x);
#define OUTD(x) libc(printf)(#x "=%d\n", x);
#define FOUTD(x) libc(fprintf)(libc(stderr),#x "=%d\n", x);
int main(){
//	ffic_func printf = libc(printf);
//	ffic_func fprintf = libc(fprintf);
//	ffic_func stderr = libc(stderr);

	OUTS(hello 42);
	OUTD(sizeof(void*));
	OUTD(sizeof(float));
	OUTD(sizeof(double));
	OUTD(sizeof(int));
	OUTD(sizeof(long));
	OUTD(libc(stdout));
	OUTD(libc(stderr));
	FOUTD(libc(stderr));
	//libc(printf)("stdout=%d\n",libc(stdout));
	//libc(printf)("stderr=%d\n",libc(stderr));
	//libc(fprintf)(libc(stderr),"fprintf.stderr=%d\n",libc(stderr));
	return 0;
}
