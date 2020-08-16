extern void*(*ffic())();
extern void*(*ffic_raw())();
# define libc(f) ffic(0,#f)
int main(){
	//ffic(0,"fprintf")(libc(stderr),"ffi_fprintf(libc(stderr))");
	libc(fprintf)(libc(stderr),"ffi_fprintf(libc(stderr))");
	ffic_raw("user32","MessageBoxA",0)(0,"hello3","hello4",0);
	return 0;
}
