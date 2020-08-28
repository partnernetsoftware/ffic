//https://www.cnblogs.com/flipped/p/9887103.html
#include <GLFW/glfw3.h>

int main(int argc, const char * argv[]) {
	GLFWwindow* win;
	if(!glfwInit()){
		return -1;
	}
	win = glfwCreateWindow(640, 480, "OpenGL Base Project", NULL, NULL);
	if(!win)
	{
		glfwTerminate();
		return -1;
	}
	glfwMakeContextCurrent(win);
	while(!glfwWindowShouldClose(win)){
		glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
		glClear(GL_COLOR_BUFFER_BIT);
		glBegin(GL_TRIANGLES);
		{
			glColor3f(1.0,0.0,0.0);
			glVertex2f(0, .5);
			glColor3f(0.0,1.0,0.0);
			glVertex2f(-.5,-.5);
			glColor3f(0.0, 0.0, 1.0);
			glVertex2f(.5, -.5);
		}
		glEnd();
		glfwSwapBuffers(win);
		glfwPollEvents();
	}
	glfwTerminate();
	return 0;
}
