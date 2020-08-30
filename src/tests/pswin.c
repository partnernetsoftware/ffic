#include "ffic.h"
int main(int argc, char **argv, char **envp){
	extern int printf();
	extern int strcmpi();
	extern char* strrchr();
#define ffic_import_my ffic_import_
	ffic_import_my(psapi,EnumProcesses);//psapi_EnumProcesses
	ffic_import_my(psapi,GetProcessImageFileNameA);//psapi_GetProcessImageFileNameA
	ffic_import_my(psapi,EnumProcessModules);//psapi_EnumProcessModules
	ffic_import_my(psapi,GetModuleBaseNameA);//psapi_GetModuleBaseNameA
	ffic_import_my(kernel32,OpenProcess);//kernel32_OpenProcess
	ffic_import_my(kernel32,CloseHandle);//kernel32_CloseHandle
	ffic_import_my(kernel32,WaitForSingleObject);//kernel32_WaitForSingleObject
	ffic_import_my(kernel32,TerminateProcess);//kernel32_TerminateProcess

	typedef unsigned long DWORD;
	//typedef DWORD *LPDWORD;
	const int maxProcIds = 1024;
	DWORD procList[maxProcIds];
	DWORD procCount=0;
#define MAX_PATH 260
	char processName[MAX_PATH] = {0};
#define TCHAR char
	TCHAR szProcessName[MAX_PATH] = {0};
#define HANDLE void*
#define HMODULE void*

#define STANDARD_RIGHTS_REQUIRED (0x000F0000L)
#define SYNCHRONIZE (0x00100000L)
#define PROCESS_ALL_ACCESS (STANDARD_RIGHTS_REQUIRED | SYNCHRONIZE | 0xFFF)
#define FALSE 0
#define STATUS_WAIT_0 ((DWORD)0x00000000L)
#define WAIT_OBJECT_0 ((STATUS_WAIT_0) + 0)
	if (!psapi_EnumProcesses(procList, sizeof(procList), &procCount)) return 0;
	procCount = procCount / sizeof(DWORD);//
	char *arg1 = (argc>1) ? argv[1] : 0;
	for (DWORD procIdx=0; procIdx<procCount; procIdx++) {
		HANDLE hProcess = kernel32_OpenProcess(PROCESS_ALL_ACCESS, FALSE, procList[procIdx]);
		if(hProcess){
			psapi_GetProcessImageFileNameA(hProcess, processName, sizeof(processName));
			HMODULE hMod=0;
			DWORD cbNeeded=0;
			if(!arg1){
				printf("%d\t%s\n",procList[procIdx],processName);
			}else if(psapi_EnumProcessModules(hProcess, &hMod, sizeof(hMod), &cbNeeded)) {
				psapi_GetModuleBaseNameA(hProcess, hMod, szProcessName, sizeof(szProcessName)/sizeof(TCHAR));
				if(strcmpi(szProcessName, arg1) == 0) {
					printf("%d\t[KILL]\t%s\n",procList[procIdx],processName);
					kernel32_TerminateProcess(hProcess, 0);
					continue;
				}else{
					printf("%d\t\t%s\n",procList[procIdx],processName);
				}
			}else{
				char *basename = strrchr(processName, '\\');
				if (strcmpi(arg1, ++basename) == 0) {
					printf("%d\t<KILL>\t%s\n",procList[procIdx],processName);
					kernel32_TerminateProcess(hProcess, 0);
				}else{
					printf("%d\t%s\n",procList[procIdx],processName);
				}
			}
			kernel32_CloseHandle(hProcess);    
		}
	}
	return 0;
}
