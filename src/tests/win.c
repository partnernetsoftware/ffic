extern void*(*ffic())();
extern void*(*ffic_raw())();
# define libc(f) ffic("c",#f)
int main(){
	ffic("c","fprintf")(libc(stderr),"ffi_fprintf(libc(stderr))");
	ffic_raw("user32","MessageBoxA")(0,"hello3","hello4",0);
	return 0;
}
