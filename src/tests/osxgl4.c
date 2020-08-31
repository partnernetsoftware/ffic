//https://www.cnblogs.com/jukan/p/7002239.html

#include <stdio.h>  

#include <gl/glew.h>  
#include <gl/glut.h>  


int main(int argc,char** argv)  
{  
	int nWidth = 8;  
	int nHeight = 3;  
	int nSize = nWidth*nHeight;  

	//创建输入数据  
	float *pfInput = new float[4*nSize];  
	float *pfOutput = new float[4*nSize];  
	for (int i = 0; i < nSize*4; i ++)  
	{  
		pfInput[i] = i + 1.5;  
	}  

	//创建绘制窗口  
	glutInit(&argc,argv);  
	glutCreateWindow("GPGPU");  
	glewInit();  

	//创建FBO并绑定  
	GLuint fb;  
	glGenFramebuffersEXT(1,&fb);  
	glBindFramebufferEXT(GL_FRAMEBUFFER_EXT,fb);  

	//创建纹理对象并绑定  
	GLuint tex;  
	glGenTextures(1,&tex);  
	glBindTexture(GL_TEXTURE_RECTANGLE_ARB,tex);  

	//设置纹理参数  
	glTexParameteri(GL_TEXTURE_RECTANGLE_ARB,GL_TEXTURE_MIN_FILTER,GL_NEAREST);  
	glTexParameteri(GL_TEXTURE_RECTANGLE_ARB,GL_TEXTURE_MAG_FILTER,GL_NEAREST);  
	glTexParameteri(GL_TEXTURE_RECTANGLE_ARB,GL_TEXTURE_WRAP_S,GL_CLAMP);  
	glTexParameteri(GL_TEXTURE_RECTANGLE_ARB,GL_TEXTURE_WRAP_T,GL_CLAMP);  

	//将纹理关联到FBO  
	glFramebufferTexture2DEXT(GL_FRAMEBUFFER_EXT,GL_COLOR_ATTACHMENT0_EXT,GL_TEXTURE_RECTANGLE_ARB,tex,0);  

	//定义纹理数据单元类型  
	glTexImage2D(GL_TEXTURE_RECTANGLE_ARB,0,GL_RGBA32F_ARB,nWidth,nHeight,0,GL_RGBA,GL_FLOAT,0);  

	//将数据传输到纹理缓存  
	glTexSubImage2D(GL_TEXTURE_RECTANGLE_ARB,0,0,0,nWidth,nHeight,GL_RGBA,GL_FLOAT,pfInput);  

	//读取数据  
	glReadBuffer(GL_COLOR_ATTACHMENT0_EXT);  
	glReadPixels(0,0,nWidth,nHeight,GL_RGBA,GL_FLOAT,pfOutput);  

	//打印结果  
	for (int i = 0; i < nSize*4; i ++)  
	{  
		printf("%f\t%f\n",pfInput[i],pfOutput[i]);  
	}  

	//清除资源  
	delete []pfInput;  
	delete []pfOutput;  
	glDeleteFramebuffersEXT(1,&fb);  
	glDeleteTextures(1,&tex);  

	return 0;  
}  

