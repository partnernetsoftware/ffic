//#include "ffic.h"
//../bin/tcc.osx -I. -run tests/env.c
int main(int argc, char* argv[]){
	extern int printf(const char*,...);
	extern char ** environ;
	char**envp = environ;

	int ii = 0;

	while (envp && envp[ii] != 0)  // 数组最后一个元素是0
	{
		printf("%s\n",envp[ii]); 
		ii++;
	}
	return 0;	
}
