# include "ffic.h"
# define libc(f) ffic(0,#f)

int main(int argc, char **argv, char **envp){
	ffic_func_i printf;
	printf = libc(printf);
	int mx = 10;
	for(int i=0;i<mx;i++){ printf("%d;",i); }

	int (*EnumProcesses)(DWORD,DWORD,LPDWORD) = ffic_raw("psapi","EnumProcesses",0);
	//ffic_func_i EnumProcesses = ffic_raw("psapi","EnumProcesses",0);
	//ffic_import_func(EnumProcesses,int) = ffic_raw("psapi","EnumProcesses",0);
	//ffic_import_func(printf,void*) = libc(printf);
	//void*(*printf)(char*,...) = libc(printf);
	//ffic_func printf = libc(printf);
	//ffic_func_i printf = libc(printf);
	//ffic_func memcpy = libc(memcpy);
	//ffic_ptr _stderr = libc(stderr);
	//printf("stderr=%d\n",_stderr);
	

	typedef unsigned long DWORD;
	typedef DWORD *LPDWORD;
	DWORD procList[1024];
	DWORD procCount;
	int rt;
	DWORD m;
	DWORD sz = sizeof(DWORD);
	DWORD x;
	printf("EnumProcesses=%d\n",EnumProcesses);
	int sz_procList = sizeof(procList);
	ffic_raw("user32","MessageBoxA",0)(0,"hello3","hello4",0);
	ffic_raw("user32","MessageBoxA",0)(0,"hello3","hello4",0);

	ffic_func MessageBoxA;

	MessageBoxA = ffic_raw("user32","MessageBoxA",0);
	printf("MessageBoxA=%d\n",MessageBoxA);
	//MessageBoxA(0,"hello3","hello4",0);

	MessageBoxA = ffic_raw("user32","MessageBoxA",0);
	printf("MessageBoxA=%d\n",MessageBoxA);
	MessageBoxA(0,"hello3","hello4",0);

	//rt = EnumProcesses(procList, sizeof(procList), &procCount);
	//rt = EnumProcesses(procList, sz_procList, &procCount);
	printf("rt=%d,procCount=%d,sz_procList=%d\n",rt,procCount,sz_procList);
	//for(int i=0;i<22;i++){ printf("%d,",i); }
	//for(int j=0;j<22;j++){ printf("%d,",j); }
	//for(int j=0;j<mx;j++){ printf("%d.",j); }
	return 0;
}
