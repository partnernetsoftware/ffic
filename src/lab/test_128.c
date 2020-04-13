extern void*(*ffic())();
#define libc(f) ffic("c",#f)

int main(){
	libc(printf)("sizeof(..)=%d\n",sizeof(signed long long int));
	return 0;
}
