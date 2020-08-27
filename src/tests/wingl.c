//////////////////////////////////////// ffic
typedef void* ffic_ptr;
typedef ffic_ptr (__attribute__((__stdcall__)) *ffic_func)();
extern ffic_func (*ffic())();
extern ffic_func (*ffic_raw())();
#define import0(c,m) ffic_func m = ffic(#c,#m,0)
#define import1(m,c,...) import0(c,m)
#define import(m,...) import1(m,##__VA_ARGS__,c)
//#define _(m,...) import(m,##__VA_ARGS__,c)
//# define libc(f) ffic(0,#f)
//////////////////////////////////////// ffic
//(((const struct Point *)(p)) —> y)

#define dump_d(x) printf("%s=%d\n", #x, x)
#define dump_ld(x) printf("%s=%ld\n", #x, x)
#define dump_s(x) printf("%s=%s\n", #x, x)

ffic_func user32_DefWindowProc;
ffic_func c_printf;

typedef unsigned int UINT;
#define HDC ffic_ptr
#define WINBOOL char
#define RECT ffic_ptr
typedef unsigned int WORD;
typedef unsigned long DWORD;
typedef unsigned char BYTE;
typedef unsigned long *DWORD_PTR;

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

//extern int $;

//typedef struct _FFF {
//	ffic_func f;
//	//ffic_string s;
//	char* s;
//	//ffic_func test;
//} FFF;
//#define _(o,m,...) o.m(__VA_ARGS__)

void display(){
	import0(opengl32,glClear);
#define GL_COLOR_BUFFER_BIT 0x00004000
#define GL_DEPTH_BUFFER_BIT 0x00000100
#define GL_COLOR 0x1800
	import0(opengl32,glBegin);
	import0(opengl32,glColor3f);
	import0(opengl32,glVertex3f);
	import0(opengl32,glVertex2i);
	import0(opengl32,glEnd);
	import0(opengl32,glFlush);

#define GL_TRIANGLES                      0x0004
	    /* rotate a triangle around */
    glClear(GL_COLOR_BUFFER_BIT);
    glBegin(GL_TRIANGLES);
    glColor3f(1.0f, 0.0f, 0.0f);
    glVertex2i(0,  1);
    glColor3f(0.0f, 1.0f, 0.0f);
    glVertex2i(-1, -1);
    glColor3f(0.0f, 0.0f, 1.0f);
    glVertex2i(1, -1);
    glEnd();
    glFlush();

	//glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
///#define GL_POLYGON 0x0009
///	glBegin(GL_POLYGON);
///	glColor3f(1,0,0);glVertex3f(-0.6,0.75,0.5);
///	glColor3f(0,1,0);glVertex3f(0.6,-0.75,0);
///	glColor3f(0,0,1);glVertex3f(0,0.75,0);
///	glEnd();
///	glFlush();

	//	typedef float GLfloat;
	//	static const GLfloat red[] = {1.0f, 0.0f, 0.0f, 1.1f };
	//	import0(opengl32,glClearBufferfv);
	//	glClearBufferfv(GL_COLOR,0,red);
}

ffic_ptr WndProc(ffic_ptr hwnd, UINT msg, ffic_ptr wParam, ffic_ptr lParam)
{
	typedef struct tagPAINTSTRUCT {
		HDC hdc;
		WINBOOL fErase;
		RECT rcPaint;
		WINBOOL fRestore;
		WINBOOL fIncUpdate;
		BYTE rgbReserved[32];
	} PAINTSTRUCT,*PPAINTSTRUCT,*NPPAINTSTRUCT,*LPPAINTSTRUCT;

	import0(user32,DestroyWindow);
	import0(user32,PostQuitMessage);
	import0(user32,PostMessageA);
#define PostMessage PostMessageA
	import0(user32,BeginPaint);
	import0(user32,EndPaint);
	import0(user32,FillRect);
#define WM_PAINT 0x000F
#define WM_CLOSE 0x0010
#define WM_DESTROY 0x0002
#define COLOR_WINDOW 5
#define WM_SIZE 0x0005

#define LOWORD(l) ((WORD)((DWORD_PTR)(l) & 0xffff))
#define HIWORD(l) ((WORD)((DWORD_PTR)(l) >> 16))
#define LOBYTE(w) ((BYTE)((DWORD_PTR)(w) & 0xff))
#define HIBYTE(w) ((BYTE)((DWORD_PTR)(w) >> 8))
	
	import0(opengl32,glViewport);

	PAINTSTRUCT ps = {0};
	switch(msg){
		//case WM_CHAR:
		//	switch (wParam) {
		//		case 27:			/* ESC key */
		//			PostQuitMessage(0);
		//			break;
		//	}
		//	return 0;
		case WM_SIZE:
			glViewport(0, 0, LOWORD(lParam), HIWORD(lParam));
			//glViewport(0, 0, 0, 0);
			PostMessage(hwnd, WM_PAINT, 0, 0);
			return 0;
		case WM_PAINT:
			{
				display();
				PAINTSTRUCT ps;
				//HDC hdc =
					BeginPaint(hwnd, &ps);
				//FillRect(hdc, &ps.rcPaint, (HBRUSH) (COLOR_WINDOW+1));
				EndPaint(hwnd, &ps);
				break;
			}
			//case WM_LBUTTONDOWN:
			//	{
			//		char szFileName[MAX_PATH];
			//		HINSTANCE hInstance = GetModuleHandle(NULL);

			//		GetModuleFileName(hInstance, szFileName, MAX_PATH);
			//		MessageBox(hwnd, szFileName, "This program is:", MB_OK | MB_ICONINFORMATION);
			//		break;
			//	}
		case WM_CLOSE:
			DestroyWindow(hwnd);
			break;
		case WM_DESTROY:
			PostQuitMessage(0);
			break;
		default:
			//c_printf("msg=%d\n",msg);
			return user32_DefWindowProc(hwnd, msg, wParam, lParam);
	}
	return 0;//NULL
}

//ffic_func testf = (ffic_func) WndProc;
//FFF testFFF = (FFF){.f=(ffic_func)WndProc, .s="WndProc"};

int main(){
	//_(testFFF,f,1,2,3);
	//_(testFFF,f)(1,2,3);
	
	import0(c,printf);
	c_printf = printf;

	//dump_s(testFFF.s);

	import0(kernel32,GetModuleHandleA);
	//var(GetModuleHandleA,kernel32);
	dump_d(GetModuleHandleA);
	void* inst = GetModuleHandleA(0);
	dump_d(inst);

	import0(user32,DefWindowProcA);
	dump_d(DefWindowProcA);
	user32_DefWindowProc = DefWindowProcA;

	import0(user32,GetMessageA);
	dump_d(GetMessageA);
	import0(user32,TranslateMessage);
	dump_d(TranslateMessage);
	import0(user32,DispatchMessageA);
	dump_d(DispatchMessageA);

//#define CreateDialogA(hInstance,lpName,hWndParent,lpDialogFunc) CreateDialogParamA(hInstance,lpName,hWndParent,lpDialogFunc,0L)
//	import0(user32,CreateDialogParamA);
//	dump_d(CreateDialogParamA);
//	dump_d(CreateDialogA(inst,"NAME",0,0));

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
	wc.lpszClassName = "Test Win Class";
	
	import0(user32,RegisterClassA);
	dump_d(RegisterClassA);
	dump_d(RegisterClassA(&wc));

	import0(user32,CreateWindowExA);
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
			"Test Title",
			WS_OVERLAPPEDWINDOW|WS_VISIBLE| WS_CLIPSIBLINGS | WS_CLIPCHILDREN,
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


//	import0(opengl32,glfwInit)
//	ffic_func opengl32_glfwInit = ffic_raw("opengl32","glfwInit",0);
//	printf("opengl_glfwInit= %d\n",opengl_glfwInit);

	import0(user32,GetDesktopWindow);//
	dump_d(GetDesktopWindow);
	import0(user32,GetDC);//
	dump_d(GetDC);
	//long hdc = (long) GetDC(GetDesktopWindow());//
	long hdc = (long) GetDC(hwnd);//
	dump_ld(hdc);
	import0(opengl32,glGetString);//
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
	32,//16,
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

//import0(opengl32,wglChoosePixelFormat);
//int pixelFormat = wglChoosePixelFormat(hdc, &pfd);
//dump_d(pixelFormat);
//import0(opengl32,wglSetPixelFormat);
//dump_d(wglSetPixelFormat(hdc, pixelFormat, &pfd));

	import0(gdi32,ChoosePixelFormat);//
	int pixelFormat = (int) ChoosePixelFormat(hdc, &pfd);
	dump_d(pixelFormat);
	import0(gdi32,SetPixelFormat);//
	dump_d(SetPixelFormat(hdc, pixelFormat, &pfd));

	import0(gdi32,DescribePixelFormat);//
	DescribePixelFormat(hdc, pixelFormat, sizeof(PIXELFORMATDESCRIPTOR), &pfd);
	import0(user32,ReleaseDC);//
	ReleaseDC(hdc, hwnd);

	import0(opengl32,wglCreateContext);//
	dump_d(wglCreateContext);
	ffic_ptr hdgl = (ffic_ptr) wglCreateContext(hdc);
	dump_d(hdgl);
	import0(opengl32,wglMakeCurrent);//opengl32,wglMakeCurrent
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

	char* s_GL_RENDERER = glGetString(GL_RENDERER);
	dump_s(s_GL_RENDERER);

	char* s_GL_VENDOR = glGetString(GL_VENDOR);
	dump_s(s_GL_VENDOR);

	if(0){
		char* s_GL_EXTENSIONS = glGetString(GL_EXTENSIONS);
		dump_s(s_GL_EXTENSIONS);
	}
	
	MSG msg;
	//ShowWindow(hwnd, nCmdShow);
	//UpdateWindow(hwnd);
	//while(1){
	int rt=0;
		while((rt=(int)GetMessageA(&msg,hwnd,0,0))>0){
			TranslateMessage(&msg);
			DispatchMessageA(&msg);
			printf(".");
		}
	//}
//wglMakeCurrent(NULL, NULL);
//ReleaseDC(hDC, hWnd);
//wglDeleteContext(hRC);
//DestroyWindow(hWnd);
	return 0;
}

