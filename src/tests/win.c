extern void*(*ffic())();
extern void*(*ffic_raw())();
# define libc(f) ffic(0,#f)
int main(){
	//ffic(0,"fprintf")(libc(stderr),"ffi_fprintf(libc(stderr))");
	void*(*MessageBoxA)() = ffic_raw("user32","MessageBoxA",0);
	MessageBoxA(0,"hello6","hello5",0);
	MessageBoxA = ffic_raw("user32","MessageBoxA",0);
	MessageBoxA(0,"hello3","hello4",0);
	//libc(printf)("okok\n");
	//libc(fprintf)(libc(stderr),"ffi_fprintf(libc(stderr))");
	return 0;
}
