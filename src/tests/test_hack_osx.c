//@ref https://www.blackhat.com/presentations/bh-jp-08/bh-jp-08-Miller/BlackHat-Japan-08-Miller-Hacking-OSX.pdf
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <sys/mman.h>
char shellcode[] = "\xeb\xfe";
int main(int argc, char *argv[]){
	void (*f)();
	char *x = malloc(2);
	unsigned int page_start = ((unsigned int) x) & 0xfffff000;
	int ret = mprotect((void *) page_start, 4096, PROT_READ|PROT_WRITE);
	if(ret<0){ perror("mprotect failed?"); }
	//memcpy(x, shellcode, sizeof(shellcode));
	//f = (void (*)()) x;
	//f();
}
