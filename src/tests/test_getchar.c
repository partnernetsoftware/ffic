#include "ffic_extern.h"
int main(){
	int c;
	while((c=libc(getchar)())!=-1)
	{
		if(c==8)       // 8 is ASCII value of backspace
			libc(printf)("\\b");
	}
	return 0;
}
