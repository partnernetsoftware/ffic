typedef void*(*ffic_func)();
extern void*(*ffic())();//ok
#define libc(f) ffic("c",#f)

#define OUTS(x) libc(printf)(#x "=%s\n", #x);
#define OUTD(x) libc(printf)(#x "=%ld\n", x);
#define FOUTD(x) libc(fprintf)(libc(stderr),#x "=%ld\n", x);
int main(){
	ffic_func printf = libc(printf);
	ffic_func fprintf = libc(fprintf);
	ffic_func stderr = libc(stderr);

	for(int i;i<10;i++){ OUTD(i); }
	for(int i;!(i=='\n'||i==-1);){ i+=1;OUTD(i); }
	return 0;
}
