typedef void* ffic_ptr;
typedef ffic_ptr (__attribute__((__stdcall__)) *ffic_func)();
extern ffic_func (*ffic())();
extern ffic_func (*ffic_raw())();
# define libc(f) ffic(0,#f)

#define import(c,m) ffic_func m = ffic_raw(#c,#m,0)
#define dump_d(x) printf("%s=%d\n", #x, x)
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
	void* hdc = GetDC(GetDesktopWindow());//
	dump_d(hdc);
	import(opengl32,glGetString);//
	dump_d(glGetString);

	import(opengl32,wglCreateContext);//
	dump_d(wglCreateContext);
	void* hdgl = wglCreateContext(hdc);
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
	return 0;
}

