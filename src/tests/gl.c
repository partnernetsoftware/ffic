typedef void* ffic_ptr;
typedef ffic_ptr (__attribute__((__stdcall__)) *ffic_func)();
extern ffic_func (*ffic())();
extern ffic_func (*ffic_raw())();
# define libc(f) ffic(0,#f)

//#define import(c,m) ffic_func m = ffic_raw(#c,#m,0)
#define import(c,m) ffic_func m = ffic(#c,#m,0)
#define import_(m,c,...) import(c,m)
#define var(m,...) import_(m,##__VA_ARGS__,c)
#define dump_d(x) printf("%s=%d\n", #x, x)
#define dump_ld(x) printf("%s=%ld\n", #x, x)
#define dump_s(x) printf("%s=%s\n", #x, x)

ffic_func DefWindowProc;
ffic_func _printf;

typedef unsigned int UINT;
#define HDC ffic_ptr
#define WINBOOL char
#define RECT ffic_ptr
typedef unsigned int WORD;
typedef unsigned long DWORD;
typedef unsigned char BYTE;

//extern int $;

typedef struct _FFF {
	ffic_func f;
	//ffic_string s;
	char* s;
} FFF;

int WndProc(ffic_ptr hwnd, UINT msg, ffic_ptr wparam, ffic_ptr lparam)
{
  typedef struct tagPAINTSTRUCT {
    HDC hdc;
    WINBOOL fErase;
    RECT rcPaint;
    WINBOOL fRestore;
    WINBOOL fIncUpdate;
    BYTE rgbReserved[32];
  } PAINTSTRUCT,*PPAINTSTRUCT,*NPPAINTSTRUCT,*LPPAINTSTRUCT;
	
	//import(user32,BeginPaint);
	var(BeginPaint,user32);
	import(user32,EndPaint);
#define WM_PAINT 0x000F
	
	PAINTSTRUCT ps = {0};
	switch(msg){
		case WM_PAINT:
			//display();
			BeginPaint(hwnd, &ps);
			EndPaint(hwnd, &ps);
			return 0;

//		case 512:
//		case 160:
//		case 32:
//		case 132:
//		case 127:
//			return 0;
	}
	_printf("msg=%d\n",msg);
	return (int) DefWindowProc(hwnd,msg,wparam,lparam);
}

//ffic_func testf = (ffic_func) WndProc;
FFF testFFF = {.f=WndProc, .s="WndProc"};

int main(){
	
	//ffic_func printf = ffic(0,"printf");
	var(printf);
	_printf = printf;

	dump_s(testFFF.s);

	//import(kernel32,GetModuleHandleA);
	var(GetModuleHandleA,kernel32);
	dump_d(GetModuleHandleA);
	void* inst = GetModuleHandleA(0);
	dump_d(inst);

	import(user32,DefWindowProcA);
	dump_d(DefWindowProcA);
	DefWindowProc = DefWindowProcA;

	import(user32,GetMessageA);
	dump_d(GetMessageA);
	import(user32,TranslateMessage);
	dump_d(TranslateMessage);
	import(user32,DispatchMessageA);
	dump_d(DispatchMessageA);

//#define CreateDialogA(hInstance,lpName,hWndParent,lpDialogFunc) CreateDialogParamA(hInstance,lpName,hWndParent,lpDialogFunc,0L)
//	import(user32,CreateDialogParamA);
//	dump_d(CreateDialogParamA);
//	dump_d(CreateDialogA(inst,"NAME",0,0));

#define	WNDPROC ffic_func
#define HINSTANCE ffic_ptr
#define HICON ffic_ptr
#define HCURSOR ffic_ptr
#define HBRUSH ffic_ptr
#define LPCSTR char*

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

//    wc.hInstance     = hInstance;
//    wc.lpszClassName = szAppName;
//    wc.lpfnWndProc   = (WNDPROC)WndProc;
//    wc.style         = CS_DBLCLKS|CS_VREDRAW|CS_HREDRAW;
//    wc.hbrBackground = (HBRUSH)GetStockObject(BLACK_BRUSH);
//    wc.hIcon         = LoadIcon(NULL, IDI_APPLICATION);
//    wc.hCursor       = LoadCursor(NULL, IDC_ARROW);
	
	WNDCLASSA wc = {0};
	wc.hInstance = inst;
	wc.lpfnWndProc = (ffic_func) WndProc;
	//wc.lpfnWndProc = (ffic_func) DefWindowProcA;
	wc.lpszClassName = "testwin";
	
	import(user32,RegisterClassA);
	dump_d(RegisterClassA);
	dump_d(RegisterClassA(&wc));

	import(user32,CreateWindowExA);
	dump_d(CreateWindowExA);

#define WS_OVERLAPPED 0x00000000L
#define WS_POPUP 0x80000000L
#define WS_CHILD 0x40000000L
#define WS_MINIMIZE 0x20000000L
#define WS_VISIBLE 0x10000000L
#define WS_DISABLED 0x08000000L
#define WS_CLIPSIBLINGS 0x04000000L
#define WS_CLIPCHILDREN 0x02000000L
#define WS_MAXIMIZE 0x01000000L
#define WS_CAPTION 0x00C00000L
#define WS_BORDER 0x00800000L
#define WS_DLGFRAME 0x00400000L
#define WS_VSCROLL 0x00200000L
#define WS_HSCROLL 0x00100000L
#define WS_SYSMENU 0x00080000L
#define WS_THICKFRAME 0x00040000L
#define WS_GROUP 0x00020000L
#define WS_TABSTOP 0x00010000L
#define WS_MINIMIZEBOX 0x00020000L
#define WS_MAXIMIZEBOX 0x00010000L
#define WS_TILED WS_OVERLAPPED
#define WS_ICONIC WS_MINIMIZE
#define WS_SIZEBOX WS_THICKFRAME
#define WS_TILEDWINDOW WS_OVERLAPPEDWINDOW
#define WS_OVERLAPPEDWINDOW (WS_OVERLAPPED | WS_CAPTION | WS_SYSMENU | WS_THICKFRAME | WS_MINIMIZEBOX | WS_MAXIMIZEBOX)
#define WS_POPUPWINDOW (WS_POPUP | WS_BORDER | WS_SYSMENU)
#define WS_CHILDWINDOW (WS_CHILD)
	
#define CW_USEDEFAULT ((int)0x80000000)
	
#define CreateWindowA(lpClassName,lpWindowName,dwStyle,x,y,nWidth,nHeight,hWndParent,hMenu,hInstance,lpParam) CreateWindowExA(0L,lpClassName,lpWindowName,dwStyle,x,y,nWidth,nHeight,hWndParent,hMenu,hInstance,lpParam)
	
#define HWND ffic_ptr
#define POINT ffic_ptr
#define WPARAM ffic_ptr
#define LPARAM ffic_ptr
  typedef struct tagMSG {
    HWND hwnd;
    UINT message;
    WPARAM wParam;
    LPARAM lParam;
    DWORD time;
    POINT pt;
  } MSG,*PMSG,*NPMSG,*LPMSG;
	
	void* hwnd = CreateWindowA(
			wc.lpszClassName,
			"title",
			WS_OVERLAPPEDWINDOW|WS_VISIBLE,
			0,
			0,
			360,
			240,
			0,0,
			inst,
			0
			);
	dump_d(hwnd);

//	ffic_func MessageBoxA = (ffic_func) ffic_raw("user32","MessageBoxA",0);
//	MessageBoxA(0,"hello6","hello5",0);
//	MessageBoxA = ffic_raw("user32","MessageBoxA",0);
//	MessageBoxA(0,"hello3","hello4",0);
//	//libc(printf)("okok\n");
//	//libc(fprintf)(libc(stderr),"ffi_fprintf(libc(stderr))");


//	import(opengl32,glfwInit)
//	ffic_func opengl32_glfwInit = ffic_raw("opengl32","glfwInit",0);
//	printf("opengl_glfwInit= %d\n",opengl_glfwInit);

	import(user32,GetDesktopWindow);//
	dump_d(GetDesktopWindow);
	import(user32,GetDC);//
	dump_d(GetDC);
	//long hdc = (long) GetDC(GetDesktopWindow());//
	long hdc = (long) GetDC(hwnd);//
	dump_ld(hdc);
	import(opengl32,glGetString);//
	dump_d(glGetString);

typedef struct {
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
} PIXELFORMATDESCRIPTOR, * PPIXELFORMATDESCRIPTOR, *LPPIXELFORMATDESCRIPTOR;

#define PFD_SUPPORT_OPENGL 32
#define PFD_DRAW_TO_WINDOW 4
#define PFD_DOUBLEBUFFER 1
#define PFD_MAIN_PLANE 0
#define PFD_TYPE_RGBA 0
PIXELFORMATDESCRIPTOR pfd = {
	sizeof(PIXELFORMATDESCRIPTOR),
	1,//nVersion
	PFD_SUPPORT_OPENGL | PFD_DRAW_TO_WINDOW | PFD_DOUBLEBUFFER,
	PFD_TYPE_RGBA,
	16,
	0,0,0,0,0,0,
	0,
	0,
	0,
	0,0,0,0,
	16,
	0,
	0,
	PFD_MAIN_PLANE,
	0,
	0,0,0,
};

//import(opengl32,wglChoosePixelFormat);
//int pixelFormat = wglChoosePixelFormat(hdc, &pfd);
//dump_d(pixelFormat);
//import(opengl32,wglSetPixelFormat);
//dump_d(wglSetPixelFormat(hdc, pixelFormat, &pfd));

	import(gdi32,ChoosePixelFormat);//
	int pixelFormat = (int) ChoosePixelFormat(hdc, &pfd);
	dump_d(pixelFormat);
	import(gdi32,SetPixelFormat);//
	dump_d(SetPixelFormat(hdc, pixelFormat, &pfd));

	import(opengl32,wglCreateContext);//
	dump_d(wglCreateContext);
	ffic_ptr hdgl = (ffic_ptr) wglCreateContext(hdc);
	dump_d(hdgl);
	import(opengl32,wglMakeCurrent);//opengl32,wglMakeCurrent
	dump_d(wglMakeCurrent);
	dump_d(wglMakeCurrent(hdc,hdgl));

#define GL_VENDOR     0x1F00
#define GL_RENDERER   0x1F01
#define GL_VERSION    0x1F02
#define GL_EXTENSIONS 0x1F03
//typedef unsigned char GLubypte;

	char* s_GL_VERSION = glGetString(GL_VERSION);
	//printf("s_GL_VERSION = %s\n",s_GL_VERSION);
	dump_s(s_GL_VERSION);

		import(opengl32,glClear);
#define GL_COLOR_BUFFER_BIT 0x00004000
#define GL_DEPTH_BUFFER_BIT 0x00000100
#define GL_COLOR 0x1800
		//glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
		glClear(GL_COLOR_BUFFER_BIT );
		import(opengl32,glBegin);
		import(opengl32,glColor3f);
		import(opengl32,glVertex3f);
		import(opengl32,glEnd);
		import(opengl32,glFlush);
#define GL_POLYGON 0x0009
		glBegin(GL_POLYGON);
		glColor3f(1,0,0);glVertex3f(-0.6,0.75,0.5);
		glColor3f(0,1,0);glVertex3f(0.6,-0.75,0);
		glColor3f(0,0,1);glVertex3f(0,0.75,0);
		glEnd();
		glFlush();

		//	typedef float GLfloat;
		//	static const GLfloat red[] = {1.0f, 0.0f, 0.0f, 1.1f };
		//	import(opengl32,glClearBufferfv);
		//	glClearBufferfv(GL_COLOR,0,red);

		char* s_GL_RENDERER = glGetString(GL_RENDERER);
		dump_s(s_GL_RENDERER);

		char* s_GL_VENDOR = glGetString(GL_VENDOR);
		dump_s(s_GL_VENDOR);

		char* s_GL_EXTENSIONS = glGetString(GL_EXTENSIONS);
	if(0){
		dump_s(s_GL_EXTENSIONS);
	}
	
	MSG msg;
	while(1){
		while(GetMessageA(&msg,hwnd)){
			TranslateMessage(&msg);
			DispatchMessageA(&msg);
			printf(".");
		}
	}
	return 0;
}

