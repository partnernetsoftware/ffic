typedef void* ffic_ptr;
typedef ffic_ptr (__attribute__((__stdcall__)) *ffic_func)();
extern ffic_func (*ffic())();
extern ffic_func (*ffic_raw())();
# define libc(f) ffic(0,#f)

#define import(c,m) ffic_func m = ffic_raw(#c,#m,0)
#define dump_d(x) printf("%s=%d\n", #x, x)
#define dump_ld(x) printf("%s=%ld\n", #x, x)
#define dump_s(x) printf("%s=%s\n", #x, x)

int main(){
	
//	ffic_func MessageBoxA = (ffic_func) ffic_raw("user32","MessageBoxA",0);
//	MessageBoxA(0,"hello6","hello5",0);
//	MessageBoxA = ffic_raw("user32","MessageBoxA",0);
//	MessageBoxA(0,"hello3","hello4",0);
//	//libc(printf)("okok\n");
//	//libc(fprintf)(libc(stderr),"ffi_fprintf(libc(stderr))");

	ffic_func printf = ffic(0,"printf");

//	import(opengl32,glfwInit)
//	ffic_func opengl32_glfwInit = ffic_raw("opengl32","glfwInit",0);
//	printf("opengl_glfwInit= %d\n",opengl_glfwInit);

	import(user32,GetDesktopWindow);//
	dump_d(GetDesktopWindow);
	import(user32,GetDC);//
	dump_d(GetDC);
	long hdc = (long) GetDC(GetDesktopWindow());//
	dump_ld(hdc);
	import(opengl32,glGetString);//
	dump_d(glGetString);

	typedef unsigned int WORD;
	typedef unsigned long DWORD;
	typedef unsigned char BYTE;
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
	long hdgl = (long) wglCreateContext(hdc);
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
	dump_s(s_GL_EXTENSIONS);
	
	return 0;
}

