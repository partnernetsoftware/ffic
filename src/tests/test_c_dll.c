typedef void* ffic_ptr;
typedef ffic_ptr (__attribute__((__stdcall__)) *ffic_func)();
extern ffic_func (*ffic())();
extern ffic_func (*ffic_raw())();

#define import0(c,m) ffic_func m = (ffic_func) ffic(#c,#m)
#define import1(m,c,...) import0(c,m)
#define import(m,...) import1(m,##__VA_ARGS__,c)

#define dump_d(x) printf("%s=%d\n", #x, x)
#define dump_ld(x) printf("%s=%ld\n", #x, x)
#define dump_s(x) printf("%s=%s\n", #x, x)

#define NULL ((void*)0)

//ffic_static_32.exe test_c_dll.c
int main(){
	ffic_func pf = (ffic_func) ffic_raw("libc","printf",0);
	dump_d(printf);
	dump_d(pf);
	return 0;
}
