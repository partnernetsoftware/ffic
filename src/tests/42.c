extern void*(*ffic())();
#define libc(f) ffic("c",#f)

int main(){

	libc(printf)("hello 42\n");

	return 0;
}
