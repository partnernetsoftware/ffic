typedef void* ffic_ptr;
typedef ffic_ptr(__attribute__((__stdcall__)) *ffic_func)();
//typedef ffic_ptr(*ffic_func)();
extern ffic_ptr(*ffic())();
extern ffic_ptr(*ffic_raw())();
# define libc(f) ffic(0,#f)

#define decl0(c,m) ffic_func c##_##m
#define init0(c,m) c##_##m = (ffic_func) ffic(#c,#m)
#define import0(c,m) ffic_func m = (ffic_func) ffic(#c,#m)
#define import1(m,c,...) import0(c,m)
#define import(m,...) import1(m,##__VA_ARGS__,c)

decl0(c,fflush);
decl0(c,fprintf);//c_fprintf
ffic_ptr c_stderr;
decl0(user32,MessageBoxA);//user32_MessageBoxA

int main(){
	init0(c,fflush);
	init0(c,fprintf);//c_fprintf
	init0(c,stderr);

	c_fprintf(c_stderr,"ffi_fprintf(libc(stderr))\n");
	c_fflush(c_stderr);
	
	//void*(__stdcall *MessageBoxA)() = ffic_raw("user32","MessageBoxA",0);
	//ffic_func user32_MessageBoxA = (ffic_func) ffic_raw("user32","MessageBoxA",0);
	init0(user32,MessageBoxA);
	user32_MessageBoxA(0,"hello6","hello5",0);

	user32_MessageBoxA = (ffic_func) ffic_raw("user32","MessageBoxA",0);
	user32_MessageBoxA(0,"hello3","hello4",0);
	//libc(printf)("okok\n");
	//libc(fprintf)(libc(stderr),"ffi_fprintf(libc(stderr))\n");
	c_fprintf(c_stderr,"ffi_fprintf(libc(stderr))\n");
	return 0;
}

int _runmain(){
	return main();
}
