//ffic by Wanjo Chan {
typedef void* ffic_ptr;
typedef ffic_ptr(*ffic_func)();
typedef int(*ffic_func_i)();
typedef unsigned short(*ffic_func_su)();
typedef unsigned long(*ffic_func_lu)();
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
		extern void* __libc_dlsym();
		ffic_dlsym = (ffic_func) __libc_dlsym;
	}
	if(!ffic_dlopen){
		extern ffic_ptr __libc_dlopen_mode();
		ffic_dlopen = (ffic_func) __libc_dlopen_mode;
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

struct in_addr {
	union {
		struct { unsigned char s_b1,s_b2,s_b3,s_b4; } S_un_b;
		struct { unsigned short s_w1,s_w2; } S_un_w;
		unsigned long S_addr;
	} S_un;
};
struct sockaddr_in {
	short sin_family;
	unsigned short sin_port;
	struct in_addr sin_addr;
	char sin_zero[8];
};
static ffic_func_i c_sscanf;
static ffic_func c_memset;
static ffic_func_lu c_htonl;
static ffic_func_su c_htons;
static int str_to_sockaddr( const char* str , struct sockaddr_in* addr ) {
	int c1,c2,c3,c4,port;
	int ret = c_sscanf(str,"%u.%u.%u.%u:%u",&c1,&c2,&c3,&c4,&port);
	if( ret != 5 )  return -1;
	c_memset(addr,0,sizeof(*addr));
	addr->sin_family = 2;
	addr->sin_port = c_htons(port);
	addr->sin_addr.S_un.S_addr = c_htonl((c1<<24)+(c2<<16)+(c3<<8)+c4);
	return 0;
}
int main () {
	_printf = (ffic_func_i) ffic_core(0,"printf");
	//ffic_ptr _libdl = ffic_core("/lib/x86_64-linux-gnu/libdl.so.2","dlopen");
	ffic_func _dlopen = (ffic_func) ffic_core("libdl.so.2","dlopen");
	ffic_func _dlsym = (ffic_func) ffic_core("libdl.so.2","dlsym");
	dump(_dlopen,ld);
	dump(_dlsym,ld);
	ffic_func_i socket = (ffic_func_i) ffic_core(0,"socket");
	dump(socket,ld);

	struct sockaddr_in ipv4;
	int ret;
	int sock;
	sock = socket(2,1,0);
	dump(sock,d);
	//         static void reuse_socket( socket_t sock ) {
	//     int on = 1;
	// #ifdef _WIN32
	//     setsockopt(sock,SOL_SOCKET,SO_EXCLUSIVEADDRUSE,cast(const char*,&on),sizeof(int));
	// #endif // _WIN32
	//     setsockopt(sock,SOL_SOCKET,SO_REUSEADDR,cast(const char*,&on),sizeof(int));
	// }
	// reuse_socket(sock);
#define cast(x,p) ((x)(p))
	str_to_sockaddr("39.156.69.79:80",&ipv4);
	ffic_func_i connect = (ffic_func_i) ffic_core(0,"connect");
	ret = connect(sock,cast(struct sockaddr*,&ipv4),sizeof(ipv4));
	dump(ret,d);
	system("nslookup baidu.com");
	// extern int system();
	// //system("ls -al /lib/x86_64-linux-gnu/");
	// //extern ffic_func dlopen;
	// //dump(dlopen,ld);
	// system("whoami");
	return 0;
}

