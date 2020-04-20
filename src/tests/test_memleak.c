#include "ffic_extern.h"
typedef struct _wrapper
{
	char* _string;
} wrapper,*p_wrapper;

char* test(wrapper w){
	return w._string;
}

char* test1(){
	char www[] = "www\n";
	char* rt = test((wrapper){._string=www});
	libc(printf)(rt);
	return rt;
}
int main(){
	char* s1 = test1();
	libc(printf)(s1);//should not eq www
	//libc(printf)(s1);
	return 0;
}

