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
//typedef unsigned char BYTE;
typedef unsigned short BYTE;
typedef unsigned long *DWORD_PTR;

typedef LONG_PTR LRESULT;
typedef LRESULT (__attribute__((__stdcall__)) *WNDPROC)(HWND,UINT,WPARAM,LPARAM);
struct HINSTANCE__ { int unused; }; typedef struct HINSTANCE__ *HINSTANCE;
//typedef HINSTANCE HMODULE;
struct HICON__ { int unused; }; typedef struct HICON__ *HICON;
typedef HICON HCURSOR;
  struct HBRUSH__ { int unused; }; typedef struct HBRUSH__ *HBRUSH;
//#define LPCSTR char*
#define CONST const
#define CHAR char 
	typedef CONST CHAR *LPCSTR,*PCSTR;

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

#define NULL ((void*)0)
#define FALSE 0
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

#define PFD_SUPPORT_OPENGL 0x00000020
#define PFD_DRAW_TO_WINDOW 0x00000004
#define PFD_DOUBLEBUFFER 1
#define PFD_MAIN_PLANE 0
#define PFD_TYPE_RGBA 0


