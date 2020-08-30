#include <windows.h>
//typedef void* ffic_ptr;
//typedef ffic_ptr(*ffic_func)();

#define FFIC 2
#include <ffic.h>
//extern void* GetProcAddress();
//extern void* LoadLibraryA();

extern int printf();

//void TestLoadDLL(void) {
//	//加载动态连接库。
//	HMODULE hDllLib = LoadLibrary(_T("Kernel32.dll"));
//	if (hDllLib)
//	{
//		//获取动态连接库里的函数地址。
//		FARPROC fpFun = GetProcAddress(hDllLib,"GetVersion");
//
//		//调用函数运行。
//		DWORD dwVersion = (*fpFun)();
//
//		//获取WINDOWS的版本。
//		DWORD dwWindowsMajorVersion = (DWORD)(LOBYTE(LOWORD(dwVersion)));
//		DWORD dwWindowsMinorVersion = (DWORD)(HIBYTE(LOWORD(dwVersion)));
//
//		//显示。
//		const int nBufSize = 512;
//		TCHAR chBuf[nBufSize];
//		ZeroMemory(chBuf,nBufSize);
//
//		wsprintf(chBuf,_T("显示版本：%d,%d/r/n"),
//				dwWindowsMajorVersion,dwWindowsMinorVersion);
//		OutputDebugString(chBuf);
//
//		//释放动态连接库。
//		FreeLibrary(hDllLib);
//	}
//}
int main(int argc, char **argv, char **envp){
	//printf("MessageBoxA=%d\n",MessageBox);
	//MessageBoxA(0,"hello1","hello1",0);
	//TestLoadDLL();
	printf("GetProcAddress=%d\n",GetProcAddress);
	printf("LoadLibraryA=%d\n",LoadLibraryA);
	//addr = ffic_dlsym(ffic_dlopen(libfilename,0x101), funcname);
	
	void* ptrUser32 = LoadLibraryA("user32.dll");
	printf("ptrUser32=%d\n",ptrUser32);

	void* ptrMessageBox = GetProcAddress(ptrUser32,"MessageBoxA");
	printf("ptrMessageBox=%d\n",ptrMessageBox);

	ffic_func_i MessageBox = ptrMessageBox;
	MessageBox(0,"hello3","hello4",1);

	//ptrMessageBox = GetProcAddress(ptrUser32,"MessageBoxA");
	//MessageBox(0,"hello5","hello6",2);

	void* ptrUser32b = LoadLibraryA("user32.dll");
	printf("ptrUser32b=%d\n",ptrUser32b);

	//void* ptrMessageBox_ = GetProcAddress(ptrUser32b,"MessageBoxA");
	void* ptrMessageBox_ = GetProcAddress(ptrUser32,"MessageBoxA");
	printf("ptrMessageBox_=%d\n",ptrMessageBox_);

	ffic_func_i MessageBox_ = ptrMessageBox_;
	MessageBox(0,"hello5","hello6",0);
	
	printf("exit");
	
	//ffic_func _MessageBoxA = ffic_raw("user32","MessageBoxA",0);
	//printf("MessageBoxA=%d\n",_MessageBoxA);
	
	return 0;
}
