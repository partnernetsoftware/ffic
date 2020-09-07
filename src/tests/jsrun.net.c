//ffic by Wanjo Chan {
typedef void* ffic_ptr;
typedef ffic_ptr(*ffic_func)();
typedef int(*ffic_func_i)();
ffic_func ffic_dlopen;
ffic_func ffic_dlsym;
ffic_func_i _printf;
#define dump_ld(v) _printf(#v "=%ld\n",(long int)v)
#define dump_d(v) _printf(#v "=%d\n",(int)v)
#define dump_s(v) _printf(#v "=%s\n",(char*)v)
#define dump(v,t) dump##_##t(v)
ffic_ptr (*ffic_core(const char *libfilename,const char* funcname))()
{
	if(!ffic_dlsym){
		extern void* __libc_dlsym();
		ffic_dlsym = (ffic_func) __libc_dlsym;
	}
	if(!ffic_dlopen){
		extern ffic_ptr __libc_dlopen_mode();
		ffic_dlopen = (ffic_func) __libc_dlopen_mode;
	}
	//return ffic_dlsym(ffic_dlopen(libfilename,0x101), funcname);
	return ffic_dlsym(ffic_dlopen(libfilename,0x103), funcname);
}
//ffic }
void main () {
	//ffic_ptr _libdl = ffic_core("/lib/x86_64-linux-gnu/libdl.so.2","dlopen");
	_printf = (ffic_func_i) ffic_core("libc.so.6","printf");
	dump(ffic_dlopen,ld);
	dump(ffic_dlsym,ld);
	ffic_func _dlopen = (ffic_func) ffic_core("libdl.so.2","dlopen");
	ffic_func _dlsym = (ffic_func) ffic_core("libdl.so.2","dlsym");
	dump(_dlopen,ld);
	dump(_dlsym,ld);
	extern int system();
    system("ls -al /lib/x86_64-linux-gnu/");
}

