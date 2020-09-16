#define dump(v,t) printf(#v "=%" #t "\n", v)

void main(){
	extern void printf(const char*,...);
	dump(main,ld);
	const char y[128] = {"tests"};
	dump(y,s);
	char x[512]={y[0],y[1]};
	dump(x,s);
}
