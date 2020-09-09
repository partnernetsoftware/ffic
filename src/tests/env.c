int main(int argc, char* argv[], char** envp){
	extern int printf(const char*,...);

/* architecture */
#if defined(__i386__) || defined _M_IX86
	printf("32bit\n");
#endif
#if defined(__x86_64__) || defined _M_AMD64
	printf("64bit\n");
#endif
#if defined(__aarch64__)
	printf("arm\n");
	printf("64bit\n");
#endif
#if defined(__riscv) && defined(__LP64__)
	printf("riscv\n");
	printf("64bit\n");
#endif
	
/* OS */
#if defined (__linux__)
	printf("linux(__linux__)\n");
#endif
#if defined (__FreeBSD__) || defined (__FreeBSD_kernel__)
	printf("freebsd(__FreeBSD__/__FreeBSD_kernel__)\n");
#endif
#ifdef __APPLE__
	printf("darwin(__APPLE__)\n");
#endif
#ifdef _WIN32
	printf("win(_WIN32)=%d\n",_WIN32);
#endif

/* calling convention and ABI */
//#if defined (__ARM_EABI__)
//# if defined (__ARM_PCS_VFP)
//#  define TRIPLET_ABI "gnueabihf"
//# else
//#  define TRIPLET_ABI "gnueabi"
//# endif
//#else
//# define TRIPLET_ABI "gnu"
//#endif
	
#ifdef _WIN32
#else
	//if(!envp){ printf("empty envp?\n"); }
	extern char ** environ;
	envp = environ;
#endif

	int ii = 0;

	while (envp && envp[ii] != 0) 
	{
		printf("%s\n",envp[ii]); 
		ii++;
	}
	return 0;	
}
