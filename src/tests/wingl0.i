
Z:\Downloads\github\ffic\src>..\tinyccbinary\build.osx\tcc32 -I..\tinyccbinary\win32\include\winapi -I ..\tinyccbinary\win32\include -I ..\tinyccbinary\include -I. -L. -L..\tinyccbinary\win32\lib -run -E tests\wingl0.c 
# 1 "tests/wingl0.c"
# 1 "<command line>" 1
# 2 "tests/wingl0.c" 2
# 18 "tests/wingl0.c"
# 1 "./windows_play.h" 1
typedef long LONG;
typedef unsigned int UINT_PTR,*PUINT_PTR;
typedef long LONG_PTR,*PLONG_PTR;
struct HWND__ { int unused; }; typedef struct HWND__ *HWND;
typedef struct tagPOINT {
	LONG x;
	LONG y;
} POINT,*PPOINT,*NPPOINT,*LPPOINT;
typedef UINT_PTR WPARAM;
typedef LONG_PTR LPARAM;
typedef unsigned int UINT;
struct HDC__ { int unused; }; typedef struct HDC__ *HDC;
typedef int WINBOOL;
typedef unsigned int WORD;
typedef unsigned long DWORD;

typedef unsigned short BYTE;
typedef unsigned long *DWORD_PTR;

typedef LONG_PTR LRESULT;
typedef LRESULT (__attribute__((__stdcall__)) *WNDPROC)(HWND,UINT,WPARAM,LPARAM);
struct HINSTANCE__ { int unused; }; typedef struct HINSTANCE__ *HINSTANCE;

struct HICON__ { int unused; }; typedef struct HICON__ *HICON;
typedef HICON HCURSOR;
struct HBRUSH__ { int unused; }; typedef struct HBRUSH__ *HBRUSH;


typedef const char *LPCSTR,*PCSTR;
# 61 "./windows_play.h"
typedef struct tagMSG {
	HWND hwnd;
	UINT message;
	WPARAM wParam;
	LPARAM lParam;
	DWORD time;
	POINT pt;
} MSG,*PMSG,*NPMSG,*LPMSG;

typedef struct tagWNDCLASSA {
	UINT style;
	WNDPROC lpfnWndProc;
	int cbClsExtra;
	int cbWndExtra;
	HINSTANCE hInstance;
	HICON hIcon;
	HCURSOR hCursor;
	HBRUSH hbrBackground;
	LPCSTR lpszMenuName;
	LPCSTR lpszClassName;
} WNDCLASSA,*PWNDCLASSA,*NPWNDCLASSA,*LPWNDCLASSA;
# 97 "./windows_play.h"
typedef struct tagRECT {
	LONG left;
	LONG top;
	LONG right;
	LONG bottom;
} RECT,*PRECT,*NPRECT,*LPRECT;

typedef struct tagPAINTSTRUCT {
	HDC hdc;
	WINBOOL fErase;
	RECT rcPaint;
	WINBOOL fRestore;
	WINBOOL fIncUpdate;
	BYTE rgbReserved[32];
} PAINTSTRUCT,*PPAINTSTRUCT,*NPPAINTSTRUCT,*LPPAINTSTRUCT;

typedef struct tagPIXELFORMATDESCRIPTOR {
	WORD nSize;
	WORD nVersion;
	DWORD dwFlags;
	BYTE iPixelType;
	BYTE cColorBits;
	BYTE cRedBits;
	BYTE cRedShift;
	BYTE cGreenBits;
	BYTE cGreenShift;
	BYTE cBlueBits;
	BYTE cBlueShift;
	BYTE cAlphaBits;
	BYTE cAlphaShift;
	BYTE cAccumBits;
	BYTE cAccumRedBits;
	BYTE cAccumGreenBits;
	BYTE cAccumBlueBits;
	BYTE cAccumAlphaBits;
	BYTE cDepthBits;
	BYTE cStencilBits;
	BYTE cAuxBuffers;
	BYTE iLayerType;
	BYTE bReserved;
	DWORD dwLayerMask;
	DWORD dwVisibleMask;
	DWORD dwDamageMask;
} PIXELFORMATDESCRIPTOR,*PPIXELFORMATDESCRIPTOR,*LPPIXELFORMATDESCRIPTOR;
# 19 "tests/wingl0.c" 2
# 1 "./ffic.h" 1


typedef void* ffic_ptr;
typedef ffic_ptr(

		__attribute__((__stdcall__))

		*ffic_func)();
typedef double (*ffic_func_d)();
typedef long (*ffic_func_l)();
typedef int (*ffic_func_i)();
typedef float (*ffic_func_f)();


typedef char* ffic_string;
typedef int* ffic_wstring;

typedef enum { ffic_os_unknown, ffic_os_win, ffic_os_osx, ffic_os_unx, } ffic_os_t;

ffic_os_t ffic_os = ffic_os_win;
ffic_string ffic_libcname = "msvcrt";
ffic_string ffic_sosuffix = ".dll";
# 45 "./ffic.h"
typedef signed char ffic_i8;
typedef unsigned char ffic_u8;
typedef signed short int ffic_i16;
typedef unsigned short int ffic_u16;
typedef signed int ffic_i32;
typedef unsigned int ffic_u32;
typedef signed long ffic_ipt;
typedef unsigned long ffic_upt;




typedef signed long long int ffic_i64;
typedef unsigned long long int ffic_u64;
# 74 "./ffic.h"
ffic_func ffic_dlsym=0;
ffic_func ffic_dlopen=0;
extern int printf(const char*,...);

extern int strcmp(const char*,const char*);
extern void exit(int);
# 98 "./ffic.h"
char* _ffic_strcat(char* buffer, const char* a, const char* b) {
 char* p = buffer; while (*a) *(p++) = *(a++); while (*b) *(p++) = *(b++);
 *p = '\0';
 return buffer;
}
ffic_ptr ffic_void(){return 0;};
ffic_func(*ffic_core(const char *libfilename,const char* funcname))()
{
	if(!ffic_dlsym){


		extern ffic_func GetProcAddress();

		ffic_dlsym = (ffic_func) GetProcAddress;




	}
	if(!ffic_dlopen){
# 126 "./ffic.h"
		extern LoadLibraryA();

		ffic_dlopen = (ffic_func) LoadLibraryA;





	}

	return ffic_dlsym(ffic_dlopen(libfilename,0x101), funcname);
}
ffic_func(*ffic_raw(const char* part1, const char* funcname, const char* part2))()
{
	ffic_string libfilename = (char[512]){0};
	_ffic_strcat(libfilename, (part1)? part1 : ffic_libcname, (part2)? part2 : ffic_sosuffix );
	ffic_func addr = ffic_core(libfilename,funcname);
	if(!addr) {
		printf("WARN: 404 %s(%s).%s \n",part1,libfilename,funcname);
	}
	return addr;
}
void* ffic_std[3];
ffic_ptr ffic_os_std(int t){
	if(ffic_std[t]) return ffic_std[t];
	ffic_std[t] = ffic_raw(0,(ffic_os==ffic_os_win)?"_fdopen":"fdopen",0)(ffic_raw(0,(ffic_os==ffic_os_win)?"_dup":"dup",0)(t),(t==0)?"r":"w");
	return ffic_std[t];
}
static ffic_func _ffic_os_sleep = 0;
ffic_ptr ffic_usleep(int nano_seconds) { _ffic_os_sleep( (ffic_os==ffic_os_win) ? (nano_seconds/1000) : nano_seconds ); return 0; }
ffic_ptr ffic_msleep(int microseconds) { _ffic_os_sleep( (ffic_os==ffic_os_win) ? (microseconds) : microseconds*1000 ); return 0; }
ffic_ptr ffic_sleep(int seconds) { _ffic_os_sleep( (ffic_os==ffic_os_win) ? (seconds*1000) : (seconds*1000000) ); return 0; }

ffic_u64 ffic_microtime(void)
{

	struct { long tv_sec; long tv_usec; } tv;
	static ffic_func ffic_gettimeofday=0;
	if(ffic_os == ffic_os_win){
		if (!ffic_gettimeofday) ffic_gettimeofday = ffic_raw("kernel32","GetSystemTimePreciseAsFileTime",0);
		if (!ffic_gettimeofday) ffic_gettimeofday = ffic_raw("kernel32","GetSystemTimeAsFileTime",0);
		static const ffic_u64 epoch = 116444736000000000;
		struct _FILETIME { unsigned long dwLowDateTime; unsigned long dwHighDateTime; } file_time;
		ffic_gettimeofday(&file_time);
		ffic_u64 since_1601 = ( (ffic_u64) file_time.dwHighDateTime << 32) | (ffic_u64) file_time.dwLowDateTime;
		ffic_u64 since_1970 = ((ffic_u64) since_1601 - epoch);
		ffic_u64 microseconds_since_1970 = since_1970 / 10;
		tv.tv_sec = (microseconds_since_1970 / (ffic_u64) 1000000);
		tv.tv_usec = microseconds_since_1970 % (ffic_u64) 1000000;
	}else{
		if (!ffic_gettimeofday) ffic_gettimeofday = ffic_raw(0,"gettimeofday",0);
		ffic_gettimeofday(&tv, 0);
	}
	return ((ffic_u64)tv.tv_sec*(ffic_u64)1000 + (((ffic_u64)tv.tv_usec)/(ffic_u64)1000)%(ffic_u64)1000);
}
ffic_ptr(*ffic(const char* libname, const char* funcname))()
{
	ffic_ptr addr = 0;
	if(libname && 'c'==*libname && 0==*(libname+1)) libname=0;
	if(!libname){
		if(!_ffic_os_sleep) _ffic_os_sleep = (ffic_os==ffic_os_win) ? ffic_raw("kernel32","Sleep",0) : ffic_raw(ffic_libcname,"usleep",0);
		if(!strcmp("stderr",funcname) || !strcmp("2",funcname)){ return ffic_os_std(2); }
		else if(!strcmp("stdout",funcname) || !strcmp("1",funcname)){ return ffic_os_std(1); }
		else if(!strcmp("stdin",funcname) || !strcmp("0",funcname)){ return ffic_os_std(0); }
		else if(!strcmp("microtime",funcname)){ return ffic_microtime; }
		else if(!strcmp("usleep",funcname)){ return ffic_usleep; }
		else if(!strcmp("sleep",funcname)){ return ffic_sleep; }
		else if(!strcmp("msleep",funcname)){ return ffic_msleep; }
		else if(!strcmp("fileno",funcname) && ffic_os == ffic_os_win){ funcname = "_fileno"; }
		else if(!strcmp("void",funcname)){ return (ffic_ptr) ffic_void; }
		else if(!strcmp("setmode",funcname)){
			if(ffic_os == ffic_os_win){ funcname = "_setmode"; }else{ addr = (ffic_ptr) ffic_void; }
		}
		else if(!strcmp("strdup",funcname) && ffic_os == ffic_os_win){ funcname = "_strdup"; }
	}
	if(!addr) addr = ffic_raw(libname,funcname,0);
	return addr;
}
# 20 "tests/wingl0.c" 2
# 32 "tests/wingl0.c"
	void
display()
{




	ffic_func BeginPaint = (ffic_func) ffic("user32","BeginPaint");
	ffic_func EndPaint = (ffic_func) ffic("user32","EndPaint");


	ffic_func glClear = (ffic_func) ffic("opengl32","glClear");




	ffic_func glBegin = (ffic_func) ffic("opengl32","glBegin");
	ffic_func glColor3f = (ffic_func) ffic("opengl32","glColor3f");
	ffic_func glVertex3f = (ffic_func) ffic("opengl32","glVertex3f");
	ffic_func glVertex2i = (ffic_func) ffic("opengl32","glVertex2i");
	ffic_func glEnd = (ffic_func) ffic("opengl32","glEnd");
	ffic_func glFlush = (ffic_func) ffic("opengl32","glFlush");


	glClear(0x00004000);
	glBegin(0x0004);
	glColor3f(1.0f, 0.0f, 0.0f);
	glVertex2i(0,  1);
	glColor3f(0.0f, 1.0f, 0.0f);
	glVertex2i(-1, -1);
	glColor3f(0.0f, 0.0f, 1.0f);
	glVertex2i(1, -1);
	glEnd();
	glFlush();
}


ffic_ptr WindowProc(HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam)
{
	ffic_func printf = (ffic_func) ffic("c","printf");

	ffic_func glViewport = (ffic_func) ffic("opengl32","glViewport");
	ffic_func DestroyWindow = (ffic_func) ffic("user32","DestroyWindow");
	ffic_func PostQuitMessage = (ffic_func) ffic("user32","PostQuitMessage");
	ffic_func PostMessageA = (ffic_func) ffic("user32","PostMessageA");

	ffic_func BeginPaint = (ffic_func) ffic("user32","BeginPaint");
	ffic_func EndPaint = (ffic_func) ffic("user32","EndPaint");

	static PAINTSTRUCT ps;

	switch(uMsg) {
		case 0x000F:
			display();
			BeginPaint(hWnd, &ps);
			EndPaint(hWnd, &ps);
			return 0;

		case 0x0005:

			glViewport(0, 0, 128, 128);
			PostMessageA(hWnd, 0x000F, 0, 0);
			return 0;

		case 0x0102:
			switch (wParam) {
				case 27:
					PostQuitMessage(0);
					break;
			}
			return 0;

		case 0x0010:
			PostQuitMessage(0);
			return 0;


	}

	ffic_func DefWindowProcA = (ffic_func) ffic("user32","DefWindowProcA");


	return DefWindowProcA(hWnd, uMsg, wParam, lParam);
}

	HWND
CreateOpenGLWindow(char* title, int x, int y, int width, int height,
		BYTE type, DWORD flags)
{

	int         pf;
	HDC         hDC;
	HWND        hWnd;
	WNDCLASSA    wc;
	PIXELFORMATDESCRIPTOR pfd;
	static HINSTANCE hInstance = 0;
	ffic_func printf = (ffic_func) ffic("c","printf");

	ffic_func GetModuleHandleA = (ffic_func) ffic("kernel32","GetModuleHandleA");


	printf("%s=%d\n", "GetModuleHandleA", GetModuleHandleA);

	ffic_func RegisterClassA = (ffic_func) ffic("user32","RegisterClassA");

	ffic_func CreateWindowExA = (ffic_func) ffic("user32","CreateWindowExA");




	if (!hInstance) {
		hInstance = GetModuleHandleA(((void*)0));

		wc.lpfnWndProc   = (WNDPROC)WindowProc;
		wc.cbClsExtra    = 0;
		wc.cbWndExtra    = 0;
		wc.hInstance     = hInstance;


		wc.hbrBackground = ((void*)0);
		wc.lpszMenuName  = ((void*)0);
		wc.lpszClassName = "OpenGL";

		if (!RegisterClassA(&wc)) {
			printf("RegisterClass() failed \n");


			return ((void*)0);
		}
	}

	hWnd = CreateWindowExA(0L,"OpenGL",title,(0x00000000L | 0x00C00000L | 0x00080000L | 0x00040000L | 0x00020000L | 0x00010000L) | 0x04000000L | 0x02000000L,x,y,width,height,((void*)0),((void*)0),hInstance,((void*)0));



	if (hWnd == ((void*)0)) {



	}

	ffic_func GetDC = (ffic_func) ffic("user32","GetDC");
	hDC = GetDC(hWnd);



	memset(&pfd, 0, sizeof(pfd));
	pfd.nSize        = sizeof(pfd);
	pfd.nVersion     = 1;
	pfd.dwFlags      = 0x00000004 | 0x00000020 | flags;
	pfd.iPixelType   = type;
	pfd.cColorBits   = 32;


	ffic_func_i ChoosePixelFormat = (ffic_func_i) ffic("gdi32","ChoosePixelFormat");
	pf = ChoosePixelFormat(hDC, &pfd);
	if (pf == 0) {



	}

	ffic_func SetPixelFormat = (ffic_func) ffic("gdi32","SetPixelFormat");
	if (SetPixelFormat(hDC, pf, &pfd) == 0) {


		return 0;
	}

	ffic_func DescribePixelFormat = (ffic_func) ffic("gdi32","DescribePixelFormat");
	DescribePixelFormat(hDC, pf, sizeof(PIXELFORMATDESCRIPTOR), &pfd);

	ffic_func ReleaseDC = (ffic_func) ffic("user32","ReleaseDC");
	ReleaseDC(hDC, hWnd);

	return hWnd;
}







int main()
{
	HDC hDC;
	ffic_ptr hRC;
	HWND  hWnd;
	MSG   msg;

	ffic_func printf = (ffic_func) ffic("c","printf");
	hWnd = CreateOpenGLWindow("minimal", 0, 0, 256, 256, 0, 0);
	printf("%s=%ld\n", "hWnd", hWnd);
	if (hWnd == ((void*)0)){
		ffic_func exit = (ffic_func) ffic("c","exit");
		exit(1);
	}

	ffic_func GetDC = (ffic_func) ffic("user32","GetDC");
	hDC = GetDC(hWnd);
	printf("%s=%ld\n", "hDC", hDC);
	ffic_func wglCreateContext = (ffic_func) ffic("opengl32","wglCreateContext");
	hRC = wglCreateContext(hDC);
	printf("%s=%ld\n", "hRC", hRC);
	ffic_func wglMakeCurrent = (ffic_func) ffic("opengl32","wglMakeCurrent");
	wglMakeCurrent(hDC, hRC);

	ffic_func ShowWindow = (ffic_func) ffic("user32","ShowWindow");

	ShowWindow(hWnd, 1);

	ffic_func GetMessageA = (ffic_func) ffic("user32","GetMessageA");

	ffic_func TranslateMessage = (ffic_func) ffic("user32","TranslateMessage");
	ffic_func DispatchMessageA = (ffic_func) ffic("user32","DispatchMessageA");


	while(GetMessageA(&msg, hWnd, 0, 0)) {
		TranslateMessage(&msg);
		DispatchMessageA(&msg);
	}

	wglMakeCurrent(((void*)0), ((void*)0));
	ffic_func ReleaseDC = (ffic_func) ffic("user32","ReleaseDC");
	ReleaseDC(hDC, hWnd);
	ffic_func wglDeleteContext = (ffic_func) ffic("opengl32","wglDeleteContext");
	wglDeleteContext(hRC);

	ffic_func DestroyWindow = (ffic_func) ffic("user32","DestroyWindow");
	DestroyWindow(hWnd);

	return (int) msg.wParam;
}
