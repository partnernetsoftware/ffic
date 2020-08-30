//#include <GLFW/glfw3.h> 
#ifdef FFIC
typedef void* ffic_ptr;
typedef ffic_ptr (__attribute__((__stdcall__)) *ffic_func)();
extern ffic_func (*ffic())();
extern ffic_func (*ffic_raw())();
#else
#include "ffic.h"
#endif

#define decl0(c,m) static ffic_func m
#define init0(c,m) m = (ffic_func) ffic(#c,#m)
#define import0(c,m) ffic_func m = (ffic_func) ffic(#c,#m)
#define import1(m,c,...) import0(c,m)
#define import(m,...) import1(m,##__VA_ARGS__,c)

//////////////////////////////////////////////  FFIC DECL
//ffic_func c_printf;
//decl0(c,printf);
decl0(libglfw,glfwInit);
decl0(libglfw,glfwCreateWindow);
decl0(libglfw,glfwMakeContextCurrent);
decl0(libglfw,glfwWindowShouldClose);
decl0(libglfw,glfwSwapBuffers);
decl0(libglfw,glfwPollEvents);
decl0(libglfw,glfwTerminate);
decl0(libGL,glGetString);
decl0(libGL,glBegin);
decl0(libGL,glColor3f);
decl0(libGL,glVertex3f);
decl0(libGL,glEnd);
void ffic_init(){
	//init0(c,printf);
	init0(libglfw,glfwInit);
	init0(libglfw,glfwCreateWindow);
	init0(libglfw,glfwMakeContextCurrent);
	init0(libglfw,glfwWindowShouldClose);
	init0(libglfw,glfwSwapBuffers);
	init0(libglfw,glfwPollEvents);
	init0(libglfw,glfwTerminate);
	//import(opengl32,glGetString);//
	init0(libGL,glGetString);
	init0(libGL,glBegin);
	init0(libGL,glColor3f);
	init0(libGL,glVertex3f);
	init0(libGL,glEnd);
}
//////////////////////////////////////////////  FFIC DECL
#define dump_d(x) printf("%s=%d\n", #x, x)
#define dump_ld(x) printf("%s=%ld\n", #x, x)
#define dump_s(x) printf("%s=%s\n", #x, x)

#define NULL ((void*)0)

#define GL_TRIANGLES                      0x0004

typedef void GLFWwindow;

// /System/Library//Frameworks/OpenGL.framework
//tcc -run osxgl.c
int main(int argc, char ** argv)
{
	ffic_init();//
	//import0(c,printf);
	import(printf);

	dump_d(glfwInit);
	dump_d(glfwCreateWindow);

	GLFWwindow* window;

	/* Initialize the library */
	if (!glfwInit())
		return -1;

	/* Create a windowed mode window and its OpenGL context */
	window = glfwCreateWindow(480, 320, "Hello World", NULL, NULL);
	if (!window)
	{
		glfwTerminate();
		return -1;
	}

	/* Make the window's context current */
	glfwMakeContextCurrent(window);

#define GL_VENDOR     0x1F00
#define GL_RENDERER   0x1F01
#define GL_VERSION    0x1F02
#define GL_EXTENSIONS 0x1F03
	char* s_GL_VERSION = glGetString(GL_VERSION);
	dump_s(s_GL_VERSION);
	char* s_GL_RENDERER = glGetString(GL_RENDERER);
	dump_s(s_GL_RENDERER);
	char* s_GL_VENDOR = glGetString(GL_VENDOR);
	dump_s(s_GL_VENDOR);
	char* s_GL_EXTENSIONS = glGetString(GL_EXTENSIONS);
	dump_s(s_GL_EXTENSIONS);
	
	/* Loop until the user closes the window */
	while (!glfwWindowShouldClose(window))
	{
		/* Draw a triangle ??? */
		glBegin(GL_TRIANGLES);

		glColor3f(1.0, 0.0, 0.0);    // Red
		glVertex3f(0.0, 1.0, 0.0);

		glColor3f(0.0, 1.0, 0.0);    // Green
		glVertex3f(-1.0, -1.0, 0.0);

		glColor3f(0.0, 0.0, 1.0);    // Blue
		glVertex3f(1.0, -1.0, 0.0);

		glEnd();

		/* Swap front and back buffers */
		glfwSwapBuffers(window);

		/* Poll for and process events */
		glfwPollEvents();
	}

	glfwTerminate();
	return 0;
}
