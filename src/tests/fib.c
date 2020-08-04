extern void*(*ffic())();
#define libc(f) ffic(0,#f)

unsigned long fib(int n){
	if(n<=1) return 1;
	return n*fib(n-1);
}

int main(int argc, char**argv){

	libc(printf)("argc=%d\n",argc);
	for(int i=0;i<argc;i++){
	libc(printf)("argv[%d]=%s\n",i,argv[i]);
	}
	int n = (argc>1) ? (long)(libc(atol)(argv[1])): 1;

	libc(printf)("fib(%d)=%d\n",n,fib(n));

	return 0;
}

