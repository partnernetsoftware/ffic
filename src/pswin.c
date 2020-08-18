#include "ffic.h"
//char* GetProcessUsername(HANDLE* phProcess, BOOL bIncDomain)
//{
//	static char sname[300];
//	HANDLE tok = 0;
//	HANDLE hProcess;
//	TOKEN_USER* ptu;
//	DWORD nlen, dlen;
//	char name[300], dom[300], tubuf[300], * pret = 0;
//	int iUse;
//
//	//if phProcess is NULL we get process handle of this
//	//process.
//	hProcess = phProcess ? *phProcess : GetCurrentProcess();
//
//	//open the processes token
//	if (!OpenProcessToken(hProcess, TOKEN_QUERY, &tok)) goto ert;
//
//	//get the SID of the token
//	ptu = (TOKEN_USER*)tubuf;
//	if (!GetTokenInformation(tok, (TOKEN_INFORMATION_CLASS)1, ptu, 300, &nlen)) goto ert;
//
//	//get the account/domain name of the SID
//	dlen = 300;
//	nlen = 300;
//	if (!LookupAccountSidA(0, ptu->User.Sid, name, &nlen, dom, &dlen, (PSID_NAME_USE)&iUse)) goto ert;
//
//
//	//copy info to our static buffer
//	if (dlen && bIncDomain) {
//		strcpy_s(sname, dom);
//		strcat_s(sname, "");
//		strcat_s(sname, name);
//	}
//	else {
//		strcpy_s(sname, name);
//	}
//	//set our return variable
//	pret = sname;
//
//ert:
//	if (tok) CloseHandle(tok);
//	return pret;
//}
int main(int argc, char **argv, char **envp){
	extern int printf();
	extern int strcmpi();
	extern char* strrchr();
	//extern int strncasecmp();
	ffic_import_(psapi,EnumProcesses);//psapi_EnumProcesses
	ffic_import_(psapi,GetProcessImageFileNameA);//psapi_GetProcessImageFileNameA
	ffic_import_(psapi,EnumProcessModules);//psapi_EnumProcessModules
	ffic_import_(psapi,GetModuleBaseNameA);//psapi_GetModuleBaseNameA
	ffic_import_(kernel32,OpenProcess);//kernel32_OpenProcess
	ffic_import_(kernel32,CloseHandle);//kernel32_CloseHandle
	ffic_import_(kernel32,WaitForSingleObject);//kernel32_WaitForSingleObject
	ffic_import_(kernel32,TerminateProcess);//kernel32_TerminateProcess
	//ffic_import_(kernel32,GetCurrentProcessId);//kernel32_GetCurrentProcessId

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
					//DWORD result = WAIT_OBJECT_0;
					//while(result == WAIT_OBJECT_0) {
					//	result = (DWORD) kernel32_WaitForSingleObject(hProcess, 100);
					kernel32_TerminateProcess(hProcess, 0);
					//}
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
