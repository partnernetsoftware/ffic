#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <sys/mman.h>

char buffer [0x2000];
void* bufferp;

char* hola_mundo = "Hola mundo!";
void (*_printf)(const char*,...);

void hola()
{ 
	_printf(hola_mundo);
}
typedef int addr_t;

static int set_pages_executable(void *ptr, unsigned long length)
{
#ifdef _WIN32
    unsigned long old_protect;
    VirtualProtect(ptr, length, PAGE_EXECUTE_READWRITE, &old_protect);
#else
    //void __clear_cache(void *beginning, void *end);
# ifndef HAVE_SELINUX
    addr_t start, end;
#  ifndef PAGESIZE
#   define PAGESIZE 4096
#  endif
    start = (addr_t)ptr & ~(PAGESIZE - 1);
    end = (addr_t)ptr + length;
    end = (end + PAGESIZE - 1) & ~(PAGESIZE - 1);
    //return mprotect((void *)start, end - start, PROT_READ | PROT_WRITE | PROT_EXEC);
    return mprotect((void *)start, end - start, PROT_READ | PROT_EXEC);
    //if (mprotect((void *)start, end - start, PROT_READ | PROT_WRITE | PROT_EXEC))
        //tcc_error("mprotect failed: did you mean to configure --with-selinux?");
# endif
# if defined TCC_TARGET_ARM || defined TCC_TARGET_ARM64
    //__clear_cache(ptr, (char *)ptr + length);
# endif
#endif
	return 0;
}
int main ( void )
{
	//Compute the start of the page
	//bufferp = (void*)( ((unsigned long)buffer+0x1000) & 0xfffff000 );
	//if(mprotect(bufferp, 1024, PROT_READ|PROT_EXEC|PROT_WRITE))
	//{
	//	printf("mprotect failed\n");
	//	return(1);
	//}

	void* bufferp_tpl = (void*)( ((unsigned long)buffer+0x1000) & 0xfffff000 );
	
	void* bufferp = mmap(0, 1024, PROT_READ | PROT_WRITE, MAP_ANON | MAP_PRIVATE, -1, 0);
	if(!bufferp)
	{
		printf("mmap failed\n");
		return(1);
	}

	//bufferp = (void*)( ((unsigned long)buffer+0x1000) & 0xfffff000 );
	//if(set_pages_executable(bufferp, 1024))
	//{
	//	printf("mprotect failed\n");
	//	return(1);
	//}
	
	//The printf function has to be called by an exact address
	_printf = printf;

	//Copy the function hola into buffer
	memcpy(bufferp,(void*)hola,1024);
	if(mprotect(bufferp, 1024, PROT_READ | PROT_EXEC)){
		printf("mprotect failed\n");
		return(1);
	}

	void (*func)() = bufferp;
	func();

	return(0);
}
