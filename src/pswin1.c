//#include <windows.h>
//#define FFIC 2
#include "ffic.h"
//#include <psapi.h>

extern int printf();

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

	ffic_func EnumProcesses = ffic_raw("psapi","EnumProcesses",0);
	printf("EnumProcesses=%d\n",EnumProcesses);

	ffic_func GetProcessImageFileName = ffic_raw("psapi","GetProcessImageFileNameA",0);
	printf("GetProcessImageFileName=%d\n",GetProcessImageFileName);

	ffic_func EnumProcessModules = ffic_raw("psapi","EnumProcessModules",0);
	printf("EnumProcessModules=%d\n",EnumProcessModules);

	ffic_func GetModuleBaseName = ffic_raw("psapi","GetModuleBaseNameA",0);
	printf("GetModuleBaseName=%d\n",GetModuleBaseName);
	
	ffic_func OpenProcess = ffic_raw("kernel32","OpenProcess",0);
	printf("OpenProcess=%d\n",OpenProcess);
	
	ffic_func CloseHandle = ffic_raw("kernel32","CloseHandle",0);
	printf("CloseHandle=%d\n",CloseHandle);
	
	typedef unsigned long DWORD;
	//typedef DWORD *LPDWORD;
	const int maxProcIds = 1024;
	DWORD procList[maxProcIds];
	DWORD procCount;
	//char* exeName = "ExeName.exe";
	//int processName[MAX_PATH];
#define MAX_PATH 260
	char processName[MAX_PATH] = {0};
#define TCHAR char
	TCHAR szProcessName[MAX_PATH] = {0};
#define HANDLE void*
#define HMODULE void*

#define STANDARD_RIGHTS_REQUIRED (0x000F0000L)
#define SYNCHRONIZE (0x00100000L)
#define PROCESS_ALL_ACCESS (STANDARD_RIGHTS_REQUIRED | SYNCHRONIZE | 0xFFF)
//#define PROCESS_ALL_ACCESS 0
	printf("PROCESS_ALL_ACCESS=%d\n",PROCESS_ALL_ACCESS);
#define FALSE 0
	// get the process by name
	if (!EnumProcesses(procList, sizeof(procList), &procCount))
		return 0;

	// convert from bytes to processes
	procCount = procCount / sizeof(DWORD);
	printf("procCount=%d\n",procCount);
	
	// loop through all processes
	for (DWORD procIdx=0; procIdx<procCount; procIdx++)
	{
		//if ( EnumProcessModules( hProcess, &hMod, sizeof(hMod), &cbNeeded) ) {
		//	GetModuleBaseName( hProcess, hMod, szProcessName, sizeof(szProcessName) );
		//}
		// get a handle to the process
		HANDLE procHandle = OpenProcess(PROCESS_ALL_ACCESS, FALSE, procList[procIdx]);
		if(procHandle){
			printf("%d: %s\n",procList[procIdx],processName);
			HMODULE hMod;
			DWORD cbNeeded;
			if(EnumProcessModules(procHandle, &hMod, sizeof(hMod), &cbNeeded))
			{
				GetModuleBaseName(procHandle, hMod, szProcessName, sizeof(szProcessName)/sizeof(TCHAR));
				printf("\t%s\n",szProcessName);
				//// find the process and kill it
				//if(strcmp(szProcessName, "ShouldBeDead.exe") == 0)
				//{
				//	DWORD result = WAIT_OBJECT_0;
				//	while(result == WAIT_OBJECT_0)
				//	{
				//		// use WaitForSingleObject to make sure it's dead
				//		result = WaitForSingleObject(hProcess, 100);
				//		TerminateProcess(hProcess, 0);
				//	}

				//}
				//	CloseHandle(hProcess);
			}
			// get the process name
			GetProcessImageFileName(procHandle, processName, sizeof(processName));
			// terminate all pocesses that contain the name
			//if (strstr(processName, exeName))
			//	TerminateProcess(procHandle, 0);
			CloseHandle(procHandle);    
		}
	}

	return 0;
}
