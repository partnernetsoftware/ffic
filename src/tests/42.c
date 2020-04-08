extern void*(*ffic())();
#define libc(f) ffic("c",#f)

int main(){

	libc(printf)("hello 42\n");
	libc(printf)("stdout=%d\n",libc(stdout));
	libc(printf)("stderr=%d\n",libc(stderr));

	libc(fprintf)(libc(stderr),"fprintf.stderr=%d\n",libc(stderr));

	return 0;
}
