//./bin/tcc64tcc.osx.1 -I `xcrun --show-sdk-path`/usr/include -I ../tinycc/include -I . -DTCC_TARGET_X86_64 -DTCC_TARGET_MACHO -DCONFIG_TCCDIR="\".\"" -DTCC_LIBTCC1="\"x86_64-osx-libtcc1.a\"" -I ../tinycc -DONE_SOURCE=1 -B ../bin -run tests/jsrun.network.c
// ../bin/tcc64tcc.osx.1 -DTCC_TARGET_X86_64 -DTCC_TARGET_MACHO -DCONFIG_TCCDIR="\".\"" -DTCC_LIBTCC1="\"x86_64-osx-libtcc1.a\"" -I ../tinycc -DONE_SOURCE=1 -B ../bin -run tests/jsrun.network.c
// ../bin/tcc64tcc.osx.1 -I `xcrun --show-sdk-path`/usr/include -DTCC_TARGET_X86_64 -DTCC_TARGET_MACHO -DCONFIG_TCCDIR="\".\"" -DTCC_LIBTCC1="\"x86_64-osx-libtcc1.a\"" -I ../tinycc -DONE_SOURCE=1 -B ../bin -run tests/jsrun.network.c
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
//ffic_ptr (*ffic_core(const char *libfilename,const char* funcname))();
ffic_ptr (*ffic_core(const char *libfilename,const char* funcname))()
{
	static ffic_func ffic_dlopen;
	static ffic_func ffic_dlsym;
	if(!ffic_dlsym){
#if defined(__APPLE__)
		extern ffic_ptr dlsym();
		ffic_dlsym = (ffic_func) dlsym;
#else
		//extern void* __libc_dlsym(void*, const char*);
		extern void* __libc_dlsym();
		ffic_dlsym = (ffic_func) __libc_dlsym;
#endif
	}
	if(!ffic_dlopen){
#if defined(__APPLE__)
		extern ffic_ptr dlopen();
		ffic_dlopen = (ffic_func) dlopen;
#else
		//extern ffic_ptr __libc_dlopen_mode(const char*, int);
		extern ffic_ptr __libc_dlopen_mode();
		ffic_dlopen = (ffic_func) __libc_dlopen_mode;
#endif
	}
	static ffic_ptr ffic_ptr_libc;
	ffic_ptr _lib = libfilename ?
		ffic_dlopen(libfilename,0x103)
		:
#if defined(__APPLE__)
		ffic_ptr_libc ? ffic_ptr_libc : (ffic_ptr_libc = ffic_dlopen("libc.dylib",0x103))
#else
		ffic_ptr_libc ? ffic_ptr_libc : (ffic_ptr_libc = ffic_dlopen("libc.so.6",0x103))
#endif
		;
	//return ffic_dlsym(ffic_dlopen(libfilename,0x101), funcname);
	//return ffic_dlsym(ffic_dlopen(libfilename,0x103), funcname);
	return ffic_dlsym(_lib, funcname);
}

//#include <sys/types.h>
#include <netinet/in.h>
#include <sys/socket.h>
//struct in_addr {
//	union {
//		struct { unsigned char s_b1,s_b2,s_b3,s_b4; } S_un_b;
//		struct { unsigned short s_w1,s_w2; } S_un_w;
//		unsigned long S_addr;
//	} S_un;
//};
//
////unix/win
////struct sockaddr_in {
////	short sin_family;
////	unsigned short sin_port;
////	struct in_addr sin_addr;
////	char sin_zero[8];
////};
//
//struct sockaddr_in {
//	//__uint8_t       sin_len;
//	unsigned char   sin_len;
//	//sa_family_t     sin_family;
//	unsigned char   sin_family;
//	//in_port_t       sin_port;
//	unsigned short  sin_port;
//	struct  in_addr sin_addr;
//	char            sin_zero[8];
//};
//
//#define  AF_INET                2
//#define  AF_INET6               23
//#define  SOCK_STREAM            1
//#define  SOCK_DGRAM             2
//#define  SOCK_RAW               3           // Raw sockets allow new IPv4 protocols to be implemented in user space. A raw socket receives or sends the raw datagram not including link level headers
//#define  SOCK_RDM               4
//#define  SOCK_SEQPACKET         5

static ffic_func_i c_sscanf;
static ffic_func c_memset;
static ffic_func_lu c_htonl;
static ffic_func_su c_htons;
static int str_to_sockaddr( const char* str , struct sockaddr_in* addr ) {
	int c1,c2,c3,c4,port;
	int ret = c_sscanf(str,"%u.%u.%u.%u:%u",&c1,&c2,&c3,&c4,&port);
	dump(c1,d);
	dump(c2,d);
	dump(c3,d);
	dump(c4,d);
	dump(port,d);
	if( ret != 5 )  return -1;
	c_memset(addr,0,sizeof(*addr));
	//c_memset(addr,0,sizeof(struct sockaddr_in));
	addr->sin_family = AF_INET;
	addr->sin_port = c_htons(port);
	//addr->sin_port = c_htonl(port);
	//addr->sin_addr.S_un.S_addr = c_htonl((c1<<24)+(c2<<16)+(c3<<8)+c4);
	//dump(addr->sin_addr.S_un.S_addr,ld);
	//osx
	addr->sin_addr.s_addr = c_htonl((c1<<24)+(c2<<16)+(c3<<8)+c4);
	dump(addr->sin_addr.s_addr,ld);
	return 0;
}
static ffic_func c_setsockopt;
#define cast(x,p) ((x)(p))
#define SO_REUSEADDR 0x0004
#define SO_EXCLUSIVEADDRUSE ((int)(~SO_REUSEADDR))
#define SOL_SOCKET 0xffff
#define socket_t int
static void reuse_socket( socket_t sock ) {
	int on = 1;
#ifdef _WIN32
	c_setsockopt(sock,SOL_SOCKET,SO_EXCLUSIVEADDRUSE,cast(const char*,&on),sizeof(int));
#endif // _WIN32
	c_setsockopt(sock,SOL_SOCKET,SO_REUSEADDR,cast(const char*,&on),sizeof(int));
}
int main () {
	_printf = (ffic_func_i) ffic_core(0,"printf");
	c_sscanf = (ffic_func_i) ffic_core(0,"sscanf");
	c_memset = (ffic_func) ffic_core(0,"memset");
	c_htonl = (ffic_func) ffic_core(0,"htonl");
	c_htons = (ffic_func) ffic_core(0,"htons");
	c_setsockopt = (ffic_func) ffic_core(0,"setsockopt");

	//dump(sizeof(struct sockaddr_in),d);

	//ffic_ptr _libdl = ffic_core("/lib/x86_64-linux-gnu/libdl.so.2","dlopen");
	//ffic_func _dlopen = (ffic_func) ffic_core("libdl.so.2","dlopen");
	//ffic_func _dlsym = (ffic_func) ffic_core("libdl.so.2","dlsym");
	//dump(_dlopen,ld);
	//dump(_dlsym,ld);
	ffic_func_i socket = (ffic_func_i) ffic_core(0,"socket");
	dump(socket,ld);

	struct sockaddr_in ipv4;
	int ret;
	int sock;
	sock = socket(AF_INET,SOCK_STREAM,0);
	dump(sock,d);

	//if (NULL == (host_entry = gethostbyaddr((void *)&(remote_address.sin_addr), (socklen_t)&(remote_address_size), AF_INET)))
	//{
	//	closesocket (new_connection_socket_descriptor);
	//	printf ("Server: new connection from \'%s\' was immediately closed because of gethostbyaddr() failure.\n", host_entry -> h_addr);
	//	return SOCKET_ERROR;
	//}
	int rt_convert;
	rt_convert = str_to_sockaddr("39.156.69.79:80",&ipv4);//nslookup baidu.com
	////int rt_convert = str_to_sockaddr("127.0.0.1:22",&ipv4);
	dump(rt_convert,d);

	reuse_socket(sock);

	//
	//fcntl( newsocket, F_SETEL, O_NONBLOCK );

	ffic_func_i connect = (ffic_func_i) ffic_core(0,"connect");
	dump(sizeof(ipv4),d);
	ret = connect(sock,cast(struct sockaddr*,&ipv4),sizeof(ipv4));
	dump(ret,d);

	if(ret!=0){
		extern int * __error();
#define errno (*__error())
		//	extern int *__mach_errno_addr(void);
		//#define errno (*__mach_errno_addr())
		//Invalid argument 22
		dump(errno,d);
	}

	//ffic_func_i system = (ffic_func_i) ffic_core(0,"system");
	//system("nslookup baidu.com");
	// extern int system();
	// //system("ls -al /lib/x86_64-linux-gnu/");
	// //extern ffic_func dlopen;
	// //dump(dlopen,ld);
	// system("whoami");
	return 0;
}

