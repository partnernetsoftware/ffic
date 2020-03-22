extern void*(*ffi(const char*, const char*, ...))();
# define libc(f) ffi(#f,"c")

int main(){

	libc(printf)("42.c: stderr=%d\n",libc(stderr));
	libc(fprintf)(libc(stderr),"42.c: fprintf stderr=%d\n",libc(stderr));

	return 0;
}
