typedef void*(*ffic_func)();
extern void*(*ffic())();//ok
#define libc(f) ffic("c",#f)
