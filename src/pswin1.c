#include <windows.h>
//#include <psapi.h>

extern int printf();

int main(int argc, char **argv, char **envp){

	void* p_psapi = LoadLibraryA("psapi.dll");
	//printf("p_psapi=%d\n",p_psapi);

	void*(*EnumProcesses)() = GetProcAddress(p_psapi,"EnumProcesses");
	printf("EnumProcesses=%d\n",EnumProcesses);

	void*(*GetProcessImageFileName)() = GetProcAddress(p_psapi,"GetProcessImageFileNameA");
	printf("GetProcessImageFileName=%d\n",GetProcessImageFileName);

	const int maxProcIds = 1024;
	DWORD procList[maxProcIds];
	DWORD procCount;
	//char* exeName = "ExeName.exe";
	char processName[MAX_PATH];

	// get the process by name
	if (!EnumProcesses(procList, sizeof(procList), &procCount))
		return 0;

	// convert from bytes to processes
	procCount = procCount / sizeof(DWORD);
	printf("procCount=%d\n",procCount);
	
	// loop through all processes
	for (DWORD procIdx=0; procIdx<procCount; procIdx++)
	{
		// get a handle to the process
		HANDLE procHandle = OpenProcess(PROCESS_ALL_ACCESS, FALSE, procList[procIdx]);
		// get the process name
		GetProcessImageFileName(procHandle, processName, sizeof(processName));
		printf("%d: %s\n",procIdx,processName);
		// terminate all pocesses that contain the name
		//if (strstr(processName, exeName))
		//	TerminateProcess(procHandle, 0);
		CloseHandle(procHandle);    
	}

	return 0;
}
