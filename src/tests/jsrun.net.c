//ffic by Wanjo Chan {
typedef void* ffic_ptr;
typedef ffic_ptr(*ffic_func)();
typedef int(*ffic_func_i)();
// ffic_unc ffifc_dlopen;
// ffic_func ffic_dlsym;
ffic_func_i _printf;
#define dump_ld(v) _printf(#v "=%ld\n",(long int)v)
#define dump_d(v) _printf(#v "=%d\n",(int)v)
#define dump_s(v) _printf(#v "=%s\n",(char*)v)
#define dump(v,t) dump##_##t(v)
ffic_ptr (*ffic_core(const char *libfilename,const char* funcname))()
{
	static ffic_func ffic_dlopen;
	static ffic_func ffic_dlsym;
	if(!ffic_dlsym){
#if defined(_WIN32) || defined(_WIN64)
#ifndef _WINDOWS_
		extern ffic_func GetProcAddress();
#endif
		ffic_dlsym = (ffic_func) GetProcAddress;
#else
#if defined(__APPLE__)
		extern ffic_ptr dlsym();
		ffic_dlsym = (ffic_func) dlsym;
#else
		//extern void* __libc_dlsym(void*, const char*);
		extern void* __libc_dlsym();
		ffic_dlsym = (ffic_func) __libc_dlsym;
#endif
#endif
	}
	if(!ffic_dlopen){
#if defined(_WIN32) || defined(_WIN64) 
#ifdef UNICODE
#ifndef _WINDOWS_
		extern LoadLibraryW();
#endif
		ffic_dlopen = (ffic_func) LoadLibraryW;
#else
#ifndef _WINDOWS_
		extern LoadLibraryA();
#endif
		ffic_dlopen = (ffic_func) LoadLibraryA;
#endif
#else
#if defined(__APPLE__)
		extern ffic_ptr dlopen();
		ffic_dlopen = (ffic_func) dlopen;
#else
		//extern ffic_ptr __libc_dlopen_mode(const char*, int);
		extern ffic_ptr __libc_dlopen_mode();
		ffic_dlopen = (ffic_func) __libc_dlopen_mode;
#endif
#endif
	}
	static ffic_ptr ffic_ptr_libc;
	ffic_ptr _lib = libfilename ?
		ffic_dlopen(libfilename,0x103)
		:
		ffic_ptr_libc ? ffic_ptr_libc : (ffic_ptr_libc = ffic_dlopen("libc.so.6",0x103))
		;
	//return ffic_dlsym(ffic_dlopen(libfilename,0x101), funcname);
	//return ffic_dlsym(ffic_dlopen(libfilename,0x103), funcname);
	return ffic_dlsym(_lib, funcname);
}
//ffic }
int main () {
	_printf = (ffic_func_i) ffic_core(0,"printf");
	//ffic_ptr _libdl = ffic_core("/lib/x86_64-linux-gnu/libdl.so.2","dlopen");
	ffic_func _dlopen = (ffic_func) ffic_core("libdl.so.2","dlopen");
	ffic_func _dlsym = (ffic_func) ffic_core("libdl.so.2","dlsym");
	dump(_dlopen,ld);
	dump(_dlsym,ld);
	extern int system();
	//system("ls -al /lib/x86_64-linux-gnu/");
	//extern ffic_func dlopen;
	//dump(dlopen,ld);
	system("pwd");
	return 0;
}


