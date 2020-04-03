extern void*(*ffic())();
//#include "ffic.h"
#define libc(f) ffic("c",#f)
int main(){
	typedef unsigned long int sao_u64;
	sao_u64 (*microtime)() = ( sao_u64(*)() ) ffic("c","microtime");
	ffic("c","printf")("%llu\n",microtime());
	//libc(printf)("%llu\n",(sao_u64)ffic_microtime());
}
