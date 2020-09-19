#define dump_ld(v) printf(#v "=%ld\n",(long int)v)
#define dump_d(v) printf(#v "=%d\n",(int)v)
#define dump_s(v) printf(#v "=%s\n",(char*)v)
#define dump(v,t) dump##_##t(v)
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

#ifdef TCC_LIBTCC1
	printf("TCC_LIBTCC1=%s\n",TCC_LIBTCC1);
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
	
	printf("------------------------------------------------------------\n");
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
	for(int j=0; j<argc; j++){
		printf("%d: %s\n",j,argv[j]);
	}
	printf("------------------------------------------------------------\n");

	//extern void getcwd();
	//char buffer[255];
	//getcwd(buffer,255);
	//printf("getcwd=%s\n",buffer);
typedef void* ffic_ptr;
typedef ffic_ptr(
#ifdef _WIN32
		__attribute__((__stdcall__))
#endif
		*ffic_func)();

	extern ffic_func(*ffic(const char*, const char*))();

	char path[512]; int size = 512;
#ifdef _WIN32
	ffic_func c_GetModuleFileName = ffic("kernel32","GetModuleFileNameA");
	dump(c_GetModuleFileName,ld);
	c_GetModuleFileName(0,path,&size);
#else
	ffic_func c___NSGetExecutablePath = ffic("libc","_NSGetExecutablePath");
	dump(c___NSGetExecutablePath,ld);
	c___NSGetExecutablePath(path,&size);
#endif
	dump(path,s);

	extern char* strrchr(const char*,int);
	//char *basename = strrchr(path, '\\');
	char *basename = strrchr(path,
#ifdef _WIN32
			'\\'
#else
			'/'
#endif
			);
	if(basename && *(basename+1)!=0){
		dump(basename,s);
		*basename = 0;
		dump(path,s);
	}
	
	//TODO basename()
	//TODO zend_dirname()
	//https://github.com/php/php-src/blob/09904242af6b3d9bcc1c1c8c21cb81d128382b3f/Zend/zend_compile.c
	//TODO
	//Mac OS X: _NSGetExecutablePath() (man 3 dyld)
	//Linux: readlink /proc/self/exe
	//Solaris: getexecname()
	//FreeBSD: sysctl CTL_KERN KERN_PROC KERN_PROC_PATHNAME -1
	//FreeBSD if it has procfs: readlink /proc/curproc/file (FreeBSD doesn't have procfs by default)
	//NetBSD: readlink /proc/curproc/exe
	//DragonFly BSD: readlink /proc/curproc/file
	//Windows: GetModuleFileName() with hModule = NULL
	return 0;	
}
//tcc(-tcc1)
int _runmain(int argc, char* argv[], char** envp){
	return main(argc,argv,envp);
}
