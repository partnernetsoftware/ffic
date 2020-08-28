
/* An example of the minimal Win32 & OpenGL program.  It only works in
	 16 bit color modes or higher (since it doesn't create a
	 palette). */


//#include <GL/gl.h>			/* OpenGL header file */
//#include <GL/glu.h>			/* OpenGL utilities header file */
//#include <stdio.h>

//////////////////////////////////////// ffic
//typedef void* ffic_ptr;
//typedef ffic_ptr (__attribute__((__stdcall__)) *ffic_func)();
//extern ffic_func (*ffic())();
//extern ffic_func (*ffic_raw())();
#include <windows.h>			/* must include this before GL/gl.h */
#include "ffic.h"

#define import0(c,m) ffic_func m = (ffic_func) ffic(#c,#m)
#define import1(m,c,...) import0(c,m)
#define import(m,...) import1(m,##__VA_ARGS__,c)
//#define _(m,...) import(m,##__VA_ARGS__,c)
//# define libc(f) ffic(0,#f)
//////////////////////////////////////// ffic

#define dump_d(x) printf("%s=%d\n", #x, x)
#define dump_ld(x) printf("%s=%ld\n", #x, x)
#define dump_s(x) printf("%s=%s\n", #x, x)

#ifndef _WINDOWS_
#define HWND ffic_ptr
#define POINT ffic_ptr
#define WPARAM ffic_ptr
#define LPARAM ffic_ptr
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

#define WM_PAINT 0x000F
#define WM_CLOSE 0x0010
#define WM_DESTROY 0x0002
#define COLOR_WINDOW 5
#define WM_SIZE 0x0005
#define WM_CHAR 0x0102

#define LOWORD(l) ((WORD)((DWORD_PTR)(l) & 0xffff))
#define HIWORD(l) ((WORD)((DWORD_PTR)(l) >> 16))
#define LOBYTE(w) ((BYTE)((DWORD_PTR)(w) & 0xff))
#define HIBYTE(w) ((BYTE)((DWORD_PTR)(w) >> 8))

#define NULL (void*)0
#define FALSE 0
	typedef struct tagPAINTSTRUCT {
		HDC hdc;
		WINBOOL fErase;
		RECT rcPaint;
		WINBOOL fRestore;
		WINBOOL fIncUpdate;
		BYTE rgbReserved[32];
	} PAINTSTRUCT,*PPAINTSTRUCT,*NPPAINTSTRUCT,*LPPAINTSTRUCT;

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

#endif
	void
display()
{
//	import0(user32,DestroyWindow);
//	import0(user32,PostQuitMessage);
//	import0(user32,PostMessageA);
//#define PostMessage PostMessageA
	import0(user32,BeginPaint);
	import0(user32,EndPaint);
//	import0(user32,FillRect);

	import0(opengl32,glClear);
#define GL_COLOR_BUFFER_BIT 0x00004000
#define GL_DEPTH_BUFFER_BIT 0x00000100
#define GL_COLOR 0x1800
#define GL_TRIANGLES                      0x0004
	import0(opengl32,glBegin);
	import0(opengl32,glColor3f);
	import0(opengl32,glVertex3f);
	import0(opengl32,glVertex2i);
	import0(opengl32,glEnd);
	import0(opengl32,glFlush);

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
}

//	LONG WINAPI
ffic_ptr WindowProc(HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam)
{ 
	import0(c,printf);
	
	import0(opengl32,glViewport);
	import0(user32,DestroyWindow);
	import0(user32,PostQuitMessage);
	import0(user32,PostMessageA);
#define PostMessage PostMessageA
	import0(user32,BeginPaint);
	import0(user32,EndPaint);

	static PAINTSTRUCT ps;

	switch(uMsg) {
		case WM_PAINT:
			display();
			BeginPaint(hWnd, &ps);
			EndPaint(hWnd, &ps);
			return 0;

		case WM_SIZE:
			//glViewport(0, 0, LOWORD(lParam), HIWORD(lParam));
			glViewport(0, 0, 128, 128);
			PostMessage(hWnd, WM_PAINT, 0, 0);
			return 0;

		case WM_CHAR:
			switch (wParam) {
				case 27:			/* ESC key */
					PostQuitMessage(0);
					break;
			}
			return 0;

		case WM_CLOSE:
			PostQuitMessage(0);
			return 0;
		default:
			dump_d(uMsg);
	}

	import0(user32,DefWindowProcA);
#define DefWindowProc DefWindowProcA
	
	return DefWindowProc(hWnd, uMsg, wParam, lParam); 
}

	HWND
CreateOpenGLWindow(char* title, int x, int y, int width, int height, 
		BYTE type, DWORD flags)
{
#define WNDCLASS WNDCLASSA
	int         pf;
	HDC         hDC;
	HWND        hWnd;
	WNDCLASS    wc;
	PIXELFORMATDESCRIPTOR pfd;
	static HINSTANCE hInstance = 0;
	import0(c,printf);

	import0(kernel32,GetModuleHandleA);
#define GetModuleHandle GetModuleHandleA

	dump_d(GetModuleHandleA);

	import0(user32,RegisterClassA);
#define RegisterClass RegisterClassA
	import0(user32,CreateWindowExA);
#define CreateWindowA(lpClassName,lpWindowName,dwStyle,x,y,nWidth,nHeight,hWndParent,hMenu,hInstance,lpParam) CreateWindowExA(0L,lpClassName,lpWindowName,dwStyle,x,y,nWidth,nHeight,hWndParent,hMenu,hInstance,lpParam)
#define CreateWindow CreateWindowA

	/* only register the window class once - use hInstance as a flag. */
	if (!hInstance) {
		hInstance = GetModuleHandle(NULL);
		//wc.style         = CS_OWNDC;
		wc.lpfnWndProc   = (WNDPROC)WindowProc;
		wc.cbClsExtra    = 0;
		wc.cbWndExtra    = 0;
		wc.hInstance     = hInstance;
		//wc.hIcon         = LoadIcon(NULL, IDI_WINLOGO);
		//wc.hCursor       = LoadCursor(NULL, IDC_ARROW);
		wc.hbrBackground = NULL;
		wc.lpszMenuName  = NULL;
		wc.lpszClassName = "OpenGL";

		if (!RegisterClass(&wc)) {
		//	MessageBox(NULL, "RegisterClass() failed:  "
		//			"Cannot register window class.", "Error", MB_OK);
		//	return NULL;
		}
	}

	hWnd = CreateWindow("OpenGL", title, WS_OVERLAPPEDWINDOW |
			WS_CLIPSIBLINGS | WS_CLIPCHILDREN,
			x, y, width, height, NULL, NULL, hInstance, NULL);

	if (hWnd == NULL) {
	//	MessageBox(NULL, "CreateWindow() failed:  Cannot create a window.",
	//			"Error", MB_OK);
	//	return NULL;
	}

	import0(user32,GetDC);//
	hDC = GetDC(hWnd);

	/* there is no guarantee that the contents of the stack that become
		 the pfd are zeroed, therefore _make sure_ to clear these bits. */
	memset(&pfd, 0, sizeof(pfd));
	pfd.nSize        = sizeof(pfd);
	pfd.nVersion     = 1;
	pfd.dwFlags      = PFD_DRAW_TO_WINDOW | PFD_SUPPORT_OPENGL | flags;
	pfd.iPixelType   = type;
	pfd.cColorBits   = 32;

	//import0(gdi32,ChoosePixelFormat);//TODO
	ffic_func_i ChoosePixelFormat = (ffic_func_i) ffic("gdi32","ChoosePixelFormat");
	pf = ChoosePixelFormat(hDC, &pfd);
	if (pf == 0) {
	//	MessageBox(NULL, "ChoosePixelFormat() failed:  "
	//			"Cannot find a suitable pixel format.", "Error", MB_OK); 
	//	return 0;
	} 

	import0(gdi32,SetPixelFormat);//
	if (SetPixelFormat(hDC, pf, &pfd) == FALSE) {
		//MessageBox(NULL, "SetPixelFormat() failed:  "
		//		"Cannot set format specified.", "Error", MB_OK);
		return 0;
	} 

	import0(gdi32,DescribePixelFormat);
	DescribePixelFormat(hDC, pf, sizeof(PIXELFORMATDESCRIPTOR), &pfd);

	import0(user32,ReleaseDC);
	ReleaseDC(hDC, hWnd);

	return hWnd;
}    

//int APIENTRY
#define LPSTR ffic_ptr
#define HGLRC ffic_ptr
//void*
//WinMain(HINSTANCE hCurrentInst, HINSTANCE hPreviousInst,
//		LPSTR lpszCmdLine, int nCmdShow)
int main()
{
	HDC hDC;				/* device context */
	HGLRC hRC;				/* opengl context */
	HWND  hWnd;				/* window */
	MSG   msg;				/* message */

	import0(c,printf);
	hWnd = CreateOpenGLWindow("minimal", 0, 0, 256, 256, PFD_TYPE_RGBA, 0);
	dump_d(hWnd);
	if (hWnd == NULL){
		import0(c,exit);
		exit(1);
	}

	import0(user32,GetDC);//
	hDC = GetDC(hWnd);
	import0(opengl32,wglCreateContext);
	hRC = wglCreateContext(hDC);
	import0(opengl32,wglMakeCurrent);
	wglMakeCurrent(hDC, hRC);

	import0(user32,ShowWindow);//
	//ShowWindow(hWnd, nCmdShow);
	ShowWindow(hWnd, 1);

	import0(user32,GetMessageA);
#define GetMessage GetMessageA
	import0(user32,TranslateMessage);
	import0(user32,DispatchMessageA);
#define DispatchMessage DispatchMessageA

	while(GetMessage(&msg, hWnd, 0, 0)) {
		TranslateMessage(&msg);
		DispatchMessage(&msg);
	}

	wglMakeCurrent(NULL, NULL);
	import0(user32,ReleaseDC);
	ReleaseDC(hDC, hWnd);
	import0(opengl32,wglDeleteContext);
	wglDeleteContext(hRC);

	import0(user32,DestroyWindow);
	DestroyWindow(hWnd);

	return (int) msg.wParam;
}
