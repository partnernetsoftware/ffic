extern void*(*ffic())(); unsigned long fib(int n){ if(n<=1) return 1; return n*fib(n-1); } void main(){ ffic("c","printf")("fib(%d)=%d\n",10,fib(10)); }
