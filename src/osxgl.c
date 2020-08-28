//#include <GLFW/glfw3.h> 
//#include "ffic.h"
typedef void* ffic_ptr;
typedef ffic_ptr (__attribute__((__stdcall__)) *ffic_func)();
extern ffic_func (*ffic())();
extern ffic_func (*ffic_raw())();

#define import0(c,m) ffic_func m = (ffic_func) ffic(#c,#m)
#define import1(m,c,...) import0(c,m)
#define import(m,...) import1(m,##__VA_ARGS__,c)

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
	import0(c,printf);
	import0(libglfw,glfwInit);
	dump_d(glfwInit);
	import0(libglfw,glfwCreateWindow);
	dump_d(glfwCreateWindow);
	import0(libglfw,glfwMakeContextCurrent);
	import0(libglfw,glfwWindowShouldClose);
	import0(libglfw,glfwSwapBuffers);
	import0(libglfw,glfwPollEvents);
	import0(libglfw,glfwTerminate);

	import0(libGL,glBegin);
	import0(libGL,glColor3f);
	import0(libGL,glVertex3f);
	import0(libGL,glEnd);

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

	/* Loop until the user closes the window */
	while (!glfwWindowShouldClose(window))
	{
		/* Draw a triangle */
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
